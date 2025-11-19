@interface CMContinuityCaptureiOSNotificationCenter
- (BOOL)shouldDisplayNotification:(int64_t)a3;
- (CMContinuityCaptureiOSNotificationCenter)initWithQueue:(id)a3;
- (void)_scheduleNotification:(int64_t)a3 data:(id)a4;
- (void)scheduleNotification:(int64_t)a3 data:(id)a4;
@end

@implementation CMContinuityCaptureiOSNotificationCenter

- (void)scheduleNotification:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__CMContinuityCaptureiOSNotificationCenter_scheduleNotification_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __70__CMContinuityCaptureiOSNotificationCenter_scheduleNotification_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _scheduleNotification:*(a1 + 48) data:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (BOOL)shouldDisplayNotification:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  if (a3 != 12)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = self;
      v9 = 1024;
      v10 = a3;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Unsupported Notification Type for iOS Platform. (Type: %d)", &v7, 0x12u);
    }
  }

  return a3 == 12;
}

- (CMContinuityCaptureiOSNotificationCenter)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CMContinuityCaptureiOSNotificationCenter;
  v6 = [(CMContinuityCaptureUserNotificationCenter *)&v10 initWithQueue:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)_scheduleNotification:(int64_t)a3 data:(id)a4
{
  v6 = a4;
  v7 = [(CMContinuityCaptureiOSNotificationCenter *)self shouldDisplayNotification:a3];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (!v6 || !v7)
  {
    goto LABEL_14;
  }

  v10 = [v6 objectForKey:@"kContinuityCaptureNotificationKeyTitle"];

  if (!v10)
  {
    v8 = 0;
    v9 = 0;
LABEL_19:
    v11 = 0;
    goto LABEL_14;
  }

  v9 = [v6 objectForKey:@"kContinuityCaptureNotificationKeyBody"];

  if (!v9)
  {
    v8 = 0;
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v8 = [v6 objectForKey:@"kContinuityCaptureNotificationKeyButtonTitle"];

  if (!v8)
  {
    v9 = 0;
    goto LABEL_18;
  }

  dispatch_assert_queue_V2(self->_queue);
  v12 = [v6 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyTitle"];
  [v6 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyTitleArgs"];
  objc_claimAutoreleasedReturnValue();
  v13 = OUTLINED_FUNCTION_0_6();
  v11 = CMContinuityCaptureCreateLocalizedString(v13, v14, v15, v16, v17, v18, v19, v20, *v44);

  v21 = [v6 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyBody"];
  [v6 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyBodyArgs"];
  objc_claimAutoreleasedReturnValue();
  v22 = OUTLINED_FUNCTION_0_6();
  v10 = CMContinuityCaptureCreateLocalizedString(v22, v23, v24, v25, v26, v27, v28, v29, *v44);

  v30 = [v6 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyButtonTitle"];
  [v6 objectForKeyedSubscript:@"kContinuityCaptureNotificationKeyButtonTitle"];
  objc_claimAutoreleasedReturnValue();
  v31 = OUTLINED_FUNCTION_0_6();
  v9 = CMContinuityCaptureCreateLocalizedString(v31, v32, v33, v34, v35, v36, v37, v38, *v44);

  v39 = *MEMORY[0x277CBF198];
  v46[0] = *MEMORY[0x277CBF188];
  v46[1] = v39;
  v47[0] = v11;
  v47[1] = v10;
  v40 = *MEMORY[0x277CBF1B0];
  v46[2] = *MEMORY[0x277CBF1E8];
  v46[3] = v40;
  v47[2] = v9;
  v47[3] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:4];
  v41 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *v44 = 138412290;
    *&v44[4] = v8;
    _os_log_impl(&dword_242545000, v41, OS_LOG_TYPE_DEFAULT, "Displaying UI notification: %@", v44, 0xCu);
  }

  error = 0;
  v42 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 2uLL, &error, v8);
  if (v42 && !error)
  {
    goto LABEL_13;
  }

  v43 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *v44 = 67109376;
    *&v44[4] = error;
    *&v44[8] = 2048;
    *&v44[10] = v42;
    _os_log_error_impl(&dword_242545000, v43, OS_LOG_TYPE_ERROR, "CFUserNotificationCreate gave error %d with notification result %p", v44, 0x12u);
  }

  if (v42)
  {
LABEL_13:
    CFRelease(v42);
  }

LABEL_14:
}

@end