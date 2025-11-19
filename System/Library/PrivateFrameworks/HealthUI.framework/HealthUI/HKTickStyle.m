@interface HKTickStyle
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKTickStyle

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = HKTickStyle;
  result = [(HKStrokeStyle *)&v5 copyWithZone:a3];
  *(result + 7) = *&self->_tickLength;
  *(result + 8) = self->_tickDirection;
  return result;
}

@end