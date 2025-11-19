@interface UARPAccessoryMetadata
- (UARPAccessoryMetadata)initWithCoder:(id)a3;
- (UARPAccessoryMetadata)initWithProductGroup:(id)a3 productNumber:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPAccessoryMetadata

- (UARPAccessoryMetadata)initWithProductGroup:(id)a3 productNumber:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UARPAccessoryMetadata;
  v9 = [(UARPAccessoryMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_productGroup, a3);
    objc_storeStrong(&v10->_productNumber, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UARPAccessoryMetadata alloc] initWithProductGroup:self->_productGroup productNumber:self->_productNumber];
  [(UARPAccessoryMetadata *)v4 setVendorName:self->_vendorName];
  [(UARPAccessoryMetadata *)v4 setCompanyLegalName:self->_companyLegalName];
  [(UARPAccessoryMetadata *)v4 setCompanyPreferredName:self->_companyPreferredName];
  [(UARPAccessoryMetadata *)v4 setAccessoryMarketingName:self->_accessoryMarketingName];
  [(UARPAccessoryMetadata *)v4 setAccessoryProductLabel:self->_accessoryProductLabel];
  [(UARPAccessoryMetadata *)v4 setAccessoryInstallationGuideURL:self->_accessoryInstallationGuideURL];
  [(UARPAccessoryMetadata *)v4 setAccessoryCategoryNumber:self->_accessoryCategoryNumber];
  [(UARPAccessoryMetadata *)v4 setAccessoryCapability:self->_accessoryCapability];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  productGroup = self->_productGroup;
  v5 = a3;
  [v5 encodeObject:productGroup forKey:@"productGroup"];
  [v5 encodeObject:self->_productNumber forKey:@"productNumber"];
  [v5 encodeObject:self->_vendorName forKey:@"vendorName"];
  [v5 encodeObject:self->_companyLegalName forKey:@"companyLegalName"];
  [v5 encodeObject:self->_companyPreferredName forKey:@"companyPreferredName"];
  [v5 encodeObject:self->_accessoryMarketingName forKey:@"accessoryMarketingName"];
  [v5 encodeObject:self->_accessoryProductLabel forKey:@"accessoryProductLabel"];
  [v5 encodeObject:self->_accessoryInstallationGuideURL forKey:@"accessoryInstallationGuideURL"];
  [v5 encodeInteger:self->_accessoryCategoryNumber forKey:@"accessoryCategoryNumber"];
  [v5 encodeInteger:self->_accessoryCapability forKey:@"accessoryCapability"];
}

- (UARPAccessoryMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productGroup"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productNumber"];
  v7 = [(UARPAccessoryMetadata *)self initWithProductGroup:v5 productNumber:v6];
  if (v7)
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v7->_vendorName;
    v7->_vendorName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companyLegalName"];
    companyLegalName = v7->_companyLegalName;
    v7->_companyLegalName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companyPreferredName"];
    companyPreferredName = v7->_companyPreferredName;
    v7->_companyPreferredName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryMarketingName"];
    accessoryMarketingName = v7->_accessoryMarketingName;
    v7->_accessoryMarketingName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProductLabel"];
    accessoryProductLabel = v7->_accessoryProductLabel;
    v7->_accessoryProductLabel = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryInstallationGuideURL"];
    accessoryInstallationGuideURL = v7->_accessoryInstallationGuideURL;
    v7->_accessoryInstallationGuideURL = v18;

    v7->_accessoryCategoryNumber = [v4 decodeIntegerForKey:@"accessoryCategoryNumber"];
    v7->_accessoryCapability = [v4 decodeIntegerForKey:@"accessoryCapability"];
  }

  return v7;
}

@end