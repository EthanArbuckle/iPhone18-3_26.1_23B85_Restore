@interface NSDate(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
- (id)cmsCoded;
@end

@implementation NSDate(CMSCoding)

- (id)cmsCoded
{
  v2 = cmsDateFormatter();
  v3 = [v2 stringFromDate:a1];

  return v3;
}

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = a3;
  v4 = cmsDateFormatter();
  v5 = [v4 dateFromString:v3];

  return v5;
}

@end