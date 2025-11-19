@interface ULCMPDRFenceProvider
+ (BOOL)_isAvailable;
- (ULCMPDRFenceProvider)initWithFenceIdentifier:(id)a3 queue:(id)a4 radiusInMeters:(id)a5 callback:(id)a6 statusCallback:(id)a7 errorCallback:(id)a8;
- (void)_handleFenceCross:(id)a3 error:(id)a4;
- (void)_handleStatusUpdate:(id)a3 withError:(id)a4;
- (void)_handleStatusUpdateError:(id)a3;
- (void)clearFence;
- (void)endSession;
- (void)setFence;
- (void)startSession;
@end

@implementation ULCMPDRFenceProvider

void __36__ULCMPDRFenceProvider_startSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ULCMPDRFenceProvider_startSession__block_invoke_2;
    block[3] = &unk_2798D5458;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (ULCMPDRFenceProvider)initWithFenceIdentifier:(id)a3 queue:(id)a4 radiusInMeters:(id)a5 callback:(id)a6 statusCallback:(id)a7 errorCallback:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v24.receiver = self;
  v24.super_class = ULCMPDRFenceProvider;
  v20 = [(ULCMPDRFenceProvider *)&v24 init];
  dispatch_assert_queue_V2(v15);
  if (v20)
  {
    v21 = [@"com.apple.milod.ULCMPDRFenceManager." stringByAppendingString:v14];
    [(ULCMPDRFenceProvider *)v20 setFenceIdentifier:v21];

    [(ULCMPDRFenceProvider *)v20 setFenceName:v14];
    v22 = objc_opt_new();
    [(ULCMPDRFenceProvider *)v20 setFenceManager:v22];

    [(ULCMPDRFenceProvider *)v20 setQueue:v15];
    [(ULCMPDRFenceProvider *)v20 setRadius:v16];
    [(ULCMPDRFenceProvider *)v20 setOnMotionMeasurements:v17];
    [(ULCMPDRFenceProvider *)v20 setOnStatusReport:v18];
    [(ULCMPDRFenceProvider *)v20 setOnErrorIndication:v19];
  }

  return v20;
}

- (void)startSession
{
  v3 = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  if (+[ULCMPDRFenceProvider _isAvailable])
  {
    if (![(ULCMPDRFenceProvider *)self isSessionStarted])
    {
      v4 = [(ULCMPDRFenceProvider *)self fenceManager];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __36__ULCMPDRFenceProvider_startSession__block_invoke;
      v6[3] = &unk_2798D5480;
      objc_copyWeak(&v7, &location);
      [v4 startSessionWithStatusHandler:v6];

      [(ULCMPDRFenceProvider *)self setIsSessionStarted:1];
      objc_destroyWeak(&v7);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider startSession];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Failed to start PDR session, PDR not available", buf, 2u);
    }
  }

  objc_destroyWeak(&location);
}

- (void)endSession
{
  v3 = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  if (+[ULCMPDRFenceProvider _isAvailable]&& [(ULCMPDRFenceProvider *)self isSessionStarted])
  {
    if ([(ULCMPDRFenceProvider *)self isFenceActive])
    {
      [(ULCMPDRFenceProvider *)self clearFence];
    }

    v4 = [(ULCMPDRFenceProvider *)self fenceManager];
    [v4 endSession];

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "Ending PDR session", v6, 2u);
    }

    [(ULCMPDRFenceProvider *)self setIsSessionStarted:0];
  }
}

- (void)setFence
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  if (+[ULCMPDRFenceProvider _isAvailable])
  {
    if (![(ULCMPDRFenceProvider *)self isSessionStarted])
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCMPDRFenceProvider startSession];
      }

      v4 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Requested PDR fence without an active session! Starting Motion Session}", buf, 0x12u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        [ULCMPDRFenceProvider startSession];
      }

      v5 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        *buf = 68289026;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Requested PDR fence without an active session! Starting Motion Session", "{msg%{public}.0s:Requested PDR fence without an active session! Starting Motion Session}", buf, 0x12u);
      }

      [(ULCMPDRFenceProvider *)self startSession];
    }

    if ([(ULCMPDRFenceProvider *)self isFenceActive])
    {
      v6 = [(ULCMPDRFenceProvider *)self fenceManager];
      v7 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
      [v6 clearFence:v7];
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider startSession];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
      v10 = v9;
      v11 = [v9 UTF8String];
      v12 = [(ULCMPDRFenceProvider *)self radius];
      [v12 floatValue];
      v14 = v13;
      v15 = [(ULCMPDRFenceProvider *)self isFenceActive];
      *buf = 68289794;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = v11;
      v33 = 2050;
      v34 = v14;
      v35 = 1026;
      v36 = v15;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting PDR fence , fence identifier is:%{public, location:escape_only}s, fence size in m:%{public}.2f, previous fence state:%{public}hhd}", buf, 0x2Cu);
    }

    [(ULCMPDRFenceProvider *)self setIsFenceActive:1];
    v16 = [(ULCMPDRFenceProvider *)self fenceManager];
    v17 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
    v18 = [(ULCMPDRFenceProvider *)self radius];
    [v18 floatValue];
    v20 = v19;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __32__ULCMPDRFenceProvider_setFence__block_invoke;
    v24[3] = &unk_2798D54A8;
    objc_copyWeak(&v25, &location);
    LODWORD(v21) = v20;
    [v16 setFence:v17 withRadius:v24 withCompletion:v21];

    objc_destroyWeak(&v25);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider startSession];
    }

    v22 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "Failed to set pedestrian fence, PDR not available", buf, 2u);
    }
  }

  objc_destroyWeak(&location);
  v23 = *MEMORY[0x277D85DE8];
}

