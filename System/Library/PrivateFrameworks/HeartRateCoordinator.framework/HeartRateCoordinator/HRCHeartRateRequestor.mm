@interface HRCHeartRateRequestor
- (BOOL)opportunisticUpdatesEnabled;
- (BOOL)requestStreamingMode:(unint64_t)a3 withError:(id *)a4;
- (HRCHeartRateOutputDelegate)delegate;
- (HRCHeartRateRequestor)initWithDelegate:(id)a3 onQueue:(id)a4;
- (HRCHeartRateRequestor)initWithDelegate:(id)a3 onQueue:(id)a4 connectionHelper:(id)a5;
- (void)dealloc;
- (void)handleHeartRateData:(id)a3;
- (void)reassessServerConnection;
- (void)refreshRequiredWithCompletionHandler:(id)a3;
- (void)setOpportunisticUpdatesEnabled:(BOOL)a3;
- (void)setUserWorkoutActivitySession:(unint64_t)a3 isIndoor:(int64_t)a4;
@end

@implementation HRCHeartRateRequestor

- (HRCHeartRateRequestor)initWithDelegate:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(HRCHeartRateRequestor *)self initWithDelegate:v6 onQueue:v7 connectionHelper:v8];

  return v9;
}

- (HRCHeartRateRequestor)initWithDelegate:(id)a3 onQueue:(id)a4 connectionHelper:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = hws_get_framework_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v11, OS_LOG_TYPE_DEFAULT, "HRCHeartRateRequestor init", buf, 2u);
  }

  v17.receiver = self;
  v17.super_class = HRCHeartRateRequestor;
  v12 = [(HRCHeartRateRequestor *)&v17 init];
  objc_storeWeak(&v12->_delegate, v8);
  objc_storeStrong(&v12->_clientQueue, a4);
  objc_storeStrong(&v12->_connectionHelper, a5);
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.heartratecoordinator.heartraterequestor", v13);
  primaryQueue = v12->_primaryQueue;
  v12->_primaryQueue = v14;

  *&v12->_activityType = xmmword_2521E46D0;
  [(HRCHeartRateRequestorXPCHelper *)v12->_connectionHelper setupWithDelegate:v12 onQueue:v12->_primaryQueue];

  return v12;
}

- (void)dealloc
{
  primaryQueue = self->_primaryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HRCHeartRateRequestor_dealloc__block_invoke;
  block[3] = &unk_2796FA750;
  block[4] = self;
  dispatch_sync(primaryQueue, block);
  v4.receiver = self;
  v4.super_class = HRCHeartRateRequestor;
  [(HRCHeartRateRequestor *)&v4 dealloc];
}

- (BOOL)requestStreamingMode:(unint64_t)a3 withError:(id *)a4
{
  if (a3 == 1)
  {
    v8 = hws_get_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [HRCHeartRateRequestor requestStreamingMode:v8 withError:?];
    }

    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.heartratecoordinator" code:200 userInfo:&unk_2864678D0];
    }
  }

  else
  {
    v6 = [(HRCHeartRateRequestor *)self primaryQueue:a3];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HRCHeartRateRequestor_requestStreamingMode_withError___block_invoke;
    v10[3] = &unk_2796FA778;
    v10[4] = self;
    v10[5] = a3;
    dispatch_sync(v6, v10);
  }

  return a3 != 1;
}

