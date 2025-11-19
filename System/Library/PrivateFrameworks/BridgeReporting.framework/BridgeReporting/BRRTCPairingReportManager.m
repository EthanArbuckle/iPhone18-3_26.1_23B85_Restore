@interface BRRTCPairingReportManager
- (BOOL)_eventClearedForRecord:(unint64_t)a3;
- (BRRTCPairingReportManager)initWithPairingBeginsType:(unint64_t)a3;
- (NSString)currentPairingMetricID;
- (id)_trimPrecision:(id)a3;
- (id)combineMetricPlistsForArchive:(id)a3;
- (id)deltaForControllerAction:(id)a3;
- (id)truncateSetupControllerClassName:(id)a3;
- (void)_addEvent:(unint64_t)a3 withValue:(id)a4 withError:(id)a5;
- (void)_addEventToPendingQueue:(unint64_t)a3 withValue:(id)a4;
- (void)_cleanupAfterWrite;
- (void)_writeToPairingPlist:(id)a3 withValue:(id)a4;
- (void)addMetaKeys;
- (void)addPendingEventToMetric;
- (void)archivePairingMetric:(id)a3 withCompletion:(id)a4;
- (void)checkInWithClosingPairingTimeEvent:(unint64_t)a3;
- (void)checkInWithController:(id)a3 action:(unint64_t)a4;
- (void)checkInWithOpenPairingTimeEvent:(unint64_t)a3;
- (void)checkInWithRUIController:(id)a3;
- (void)cleanUpMetricDirectoryWithCompletion:(id)a3;
- (void)completeMetricForAppTermination;
- (void)completePairingMetricWithSuccess:(BOOL)a3;
- (void)completeRTCPairingMetricForMetricID:(id)a3 withSuccess:(id)a4;
- (void)createPairingReportPlistWithPairingType:(unint64_t)a3;
- (void)flagForAutomation;
- (void)initializeEndToEndMetric;
- (void)recordSetupController:(id)a3 action:(unint64_t)a4;
- (void)setupPairingMetric:(unint64_t)a3;
- (void)submitAnyPendingMetrics;
- (void)writeDeltasForSetupControllerActions:(id)a3 action:(unint64_t)a4;
- (void)writePushOrHoldToPairingPlist:(id)a3 action:(unint64_t)a4;
@end

@implementation BRRTCPairingReportManager

- (BRRTCPairingReportManager)initWithPairingBeginsType:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = BRRTCPairingReportManager;
  v4 = [(BRRTCPairingReportManager *)&v11 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.BRPairingReport", 0);
    [(BRRTCPairingReportManager *)v4 setQueue:v5];

    v6 = [(BRRTCPairingReportManager *)v4 queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__BRRTCPairingReportManager_initWithPairingBeginsType___block_invoke;
    v8[3] = &unk_278D26CF8;
    v9 = v4;
    v10 = a3;
    dispatch_async(v6, v8);
  }

  return v4;
}