void __32__ULCMPDRFenceProvider_setFence__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ULCMPDRFenceProvider_setFence__block_invoke_2;
    block[3] = &unk_2798D5458;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)clearFence
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(ULCMPDRFenceProvider *)self isFenceActive])
  {
    v4 = [(ULCMPDRFenceProvider *)self fenceManager];
    v5 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
    [v4 clearFence:v5];

    [(ULCMPDRFenceProvider *)self setIsFenceActive:0];
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v6 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      fenceIdentifier = self->_fenceIdentifier;
      v13 = 138412290;
      v14 = fenceIdentifier;
      v8 = "Clearing PDR fence, with identifier: %@ -- will not receive any more fence breach notifications";
      v9 = v6;
      v10 = 12;
LABEL_10:
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v8 = "No fence active -- ignoring request to clear fence";
      v9 = v11;
      v10 = 2;
      goto LABEL_10;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleFenceCross:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(ULCMPDRFenceProvider *)self setIsFenceActive:0];
  if (v7)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 localizedDescription];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "PDR fence completion error, PDR fence completed with error: %@ and identifier %@", &v16, 0x16u);
    }

    if ([v7 code] == 103)
    {
      [(ULCMPDRFenceProvider *)self endSession];
    }

    v11 = [(ULCMPDRFenceProvider *)self onErrorIndication];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [(ULCMPDRFenceProvider *)self fenceName];
    (v11)[2](v11, v7, v12, v13);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v14 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "PDR fence completed sucessfully, with identifier: %@", &v16, 0xCu);
    }

    v11 = [(ULCMPDRFenceProvider *)self onMotionMeasurements];
    v12 = [MEMORY[0x277CBEAA8] now];
    v13 = [(ULCMPDRFenceProvider *)self fenceName];
    (v11[2])(v11, v12, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleStatusUpdateError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULCMPDRFenceProvider endSession];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 localizedDescription];
    v8 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULCMPDRFenceProvider isSessionStarted](self, "isSessionStarted")}];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULCMPDRFenceProvider isFenceActive](self, "isFenceActive")}];
    v12 = 138413058;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "PDR fence error, PDR fence cleared with error: %@ and identifier %@, session is started: %@, fence is active: %@", &v12, 0x2Au);
  }

  if ([(ULCMPDRFenceProvider *)self isFenceActive])
  {
    [(ULCMPDRFenceProvider *)self clearFence];
  }

  if ([(ULCMPDRFenceProvider *)self isSessionStarted])
  {
    [(ULCMPDRFenceProvider *)self endSession];
    [(ULCMPDRFenceProvider *)self startSession];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleStatusUpdate:(id)a3 withError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(ULCMPDRFenceProvider *)self _handleStatusUpdateError:v7];
    v8 = [(ULCMPDRFenceProvider *)self onErrorIndication];
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [(ULCMPDRFenceProvider *)self fenceName];
    (v8)[2](v8, v7, v9, v10);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "get PDR status: %@", &v15, 0xCu);
    }

    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
    v12 = [(ULCMPDRFenceProvider *)self fenceName];
    [v8 setObject:&stru_286A60C80 forKeyedSubscript:v12];

    v13 = [(ULCMPDRFenceProvider *)self onStatusReport];
    v13[2](v13, v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isAvailable
{
  v2 = [MEMORY[0x277CC1D10] isAvailable];
  if (v2)
  {
    LOBYTE(v2) = ([MEMORY[0x277CC1D10] availableFenceTypes] & 3) != 0;
  }

  return v2;
}

@end