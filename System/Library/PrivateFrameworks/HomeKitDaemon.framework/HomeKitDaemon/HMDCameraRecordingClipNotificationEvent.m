@interface HMDCameraRecordingClipNotificationEvent
- (HMDCameraRecordingClipNotificationEvent)initWithSessionID:(id)a3 cameraID:(id)a4 sequenceNumber:(unint64_t)a5 recordingEventTriggers:(unint64_t)a6;
- (id)attributeDescriptions;
@end

@implementation HMDCameraRecordingClipNotificationEvent

- (id)attributeDescriptions
{
  v9.receiver = self;
  v9.super_class = HMDCameraRecordingClipNotificationEvent;
  v3 = [(HMDCameraRecordingLogEvent *)&v9 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCameraRecordingClipNotificationEvent recordingEventTriggers](self, "recordingEventTriggers")}];
  v7 = [v5 initWithName:@"recordingEventTriggers" value:v6];
  [v4 addObject:v7];

  return v4;
}

- (HMDCameraRecordingClipNotificationEvent)initWithSessionID:(id)a3 cameraID:(id)a4 sequenceNumber:(unint64_t)a5 recordingEventTriggers:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = HMDCameraRecordingClipNotificationEvent;
  result = [(HMDCameraRecordingLogEvent *)&v8 initWithSessionID:a3 cameraID:a4 sequenceNumber:a5];
  if (result)
  {
    result->_recordingEventTriggers = a6;
  }

  return result;
}

@end