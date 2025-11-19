@interface ICAlertController
- (ICAlertController)initWithCoder:(id)a3;
- (ICAlertController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)dismissWhenPossible;
@end

@implementation ICAlertController

- (ICAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICAlertController;
  v4 = [(ICAlertController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(ICAlertController *)v4 commonInit];
  }

  return v5;
}

- (ICAlertController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICAlertController;
  v3 = [(ICAlertController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICAlertController *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  dismissWithoutActionBlock = self->_dismissWithoutActionBlock;
  if (dismissWithoutActionBlock && !self->_didPerformAction)
  {
    v4 = [dismissWithoutActionBlock copy];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __28__ICAlertController_dealloc__block_invoke;
    v10 = &unk_1E84690D0;
    v11 = v4;
    v5 = v4;
    dispatchMainAfterDelay();
  }

  v6.receiver = self;
  v6.super_class = ICAlertController;
  [(ICAlertController *)&v6 dealloc];
}

- (void)dismissWhenPossible
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__ICAlertController_dismissWhenPossible__block_invoke;
  v2[3] = &unk_1E846AA18;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __40__ICAlertController_dismissWhenPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dismissWithoutActionBlock];
  if (v1)
  {
    v2 = [WeakRetained didDismissWithDismissWithoutActionBlock] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [WeakRetained dismissAction];

  if (v3 || v2)
  {
    [WeakRetained setDidDismissWithDismissWithoutActionBlock:1];
    v7 = [WeakRetained presentingViewController];

    if (v7)
    {
      if (v2)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DC648]);
      }

      else
      {
        v8 = [WeakRetained dismissAction];
      }

      v9 = v8;
      [WeakRetained _dismissWithAction:v8];
    }

    [WeakRetained setDismissAction:0];
  }

  else
  {
    v4 = [WeakRetained presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [WeakRetained presentedViewController];
      [v6 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

@end