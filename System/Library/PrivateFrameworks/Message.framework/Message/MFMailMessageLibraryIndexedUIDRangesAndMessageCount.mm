@interface MFMailMessageLibraryIndexedUIDRangesAndMessageCount
- (void)initWithRanges:(uint64_t)ranges messageCount:;
@end

@implementation MFMailMessageLibraryIndexedUIDRangesAndMessageCount

- (void)initWithRanges:(uint64_t)ranges messageCount:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = MFMailMessageLibraryIndexedUIDRangesAndMessageCount;
    self = objc_msgSendSuper2(&v9, sel_init);
    if (self)
    {
      v6 = [v5 copy];
      v7 = self[1];
      self[1] = v6;

      self[2] = ranges;
    }
  }

  return self;
}

@end