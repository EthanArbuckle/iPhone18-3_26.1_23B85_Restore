@interface PKSecureElementConsistencyChecker
+ (BOOL)isCheckingConsistencyForSecureElementID:(id)a3;
- (PKSecureElementConsistencyChecker)initWithPaymentWebService:(id)a3 delegate:(id)a4 cloudStoreCoordinatorDelegate:(id)a5;
- (void)_downloadPassesWithCompletion:(id)a3;
- (void)_rescheduleCheckInTimeInterval:(double)a3 backoffLevel:(int64_t)a4;
- (void)_rescheduleWithBackoff;
- (void)_syncWithTSMCompletion:(id)a3;
- (void)invalidate;
- (void)queue_startWithCompletion:(id)a3;
- (void)startWithCompletion:(id)a3;
@end

@implementation PKSecureElementConsistencyChecker

+ (BOOL)isCheckingConsistencyForSecureElementID:(id)a3
{
  v3 = a3;
  if (v3)
  {
    os_unfair_lock_lock(&_MergedGlobals_267);
    v4 = [qword_1ED6D20B8 objectForKeyedSubscript:v3];
    v5 = [v4 unsignedIntegerValue];

    os_unfair_lock_unlock(&_MergedGlobals_267);
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PKSecureElementConsistencyChecker)initWithPaymentWebService:(id)a3 delegate:(id)a4 cloudStoreCoordinatorDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PKSecureElementConsistencyChecker;
  v12 = [(PKSecureElementConsistencyChecker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paymentWebService, a3);
    v13->_delegate = v10;
    objc_storeStrong(&v13->_cloudStoreCoordinatorDelegate, a5);
    v14 = dispatch_queue_create("consistency checker", 0);
    processingQueue = v13->_processingQueue;
    v13->_processingQueue = v14;
  }

  return v13;
}

- (void)invalidate
{
  v3 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: invalidating", v4, 2u);
  }

  atomic_store(1u, &self->_invalidated);
}

- (void)startWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = atomic_load(&self->_didStart);
  if (v6)
  {
    if (v4)
    {
      (*(v4 + 2))(v4);
    }
  }

  else
  {
    atomic_store(1u, &self->_didStart);
    v7 = [(PKPaymentWebService *)self->_paymentWebService context];
    v8 = [v7 secureElementID];

    if (v8)
    {
      v9 = v8;
      os_unfair_lock_lock(&_MergedGlobals_267);
      v10 = qword_1ED6D20B8;
      if (!qword_1ED6D20B8)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        v12 = qword_1ED6D20B8;
        qword_1ED6D20B8 = v11;

        v10 = qword_1ED6D20B8;
      }

      v13 = MEMORY[0x1E696AD98];
      v14 = [v10 objectForKeyedSubscript:v9];
      v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + 1}];
      [qword_1ED6D20B8 setObject:v15 forKeyedSubscript:v9];

      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Beginning consistency check...", buf, 2u);
      }

      os_unfair_lock_unlock(&_MergedGlobals_267);
    }

    processingQueue = self->_processingQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__PKSecureElementConsistencyChecker_startWithCompletion___block_invoke;
    v20[3] = &unk_1E79CB3F8;
    v20[4] = self;
    v21 = v8;
    v22 = v5;
    v18 = v20;
    *buf = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __dispatch_async_ar_block_invoke_17;
    v26 = &unk_1E79C4428;
    v27 = v18;
    v19 = v8;
    dispatch_async(processingQueue, buf);
  }
}

void __57__PKSecureElementConsistencyChecker_startWithCompletion___block_invoke(uint64_t a1)
{
  if ((PKStoreDemoModeEnabled() & 1) != 0 || PKUIOnlyDemoModeEnabled())
  {
    v2 = 0;
  }

  else
  {
    v3 = atomic_load((*(a1 + 32) + 25));
    v2 = v3 ^ 1;
  }

  if (objc_opt_respondsToSelector())
  {
    if ((v2 & 1) == 0 || ([*(*(a1 + 32) + 32) shouldStartConsistencyCheck] & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PKSecureElementConsistencyChecker_startWithCompletion___block_invoke_2;
    v7[3] = &unk_1E79C44A0;
    v9 = *(a1 + 48);
    v8 = *(a1 + 40);
    [v6 queue_startWithCompletion:v7];

    return;
  }

  if (v2)
  {
    goto LABEL_14;
  }

LABEL_8:
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 40);

  EndTrackingConsistencyCheck(v5);
}

void __57__PKSecureElementConsistencyChecker_startWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  EndTrackingConsistencyCheck(v3);
}

