@interface BLPrivacyInfo
+ (id)sharedPrivacyInfo;
- (BLPrivacyInfo)init;
- (BOOL)isGDPRPrivacyAcknowledgementRequired;
- (void)_startObservingNotifications;
- (void)_stopObservingNotifications;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)clearCachedValue;
- (void)dealloc;
@end

@implementation BLPrivacyInfo

+ (id)sharedPrivacyInfo
{
  if (qword_280BC5820 != -1)
  {
    sub_241D76E18();
  }

  v3 = qword_280BC5818;

  return v3;
}

- (BLPrivacyInfo)init
{
  v6.receiver = self;
  v6.super_class = BLPrivacyInfo;
  v2 = [(BLPrivacyInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    cachedValue = v2->_cachedValue;
    v2->_cachedValue = 0;

    v3->_lock._os_unfair_lock_opaque = 0;
    [(BLPrivacyInfo *)v3 _startObservingNotifications];
  }

  return v3;
}

- (void)dealloc
{
  [(BLPrivacyInfo *)self _stopObservingNotifications];
  v3.receiver = self;
  v3.super_class = BLPrivacyInfo;
  [(BLPrivacyInfo *)&v3 dealloc];
}

- (void)_startObservingNotifications
{
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] addObserver:self accountTypes:1];
}

- (void)_stopObservingNotifications
{
  mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
  [mEMORY[0x277CF32F0] removeObserver:self accountTypes:1];
}

- (BOOL)isGDPRPrivacyAcknowledgementRequired
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  cachedValue = self->_cachedValue;
  if (cachedValue)
  {
    bOOLValue = [(NSNumber *)cachedValue BOOLValue];
    p_super = BLJaliscoLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      v12 = 67109120;
      v13 = bOOLValue;
      _os_log_impl(&dword_241D1F000, p_super, OS_LOG_TYPE_DEBUG, "isGDPRPrivacyAcknowledgementRequired: Got cached value %{BOOL}d", &v12, 8u);
    }

    goto LABEL_11;
  }

  v6 = BLJaliscoLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_DEBUG, "isGDPRPrivacyAcknowledgementRequired: No cached value", &v12, 2u);
  }

  v7 = BUIsGDPRAcknowledgementNeededForBooks();
  v8 = BLJaliscoLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 67109120;
    v13 = v7;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEBUG, "isGDPRPrivacyAcknowledgementRequired: Got %{BOOL}d", &v12, 8u);
  }

  if ((v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    LOBYTE(bOOLValue) = 0;
    p_super = &self->_cachedValue->super.super;
    self->_cachedValue = v9;
LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(bOOLValue) = 1;
LABEL_12:
  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)clearCachedValue
{
  os_unfair_lock_lock(&self->_lock);
  cachedValue = self->_cachedValue;
  self->_cachedValue = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  if (reason - 101 <= 1)
  {
    MEMORY[0x2821F9670](self, sel_clearCachedValue);
  }
}

@end