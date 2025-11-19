@interface UIBarButtonItem
- (CGRect)_doc_ipi_rectForPresenting;
@end

@implementation UIBarButtonItem

- (CGRect)_doc_ipi_rectForPresenting
{
  [(UIBarButtonItem *)self _rectForPresenting];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end