void __56__HRCHeartRateRequestor_requestStreamingMode_withError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) requestedStreamingMode] != *(a1 + 40))
  {
    v2 = hws_get_framework_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) requestedStreamingMode];
      v4 = *(a1 + 40);
      v9 = 134218240;
      v10 = v3;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_2521DF000, v2, OS_LOG_TYPE_DEFAULT, "streaming mode request updated from %ld to %ld", &v9, 0x16u);
    }

    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    [*(v5 - 1) setRequestedStreamingMode:v6];
    [*(v5 - 1) reassessServerConnection];
    v7 = [*(v5 - 1) connectionHelper];
    [v7 requestStreamingMode:*v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)reassessServerConnection
{
  v7 = [(HRCHeartRateRequestor *)self primaryQueue];
  dispatch_assert_queue_V2(v7);

  if ([(HRCHeartRateRequestor *)self requestedStreamingMode]|| self->_opportunisticUpdatesEnabled || [(HRCHeartRateRequestor *)self activityType])
  {
    v8 = [(HRCHeartRateRequestor *)self connectionHelper];
    v3 = [v8 connected];

    if (v3)
    {
      return;
    }

    v9 = [(HRCHeartRateRequestor *)self connectionHelper];
    [v9 connect];

    v10 = [(HRCHeartRateRequestor *)self connectionHelper];
    v4 = [MEMORY[0x277CCAC38] processInfo];
    v5 = [v4 processName];
    [v10 updateProcessName:v5];
  }

  else
  {
    v11 = [(HRCHeartRateRequestor *)self connectionHelper];
    v6 = [v11 connected];

    if (!v6)
    {
      return;
    }

    v10 = [(HRCHeartRateRequestor *)self connectionHelper];
    [v10 invalidateConnection];
  }
}

- (void)setUserWorkoutActivitySession:(unint64_t)a3 isIndoor:(int64_t)a4
{
  v7 = [(HRCHeartRateRequestor *)self primaryQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HRCHeartRateRequestor_setUserWorkoutActivitySession_isIndoor___block_invoke;
  block[3] = &unk_2796FA7A0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(v7, block);
}

void __64__HRCHeartRateRequestor_setUserWorkoutActivitySession_isIndoor___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) activityType] != *(a1 + 40) || objc_msgSend(*(a1 + 32), "locationType") != *(a1 + 48))
  {
    v2 = hws_get_framework_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(a1 + 48);
      v7 = 134283777;
      v8 = v3;
      v9 = 2049;
      v10 = v4;
      _os_log_impl(&dword_2521DF000, v2, OS_LOG_TYPE_DEFAULT, "client updated HKWorkoutActivityType : %{private}lu , HKWorkoutSessionLocationType : %{private}lu", &v7, 0x16u);
    }

    [*(a1 + 32) setActivityType:*(a1 + 40)];
    [*(a1 + 32) setLocationType:*(a1 + 48)];
    [*(a1 + 32) reassessServerConnection];
    v5 = [*(a1 + 32) connectionHelper];
    [v5 setUserWorkoutActivityType:objc_msgSend(*(a1 + 32) locationType:{"activityType"), objc_msgSend(*(a1 + 32), "locationType")}];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setOpportunisticUpdatesEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = hws_get_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [HRCHeartRateRequestor setOpportunisticUpdatesEnabled:v3];
    }
  }

  else
  {
    v5 = [(HRCHeartRateRequestor *)self primaryQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__HRCHeartRateRequestor_setOpportunisticUpdatesEnabled___block_invoke;
    v6[3] = &unk_2796FA7C8;
    v6[4] = self;
    v7 = 0;
    dispatch_sync(v5, v6);
  }
}

void __56__HRCHeartRateRequestor_setOpportunisticUpdatesEnabled___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 16) != v2)
  {
    *(v1 + 16) = v2;
    v4 = hws_get_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8[0] = 67109120;
      v8[1] = v5;
      _os_log_impl(&dword_2521DF000, v4, OS_LOG_TYPE_DEFAULT, "opportunisticUpdatesEnabled : %{BOOL}u", v8, 8u);
    }

    [*(a1 + 32) reassessServerConnection];
    v6 = [*(a1 + 32) connectionHelper];
    [v6 requestOpportunisticUpdates:*(a1 + 40)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)opportunisticUpdatesEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HRCHeartRateRequestor *)self primaryQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HRCHeartRateRequestor_opportunisticUpdatesEnabled__block_invoke;
  v5[3] = &unk_2796FA7F0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)refreshRequiredWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HRCHeartRateRequestor *)self primaryQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HRCHeartRateRequestor_refreshRequiredWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796FA818;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__HRCHeartRateRequestor_refreshRequiredWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v4 processName];
  (*(v2 + 16))(v2, v3, [*(a1 + 32) requestedStreamingMode], *(*(a1 + 32) + 16), objc_msgSend(*(a1 + 32), "activityType"), objc_msgSend(*(a1 + 32), "locationType"));
}

