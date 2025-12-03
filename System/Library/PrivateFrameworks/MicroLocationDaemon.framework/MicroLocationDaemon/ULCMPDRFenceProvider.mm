@interface ULCMPDRFenceProvider
+ (BOOL)_isAvailable;
- (ULCMPDRFenceProvider)initWithFenceIdentifier:(id)identifier queue:(id)queue radiusInMeters:(id)meters callback:(id)callback statusCallback:(id)statusCallback errorCallback:(id)errorCallback;
- (void)_handleFenceCross:(id)cross error:(id)error;
- (void)_handleStatusUpdate:(id)update withError:(id)error;
- (void)_handleStatusUpdateError:(id)error;
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

- (ULCMPDRFenceProvider)initWithFenceIdentifier:(id)identifier queue:(id)queue radiusInMeters:(id)meters callback:(id)callback statusCallback:(id)statusCallback errorCallback:(id)errorCallback
{
  identifierCopy = identifier;
  queueCopy = queue;
  metersCopy = meters;
  callbackCopy = callback;
  statusCallbackCopy = statusCallback;
  errorCallbackCopy = errorCallback;
  v24.receiver = self;
  v24.super_class = ULCMPDRFenceProvider;
  v20 = [(ULCMPDRFenceProvider *)&v24 init];
  dispatch_assert_queue_V2(queueCopy);
  if (v20)
  {
    v21 = [@"com.apple.milod.ULCMPDRFenceManager." stringByAppendingString:identifierCopy];
    [(ULCMPDRFenceProvider *)v20 setFenceIdentifier:v21];

    [(ULCMPDRFenceProvider *)v20 setFenceName:identifierCopy];
    v22 = objc_opt_new();
    [(ULCMPDRFenceProvider *)v20 setFenceManager:v22];

    [(ULCMPDRFenceProvider *)v20 setQueue:queueCopy];
    [(ULCMPDRFenceProvider *)v20 setRadius:metersCopy];
    [(ULCMPDRFenceProvider *)v20 setOnMotionMeasurements:callbackCopy];
    [(ULCMPDRFenceProvider *)v20 setOnStatusReport:statusCallbackCopy];
    [(ULCMPDRFenceProvider *)v20 setOnErrorIndication:errorCallbackCopy];
  }

  return v20;
}

