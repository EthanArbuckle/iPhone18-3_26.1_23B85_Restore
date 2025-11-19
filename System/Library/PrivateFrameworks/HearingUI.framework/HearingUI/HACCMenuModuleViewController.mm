@interface HACCMenuModuleViewController
- (HACCContentModuleDelegate)delegate;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation HACCMenuModuleViewController

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HACCMenuModuleViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_2796F76C0;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = HACCMenuModuleViewController;
  v7 = v6;
  [(HACCMenuModuleViewController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
}

uint64_t __73__HACCMenuModuleViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 viewController:0 didExpand:0];

  v3 = [*(a1 + 32) delegate];
  [v3 updateView];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end