- (void)handleHeartRateData:(id)a3
{
  v4 = a3;
  v5 = hws_get_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2521DF000, v5, OS_LOG_TYPE_INFO, "received heart rate sample in client process", buf, 2u);
  }

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HRCHeartRateRequestor_handleHeartRateData___block_invoke;
  v8[3] = &unk_2796FA840;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(clientQueue, v8);
}

void __45__HRCHeartRateRequestor_handleHeartRateData___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hrContext];
  v3 = *(a1 + 40);
  if (v2 == 2)
  {
    v4 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) streamingThrottleStatus];

      if (v5 == 3)
      {
        v6 = hws_get_framework_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = [*(a1 + 32) uuid];
          [*(a1 + 32) heartRate];
          v9 = v8;
          v10 = [*(a1 + 32) confidence];
          [v10 doubleValue];
          v12 = v11;
          v13 = [*(a1 + 32) hrContext];
          v14 = [*(a1 + 32) timestamp];
          v40 = 138478851;
          v41 = v7;
          v42 = 2053;
          v43 = v9;
          v44 = 2048;
          v45 = v12;
          v46 = 2048;
          v47 = v13;
          v48 = 2113;
          v49 = v14;
          _os_log_impl(&dword_2521DF000, v6, OS_LOG_TYPE_INFO, "sending filtered HR with uuid : %{private}@, bpm : %{sensitive}f, confidence : %f, context : %ld, date : %{private}@", &v40, 0x34u);
        }

        v15 = [*(a1 + 40) delegate];
        [v15 handleFilteredHeartRate:*(a1 + 32)];
      }
    }

    else
    {
    }

    v28 = [*(a1 + 40) delegate];
    v29 = objc_opt_respondsToSelector();

    if (v29)
    {
      v30 = hws_get_framework_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [*(a1 + 32) uuid];
        [*(a1 + 32) heartRate];
        v33 = v32;
        v34 = [*(a1 + 32) confidence];
        [v34 doubleValue];
        v36 = v35;
        v37 = [*(a1 + 32) hrContext];
        v38 = [*(a1 + 32) timestamp];
        v40 = 138478851;
        v41 = v31;
        v42 = 2053;
        v43 = v33;
        v44 = 2048;
        v45 = v36;
        v46 = 2048;
        v47 = v37;
        v48 = 2113;
        v49 = v38;
        _os_log_impl(&dword_2521DF000, v30, OS_LOG_TYPE_INFO, "sending one second streaming hr with uuid : %{private}@, bpm : %{sensitive}f, confidence : %f, context : %ld, date : %{private}@", &v40, 0x34u);
      }

      v27 = [*(a1 + 40) delegate];
      [v27 handleOneSecondStreamingHeartRate:*(a1 + 32)];
LABEL_18:
    }
  }

  else if (([v3 opportunisticUpdatesEnabled] & 1) != 0 || objc_msgSend(*(a1 + 32), "sourceType") == 3)
  {
    v16 = [*(a1 + 40) delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = hws_get_framework_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [*(a1 + 32) uuid];
        [*(a1 + 32) heartRate];
        v21 = v20;
        v22 = [*(a1 + 32) confidence];
        [v22 doubleValue];
        v24 = v23;
        v25 = [*(a1 + 32) hrContext];
        v26 = [*(a1 + 32) timestamp];
        v40 = 138478851;
        v41 = v19;
        v42 = 2053;
        v43 = v21;
        v44 = 2048;
        v45 = v24;
        v46 = 2048;
        v47 = v25;
        v48 = 2113;
        v49 = v26;
        _os_log_impl(&dword_2521DF000, v18, OS_LOG_TYPE_INFO, "sending filtered HR with uuid : %{private}@, bpm : %{sensitive}f, confidence : %f, context : %ld, date : %{private}@", &v40, 0x34u);
      }

      v27 = [*(a1 + 40) delegate];
      [v27 handleFilteredHeartRate:*(a1 + 32)];
      goto LABEL_18;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (HRCHeartRateOutputDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end