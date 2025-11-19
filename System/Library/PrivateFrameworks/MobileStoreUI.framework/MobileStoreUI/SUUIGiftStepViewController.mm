@interface SUUIGiftStepViewController
- (SUUIGiftStepViewController)initWithGift:(id)a3 configuration:(id)a4;
- (void)_finishImageLoadWithImage:(id)a3 error:(id)a4 block:(id)a5;
- (void)finishGiftingWithResult:(BOOL)a3;
- (void)loadItemArtworkWithArtworkContext:(id)a3 completionBlock:(id)a4;
@end

@implementation SUUIGiftStepViewController

- (SUUIGiftStepViewController)initWithGift:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SUUIGiftStepViewController;
  v8 = [(SUUIGiftStepViewController *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    gift = v8->_gift;
    v8->_gift = v9;

    objc_storeStrong(&v8->_giftConfiguration, a4);
  }

  return v8;
}

- (void)finishGiftingWithResult:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIGiftStepViewController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 giftDelegate];
  }

  else
  {
    v6 = 0;
  }

  v9 = v6;
  if (objc_opt_respondsToSelector())
  {
    [v9 giftViewController:v5 didFinishWithResult:v3];
  }

  else
  {
    v7 = [(SUUIGiftStepViewController *)self parentViewController];
    v8 = v7;
    if (!v7)
    {
      v7 = self;
    }

    [v7 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)loadItemArtworkWithArtworkContext:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIGift *)self->_gift item];
  if (v8 && !self->_loadOperation)
  {
    v9 = [v6 URLForItem:v8];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
      loadOperation = self->_loadOperation;
      self->_loadOperation = v10;

      v12 = self->_loadOperation;
      v13 = [v6 dataConsumerForItem:v8];
      [(SSVLoadURLOperation *)v12 setDataConsumer:v13];

      [(SSVLoadURLOperation *)self->_loadOperation setITunesStoreRequest:0];
      objc_initWeak(&location, self);
      v14 = self->_loadOperation;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __80__SUUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke;
      v16[3] = &unk_2798FBEB8;
      objc_copyWeak(&v18, &location);
      v17 = v7;
      [(SSVLoadURLOperation *)v14 setOutputBlock:v16];
      v15 = [(SUUIGiftStepViewController *)self operationQueue];
      [v15 addOperation:self->_loadOperation];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

void __80__SUUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__SUUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke_2;
  v9[3] = &unk_2798F73E8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __80__SUUIGiftStepViewController_loadItemArtworkWithArtworkContext_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishImageLoadWithImage:*(a1 + 32) error:*(a1 + 40) block:*(a1 + 48)];
}

- (void)_finishImageLoadWithImage:(id)a3 error:(id)a4 block:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  if (v9)
  {
    v9[2](v9, v11, v8);
  }
}

@end