- (void)_addEvent:(unint64_t)a3 withValue:(id)a4 withError:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  [(BRRTCPairingReportManager *)self setMetricBusy:1];
  v8 = br_metriccollection_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = BRPairingTimeEventToString(a3);
    *buf = 136315650;
    v18 = "[BRRTCPairingReportManager _addEvent:withValue:withError:]";
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_241ECA000, v8, OS_LOG_TYPE_DEFAULT, "%s adding event %@ with value %@", buf, 0x20u);
  }

  if ([(BRRTCPairingReportManager *)self _eventClearedForRecord:a3])
  {
    v10 = BRPairingTimeEventToString(a3);
    v11 = [(BRRTCPairingReportManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__BRRTCPairingReportManager__addEvent_withValue_withError___block_invoke;
    block[3] = &unk_278D26D20;
    block[4] = self;
    v15 = v10;
    v16 = v7;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    [(BRRTCPairingReportManager *)self _addEventToPendingQueue:a3 withValue:v7];
    v12 = br_metriccollection_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[BRRTCPairingReportManager _addEvent:withValue:withError:]";
      _os_log_impl(&dword_241ECA000, v12, OS_LOG_TYPE_DEFAULT, "%s pairing metric reporter not set up yet", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithOpenPairingTimeEvent:(unint64_t)a3
{
  if ([(BRRTCPairingReportManager *)self pairingMetricSetup])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:CACurrentMediaTime()];
    v6 = BRPairingTimeEventToString(a3);
    v7 = [(BRRTCPairingReportManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__BRRTCPairingReportManager_checkInWithOpenPairingTimeEvent___block_invoke;
    block[3] = &unk_278D26D20;
    block[4] = self;
    v11 = v5;
    v12 = v6;
    v8 = v6;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __61__BRRTCPairingReportManager_checkInWithOpenPairingTimeEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) openPairingTimeEvents];
  [v2 setValue:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)checkInWithClosingPairingTimeEvent:(unint64_t)a3
{
  v5 = [(BRRTCPairingReportManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__BRRTCPairingReportManager_checkInWithClosingPairingTimeEvent___block_invoke;
  v6[3] = &unk_278D26CF8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __64__BRRTCPairingReportManager_checkInWithClosingPairingTimeEvent___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) pairingMetricSetup])
  {
    v2 = [MEMORY[0x277CCABB0] numberWithDouble:CACurrentMediaTime()];
    v3 = BRPairingTimeEventToString(*(a1 + 40));
    v4 = [*(a1 + 32) openPairingTimeEvents];
    v5 = [v4 objectForKey:v3];

    if (!v5)
    {
      v6 = *(a1 + 40) - 26;
      if (v6 <= 0xC && ((0x14A5u >> v6) & 1) != 0)
      {
        v7 = qword_241ED30C0[v6];
        v8 = [*(a1 + 32) openPairingTimeEvents];
        v9 = BRPairingTimeEventToString(v7);
        v5 = [v8 objectForKey:v9];
      }

      else
      {
        v5 = 0;
      }
    }

    v10 = br_metriccollection_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[BRRTCPairingReportManager checkInWithClosingPairingTimeEvent:]_block_invoke";
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v2;
      _os_log_impl(&dword_241ECA000, v10, OS_LOG_TYPE_DEFAULT, "%s Open start time: %@ closing end time: %@", &v18, 0x20u);
    }

    if (v5)
    {
      v11 = MEMORY[0x277CCABB0];
      [v2 doubleValue];
      v13 = v12;
      [v5 doubleValue];
      v15 = [v11 numberWithDouble:v13 - v14];
      [*(a1 + 32) addPairingTimeEventToPairingReportPlist:*(a1 + 40) withValue:v15 withError:0];
      v16 = [*(a1 + 32) openPairingTimeEvents];
      [v16 removeObjectForKey:v3];
    }

    else
    {
      v15 = br_metriccollection_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315394;
        v19 = "[BRRTCPairingReportManager checkInWithClosingPairingTimeEvent:]_block_invoke";
        v20 = 2112;
        v21 = v3;
        _os_log_impl(&dword_241ECA000, v15, OS_LOG_TYPE_DEFAULT, "%s No matching opening timed event for event %@", &v18, 0x16u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)checkInWithController:(id)a3 action:(unint64_t)a4
{
  v6 = [(BRRTCPairingReportManager *)self truncateSetupControllerClassName:a3];
  [(BRRTCPairingReportManager *)self recordSetupController:v6 action:a4];
}

- (void)checkInWithRUIController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 pageElement];
  v6 = [v5 title];
  v7 = [v6 isEqualToString:@"Terms and Conditions"];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 objectModel];
    v9 = [v8 sourceURL];

    v10 = [v9 host];
    v11 = [v9 path];
    v12 = [v10 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
    v13 = [v11 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v12, v13];
    v15 = br_metriccollection_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_241ECA000, v15, OS_LOG_TYPE_DEFAULT, "Checking in RUIController with url: %{public}@", buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"RUIPage_%@", v14];
    [(BRRTCPairingReportManager *)self recordSetupController:v16 action:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)recordSetupController:(id)a3 action:(unint64_t)a4
{
  v9 = a3;
  v6 = [(BRRTCPairingReportManager *)self setupControllerTracker];

  if (v6)
  {
    [(BRRTCPairingReportManager *)self writeDeltasForSetupControllerActions:v9 action:a4];
  }

  else
  {
    v7 = objc_alloc_init(BRSetupControllerTracker);
    [(BRRTCPairingReportManager *)self setSetupControllerTracker:v7];
  }

  v8 = [(BRRTCPairingReportManager *)self setupControllerTracker];
  [v8 addSetupController:v9 action:a4];

  [(BRRTCPairingReportManager *)self writePushOrHoldToPairingPlist:v9 action:a4];
}

- (void)writeDeltasForSetupControllerActions:(id)a3 action:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(BRRTCPairingReportManager *)self setupControllerTracker];
  v8 = [v7 holdControllerDetails];

  v9 = [(BRRTCPairingReportManager *)self setupControllerTracker];
  v10 = [v9 lastPushedSetupController];

  v11 = @"Hold";
  if (!a4)
  {
    v11 = @"Push";
  }

  v12 = v11;
  if (v8)
  {
    v13 = [v8 timeStamp];
    v14 = [(BRRTCPairingReportManager *)self deltaForControllerAction:v13];

    v15 = MEMORY[0x277CCACA8];
    v16 = [v8 controllerName];
    v17 = [v15 stringWithFormat:@"%@HoldBefore%@%@Delta", v16, v6, v12];

    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v17 = 0;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (!v14)
  {
    v18 = [v10 timeStamp];
    v14 = [(BRRTCPairingReportManager *)self deltaForControllerAction:v18];

    v19 = MEMORY[0x277CCACA8];
    v20 = [v10 controllerName];
    v21 = [v19 stringWithFormat:@"%@To%@%@Delta", v20, v6, v12];

    if (![(__CFString *)v21 isEqualToString:@"COSSetupFinishedToCOSWelcomeToAppleWatchPushDelta"])
    {
      v17 = v21;
      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    v17 = @"InitialSyncTime";
  }

LABEL_10:
  if (v14)
  {
LABEL_11:
    v22 = [(BRRTCPairingReportManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__BRRTCPairingReportManager_writeDeltasForSetupControllerActions_action___block_invoke;
    block[3] = &unk_278D26D20;
    block[4] = self;
    v26 = v17;
    v27 = v14;
    dispatch_async(v22, block);

    goto LABEL_16;
  }

LABEL_13:
  v23 = br_metriccollection_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = v6;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_241ECA000, v23, OS_LOG_TYPE_DEFAULT, "no previous controller details to create delta, will not record delta for controller: %@ action: %lu", buf, 0x16u);
  }

LABEL_16:
  v24 = *MEMORY[0x277D85DE8];
}

- (id)deltaForControllerAction:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  v5 = [v3 numberWithDouble:CACurrentMediaTime()];
  v6 = MEMORY[0x277CCABB0];
  [v5 doubleValue];
  v8 = v7;
  [v4 doubleValue];
  v10 = v9;

  v11 = [v6 numberWithDouble:v8 - v10];

  return v11;
}

- (void)writePushOrHoldToPairingPlist:(id)a3 action:(unint64_t)a4
{
  v6 = a3;
  v7 = [(BRRTCPairingReportManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BRRTCPairingReportManager_writePushOrHoldToPairingPlist_action___block_invoke;
  block[3] = &unk_278D26D48;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

void __66__BRRTCPairingReportManager_writePushOrHoldToPairingPlist_action___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) setupControllerTracker];
  v4 = [v3 lastPushedSetupController];
  v5 = [v4 controllerOrder];
  v6 = [v5 intValue];
  if (*(a1 + 48) == 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v2 numberWithInt:v7];

  v9 = [v8 isEqualToNumber:&unk_285411780];
  v10 = &unk_285411798;
  if (!v9)
  {
    v10 = v8;
  }

  v11 = v10;

  if (*(a1 + 48))
  {
    v12 = @"Hold";
  }

  else
  {
    v12 = @"Pushed";
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ControllerNumber%@", v12, v11];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(a1 + 40)];
  [*(a1 + 32) _writeToPairingPlist:v14 withValue:v13];
}

- (void)_writeToPairingPlist:(id)a3 withValue:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(BRRTCPairingReportManager *)self queue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    if ((BRIsInternalInstall() & 1) == 0)
    {
      v9 = br_metriccollection_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241ECA000, v9, OS_LOG_TYPE_DEFAULT, "external device, trimming precision", buf, 2u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(BRRTCPairingReportManager *)self _trimPrecision:v7];

        v7 = v10;
      }
    }

    v11 = [(BRRTCPairingReportManager *)self currentPairingMetricBridgePlistPath];
    v12 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v11];
    [v12 setObject:v7 forKey:v6];
    v13 = [v11 relativePath];
    [v12 writeToFile:v13 atomically:1];

    v14 = br_metriccollection_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_241ECA000, v14, OS_LOG_TYPE_DEFAULT, "Posting notification that a metric has changed! %@", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = @"BRChangedMetricKey";
    v20 = v6;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v15 postNotificationName:@"BRPairingMetricChangedNotification" object:0 userInfo:v16];

    [(BRRTCPairingReportManager *)self _cleanupAfterWrite];
  }

  else
  {
    v17 = br_metriccollection_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_241ECA000, v17, OS_LOG_TYPE_DEFAULT, "No value for pairing metric event %@, skipping write", buf, 0xCu);
    }

    [(BRRTCPairingReportManager *)self _cleanupAfterWrite];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupAfterWrite
{
  [(BRRTCPairingReportManager *)self setMetricBusy:0];

  [(BRRTCPairingReportManager *)self submitAnyPendingMetrics];
}

