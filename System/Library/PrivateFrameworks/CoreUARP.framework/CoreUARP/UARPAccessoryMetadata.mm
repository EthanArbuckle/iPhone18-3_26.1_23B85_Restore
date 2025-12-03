@interface UARPAccessoryMetadata
- (UARPAccessoryMetadata)initWithCoder:(id)coder;
- (UARPAccessoryMetadata)initWithProductGroup:(id)group productNumber:(id)number;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPAccessoryMetadata

- (UARPAccessoryMetadata)initWithProductGroup:(id)group productNumber:(id)number
{
  groupCopy = group;
  numberCopy = number;
  v12.receiver = self;
  v12.super_class = UARPAccessoryMetadata;
  v9 = [(UARPAccessoryMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_productGroup, group);
    objc_storeStrong(&v10->_productNumber, number);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  productGroup = self->_productGroup;
  coderCopy = coder;
  [coderCopy encodeObject:productGroup forKey:@"productGroup"];
  [coderCopy encodeObject:self->_productNumber forKey:@"productNumber"];
  [coderCopy encodeObject:self->_vendorName forKey:@"vendorName"];
  [coderCopy encodeObject:self->_companyLegalName forKey:@"companyLegalName"];
  [coderCopy encodeObject:self->_companyPreferredName forKey:@"companyPreferredName"];
  [coderCopy encodeObject:self->_accessoryMarketingName forKey:@"accessoryMarketingName"];
  [coderCopy encodeObject:self->_accessoryProductLabel forKey:@"accessoryProductLabel"];
  [coderCopy encodeObject:self->_accessoryInstallationGuideURL forKey:@"accessoryInstallationGuideURL"];
  [coderCopy encodeInteger:self->_accessoryCategoryNumber forKey:@"accessoryCategoryNumber"];
  [coderCopy encodeInteger:self->_accessoryCapability forKey:@"accessoryCapability"];
}

- (UARPAccessoryMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productGroup"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productNumber"];
  v7 = [(UARPAccessoryMetadata *)self initWithProductGroup:v5 productNumber:v6];
  if (v7)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v7->_vendorName;
    v7->_vendorName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companyLegalName"];
    companyLegalName = v7->_companyLegalName;
    v7->_companyLegalName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companyPreferredName"];
    companyPreferredName = v7->_companyPreferredName;
    v7->_companyPreferredName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryMarketingName"];
    accessoryMarketingName = v7->_accessoryMarketingName;
    v7->_accessoryMarketingName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryProductLabel"];
    accessoryProductLabel = v7->_accessoryProductLabel;
    v7->_accessoryProductLabel = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryInstallationGuideURL"];
    accessoryInstallationGuideURL = v7->_accessoryInstallationGuideURL;
    v7->_accessoryInstallationGuideURL = v18;

    v7->_accessoryCategoryNumber = [coderCopy decodeIntegerForKey:@"accessoryCategoryNumber"];
    v7->_accessoryCapability = [coderCopy decodeIntegerForKey:@"accessoryCapability"];
  }

  return v7;
}

@end