@interface ULUpdateConfiguration
- (BOOL)isEqual:(id)equal;
- (ULUpdateConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULUpdateConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  isLowLatency = self->_isLowLatency;

  return [v4 initWithIsLowLatency:isLowLatency];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  isLowLatency = self->_isLowLatency;
  coderCopy = coder;
  v6 = [v3 numberWithBool:isLowLatency];
  [coderCopy encodeObject:v6 forKey:@"isLowLatency"];
}

- (ULUpdateConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULUpdateConfiguration;
  v5 = [(ULUpdateConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isLowLatency"];
    v7 = v6;
    if (v6)
    {
      bOOLValue = [(ULUpdateConfiguration *)v6 BOOLValue];

      v5->_isLowLatency = bOOLValue;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isLowLatency];
  [v6 appendFormat:@", isLowLatency: %@", v7];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isLowLatency = [(ULUpdateConfiguration *)self isLowLatency];
    isLowLatency2 = [v5 isLowLatency];

    v8 = isLowLatency ^ isLowLatency2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end