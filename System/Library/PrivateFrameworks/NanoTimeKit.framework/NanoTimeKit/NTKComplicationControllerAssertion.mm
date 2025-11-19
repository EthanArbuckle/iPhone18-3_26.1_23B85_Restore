@interface NTKComplicationControllerAssertion
- (BOOL)invalidated;
- (NTKComplicationControllerAssertion)initWithController:(id)a3 dataMode:(int64_t)a4;
- (int64_t)dataMode;
- (void)dealloc;
- (void)invalidate;
- (void)setDataMode:(int64_t)a3;
@end

@implementation NTKComplicationControllerAssertion

- (NTKComplicationControllerAssertion)initWithController:(id)a3 dataMode:(int64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = NTKComplicationControllerAssertion;
  v8 = [(NTKComplicationControllerAssertion *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, a3);
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_lock_dataMode = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__NTKComplicationControllerAssertion_initWithController_dataMode___block_invoke;
    v11[3] = &unk_27877E438;
    v12 = v7;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  return v9;
}

uint64_t __66__NTKComplicationControllerAssertion_initWithController_dataMode___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Taking out controller assertion %@ for controller %@", &v6, 0x16u);
  }

  return [*(a1 + 32) addDataModeAssertion:*(a1 + 40)];
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = NTKComplicationControllerAssertion;
  [(NTKComplicationControllerAssertion *)&v3 dealloc];
}

- (void)setDataMode:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_dataMode = self->_lock_dataMode;
  self->_lock_dataMode = a3;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_dataMode != a3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__NTKComplicationControllerAssertion_setDataMode___block_invoke;
    v6[3] = &unk_2787805D8;
    v6[4] = self;
    v6[5] = a3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

uint64_t __50__NTKComplicationControllerAssertion_setDataMode___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = NTKFaceDataModeDescription(*(a1 + 40));
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Updating data mode for assertion %@ to %@", &v6, 0x16u);
  }

  return [*(*(a1 + 32) + 32) updateDataModeAssertion:?];
}

- (int64_t)dataMode
{
  os_unfair_lock_lock(&self->_lock);
  lock_dataMode = self->_lock_dataMode;
  os_unfair_lock_unlock(&self->_lock);
  return lock_dataMode;
}

- (BOOL)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NTKComplicationControllerAssertion_invalidate__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__NTKComplicationControllerAssertion_invalidate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Invalding controller assertion %@ for controller %@", &v6, 0x16u);
  }

  return [*(*(a1 + 32) + 32) removeDataModeAssertion:?];
}

@end