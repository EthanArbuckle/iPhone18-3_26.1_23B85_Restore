@interface SGLabeledValue
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLabeledValue:(id)a3;
- (SGLabeledValue)initWithLabel:(id)a3 value:(id)a4;
- (id)description;
@end

@implementation SGLabeledValue

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<SGLabeledValue: %@: %@>", self->_label, self->_value];

  return v2;
}

- (BOOL)isEqualToLabeledValue:(id)a3
{
  v4 = a3;
  v5 = self->_label;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_value;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGLabeledValue *)self isEqualToLabeledValue:v5];
  }

  return v6;
}

- (SGLabeledValue)initWithLabel:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SGLabeledValue;
  v8 = [(SGLabeledValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    label = v8->_label;
    v8->_label = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

@end