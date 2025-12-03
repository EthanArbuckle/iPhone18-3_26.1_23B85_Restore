@interface FPBoolean
- (BOOL)isEqual:(id)equal;
- (FPBoolean)initWithBool:(BOOL)bool;
@end

@implementation FPBoolean

- (FPBoolean)initWithBool:(BOOL)bool
{
  v5.receiver = self;
  v5.super_class = FPBoolean;
  result = [(FPBoolean *)&v5 init];
  if (result)
  {
    result->_value = bool;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == equalCopy[8];

  return v5;
}

@end