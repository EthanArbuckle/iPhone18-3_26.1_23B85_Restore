@interface IAPWorkspaceObserver
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation IAPWorkspaceObserver

- (void)startObserving
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];

  [v3 addObserver:self];
}

- (void)stopObserving
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];

  [v3 removeObserver:self];
}

- (void)applicationsWillInstall:(id)install
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsWillInstall:install];
  }
}

- (void)applicationsDidInstall:(id)install
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsDidInstall:install];
  }
}

- (void)applicationsWillUninstall:(id)uninstall
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsWillUninstall:uninstall];
  }
}

- (void)applicationsDidUninstall:(id)uninstall
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsDidUninstall:uninstall];
  }
}

@end