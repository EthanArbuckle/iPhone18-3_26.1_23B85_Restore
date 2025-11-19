@interface GKMobileGestalt
+ (NSString)deviceClass;
+ (NSString)productType;
@end

@implementation GKMobileGestalt

+ (NSString)deviceClass
{
  v2 = MGGetStringAnswer();

  return v2;
}

+ (NSString)productType
{
  v2 = MGGetStringAnswer();

  return v2;
}

@end