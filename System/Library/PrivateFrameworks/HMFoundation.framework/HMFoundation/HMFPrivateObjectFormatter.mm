@interface HMFPrivateObjectFormatter
+ (id)defaultFormatter;
- (id)privateStringForObjectValue:(id)value;
@end

@implementation HMFPrivateObjectFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)privateStringForObjectValue:(id)value
{
  valueCopy = value;
  if (objc_opt_respondsToSelector())
  {
    privateDescription = [valueCopy privateDescription];
LABEL_5:
    v5 = privateDescription;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    privateDescription = [valueCopy redactedDescription];
    goto LABEL_5;
  }

  v5 = @"<redacted>";
LABEL_7:

  return v5;
}

@end