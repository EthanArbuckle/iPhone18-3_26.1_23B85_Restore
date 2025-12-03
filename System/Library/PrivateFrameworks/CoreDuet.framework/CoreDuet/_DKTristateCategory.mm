@interface _DKTristateCategory
+ (id)maybe;
+ (id)no;
+ (id)yes;
@end

@implementation _DKTristateCategory

+ (id)yes
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

+ (id)no
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:0 type:type];

  return v3;
}

+ (id)maybe
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:-1 type:type];

  return v3;
}

@end