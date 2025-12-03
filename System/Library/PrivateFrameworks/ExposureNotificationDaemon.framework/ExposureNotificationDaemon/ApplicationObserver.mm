@interface ApplicationObserver
- (ApplicationObserver)delegate;
- (ApplicationObserver)init;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)dealloc;
@end

@implementation ApplicationObserver

- (ApplicationObserver)init
{
  v6.receiver = self;
  v6.super_class = ApplicationObserver;
  v2 = [(ApplicationObserver *)&v6 init];
  if (v2)
  {
    defaultWorkspace = [MEMORY[0x277CC1E78] defaultWorkspace];
    [defaultWorkspace addObserver:v2];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E78] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = ApplicationObserver;
  [(ApplicationObserver *)&v4 dealloc];
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  delegate = [(ApplicationObserver *)self delegate];
  [delegate applicationsDidInstall:installCopy];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  delegate = [(ApplicationObserver *)self delegate];
  [delegate applicationsDidUninstall:uninstallCopy];
}

- (ApplicationObserver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end