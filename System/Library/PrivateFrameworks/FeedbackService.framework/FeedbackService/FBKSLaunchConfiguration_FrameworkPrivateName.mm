@interface FBKSLaunchConfiguration_FrameworkPrivateName
+ (id)fromJSONWithData:(id)data;
- (NSData)asJSON;
- (int64_t)promptStyle;
- (void)setPromptStyle:(int64_t)style;
@end

@implementation FBKSLaunchConfiguration_FrameworkPrivateName

- (NSData)asJSON
{
  selfCopy = self;
  v3 = FBKSLaunchConfiguration.asJSON.getter();
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

  v7 = _s15FeedbackService23FBKSLaunchConfigurationC8fromJSON4dataACSg10Foundation4DataV_tFZ_0();
  sub_1B00D2024(v4, v6);

  return v7;
}

- (int64_t)promptStyle
{
  v3 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPromptStyle:(int64_t)style
{
  v5 = OBJC_IVAR___FBKSLaunchConfiguration_FrameworkPrivateName_promptStyle;
  swift_beginAccess();
  *(self + v5) = style;
}

@end