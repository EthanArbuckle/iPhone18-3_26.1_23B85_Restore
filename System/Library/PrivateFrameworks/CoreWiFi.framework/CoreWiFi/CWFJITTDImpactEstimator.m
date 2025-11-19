@interface CWFJITTDImpactEstimator
+ (id)initJITTDImpactEstimator;
- (BOOL)canSubmitToCA:(id)a3;
- (BOOL)checkCellularDataSanity:(id)a3;
- (CWFJITTDImpactEstimator)init;
- (id)computeDataUsageInCurrentSession:(id)a3;
- (id)twoSigFig:(unint64_t)a3;
- (void)__stopCellularDataUsageAccountingPostTD;
- (void)cancelBoundaryTimer;
- (void)cancelPeriodicTimer;
- (void)gatherCellularDataUsageSoFar:(id)a3;
- (void)invalidate;
- (void)issueFullBandScan;
- (void)notifyAJDelayedOnlyDueToJITTD;
- (void)notifyScanResult:(id)a3 withError:(id)a4;
- (void)postCellularDataUsageAccountingPreAJ:(id)a3;
- (void)postCellularDataUsageAccoutingPostTD:(id)a3;
- (void)resetStores;
- (void)setupPeriodicTimerForScan;
- (void)startCellularDataUsageAccountingDelayedAJ:(int64_t)a3 withMaxRSSI:(int64_t)a4 forNetwork:(id)a5;
- (void)startCellularDataUsageAccountingPostTD:(id)a3 withMinRSSI:(int64_t)a4;
- (void)stopAccounting;
- (void)stopCellularDataUsageAccountingDelayedAJ;
- (void)stopCellularDataUsageAccountingPostTD;
- (void)storeCellularDataUsage:(id)a3;
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

  v4 = [(CWFJITTDImpactEstimator *)v2 _serviceQueue];
  LODWORD(v3) = v4 == 0;

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

  v6 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  LODWORD(v5) = v6 == 0;

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

  v7 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7);
  [(CWFJITTDImpactEstimator *)v2 set_boundaryTimer:v8];

  v9 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  LODWORD(v7) = v9 == 0;

  if (v7)
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

  v10 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C00A3C;
  handler[3] = &unk_1E86E6190;
  objc_copyWeak(&v33, &location);
  dispatch_source_set_event_handler(v10, handler);

  v11 = [(CWFJITTDImpactEstimator *)v2 _boundaryTimer];
  dispatch_activate(v11);

  v12 = [(CWFJITTDImpactEstimator *)v2 _timerQueue];
  v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v12);
  [(CWFJITTDImpactEstimator *)v2 set_periodicTimer:v13];

  v14 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
  LODWORD(v12) = v14 == 0;

  if (v12)
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
    v15 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1E0C00A80;
    v30[3] = &unk_1E86E6190;
    objc_copyWeak(&v31, &location);
    dispatch_source_set_event_handler(v15, v30);

    v16 = [(CWFJITTDImpactEstimator *)v2 _periodicTimer];
    dispatch_activate(v16);

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
  v3 = [(CWFJITTDImpactEstimator *)self _boundaryTimer];

  if (v3)
  {
    v4 = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
    dispatch_source_cancel(v4);
  }

  v5 = [(CWFJITTDImpactEstimator *)self _periodicTimer];

  if (v5)
  {
    v6 = [(CWFJITTDImpactEstimator *)self _periodicTimer];
    dispatch_source_cancel(v6);
  }
}

- (void)startCellularDataUsageAccountingDelayedAJ:(int64_t)a3 withMaxRSSI:(int64_t)a4 forNetwork:(id)a5
{
  v8 = a5;
  v9 = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0C00C48;
  v11[3] = &unk_1E86E61B8;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v10 = v8;
  dispatch_sync(v9, v11);
}

