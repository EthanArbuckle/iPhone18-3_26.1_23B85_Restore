@interface CWFJITTDImpactEstimator
+ (id)initJITTDImpactEstimator;
- (BOOL)canSubmitToCA:(id)a;
- (BOOL)checkCellularDataSanity:(id)sanity;
- (CWFJITTDImpactEstimator)init;
- (id)computeDataUsageInCurrentSession:(id)session;
- (id)twoSigFig:(unint64_t)fig;
- (void)__stopCellularDataUsageAccountingPostTD;
- (void)cancelBoundaryTimer;
- (void)cancelPeriodicTimer;
- (void)gatherCellularDataUsageSoFar:(id)far;
- (void)invalidate;
- (void)issueFullBandScan;
- (void)notifyAJDelayedOnlyDueToJITTD;
- (void)notifyScanResult:(id)result withError:(id)error;
- (void)postCellularDataUsageAccountingPreAJ:(id)j;
- (void)postCellularDataUsageAccoutingPostTD:(id)d;
- (void)resetStores;
- (void)setupPeriodicTimerForScan;
- (void)startCellularDataUsageAccountingDelayedAJ:(int64_t)j withMaxRSSI:(int64_t)i forNetwork:(id)network;
- (void)startCellularDataUsageAccountingPostTD:(id)d withMinRSSI:(int64_t)i;
- (void)stopAccounting;
- (void)stopCellularDataUsageAccountingDelayedAJ;
- (void)stopCellularDataUsageAccountingPostTD;
- (void)storeCellularDataUsage:(id)usage;
@end

@implementation CWFJITTDImpactEstimator

+ (id)initJITTDImpactEstimator
{
  v2 = objc_alloc_init(CWFJITTDImpactEstimator);

  return v2;
}

- (CWFJITTDImpactEstimator)init
{
  v42 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = CWFJITTDImpactEstimator;
  v2 = [(CWFJITTDImpactEstimator *)&v35 init];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = dispatch_queue_create("com.apple.wifi.CWFJITTDImpactEstimator", 0);
  [(CWFJITTDImpactEstimator *)v2 set_serviceQueue:v3];

  _serviceQueue = [(CWFJITTDImpactEstimator *)v2 _serviceQueue];
  LODWORD(v3) = _serviceQueue == 0;

  if (v3)
  {

    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446722;
      v37 = "[CWFJITTDImpactEstimator init]";
      v38 = 2082;
      v39 = "CWFJITTDImpactEstimator.m";
      v40 = 1024;
      v41 = 121;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_29;
  }

  objc_initWeak(&location, v2);
  v5 = dispatch_queue_create("com.apple.wifi.CWFJITTDImpactTimer", 0);
  [(CWFJITTDImpactEstimator *)v2 set_timerQueue:v5];

  _timerQueue = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  LODWORD(v5) = _timerQueue == 0;

  if (v5)
  {

    v21 = CWFGetOSLog();
    if (v21)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v36 = 136446722;
    v37 = "[CWFJITTDImpactEstimator init]";
    v38 = 2082;
    v39 = "CWFJITTDImpactEstimator.m";
    v40 = 1024;
    v41 = 129;
    goto LABEL_27;
  }

  _timerQueue2 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _timerQueue2);
  [(CWFJITTDImpactEstimator *)v2 set_boundaryTimer:v8];

  _boundaryTimer = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  LODWORD(_timerQueue2) = _boundaryTimer == 0;

  if (_timerQueue2)
  {

    v23 = CWFGetOSLog();
    if (v23)
    {
      v22 = CWFGetOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v36 = 136446722;
    v37 = "[CWFJITTDImpactEstimator init]";
    v38 = 2082;
    v39 = "CWFJITTDImpactEstimator.m";
    v40 = 1024;
    v41 = 135;
LABEL_27:
    _os_log_send_and_compose_impl();
LABEL_28:

    objc_destroyWeak(&location);
LABEL_29:
    v2 = 0;
    goto LABEL_8;
  }

  _boundaryTimer2 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C00A3C;
  handler[3] = &unk_1E86E6190;
  objc_copyWeak(&v33, &location);
  dispatch_source_set_event_handler(_boundaryTimer2, handler);

  _boundaryTimer3 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  dispatch_activate(_boundaryTimer3);

  _timerQueue3 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _timerQueue3);
  [(CWFJITTDImpactEstimator *)v2 set_periodicTimer:v13];

  _periodicTimer = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
  LODWORD(_timerQueue3) = _periodicTimer == 0;

  if (_timerQueue3)
  {

    v24 = CWFGetOSLog();
    if (v24)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v36 = 136446722;
      v37 = "[CWFJITTDImpactEstimator init]";
      v38 = 2082;
      v39 = "CWFJITTDImpactEstimator.m";
      v40 = 1024;
      v41 = 149;
      _os_log_send_and_compose_impl();
    }

    v2 = 0;
  }

  else
  {
    _periodicTimer2 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1E0C00A80;
    v30[3] = &unk_1E86E6190;
    objc_copyWeak(&v31, &location);
    dispatch_source_set_event_handler(_periodicTimer2, v30);

    _periodicTimer3 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
    dispatch_activate(_periodicTimer3);

    [(CWFJITTDImpactEstimator *)v2 set_lastSubmissionTimePreAJ:0];
    [(CWFJITTDImpactEstimator *)v2 set_lastSubmissionTimePostTD:0];
    [(CWFJITTDImpactEstimator *)v2 resetStores];
    objc_destroyWeak(&v31);
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)invalidate
{
  [(CWFJITTDImpactEstimator *)self setGatherCellularDataStats:0];
  [(CWFJITTDImpactEstimator *)self setScanForNetworkHandler:0];
  _boundaryTimer = [(CWFJITTDImpactEstimator *)self _boundaryTimer];

  if (_boundaryTimer)
  {
    _boundaryTimer2 = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
    dispatch_source_cancel(_boundaryTimer2);
  }

  _periodicTimer = [(CWFJITTDImpactEstimator *)self _periodicTimer];

  if (_periodicTimer)
  {
    _periodicTimer2 = [(CWFJITTDImpactEstimator *)self _periodicTimer];
    dispatch_source_cancel(_periodicTimer2);
  }
}

