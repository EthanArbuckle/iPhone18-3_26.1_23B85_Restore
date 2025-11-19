@interface NTPBReadingHistoryItem
@end

@implementation NTPBReadingHistoryItem

uint64_t __54__NTPBReadingHistoryItem_FCReadingHistory__asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"ReadingHistory" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_14;
  _MergedGlobals_14 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end