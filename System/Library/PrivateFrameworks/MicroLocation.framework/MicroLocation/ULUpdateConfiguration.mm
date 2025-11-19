@interface ULUpdateConfiguration
- (BOOL)isEqual:(id)a3;
- (ULUpdateConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULUpdateConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  isLowLatency = self->_isLowLatency;

  return [v4 initWithIsLowLatency:isLowLatency];
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  isLowLatency = self->_isLowLatency;
  v5 = a3;
  v6 = [v3 numberWithBool:isLowLatency];
  [v5 encodeObject:v6 forKey:@"isLowLatency"];
}

- (ULUpdateConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULUpdateConfiguration;
  v5 = [(ULUpdateConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isLowLatency"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULUpdateConfiguration *)v6 BOOLValue];

      v5->_isLowLatency = v8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULUpdateConfiguration *)self isLowLatency];
    v7 = [v5 isLowLatency];

    v8 = v6 ^ v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end