- (void)stopCellularDataUsageAccountingDelayedAJ
{
  v3 = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C01490;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)notifyAJDelayedOnlyDueToJITTD
{
  v3 = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C018BC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)startCellularDataUsageAccountingPostTD:(id)a3 withMinRSSI:(int64_t)a4
{
  v6 = a3;
  v7 = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C01DC8;
  block[3] = &unk_1E86E61E0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)__stopCellularDataUsageAccountingPostTD
{
  v7 = *MEMORY[0x1E69E9840];
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  [(CWFJITTDImpactEstimator *)self cancelBoundaryTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    v3 = [(CWFJITTDImpactEstimator *)self _previousCellularDataUsageInPostTD];
    [(CWFJITTDImpactEstimator *)self postCellularDataUsageAccoutingPostTD:v3];
  }

  else
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v3 = CWFGetOSLog();
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  [(CWFJITTDImpactEstimator *)self resetStores];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)stopCellularDataUsageAccountingPostTD
{
  v3 = [(CWFJITTDImpactEstimator *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C026B0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)gatherCellularDataUsageSoFar:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CWFJITTDImpactEstimator *)self gatherCellularDataStats];

  if (!v5)
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

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [(CWFJITTDImpactEstimator *)self gatherCellularDataStats];
    v7 = (v6)[2](v6, v4);

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

  if (![(CWFJITTDImpactEstimator *)self checkCellularDataSanity:v4])
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

  v8 = [(CWFJITTDImpactEstimator *)self computeDataUsageInCurrentSession:v4];
  [(CWFJITTDImpactEstimator *)self set_previousCellularDataUsageInPostTD:v8];

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkCellularDataSanity:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"CellularDataOutPackets"];
  v5 = [v4 unsignedIntValue];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v3 objectForKeyedSubscript:@"CellularDataInPackets"];
  v7 = [v6 unsignedIntValue];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v3 objectForKeyedSubscript:@"CellularDataOutBytes"];
  v9 = [v8 unsignedIntValue];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"CellularDataInBytes"];
    v11 = [v10 unsignedIntValue] != 0;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (void)notifyScanResult:(id)a3 withError:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(CWFJITTDImpactEstimator *)self cancelPeriodicTimer];
  if ([(CWFJITTDImpactEstimator *)self _activity])
  {
    if (a4)
    {
      goto LABEL_26;
    }

    v7 = [(CWFJITTDImpactEstimator *)self _tdNetwork];

    if (v7)
    {
      if (v6)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (!v9)
        {

          goto LABEL_29;
        }

        v10 = v9;
        v40 = v6;
        v41 = 0;
        v11 = *v48;
        v12 = v8;
        v42 = self;
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
            v15 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
            v16 = [v15 SSID];
            if (!v16)
            {
              goto LABEL_19;
            }

            v17 = v16;
            v18 = [v14 SSID];
            if (!v18)
            {

LABEL_19:
              goto LABEL_23;
            }

            v19 = v18;
            v20 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
            v21 = [v20 SSID];
            v22 = [v14 SSID];
            if (![v21 isEqual:v22])
            {

LABEL_22:
              v11 = v45;
              v10 = v46;
              goto LABEL_23;
            }

            v23 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
            v24 = [v23 supportedSecurityTypes];
            if (([v14 supportedSecurityTypes] & v24) == 0)
            {

              self = v42;
              v12 = v43;
              goto LABEL_22;
            }

            v44 = [v14 RSSI];
            v25 = [(CWFJITTDImpactEstimator *)v42 _rssi];

            v11 = v45;
            self = v42;
            v12 = v43;
            v10 = v46;
            if (v44 > v25)
            {
              if ([(CWFJITTDImpactEstimator *)v42 _activity]== 1)
              {
                [(CWFJITTDImpactEstimator *)v42 gatherCellularDataUsageSoFar:0];
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

            v6 = v40;
            if (v41)
            {
LABEL_26:
              v26 = self;
              goto LABEL_27;
            }

LABEL_29:
            v27 = self;
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

      v33 = self;
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

      v26 = v33;
LABEL_27:
      [(CWFJITTDImpactEstimator *)v26 setupPeriodicTimerForScan:v38];
    }

    else
    {
      v27 = self;
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

      [(CWFJITTDImpactEstimator *)v27 stopAccounting];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSubmitToCA:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  v5 = [v3 date];
  [v5 timeIntervalSinceDate:v4];
  v7 = v6;

  v8 = v7 > 86400.0;
  return v8;
}

- (id)twoSigFig:(unint64_t)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = log10(a3);
    v6 = __exp10(floor(v5) + -1.0);
    a3 = (v4 / v6) * v6;
    v3 = vars8;
  }

  v7 = MEMORY[0x1E696AD98];

  return [v7 numberWithUnsignedInteger:a3];
}

- (void)postCellularDataUsageAccoutingPostTD:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1E0BC2CD4;
  v35 = sub_1E0BC61B4;
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v4)
  {
    if (objc_opt_class())
    {
      v5 = [v4 objectForKeyedSubscript:@"impactTimeIns"];
      [v32[5] setObject:v5 forKeyedSubscript:@"TotalTime_s"];

      v6 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
      v7 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v6 unsignedIntValue]);
      [v32[5] setObject:v7 forKeyedSubscript:@"TotalTxPackets"];

      v8 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
      v9 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v8 unsignedIntValue]);
      [v32[5] setObject:v9 forKeyedSubscript:@"TotalRxPackets"];

      v10 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
      v11 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v10 unsignedIntValue]);
      [v32[5] setObject:v11 forKeyedSubscript:@"TotalTx_Bytes"];

      v12 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
      v13 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v12 unsignedIntValue]);
      [v32[5] setObject:v13 forKeyedSubscript:@"TotalRx_Bytes"];

      v14 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
      v15 = [v14 unsignedIntValue];
      v16 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
      v17 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v16 unsignedIntValue] + v15);
      [v32[5] setObject:v17 forKeyedSubscript:@"TotalPackets"];

      v18 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
      LODWORD(v17) = [v18 unsignedIntValue];
      v19 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
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

      v25 = [MEMORY[0x1E695DF00] date];
      [(CWFJITTDImpactEstimator *)self set_lastSubmissionTimePostTD:v25];
      goto LABEL_9;
    }

    v28 = CWFGetOSLog();
    if (v28)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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

