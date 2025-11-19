@interface SpotlightEventValidator
+ (BOOL)validate:(id)a3;
@end

@implementation SpotlightEventValidator

+ (BOOL)validate:(id)a3
{
  v3 = a3;
  v4 = sub_249D1AC5C(v3);

  return v4 & 1;
}

@end