- (void)queue_startWithCompletion:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Getting device state for consistency check...", buf, 2u);
  }

  v6 = [(PKPaymentWebService *)self->_paymentWebService context];
  v7 = [v6 regions];
  v8 = [v7 allKeys];

  delegate = self->_delegate;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke;
  v12[3] = &unk_1E79DF870;
  v12[4] = self;
  v10 = v4;
  v14 = v10;
  v11 = v8;
  v13 = v11;
  [(PKSecureElementConsistencyCheckerDelegate *)delegate deviceStateWithCompletion:v12];
  if ([(PKPaymentWebService *)self->_paymentWebService needsConfiguration])
  {
    [(PKPaymentWebService *)self->_paymentWebService configurePaymentServiceWithCompletion:&__block_literal_global_193];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: web service configuration does not need updating", buf, 2u);
    }
  }
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2;
  v7[3] = &unk_1E79DF848;
  v7[4] = v4;
  v10 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2(id *a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = atomic_load(a1[4] + 25);
  if (v2)
  {
    v3 = *(a1[7] + 2);

    v3();
  }

  else
  {
    v4 = a1[5];
    v5 = PKLogFacilityTypeGetObject(7uLL);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Got device state, beginning consistency check.", buf, 2u);
      }

      v7 = CheckConsistencyWithDeviceState(a1[5], a1[6]);
      v8 = [v7 cleanupActions];
      v9 = [v7 requestedActions];
      v24 = @"success";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 == 0];
      v25[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      AnalyticsSendEvent();

      if (v8)
      {
        v12 = [v7 cleanupActions];
        v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
        if ([v9 count] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_162;
          v21[3] = &unk_1E79DF7F8;
          v21[4] = a1[4];
          v22 = v9;
          [(PKAsyncUnaryOperationComposer *)v13 addOperation:v21];
        }

        if (v12)
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_3;
          v20[3] = &unk_1E79DF820;
          v20[4] = a1[4];
          [(PKAsyncUnaryOperationComposer *)v13 addOperation:v20];
        }

        if ((v12 & 2) != 0)
        {
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_5;
          v19[3] = &unk_1E79DF820;
          v19[4] = a1[4];
          [(PKAsyncUnaryOperationComposer *)v13 addOperation:v19];
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_167;
        v18[3] = &unk_1E79DF820;
        v18[4] = a1[4];
        [(PKAsyncUnaryOperationComposer *)v13 addOperation:v18];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_3_169;
        v15[3] = &unk_1E79DF898;
        v15[4] = a1[4];
        v17 = a1[7];
        v16 = a1[6];
        v14 = [(PKAsyncUnaryOperationComposer *)v13 evaluateWithInput:MEMORY[0x1E695E118] completion:v15];
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Passbook and SE are consistent!", buf, 2u);
        }

        [a1[4] _rescheduleCheckInTimeInterval:0 backoffLevel:86400.0];
        (*(a1[7] + 2))();
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: failed to get device state. Aborting.", buf, 2u);
      }

      [a1[4] _rescheduleWithBackoff];
      (*(a1[7] + 2))();
    }
  }
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_162(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  v7 = atomic_load((*(a1 + 32) + 25));
  if (v7)
  {
    (*(v5 + 2))(v5, MEMORY[0x1E695E110], 1);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(v8 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2_163;
    v11[3] = &unk_1E79C5268;
    v12 = v5;
    [v10 handleRequestedActions:v9 completion:v11];
  }
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2_163(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  (*(v2 + 16))(v2, v3, 0);
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = atomic_load((*(a1 + 32) + 25));
  if (v9)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E110], 1);
  }

  else
  {
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_4;
    v11[3] = &unk_1E79C4888;
    v13 = v7;
    v12 = v6;
    [v10 _syncWithTSMCompletion:v11];
  }
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_4(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "BOOLValue") & a2}];
  (*(v2 + 16))(v2, v3, 0);
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = atomic_load((*(a1 + 32) + 25));
  if (v11)
  {
    (*(v9 + 2))(v9, MEMORY[0x1E695E110], 1);
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Downloading passes…", buf, 2u);
    }

    v13 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_166;
    v14[3] = &unk_1E79C4888;
    v16 = v10;
    v15 = v8;
    [v13 _downloadPassesWithCompletion:v14];
  }
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_166(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Done downloading passes.", v7, 2u);
  }

  AnalyticsSendEvent();
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "BOOLValue") & a2}];
  (*(v5 + 16))(v5, v6, 0);
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_167(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2_168;
  v11[3] = &unk_1E79C44A0;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_3_169(id *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  if ([a4 isCanceled] & 1) != 0 || (v7 = atomic_load(a1[4] + 25), (v7))
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Canceled during first pass", buf, 2u);
    }
  }

  else
  {
    if ([v6 BOOLValue])
    {
      v9 = a1[4];
      v10 = v9[4];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_170;
      v12[3] = &unk_1E79DF870;
      v12[4] = v9;
      v14 = a1[6];
      v13 = a1[5];
      [v10 deviceStateWithCompletion:v12];

      goto LABEL_7;
    }

    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Encountered an error when performing recovery actions. Rescheduling with backoff.", buf, 2u);
    }

    [a1[4] _rescheduleWithBackoff];
  }

  (*(a1[6] + 2))();
