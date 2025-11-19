@interface IKCSSMediaQueryExpression
- (id)description;
- (id)expressionAsString;
- (id)valueAsString;
- (void)setKey:(id)a3;
- (void)setStringValue:(id)a3;
@end

@implementation IKCSSMediaQueryExpression

- (void)setKey:(id)a3
{
  v4 = [a3 ik_sharedInstance];
  key = self->_key;
  self->_key = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setStringValue:(id)a3
{
  v4 = [a3 ik_sharedInstance];
  stringValue = self->_stringValue;
  self->_stringValue = v4;

  MEMORY[0x2821F96F8]();
}

- (id)expressionAsString
{
  if (self->_type == 4)
  {
    v2 = self->_key;
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    key = self->_key;
    v5 = [(IKCSSMediaQueryExpression *)self valueAsString];
    v2 = [v3 stringWithFormat:@"%@:%@", key, v5];
  }

  return v2;
}

- (id)valueAsString
{
  type = self->_type;
  switch(type)
  {
    case 3:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f%@", *&self->_doubleValue, self->_dimension];
      goto LABEL_7;
    case 2:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%.3f", *&self->_doubleValue, v5];
      v3 = LABEL_7:;
      break;
    case 1:
      v3 = self->_stringValue;
      break;
    default:
      v3 = &stru_2866C1E60;
      break;
  }

  return v3;
}

- (id)description
{
  type = self->_type;
  v3 = @"(UNKNOWN EXPRESSION TYPE)";
  if (type > 2)
  {
    if (type == 3)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(type=dimension, key=%@, value=%.3f%@)", self->_key, *&self->_doubleValue, self->_dimension];
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_11;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"(type=feature, key=%@)", self->_key, v5, v6];
    }
  }

  else if (type == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(type=string, key=%@, value=%@)", self->_key, self->_stringValue, v6];
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_11;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"(type=double, key=%@, value=%.3f)", self->_key, *&self->_doubleValue, v6];
  }
  v3 = ;
LABEL_11:

  return v3;
}

@end