- (id)truncateSetupControllerClassName:(id)a3
{
  v3 = a3;
  v4 = @"ViewController";
  if (([v3 containsString:@"ViewController"] & 1) != 0 || (v4 = @"Controller", v5 = v3, objc_msgSend(v3, "containsString:", @"Controller")))
  {
    v5 = [v3 substringToIndex:{objc_msgSend(v3, "length") - -[__CFString length](v4, "length")}];
  }

  return v5;
}

- (BOOL)_eventClearedForRecord:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(BRRTCPairingReportManager *)self pairingMetricSetup]&& ([(BRRTCPairingReportManager *)self currentPairingMetricBridgePlistPath], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = BRPairingTimeEventToString(a3);

    if (v7)
    {
      v8 = [(BRRTCPairingReportManager *)self currentPairingMetricBridgePlistPath];
      v9 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v8];
      v10 = BRPairingTimeEventToString(a3);
      if ([v10 isEqualToString:@"WatchActivated"] && (objc_msgSend(v9, "objectForKey:", @"StartedActivation"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
      {
        v7 = br_metriccollection_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315138;
          v15 = "[BRRTCPairingReportManager _eventClearedForRecord:]";
          _os_log_impl(&dword_241ECA000, v7, OS_LOG_TYPE_DEFAULT, "%s watch activation finished before beginning. This is unexpected, and we will not add the finished key", &v14, 0xCu);
        }

        LOBYTE(v7) = 0;
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)completePairingMetricWithSuccess:(BOOL)a3
{
  v3 = a3;
  if ([(BRRTCPairingReportManager *)self pairingMetricSetup])
  {
    if (v3)
    {
      [(BRRTCPairingReportManager *)self addPairingTimeEventToPairingReportPlist:16 withValue:MEMORY[0x277CBEC38] withError:0];
      [(BRRTCPairingReportManager *)self checkInWithClosingPairingTimeEvent:17];
    }

    v5 = [(BRRTCPairingReportManager *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__BRRTCPairingReportManager_completePairingMetricWithSuccess___block_invoke;
    block[3] = &unk_278D26D90;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __62__BRRTCPairingReportManager_completePairingMetricWithSuccess___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = br_metriccollection_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "sent metric to NR for RTC submission with success: %{BOOL}d error: %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)completeMetricForAppTermination
{
  v3 = [(BRRTCPairingReportManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__BRRTCPairingReportManager_completeMetricForAppTermination__block_invoke;
  block[3] = &unk_278D26D90;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __60__BRRTCPairingReportManager_completeMetricForAppTermination__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addPairingTimeEventToPairingReportPlist:67 withValue:MEMORY[0x277CBEC38] withError:0];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) openPairingTimeEvents];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __60__BRRTCPairingReportManager_completeMetricForAppTermination__block_invoke_2;
  v11 = &unk_278D26DB8;
  v4 = v2;
  v5 = *(a1 + 32);
  v12 = v4;
  v13 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:&v8];

  if ([v4 count])
  {
    v6 = br_metriccollection_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_241ECA000, v6, OS_LOG_TYPE_DEFAULT, "Bridge terminated: writing orphaned timing metrics %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __60__BRRTCPairingReportManager_completeMetricForAppTermination__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:CACurrentMediaTime()];
    v8 = MEMORY[0x277CCABB0];
    [v7 doubleValue];
    v10 = v9;
    [v6 doubleValue];
    v12 = [v8 numberWithDouble:v10 - v11];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"OrphanedTimedMetric%@", v5];
    [*(a1 + 32) addObject:v13];
    [*(a1 + 40) _writeToPairingPlist:v13 withValue:v12];
  }

  else
  {
    v14 = br_metriccollection_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_241ECA000, v14, OS_LOG_TYPE_DEFAULT, "No matching opening timed event for event %@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitAnyPendingMetrics
{
  objc_initWeak(&location, self);
  v3 = [(BRRTCPairingReportManager *)self pendingMetricSubmission];

  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __52__BRRTCPairingReportManager_submitAnyPendingMetrics__block_invoke;
    v4[3] = &unk_278D26DE0;
    objc_copyWeak(&v5, &location);
    [(BRRTCPairingReportManager *)self completeRTCPairingMetricForMetricID:0 withSuccess:v4];
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __52__BRRTCPairingReportManager_submitAnyPendingMetrics__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained pendingMetricSubmission];
    (v7)[2](v7, a2, v8);

    [v6 setPendingMetricSubmission:0];
  }
}

- (void)setupPairingMetric:(unint64_t)a3
{
  v5 = [(BRRTCPairingReportManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = br_metriccollection_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_241ECA000, v6, OS_LOG_TYPE_DEFAULT, "Setting up pairing metric", buf, 2u);
  }

  [(BRRTCPairingReportManager *)self setPairingMetricSetup:0];
  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__BRRTCPairingReportManager_setupPairingMetric___block_invoke;
  v7[3] = &unk_278D26E30;
  v7[4] = self;
  objc_copyWeak(v8, buf);
  v8[1] = a3;
  [(BRRTCPairingReportManager *)self cleanUpMetricDirectoryWithCompletion:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
}

void __48__BRRTCPairingReportManager_setupPairingMetric___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__BRRTCPairingReportManager_setupPairingMetric___block_invoke_2;
  v9[3] = &unk_278D26E08;
  objc_copyWeak(v11, (a1 + 40));
  v12 = a2;
  v7 = *(a1 + 48);
  v10 = v5;
  v11[1] = v7;
  v8 = v5;
  dispatch_async(v6, v9);

  objc_destroyWeak(v11);
}

void __48__BRRTCPairingReportManager_setupPairingMetric___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56))
    {
      [WeakRetained createPairingReportPlistWithPairingType:*(a1 + 48)];
      [v3 setPairingMetricSetup:1];
      [v3 addPendingEventToMetric];
      v4 = objc_opt_new();
      [v3 setOpenPairingTimeEvents:v4];

      [v3 initializeEndToEndMetric];
      [v3 flagForAutomation];
      [v3 addMetaKeys];
    }

    else
    {
      v5 = br_metriccollection_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&dword_241ECA000, v5, OS_LOG_TYPE_DEFAULT, "Failed to cleanup metric folder with error %@", &v8, 0xCu);
      }

      [v3 setPairingMetricSetup:0];
      [v3 clearPendingEventQueue];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initializeEndToEndMetric
{
  [(BRRTCPairingReportManager *)self addPairingTimeEventToPairingReportPlist:16 withValue:MEMORY[0x277CBEC28] withError:0];

  [(BRRTCPairingReportManager *)self checkInWithOpenPairingTimeEvent:17];
}

- (void)flagForAutomation
{
  if (BRAutomation())
  {
    v3 = MEMORY[0x277CBEC38];

    [(BRRTCPairingReportManager *)self addPairingTimeEventToPairingReportPlist:50 withValue:v3 withError:0];
  }
}

- (void)addMetaKeys
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__BRRTCPairingReportManager_addMetaKeys__block_invoke;
  v12[3] = &unk_278D26E58;
  v12[4] = v15;
  v12[5] = v14;
  v12[6] = v13;
  v4 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v12];

  v5 = [(BRRTCPairingReportManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__BRRTCPairingReportManager_addMetaKeys__block_invoke_2;
  v7[3] = &unk_278D26E80;
  v7[4] = self;
  v8 = v4;
  v9 = v14;
  v10 = v15;
  v11 = v13;
  v6 = v4;
  dispatch_async(v5, v7);

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v15, 8);
}

