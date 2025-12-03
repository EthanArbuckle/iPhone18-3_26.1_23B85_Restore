@interface HMMTRMutableVendorMetadataVendor
- (id)copyWithZone:(_NSZone *)zone;
- (void)addProduct:(id)product;
- (void)copyVendorDetailsFromVendor:(id)vendor;
- (void)removeProductWithID:(id)d;
@end

@implementation HMMTRMutableVendorMetadataVendor

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRVendorMetadataVendor allocWithZone:zone];
  identifier = [(HMMTRVendorMetadataVendor *)self identifier];
  v6 = [(HMMTRVendorMetadataVendor *)v4 initWithIdentifier:identifier];

  productsByProductID = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  [(HMMTRVendorMetadataVendor *)v6 setProductsByProductID:productsByProductID];

  name = [(HMMTRVendorMetadataVendor *)self name];
  [(HMMTRVendorMetadataVendor *)v6 setName:name];

  [(HMMTRVendorMetadataVendor *)v6 setInvalid:[(HMMTRVendorMetadataVendor *)self invalid]];
  return v6;
}

- (void)copyVendorDetailsFromVendor:(id)vendor
{
  vendorCopy = vendor;
  name = [vendorCopy name];
  [(HMMTRVendorMetadataVendor *)self setName:name];

  invalid = [vendorCopy invalid];

  [(HMMTRVendorMetadataVendor *)self setInvalid:invalid];
}

- (void)removeProductWithID:(id)d
{
  dCopy = d;
  productsByProductID = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v6 = [productsByProductID mutableCopy];

  [v6 setObject:0 forKeyedSubscript:dCopy];
  [(HMMTRVendorMetadataVendor *)self setProductsByProductID:v6];
}

- (void)addProduct:(id)product
{
  productCopy = product;
  productsByProductID = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v7 = [productsByProductID mutableCopy];

  identifier = [productCopy identifier];
  [v7 setObject:productCopy forKeyedSubscript:identifier];

  [(HMMTRVendorMetadataVendor *)self setProductsByProductID:v7];
}

@end