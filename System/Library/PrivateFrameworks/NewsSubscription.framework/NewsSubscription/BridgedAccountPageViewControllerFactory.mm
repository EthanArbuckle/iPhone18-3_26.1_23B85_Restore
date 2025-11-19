@interface BridgedAccountPageViewControllerFactory
- (SKAccountPageViewControllerDelegate)delegate;
- (id)createAccountPageViewControllerFor:(id)a3;
@end

@implementation BridgedAccountPageViewControllerFactory

- (id)createAccountPageViewControllerFor:(id)a3
{
  v4 = MEMORY[0x1E697BA60];
  v5 = a3;
  v6 = [[v4 alloc] initWithAccountURL:v5];

  v7 = [(BridgedAccountPageViewControllerFactory *)self delegate];
  [v6 setDelegate:v7];

  return v6;
}

- (SKAccountPageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end