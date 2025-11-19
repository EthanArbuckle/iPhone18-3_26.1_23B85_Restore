@interface HMMTRMutableVendorMetadataVendor
- (id)copyWithZone:(_NSZone *)a3;
- (void)addProduct:(id)a3;
- (void)copyVendorDetailsFromVendor:(id)a3;
- (void)removeProductWithID:(id)a3;
@end

@implementation HMMTRMutableVendorMetadataVendor

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRVendorMetadataVendor allocWithZone:a3];
  v5 = [(HMMTRVendorMetadataVendor *)self identifier];
  v6 = [(HMMTRVendorMetadataVendor *)v4 initWithIdentifier:v5];

  v7 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  [(HMMTRVendorMetadataVendor *)v6 setProductsByProductID:v7];

  v8 = [(HMMTRVendorMetadataVendor *)self name];
  [(HMMTRVendorMetadataVendor *)v6 setName:v8];

  [(HMMTRVendorMetadataVendor *)v6 setInvalid:[(HMMTRVendorMetadataVendor *)self invalid]];
  return v6;
}

- (void)copyVendorDetailsFromVendor:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(HMMTRVendorMetadataVendor *)self setName:v5];

  v6 = [v4 invalid];

  [(HMMTRVendorMetadataVendor *)self setInvalid:v6];
}

- (void)removeProductWithID:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v6 = [v5 mutableCopy];

  [v6 setObject:0 forKeyedSubscript:v4];
  [(HMMTRVendorMetadataVendor *)self setProductsByProductID:v6];
}

- (void)addProduct:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRVendorMetadataVendor *)self productsByProductID];
  v7 = [v5 mutableCopy];

  v6 = [v4 identifier];
  [v7 setObject:v4 forKeyedSubscript:v6];

  [(HMMTRVendorMetadataVendor *)self setProductsByProductID:v7];
}

@end