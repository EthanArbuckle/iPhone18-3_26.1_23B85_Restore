@interface HMDCameraSettingProactiveReaderLogEvent
- (HMDCameraSettingProactiveReaderLogEvent)init;
- (HMDCameraSettingProactiveReaderLogEvent)initWithAvailableStreamHandlerCount:(int64_t)count inUseStreamHandlerCount:(int64_t)handlerCount;
- (HMDCameraSettingProactiveReaderLogEvent)initWithStartTime:(double)time;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
@end

@implementation HMDCameraSettingProactiveReaderLogEvent

- (HMDCameraSettingProactiveReaderLogEvent)initWithAvailableStreamHandlerCount:(int64_t)count inUseStreamHandlerCount:(int64_t)handlerCount
{
  *(&self->super.super.isa + OBJC_IVAR___HMDCameraSettingProactiveReaderLogEvent_availableStreamHandlerCount) = count;
  *(&self->super.super.isa + OBJC_IVAR___HMDCameraSettingProactiveReaderLogEvent_inUseStreamHandlerCount) = handlerCount;
  v5.receiver = self;
  v5.super_class = HMDCameraSettingProactiveReaderLogEvent;
  return [(HMMLogEvent *)&v5 init];
}

- (NSString)coreAnalyticsEventName
{
  v2 = sub_22A4DD5AC();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_229631EFC();

  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v3 = sub_22A4DD47C();

  return v3;
}

- (HMDCameraSettingProactiveReaderLogEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HMDCameraSettingProactiveReaderLogEvent)initWithStartTime:(double)time
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end