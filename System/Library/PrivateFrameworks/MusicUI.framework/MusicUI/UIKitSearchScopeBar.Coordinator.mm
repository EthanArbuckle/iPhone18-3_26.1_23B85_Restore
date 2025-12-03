@interface UIKitSearchScopeBar.Coordinator
- (void)scopeChanged:(id)changed;
@end

@implementation UIKitSearchScopeBar.Coordinator

- (void)scopeChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_21694E2D4(changedCopy);
}

@end