@interface IRMiLoProvider
+ (BOOL)deleteServiceWithToken:(id)a3;
- (BOOL)startLowLatencyMiLo;
- (IRMiLoProvider)initWithQueue:(id)a3;
- (IRMiLoProviderObserverProtocol)observer;
- (id)_miloServiceStatusLogStringFromMap:(id)a3;
- (id)getMiloServiceStatusStringQEWithPrediction:(id)a3;
- (id)requestSinglePrediction;
- (int)_locationOfInterestToIRLocationSemantic:(id)a3;
- (int64_t)_bitmapFromServiceSuspendedReasonArray:(id)a3;
- (void)_connectToLslService;
- (void)_serviceReset;
- (void)_serviceResetAndIncreaseFailCount;
- (void)addLabelWithName:(id)a3;
- (void)connection:(id)a3 didCompleteRequest:(id)a4 withError:(id)a5;
- (void)connection:(id)a3 didEnableMicrolocationAtCurrentLocationWithError:(id)a4;
- (void)connection:(id)a3 didFailWithError:(id)a4;
- (void)connectionDidUpdateMap:(id)a3;
- (void)connectionDidUpdatePredictionContext:(id)a3;
- (void)removeObserver;
- (void)resetSpotOnLocationRequest;
- (void)setSpotOnLocation;
@end

@implementation IRMiLoProvider

+ (BOOL)deleteServiceWithToken:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D28780] createServiceIdentifierForToken:v3];
  if (v4)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = MEMORY[0x277D28780];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__IRMiLoProvider_deleteServiceWithToken___block_invoke;
    v11[3] = &unk_2797E0F00;
    v13 = &v14;
    v7 = v5;
    v12 = v7;
    [v6 deleteServiceWithIdentifier:v4 reply:v11];
    v8 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v7, v8);
    v9 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (IRMiLoProvider)initWithQueue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IRMiLoProvider;
  v5 = [(IRMiLoProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IRMiLoProvider *)v5 setQueue:v4];
    [(IRMiLoProvider *)v6 setMiloServiceStatusStringQE:@"MiLo State:nil"];
  }

  return v6;
}

