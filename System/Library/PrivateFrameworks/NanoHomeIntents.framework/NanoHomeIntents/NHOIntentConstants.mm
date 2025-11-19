@interface NHOIntentConstants
+ (NSString)appContainerBundleIdentifier;
+ (NSString)widgetBundleIdentifier;
- (NHOIntentConstants)init;
@end

@implementation NHOIntentConstants

+ (NSString)appContainerBundleIdentifier
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)widgetBundleIdentifier
{
  v2 = sub_25B161B24();

  return v2;
}

- (NHOIntentConstants)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NHOIntentConstants *)&v3 init];
}

@end