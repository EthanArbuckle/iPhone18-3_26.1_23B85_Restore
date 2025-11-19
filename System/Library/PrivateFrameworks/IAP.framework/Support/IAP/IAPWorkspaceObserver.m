@interface IAPWorkspaceObserver
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
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

- (void)applicationsWillInstall:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsWillInstall:a3];
  }
}

- (void)applicationsDidInstall:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsDidInstall:a3];
  }
}

- (void)applicationsWillUninstall:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsWillUninstall:a3];
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v6 = self->_delegate;

    [(LSApplicationWorkspaceObserverProtocol *)v6 applicationsDidUninstall:a3];
  }
}

@end