@interface CKBalloonTextViewConfiguration
+ (id)defaultConfiguration;
- (CKBalloonTextViewConfiguration)init;
@end

@implementation CKBalloonTextViewConfiguration

+ (id)defaultConfiguration
{
  sharedFeatureFlags = [objc_opt_self() sharedFeatureFlags];
  isExpressiveTextEnabled = [sharedFeatureFlags isExpressiveTextEnabled];
  v4 = type metadata accessor for BalloonTextViewConfiguration();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR___CKBalloonTextViewConfiguration_expressiveTextEnabled] = isExpressiveTextEnabled;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

- (CKBalloonTextViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end