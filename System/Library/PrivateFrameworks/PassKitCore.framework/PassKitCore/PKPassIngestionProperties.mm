@interface PKPassIngestionProperties
- (PKPassIngestionProperties)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHasCustomizedSettings:(BOOL)a3;
- (void)setSettings:(unint64_t)a3;
@end

@implementation PKPassIngestionProperties

- (void)setHasCustomizedSettings:(BOOL)a3
{
  if (self->_hasCustomizedSettings == !a3)
  {
    self->_hasCustomizedSettings = a3;
    if (!a3)
    {
      self->_settings = 0;
    }
  }
}

- (void)setSettings:(unint64_t)a3
{
  if (self->_settings != a3)
  {
    self->_settings = a3;
    self->_hasCustomizedSettings = 1;
  }
}

- (PKPassIngestionProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassIngestionProperties;
  v5 = [(PKPassIngestionProperties *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMetadata"];
    provisioningMetadata = v5->_provisioningMetadata;
    v5->_provisioningMetadata = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasCustomizedSettings"];
    v5->_hasCustomizedSettings = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settings"];
    v5->_settings = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  provisioningMetadata = self->_provisioningMetadata;
  v5 = a3;
  [v5 encodeObject:provisioningMetadata forKey:@"provisioningMetadata"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasCustomizedSettings];
  [v5 encodeObject:v6 forKey:@"hasCustomizedSettings"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settings];
  [v5 encodeObject:v7 forKey:@"settings"];
}

@end