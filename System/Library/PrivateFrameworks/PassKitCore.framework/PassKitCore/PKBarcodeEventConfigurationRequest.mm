@interface PKBarcodeEventConfigurationRequest
- (PKBarcodeEventConfigurationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBarcodeEventConfigurationRequest

- (void)encodeWithCoder:(id)coder
{
  configurationData = self->_configurationData;
  coderCopy = coder;
  [coderCopy encodeObject:configurationData forKey:@"configurationData"];
  [coderCopy encodeInteger:self->_configurationDataType forKey:@"configurationDataType"];
  [coderCopy encodeObject:self->_deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
}

- (PKBarcodeEventConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKBarcodeEventConfigurationRequest;
  v5 = [(PKBarcodeEventConfigurationRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationData"];
    configurationData = v5->_configurationData;
    v5->_configurationData = v6;

    v5->_configurationDataType = [coderCopy decodeIntegerForKey:@"configurationDataType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceAccountIdentifier"];
    deviceAccountIdentifier = v5->_deviceAccountIdentifier;
    v5->_deviceAccountIdentifier = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  configurationDataType = self->_configurationDataType;
  if (configurationDataType > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79CF9F8[configurationDataType];
  }

  return [v3 stringWithFormat:@"<%@: %p; deviceAccountIdentifier: %@, configurationDataType: %@, configurationData: %tu bytes>", v4, self, self->_deviceAccountIdentifier, v6, -[NSData length](self->_configurationData, "length")];
}

@end