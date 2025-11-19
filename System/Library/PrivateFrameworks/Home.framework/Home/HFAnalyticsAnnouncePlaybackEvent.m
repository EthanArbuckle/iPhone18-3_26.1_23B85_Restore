@interface HFAnalyticsAnnouncePlaybackEvent
- (HFAnalyticsAnnouncePlaybackEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAnnouncePlaybackEvent

- (HFAnalyticsAnnouncePlaybackEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"playbackDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann_12.isa);
  }

  v6 = [v4 objectForKeyedSubscript:@"playbackFailed"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsann_13.isa);
  }

  v7 = [v4 objectForKeyedSubscript:@"audioTranscriptionsAreEnabled"];
  if (!v7)
  {
    NSLog(&cfstr_Hfanalyticsaud.isa);
  }

  v21.receiver = self;
  v21.super_class = HFAnalyticsAnnouncePlaybackEvent;
  v8 = [(HFAnalyticsEvent *)&v21 initWithEventType:19];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_playbackDuration, v5);
    objc_storeStrong(&v9->_playbackFailed, v6);
    v10 = [v4 objectForKeyedSubscript:@"playbackWasInterruptedByUser"];
    v9->_playbackInterruptedByUser = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"recordingWasInterruptedBySystem"];
    v9->_playbackInterruptedBySystem = [v11 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"playbackWasInterruptedByRouteChange"];
    v9->_playbackInterruptedByRouteChange = [v12 BOOLValue];

    v13 = [v4 objectForKeyedSubscript:@"routeChangeInterruptionReason"];
    routeChangeInterruptionReason = v9->_routeChangeInterruptionReason;
    v9->_routeChangeInterruptionReason = v13;

    v15 = [v4 objectForKeyedSubscript:@"playbackAnnouncementID"];
    playbackAnnouncementID = v9->_playbackAnnouncementID;
    v9->_playbackAnnouncementID = v15;

    objc_storeStrong(&v9->_audioTranscriptionsAreEnabled, v7);
    v17 = [MEMORY[0x277CCAC38] processInfo];
    v18 = [v17 processName];
    processName = v9->_processName;
    v9->_processName = v18;
  }

  return v9;
}

- (id)payload
{
  v17.receiver = self;
  v17.super_class = HFAnalyticsAnnouncePlaybackEvent;
  v3 = [(HFAnalyticsEvent *)&v17 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackDuration];
  [v4 setObject:v5 forKeyedSubscript:@"playbackDuration"];

  v6 = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackFailed];
  [v4 setObject:v6 forKeyedSubscript:@"playbackFailed"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnouncePlaybackEvent playbackInterruptedByUser](self, "playbackInterruptedByUser")}];
  [v4 setObject:v7 forKeyedSubscript:@"playbackWasInterruptedByUser"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnouncePlaybackEvent playbackInterruptedBySystem](self, "playbackInterruptedBySystem")}];
  [v4 setObject:v8 forKeyedSubscript:@"playbackWasInterruptedBySystem"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnouncePlaybackEvent playbackInterruptedByRouteChange](self, "playbackInterruptedByRouteChange")}];
  [v4 setObject:v9 forKeyedSubscript:@"playbackWasInterruptedByRouteChange"];

  v10 = [(HFAnalyticsAnnouncePlaybackEvent *)self routeChangeInterruptionReason];

  if (v10)
  {
    v11 = [(HFAnalyticsAnnouncePlaybackEvent *)self routeChangeInterruptionReason];
    [v4 setObject:v11 forKeyedSubscript:@"routeChangeInterruptionReason"];
  }

  v12 = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackAnnouncementID];

  if (v12)
  {
    v13 = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackAnnouncementID];
    [v4 setObject:v13 forKeyedSubscript:@"playbackAnnouncementID"];
  }

  v14 = [(HFAnalyticsAnnouncePlaybackEvent *)self audioTranscriptionsAreEnabled];
  [v4 setObject:v14 forKeyedSubscript:@"audioTranscriptionsAreEnabled"];

  v15 = [(HFAnalyticsAnnouncePlaybackEvent *)self processName];
  [v4 setObject:v15 forKeyedSubscript:@"processName"];

  return v4;
}

@end