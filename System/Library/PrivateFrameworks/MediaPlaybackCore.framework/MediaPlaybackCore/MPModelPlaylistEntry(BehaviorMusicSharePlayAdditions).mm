@interface MPModelPlaylistEntry(BehaviorMusicSharePlayAdditions)
- (id)msp_shortDescription;
@end

@implementation MPModelPlaylistEntry(BehaviorMusicSharePlayAdditions)

- (id)msp_shortDescription
{
  anyObject = [self anyObject];
  msp_shortDescription = [anyObject msp_shortDescription];
  v3 = [msp_shortDescription mutableCopy];

  [v3 insertString:@"PlaylistEntry-" atIndex:1];
  v4 = [v3 copy];

  return v4;
}

@end