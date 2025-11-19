@interface HFAnalyticsAnnounceRecordingEvent
- (HFAnalyticsAnnounceRecordingEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAnnounceRecordingEvent

- (HFAnalyticsAnnounceRecordingEvent)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"announceRecordingDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann_9.isa);
  }

  v6 = [v4 objectForKeyedSubscript:@"recordingFailed"];
  if (!v6)
  {
    NSLog(&cfstr_Hfanalyticsann_10.isa);
  }

  v25.receiver = self;
  v25.super_class = HFAnalyticsAnnounceRecordingEvent;
  v7 = [(HFAnalyticsEvent *)&v25 initWithEventType:18];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_recordingDuration, v5);
    objc_storeStrong(&v8->_recordingFailed, v6);
    v9 = [v4 objectForKeyedSubscript:@"announceRecordingIsForHome"];
    announceRecordingIsForHome = v8->_announceRecordingIsForHome;
    v8->_announceRecordingIsForHome = v9;

    v11 = [v4 objectForKeyedSubscript:@"announceRecordingIsForRoom"];
    announceRecordingIsForRoom = v8->_announceRecordingIsForRoom;
    v8->_announceRecordingIsForRoom = v11;

    v13 = [v4 objectForKeyedSubscript:@"recordingWasInterruptedByUser"];
    v8->_recordingInterruptedByUser = [v13 BOOLValue];

    v14 = [v4 objectForKeyedSubscript:@"recordingWasInterruptedBySystem"];
    v8->_recordingInterruptedBySystem = [v14 BOOLValue];

    v15 = [v4 objectForKeyedSubscript:@"recordingWasInterruptedByRouteChange"];
    v8->_recordingInterruptedByRouteChange = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"isAReply"];
    v8->_isAReply = [v16 BOOLValue];

    v17 = [v4 objectForKeyedSubscript:@"routeChangeInterruptionReason"];
    routeChangeInterruptionReason = v8->_routeChangeInterruptionReason;
    v8->_routeChangeInterruptionReason = v17;

    v19 = [v4 objectForKeyedSubscript:@"recipientAnnouncementID"];
    recipientAnnouncementID = v8->_recipientAnnouncementID;
    v8->_recipientAnnouncementID = v19;

    v21 = [MEMORY[0x277CCAC38] processInfo];
    v22 = [v21 processName];
    processName = v8->_processName;
    v8->_processName = v22;
  }

  return v8;
}

- (id)payload
{
  v21.receiver = self;
  v21.super_class = HFAnalyticsAnnounceRecordingEvent;
  v3 = [(HFAnalyticsEvent *)&v21 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsAnnounceRecordingEvent *)self recordingDuration];
  [v4 setObject:v5 forKeyedSubscript:@"recordingDuration"];

  v6 = [(HFAnalyticsAnnounceRecordingEvent *)self recordingFailed];
  [v4 setObject:v6 forKeyedSubscript:@"recordingFailed"];

  v7 = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForHome];

  if (v7)
  {
    v8 = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForHome];
    [v4 setObject:v8 forKeyedSubscript:@"announceRecordingIsForHome"];
  }

  v9 = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForRoom];

  if (v9)
  {
    v10 = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForRoom];
    [v4 setObject:v10 forKeyedSubscript:@"announceRecordingIsForRoom"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent recordingInterruptedByUser](self, "recordingInterruptedByUser")}];
  [v4 setObject:v11 forKeyedSubscript:@"recordingWasInterruptedByUser"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent recordingInterruptedBySystem](self, "recordingInterruptedBySystem")}];
  [v4 setObject:v12 forKeyedSubscript:@"recordingWasInterruptedBySystem"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent recordingInterruptedByRouteChange](self, "recordingInterruptedByRouteChange")}];
  [v4 setObject:v13 forKeyedSubscript:@"recordingWasInterruptedByRouteChange"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent isAReply](self, "isAReply")}];
  [v4 setObject:v14 forKeyedSubscript:@"recordingIsAReply"];

  v15 = [(HFAnalyticsAnnounceRecordingEvent *)self routeChangeInterruptionReason];

  if (v15)
  {
    v16 = [(HFAnalyticsAnnounceRecordingEvent *)self routeChangeInterruptionReason];
    [v4 setObject:v16 forKeyedSubscript:@"routeChangeInterruptionReason"];
  }

  v17 = [(HFAnalyticsAnnounceRecordingEvent *)self recipientAnnouncementID];

  if (v17)
  {
    v18 = [(HFAnalyticsAnnounceRecordingEvent *)self recipientAnnouncementID];
    [v4 setObject:v18 forKeyedSubscript:@"recipientAnnouncementID"];
  }

  v19 = [(HFAnalyticsAnnounceRecordingEvent *)self processName];
  [v4 setObject:v19 forKeyedSubscript:@"processName"];

  return v4;
}

@end