@interface DKApplicationMonitor
@end

@implementation DKApplicationMonitor

void __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = [v9 transitionReason];
    v13 = [*(a1 + 32) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_cold_1(v12, v13);
    }

    v14 = [*(a1 + 32) log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_cold_2(v9, v14);
    }

    v15 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_228;
    block[3] = &unk_27856F950;
    block[4] = WeakRetained;
    v16 = v7;
    v17 = *(a1 + 32);
    v20 = v16;
    v21 = v17;
    v22 = v8;
    v23 = v9;
    v24 = v12;
    v25 = v10;
    v18 = v12;
    dispatch_sync(v15, block);
  }
}

void __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mainLayoutMonitor];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v10 = 0;
LABEL_7:
    [*(a1 + 40) donateElementsFromDisplayLayout:*(a1 + 48) withContext:*(a1 + 56)];
    goto LABEL_8;
  }

  v6 = [v3 continuityLayoutMonitor];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v10 = 1;
    goto LABEL_7;
  }

  v8 = [v3 externalLayoutMonitor];
  v9 = *(a1 + 32);

  if (v8 != v9)
  {
    goto LABEL_14;
  }

  v10 = 2;
LABEL_8:
  v11 = [*(a1 + 40) elementsForDisplayLayout:*(a1 + 48)];
  v12 = [v11 firstObject];
  v13 = [v12 hasKeyboardFocus];

  v14 = [v3 applications];
  [v14 updateElements:v11 displayType:v10];

  v15 = [*(a1 + 48) timestamp];
  [v3 setLatestDate:v15];

  [v3 setLatestReason:*(a1 + 64)];
  [v3 setTransaction:*(a1 + 72)];
  v16 = [*(a1 + 40) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_2_cold_1((a1 + 64), v3, v16);
  }

  v17 = [v3 externalLayoutMonitor];
  v18 = (v17 == 0) | v13;

  if (v18)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  else
  {
    v19 = [v3 refreshTimer];
    [v19 runAfterDelaySeconds:1 coalescingBehavior:0.1];
  }

LABEL_14:
}

void __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = [v3 error];
    v8 = 134218242;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_22595A000, v4, OS_LOG_TYPE_DEFAULT, "BMFrontBoardDisplayElement - Finished initializing currentFrontBoardElements with %lu elements from stream, err: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_6(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 eventBody];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 eventBody];
    [v4 _updateCurrentElementsWithDisplayElement:v5];

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

BOOL __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2 != 0;

  return v3;
}

uint64_t __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 level];
  if (v6 != [v5 level])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "level")}];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "level")}];
    goto LABEL_5;
  }

  v7 = [v4 bundleIdentifier];
  v8 = [v5 bundleIdentifier];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v10 = [v4 identifier];
    v11 = [v5 identifier];
LABEL_5:
    v12 = v11;
    v9 = [v10 compare:v11];
  }

  return v9;
}

void __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_15(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) timestamp];
    v7 = [v5 _newElementFromExistingDisplayElement:v8 newTimestamp:v6 newChangeType:3];

    [*(a1 + 56) addObject:v7];
  }
}

void __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_17_cold_1(v4, v5);
  }
}

void __46___DKApplicationMonitor_platformSpecificStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v3 setApplications:v4];

  v5 = [MEMORY[0x277CBEAA8] now];
  [v3 setLatestDate:v5];

  [v3 setLatestReason:&stru_2838F0870];
  v6 = MEMORY[0x277D0AD08];
  v7 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  v8 = [*(a1 + 32) displayLayoutTransitionHandler];
  [v7 setTransitionHandler:v8];

  [v7 setNeedsUserInteractivePriority:1];
  v9 = [v6 monitorWithConfiguration:v7];
  [v3 setMainLayoutMonitor:v9];

  v10 = MEMORY[0x277D0AD08];
  v11 = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];
  v12 = [*(a1 + 32) displayLayoutTransitionHandler];
  [v11 setTransitionHandler:v12];

  [v11 setNeedsUserInteractivePriority:1];
  v13 = [v10 monitorWithConfiguration:v11];
  [v3 setContinuityLayoutMonitor:v13];

  objc_initWeak(&location, *(a1 + 32));
  v14 = objc_alloc(MEMORY[0x277D42628]);
  v15 = [*(a1 + 32) queue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __46___DKApplicationMonitor_platformSpecificStart__block_invoke_2;
  v20 = &unk_27856F260;
  objc_copyWeak(&v21, &location);
  v16 = [v14 initWithQueue:v15 leewaySeconds:&v17 operation:0.0];
  [v3 setRefreshTimer:{v16, v17, v18, v19, v20}];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __46___DKApplicationMonitor_platformSpecificStart__block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateFocusStream];

  objc_autoreleasePoolPop(v2);
}

