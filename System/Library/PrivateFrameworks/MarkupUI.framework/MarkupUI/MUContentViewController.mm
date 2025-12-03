@interface MUContentViewController
- (MUContentViewController)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate;
- (MUContentViewControllerDelegate)delegate;
@end

@implementation MUContentViewController

- (MUContentViewController)initWithNibName:(id)name bundle:(id)bundle delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = MUContentViewController;
  v9 = [(MUContentViewController *)&v12 initWithNibName:name bundle:bundle];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v10;
}

- (MUContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end