- (void)startSession
{
  queue = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if (+[ULCMPDRFenceProvider _isAvailable])
  {
    if (![(ULCMPDRFenceProvider *)self isSessionStarted])
    {
      fenceManager = [(ULCMPDRFenceProvider *)self fenceManager];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __36__ULCMPDRFenceProvider_startSession__block_invoke;
      v6[3] = &unk_2798D5480;
      objc_copyWeak(&v7, &location);
      [fenceManager startSessionWithStatusHandler:v6];

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
  queue = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if (+[ULCMPDRFenceProvider _isAvailable]&& [(ULCMPDRFenceProvider *)self isSessionStarted])
  {
    if ([(ULCMPDRFenceProvider *)self isFenceActive])
    {
      [(ULCMPDRFenceProvider *)self clearFence];
    }

    fenceManager = [(ULCMPDRFenceProvider *)self fenceManager];
    [fenceManager endSession];

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
  queue = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(queue);

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
      fenceManager = [(ULCMPDRFenceProvider *)self fenceManager];
      fenceIdentifier = [(ULCMPDRFenceProvider *)self fenceIdentifier];
      [fenceManager clearFence:fenceIdentifier];
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider startSession];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      fenceIdentifier2 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
      v10 = fenceIdentifier2;
      uTF8String = [fenceIdentifier2 UTF8String];
      radius = [(ULCMPDRFenceProvider *)self radius];
      [radius floatValue];
      v14 = v13;
      isFenceActive = [(ULCMPDRFenceProvider *)self isFenceActive];
      *buf = 68289794;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = uTF8String;
      v33 = 2050;
      v34 = v14;
      v35 = 1026;
      v36 = isFenceActive;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting PDR fence , fence identifier is:%{public, location:escape_only}s, fence size in m:%{public}.2f, previous fence state:%{public}hhd}", buf, 0x2Cu);
    }

    [(ULCMPDRFenceProvider *)self setIsFenceActive:1];
    fenceManager2 = [(ULCMPDRFenceProvider *)self fenceManager];
    fenceIdentifier3 = [(ULCMPDRFenceProvider *)self fenceIdentifier];
    radius2 = [(ULCMPDRFenceProvider *)self radius];
    [radius2 floatValue];
    v20 = v19;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __32__ULCMPDRFenceProvider_setFence__block_invoke;
    v24[3] = &unk_2798D54A8;
    objc_copyWeak(&v25, &location);
    LODWORD(v21) = v20;
    [fenceManager2 setFence:fenceIdentifier3 withRadius:v24 withCompletion:v21];

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
  queue = [(ULCMPDRFenceProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ULCMPDRFenceProvider *)self isFenceActive])
  {
    fenceManager = [(ULCMPDRFenceProvider *)self fenceManager];
    fenceIdentifier = [(ULCMPDRFenceProvider *)self fenceIdentifier];
    [fenceManager clearFence:fenceIdentifier];

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

- (void)_handleFenceCross:(id)cross error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  crossCopy = cross;
  errorCopy = error;
  [(ULCMPDRFenceProvider *)self setIsFenceActive:0];
  if (errorCopy)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULCMPDRFenceProvider endSession];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      localizedDescription = [errorCopy localizedDescription];
      v16 = 138412546;
      v17 = localizedDescription;
      v18 = 2112;
      v19 = crossCopy;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "PDR fence completion error, PDR fence completed with error: %@ and identifier %@", &v16, 0x16u);
    }

    if ([errorCopy code] == 103)
    {
      [(ULCMPDRFenceProvider *)self endSession];
    }

    onErrorIndication = [(ULCMPDRFenceProvider *)self onErrorIndication];
    v12 = [MEMORY[0x277CBEAA8] now];
    fenceName = [(ULCMPDRFenceProvider *)self fenceName];
    (onErrorIndication)[2](onErrorIndication, errorCopy, v12, fenceName);
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
      v17 = crossCopy;
      _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "PDR fence completed sucessfully, with identifier: %@", &v16, 0xCu);
    }

    onErrorIndication = [(ULCMPDRFenceProvider *)self onMotionMeasurements];
    v12 = [MEMORY[0x277CBEAA8] now];
    fenceName = [(ULCMPDRFenceProvider *)self fenceName];
    (onErrorIndication[2])(onErrorIndication, v12, fenceName);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleStatusUpdateError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (onceToken_MicroLocation_Default != -1)
  {
    [ULCMPDRFenceProvider endSession];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    localizedDescription = [errorCopy localizedDescription];
    fenceIdentifier = [(ULCMPDRFenceProvider *)self fenceIdentifier];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULCMPDRFenceProvider isSessionStarted](self, "isSessionStarted")}];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ULCMPDRFenceProvider isFenceActive](self, "isFenceActive")}];
    v12 = 138413058;
    v13 = localizedDescription;
    v14 = 2112;
    v15 = fenceIdentifier;
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

- (void)_handleStatusUpdate:(id)update withError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  errorCopy = error;
  if (errorCopy)
  {
    [(ULCMPDRFenceProvider *)self _handleStatusUpdateError:errorCopy];
    onErrorIndication = [(ULCMPDRFenceProvider *)self onErrorIndication];
    v9 = [MEMORY[0x277CBEAA8] now];
    fenceName = [(ULCMPDRFenceProvider *)self fenceName];
    (onErrorIndication)[2](onErrorIndication, errorCopy, v9, fenceName);
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
      v16 = updateCopy;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, "get PDR status: %@", &v15, 0xCu);
    }

    onErrorIndication = [MEMORY[0x277CBEB38] dictionaryWithDictionary:updateCopy];
    fenceName2 = [(ULCMPDRFenceProvider *)self fenceName];
    [onErrorIndication setObject:&stru_286A60C80 forKeyedSubscript:fenceName2];

    onStatusReport = [(ULCMPDRFenceProvider *)self onStatusReport];
    onStatusReport[2](onStatusReport, onErrorIndication);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isAvailable
{
  isAvailable = [MEMORY[0x277CC1D10] isAvailable];
  if (isAvailable)
  {
    LOBYTE(isAvailable) = ([MEMORY[0x277CC1D10] availableFenceTypes] & 3) != 0;
  }

  return isAvailable;
}

@end