@interface HMDMutableMediaGroupsAggregateData
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableMediaGroupsAggregateData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDMediaGroupsAggregateData alloc];
  v5 = [(HMDMediaGroupsAggregateData *)self destinations];
  v6 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v7 = [(HMDMediaGroupsAggregateData *)self groups];
  v8 = [(HMDMediaGroupsAggregateData *)v4 initWithDestinations:v5 destinationControllersData:v6 groups:v7];

  return v8;
}

@end