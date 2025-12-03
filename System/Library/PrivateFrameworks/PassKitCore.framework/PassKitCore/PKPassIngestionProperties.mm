@interface PKPassIngestionProperties
- (PKPassIngestionProperties)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setHasCustomizedSettings:(BOOL)settings;
- (void)setSettings:(unint64_t)settings;
@end

@implementation PKPassIngestionProperties

- (void)setHasCustomizedSettings:(BOOL)settings
{
  if (self->_hasCustomizedSettings == !settings)
  {
    self->_hasCustomizedSettings = settings;
    if (!settings)
    {
      self->_settings = 0;
    }
  }
}

- (void)setSettings:(unint64_t)settings
{
  if (self->_settings != settings)
  {
    self->_settings = settings;
    self->_hasCustomizedSettings = 1;
  }
}

- (PKPassIngestionProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassIngestionProperties;
  v5 = [(PKPassIngestionProperties *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMetadata"];
    provisioningMetadata = v5->_provisioningMetadata;
    v5->_provisioningMetadata = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasCustomizedSettings"];
    v5->_hasCustomizedSettings = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settings"];
    v5->_settings = [v9 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  provisioningMetadata = self->_provisioningMetadata;
  coderCopy = coder;
  [coderCopy encodeObject:provisioningMetadata forKey:@"provisioningMetadata"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasCustomizedSettings];
  [coderCopy encodeObject:v6 forKey:@"hasCustomizedSettings"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settings];
  [coderCopy encodeObject:v7 forKey:@"settings"];
}

@end