void __46___DKApplicationMonitor_platformSpecificStart__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 processUpdateHandler];
  [v3 setUpdateHandler:v4];
}

void __45___DKApplicationMonitor_platformSpecificStop__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 refreshTimer];
  [v2 cancelPendingOperations];

  [v6 setRefreshTimer:0];
  v3 = [v6 mainLayoutMonitor];
  [v3 invalidate];

  [v6 setMainLayoutMonitor:0];
  v4 = [v6 continuityLayoutMonitor];
  [v4 invalidate];

  [v6 setContinuityLayoutMonitor:0];
  v5 = [v6 externalLayoutMonitor];
  [v5 invalidate];

  [v6 setExternalLayoutMonitor:0];
  [v6 setApplications:0];
}

void __77___DKApplicationMonitor_displayMonitor_didConnectIdentity_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 externalLayoutMonitor];

  if (v3)
  {
    v4 = [v10 externalLayoutMonitor];
    [v4 invalidate];

    [v10 setExternalLayoutMonitor:0];
  }

  [v10 setExternalLayoutMonitor:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) currentLayout];
  v7 = [v5 elementsForDisplayLayout:v6];

  v8 = [v10 applications];
  [v8 updateElements:v7 displayType:2];

  v9 = [v10 applications];
  [v9 updateElements:v7 displayType:2];
}

void __43___DKApplicationMonitor_obtainCurrentValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 mainLayoutMonitor];
  v6 = [v5 currentLayout];
  v7 = [v3 elementsForDisplayLayout:v6];

  v8 = [v4 applications];
  [v8 updateElements:v7 displayType:0];

  v9 = *(a1 + 32);
  v10 = [v4 continuityLayoutMonitor];
  v11 = [v10 currentLayout];
  v12 = [v9 elementsForDisplayLayout:v11];

  v13 = [v4 applications];
  [v13 updateElements:v12 displayType:1];

  v14 = *(a1 + 32);
  v15 = [v4 externalLayoutMonitor];
  v16 = [v15 currentLayout];
  v23 = [v14 elementsForDisplayLayout:v16];

  v17 = [v4 applications];
  [v17 updateElements:v23 displayType:2];

  v18 = [v4 applications];

  v19 = [v18 focalApplication];
  v20 = [v19 application];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_2838F0870;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v22);
}

uint64_t __50___DKApplicationMonitor_elementsForDisplayLayout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (![v2 isSpringBoardElement])
  {
    goto LABEL_8;
  }

  v3 = [v2 identifier];
  if (v3)
  {
  }

  else
  {
    v4 = [v2 bundleIdentifier];

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "layoutRole")}];
  v6 = [&unk_2838F77F0 containsObject:v5];

  if (!v6)
  {
LABEL_8:
    LOBYTE(v4) = 0;
    goto LABEL_9;
  }

  if ([v2 layoutRole] == 4)
  {
    v7 = [v2 identifier];
    LOBYTE(v4) = [&unk_2838F7808 containsObject:v7];
  }

  else
  {
    LOBYTE(v4) = 1;
  }

LABEL_9:

  return v4 & 1;
}

void __42___DKApplicationMonitor_updateFocusStream__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 applications];
  v17 = [v4 focalApplication];

  v5 = [v17 application];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_2838F0870;
  }

  objc_storeStrong((*(a1[4] + 8) + 40), v7);

  *(*(a1[5] + 8) + 24) = [v17 displayType];
  v8 = [v3 latestDate];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [v3 latestReason];
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v3 transaction];
  v15 = *(a1[8] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  [v3 setTransaction:0];
}

