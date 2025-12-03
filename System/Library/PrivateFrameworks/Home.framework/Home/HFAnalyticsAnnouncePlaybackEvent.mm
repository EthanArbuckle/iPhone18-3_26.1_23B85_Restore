@interface HFAnalyticsAnnouncePlaybackEvent
- (HFAnalyticsAnnouncePlaybackEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAnnouncePlaybackEvent

- (HFAnalyticsAnnouncePlaybackEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"playbackDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann_12.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"playbackFailed"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsann_13.isa);
  }

  v7 = [dataCopy objectForKeyedSubscript:@"audioTranscriptionsAreEnabled"];
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
    v10 = [dataCopy objectForKeyedSubscript:@"playbackWasInterruptedByUser"];
    v9->_playbackInterruptedByUser = [v10 BOOLValue];

    v11 = [dataCopy objectForKeyedSubscript:@"recordingWasInterruptedBySystem"];
    v9->_playbackInterruptedBySystem = [v11 BOOLValue];

    v12 = [dataCopy objectForKeyedSubscript:@"playbackWasInterruptedByRouteChange"];
    v9->_playbackInterruptedByRouteChange = [v12 BOOLValue];

    v13 = [dataCopy objectForKeyedSubscript:@"routeChangeInterruptionReason"];
    routeChangeInterruptionReason = v9->_routeChangeInterruptionReason;
    v9->_routeChangeInterruptionReason = v13;

    v15 = [dataCopy objectForKeyedSubscript:@"playbackAnnouncementID"];
    playbackAnnouncementID = v9->_playbackAnnouncementID;
    v9->_playbackAnnouncementID = v15;

    objc_storeStrong(&v9->_audioTranscriptionsAreEnabled, v7);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v9->_processName;
    v9->_processName = processName;
  }

  return v9;
}

- (id)payload
{
  v17.receiver = self;
  v17.super_class = HFAnalyticsAnnouncePlaybackEvent;
  payload = [(HFAnalyticsEvent *)&v17 payload];
  v4 = [payload mutableCopy];

  playbackDuration = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackDuration];
  [v4 setObject:playbackDuration forKeyedSubscript:@"playbackDuration"];

  playbackFailed = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackFailed];
  [v4 setObject:playbackFailed forKeyedSubscript:@"playbackFailed"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnouncePlaybackEvent playbackInterruptedByUser](self, "playbackInterruptedByUser")}];
  [v4 setObject:v7 forKeyedSubscript:@"playbackWasInterruptedByUser"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnouncePlaybackEvent playbackInterruptedBySystem](self, "playbackInterruptedBySystem")}];
  [v4 setObject:v8 forKeyedSubscript:@"playbackWasInterruptedBySystem"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnouncePlaybackEvent playbackInterruptedByRouteChange](self, "playbackInterruptedByRouteChange")}];
  [v4 setObject:v9 forKeyedSubscript:@"playbackWasInterruptedByRouteChange"];

  routeChangeInterruptionReason = [(HFAnalyticsAnnouncePlaybackEvent *)self routeChangeInterruptionReason];

  if (routeChangeInterruptionReason)
  {
    routeChangeInterruptionReason2 = [(HFAnalyticsAnnouncePlaybackEvent *)self routeChangeInterruptionReason];
    [v4 setObject:routeChangeInterruptionReason2 forKeyedSubscript:@"routeChangeInterruptionReason"];
  }

  playbackAnnouncementID = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackAnnouncementID];

  if (playbackAnnouncementID)
  {
    playbackAnnouncementID2 = [(HFAnalyticsAnnouncePlaybackEvent *)self playbackAnnouncementID];
    [v4 setObject:playbackAnnouncementID2 forKeyedSubscript:@"playbackAnnouncementID"];
  }

  audioTranscriptionsAreEnabled = [(HFAnalyticsAnnouncePlaybackEvent *)self audioTranscriptionsAreEnabled];
  [v4 setObject:audioTranscriptionsAreEnabled forKeyedSubscript:@"audioTranscriptionsAreEnabled"];

  processName = [(HFAnalyticsAnnouncePlaybackEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  return v4;
}

@end