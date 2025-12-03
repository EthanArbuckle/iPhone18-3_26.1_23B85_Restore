@interface PKPassProvisioningMetadata
- (PKPassProvisioningMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassProvisioningMetadata

- (PKPassProvisioningMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassProvisioningMetadata;
  v5 = [(PKPassProvisioningMetadata *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceDeviceType"];
    v5->_sourceDeviceType = PKPassProvisioningMetadataSourceDeviceTypeFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSourceDeviceDescription"];
    localizedSourceDeviceDescription = v5->_localizedSourceDeviceDescription;
    v5->_localizedSourceDeviceDescription = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_sourceDeviceType == 1)
  {
    v4 = @"transfer";
  }

  else
  {
    v4 = @"none";
  }

  coderCopy = coder;
  [coderCopy encodeObject:v4 forKey:@"sourceDeviceType"];
  [coderCopy encodeObject:self->_localizedSourceDeviceDescription forKey:@"localizedSourceDeviceDescription"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(PKPassProvisioningMetadata);
  v5->_sourceDeviceType = self->_sourceDeviceType;
  v6 = [(NSString *)self->_localizedSourceDeviceDescription copyWithZone:zone];
  localizedSourceDeviceDescription = v5->_localizedSourceDeviceDescription;
  v5->_localizedSourceDeviceDescription = v6;

  return v5;
}

@end