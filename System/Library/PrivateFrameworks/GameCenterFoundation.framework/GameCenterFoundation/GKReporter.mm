@interface GKReporter
+ (id)reporter;
- (void)recordAppLaunchAndTotalTimestamp;
- (void)recordAuthenticateResponseTimestamp;
- (void)recordConnectingDevicesTimestamp;
- (void)recordCurrentRealtimeMatchPersistenceTimestamp;
- (void)recordInviteeUILaunchTimestamp;
- (void)recordMessageInviteProcessingTimestamp;
- (void)recordProgramaticInviteTimestamp;
- (void)reportAppLaunchDuration;
- (void)reportAuthenticateResponseDuration;
- (void)reportConnectingDevicesDuration;
- (void)reportCurrentRealtimeMatchPersistenceDuration;
- (void)reportDurationForEvent:(id)event eventType:(id)type withStartTimestamp:(double)timestamp;
- (void)reportEvent:(id)event eventType:(id)type duration:(double)duration refApp:(id)app;
- (void)reportEvent:(id)event payload:(id)payload;
- (void)reportEvent:(id)event reportable:(id)reportable;
- (void)reportEvent:(id)event target:(id)target keyPath:(id)path;
- (void)reportEvent:(id)event type:(id)type;
- (void)reportEvent:(id)event type:(id)type adamID:(id)d;
- (void)reportEvent:(id)event type:(id)type bundleID:(id)d;
- (void)reportEvent:(id)event type:(id)type count:(int64_t)count;
- (void)reportEvent:(id)event type:(id)type friendsPlayedThisGame:(id)game;
- (void)reportEvent:(id)event type:(id)type inboxFriendRequestCount:(int64_t)count;
- (void)reportEvent:(id)event type:(id)type payload:(id)payload;
- (void)reportEvent:(id)event type:(id)type scoreRank:(id)rank;
- (void)reportEvent:(id)event type:(id)type startTime:(id)time refApp:(id)app;
- (void)reportInviteeUILaunchDuration;
- (void)reportMessageInviteProcessingDuration;
- (void)reportOnboardingEventForType:(id)type withStartTimestamp:(double)timestamp refApp:(id)app;
- (void)reportPlayerAuthenticationFailure:(id)failure;
- (void)reportProgramaticInviteDuration;
- (void)reportScreenTimeEventForType:(id)type withStartTimestamp:(double)timestamp;
- (void)reportTotalInviteReceivedDuration;
@end

@implementation GKReporter

+ (id)reporter
{
  if (reporter_sDispatchOnceToken_0 != -1)
  {
    +[GKReporter reporter];
  }

  v3 = reporter_sReporter_0;

  return v3;
}

uint64_t __22__GKReporter_reporter__block_invoke()
{
  v0 = objc_alloc_init(GKReporter);
  v1 = reporter_sReporter_0;
  reporter_sReporter_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)reportEvent:(id)event payload:(id)payload
{
  v14 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  payloadCopy = payload;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = eventCopy;
    v12 = 2112;
    v13 = payloadCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "GKReporter: report domain: %@, payload: %@", &v10, 0x16u);
  }

  AnalyticsSendEvent();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"eventType";
  v12[0] = type;
  v6 = MEMORY[0x277CBEAC0];
  typeCopy = type;
  eventCopy = event;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(GKReporter *)self reportEvent:eventCopy payload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type startTime:(id)time refApp:(id)app
{
  eventCopy = event;
  typeCopy = type;
  appCopy = app;
  v12 = MEMORY[0x277CBEAA8];
  timeCopy = time;
  v14 = [v12 now];
  [v14 timeIntervalSinceDate:timeCopy];
  v16 = v15;

  if ([(GKReporter *)self isTimeSpanValid:v16 maxDuration:3600.0])
  {
    [(GKReporter *)self reportEvent:eventCopy eventType:typeCopy duration:appCopy refApp:v16];
  }
}

