@interface GKUtilityServiceInterface
+ (void)configureInterface:(id)interface;
@end

@implementation GKUtilityServiceInterface

+ (void)configureInterface:(id)interface
{
  v4 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v7 forSelector:sel_getStoreBagValuesForKeys_handler_ argumentIndex:0 ofReply:0];

  plistClasses = [self plistClasses];
  [interfaceCopy setClasses:plistClasses forSelector:sel_getStoreBagValuesForKeys_handler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v13 forSelector:sel_reportMetricsEventWithTopic_shouldFlush_metricsFields_ argumentIndex:0 ofReply:0];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v18 forSelector:sel_reportPerformanceMetricsEvent_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [v19 setWithObjects:{v20, v21, v22, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v23 forSelector:sel_reportMultiplayerActivityMetricsEvent_ argumentIndex:0 ofReply:0];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v24 setWithObjects:{v25, v26, v27, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v28 forSelector:sel_reportLoadUrlMetricsEvent_ argumentIndex:0 ofReply:0];

  v29 = MEMORY[0x277CBEB98];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v29 setWithObjects:{v30, v31, v32, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v33 forSelector:sel_recordMatchStart_minPlayers_maxPlayers_ argumentIndex:0 ofReply:0];

  v34 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v34 forSelector:sel_recordMatchServer_ argumentIndex:0 ofReply:0];

  v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v35 forSelector:sel_recordActiveDevices_ argumentIndex:0 ofReply:0];

  v36 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v36 forSelector:sel_recordSharePlayDevices_ argumentIndex:0 ofReply:0];

  v37 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v37 forSelector:sel_completeMatchRecording_matchType_ argumentIndex:0 ofReply:0];

  v38 = MEMORY[0x277CBEB98];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v40 forSelector:sel_openDashboardAsRemoteAlertForGame_hostPID_deeplink_launchContext_ argumentIndex:0 ofReply:0];

  v41 = MEMORY[0x277CBEB98];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v43 forSelector:sel_openDashboardAsRemoteAlertForGame_hostPID_deeplink_launchContext_ argumentIndex:2 ofReply:0];

  v44 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v44 forSelector:sel_openDashboardAsRemoteAlertForGame_hostPID_deeplink_launchContext_ argumentIndex:3 ofReply:0];

  v45 = MEMORY[0x277CBEB98];
  v46 = objc_opt_class();
  v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v47 forSelector:sel_openDashboardAsRemoteAlertForGame_hostPID_deeplink_ argumentIndex:0 ofReply:0];

  v48 = MEMORY[0x277CBEB98];
  v49 = objc_opt_class();
  v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v50 forSelector:sel_openDashboardAsRemoteAlertForGame_hostPID_deeplink_ argumentIndex:2 ofReply:0];

  v51 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [interfaceCopy setClasses:v51 forSelector:sel_getBSServiceConnectionEndpointForMachName_service_instance_handler_ argumentIndex:0 ofReply:1];
}

@end