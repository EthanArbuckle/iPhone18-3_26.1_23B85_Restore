@interface TCMessagePlaceholderInfo
- (TCMessagePlaceholderInfo)init;
@end

@implementation TCMessagePlaceholderInfo

- (TCMessagePlaceholderInfo)init
{
  v7.receiver = self;
  v7.super_class = TCMessagePlaceholderInfo;
  v2 = [(TCMessagePlaceholderInfo *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCABB0]);
    ++[TCMessagePlaceholderInfo init]::sKey;
    v4 = [v3 initWithInt:?];
    mKey = v2->mKey;
    v2->mKey = v4;

    v2->mInUse = 0;
  }

  return v2;
}

@end