- (void)postCellularDataUsageAccountingPreAJ:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = sub_1E0BC2CD4;
  v61 = sub_1E0BC61B4;
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v4)
  {
    v53 = CWFGetOSLog();
    if (v53)
    {
      v51 = CWFGetOSLog();
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
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
      v51 = CWFGetOSLog();
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
      v56 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
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

  v5 = [v4 objectForKeyedSubscript:@"impactTimeIns"];
  [v58[5] setObject:v5 forKeyedSubscript:@"TotalTime_s"];

  v6 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
  v7 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v6 unsignedIntValue]);
  [v58[5] setObject:v7 forKeyedSubscript:@"TotalTxPackets"];

  v8 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
  v9 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v8 unsignedIntValue]);
  [v58[5] setObject:v9 forKeyedSubscript:@"TotalRxPackets"];

  v10 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
  v11 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v10 unsignedIntValue]);
  [v58[5] setObject:v11 forKeyedSubscript:@"TotalTx_Bytes"];

  v12 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
  v13 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v12 unsignedIntValue]);
  [v58[5] setObject:v13 forKeyedSubscript:@"TotalRx_Bytes"];

  v14 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
  v15 = [v14 unsignedIntValue];
  v16 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
  v17 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v16 unsignedIntValue] + v15);
  [v58[5] setObject:v17 forKeyedSubscript:@"TotalPackets"];

  v18 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
  LODWORD(v17) = [v18 unsignedIntValue];
  v19 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
  v20 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v19 unsignedIntValue] + v17);
  [v58[5] setObject:v20 forKeyedSubscript:@"TotalData_Bytes"];

  v21 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
  LOBYTE(v18) = v21 == 0;

  if ((v18 & 1) == 0)
  {
    v22 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v23 = [v22 objectForKeyedSubscript:@"impactTimeIns"];
    [v58[5] setObject:v23 forKeyedSubscript:@"TotalTimeLegacy_s"];

    v24 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v25 = [v24 objectForKeyedSubscript:@"CellularDataOutPackets"];
    v26 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v25 unsignedIntValue]);
    [v58[5] setObject:v26 forKeyedSubscript:@"TotalTxLegacyPackets"];

    v27 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v28 = [v27 objectForKeyedSubscript:@"CellularDataInPackets"];
    v29 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v28 unsignedIntValue]);
    [v58[5] setObject:v29 forKeyedSubscript:@"TotalRxLegacyPackets"];

    v30 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v31 = [v30 objectForKeyedSubscript:@"CellularDataOutBytes"];
    v32 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v31 unsignedIntValue]);
    [v58[5] setObject:v32 forKeyedSubscript:@"TotalTxLegacy_Bytes"];

    v33 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v34 = [v33 objectForKeyedSubscript:@"CellularDataInBytes"];
    v35 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v34 unsignedIntValue]);
    [v58[5] setObject:v35 forKeyedSubscript:@"TotalRxLegacy_Bytes"];

    v36 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v37 = [v36 objectForKeyedSubscript:@"CellularDataOutPackets"];
    v38 = [v37 unsignedIntValue];
    v39 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v40 = [v39 objectForKeyedSubscript:@"CellularDataInPackets"];
    v41 = -[CWFJITTDImpactEstimator twoSigFig:](self, "twoSigFig:", [v40 unsignedIntValue] + v38);
    [v58[5] setObject:v41 forKeyedSubscript:@"TotalLegacyPackets"];

    v42 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v43 = [v42 objectForKeyedSubscript:@"CellularDataOutBytes"];
    LODWORD(v41) = [v43 unsignedIntValue];
    v44 = [(CWFJITTDImpactEstimator *)self _cellularDataUsageInLegacyBoundary];
    v45 = [v44 objectForKeyedSubscript:@"CellularDataInBytes"];
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

  v51 = [MEMORY[0x1E695DF00] date];
  [(CWFJITTDImpactEstimator *)self set_lastSubmissionTimePreAJ:v51];