- (void)removeObserver
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "#milo-provider, ";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_INFO, "%s[%@], Removing MiLo observer", &v7, 0x16u);
  }

  v5 = [(IRMiLoProvider *)self observer];

  if (v5)
  {
    [(IRMiLoProvider *)self setObserver:0];
    [(IRMiLoProvider *)self setServiceUUID:0];
    [(IRMiLoProvider *)self setIsLowLatency:0];
    [(IRMiLoProvider *)self setNumberOfConsecutiveMiLoFailAttempts:0];
    [(IRMiLoProvider *)self _serviceReset];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addLabelWithName:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "#milo-provider, ";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_INFO, "%s[%@], addLabelWithName: name: %@", &v10, 0x20u);
  }

  v7 = [objc_alloc(MEMORY[0x277D287A0]) initWithName:v4];
  v8 = [(IRMiLoProvider *)self connection];
  [v8 addLabel:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)requestSinglePrediction
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(IRMiLoProvider *)self isMiLoServiceStateRunning]&& ([(IRMiLoProvider *)self observer], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, [(IRMiLoProvider *)self requestSinglePredictionIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v15 = [(IRMiLoProvider *)self connection];
    v16 = [v15 requestPrediction];
    [(IRMiLoProvider *)self setRequestSinglePredictionIdentifier:v16];

    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(IRMiLoProvider *)self requestSinglePredictionIdentifier];
    v17 = 136315906;
    v18 = "#milo-provider, ";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_INFO, "%s[%@], Single prediction requested, complied = %@, request-id (updated if complied): %@", &v17, 0x2Au);
  }

  v11 = [(IRMiLoProvider *)self requestSinglePredictionIdentifier];
  v12 = [v11 UUIDString];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)startLowLatencyMiLo
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(IRMiLoProvider *)self miLoConnectionProgressStatus]!= 2)
  {
    v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v5 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v5;
      v8 = [v6 numberWithUnsignedInt:{-[IRMiLoProvider miLoConnectionProgressStatus](self, "miLoConnectionProgressStatus")}];
      v16 = 136315650;
      v17 = "#milo-provider, ";
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - MiLo start low latency] MiLo connection status is not connected: %@", &v16, 0x20u);
    }

    goto LABEL_7;
  }

  if ([(IRMiLoProvider *)self isLowLatency])
  {
    v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v4 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "#milo-provider, ";
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - MiLo start low latency] API was called after low latency is already enabled", &v16, 0x16u);
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = 1;
  [(IRMiLoProvider *)self setIsLowLatency:1];
  v12 = [(IRMiLoProvider *)self connection];
  v13 = [objc_alloc(MEMORY[0x277D28818]) initWithIsLowLatency:{-[IRMiLoProvider isLowLatency](self, "isLowLatency")}];
  v14 = [v12 startUpdatingWithConfiguration:v13];

  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v15 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "#milo-provider, ";
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_25543D000, v15, OS_LOG_TYPE_INFO, "%s[%@], Starting LowLatency connection for MiLo", &v16, 0x16u);
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setSpotOnLocation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(IRMiLoProvider *)self spotOnLocationRequested];
  v4 = MEMORY[0x277D21308];
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = MEMORY[0x277D21260];
  v7 = *MEMORY[0x277D21260];
  v8 = *MEMORY[0x277D21260];
  if (v3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "#milo-provider, ";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - MiLo provider got setSpotOnLocation twice] MiLo already waiting for spotOn response", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "#milo-provider, ";
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_INFO, "%s[%@], MiLo provider got setSpotOnLocation", buf, 0x16u);
    }

    if ([(IRMiLoProvider *)self miLoConnectionProgressStatus]== 2)
    {
      v9 = [(IRMiLoProvider *)self connection];
      [v9 enableMicrolocationAtCurrentLocation];

      [(IRMiLoProvider *)self setSpotOnLocationRequested:1];
    }

    else
    {
      v10 = dispatch_get_specific(*v4);
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v21 = "#milo-provider, ";
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_INFO, "%s[%@], MiLo not connected, responding to setSpotOnLocation with error", buf, 0x16u);
      }

      v12 = [(IRMiLoProvider *)self observer];
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D21258];
      v18 = *MEMORY[0x277CCA470];
      v19 = @"MiLo Unavailable";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v16 = [v13 errorWithDomain:v14 code:-12899 userInfo:v15];
      [v12 didSpotOnLocationCompleteWithError:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)resetSpotOnLocationRequest
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "#milo-provider, ";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_INFO, "%s[%@], resetting spotOnLocationRquest", &v6, 0x16u);
  }

  [(IRMiLoProvider *)self setSpotOnLocationRequested:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)getMiloServiceStatusStringQEWithPrediction:(id)a3
{
  v4 = a3;
  v15 = [(IRMiLoProvider *)self miloServiceStatusStringQE];
  v5 = [v4 predictionId];
  if ([(IRMiLoProvider *)self isLowLatency])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([v4 isPredictionValid])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 predictionTime];
  v9 = [MEMORY[0x277CBEBB0] localTimeZone];
  v10 = [v8 dateByAddingTimeInterval:{objc_msgSend(v9, "secondsFromGMT")}];
  v11 = [v4 isMotionDetected];

  if (v11)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v15 stringByAppendingFormat:@" predictionId: %@\n isLowLatency: %@\n isPredictionValid: %@\n predictionTime: %@ \n isMotionDetected: %@", v5, v6, v7, v10, v12];

  return v13;
}

