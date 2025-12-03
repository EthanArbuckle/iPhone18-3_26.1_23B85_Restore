@interface HFVariableImageIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFVariableImageIconDescriptor)initWithSystemImageNamed:(id)named variableValue:(double)value configuration:(id)configuration;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFVariableImageIconDescriptor

- (HFVariableImageIconDescriptor)initWithSystemImageNamed:(id)named variableValue:(double)value configuration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = HFVariableImageIconDescriptor;
  result = [(HFImageIconDescriptor *)&v7 initWithSystemImageNamed:named configuration:configuration];
  if (result)
  {
    result->_variableValue = value;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
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
  imageIdentifier = [(HFImageIconDescriptor *)self imageIdentifier];
  imageSymbolConfiguration = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
  [(HFVariableImageIconDescriptor *)self variableValue];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@, %@ (%f)>", v5, self, imageIdentifier, imageSymbolConfiguration, v8];

  return v9;
}

@end