LABEL_11:

  _Block_object_dispose(&v57, 8);
  v52 = *MEMORY[0x1E69E9840];
}

- (void)setupPeriodicTimerForScan
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CWFJITTDImpactEstimator *)self _activity]== 1)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = [(CWFJITTDImpactEstimator *)self _startTime];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v5 - v7 + 30.0;
    v9 = [(CWFJITTDImpactEstimator *)self _boundaryTime];

    if (v8 >= v9)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v10 = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
      dispatch_activate(v10);

      v11 = [(CWFJITTDImpactEstimator *)self _periodicTimer];
      v12 = dispatch_walltime(0, 30000000000);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)storeCellularDataUsage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInBytes:v5];

  v6 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularOutBytes:v6];

  v7 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
  [(CWFJITTDImpactEstimator *)self set_totalCellularInPackets:v7];

  v8 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];

  [(CWFJITTDImpactEstimator *)self set_totalCellularOutPackets:v8];
  v9 = [MEMORY[0x1E695DF00] date];
  [(CWFJITTDImpactEstimator *)self set_startTime:v9];
}

- (id)computeDataUsageInCurrentSession:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
  v8 = [v7 unsignedIntValue];
  v9 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
  v10 = [v9 unsignedIntValue];

  if (v8 > v10)
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

    v64 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
    v65 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
    goto LABEL_33;
  }

  v11 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
  v12 = [v11 unsignedIntValue];
  v13 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
  v14 = [v13 unsignedIntValue];

  if (v12 > v14)
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

    v64 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
    v65 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
    goto LABEL_33;
  }

  v15 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
  v16 = [v15 unsignedIntValue];
  v17 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
  v18 = [v17 unsignedIntValue];

  if (v16 > v18)
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

    v64 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
    v65 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
    goto LABEL_33;
  }

  v19 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
  v20 = [v19 unsignedIntValue];
  v21 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
  v22 = [v21 unsignedIntValue];

  if (v20 > v22)
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

    v64 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
    v65 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
