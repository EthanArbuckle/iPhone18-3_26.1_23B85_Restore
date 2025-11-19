@interface NTPBAudioPlaylistItem
@end

@implementation NTPBAudioPlaylistItem

uint64_t __39__NTPBAudioPlaylistItem_CK__asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"AudioPlaylist" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_181;
  _MergedGlobals_181 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end