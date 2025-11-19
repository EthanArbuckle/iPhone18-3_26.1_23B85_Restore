@interface HFVariableImageIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFVariableImageIconDescriptor)initWithSystemImageNamed:(id)a3 variableValue:(double)a4 configuration:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFVariableImageIconDescriptor

- (HFVariableImageIconDescriptor)initWithSystemImageNamed:(id)a3 variableValue:(double)a4 configuration:(id)a5
{
  v7.receiver = self;
  v7.super_class = HFVariableImageIconDescriptor;
  result = [(HFImageIconDescriptor *)&v7 initWithSystemImageNamed:a3 configuration:a5];
  if (result)
  {
    result->_variableValue = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (v13.receiver = self, v13.super_class = HFVariableImageIconDescriptor, [(HFImageIconDescriptor *)&v13 isEqual:v7]))
  {
    [(HFVariableImageIconDescriptor *)self variableValue];
    v9 = v8;
    [v7 variableValue];
    v11 = v9 == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = HFVariableImageIconDescriptor;
  v3 = [(HFImageIconDescriptor *)&v8 hash];
  v4 = MEMORY[0x277CCABB0];
  [(HFVariableImageIconDescriptor *)self variableValue];
  v5 = [v4 numberWithDouble:?];
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFImageIconDescriptor *)self imageIdentifier];
  v7 = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
  [(HFVariableImageIconDescriptor *)self variableValue];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@, %@ (%f)>", v5, self, v6, v7, v8];

  return v9;
}

@end