- (void)_connectToLslService
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v4 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [(IRMiLoProvider *)self serviceUUID];
    v14 = 136315650;
    v15 = "#milo-provider, ";
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_INFO, "%s[%@], Connecting to LSL service for identifier: %@", &v14, 0x20u);
  }

  v7 = [(IRMiLoProvider *)self connection];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277D28780]);
    v9 = [(IRMiLoProvider *)self serviceUUID];
    v10 = [v8 initWithDelegate:self serviceIdentifier:v9];
    [(IRMiLoProvider *)self setConnection:v10];
  }

  v11 = [(IRMiLoProvider *)self connection];
  v12 = [v11 connect];

  [(IRMiLoProvider *)self setMiLoConnectionProgressStatus:1];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)_miloServiceStatusLogStringFromMap:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 serviceSuspendReasons];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = @"<";
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v20 + 1) + 8 * v9) suspendReasonEnum];
        v11 = ULServiceSuspendReasonToString();
        v8 = [(__CFString *)v10 stringByAppendingString:v11];

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = @"<";
  }

  v12 = [(__CFString *)v8 stringByAppendingString:@">"];

  v13 = MEMORY[0x277CCACA8];
  [v3 serviceState];
  v14 = ULServiceStateToString();
  if ([v3 isMapValid])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v3 locationOfInterest];
  v17 = [v13 stringWithFormat:@"MiLo State:\n State: %@\n Suspend reasons: %@\n isMapValid: %@\n locationOfInterest: %@\n", v14, v12, v15, v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_serviceReset
{
  [(IRMiLoProvider *)self setIsMiLoServiceStateRunning:0];
  [(IRMiLoProvider *)self setConnection:0];
  [(IRMiLoProvider *)self setMiLoConnectionProgressStatus:0];
  v3 = [(IRMiLoProvider *)self observer];
  if (v3)
  {
    v4 = v3;
    v5 = [(IRMiLoProvider *)self numberOfConsecutiveMiLoFailAttempts];
    v6 = +[IRPreferences shared];
    v7 = [v6 miLoProviderMaxNumberOfConsecutiveMiLoFailAttempts];
    v8 = [v7 integerValue];

    if (v8 >= v5)
    {

      [(IRMiLoProvider *)self _connectToLslService];
    }
  }
}

- (void)_serviceResetAndIncreaseFailCount
{
  [(IRMiLoProvider *)self setNumberOfConsecutiveMiLoFailAttempts:[(IRMiLoProvider *)self numberOfConsecutiveMiLoFailAttempts]+ 1];

  [(IRMiLoProvider *)self _serviceReset];
}

- (int64_t)_bitmapFromServiceSuspendedReasonArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= 1 << [*(*(&v11 + 1) + 8 * i) suspendReasonEnum];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)_locationOfInterestToIRLocationSemantic:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = [v3 locationOfInterestType];
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
LABEL_12:
        v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
        v8 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_FAULT))
        {
          v9 = MEMORY[0x277CCABB0];
          v10 = v8;
          v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v4, "locationOfInterestType")}];
          v14 = 136315650;
          v15 = "#milo-provider, ";
          v16 = 2112;
          v17 = v7;
          v18 = 2112;
          v19 = v11;
          _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_FAULT, "%s[%@], [ErrorId - Milo location type unsupported] Milo provided LOI type not handled %@", &v14, 0x20u);
        }

        goto LABEL_15;
      }

      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 != 3 && v5 != 30)
      {
        goto LABEL_12;
      }