- (void)startCellularDataUsageAccountingDelayedAJ:(int64_t)j withMaxRSSI:(int64_t)i forNetwork:(id)network
{
  networkCopy = network;
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0C00C48;
  v11[3] = &unk_1E86E61B8;
  v11[4] = self;
  v12 = networkCopy;
  jCopy = j;
  iCopy = i;
  v10 = networkCopy;
  dispatch_sync(_serviceQueue, v11);
}

- (void)stopCellularDataUsageAccountingDelayedAJ
{
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C01490;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(_serviceQueue, block);
}

- (void)notifyAJDelayedOnlyDueToJITTD
{
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C018BC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(_serviceQueue, block);
}

- (void)startCellularDataUsageAccountingPostTD:(id)d withMinRSSI:(int64_t)i
{
  dCopy = d;
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C01DC8;
  block[3] = &unk_1E86E61E0;
  block[4] = self;
  v10 = dCopy;
  iCopy = i;
  v8 = dCopy;
  dispatch_sync(_serviceQueue, block);
}

- (void)__stopCellularDataUsageAccountingPostTD
{
  v7 = *MEMORY[0x1E69E9840];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    _previousCellularDataUsageInPostTD = [(CWFJITTDImpactEstimator *)self _previousCellularDataUsageInPostTD];
    [(CWFJITTDImpactEstimator *)self postCellularDataUsageAccoutingPostTD:_previousCellularDataUsageInPostTD];
  }

  else
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      _previousCellularDataUsageInPostTD = CWFGetOSLog();
    }

    else
    {
      _previousCellularDataUsageInPostTD = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(_previousCellularDataUsageInPostTD, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  [(CWFJITTDImpactEstimator *)self resetStores];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)stopCellularDataUsageAccountingPostTD
{
  _serviceQueue = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C026B0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(_serviceQueue, block);
}

- (void)gatherCellularDataUsageSoFar:(id)far
{
  v19 = *MEMORY[0x1E69E9840];
  farCopy = far;
  gatherCellularDataStats = [(CWFJITTDImpactEstimator *)self gatherCellularDataStats];

  if (!gatherCellularDataStats)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

LABEL_27:
    _os_log_send_and_compose_impl();
LABEL_28:

    goto LABEL_7;
  }

  if ([(CWFJITTDImpactEstimator *)self _activity]!= 1)
  {
    v12 = CWFGetOSLog();
    if (v12)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (!farCopy)
  {
    farCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
    gatherCellularDataStats2 = [(CWFJITTDImpactEstimator *)self gatherCellularDataStats];
    v7 = (gatherCellularDataStats2)[2](gatherCellularDataStats2, farCopy);

    if ((v7 & 1) == 0)
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  if (![(CWFJITTDImpactEstimator *)self checkCellularDataSanity:farCopy])
  {
    v14 = CWFGetOSLog();
    if (v14)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v8 = [(CWFJITTDImpactEstimator *)self computeDataUsageInCurrentSession:farCopy];
  [(CWFJITTDImpactEstimator *)self set_previousCellularDataUsageInPostTD:v8];

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkCellularDataSanity:(id)sanity
{
  sanityCopy = sanity;
  v4 = [sanityCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue = [v4 unsignedIntValue];

  if (!unsignedIntValue)
  {
    goto LABEL_6;
  }

  v6 = [sanityCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  unsignedIntValue2 = [v6 unsignedIntValue];

  if (!unsignedIntValue2)
  {
    goto LABEL_6;
  }

  v8 = [sanityCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  unsignedIntValue3 = [v8 unsignedIntValue];

  if (unsignedIntValue3)
  {
    v10 = [sanityCopy objectForKeyedSubscript:@"CellularDataInBytes"];
    v11 = [v10 unsignedIntValue] != 0;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (void)notifyScanResult:(id)result withError:(id)error
{
  v58 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity])
  {
    if (error)
    {
      goto LABEL_26;
    }

    _tdNetwork = [(CWFJITTDImpactEstimator *)self _tdNetwork];

    if (_tdNetwork)
    {
      if (resultCopy)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v8 = resultCopy;
        v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (!v9)
        {

          goto LABEL_29;
        }

        v10 = v9;
        v40 = resultCopy;
        v41 = 0;
        v11 = *v48;
        v12 = v8;
        selfCopy = self;
        v43 = v8;
        v45 = *v48;
        while (1)
        {
          v13 = 0;
          v46 = v10;
          do
          {
            if (*v48 != v11)
            {
              objc_enumerationMutation(v12);
            }

            v14 = *(*(&v47 + 1) + 8 * v13);
            _tdNetwork2 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
            sSID = [_tdNetwork2 SSID];
            if (!sSID)
            {
              goto LABEL_19;
            }

            v17 = sSID;
            sSID2 = [v14 SSID];
            if (!sSID2)
            {

LABEL_19:
              goto LABEL_23;
            }

            v19 = sSID2;
            _tdNetwork3 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
            sSID3 = [_tdNetwork3 SSID];
            sSID4 = [v14 SSID];
            if (![sSID3 isEqual:sSID4])
            {

LABEL_22:
              v11 = v45;
              v10 = v46;
              goto LABEL_23;
            }

            _tdNetwork4 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
            supportedSecurityTypes = [_tdNetwork4 supportedSecurityTypes];
            if (([v14 supportedSecurityTypes] & supportedSecurityTypes) == 0)
            {

              self = selfCopy;
              v12 = v43;
              goto LABEL_22;
            }

            rSSI = [v14 RSSI];
            _rssi = [(CWFJITTDImpactEstimator *)selfCopy _rssi];

            v11 = v45;
            self = selfCopy;
            v12 = v43;
            v10 = v46;
            if (rSSI > _rssi)
            {
              if ([(CWFJITTDImpactEstimator *)selfCopy _activity]== 1)
              {
                [(CWFJITTDImpactEstimator *)selfCopy gatherCellularDataUsageSoFar:0];
              }

              v41 = 1;
            }

LABEL_23:
            ++v13;
          }

          while (v10 != v13);
          v10 = [v12 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (!v10)
          {

            resultCopy = v40;
            if (v41)
            {
LABEL_26:
              selfCopy2 = self;
              goto LABEL_27;
            }

LABEL_29:
            selfCopy5 = self;
            v28 = CWFGetOSLog();
            if (v28)
            {
              v29 = CWFGetOSLog();
            }

            else
            {
              v29 = MEMORY[0x1E69E9C10];
              v30 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v52 = 136446722;
              v53 = "[CWFJITTDImpactEstimator notifyScanResult:withError:]";
              v54 = 2082;
              v55 = "CWFJITTDImpactEstimator.m";
              v56 = 1024;
              v57 = 485;
              goto LABEL_34;
            }

            goto LABEL_35;
          }
        }
      }

      selfCopy4 = self;
      v34 = CWFGetOSLog();
      if (v34)
      {
        v35 = CWFGetOSLog();
      }

      else
      {
        v35 = MEMORY[0x1E69E9C10];
        v37 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v52 = 136446722;
        v53 = "[CWFJITTDImpactEstimator notifyScanResult:withError:]";
        v54 = 2082;
        v55 = "CWFJITTDImpactEstimator.m";
        v56 = 1024;
        v57 = 469;
        LODWORD(v39) = 28;
        v38 = &v52;
        _os_log_send_and_compose_impl();
      }

      selfCopy2 = selfCopy4;
LABEL_27:
      [(CWFJITTDImpactEstimator *)selfCopy2 setupPeriodicTimerForScan:v38];
    }

    else
    {
      selfCopy5 = self;
      v32 = CWFGetOSLog();
      if (v32)
      {
        v29 = CWFGetOSLog();
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v52 = 136446722;
        v53 = "[CWFJITTDImpactEstimator notifyScanResult:withError:]";
        v54 = 2082;
        v55 = "CWFJITTDImpactEstimator.m";
        v56 = 1024;
        v57 = 464;
LABEL_34:
        _os_log_send_and_compose_impl();
      }

LABEL_35:

      [(CWFJITTDImpactEstimator *)selfCopy5 stopAccounting];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSubmitToCA:(id)a
{
  if (!a)
  {
    return 1;
  }

  v3 = MEMORY[0x1E695DF00];
  aCopy = a;
  date = [v3 date];
  [date timeIntervalSinceDate:aCopy];
  v7 = v6;

  v8 = v7 > 86400.0;
  return v8;
}

- (id)twoSigFig:(unint64_t)fig
{
  if (fig)
  {
    figCopy = fig;
    v5 = log10(fig);
    v6 = __exp10(floor(v5) + -1.0);
    fig = (figCopy / v6) * v6;
    v3 = vars8;
  }

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithUnsignedInteger:fig];
}

- (void)postCellularDataUsageAccoutingPostTD:(id)d
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1E0BC2CD4;
  v35 = sub_1E0BC61B4;
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (dCopy)
  {
    if (objc_opt_class())
    {
      v5 = [dCopy objectForKeyedSubscript:@"impactTimeIns"];
      [v32[5] setObject:v5 forKeyedSubscript:@"TotalTime_s"];

      v6 = [dCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
      v7 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v6 unsignedIntValue]);
      [v32[5] setObject:v7 forKeyedSubscript:@"TotalTxPackets"];

      v8 = [dCopy objectForKeyedSubscript:@"CellularDataInPackets"];
      v9 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v8 unsignedIntValue]);
      [v32[5] setObject:v9 forKeyedSubscript:@"TotalRxPackets"];

      v10 = [dCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
      v11 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v10 unsignedIntValue]);
      [v32[5] setObject:v11 forKeyedSubscript:@"TotalTx_Bytes"];

      v12 = [dCopy objectForKeyedSubscript:@"CellularDataInBytes"];
      v13 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v12 unsignedIntValue]);
      [v32[5] setObject:v13 forKeyedSubscript:@"TotalRx_Bytes"];

      v14 = [dCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
      unsignedIntValue = [v14 unsignedIntValue];
      v16 = [dCopy objectForKeyedSubscript:@"CellularDataInPackets"];
      v17 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v16 unsignedIntValue] + unsignedIntValue);
      [v32[5] setObject:v17 forKeyedSubscript:@"TotalPackets"];

      v18 = [dCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
      LODWORD(v17) = [v18 unsignedIntValue];
      v19 = [dCopy objectForKeyedSubscript:@"CellularDataInBytes"];
      v20 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v19 unsignedIntValue] + v17);
      [v32[5] setObject:v20 forKeyedSubscript:@"TotalData_Bytes"];

      AnalyticsSendEventLazy();
      v21 = CWFGetOSLog();
      if (v21)
      {
        v22 = CWFGetOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v32[5];
        v37 = 136446978;
        v38 = "[CWFJITTDImpactEstimator postCellularDataUsageAccoutingPostTD:]";
        v39 = 2082;
        v40 = "CWFJITTDImpactEstimator.m";
        v41 = 1024;
        v42 = 553;
        v43 = 2112;
        v44 = v24;
        _os_log_send_and_compose_impl();
      }

      date = [MEMORY[0x1E695DF00] date];
      [(CWFJITTDImpactEstimator *)self set_lastSubmissionTimePostTD:date];
      goto LABEL_9;
    }

    v28 = CWFGetOSLog();
    if (v28)
    {
      date = CWFGetOSLog();
    }

    else
    {
      date = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      v37 = 136446722;
      v38 = "[CWFJITTDImpactEstimator postCellularDataUsageAccoutingPostTD:]";
      v39 = 2082;
      v40 = "CWFJITTDImpactEstimator.m";
      v41 = 1024;
      v42 = 530;
      goto LABEL_20;
    }
  }

  else
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      date = CWFGetOSLog();
    }

    else
    {
      date = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      v37 = 136446722;
      v38 = "[CWFJITTDImpactEstimator postCellularDataUsageAccoutingPostTD:]";
      v39 = 2082;
      v40 = "CWFJITTDImpactEstimator.m";
      v41 = 1024;
      v42 = 526;
LABEL_20:
      _os_log_send_and_compose_impl();
    }
  }

