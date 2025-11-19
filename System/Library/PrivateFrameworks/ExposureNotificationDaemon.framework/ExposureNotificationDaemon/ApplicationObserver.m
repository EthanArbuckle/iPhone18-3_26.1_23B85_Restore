@interface ApplicationObserver
- (ApplicationObserver)delegate;
- (ApplicationObserver)init;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
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
    v3 = [MEMORY[0x277CC1E78] defaultWorkspace];
    [v3 addObserver:v2];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E78] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ApplicationObserver;
  [(ApplicationObserver *)&v4 dealloc];
}

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationObserver *)self delegate];
  [v5 applicationsDidInstall:v4];
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  v5 = [(ApplicationObserver *)self delegate];
  [v5 applicationsDidUninstall:v4];
}

- (ApplicationObserver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end