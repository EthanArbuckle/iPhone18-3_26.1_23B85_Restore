@interface MPIdentifierSet(MPCAccumulatorAdditions)
- (uint64_t)mpc_playlistEntryOccurrencePrefix;
@end

@implementation MPIdentifierSet(MPCAccumulatorAdditions)

- (uint64_t)mpc_playlistEntryOccurrencePrefix
{
  v2 = [a1 universalStore];
  v3 = [v2 universalCloudLibraryID];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [a1 universalStore];
    if ([v5 subscriptionAdamID])
    {
    }

    else
    {
      v6 = [a1 universalStore];
      [v6 adamID];
    }
  }

  return MPContainerUniqueIDPrefix();
}

@end