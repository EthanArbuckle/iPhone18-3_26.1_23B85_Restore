@interface HMFPrivateObjectFormatter
+ (id)defaultFormatter;
- (id)privateStringForObjectValue:(id)a3;
@end

@implementation HMFPrivateObjectFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)privateStringForObjectValue:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 privateDescription];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 redactedDescription];
    goto LABEL_5;
  }

  v5 = @"<redacted>";
LABEL_7:

  return v5;
}

@end