@interface BLTSectionInfoSyncAlertingSectionState
- (id)description;
@end

@implementation BLTSectionInfoSyncAlertingSectionState

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_state withName:@"state"];
  v5 = [v3 build];

  return v5;
}

@end