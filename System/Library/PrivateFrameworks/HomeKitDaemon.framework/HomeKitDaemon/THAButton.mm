@interface THAButton
- (BOOL)isEqual:(id)equal;
- (THAButton)initWithType:(unint64_t)type identifier:(unsigned __int8)identifier;
@end

@implementation THAButton

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (v5 && (v6 = [(THAButton *)self identifier], v6 == [(THAButton *)v5 identifier]))
      {
        type = [(THAButton *)self type];
        v8 = type == [(THAButton *)v5 type];
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

- (THAButton)initWithType:(unint64_t)type identifier:(unsigned __int8)identifier
{
  v7.receiver = self;
  v7.super_class = THAButton;
  result = [(THAButton *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_identifier = identifier;
  }

  return result;
}

@end