LABEL_15:
      v6 = 0;
      goto LABEL_16;
    }

    v6 = 5;
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)connectionDidUpdateMap:(id)a3
{
  v4 = [(IRMiLoProvider *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__IRMiLoProvider_connectionDidUpdateMap___block_invoke;
  v5[3] = &unk_2797E0F28;
  v5[4] = self;
  IRDispatchAsyncWithStrongSelf(v4, self, v5);
}

void __41__IRMiLoProvider_connectionDidUpdateMap___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 observer];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [v3 connection];
  v6 = [v5 currentMap];

  v7 = [v6 locationOfInterest];
  v8 = [v3 _locationOfInterestToIRLocationSemantic:v7];
  v9 = [v6 locationOfInterest];
  v10 = [v9 locationOfInterestUUID];
  v11 = [v10 UUIDString];
  [v4 onUpdateLOIType:v8 WithLOIIdentifier:v11];

  if ([v3 miLoConnectionProgressStatus] == 1)
  {
    [v3 setMiLoConnectionProgressStatus:2];
    v12 = [v3 connection];
    v13 = [objc_alloc(MEMORY[0x277D28818]) initWithIsLowLatency:{objc_msgSend(v3, "isLowLatency")}];
    v14 = [v12 startUpdatingWithConfiguration:v13];

    [v3 setNumberOfConsecutiveMiLoFailAttempts:0];
  }

  [v3 setIsMiLoServiceStateRunning:0];
  v15 = [v6 serviceState];
  v16 = MEMORY[0x277D21308];
  if (v15 == 1)
  {
    [v4 onPrediction:0];
    [v3 setRequestSinglePredictionIdentifier:0];
    v17 = dispatch_get_specific(*v16);
    v21 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v19 = v21;
      *v32 = 136315650;
      *&v32[4] = "#milo-provider, ";
      *&v32[12] = 2112;
      *&v32[14] = v17;
      *&v32[22] = 1024;
      LODWORD(v33) = [v3 miLoConnectionProgressStatus];
      v20 = "%s[%@], Milo service state suspended, %d";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!v15)
  {
    [v3 setIsMiLoServiceStateRunning:1];
    v17 = dispatch_get_specific(*v16);
    v18 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      *v32 = 136315650;
      *&v32[4] = "#milo-provider, ";
      *&v32[12] = 2112;
      *&v32[14] = v17;
      *&v32[22] = 1024;
      LODWORD(v33) = [v3 miLoConnectionProgressStatus];
      v20 = "%s[%@], Milo service state running, %d";
LABEL_10:
      _os_log_impl(&dword_25543D000, v19, OS_LOG_TYPE_INFO, v20, v32, 0x1Cu);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

LABEL_12:
  v22 = [v3 _miloServiceStatusLogStringFromMap:{v6, *v32, *&v32[16], v33}];
  [v3 setMiloServiceStatusStringQE:v22];

  v23 = dispatch_get_specific(*v16);
  v24 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v3 miloServiceStatusStringQE];
    *v32 = 136315650;
    *&v32[4] = "#milo-provider, ";
    *&v32[12] = 2112;
    *&v32[14] = v23;
    *&v32[22] = 2112;
    v33 = v26;
    _os_log_impl(&dword_25543D000, v25, OS_LOG_TYPE_DEFAULT, "%s[%@], Milo status changed: %@", v32, 0x20u);
  }

  v27 = *(a1 + 32);
  v28 = [v6 serviceSuspendReasons];
  [v3 setMiLoServiceSuspendedReasonBitmap:{objc_msgSend(v27, "_bitmapFromServiceSuspendedReasonArray:", v28)}];

  if ([v3 isMiLoServiceStateRunning] && objc_msgSend(v3, "isLowLatency"))
  {
    v29 = [v3 connection];
    v30 = [v29 requestPrediction];
  }

LABEL_18:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidUpdatePredictionContext:(id)a3
{
  v4 = [(IRMiLoProvider *)self queue];
  IRDispatchAsyncWithStrongSelf(v4, self, &__block_literal_global_5);
}

void __55__IRMiLoProvider_connectionDidUpdatePredictionContext___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 connection];
  v4 = [v3 currentMap];

  v5 = [v4 predictionContext];
  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [v5 uniqueIdentifier];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPredictionValid")}];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isMapValid")}];
    *buf = 136316162;
    v33 = "#milo-provider, ";
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], MiLo prediction received, uniqueIdentifier: %@, isPredictionValid: %@, isMapValid: %@", buf, 0x34u);
  }

  v12 = [v2 requestSinglePredictionIdentifier];
  v13 = [v5 uniqueIdentifier];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    [v2 setRequestSinglePredictionIdentifier:0];
  }

  if ([v2 isLowLatency])
  {
    v15 = [v4 mapItems];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __55__IRMiLoProvider_connectionDidUpdatePredictionContext___block_invoke_52;
    v30[3] = &unk_2797E0F70;
    v16 = v4;
    v31 = v16;
    v29 = [v15 compactMap:v30];

    v17 = [v5 uniqueIdentifier];
    v18 = [v17 UUIDString];
    v19 = v4;
    v20 = [v5 isPredictionValid];
    v21 = [v16 isMapValid];
    v22 = [v5 isMotionDetected];
    v23 = [MEMORY[0x277CBEB98] setWithArray:v29];
    v24 = [v5 timestamp];
    v25 = v20;
    v4 = v19;
    v26 = [IRMiloLslPredictionDO miloLslPredictionDOWithPredictionId:v18 isPredictionValid:v25 isMapValid:v21 isMotionDetected:v22 scores:v23 predictionTime:v24];

    v27 = [v2 observer];
    [v27 onPrediction:v26];
  }

  v28 = *MEMORY[0x277D85DE8];
}

