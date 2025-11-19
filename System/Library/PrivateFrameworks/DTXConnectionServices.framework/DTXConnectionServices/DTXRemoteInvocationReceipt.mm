@interface DTXRemoteInvocationReceipt
- (DTXRemoteInvocationReceipt)init;
- (void)_checkedAssign:(id)a3;
- (void)handleCompletion:(id)a3;
- (void)invokeCompletionWithReturnValue:(id)a3 error:(id)a4;
- (void)waitForFulfillment;
@end

@implementation DTXRemoteInvocationReceipt

- (DTXRemoteInvocationReceipt)init
{
  v3.receiver = self;
  v3.super_class = DTXRemoteInvocationReceipt;
  result = [(DTXRemoteInvocationReceipt *)&v3 init];
  if (result)
  {
    result->_guard._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)_checkedAssign:(id)a3
{
  v15 = a3;
  os_unfair_lock_lock(&self->_guard);
  v15[2]();
  if (self->_completionHandler && (*(self + 36) & 3) != 0)
  {
    if ((*(self + 36) & 3) == 1)
    {
      returnValue = self->_returnValue;
    }

    else
    {
      returnValue = 0;
    }

    v6 = returnValue;
    if ((*(self + 36) & 3) == 2)
    {
      v8 = self->_returnValue;
    }

    else
    {
      v8 = 0;
    }

    v5 = v8;
    v7 = MEMORY[0x24C1C0D80](self->_completionHandler);
    v9 = self->_returnValue;
    self->_returnValue = 0;

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    if (v7)
    {
      v11 = 4;
    }

    else
    {
      v11 = 8;
    }

    *(self + 36) = *(self + 36) & 0xF3 | v11;
    os_unfair_lock_unlock(&self->_guard);
    if (v7)
    {
      v12 = objc_autoreleasePoolPush();
      (v7)[2](v7, v6, v5);
      objc_autoreleasePoolPop(v12);
      os_unfair_lock_lock(&self->_guard);
      *(self + 36) = *(self + 36) & 0xF3 | 8;
      v13 = MEMORY[0x24C1C0D80](self->_waiterChain);
      waiterChain = self->_waiterChain;
      self->_waiterChain = 0;

      os_unfair_lock_unlock(&self->_guard);
      if (v13)
      {
        v13[2](v13);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_guard);
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }
}

- (void)handleCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F3EA40;
  v7[3] = &unk_278EEE5F0;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  objc_msgSend__checkedAssign_(self, v6, v7);
}

- (void)invokeCompletionWithReturnValue:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_247F3EB5C;
  v11[3] = &unk_278EEE618;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  objc_msgSend__checkedAssign_(self, v10, v11);
}

- (void)waitForFulfillment
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_247F3ECC0;
  v8 = sub_247F3ECD0;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247F3ECD8;
  v3[3] = &unk_278EEE668;
  v3[4] = self;
  v3[5] = &v4;
  objc_msgSend__checkedAssign_(self, a2, v3);
  v2 = v5[5];
  if (v2)
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  _Block_object_dispose(&v4, 8);
}

@end