LABEL_9:

  _Block_object_dispose(&v31, 8);
  v26 = *MEMORY[0x1E69E9840];
}

- (void)postCellularDataUsageAccountingPreAJ:(id)j
{
  v71 = *MEMORY[0x1E69E9840];
  jCopy = j;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1E0BC2CD4;
  v61 = sub_1E0BC61B4;
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!jCopy)
  {
    v53 = CWFGetOSLog();
    if (v53)
    {
      date = CWFGetOSLog();
    }

    else
    {
      date = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v63 = 136446722;
    v64 = "[CWFJITTDImpactEstimator postCellularDataUsageAccountingPreAJ:]";
    v65 = 2082;
    v66 = "CWFJITTDImpactEstimator.m";
    v67 = 1024;
    v68 = 565;
LABEL_22:
    _os_log_send_and_compose_impl();
    goto LABEL_11;
  }

  if (!objc_opt_class())
  {
    v54 = CWFGetOSLog();
    if (v54)
    {
      date = CWFGetOSLog();
    }

    else
    {
      date = MEMORY[0x1E69E9C10];
      v56 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v63 = 136446722;
    v64 = "[CWFJITTDImpactEstimator postCellularDataUsageAccountingPreAJ:]";
    v65 = 2082;
    v66 = "CWFJITTDImpactEstimator.m";
    v67 = 1024;
    v68 = 569;
    goto LABEL_22;
  }

  v5 = [jCopy objectForKeyedSubscript:@"impactTimeIns"];
  [v58[5] setObject:v5 forKeyedSubscript:@"TotalTime_s"];

  v6 = [jCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  v7 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v6 unsignedIntValue]);
  [v58[5] setObject:v7 forKeyedSubscript:@"TotalTxPackets"];

  v8 = [jCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  v9 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v8 unsignedIntValue]);
  [v58[5] setObject:v9 forKeyedSubscript:@"TotalRxPackets"];

  v10 = [jCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  v11 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v10 unsignedIntValue]);
  [v58[5] setObject:v11 forKeyedSubscript:@"TotalTx_Bytes"];

  v12 = [jCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  v13 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v12 unsignedIntValue]);
  [v58[5] setObject:v13 forKeyedSubscript:@"TotalRx_Bytes"];

  v14 = [jCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue = [v14 unsignedIntValue];
  v16 = [jCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  v17 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v16 unsignedIntValue] + unsignedIntValue);
  [v58[5] setObject:v17 forKeyedSubscript:@"TotalPackets"];

  v18 = [jCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  LODWORD(v17) = [v18 unsignedIntValue];
  v19 = [jCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  v20 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v19 unsignedIntValue] + v17);
  [v58[5] setObject:v20 forKeyedSubscript:@"TotalData_Bytes"];

  _cellularDataUsageInLegacyBoundary = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
  LOBYTE(v18) = _cellularDataUsageInLegacyBoundary == 0;

  if ((v18 & 1) == 0)
  {
    _cellularDataUsageInLegacyBoundary2 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v23 = [_cellularDataUsageInLegacyBoundary2 objectForKeyedSubscript:@"impactTimeIns"];
    [v58[5] setObject:v23 forKeyedSubscript:@"TotalTimeLegacy_s"];

    _cellularDataUsageInLegacyBoundary3 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v25 = [_cellularDataUsageInLegacyBoundary3 objectForKeyedSubscript:@"CellularDataOutPackets"];
    v26 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v25 unsignedIntValue]);
    [v58[5] setObject:v26 forKeyedSubscript:@"TotalTxLegacyPackets"];

    _cellularDataUsageInLegacyBoundary4 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v28 = [_cellularDataUsageInLegacyBoundary4 objectForKeyedSubscript:@"CellularDataInPackets"];
    v29 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v28 unsignedIntValue]);
    [v58[5] setObject:v29 forKeyedSubscript:@"TotalRxLegacyPackets"];

    _cellularDataUsageInLegacyBoundary5 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v31 = [_cellularDataUsageInLegacyBoundary5 objectForKeyedSubscript:@"CellularDataOutBytes"];
    v32 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v31 unsignedIntValue]);
    [v58[5] setObject:v32 forKeyedSubscript:@"TotalTxLegacy_Bytes"];

    _cellularDataUsageInLegacyBoundary6 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v34 = [_cellularDataUsageInLegacyBoundary6 objectForKeyedSubscript:@"CellularDataInBytes"];
    v35 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v34 unsignedIntValue]);
    [v58[5] setObject:v35 forKeyedSubscript:@"TotalRxLegacy_Bytes"];

    _cellularDataUsageInLegacyBoundary7 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v37 = [_cellularDataUsageInLegacyBoundary7 objectForKeyedSubscript:@"CellularDataOutPackets"];
    unsignedIntValue2 = [v37 unsignedIntValue];
    _cellularDataUsageInLegacyBoundary8 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v40 = [_cellularDataUsageInLegacyBoundary8 objectForKeyedSubscript:@"CellularDataInPackets"];
    v41 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v40 unsignedIntValue] + unsignedIntValue2);
    [v58[5] setObject:v41 forKeyedSubscript:@"TotalLegacyPackets"];

    _cellularDataUsageInLegacyBoundary9 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v43 = [_cellularDataUsageInLegacyBoundary9 objectForKeyedSubscript:@"CellularDataOutBytes"];
    LODWORD(v41) = [v43 unsignedIntValue];
    _cellularDataUsageInLegacyBoundary10 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v45 = [_cellularDataUsageInLegacyBoundary10 objectForKeyedSubscript:@"CellularDataInBytes"];
    v46 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v45 unsignedIntValue] + v41);
    [v58[5] setObject:v46 forKeyedSubscript:@"TotalDataLegacy_Bytes"];
  }

  AnalyticsSendEventLazy();
  v47 = CWFGetOSLog();
  if (v47)
  {
    v48 = CWFGetOSLog();
  }

  else
  {
    v48 = MEMORY[0x1E69E9C10];
    v49 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v50 = v58[5];
    v63 = 136446978;
    v64 = "[CWFJITTDImpactEstimator postCellularDataUsageAccountingPreAJ:]";
    v65 = 2082;
    v66 = "CWFJITTDImpactEstimator.m";
    v67 = 1024;
    v68 = 610;
    v69 = 2112;
    v70 = v50;
    _os_log_send_and_compose_impl();
  }

  date = [MEMORY[0x1E695DF00] date];
  [(CWFJITTDImpactEstimator *)self set_lastSubmissionTimePreAJ:date];
