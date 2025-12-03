@interface BridgedAccountPageViewControllerFactory
- (SKAccountPageViewControllerDelegate)delegate;
- (id)createAccountPageViewControllerFor:(id)for;
@end

@implementation BridgedAccountPageViewControllerFactory

- (id)createAccountPageViewControllerFor:(id)for
{
  v4 = MEMORY[0x1E697BA60];
  forCopy = for;
  v6 = [[v4 alloc] initWithAccountURL:forCopy];

  delegate = [(BridgedAccountPageViewControllerFactory *)self delegate];
  [v6 setDelegate:delegate];

  return v6;
}

- (SKAccountPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end