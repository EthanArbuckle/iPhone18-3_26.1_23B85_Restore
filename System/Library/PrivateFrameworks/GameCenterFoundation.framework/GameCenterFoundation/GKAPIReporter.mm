@interface GKAPIReporter
+ (id)reporter;
- (id)utilityService;
- (void)recordClickWithAction:(id)a3 targetId:(id)a4 targetType:(id)a5 pageId:(id)a6 pageType:(id)a7 hostApp:(id)a8 app:(id)a9 additionalFields:(id)a10;
- (void)recordFriendInviteActivityEventAtStage:(unint64_t)a3 hostApp:(id)a4;
- (void)recordInviteFriendClickEventWithPageType:(id)a3 pageId:(id)a4 pushBased:(BOOL)a5 knownRecipient:(BOOL)a6 location:(id)a7;
- (void)recordLoadUrlMetrics:(id)a3;
- (void)recordMultiplayerActivityMetrics:(id)a3;
- (void)recordPageWithID:(id)a3 pageContext:(id)a4 pageType:(id)a5 refApp:(id)a6 hostApp:(id)a7 app:(id)a8 additionalFields:(id)a9;
- (void)sendMetrics:(id)a3;
- (void)sendPerformanceMetrics:(id)a3;
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

- (void)recordClickWithAction:(id)a3 targetId:(id)a4 targetType:(id)a5 pageId:(id)a6 pageType:(id)a7 hostApp:(id)a8 app:(id)a9 additionalFields:(id)a10
{
  v29[6] = *MEMORY[0x277D85DE8];
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v28[0] = @"eventType";
  v28[1] = @"actionType";
  v29[0] = @"click";
  v29[1] = a3;
  v28[2] = @"targetId";
  v28[3] = @"targetType";
  v29[2] = a4;
  v29[3] = a5;
  v28[4] = @"pageId";
  v28[5] = @"pageType";
  v29[4] = a6;
  v29[5] = a7;
  v19 = MEMORY[0x277CBEAC0];
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [v19 dictionaryWithObjects:v29 forKeys:v28 count:6];

  v26 = [v25 mutableCopy];
  if (v16)
  {
    [v26 setObject:v16 forKeyedSubscript:@"hostApp"];
  }

  if (v17)
  {
    [v26 setObject:v17 forKeyedSubscript:@"app"];
  }

  [v26 addEntriesFromDictionary:v18];
  [(GKAPIReporter *)self sendMetrics:v26];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)recordPageWithID:(id)a3 pageContext:(id)a4 pageType:(id)a5 refApp:(id)a6 hostApp:(id)a7 app:(id)a8 additionalFields:(id)a9
{
  v28[4] = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v27[0] = @"eventType";
  v27[1] = @"pageId";
  v28[0] = @"page";
  v28[1] = a3;
  v27[2] = @"pageContext";
  v27[3] = @"pageType";
  v28[2] = a4;
  v28[3] = a5;
  v19 = MEMORY[0x277CBEAC0];
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [v19 dictionaryWithObjects:v28 forKeys:v27 count:4];

  v24 = [v23 mutableCopy];
  if (v15)
  {
    [v24 setObject:v15 forKeyedSubscript:@"refApp"];
  }

  if (v16)
  {
    [v24 setObject:v16 forKeyedSubscript:@"hostApp"];
  }

  if (v17)
  {
    [v24 setObject:v17 forKeyedSubscript:@"app"];
  }

  if (v18)
  {
    [v24 addEntriesFromDictionary:v18];
  }

  v25 = [v24 copy];
  [(GKAPIReporter *)self sendMetrics:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordMultiplayerActivityMetrics:(id)a3
{
  v4 = a3;
  v5 = [(GKAPIReporter *)self utilityService];
  [v5 reportMultiplayerActivityMetricsEvent:v4];
}

- (void)recordLoadUrlMetrics:(id)a3
{
  v4 = a3;
  v5 = [(GKAPIReporter *)self utilityService];
  [v5 reportLoadUrlMetricsEvent:v4];
}

- (void)recordInviteFriendClickEventWithPageType:(id)a3 pageId:(id)a4 pushBased:(BOOL)a5 knownRecipient:(BOOL)a6 location:(id)a7
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v10 = @"invite";
  }

  else
  {
    v10 = @"inviteOthers";
  }

  if (a5)
  {
    v11 = @"add";
  }

  else
  {
    v11 = @"navigate";
  }

  v19 = @"location";
  v20[0] = a7;
  v12 = MEMORY[0x277CBEAC0];
  if (a5)
  {
    v13 = @"button";
  }

  else
  {
    v13 = @"link";
  }

  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [v12 dictionaryWithObjects:v20 forKeys:&v19 count:1];

  [(GKAPIReporter *)self recordClickWithAction:v11 targetId:v10 targetType:v13 pageId:v15 pageType:v16 additionalFields:v17];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)recordFriendInviteActivityEventAtStage:(unint64_t)a3 hostApp:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [GKFriendInviteActivityEvent metricsFieldsForStage:a3 hostApp:a4];
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKFriending;
  if (os_log_type_enabled(os_log_GKFriending, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [GKFriendInviteActivityEvent stringForStage:a3];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "GKAPIReporter: Recording inviteActivity stage %@", &v12, 0xCu);
  }

  [(GKAPIReporter *)self sendMetrics:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMetrics:(id)a3
{
  v4 = a3;
  v5 = [(GKAPIReporter *)self utilityService];
  [v5 reportMetricsEventWithTopic:@"xp_amp_gc_cs" shouldFlush:MEMORY[0x277CBEC28] metricsFields:v4];
}

- (void)sendPerformanceMetrics:(id)a3
{
  v4 = a3;
  v5 = [(GKAPIReporter *)self utilityService];
  [v5 reportPerformanceMetricsEvent:v4];
}

- (id)utilityService
{
  v2 = +[GKDaemonProxy daemonProxy];
  v3 = [v2 utilityService];

  return v3;
}

@end