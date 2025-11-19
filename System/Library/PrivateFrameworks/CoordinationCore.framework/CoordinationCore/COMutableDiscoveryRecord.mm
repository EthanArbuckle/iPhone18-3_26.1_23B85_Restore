@interface COMutableDiscoveryRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)addDestinationsFromDiscoveryRecord:(id)a3;
- (void)rollConstituent:(id)a3;
@end

@implementation COMutableDiscoveryRecord

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CODiscoveryRecord alloc];

  return [(CODiscoveryRecord *)v4 initWithDiscoveryRecord:self];
}

- (void)addDestinationsFromDiscoveryRecord:(id)a3
{
  v10 = a3;
  v4 = [(CODiscoveryRecord *)self constituent];
  v5 = [v10 constituent];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(CODiscoveryRecord *)self destinations];
    v8 = [v7 mutableCopy];

    v9 = [v10 destinations];
    [v8 unionOrderedSet:v9];

    [(CODiscoveryRecord *)self setDestinations:v8];
  }
}

- (void)rollConstituent:(id)a3
{
  if (a3)
  {
    [(CODiscoveryRecord *)self setConstituent:?];
  }
}

@end