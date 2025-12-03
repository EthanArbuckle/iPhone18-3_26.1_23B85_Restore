@interface _DKAnyDoubleQuantity
+ (id)withValue:(double)value;
@end

@implementation _DKAnyDoubleQuantity

+ (id)withValue:(double)value
{
  type = [self type];
  v5 = [_DKQuantity quantityWithDouble:type type:value];

  return v5;
}

@end