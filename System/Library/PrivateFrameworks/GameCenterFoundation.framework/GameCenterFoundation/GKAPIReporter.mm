@interface GKAPIReporter
+ (id)reporter;
- (id)utilityService;
- (void)recordClickWithAction:(id)action targetId:(id)id targetType:(id)type pageId:(id)pageId pageType:(id)pageType hostApp:(id)app app:(id)a9 additionalFields:(id)self0;
- (void)recordFriendInviteActivityEventAtStage:(unint64_t)stage hostApp:(id)app;
- (void)recordInviteFriendClickEventWithPageType:(id)type pageId:(id)id pushBased:(BOOL)based knownRecipient:(BOOL)recipient location:(id)location;
- (void)recordLoadUrlMetrics:(id)metrics;
- (void)recordMultiplayerActivityMetrics:(id)metrics;
- (void)recordPageWithID:(id)d pageContext:(id)context pageType:(id)type refApp:(id)app hostApp:(id)hostApp app:(id)a8 additionalFields:(id)fields;
- (void)sendMetrics:(id)metrics;
- (void)sendPerformanceMetrics:(id)metrics;
@end

@implementation GKAPIReporter

+ (id)reporter
{
  if (reporter_sDispatchOnceToken != -1)
  {
    +[GKAPIReporter reporter];
  }

  v3 = reporter_sReporter;

  return v3;
}

uint64_t __25__GKAPIReporter_reporter__block_invoke()
{
  reporter_sReporter = objc_alloc_init(GKAPIReporter);

  return MEMORY[0x2821F96F8]();
}

- (void)recordClickWithAction:(id)action targetId:(id)id targetType:(id)type pageId:(id)pageId pageType:(id)pageType hostApp:(id)app app:(id)a9 additionalFields:(id)self0
{
  v29[6] = *MEMORY[0x277D85DE8];
  appCopy = app;
  v17 = a9;
  fieldsCopy = fields;
  v28[0] = @"eventType";
  v28[1] = @"actionType";
  v29[0] = @"click";
  v29[1] = action;
  v28[2] = @"targetId";
  v28[3] = @"targetType";
  v29[2] = id;
  v29[3] = type;
  v28[4] = @"pageId";
  v28[5] = @"pageType";
  v29[4] = pageId;
  v29[5] = pageType;
  v19 = MEMORY[0x277CBEAC0];
  pageTypeCopy = pageType;
  pageIdCopy = pageId;
  typeCopy = type;
  idCopy = id;
  actionCopy = action;
  v25 = [v19 dictionaryWithObjects:v29 forKeys:v28 count:6];

  v26 = [v25 mutableCopy];
  if (appCopy)
  {
    [v26 setObject:appCopy forKeyedSubscript:@"hostApp"];
  }

  if (v17)
  {
    [v26 setObject:v17 forKeyedSubscript:@"app"];
  }

  [v26 addEntriesFromDictionary:fieldsCopy];
  [(GKAPIReporter *)self sendMetrics:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)recordPageWithID:(id)d pageContext:(id)context pageType:(id)type refApp:(id)app hostApp:(id)hostApp app:(id)a8 additionalFields:(id)fields
{
  v28[4] = *MEMORY[0x277D85DE8];
  appCopy = app;
  hostAppCopy = hostApp;
  v17 = a8;
  fieldsCopy = fields;
  v27[0] = @"eventType";
  v27[1] = @"pageId";
  v28[0] = @"page";
  v28[1] = d;
  v27[2] = @"pageContext";
  v27[3] = @"pageType";
  v28[2] = context;
  v28[3] = type;
  v19 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  contextCopy = context;
  dCopy = d;
  v23 = [v19 dictionaryWithObjects:v28 forKeys:v27 count:4];

  v24 = [v23 mutableCopy];
  if (appCopy)
  {
    [v24 setObject:appCopy forKeyedSubscript:@"refApp"];
  }

  if (hostAppCopy)
  {
    [v24 setObject:hostAppCopy forKeyedSubscript:@"hostApp"];
  }

  if (v17)
  {
    [v24 setObject:v17 forKeyedSubscript:@"app"];
  }

  if (fieldsCopy)
  {
    [v24 addEntriesFromDictionary:fieldsCopy];
  }

  v25 = [v24 copy];
  [(GKAPIReporter *)self sendMetrics:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordMultiplayerActivityMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportMultiplayerActivityMetricsEvent:metricsCopy];
}

- (void)recordLoadUrlMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportLoadUrlMetricsEvent:metricsCopy];
}

- (void)recordInviteFriendClickEventWithPageType:(id)type pageId:(id)id pushBased:(BOOL)based knownRecipient:(BOOL)recipient location:(id)location
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (recipient)
  {
    v10 = @"invite";
  }

  else
  {
    v10 = @"inviteOthers";
  }

  if (based)
  {
    v11 = @"add";
  }

  else
  {
    v11 = @"navigate";
  }

  v19 = @"location";
  v20[0] = location;
  v12 = MEMORY[0x277CBEAC0];
  if (based)
  {
    v13 = @"button";
  }

  else
  {
    v13 = @"link";
  }

  locationCopy = location;
  idCopy = id;
  typeCopy = type;
  v17 = [v12 dictionaryWithObjects:v20 forKeys:&v19 count:1];

  [(GKAPIReporter *)self recordClickWithAction:v11 targetId:v10 targetType:v13 pageId:idCopy pageType:typeCopy additionalFields:v17];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)recordFriendInviteActivityEventAtStage:(unint64_t)stage hostApp:(id)app
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [GKFriendInviteActivityEvent metricsFieldsForStage:stage hostApp:app];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKFriending;
  if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [GKFriendInviteActivityEvent stringForStage:stage];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "GKAPIReporter: Recording inviteActivity stage %@", &v12, 0xCu);
  }

  [(GKAPIReporter *)self sendMetrics:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportMetricsEventWithTopic:@"xp_amp_gc_cs" shouldFlush:MEMORY[0x277CBEC28] metricsFields:metricsCopy];
}

- (void)sendPerformanceMetrics:(id)metrics
{
  metricsCopy = metrics;
  utilityService = [(GKAPIReporter *)self utilityService];
  [utilityService reportPerformanceMetricsEvent:metricsCopy];
}

- (id)utilityService
{
  v2 = +[GKDaemonProxy daemonProxy];
  utilityService = [v2 utilityService];

  return utilityService;
}

@end