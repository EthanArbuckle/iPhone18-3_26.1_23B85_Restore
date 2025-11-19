@interface MPModelPlaylistEntry(BehaviorMusicSharePlayAdditions)
- (id)msp_shortDescription;
@end

@implementation MPModelPlaylistEntry(BehaviorMusicSharePlayAdditions)

- (id)msp_shortDescription
{
  v1 = [a1 anyObject];
  v2 = [v1 msp_shortDescription];
  v3 = [v2 mutableCopy];

  [v3 insertString:@"PlaylistEntry-" atIndex:1];
  v4 = [v3 copy];

  return v4;
}

@end