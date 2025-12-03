@interface HMMTRMutableVendorMetadata
- (id)copyWithZone:(_NSZone *)zone;
- (void)addVendor:(id)vendor;
- (void)removeVendorWithID:(id)d;
@end

@implementation HMMTRMutableVendorMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMTRVendorMetadata allocWithZone:zone];
  version = [(HMMTRVendorMetadata *)self version];
  schemaVersion = [(HMMTRVendorMetadata *)self schemaVersion];
  v7 = [(HMMTRVendorMetadata *)v4 initWithVersion:version schemaVersion:schemaVersion];

  vendorsByVendorID = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  [(HMMTRVendorMetadata *)v7 setVendorsByVendorID:vendorsByVendorID];

  return v7;
}

- (void)removeVendorWithID:(id)d
{
  dCopy = d;
  vendorsByVendorID = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v6 = [vendorsByVendorID mutableCopy];

  [v6 setObject:0 forKeyedSubscript:dCopy];
  [(HMMTRVendorMetadata *)self setVendorsByVendorID:v6];
}

- (void)addVendor:(id)vendor
{
  vendorCopy = vendor;
  vendorsByVendorID = [(HMMTRVendorMetadata *)self vendorsByVendorID];
  v7 = [vendorsByVendorID mutableCopy];

  identifier = [vendorCopy identifier];
  [v7 setObject:vendorCopy forKeyedSubscript:identifier];

  [(HMMTRVendorMetadata *)self setVendorsByVendorID:v7];
}

@end