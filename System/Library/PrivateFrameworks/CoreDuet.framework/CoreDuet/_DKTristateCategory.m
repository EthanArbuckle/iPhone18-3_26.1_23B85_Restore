@interface _DKTristateCategory
+ (id)maybe;
+ (id)no;
+ (id)yes;
@end

@implementation _DKTristateCategory

+ (id)yes
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

+ (id)no
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:0 type:v2];

  return v3;
}

+ (id)maybe
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:-1 type:v2];

  return v3;
}

@end