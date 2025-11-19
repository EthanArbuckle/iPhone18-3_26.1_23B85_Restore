@interface FPBoolean
- (BOOL)isEqual:(id)a3;
- (FPBoolean)initWithBool:(BOOL)a3;
@end

@implementation FPBoolean

- (FPBoolean)initWithBool:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FPBoolean;
  result = [(FPBoolean *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_value == v4[8];

  return v5;
}

@end