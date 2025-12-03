@interface _DKAnyIntegerCategory
+ (id)withValue:(int64_t)value;
@end

@implementation _DKAnyIntegerCategory

+ (id)withValue:(int64_t)value
{
  type = [self type];
  v5 = [_DKCategory categoryWithInteger:value type:type];

  return v5;
}

@end