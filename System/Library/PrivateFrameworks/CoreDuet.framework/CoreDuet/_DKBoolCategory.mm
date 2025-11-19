@interface _DKBoolCategory
+ (id)no;
+ (id)yes;
@end

@implementation _DKBoolCategory

+ (id)no
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:0 type:v2];

  return v3;
}

+ (id)yes
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

@end