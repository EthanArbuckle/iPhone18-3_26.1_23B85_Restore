@interface CKDSystemAvailabilityWatcherWrapper
- (BOOL)isEqual:(id)a3;
- (CKDSystemAvailabilityWatcher)delegate;
- (CKDSystemAvailabilityWatcherWrapper)initWithDelegate:(id)a3;
- (id)description;
- (void)postSystemAvailabilityChanged:(unint64_t)a3;
@end

@implementation CKDSystemAvailabilityWatcherWrapper

- (CKDSystemAvailabilityWatcherWrapper)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CKDSystemAvailabilityWatcherWrapper;
  v5 = [(CKDSystemAvailabilityWatcherWrapper *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v9 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v7, v8);
    persona = v6->_persona;
    v6->_persona = v9;

    v6->_savedDelegateHash = objc_msgSend_hash(v4, v11, v12);
  }

  return v6;
}

- (void)postSystemAvailabilityChanged:(unint64_t)a3
{
  v6 = objc_msgSend_delegate(self, a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_persona(self, v4, v5);
    v8 = v6;
    CKPersonaPerformBlock();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_delegate(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_delegate(v4, v7, v8);
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = v6;
  if (v3)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = objc_msgSend_stringWithFormat_(v4, v11, @"%@: <%@: %p>", v8, v10, v3);
  }

  else
  {
    v12 = objc_msgSend_stringWithFormat_(v4, v7, @"%@: <Watcher deallocated>", v6);
  }

  return v12;
}

- (CKDSystemAvailabilityWatcher)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end