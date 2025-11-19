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
  v2 = sub_253CD0938();

  return v2;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v2 = self;
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

- (HMDCameraSettingProactiveReaderLogEvent)initWithStartTime:(double)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end