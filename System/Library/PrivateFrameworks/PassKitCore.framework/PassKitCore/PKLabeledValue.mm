@interface PKLabeledValue
- (BOOL)isEqual:(id)a3;
- (PKLabeledValue)initWithCoder:(id)a3;
- (PKLabeledValue)initWithLabel:(NSString *)label value:(NSString *)value;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKLabeledValue

- (PKLabeledValue)initWithLabel:(NSString *)label value:(NSString *)value
{
  v6 = label;
  v7 = value;
  v14.receiver = self;
  v14.super_class = PKLabeledValue;
  v8 = [(PKLabeledValue *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_label;
    v8->_label = v9;

    v11 = [(NSString *)v7 copy];
    v12 = v8->_value;
    v8->_value = v11;
  }

  return v8;
}

- (PKLabeledValue)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKLabeledValue;
  v5 = [(PKLabeledValue *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKLVLabel"];
    v7 = [v6 copy];
    label = v5->_label;
    v5->_label = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKLVValue"];
    v10 = [v9 copy];
    value = v5->_value;
    v5->_value = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  label = self->_label;
  v5 = a3;
  [v5 encodeObject:label forKey:@"PKLVLabel"];
  [v5 encodeObject:self->_value forKey:@"PKLVValue"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_12;
  }

  label = self->_label;
  v8 = v6[1];
  if (!label || !v8)
  {
    if (label == v8)
    {
      goto LABEL_8;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (([(NSString *)label isEqual:?]& 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  value = self->_value;
  v10 = v6[2];
  if (value && v10)
  {
    v11 = [(NSString *)value isEqual:?];
  }

  else
  {
    v11 = value == v10;
  }

LABEL_13:

  return v11;
}

@end