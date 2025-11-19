@interface CSQuickAction
- (CSQuickActionDelegate)delegate;
- (void)setSelected:(BOOL)a3;
@end

@implementation CSQuickAction

- (CSQuickActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setSelected:(BOOL)a3
{
  v4 = [(CSQuickAction *)self delegate];
  [v4 isSelectedDidChangeForAction:self];
}

@end