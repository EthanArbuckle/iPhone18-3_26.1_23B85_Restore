@interface _DKAnyIntegerCategory
+ (id)withValue:(int64_t)a3;
@end

@implementation _DKAnyIntegerCategory

+ (id)withValue:(int64_t)a3
{
  v4 = [a1 type];
  v5 = [_DKCategory categoryWithInteger:a3 type:v4];

  return v5;
}

@end