LABEL_7:
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2_171;
  v7[3] = &unk_1E79DF848;
  v7[4] = v4;
  v10 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, v7);
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2_171(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 25));
  if (v2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = CheckConsistencyWithDeviceState(v4, *(a1 + 48));
      v6 = [v5 cleanupActions];
      v7 = PKLogFacilityTypeGetObject(7uLL);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Notify Broker that our state is messed up.", buf, 2u);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_172;
        block[3] = &unk_1E79C4D60;
        block[4] = *(a1 + 32);
        v11 = v5;
        v12 = *(a1 + 56);
        dispatch_sync(MEMORY[0x1E69E96A0], block);
        [*(a1 + 32) _rescheduleWithBackoff];
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Passbook and SE are now consistent!", buf, 2u);
        }

        [*(a1 + 32) _rescheduleCheckInTimeInterval:0 backoffLevel:86400.0];
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: failed to get device state. Aborting.", buf, 2u);
      }

      [*(a1 + 32) _rescheduleWithBackoff];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_172(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 primaryBrokerURL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_2_173;
  v5[3] = &unk_1E79DBC20;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 registerDeviceAtBrokerURL:v3 consistencyCheckResults:v4 completion:v5];
}

void __63__PKSecureElementConsistencyChecker_queue_startWithCompletion___block_invoke_3_177(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2 == 1)
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      v7 = "PKSecureElementConsistencyChecker: Successfully updated payment service server-side config data";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else if (v6)
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "PKSecureElementConsistencyChecker: Failed to update payment service server-side config with error %@";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }
}

- (void)_downloadPassesWithCompletion:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKPaymentWebService *)self->_paymentWebService context];
  v6 = [v5 isRegistered];

  if (v6)
  {
    v7 = [(PKSecureElementConsistencyCheckerDelegate *)self->_delegate paymentPasses];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [v13 uniqueID];
          [v8 setObject:v13 forKey:v14];
        }

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v10);
    }

    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__69;
    v39 = __Block_byref_object_dispose__69;
    v40 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke;
    aBlock[3] = &unk_1E79DF908;
    aBlock[4] = self;
    v34 = buf;
    v33 = v4;
    v15 = _Block_copy(aBlock);
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v17 = *(v36 + 5);
    *(v36 + 5) = v16;

    v18 = *(v36 + 5);
    v19 = dispatch_time(0, 900000000000);
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
    v20 = *(v36 + 5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_3;
    handler[3] = &unk_1E79C4428;
    v21 = v15;
    v31 = v21;
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(*(v36 + 5));
    paymentWebService = self->_paymentWebService;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_4;
    v26[3] = &unk_1E79DF980;
    v23 = v8;
    v27 = v23;
    v28 = self;
    v24 = v21;
    v29 = v24;
    [(PKPaymentWebService *)paymentWebService devicePassesSinceLastUpdatedTag:0 withCompletion:v26];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Device needs to register; we will not sync passes with server", buf, 2u);
    }

    (*(v4 + 2))(v4, 0);
  }
}

void __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_2;
  block[3] = &unk_1E79DF8E0;
  v7 = a2;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

NSObject *__67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else if (!result)
  {
    return result;
  }

  dispatch_source_cancel(result);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

LABEL_6:
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  if (a2 == 1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = *(a1 + 32);
          v13 = [v11 uniqueID];
          [v12 removeObjectForKey:v13];

          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_5;
          v30[3] = &unk_1E79D6768;
          v30[4] = *(a1 + 40);
          v30[5] = v11;
          [(PKAsyncUnaryOperationComposer *)v6 addOperation:v30];
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }
  }

  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v14 = [*(a1 + 32) allValues];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_182;
        v25[3] = &unk_1E79D6768;
        v25[4] = *(a1 + 40);
        v25[5] = v19;
        [(PKAsyncUnaryOperationComposer *)v6 addOperation:v25];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v16);
  }

  v20 = [MEMORY[0x1E695DFB0] null];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_3_186;
  v23[3] = &unk_1E79D04A0;
  v24 = *(a1 + 48);
  v21 = [(PKAsyncUnaryOperationComposer *)v6 evaluateWithInput:v20 completion:v23];
}

