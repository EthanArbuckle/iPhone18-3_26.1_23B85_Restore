@interface NTPBIssueReadingHistoryItem
@end

@implementation NTPBIssueReadingHistoryItem

uint64_t __64__NTPBIssueReadingHistoryItem_FCIssueReadingHistory__asCKRecord__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"IssueReadingHistory" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_195;
  _MergedGlobals_195 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end