@interface FBKSFeedbackCount_FrameworkPrivateName
+ (id)fromJSONWithData:(id)data;
+ (void)fetchCountsForFormWithIdentifier:(id)identifier completion:(id)completion;
- (FBKSFeedbackCount_FrameworkPrivateName)init;
- (NSData)asJSON;
@end

@implementation FBKSFeedbackCount_FrameworkPrivateName

- (NSData)asJSON
{
  selfCopy = self;
  v3 = FBKSFeedbackCount.asJSON.getter();
  v5 = v4;

  v6 = sub_1B014CA7C();
  sub_1B00D2024(v3, v5);

  return v6;
}

+ (id)fromJSONWithData:(id)data
{
  dataCopy = data;
  v4 = sub_1B014CA8C();
  v6 = v5;

  v7 = _s15FeedbackService17FBKSFeedbackCountC8fromJSON4dataACSg10Foundation4DataV_tFZ_0();
  sub_1B00D2024(v4, v6);

  return v7;
}

+ (void)fetchCountsForFormWithIdentifier:(id)identifier completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = sub_1B014CC1C();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  _s15FeedbackService17FBKSFeedbackCountC18fetchCountsForForm10identifier10completionySS_yACSg_So7NSErrorCSgtctFZ_0(v5, v7, sub_1B014BD10, v8);
}

- (FBKSFeedbackCount_FrameworkPrivateName)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end