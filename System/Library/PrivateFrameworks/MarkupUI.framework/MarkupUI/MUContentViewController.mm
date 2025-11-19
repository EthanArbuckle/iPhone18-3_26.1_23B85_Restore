@interface MUContentViewController
- (MUContentViewController)initWithNibName:(id)a3 bundle:(id)a4 delegate:(id)a5;
- (MUContentViewControllerDelegate)delegate;
@end

@implementation MUContentViewController

- (MUContentViewController)initWithNibName:(id)a3 bundle:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MUContentViewController;
  v9 = [(MUContentViewController *)&v12 initWithNibName:a3 bundle:a4];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v10;
}

- (MUContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end