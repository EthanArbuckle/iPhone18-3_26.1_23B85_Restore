@interface PKPassProvisioningMetadata
- (PKPassProvisioningMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassProvisioningMetadata

- (PKPassProvisioningMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassProvisioningMetadata;
  v5 = [(PKPassProvisioningMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceDeviceType"];
    v5->_sourceDeviceType = PKPassProvisioningMetadataSourceDeviceTypeFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSourceDeviceDescription"];
    localizedSourceDeviceDescription = v5->_localizedSourceDeviceDescription;
    v5->_localizedSourceDeviceDescription = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_sourceDeviceType == 1)
  {
    v4 = @"transfer";
  }

  else
  {
    v4 = @"none";
  }

  v5 = a3;
  [v5 encodeObject:v4 forKey:@"sourceDeviceType"];
  [v5 encodeObject:self->_localizedSourceDeviceDescription forKey:@"localizedSourceDeviceDescription"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(PKPassProvisioningMetadata);
  v5->_sourceDeviceType = self->_sourceDeviceType;
  v6 = [(NSString *)self->_localizedSourceDeviceDescription copyWithZone:a3];
  localizedSourceDeviceDescription = v5->_localizedSourceDeviceDescription;
  v5->_localizedSourceDeviceDescription = v6;

  return v5;
}

@end