@interface HMMTRMutableVendorMetadataProduct
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMTRMutableVendorMetadataProduct

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRVendorMetadataProduct allocWithZone:zone];
  identifier = [(HMMTRVendorMetadataProduct *)self identifier];
  categoryNumber = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  v7 = [(HMMTRVendorMetadataProduct *)v4 initWithIdentifier:identifier categoryNumber:categoryNumber isInvalid:[(HMMTRVendorMetadataProduct *)self isInvalid]];

  deviceTypeID = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
  [(HMMTRVendorMetadataProduct *)v7 setDeviceTypeID:deviceTypeID];

  name = [(HMMTRVendorMetadataProduct *)self name];
  [(HMMTRVendorMetadataProduct *)v7 setName:name];

  label = [(HMMTRVendorMetadataProduct *)self label];
  [(HMMTRVendorMetadataProduct *)v7 setLabel:label];

  installationGuideURL = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
  [(HMMTRVendorMetadataProduct *)v7 setInstallationGuideURL:installationGuideURL];

  return v7;
}

@end