@interface SUUIMutableIntegerValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIMutableIntegerValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_integerValue == self->_integerValue;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIntegerValue:self->_integerValue];
  return v4;
}

@end