uint64_t __40__BRRTCPairingReportManager_addMetaKeys__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    ++*(*(a1[4] + 8) + 24);
  }

  v6 = [v3 valueForProperty:*MEMORY[0x277D2BB48]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v3 valueForProperty:*MEMORY[0x277D2BB28]];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      ++*(*(a1[5] + 8) + 24);
    }

    v10 = [v3 valueForProperty:*MEMORY[0x277D2BB78]];
    v11 = [v10 unsignedIntegerValue];
    if (v10 && v11)
    {
      ++*(*(a1[6] + 8) + 24);
    }
  }

  return v7;
}

void __40__BRRTCPairingReportManager_addMetaKeys__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "count")}];
  [v2 addPairingTimeEventToPairingReportPlist:51 withValue:v3 withError:0];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 48) + 8) + 24)];
  [v4 addPairingTimeEventToPairingReportPlist:53 withValue:v5 withError:0];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 56) + 8) + 24)];
  [v6 addPairingTimeEventToPairingReportPlist:52 withValue:v7 withError:0];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 64) + 8) + 24)];
  [v8 addPairingTimeEventToPairingReportPlist:74 withValue:v9 withError:0];
}

- (void)createPairingReportPlistWithPairingType:(unint64_t)a3
{
  v45[2] = *MEMORY[0x277D85DE8];
  v4 = [(BRRTCPairingReportManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  if (BRIsInternalInstall())
  {
    v6 = @"yyyy.MM.dd_HH-mm-ss";
  }

  else
  {
    v6 = @"yyyy.MM.dd_HH-mm";
  }

  [v5 setDateFormat:v6];
  v7 = [MEMORY[0x277CBEAA8] date];
  v37 = v5;
  v8 = [v5 stringFromDate:v7];

  v36 = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"pairing_metric", v8];
  v10 = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric";
  v11 = @"BridgePairingMetricDetails.plist";
  v12 = MEMORY[0x277CBEBC0];
  v13 = MEMORY[0x277CCACA8];
  v45[0] = v10;
  v45[1] = v9;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v15 = [v13 pathWithComponents:v14];
  v16 = [v12 fileURLWithPath:v15];

  v17 = MEMORY[0x277CBEBC0];
  v18 = v10;
  v19 = MEMORY[0x277CCACA8];
  v44[0] = v10;
  v44[1] = v9;
  v44[2] = v11;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v21 = [v19 pathWithComponents:v20];
  v22 = [v17 fileURLWithPath:v21];

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = [v16 relativePath];
  v39 = 0;
  [v23 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v39];
  v25 = v39;

  if (v25)
  {
    v26 = v36;
    v27 = br_metriccollection_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241ECA000, v27, OS_LOG_TYPE_DEFAULT, "Failure to create pairing metric directory", buf, 2u);
    }

    [(BRRTCPairingReportManager *)self setPairingMetricSetup:0];
  }

  else
  {
    [(BRRTCPairingReportManager *)self setCurrentPairingMetricID:v9];
    v34 = v10;
    v42[0] = @"PairingBeginsType";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v42[1] = @"PairingBeginsTime";
    v43[0] = v28;
    v26 = v36;
    v43[1] = v36;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

    v30 = [v22 relativePath];
    [v29 writeToFile:v30 atomically:1];

    [(BRRTCPairingReportManager *)self setPairingMetricSetup:1];
    [(BRRTCPairingReportManager *)self setCurrentPairingMetricBridgePlistPath:v22];
    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    v40 = @"BRChangedMetricKey";
    v41 = @"PairingBeginsType";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v31 postNotificationName:@"BRPairingMetricChangedNotification" object:0 userInfo:v32];

    v18 = v34;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpMetricDirectoryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric";
  v7 = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric/Archived";
  if (([v5 fileExistsAtPath:v6] & 1) == 0)
  {
    [v5 createDirectoryAtPath:v6 withIntermediateDirectories:0 attributes:0 error:0];
  }

  if (([v5 fileExistsAtPath:v7] & 1) == 0)
  {
    [v5 createDirectoryAtPath:v7 withIntermediateDirectories:0 attributes:0 error:0];
  }

  v8 = [v5 contentsOfDirectoryAtPath:v6 error:0];
  if ([v8 count] == 2)
  {
    objc_initWeak(location, self);
    v9 = [v8 objectAtIndex:0];
    v10 = [v8 objectAtIndex:{objc_msgSend(v9, "isEqualToString:", @"Archived"}];
    v21 = self;

    v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    v11 = MEMORY[0x277CBEBC0];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v6, v10, @"NRPairingMetricDetails.plist"];
    v23 = [v11 fileURLWithPath:v12];

    v13 = [v23 absoluteString];
    v14 = [v5 fileExistsAtPath:v13];

    if (v14)
    {
      [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v23];
      v16 = v15 = v22;
      v17 = [v16 objectForKey:@"MetricSubmitted"];

      if (v17)
      {
        WeakRetained = objc_loadWeakRetained(location);
        [WeakRetained archivePairingMetric:v10 withCompletion:v4];
      }

      else
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke_3;
        v24[3] = &unk_278D26ED0;
        v26 = v4;
        v24[4] = v21;
        objc_copyWeak(&v27, location);
        v25 = v10;
        [(BRRTCPairingReportManager *)v21 completeRTCPairingMetricForMetricID:v22 withSuccess:v24];

        objc_destroyWeak(&v27);
        WeakRetained = v26;
      }
    }

    else
    {
      v19 = MEMORY[0x277CBEBC0];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v6, v10, @"BridgePairingMetricDetails.plist"];
      v16 = [v19 fileURLWithPath:v20];

      WeakRetained = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v16];
      [WeakRetained setObject:MEMORY[0x277CBEC38] forKey:@"NoNRDetails"];
      [WeakRetained writeToURL:v16 atomically:1];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke;
      v28[3] = &unk_278D26ED0;
      v30 = v4;
      v28[4] = v21;
      objc_copyWeak(&v31, location);
      v29 = v10;
      v15 = v22;
      [(BRRTCPairingReportManager *)v21 completeRTCPairingMetricForMetricID:v22 withSuccess:v28];

      objc_destroyWeak(&v31);
    }

    objc_destroyWeak(location);
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke(id *a1, char a2)
{
  if (a2)
  {
    v3 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke_2;
    block[3] = &unk_278D26EA8;
    objc_copyWeak(&v9, a1 + 7);
    v7 = a1[5];
    v8 = a1[6];
    dispatch_async(v3, block);

    objc_destroyWeak(&v9);
  }

  else
  {
    v4 = a1[6];
    v5 = *(a1[6] + 2);

    v5();
  }
}

