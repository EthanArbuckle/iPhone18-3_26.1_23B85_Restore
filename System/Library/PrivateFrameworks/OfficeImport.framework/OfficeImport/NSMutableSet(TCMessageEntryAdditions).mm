@interface NSMutableSet(TCMessageEntryAdditions)
- (void)tc_addMessageEntry:()TCMessageEntryAdditions;
@end

@implementation NSMutableSet(TCMessageEntryAdditions)

- (void)tc_addMessageEntry:()TCMessageEntryAdditions
{
  v6 = a3;
  v4 = [self member:?];
  v5 = v4;
  if (v4)
  {
    [v4 mergeEntries:v6];
  }

  else
  {
    [self addObject:v6];
    [v6 setTimeStamp:{objc_msgSend(self, "count")}];
  }
}

@end