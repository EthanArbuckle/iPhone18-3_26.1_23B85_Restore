@interface MFMailMessageLibraryIndexedUIDRangesAndMessageCount
- (void)initWithRanges:(uint64_t)a3 messageCount:;
@end

@implementation MFMailMessageLibraryIndexedUIDRangesAndMessageCount

- (void)initWithRanges:(uint64_t)a3 messageCount:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = MFMailMessageLibraryIndexedUIDRangesAndMessageCount;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[1];
      a1[1] = v6;

      a1[2] = a3;
    }
  }

  return a1;
}

@end