LABEL_33:
    _os_log_send_and_compose_impl();

LABEL_34:
    v50 = v5;
    v5 = 0;
    goto LABEL_10;
  }

  v23 = objc_alloc(MEMORY[0x1E696AD98]);
  v24 = [v4 objectForKeyedSubscript:@"CellularDataInBytes"];
  v25 = [v24 unsignedIntValue];
  v26 = [(CWFJITTDImpactEstimator *)self _totalCellularInBytes];
  v27 = [v23 initWithUnsignedInt:{v25 - objc_msgSend(v26, "unsignedIntValue")}];
  [v5 setObject:v27 forKeyedSubscript:@"CellularDataInBytes"];

  v28 = objc_alloc(MEMORY[0x1E696AD98]);
  v29 = [v4 objectForKeyedSubscript:@"CellularDataOutBytes"];
  v30 = [v29 unsignedIntValue];
  v31 = [(CWFJITTDImpactEstimator *)self _totalCellularOutBytes];
  v32 = [v28 initWithUnsignedInt:{v30 - objc_msgSend(v31, "unsignedIntValue")}];
  [v5 setObject:v32 forKeyedSubscript:@"CellularDataOutBytes"];

  v33 = objc_alloc(MEMORY[0x1E696AD98]);
  v34 = [v4 objectForKeyedSubscript:@"CellularDataInPackets"];
  v35 = [v34 unsignedIntValue];
  v36 = [(CWFJITTDImpactEstimator *)self _totalCellularInPackets];
  v37 = [v33 initWithUnsignedInt:{v35 - objc_msgSend(v36, "unsignedIntValue")}];
  [v5 setObject:v37 forKeyedSubscript:@"CellularDataInPackets"];

  v38 = objc_alloc(MEMORY[0x1E696AD98]);
  v39 = [v4 objectForKeyedSubscript:@"CellularDataOutPackets"];
  v40 = [v39 unsignedIntValue];
  v41 = [(CWFJITTDImpactEstimator *)self _totalCellularOutPackets];
  v42 = [v38 initWithUnsignedInt:{v40 - objc_msgSend(v41, "unsignedIntValue")}];
  [v5 setObject:v42 forKeyedSubscript:@"CellularDataOutPackets"];

  v43 = MEMORY[0x1E696AD98];
  [v6 timeIntervalSinceReferenceDate];
  v45 = v44;
  v46 = [(CWFJITTDImpactEstimator *)self _startTime];
  [v46 timeIntervalSinceReferenceDate];
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
  v5 = [(CWFJITTDImpactEstimator *)self _tdNetwork];

  if (!v5)
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

  v6 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
  v7 = [v6 networkName];

  if (!v7)
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
      v22 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
      _os_log_send_and_compose_impl();
    }

    goto LABEL_23;
  }

  v8 = [(CWFJITTDImpactEstimator *)self scanForNetworkHandler];

  if (!v8)
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

  v9 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
  v10 = [v9 networkName];

  if (v10)
  {
    v11 = [(CWFJITTDImpactEstimator *)self _tdNetwork];
    v12 = [v11 networkName];
    [v4 addObject:v12];
  }

  [(CWFScanParameters *)v3 setScanType:1];
  [(CWFScanParameters *)v3 setBSSType:3];
  [(CWFScanParameters *)v3 setPHYMode:1];
  [(CWFScanParameters *)v3 setNumberOfScans:1];
  [(CWFScanParameters *)v3 setIncludeHiddenNetworks:1];
  [(CWFScanParameters *)v3 setChannels:0];
  [(CWFScanParameters *)v3 setScanFlags:2592];
  [(CWFScanParameters *)v3 setSSIDList:v4];
  v13 = [(CWFJITTDImpactEstimator *)self scanForNetworkHandler];
  (v13)[2](v13, v3);

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)cancelBoundaryTimer
{
  v2 = [(CWFJITTDImpactEstimator *)self _boundaryTimer];
  dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)cancelPeriodicTimer
{
  v2 = [(CWFJITTDImpactEstimator *)self _periodicTimer];
  dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
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