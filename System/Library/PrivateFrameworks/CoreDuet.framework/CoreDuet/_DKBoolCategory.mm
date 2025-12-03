@interface _DKBoolCategory
+ (id)no;
+ (id)yes;
@end

@implementation _DKBoolCategory

+ (id)no
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:0 type:type];

  return v3;
}

+ (id)yes
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

@end