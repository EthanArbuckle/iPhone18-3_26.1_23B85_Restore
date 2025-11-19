@interface HMMTRMutableVendorMetadataProduct
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMTRMutableVendorMetadataProduct

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRVendorMetadataProduct allocWithZone:a3];
  v5 = [(HMMTRVendorMetadataProduct *)self identifier];
  v6 = [(HMMTRVendorMetadataProduct *)self categoryNumber];
  v7 = [(HMMTRVendorMetadataProduct *)v4 initWithIdentifier:v5 categoryNumber:v6 isInvalid:[(HMMTRVendorMetadataProduct *)self isInvalid]];

  v8 = [(HMMTRVendorMetadataProduct *)self deviceTypeID];
  [(HMMTRVendorMetadataProduct *)v7 setDeviceTypeID:v8];

  v9 = [(HMMTRVendorMetadataProduct *)self name];
  [(HMMTRVendorMetadataProduct *)v7 setName:v9];

  v10 = [(HMMTRVendorMetadataProduct *)self label];
  [(HMMTRVendorMetadataProduct *)v7 setLabel:v10];

  v11 = [(HMMTRVendorMetadataProduct *)self installationGuideURL];
  [(HMMTRVendorMetadataProduct *)v7 setInstallationGuideURL:v11];

  return v7;
}

@end