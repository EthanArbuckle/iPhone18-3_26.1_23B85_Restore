@interface MUPlaceHeaderButtonsSectionControllerConfiguration
- (MKETAProvider)etaProvider;
- (MUHeaderButtonMenuActionProvider)menuProvider;
@end

@implementation MUPlaceHeaderButtonsSectionControllerConfiguration

- (MUHeaderButtonMenuActionProvider)menuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  return WeakRetained;
}

- (MKETAProvider)etaProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_etaProvider);

  return WeakRetained;
}

@end