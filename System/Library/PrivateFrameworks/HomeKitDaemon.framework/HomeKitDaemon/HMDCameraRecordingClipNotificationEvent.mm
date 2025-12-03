@interface HMDCameraRecordingClipNotificationEvent
- (HMDCameraRecordingClipNotificationEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number recordingEventTriggers:(unint64_t)triggers;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingClipNotificationEvent

- (id)attributeDescriptions
{
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingClipNotificationEvent;
  attributeDescriptions = [(HMDCameraRecordingLogEvent *)&v9 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingClipNotificationEvent recordingEventTriggers](self, "recordingEventTriggers")}];
  v7 = [v5 initWithName:@"recordingEventTriggers" value:v6];
  [v4 addObject:v7];

  return v4;
}

- (HMDCameraRecordingClipNotificationEvent)initWithSessionID:(id)d cameraID:(id)iD sequenceNumber:(unint64_t)number recordingEventTriggers:(unint64_t)triggers
{
  v8.receiver = self;
  v8.super_class = HMDCameraRecordingClipNotificationEvent;
  result = [(HMDCameraRecordingLogEvent *)&v8 initWithSessionID:d cameraID:iD sequenceNumber:number];
  if (result)
  {
    result->_recordingEventTriggers = triggers;
  }

  return result;
}

@end