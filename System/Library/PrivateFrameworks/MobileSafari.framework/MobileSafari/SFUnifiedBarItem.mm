@interface SFUnifiedBarItem
- (void)setHidden:(BOOL)hidden;
@end

@implementation SFUnifiedBarItem

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    self->_hidden = hidden;
    [(SFUnifiedBarItemView *)self->_reusableView setHidden:?];
  }
}

@end