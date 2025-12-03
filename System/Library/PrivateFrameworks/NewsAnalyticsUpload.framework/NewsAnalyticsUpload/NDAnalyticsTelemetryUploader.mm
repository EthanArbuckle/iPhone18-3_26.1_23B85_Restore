@interface NDAnalyticsTelemetryUploader
- (NDAnalyticsTelemetryUploader)init;
- (void)uploadEnvelopes:(id)envelopes completion:(id)completion;
@end

@implementation NDAnalyticsTelemetryUploader

- (void)uploadEnvelopes:(id)envelopes completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_25BE11458(0, &qword_281475988, 0x277D35468);
  v6 = sub_25BE15198();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = sub_25BE10754;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  TelemetryUploader.uploadEnvelopes(_:completion:)(v6, v8, v7);
  sub_25BE10744(v8);
}

- (NDAnalyticsTelemetryUploader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end