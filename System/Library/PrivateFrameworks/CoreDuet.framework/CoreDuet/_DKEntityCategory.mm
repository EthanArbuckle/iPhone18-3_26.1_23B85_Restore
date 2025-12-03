@interface _DKEntityCategory
+ (id)value:(int64_t)value;
@end

@implementation _DKEntityCategory

+ (id)value:(int64_t)value
{
  type = [self type];
  v5 = [_DKCategory categoryWithInteger:value type:type];

  return v5;
}

@end