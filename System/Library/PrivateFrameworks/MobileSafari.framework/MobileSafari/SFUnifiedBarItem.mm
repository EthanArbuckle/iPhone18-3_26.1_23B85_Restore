@interface SFUnifiedBarItem
- (void)setHidden:(BOOL)a3;
@end

@implementation SFUnifiedBarItem

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    self->_hidden = a3;
    [(SFUnifiedBarItemView *)self->_reusableView setHidden:?];
  }
}

@end