void __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_228(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = *(*(a1 + 32) + 176);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_2;
  v10[3] = &unk_27856F928;
  v3 = (a1 + 48);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v3;
  v9 = v4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = &v16;
  [v2 runWithLockAcquired:v10];
  if (*(v17 + 24) == 1)
  {
    v8 = objc_autoreleasePoolPush();
    [*(a1 + 48) updateFocusStream];
    objc_autoreleasePoolPop(v8);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __44___DKApplicationMonitor_ignoreAppExtension___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.CryptoTokenKit.setoken", @"com.apple.Sharing.AirDropDiagnostic", @"com.apple.CloudDocs.MobileDocumentsFileProvider", @"com.apple.CloudDocs.iCloudDriveFileProvider", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged", @"com.apple.UIKit.ShareUI", @"com.apple.WebKit.WebContent", @"com.apple.WebKit.Networking", @"com.apple.WebKit.GPU", @"com.apple.mobileslideshow.PhotosDiagnostics", @"com.apple.CarKit.CarPlayDiagnosticsExtension", @"com.apple.CloudDocsDaemon.diagnostic", @"com.apple.Maps.DEMapsExtension", @"com.apple.Search.framework.SpotlightDiagnostic", @"com.apple.BiometricKit.BioLogDiagnostic", @"com.apple.audio.toolbox.AudioToolbox.DiagnosticExtensions", @"com.apple.Symptoms.SFDiagnosticExtension.appex", @"com.apple.news.articlenotificationserviceextension", @"com.apple.DiagnosticsService.SystemReport", @"com.apple.FileProvider.LocalStorage", @"com.apple.news.diagnosticextension", @"com.apple.mobilesafari.SafariDiagnosticExtension", @"com.apple.mobilemail.DiagnosticExtension", @"com.apple.mobilecal.diagnosticextension", @"com.apple.accessibility.Accessibility.AXTapToRadar", @"com.apple.accessibility.Accessibility.GuidedAccessTapToRadar", @"com.apple.accessibility.Accessibility.HearingAidsTapToRadar", @"com.apple.accessibility.Accessibility.SwitchControlTapToRadar", @"com.apple.accessibility.Accessibility.VoiceOverTapToRadar", @"com.apple.audio.toolbox.AudioToolbox.DiagnosticExtensions", @"com.apple.duet.expertcenter.diagnosticextension", @"com.apple.keyboard.TypoTracker.DiagnosticExtension", @"com.apple.PowerlogCore.diagnosticextension", @"com.apple.PassKit.applepay.diagnosticextension", @"com.apple.HomeKit.diagnosticextensioncom.apple.MediaPlayer.DiagnosticExtension", @"com.apple.MobileAddressBook", @"com.apple.MobileBackup.framework.DiagnosticExtension", @"com.apple.CoreRoutine.RTDiagnosticExtension", @"com.apple.DiagnosticExtensions.sysdiagnose", @"com.apple.DiagnosticExtensions.Bluetooth", @"com.apple.DiagnosticExtensions.WiFi", @"com.apple.DiagnosticExtensions.Syslog", @"com.apple.DiagnosticExtensions.StackShot", @"com.apple.DiagnosticExtensions.Keyboard", @"com.apple.DiagnosticExtensions.CrashLogs", @"com.apple.DiagnosticExtensions.Panic", @"com.apple.DiagnosticExtensions.LowMemory", @"com.apple.DiagnosticExtensions.Siri", 0}];
  v1 = ignoreAppExtension__ignoreList;
  ignoreAppExtension__ignoreList = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __45___DKApplicationMonitor_processUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45___DKApplicationMonitor_processUpdateHandler__block_invoke_2;
    v14[3] = &unk_27856F6C8;
    v14[4] = v12;
    v15 = v7;
    v16 = v9;
    v17 = v8;
    dispatch_sync(v13, v14);
  }
}

uint64_t __45___DKApplicationMonitor_processUpdateHandler__block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 184) == *(result + 40))
  {
    v1 = *(result + 48);
    v2 = *(result + 56);
    return [*(result + 32) processMonitor:? didUpdateState:? forProcess:?];
  }

  return result;
}

void __97___DKApplicationMonitor_BMFrontBoardDisplayElement__donateElementsFromDisplayLayout_withContext___block_invoke_17_cold_1(void *a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  [a1 changeType];
  v4 = BMFrontBoardDisplayElementChangeTypeAsString();
  v5 = [a1 identifier];
  v6 = [a1 bundleIdentifier];
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "BMFrontBoardDisplayElement - %@ event for identifier: %@ bundleIdentifier: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "Transition reason: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_cold_2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 transitionReasons];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "Transition reasons: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __55___DKApplicationMonitor_displayLayoutTransitionHandler__block_invoke_2_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = [a2 applications];
  v7 = [v6 focalApplication];
  v8 = [a2 applications];
  v9 = [v8 mainApplication];
  v10 = [a2 applications];
  v11 = [v10 continuityApplication];
  v12 = [a2 applications];
  v13 = [v12 externalApplication];
  v15 = 138413314;
  v16 = v5;
  v17 = 2112;
  v18 = v7;
  v19 = 2112;
  v20 = v9;
  v21 = 2112;
  v22 = v11;
  v23 = 2112;
  v24 = v13;
  _os_log_debug_impl(&dword_22595A000, a3, OS_LOG_TYPE_DEBUG, "DKApplicationMonitor: transitioning due to %@ with App: %@ Others: [%@, %@, %@]", &v15, 0x34u);

  v14 = *MEMORY[0x277D85DE8];
}

@end