void __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [PKDownloadRemoteAssetConfiguration configurationWithCloudStoreDelegate:*(*(a1 + 32) + 8)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_6;
  v12[3] = &unk_1E79DF930;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v12[5] = v9;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v9 downloadRemoteAssetsWithConfiguration:v8 completion:v12];
}

void __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_6(void *a1, int a2, void *a3, float a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2)
  {
    v8 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109634;
      v9[1] = 1;
      v10 = 2048;
      v11 = a4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Download of remote assets during consistency check, called completion handler with finished=%i progress=%f error=%@", v9, 0x1Cu);
    }

    if (!v7)
    {
      [*(a1[4] + 32) didDownloadPaymentPass:a1[5]];
    }

    (*(a1[7] + 16))();
  }
}

void __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_182(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 40);
  v9 = [*(a1 + 40) passTypeIdentifier];
  v10 = [*(a1 + 40) serialNumber];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PKSecureElementConsistencyChecker__downloadPassesWithCompletion___block_invoke_2_183;
  v13[3] = &unk_1E79DF958;
  v14 = v6;
  v15 = v7;
  v11 = v6;
  v12 = v7;
  [v8 passWithPassTypeIdentifier:v9 serialNumber:v10 completion:v13];
}

- (void)_syncWithTSMCompletion:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Syncing with TSM…", buf, 2u);
  }

  v6 = [(PKSecureElementConsistencyCheckerDelegate *)self->_delegate synchronizeWithTSM];
  v7 = dispatch_time(0, 30000000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PKSecureElementConsistencyChecker__syncWithTSMCompletion___block_invoke;
  v9[3] = &unk_1E79C4748;
  v10 = v4;
  v11 = v6;
  v8 = v4;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

uint64_t __60__PKSecureElementConsistencyChecker__syncWithTSMCompletion___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Done syncing with TSM.", v4, 2u);
  }

  AnalyticsSendEvent();
  return (*(*(a1 + 32) + 16))();
}

- (void)_rescheduleWithBackoff
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentWebService *)self->_paymentWebService context];
  v4 = [v3 primaryRegion];

  if (!v4)
  {
    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: reschedule consistency check with maximum backoff delay due to lack of primary region.", v16, 2u);
    }

    v6 = 12;
    goto LABEL_15;
  }

  v5 = [v4 consistencyCheckBackoffLevel];
  v6 = v5;
  v7 = 11;
  if (v5 < 11)
  {
    v7 = v5;
  }

  if (v5 <= 11 && v7 == 11)
  {
    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: Triggering ABC due to consistency check reaching maximum backoff level", v16, 2u);
    }

    v17[0] = @"backoffLevel";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:12];
    v11 = [v10 stringValue];
    v18[0] = v11;
    v17[1] = @"maxBackoffLevel";
    v12 = [&unk_1F23B55E8 stringValue];
    v17[2] = @"hasRegion";
    v18[1] = v12;
    v18[2] = @"YES";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v14 = objc_alloc_init(PKAutoBugCaptureReporter);
    [(PKAutoBugCaptureReporter *)v14 reportIssueWithDomain:@"Wallet" type:@"ConsistencyCheck" subtype:@"RescheduleWithBackoff" subtypeContext:@"ReachedMaxBackoff" payload:v13];

LABEL_15:
  }

  v15 = 12;
  if (v6 < 12)
  {
    v15 = v6;
  }

  [(PKSecureElementConsistencyChecker *)self _rescheduleCheckInTimeInterval:ConsistencyCheckBackoffLevels[v15] backoffLevel:?];
}

- (void)_rescheduleCheckInTimeInterval:(double)a3 backoffLevel:(int64_t)a4
{
  v4 = atomic_load(&self->_invalidated);
  if (v4)
  {
    return;
  }

  v8 = objc_opt_respondsToSelector();
  delegate = self->_delegate;
  if (v8)
  {
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{a4, 28800.0}];
    [(PKSecureElementConsistencyCheckerDelegate *)delegate scheduleConsistencyCheck:v13 pluggedIn:a3 > 28800.0 backoffLevel:v10];

LABEL_6:

    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = self->_delegate;
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a3];
    [(PKSecureElementConsistencyCheckerDelegate *)v11 scheduleConsistencyCheck:v13 pluggedIn:a3 > 28800.0];
    goto LABEL_6;
  }

  v12 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "PKSecureElementConsistencyChecker: unable to reschedule check, delegate doesn't response to any scheduleConsistencyCheck selector", buf, 2u);
  }
}

@end