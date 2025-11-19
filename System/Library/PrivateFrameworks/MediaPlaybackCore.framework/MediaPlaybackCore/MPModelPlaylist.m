@interface MPModelPlaylist
@end

@implementation MPModelPlaylist

void __72__MPModelPlaylist_BehaviorMusicSharePlayAdditions__msp_shortDescription__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  v4 = [v2 stringWithFormat:@" name='%@'", v5];
  [v3 insertString:v4 atIndex:{objc_msgSend(*(a1 + 32), "length") - 1}];
}

@end