void __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained archivePairingMetric:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke_3(id *a1, char a2)
{
  if (a2)
  {
    v3 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke_4;
    block[3] = &unk_278D26EA8;
    objc_copyWeak(&v9, a1 + 7);
    v7 = a1[5];
    v8 = a1[6];
    dispatch_async(v3, block);

    objc_destroyWeak(&v9);
  }

  else
  {
    v4 = a1[6];
    v5 = *(a1[6] + 2);

    v5();
  }
}

void __66__BRRTCPairingReportManager_cleanUpMetricDirectoryWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained archivePairingMetric:*(a1 + 32) withCompletion:*(a1 + 40)];
}

- (void)archivePairingMetric:(id)a3 withCompletion:(id)a4
{
  v48[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277CBEBC0];
  v7 = MEMORY[0x277CCACA8];
  v48[0] = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric";
  v48[1] = v5;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = [v8 arrayWithObjects:v48 count:2];
  v11 = [v7 pathWithComponents:v10];
  v12 = [v6 fileURLWithPath:v11];

  v13 = MEMORY[0x277CBEBC0];
  v14 = MEMORY[0x277CCACA8];
  v47[0] = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric/Archived";
  v47[1] = v5;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v16 = [v14 pathWithComponents:v15];
  v17 = [v13 fileURLWithPath:v16];

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  v41 = 0;
  v38 = v12;
  LOBYTE(v12) = [v18 moveItemAtURL:v12 toURL:v17 error:&v41];
  v19 = v41;
  if (v12)
  {
    v36 = v5;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.plist", v5];
    [(BRRTCPairingReportManager *)self combineMetricPlistsForArchive:v17];
    v22 = v21 = v18;
    v23 = MEMORY[0x277CBEBC0];
    v24 = MEMORY[0x277CCACA8];
    v46[0] = @"/var/mobile/Library/Caches/com.apple.Bridge/PairingMetric/Archived";
    v46[1] = v20;
    v25 = v20;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v27 = [v24 pathWithComponents:v26];
    v28 = [v23 fileURLWithPath:v27];

    v29 = v22;
    v18 = v21;
    v40 = v19;
    [v29 writeToURL:v28 error:&v40];
    v30 = v40;

    if (v30)
    {
      v31 = br_metriccollection_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v30;
        _os_log_impl(&dword_241ECA000, v31, OS_LOG_TYPE_DEFAULT, "Combined metric with error: %@", buf, 0xCu);
      }
    }

    v39 = 0;
    [v21 removeItemAtURL:v17 error:&v39];
    v19 = v39;
    v5 = v36;
    if (v19)
    {
      v32 = br_metriccollection_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v19;
        _os_log_impl(&dword_241ECA000, v32, OS_LOG_TYPE_DEFAULT, "Removed archived metric with error: %@", buf, 0xCu);
      }
    }

    v33 = br_metriccollection_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v43 = v28;
      v44 = 2112;
      v45 = v19;
      _os_log_impl(&dword_241ECA000, v33, OS_LOG_TYPE_DEFAULT, "Metric %@ archived with error %@", buf, 0x16u);
    }

    v9[2](v9, 1, 0);
    v9 = v25;
  }

  else
  {
    v34 = br_metriccollection_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v19;
      _os_log_impl(&dword_241ECA000, v34, OS_LOG_TYPE_DEFAULT, "Failed to archive metric with error: %@", buf, 0xCu);
    }

    v9[2](v9, 0, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)combineMetricPlistsForArchive:(id)a3
{
  v3 = a3;
  v4 = [v3 URLByAppendingPathComponent:@"BridgePairingMetricDetails.plist"];
  v5 = [v3 URLByAppendingPathComponent:@"NRPairingMetricDetails.plist"];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5];
  v8 = objc_opt_new();
  [v8 addEntriesFromDictionary:v6];
  [v8 addEntriesFromDictionary:v7];

  return v8;
}

