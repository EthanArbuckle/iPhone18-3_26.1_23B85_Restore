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
  v2 = sub_253CD0938();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  selfCopy = self;
  sub_25327828C();

  sub_253200644(0, &qword_281530D00, 0x277D82BB8);
  v3 = sub_253CD08B8();

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