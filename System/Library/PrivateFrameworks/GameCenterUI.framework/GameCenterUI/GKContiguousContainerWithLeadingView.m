@interface GKContiguousContainerWithLeadingView
- (CGSize)intrinsicContentSize;
@end

@implementation GKContiguousContainerWithLeadingView

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

@end