@interface MusicKit_SoftLinking_MPMediaLibrary(MusicKit_SoftLinking_FilteringSupport)
- (uint64_t)filterAvailableContentGroups:()MusicKit_SoftLinking_FilteringSupport withOptions:;
@end

@implementation MusicKit_SoftLinking_MPMediaLibrary(MusicKit_SoftLinking_FilteringSupport)

- (uint64_t)filterAvailableContentGroups:()MusicKit_SoftLinking_FilteringSupport withOptions:
{
  v6 = [MEMORY[0x1E69775F8] _underlyingContentGroupsForSoftLinkingContentGroups:?];
  v7 = [MEMORY[0x1E69775F8] _underlyingFilteringOptionsForSoftLinkingFilteringOptions:a4];
  v8 = [a1 _underlyingMediaLibrary];
  v9 = [v8 filterAvailableContentGroups:v6 withOptions:v7];

  v10 = MEMORY[0x1E69775F8];

  return [v10 _softLinkingContentGroupsForUnderlyingContentGroups:v9];
}

@end