@interface PKPaymentSessionHandle
- (BOOL)isFirstInQueue;
- (id)_initWithQueue:(void *)a1;
- (id)initWithInternalNFSessionHandle:(void *)a3 targetQueue:;
- (void)invalidateSessionWithCompletion:(id)a3;
@end

@implementation PKPaymentSessionHandle

- (id)_initWithQueue:(void *)a1
{
  v3 = a2;
  v10.receiver = a1;
  v10.super_class = PKPaymentSessionHandle;
  v4 = objc_msgSendSuper2(&v10, sel_init);
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_initially_inactive(v5);

    v7 = dispatch_queue_create("com.apple.passkit.sessionHandle.internalSession", v6);
    v8 = *(v4 + 1);
    *(v4 + 1) = v7;

    if (v3)
    {
      dispatch_set_target_queue(*(v4 + 1), v3);
    }

    dispatch_activate(*(v4 + 1));
  }

  return v4;
}

- (id)initWithInternalNFSessionHandle:(void *)a3 targetQueue:
{
  v6 = a2;
  v7 = a3;
  if (a1 && v6)
  {
    v8 = [(PKPaymentSessionHandle *)a1 _initWithQueue:v7];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 2, a2);
    }

    else
    {
      [v6 endSession];
    }

    a1 = v9;
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isFirstInQueue
{
  if (self->_NFSessionHandle)
  {
    return [self->_NFSessionHandle isFirstInQueue];
  }

  STSSession = self->_STSSession;
  if (STSSession)
  {
    LOBYTE(STSSession) = self->_STSSessionIsFirstInQueue;
  }

  return STSSession & 1;
}

- (void)invalidateSessionWithCompletion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  NFSessionHandle = self->_NFSessionHandle;
  if (NFSessionHandle)
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = self;
      v17 = 2048;
      v18 = NFSessionHandle;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSessionHandle (%p): invalidating NFSession handle %p.", buf, 0x16u);
    }

    v8 = self->_NFSessionHandle;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__PKPaymentSessionHandle_invalidateSessionWithCompletion___block_invoke;
    v13[3] = &unk_1E79C44A0;
    v13[4] = self;
    v14 = v5;
    [(NFSession *)v8 endSessionWithCompletion:v13];

    STSSession = self->_STSSession;
    if (STSSession)
    {
      v5 = 0;
LABEL_8:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v16 = self;
        v17 = 2048;
        v18 = STSSession;
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKPaymentSessionHandle (%p): invalidating STSSession %p.", buf, 0x16u);
      }

      v10 = self->_STSSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__PKPaymentSessionHandle_invalidateSessionWithCompletion___block_invoke_56;
      v11[3] = &unk_1E79C44A0;
      v11[4] = self;
      v12 = v5;
      [(STSSession *)v10 endSessionWithCompletion:v11];
      v5 = v12;
      goto LABEL_11;
    }
  }

  else
  {
    STSSession = self->_STSSession;
    if (STSSession)
    {
      v7 = PKLogFacilityTypeGetObject(7uLL);
      goto LABEL_8;
    }

    if (v4)
    {
      (*(v4 + 2))(v4);
LABEL_11:
    }
  }
}

void __58__PKPaymentSessionHandle_invalidateSessionWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKPaymentSessionHandle_invalidateSessionWithCompletion___block_invoke_2;
    block[3] = &unk_1E79C4428;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __58__PKPaymentSessionHandle_invalidateSessionWithCompletion___block_invoke_56(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKPaymentSessionHandle_invalidateSessionWithCompletion___block_invoke_2_57;
    block[3] = &unk_1E79C4428;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

@end