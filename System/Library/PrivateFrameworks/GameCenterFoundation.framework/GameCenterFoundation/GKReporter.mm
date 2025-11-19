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
- (void)reportDurationForEvent:(id)a3 eventType:(id)a4 withStartTimestamp:(double)a5;
- (void)reportEvent:(id)a3 eventType:(id)a4 duration:(double)a5 refApp:(id)a6;
- (void)reportEvent:(id)a3 payload:(id)a4;
- (void)reportEvent:(id)a3 reportable:(id)a4;
- (void)reportEvent:(id)a3 target:(id)a4 keyPath:(id)a5;
- (void)reportEvent:(id)a3 type:(id)a4;
- (void)reportEvent:(id)a3 type:(id)a4 adamID:(id)a5;
- (void)reportEvent:(id)a3 type:(id)a4 bundleID:(id)a5;
- (void)reportEvent:(id)a3 type:(id)a4 count:(int64_t)a5;
- (void)reportEvent:(id)a3 type:(id)a4 friendsPlayedThisGame:(id)a5;
- (void)reportEvent:(id)a3 type:(id)a4 inboxFriendRequestCount:(int64_t)a5;
- (void)reportEvent:(id)a3 type:(id)a4 payload:(id)a5;
- (void)reportEvent:(id)a3 type:(id)a4 scoreRank:(id)a5;
- (void)reportEvent:(id)a3 type:(id)a4 startTime:(id)a5 refApp:(id)a6;
- (void)reportInviteeUILaunchDuration;
- (void)reportMessageInviteProcessingDuration;
- (void)reportOnboardingEventForType:(id)a3 withStartTimestamp:(double)a4 refApp:(id)a5;
- (void)reportPlayerAuthenticationFailure:(id)a3;
- (void)reportProgramaticInviteDuration;
- (void)reportScreenTimeEventForType:(id)a3 withStartTimestamp:(double)a4;
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

- (void)reportEvent:(id)a3 payload:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "GKReporter: report domain: %@, payload: %@", &v10, 0x16u);
  }

  AnalyticsSendEvent();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"eventType";
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(GKReporter *)self reportEvent:v8 payload:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 startTime:(id)a5 refApp:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a6;
  v12 = MEMORY[0x277CBEAA8];
  v13 = a5;
  v14 = [v12 now];
  [v14 timeIntervalSinceDate:v13];
  v16 = v15;

  if ([(GKReporter *)self isTimeSpanValid:v16 maxDuration:3600.0])
  {
    [(GKReporter *)self reportEvent:v17 eventType:v10 duration:v11 refApp:v16];
  }
}

- (void)reportEvent:(id)a3 type:(id)a4 bundleID:(id)a5
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"eventType";
  v13[1] = @"bundleID";
  v14[0] = a4;
  v14[1] = a5;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];

  AnalyticsSendEvent();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 adamID:(id)a5
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v17[0] = @"eventType";
    v17[1] = @"adamID";
    v18[0] = a4;
    v8 = a4;
    v9 = a3;
    v10 = [a5 stringValue];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

    [(GKReporter *)self reportEvent:v9 payload:v11];
  }

  else
  {
    v15 = @"eventType";
    v16 = a4;
    v12 = MEMORY[0x277CBEAC0];
    v13 = a4;
    v11 = a3;
    v10 = [v12 dictionaryWithObjects:&v16 forKeys:&v15 count:1];

    [(GKReporter *)self reportEvent:v11 payload:v10];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 payload:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4)
  {
    v16 = @"eventType";
    v17[0] = a4;
    v11 = MEMORY[0x277CBEAC0];
    v12 = a4;
    v13 = [v11 dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v14 = [v13 mutableCopy];
    [v14 addEntriesFromDictionary:v10];
  }

  else
  {
    v14 = v9;
  }

  [(GKReporter *)self reportEvent:v8 payload:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 friendsPlayedThisGame:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"friendsPlayedThisGame";
  v15[0] = a4;
  v15[1] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:v11 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 count:(int64_t)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"count";
  v15[0] = a4;
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithInteger:a5];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:v10 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 inboxFriendRequestCount:(int64_t)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"inboxFriendRequestCount";
  v15[0] = a4;
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithInteger:a5];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:v10 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 type:(id)a4 scoreRank:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"eventType";
  v14[1] = @"scoreRank";
  v15[0] = a4;
  v15[1] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 dictionaryWithObjects:v15 forKeys:v14 count:2];

  [(GKReporter *)self reportEvent:v11 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 target:(id)a4 keyPath:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [a4 valueForKeyPath:v8];
  v14 = v8;
  v11 = [v10 description];
  v15[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  [(GKReporter *)self reportEvent:v9 payload:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportEvent:(id)a3 reportable:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() reportableKeyPaths];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = +[GKReporter reporter];
        [v13 reportEvent:v5 target:v6 keyPath:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)reportScreenTimeEventForType:(id)a3 withStartTimestamp:(double)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CFAbsoluteTimeGetCurrent() - a4;
  if ([(GKReporter *)self isTimeSpanValid:v7 maxDuration:600.0])
  {
    v11[0] = @"eventType";
    v11[1] = @"timeSpan";
    v12[0] = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(GKReporter *)self reportEvent:@"com.apple.GameKit.GameLayerDashboard" payload:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportOnboardingEventForType:(id)a3 withStartTimestamp:(double)a4 refApp:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = CFAbsoluteTimeGetCurrent() - a4;
  if ([(GKReporter *)self isTimeSpanValid:v9 maxDuration:900.0])
  {
    [(GKReporter *)self reportEvent:@"com.apple.GameKit.Onboarding" eventType:v10 duration:v8 refApp:v9];
  }
}

- (void)reportEvent:(id)a3 eventType:(id)a4 duration:(double)a5 refApp:(id)a6
{
  v10 = MEMORY[0x277CBEB38];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v16 = objc_alloc_init(v10);
  [v16 setObject:v12 forKeyedSubscript:@"eventType"];

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v16 setObject:v14 forKeyedSubscript:@"timeSpan"];

  [v16 setObject:v11 forKeyedSubscript:@"refApp"];
  v15 = [v16 copy];
  [(GKReporter *)self reportEvent:v13 payload:v15];
}

- (void)reportDurationForEvent:(id)a3 eventType:(id)a4 withStartTimestamp:(double)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = CFAbsoluteTimeGetCurrent() - a5;
  if ([(GKReporter *)self isTimeSpanValid:v10 maxDuration:3600.0])
  {
    v14[0] = @"eventType";
    v14[1] = @"timeSpan";
    v15[0] = v9;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [(GKReporter *)self reportEvent:v8 payload:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportPlayerAuthenticationFailure:(id)a3
{
  v4 = [a3 code] - 5000;
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