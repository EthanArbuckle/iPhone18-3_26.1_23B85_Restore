@interface HFAnalyticsAnnounceRecordingEvent
- (HFAnalyticsAnnounceRecordingEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAnnounceRecordingEvent

- (HFAnalyticsAnnounceRecordingEvent)initWithData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"announceRecordingDuration"];
  if (!v5)
  {
    NSLog(&cfstr_Hfanalyticsann_9.isa);
  }

  v6 = [dataCopy objectForKeyedSubscript:@"recordingFailed"];
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
    v9 = [dataCopy objectForKeyedSubscript:@"announceRecordingIsForHome"];
    announceRecordingIsForHome = v8->_announceRecordingIsForHome;
    v8->_announceRecordingIsForHome = v9;

    v11 = [dataCopy objectForKeyedSubscript:@"announceRecordingIsForRoom"];
    announceRecordingIsForRoom = v8->_announceRecordingIsForRoom;
    v8->_announceRecordingIsForRoom = v11;

    v13 = [dataCopy objectForKeyedSubscript:@"recordingWasInterruptedByUser"];
    v8->_recordingInterruptedByUser = [v13 BOOLValue];

    v14 = [dataCopy objectForKeyedSubscript:@"recordingWasInterruptedBySystem"];
    v8->_recordingInterruptedBySystem = [v14 BOOLValue];

    v15 = [dataCopy objectForKeyedSubscript:@"recordingWasInterruptedByRouteChange"];
    v8->_recordingInterruptedByRouteChange = [v15 BOOLValue];

    v16 = [dataCopy objectForKeyedSubscript:@"isAReply"];
    v8->_isAReply = [v16 BOOLValue];

    v17 = [dataCopy objectForKeyedSubscript:@"routeChangeInterruptionReason"];
    routeChangeInterruptionReason = v8->_routeChangeInterruptionReason;
    v8->_routeChangeInterruptionReason = v17;

    v19 = [dataCopy objectForKeyedSubscript:@"recipientAnnouncementID"];
    recipientAnnouncementID = v8->_recipientAnnouncementID;
    v8->_recipientAnnouncementID = v19;

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v8->_processName;
    v8->_processName = processName;
  }

  return v8;
}

- (id)payload
{
  v21.receiver = self;
  v21.super_class = HFAnalyticsAnnounceRecordingEvent;
  payload = [(HFAnalyticsEvent *)&v21 payload];
  v4 = [payload mutableCopy];

  recordingDuration = [(HFAnalyticsAnnounceRecordingEvent *)self recordingDuration];
  [v4 setObject:recordingDuration forKeyedSubscript:@"recordingDuration"];

  recordingFailed = [(HFAnalyticsAnnounceRecordingEvent *)self recordingFailed];
  [v4 setObject:recordingFailed forKeyedSubscript:@"recordingFailed"];

  announceRecordingIsForHome = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForHome];

  if (announceRecordingIsForHome)
  {
    announceRecordingIsForHome2 = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForHome];
    [v4 setObject:announceRecordingIsForHome2 forKeyedSubscript:@"announceRecordingIsForHome"];
  }

  announceRecordingIsForRoom = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForRoom];

  if (announceRecordingIsForRoom)
  {
    announceRecordingIsForRoom2 = [(HFAnalyticsAnnounceRecordingEvent *)self announceRecordingIsForRoom];
    [v4 setObject:announceRecordingIsForRoom2 forKeyedSubscript:@"announceRecordingIsForRoom"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent recordingInterruptedByUser](self, "recordingInterruptedByUser")}];
  [v4 setObject:v11 forKeyedSubscript:@"recordingWasInterruptedByUser"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent recordingInterruptedBySystem](self, "recordingInterruptedBySystem")}];
  [v4 setObject:v12 forKeyedSubscript:@"recordingWasInterruptedBySystem"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent recordingInterruptedByRouteChange](self, "recordingInterruptedByRouteChange")}];
  [v4 setObject:v13 forKeyedSubscript:@"recordingWasInterruptedByRouteChange"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAnnounceRecordingEvent isAReply](self, "isAReply")}];
  [v4 setObject:v14 forKeyedSubscript:@"recordingIsAReply"];

  routeChangeInterruptionReason = [(HFAnalyticsAnnounceRecordingEvent *)self routeChangeInterruptionReason];

  if (routeChangeInterruptionReason)
  {
    routeChangeInterruptionReason2 = [(HFAnalyticsAnnounceRecordingEvent *)self routeChangeInterruptionReason];
    [v4 setObject:routeChangeInterruptionReason2 forKeyedSubscript:@"routeChangeInterruptionReason"];
  }

  recipientAnnouncementID = [(HFAnalyticsAnnounceRecordingEvent *)self recipientAnnouncementID];

  if (recipientAnnouncementID)
  {
    recipientAnnouncementID2 = [(HFAnalyticsAnnounceRecordingEvent *)self recipientAnnouncementID];
    [v4 setObject:recipientAnnouncementID2 forKeyedSubscript:@"recipientAnnouncementID"];
  }

  processName = [(HFAnalyticsAnnounceRecordingEvent *)self processName];
  [v4 setObject:processName forKeyedSubscript:@"processName"];

  return v4;
}

@end