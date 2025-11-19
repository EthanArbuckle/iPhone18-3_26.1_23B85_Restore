@interface NSTextLayoutManager
@end

@implementation NSTextLayoutManager

uint64_t __43__NSTextLayoutManager_IC__ic_rectForRange___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6.size.height = a5;
  v6.size.width = a4;
  v6.origin.y = a3;
  v6.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v6);
  return 1;
}

@end