- (void)reportEvent:(id)event type:(id)type bundleID:(id)d
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"eventType";
  v13[1] = @"bundleID";
  v14[0] = type;
  v14[1] = d;
  v7 = MEMORY[0x277CBEAC0];
  dCopy = d;
  typeCopy = type;
  eventCopy = event;
  v11 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];

  AnalyticsSendEvent();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type adamID:(id)d
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v17[0] = @"eventType";
    v17[1] = @"adamID";
    v18[0] = type;
    typeCopy = type;
    eventCopy = event;
    stringValue = [d stringValue];
    v18[1] = stringValue;
    eventCopy2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    [(GKReporter *)self reportEvent:eventCopy payload:eventCopy2];
  }

  else
  {
    v15 = @"eventType";
    typeCopy2 = type;
    v12 = MEMORY[0x277CBEAC0];
    typeCopy3 = type;
    eventCopy2 = event;
    stringValue = [v12 dictionaryWithObjects:&typeCopy2 forKeys:&v15 count:1];

    [(GKReporter *)self reportEvent:eventCopy2 payload:stringValue];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type payload:(id)payload
{
  v17[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  payloadCopy = payload;
  v10 = payloadCopy;
  if (type)
  {
    v16 = @"eventType";
    v17[0] = type;
    v11 = MEMORY[0x277CBEAC0];
    typeCopy = type;
    v13 = [v11 dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v14 = [v13 mutableCopy];
    [v14 addEntriesFromDictionary:v10];
  }

  else
  {
    v14 = payloadCopy;
  }

  [(GKReporter *)self reportEvent:eventCopy payload:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type friendsPlayedThisGame:(id)game
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"friendsPlayedThisGame";
  v15[0] = type;
  v15[1] = game;
  v8 = MEMORY[0x277CBEAC0];
  gameCopy = game;
  typeCopy = type;
  eventCopy = event;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:eventCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type count:(int64_t)count
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"count";
  v15[0] = type;
  v8 = MEMORY[0x277CCABB0];
  typeCopy = type;
  eventCopy = event;
  v11 = [v8 numberWithInteger:count];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:eventCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type inboxFriendRequestCount:(int64_t)count
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"inboxFriendRequestCount";
  v15[0] = type;
  v8 = MEMORY[0x277CCABB0];
  typeCopy = type;
  eventCopy = event;
  v11 = [v8 numberWithInteger:count];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:eventCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event type:(id)type scoreRank:(id)rank
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"scoreRank";
  v15[0] = type;
  v15[1] = rank;
  v8 = MEMORY[0x277CBEAC0];
  rankCopy = rank;
  typeCopy = type;
  eventCopy = event;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:eventCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event target:(id)target keyPath:(id)path
{
  v15[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  eventCopy = event;
  v10 = [target valueForKeyPath:pathCopy];
  v14 = pathCopy;
  v11 = [v10 description];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [(GKReporter *)self reportEvent:eventCopy payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)event reportable:(id)reportable
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  reportableCopy = reportable;
  reportableKeyPaths = [objc_opt_class() reportableKeyPaths];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [reportableKeyPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(reportableKeyPaths);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = +[GKReporter reporter];
        [v13 reportEvent:eventCopy target:reportableCopy keyPath:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [reportableKeyPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)recordAuthenticateResponseTimestamp
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setAuthenticateResponseTimestamp:Current];
}

- (void)reportAuthenticateResponseDuration
{
  [(GKReporter *)self authenticateResponseTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self authenticateResponseTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKAuthenticateResponseTime" withStartTimestamp:?];

    [(GKReporter *)self setAuthenticateResponseTimestamp:-1.0];
  }
}

- (void)recordInviteeUILaunchTimestamp
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setInviteeUILaunchTimestamp:Current];
}

- (void)reportInviteeUILaunchDuration
{
  [(GKReporter *)self inviteeUILaunchTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self inviteeUILaunchTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKInviteeUILaunchTime" withStartTimestamp:?];

    [(GKReporter *)self setInviteeUILaunchTimestamp:-1.0];
  }
}

- (void)recordMessageInviteProcessingTimestamp
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setMessageInviteProcessingTimestamp:Current];
}

- (void)reportMessageInviteProcessingDuration
{
  [(GKReporter *)self messageInviteProcessingTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self messageInviteProcessingTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKMessageInviteProcessingTime" withStartTimestamp:?];

    [(GKReporter *)self setMessageInviteProcessingTimestamp:-1.0];
  }
}

- (void)recordConnectingDevicesTimestamp
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setConnectingDevicesTimestamp:Current];
}

- (void)reportConnectingDevicesDuration
{
  [(GKReporter *)self connectingDevicesTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self connectingDevicesTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKConnectingDevicesTime" withStartTimestamp:?];

    [(GKReporter *)self setConnectingDevicesTimestamp:-1.0];
  }
}

- (void)recordProgramaticInviteTimestamp
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setProgramaticInviteTimestamp:Current];
}

