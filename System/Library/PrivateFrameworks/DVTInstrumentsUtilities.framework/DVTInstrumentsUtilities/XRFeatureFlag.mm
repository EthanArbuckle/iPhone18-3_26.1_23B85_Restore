@interface XRFeatureFlag
+ (BOOL)_runAsAppleInternal;
+ (BOOL)internalSignposts;
- (XRFeatureFlag)init;
@end

@implementation XRFeatureFlag

+ (BOOL)internalSignposts
{
  if (qword_27EE864F8 != -1)
  {
    swift_once();
  }

  v2 = byte_27EE86598;
  v3 = byte_27EE8659A;
  if ([objc_opt_self() isAppleInternal])
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

+ (BOOL)_runAsAppleInternal
{
  if (qword_27EE864F0 != -1)
  {
    swift_once();
  }

  return byte_27EE86562;
}

- (XRFeatureFlag)init
{
  v3.receiver = self;
  v3.super_class = XRFeatureFlag;
  return [(XRFeatureFlag *)&v3 init];
}

@end