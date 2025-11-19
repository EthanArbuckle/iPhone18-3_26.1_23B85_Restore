@interface UIShareFeature
+ (UIShareFeatureState)coOwners;
@end

@implementation UIShareFeature

+ (UIShareFeatureState)coOwners
{
  if (qword_1000602E8 != -1)
  {
    sub_10002C8F0();
  }

  v3 = qword_1000602E0;

  return v3;
}

@end