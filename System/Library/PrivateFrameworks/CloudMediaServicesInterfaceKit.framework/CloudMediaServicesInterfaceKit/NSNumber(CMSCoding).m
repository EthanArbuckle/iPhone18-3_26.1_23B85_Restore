@interface NSNumber(CMSCoding)
+ (id)instanceFromCMSCoded:()CMSCoding;
@end

@implementation NSNumber(CMSCoding)

+ (id)instanceFromCMSCoded:()CMSCoding
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end