LABEL_11:

  _Block_object_dispose(&v57, 8);
  v52 = *MEMORY[0x1E69E9840];
}

- (void)setupPeriodicTimerForScan
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v5 = v4;
    _startTime = [(CWFJITTDImpactEstimator *)self _startTime];
    [_startTime timeIntervalSinceReferenceDate];
    v8 = v5 - v7 + 30.0;
    _boundaryTime = [(CWFJITTDImpactEstimator *)self _boundaryTime];

    if (v8 >= _boundaryTime)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        _periodicTimer = CWFGetOSLog();
      }

      else
      {
        _periodicTimer = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(_periodicTimer, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      _boundaryTimer = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
      dispatch_activate(_boundaryTimer);

      _periodicTimer = [(CWFJITTDImpactEstimator *)self _periodicTimer];
      v12 = dispatch_walltime(0, 30000000000);
      dispatch_source_set_timer(_periodicTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)storeCellularDataUsage:(id)usage
{
  usageCopy = usage;
  v5 = [usageCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInBytes:v5];

  v6 = [usageCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutBytes:v6];

  v7 = [usageCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInPackets:v7];

  v8 = [usageCopy objectForKeyedSubscript:@"CellularDataOutPackets"];

  [(CWFJITTDImpactEstimator *)self set_totalCellularOutPackets:v8];
  date = [MEMORY[0x1E695DF00] date];
  [(CWFJITTDImpactEstimator *)self set_startTime:date];
}

- (id)computeDataUsageInCurrentSession:(id)session
{
  v70 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  date = [MEMORY[0x1E695DF00] date];
  _totalCellularInBytes = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
  unsignedIntValue = [_totalCellularInBytes unsignedIntValue];
  v9 = [sessionCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  unsignedIntValue2 = [v9 unsignedIntValue];

  if (unsignedIntValue > unsignedIntValue2)
  {
    v58 = CWFGetOSLog();
    if (v58)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataInBytes"];
    goto LABEL_33;
  }

  _totalCellularOutBytes = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
  unsignedIntValue3 = [_totalCellularOutBytes unsignedIntValue];
  v13 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  unsignedIntValue4 = [v13 unsignedIntValue];

  if (unsignedIntValue3 > unsignedIntValue4)
  {
    v60 = CWFGetOSLog();
    if (v60)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v66 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
    goto LABEL_33;
  }

  _totalCellularInPackets = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
  unsignedIntValue5 = [_totalCellularInPackets unsignedIntValue];
  v17 = [sessionCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  unsignedIntValue6 = [v17 unsignedIntValue];

  if (unsignedIntValue5 > unsignedIntValue6)
  {
    v61 = CWFGetOSLog();
    if (v61)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v67 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataInPackets"];
    goto LABEL_33;
  }

  _totalCellularOutPackets = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
  unsignedIntValue7 = [_totalCellularOutPackets unsignedIntValue];
  v21 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue8 = [v21 unsignedIntValue];

  if (unsignedIntValue7 > unsignedIntValue8)
  {
    v62 = CWFGetOSLog();
    if (v62)
    {
      v59 = CWFGetOSLog();
    }

    else
    {
      v59 = MEMORY[0x1E69E9C10];
      v68 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    _totalCellularInBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
    v65 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
LABEL_33:
    _os_log_send_and_compose_impl();

LABEL_34:
    v50 = v5;
    v5 = 0;
    goto LABEL_10;
  }

  v23 = objc_alloc(MEMORY[0x1E696AD98]);
  v24 = [sessionCopy objectForKeyedSubscript:@"CellularDataInBytes"];
  unsignedIntValue9 = [v24 unsignedIntValue];
  _totalCellularInBytes3 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
  v27 = [v23 initWithUnsignedInt:{unsignedIntValue9 - objc_msgSend(_totalCellularInBytes3, "unsignedIntValue")}];
  [v5 setObject:v27 forKeyedSubscript:@"CellularDataInBytes"];

  v28 = objc_alloc(MEMORY[0x1E696AD98]);
  v29 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutBytes"];
  unsignedIntValue10 = [v29 unsignedIntValue];
  _totalCellularOutBytes2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
  v32 = [v28 initWithUnsignedInt:{unsignedIntValue10 - objc_msgSend(_totalCellularOutBytes2, "unsignedIntValue")}];
  [v5 setObject:v32 forKeyedSubscript:@"CellularDataOutBytes"];

  v33 = objc_alloc(MEMORY[0x1E696AD98]);
  v34 = [sessionCopy objectForKeyedSubscript:@"CellularDataInPackets"];
  unsignedIntValue11 = [v34 unsignedIntValue];
  _totalCellularInPackets2 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
  v37 = [v33 initWithUnsignedInt:{unsignedIntValue11 - objc_msgSend(_totalCellularInPackets2, "unsignedIntValue")}];
  [v5 setObject:v37 forKeyedSubscript:@"CellularDataInPackets"];

  v38 = objc_alloc(MEMORY[0x1E696AD98]);
  v39 = [sessionCopy objectForKeyedSubscript:@"CellularDataOutPackets"];
  unsignedIntValue12 = [v39 unsignedIntValue];
  _totalCellularOutPackets2 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
  v42 = [v38 initWithUnsignedInt:{unsignedIntValue12 - objc_msgSend(_totalCellularOutPackets2, "unsignedIntValue")}];
  [v5 setObject:v42 forKeyedSubscript:@"CellularDataOutPackets"];

  v43 = MEMORY[0x1E696AD98];
  [date timeIntervalSinceReferenceDate];
  v45 = v44;
  _startTime = [(CWFJITTDImpactEstimator *)self _startTime];
  [_startTime timeIntervalSinceReferenceDate];
  v48 = [v43 numberWithUnsignedInteger:(v45 - v47)];
  [v5 setObject:v48 forKeyedSubscript:@"impactTimeIns"];

  v49 = CWFGetOSLog();
  if (v49)
  {
    v50 = CWFGetOSLog();
  }

  else
  {
    v50 = MEMORY[0x1E69E9C10];
    v51 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v52 = [v5 objectForKeyedSubscript:@"CellularDataInBytes"];
    v53 = [v5 objectForKeyedSubscript:@"CellularDataOutBytes"];
    v54 = [v5 objectForKeyedSubscript:@"CellularDataInPackets"];
    v55 = [v5 objectForKeyedSubscript:@"CellularDataOutPackets"];
    v69 = [v5 objectForKeyedSubscript:@"impactTimeIns"];
    _os_log_send_and_compose_impl();
  }

LABEL_10:

  v56 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)stopAccounting
{
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 2)
  {
    [(CWFJITTDImpactEstimator *)self stopCellularDataUsageAccountingDelayedAJ];
  }

  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    [(CWFJITTDImpactEstimator *)self gatherCellularDataUsageSoFar:0];

    [(CWFJITTDImpactEstimator *)self stopCellularDataUsageAccountingPostTD];
  }
}

- (void)issueFullBandScan
{
  v23 = *MEMORY[0x1E69E9840];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  v3 = objc_alloc_init(CWFScanParameters);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _tdNetwork = [(CWFJITTDImpactEstimator *)self _tdNetwork];

  if (!_tdNetwork)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

LABEL_22:
    _os_log_send_and_compose_impl();
LABEL_23:

    [(CWFJITTDImpactEstimator *)self stopCellularDataUsageAccountingPostTD];
    goto LABEL_7;
  }

  _tdNetwork2 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
  networkName = [_tdNetwork2 networkName];

  if (!networkName)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _tdNetwork3 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
      _os_log_send_and_compose_impl();
    }

    goto LABEL_23;
  }

  scanForNetworkHandler = [(CWFJITTDImpactEstimator *)self scanForNetworkHandler];

  if (!scanForNetworkHandler)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  _tdNetwork4 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
  networkName2 = [_tdNetwork4 networkName];

  if (networkName2)
  {
    _tdNetwork5 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
    networkName3 = [_tdNetwork5 networkName];
    [v4 addObject:networkName3];
  }

  [(CWFScanParameters *)v3 setScanType:1];
  [(CWFScanParameters *)v3 setBSSType:3];
  [(CWFScanParameters *)v3 setPHYMode:1];
  [(CWFScanParameters *)v3 setNumberOfScans:1];
  [(CWFScanParameters *)v3 setIncludeHiddenNetworks:1];
  [(CWFScanParameters *)v3 setChannels:0];
  [(CWFScanParameters *)v3 setScanFlags:2592];
  [(CWFScanParameters *)v3 setSSIDList:v4];
  scanForNetworkHandler2 = [(CWFJITTDImpactEstimator *)self scanForNetworkHandler];
  (scanForNetworkHandler2)[2](scanForNetworkHandler2, v3);

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)cancelBoundaryTimer
{
  _boundaryTimer = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
  dispatch_source_set_timer(_boundaryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)cancelPeriodicTimer
{
  _periodicTimer = [(CWFJITTDImpactEstimator *)self _periodicTimer];
  dispatch_source_set_timer(_periodicTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)resetStores
{
  [(CWFJITTDImpactEstimator *)self set_rssi:0];
  [(CWFJITTDImpactEstimator *)self set_startTime:0];
  [(CWFJITTDImpactEstimator *)self set_tdNetwork:0];
  [(CWFJITTDImpactEstimator *)self set_boundaryTime:0];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInBytes:0];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutBytes:0];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInPackets:0];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutPackets:0];
  [(CWFJITTDImpactEstimator *)self set_activity:0];
  [(CWFJITTDImpactEstimator *)self set_legacyAccountingComplete:0];
  [(CWFJITTDImpactEstimator *)self set_cellularDataUsageInLegacyBoundary:0];

  [(CWFJITTDImpactEstimator *)self set_previousCellularDataUsageInPostTD:0];
}

@end