id __55__IRMiLoProvider_connectionDidUpdatePredictionContext___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mapItemType];
  v5 = [v4 isEqual:*MEMORY[0x277D28838]];

  if (v5)
  {
    if ([*(a1 + 32) numberOfLabelsInSameSpaceForMapItem:v3])
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [v3 name];
    v8 = [IRMiloLslSingleScoreDO miloLslSingleScoreDOWithScore:v7 eventID:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)connection:(id)a3 didCompleteRequest:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(IRMiLoProvider *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__IRMiLoProvider_connection_didCompleteRequest_withError___block_invoke;
  v12[3] = &unk_2797E0F98;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  IRDispatchAsyncWithStrongSelf(v9, self, v12);
}

void __58__IRMiLoProvider_connection_didCompleteRequest_withError___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4 || [v4 code] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v13 = 136315906;
    v14 = "#milo-provider, ";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], didCompleteRequest: requestIdentifier: %@, error: %@", &v13, 0x2Au);
  }

  v10 = *(a1 + 40);
  v11 = [v3 requestSinglePredictionIdentifier];
  LODWORD(v10) = [v10 isEqual:v11];

  if (v10 && v6)
  {
    [v3 setRequestSinglePredictionIdentifier:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = [(IRMiLoProvider *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__IRMiLoProvider_connection_didFailWithError___block_invoke;
  v8[3] = &unk_2797E0F28;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __46__IRMiLoProvider_connection_didFailWithError___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 code];
  v6 = MEMORY[0x277D21308];
  v7 = MEMORY[0x277D21260];
  if (v5 == 19 || [*(a1 + 32) code] == 20)
  {
    v8 = dispatch_get_specific(*v6);
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      v15 = 136315650;
      v16 = "#milo-provider, ";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_FAULT, "%s[%@], [ErrorId - IRMiLoProvider:connection:didFailWithError] IRMiLoProvider:connection:didFailWithError: %@", &v15, 0x20u);
    }
  }

  v11 = dispatch_get_specific(*v6);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v15 = 136315650;
    v16 = "#milo-provider, ";
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - didFailWithError] didFailWithError: %@", &v15, 0x20u);
  }

  [v4 _serviceResetAndIncreaseFailCount];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didEnableMicrolocationAtCurrentLocationWithError:(id)a4
{
  v5 = a4;
  v6 = [(IRMiLoProvider *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__IRMiLoProvider_connection_didEnableMicrolocationAtCurrentLocationWithError___block_invoke;
  v8[3] = &unk_2797E0F28;
  v9 = v5;
  v7 = v5;
  IRDispatchAsyncWithStrongSelf(v6, self, v8);
}

void __78__IRMiLoProvider_connection_didEnableMicrolocationAtCurrentLocationWithError___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4 || [v4 code] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v8 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "#milo-provider, ";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], didEnableMicrolocationAtCurrentLocationWithError: error: %@", &v11, 0x20u);
  }

  [v3 resetSpotOnLocationRequest];
  v9 = [v3 observer];
  [v9 didSpotOnLocationCompleteWithError:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (IRMiLoProviderObserverProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)addObserver:(const char *)a1 withToken:isLowLatency:.cold.1(const char *a1)
{
  v2 = MEMORY[0x277D21308];
  v3 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v4 = MEMORY[0x277D21260];
  v5 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_FAULT))
  {
    v8 = 136315650;
    v9 = "#milo-provider, ";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = a1;
    _os_log_impl(&dword_25543D000, v5, OS_LOG_TYPE_FAULT, "%s[%@], [ErrorId - MiLo provider error - Unknown token] addObserver, unknown token: %@", &v8, 0x20u);
  }

  v6 = dispatch_get_specific(*v2);
  v7 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v8 = 136316162;
    v9 = "#milo-provider, ";
    v10 = 2112;
    v11 = v6;
    v12 = 2080;
    v13 = "/Library/Caches/com.apple.xbs/Sources/IntelligentRouting/IntelligentRoutingDaemon/DataProviders/MiLo/IRMiLoProvider.m";
    v14 = 1024;
    v15 = 125;
    v16 = 2080;
    v17 = "[IRMiLoProvider addObserver:withToken:isLowLatency:]";
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_INFO, "%s[%@], %s:%d: assertion failure in %s", &v8, 0x30u);
  }

  abort();
}

@end