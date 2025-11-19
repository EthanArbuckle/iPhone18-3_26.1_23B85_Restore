@interface MUHeaderButtonsViewConfiguration
- (MUHeaderButtonMenuActionProvider)menuProvider;
@end

@implementation MUHeaderButtonsViewConfiguration

- (MUHeaderButtonMenuActionProvider)menuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  return WeakRetained;
}

@end