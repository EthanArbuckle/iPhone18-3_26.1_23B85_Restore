@interface COMutableDiscoveryRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)addDestinationsFromDiscoveryRecord:(id)record;
- (void)rollConstituent:(id)constituent;
@end

@implementation COMutableDiscoveryRecord

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CODiscoveryRecord alloc];

  return [(CODiscoveryRecord *)v4 initWithDiscoveryRecord:self];
}

- (void)addDestinationsFromDiscoveryRecord:(id)record
{
  recordCopy = record;
  constituent = [(CODiscoveryRecord *)self constituent];
  constituent2 = [recordCopy constituent];
  v6 = [constituent isEqual:constituent2];

  if (v6)
  {
    destinations = [(CODiscoveryRecord *)self destinations];
    v8 = [destinations mutableCopy];

    destinations2 = [recordCopy destinations];
    [v8 unionOrderedSet:destinations2];

    [(CODiscoveryRecord *)self setDestinations:v8];
  }
}

- (void)rollConstituent:(id)constituent
{
  if (constituent)
  {
    [(CODiscoveryRecord *)self setConstituent:?];
  }
}

@end