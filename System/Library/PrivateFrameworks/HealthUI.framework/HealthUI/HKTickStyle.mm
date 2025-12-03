@interface HKTickStyle
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKTickStyle

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = HKTickStyle;
  result = [(HKStrokeStyle *)&v5 copyWithZone:zone];
  *(result + 7) = *&self->_tickLength;
  *(result + 8) = self->_tickDirection;
  return result;
}

@end