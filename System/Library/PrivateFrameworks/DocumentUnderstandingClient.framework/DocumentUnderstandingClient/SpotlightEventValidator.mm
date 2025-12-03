@interface SpotlightEventValidator
+ (BOOL)validate:(id)validate;
@end

@implementation SpotlightEventValidator

+ (BOOL)validate:(id)validate
{
  validateCopy = validate;
  v4 = sub_249D1AC5C(validateCopy);

  return v4 & 1;
}

@end