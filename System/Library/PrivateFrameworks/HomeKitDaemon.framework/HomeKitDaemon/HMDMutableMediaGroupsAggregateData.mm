@interface HMDMutableMediaGroupsAggregateData
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableMediaGroupsAggregateData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDMediaGroupsAggregateData alloc];
  destinations = [(HMDMediaGroupsAggregateData *)self destinations];
  destinationControllersData = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  groups = [(HMDMediaGroupsAggregateData *)self groups];
  v8 = [(HMDMediaGroupsAggregateData *)v4 initWithDestinations:destinations destinationControllersData:destinationControllersData groups:groups];

  return v8;
}

@end