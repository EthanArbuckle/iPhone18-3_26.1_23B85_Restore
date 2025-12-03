@interface CSQuickAction
- (CSQuickActionDelegate)delegate;
- (void)setSelected:(BOOL)selected;
@end

@implementation CSQuickAction

- (CSQuickActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelected:(BOOL)selected
{
  delegate = [(CSQuickAction *)self delegate];
  [delegate isSelectedDidChangeForAction:self];
}

@end