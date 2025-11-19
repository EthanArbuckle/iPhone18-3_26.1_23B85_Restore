@interface HMMTRMutableVendorMetadata
- (id)copyWithZone:(_NSZone *)a3;
- (void)addVendor:(id)a3;
- (void)removeVendorWithID:(id)a3;
@end

@implementation HMMTRMutableVendorMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMTRVendorMetadata allocWithZone:a3];
  v5 = [(HMMTRVendorMetadata *)self version];
  v6 = [(HMMTRVendorMetadata *)self schemaVersion];
  v7 = [(HMMTRVendorMetadata *)v4 initWithVersion:v5 schemaVersion:v6];

  v8 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  [(HMMTRVendorMetadata *)v7 setVendorsByVendorID:v8];

  return v7;
}

- (void)removeVendorWithID:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v6 = [v5 mutableCopy];

  [v6 setObject:0 forKeyedSubscript:v4];
  [(HMMTRVendorMetadata *)self setVendorsByVendorID:v6];
}

- (void)addVendor:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v7 = [v5 mutableCopy];

  v6 = [v4 identifier];
  [v7 setObject:v4 forKeyedSubscript:v6];

  [(HMMTRVendorMetadata *)self setVendorsByVendorID:v7];
}

@end