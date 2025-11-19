@interface HMDMutableMediaGroupsParticipantData
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableMediaGroupsParticipantData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDMediaGroupsParticipantData alloc];
  v5 = [(HMDMediaGroupsParticipantData *)self destination];
  v6 = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
  v7 = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v8 = [(HMDMediaGroupsParticipantData *)v4 initWithDestination:v5 destinationControllerData:v6 backedUpGroups:v7];

  return v8;
}

@end