- (void)completeRTCPairingMetricForMetricID:(id)a3 withSuccess:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = br_metriccollection_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241ECA000, v8, OS_LOG_TYPE_DEFAULT, "Sending request to complete pairing metric to NR", buf, 2u);
  }

  if ([(BRRTCPairingReportManager *)self metricBusy])
  {
    v9 = br_metriccollection_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[BRRTCPairingReportManager completeRTCPairingMetricForMetricID:withSuccess:]";
      _os_log_impl(&dword_241ECA000, v9, OS_LOG_TYPE_DEFAULT, "%s Will not submit metric yet, metric is busy", buf, 0xCu);
    }

    [(BRRTCPairingReportManager *)self setPendingMetricSubmission:v7];
  }

  else
  {
    v10 = [MEMORY[0x277D2BCF8] sharedInstance];
    v11 = [v6 UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__BRRTCPairingReportManager_completeRTCPairingMetricForMetricID_withSuccess___block_invoke;
    v13[3] = &unk_278D26EF8;
    v14 = v7;
    [v10 completeRTCPairingMetricForMetricID:v11 withSuccess:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_addEventToPendingQueue:(unint64_t)a3 withValue:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v20[0] = @"event";
  v20[1] = @"value";
  v21[0] = v7;
  v21[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v9 = br_metriccollection_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = BRPairingTimeEventToString(a3);
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_241ECA000, v9, OS_LOG_TYPE_DEFAULT, "Caching an event: %@ with value: %@", buf, 0x16u);
  }

  v11 = [(BRRTCPairingReportManager *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__BRRTCPairingReportManager__addEventToPendingQueue_withValue___block_invoke;
  v14[3] = &unk_278D26F20;
  v14[4] = self;
  v15 = v8;
  v12 = v8;
  dispatch_async(v11, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __63__BRRTCPairingReportManager__addEventToPendingQueue_withValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingEvents];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingEvents];
    [v3 addObject:*(a1 + 40)];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{*(a1 + 40), 0}];
    [*(a1 + 32) setPendingEvents:v3];
  }

  [*(a1 + 32) setMetricBusy:0];
  v4 = *(a1 + 32);

  return [v4 submitAnyPendingMetrics];
}

- (void)addPendingEventToMetric
{
  v3 = [(BRRTCPairingReportManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BRRTCPairingReportManager_addPendingEventToMetric__block_invoke;
  block[3] = &unk_278D26D90;
  block[4] = self;
  dispatch_async(v3, block);
}

void __52__BRRTCPairingReportManager_addPendingEventToMetric__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) pendingEvents];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:@"event"];
        v9 = [v8 intValue];

        v10 = [v7 objectForKeyedSubscript:@"value"];
        [*(a1 + 32) addPairingTimeEventToPairingReportPlist:v9 withValue:v10 withError:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_trimPrecision:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [a3 integerValue];

  return [v3 numberWithInteger:v4];
}

- (NSString)currentPairingMetricID
{
  WeakRetained = objc_loadWeakRetained(&self->_currentPairingMetricID);

  return WeakRetained;
}

@end