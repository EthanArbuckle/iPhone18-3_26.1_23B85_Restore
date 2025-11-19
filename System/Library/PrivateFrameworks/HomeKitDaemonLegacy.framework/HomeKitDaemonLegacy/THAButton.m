@interface THAButton
- (BOOL)isEqual:(id)a3;
- (THAButton)initWithType:(unint64_t)a3 identifier:(unsigned __int8)a4;
@end

@implementation THAButton

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (v5 && (v6 = [(THAButton *)self identifier], v6 == [(THAButton *)v5 identifier]))
      {
        v7 = [(THAButton *)self type];
        v8 = v7 == [(THAButton *)v5 type];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (THAButton)initWithType:(unint64_t)a3 identifier:(unsigned __int8)a4
{
  v7.receiver = self;
  v7.super_class = THAButton;
  result = [(THAButton *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_identifier = a4;
  }

  return result;
}

@end