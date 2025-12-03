@interface HMDMutableMediaGroupsParticipantData
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableMediaGroupsParticipantData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDMediaGroupsParticipantData alloc];
  destination = [(HMDMediaGroupsParticipantData *)self destination];
  destinationControllerData = [(HMDMediaGroupsParticipantData *)self destinationControllerData];
  backedUpGroups = [(HMDMediaGroupsParticipantData *)self backedUpGroups];
  v8 = [(HMDMediaGroupsParticipantData *)v4 initWithDestination:destination destinationControllerData:destinationControllerData backedUpGroups:backedUpGroups];

  return v8;
}

@end