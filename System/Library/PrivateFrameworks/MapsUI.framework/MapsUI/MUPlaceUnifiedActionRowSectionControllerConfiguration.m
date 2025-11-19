@interface MUPlaceUnifiedActionRowSectionControllerConfiguration
- (MKETAProvider)etaProvider;
- (MKPlaceActionManager)actionManager;
- (MUExternalActionHandling)externalActionHandler;
- (MUHeaderButtonMenuActionProvider)moreActionsProvider;
- (MUPlaceActionRowMenuProvider)actionRowMenuProvider;
@end

@implementation MUPlaceUnifiedActionRowSectionControllerConfiguration

- (MUExternalActionHandling)externalActionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_externalActionHandler);

  return WeakRetained;
}

- (MKETAProvider)etaProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_etaProvider);

  return WeakRetained;
}

- (MUPlaceActionRowMenuProvider)actionRowMenuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionRowMenuProvider);

  return WeakRetained;
}

- (MUHeaderButtonMenuActionProvider)moreActionsProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_moreActionsProvider);

  return WeakRetained;
}

- (MKPlaceActionManager)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

@end