- (void)reportProgramaticInviteDuration
{
  [(GKReporter *)self programaticInviteTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self programaticInviteTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKProgramaticInviteTime" withStartTimestamp:?];

    [(GKReporter *)self setProgramaticInviteTimestamp:-1.0];
  }
}

- (void)recordAppLaunchAndTotalTimestamp
{
  [(GKReporter *)self setAppLaunchTimestamp:CFAbsoluteTimeGetCurrent()];
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setTotalInviteReceivedTimestamp:Current];
}

- (void)reportAppLaunchDuration
{
  [(GKReporter *)self appLaunchTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self appLaunchTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKAppLaunchTime" withStartTimestamp:?];

    [(GKReporter *)self setAppLaunchTimestamp:-1.0];
  }
}

- (void)reportTotalInviteReceivedDuration
{
  [(GKReporter *)self totalInviteReceivedTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self totalInviteReceivedTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.Invite.ReceivedTime" eventType:@"GKTotalInviteReceivedTime" withStartTimestamp:?];

    [(GKReporter *)self setTotalInviteReceivedTimestamp:-1.0];
  }
}

- (void)recordCurrentRealtimeMatchPersistenceTimestamp
{
  Current = CFAbsoluteTimeGetCurrent();

  [(GKReporter *)self setCurrentRealtimeMatchPersistenceTimestamp:Current];
}

- (void)reportCurrentRealtimeMatchPersistenceDuration
{
  [(GKReporter *)self currentRealtimeMatchPersistenceTimestamp];
  if (v3 > 0.0)
  {
    [(GKReporter *)self currentRealtimeMatchPersistenceTimestamp];
    [(GKReporter *)self reportDurationForEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" eventType:@"GKRealtimeMatchPersistenceTime" withStartTimestamp:?];

    [(GKReporter *)self setCurrentRealtimeMatchPersistenceTimestamp:-1.0];
  }
}

- (void)reportScreenTimeEventForType:(id)type withStartTimestamp:(double)timestamp
{
  v12[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v7 = CFAbsoluteTimeGetCurrent() - timestamp;
  if ([(GKReporter *)self isTimeSpanValid:v7 maxDuration:600.0])
  {
    v11[0] = @"eventType";
    v11[1] = @"timeSpan";
    v12[0] = typeCopy;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(GKReporter *)self reportEvent:@"com.apple.GameKit.GameLayerDashboard" payload:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportOnboardingEventForType:(id)type withStartTimestamp:(double)timestamp refApp:(id)app
{
  typeCopy = type;
  appCopy = app;
  v9 = CFAbsoluteTimeGetCurrent() - timestamp;
  if ([(GKReporter *)self isTimeSpanValid:v9 maxDuration:900.0])
  {
    [(GKReporter *)self reportEvent:@"com.apple.GameKit.Onboarding" eventType:typeCopy duration:appCopy refApp:v9];
  }
}

- (void)reportEvent:(id)event eventType:(id)type duration:(double)duration refApp:(id)app
{
  v10 = MEMORY[0x277CBEB38];
  appCopy = app;
  typeCopy = type;
  eventCopy = event;
  v16 = objc_alloc_init(v10);
  [v16 setObject:typeCopy forKeyedSubscript:@"eventType"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [v16 setObject:v14 forKeyedSubscript:@"timeSpan"];

  [v16 setObject:appCopy forKeyedSubscript:@"refApp"];
  v15 = [v16 copy];
  [(GKReporter *)self reportEvent:eventCopy payload:v15];
}

- (void)reportDurationForEvent:(id)event eventType:(id)type withStartTimestamp:(double)timestamp
{
  v15[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  typeCopy = type;
  v10 = CFAbsoluteTimeGetCurrent() - timestamp;
  if ([(GKReporter *)self isTimeSpanValid:v10 maxDuration:3600.0])
  {
    v14[0] = @"eventType";
    v14[1] = @"timeSpan";
    v15[0] = typeCopy;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [(GKReporter *)self reportEvent:eventCopy payload:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportPlayerAuthenticationFailure:(id)failure
{
  v4 = [failure code] - 5000;
  if (v4 > 0xAA)
  {
    v5 = @"GKReporterPlayerAuthenticationFailureUnknownReason";
  }

  else
  {
    v5 = off_2785E2008[v4];
  }

  [(GKReporter *)self reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:v5];
}

@end