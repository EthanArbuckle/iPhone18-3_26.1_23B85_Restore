@interface MPIdentifierSet(MPCAccumulatorAdditions)
- (uint64_t)mpc_playlistEntryOccurrencePrefix;
@end

@implementation MPIdentifierSet(MPCAccumulatorAdditions)

- (uint64_t)mpc_playlistEntryOccurrencePrefix
{
  universalStore = [self universalStore];
  universalCloudLibraryID = [universalStore universalCloudLibraryID];
  v4 = [universalCloudLibraryID length];

  if (v4)
  {
    universalStore2 = [self universalStore];
    if ([universalStore2 subscriptionAdamID])
    {
    }

    else
    {
      universalStore3 = [self universalStore];
      [universalStore3 adamID];
    }
  }

  return MPContainerUniqueIDPrefix();
}

@end