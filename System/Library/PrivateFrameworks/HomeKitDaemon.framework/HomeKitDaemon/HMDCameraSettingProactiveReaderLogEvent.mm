@interface HMDCameraSettingProactiveReaderLogEvent
- (HMDCameraSettingProactiveReaderLogEvent)init;
- (HMDCameraSettingProactiveReaderLogEvent)initWithAvailableStreamHandlerCount:(int64_t)a3 inUseStreamHandlerCount:(int64_t)a4;
- (HMDCameraSettingProactiveReaderLogEvent)initWithStartTime:(double)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)coreAnalyticsEventName;
@end

@implementation HMDCameraSettingProactiveReaderLogEvent

- (HMDCameraSettingProactiveReaderLogEvent)initWithAvailableStreamHandlerCount:(int64_t)a3 inUseStreamHandlerCount:(int64_t)a4
{
  *(&self->super.super.isa + OBJC_IVAR___HMDCameraSettingProactiveReaderLogEvent_availableStreamHandlerCount) = a3;
  *(&self->super.super.isa + OBJC_IVAR___HMDCameraSettingProactiveReaderLogEvent_inUseStreamHandlerCount) = a4;
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
  v2 = self;
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

- (HMDCameraSettingProactiveReaderLogEvent)initWithStartTime:(double)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end