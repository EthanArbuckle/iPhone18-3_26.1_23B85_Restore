@interface LNQuickLook
- (LNQuickLook)initWithItems:(id)a3;
- (id)editedItems;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (void)cancelPresentationWithCompletionHandler:(id)a3;
- (void)finishWithError:(id)a3;
- (void)presentOverViewController:(id)a3 completionHandler:(id)a4;
- (void)previewController:(id)a3 didSaveEditedCopyOfPreviewItem:(id)a4 atURL:(id)a5;
- (void)previewControllerDidDismiss:(id)a3;
@end

@implementation LNQuickLook

- (id)editedItems
{
  v3 = [(LNQuickLook *)self items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__LNQuickLook_editedItems__block_invoke;
  v6[3] = &unk_1E74B16B8;
  v6[4] = self;
  v4 = [v3 if_map:v6];

  return v4;
}

id __26__LNQuickLook_editedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) editedPreviewItems];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v3 previewItemURL];
  }

  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v8];

  return v9;
}

- (void)previewControllerDidDismiss:(id)a3
{
  v9 = a3;
  v4 = [(LNQuickLook *)self viewControllerForPresenting];
  v5 = [v4 parentViewController];

  if (v5)
  {
    do
    {
      v6 = [v4 parentViewController];

      v7 = [v6 parentViewController];

      v4 = v6;
    }

    while (v7);
  }

  else
  {
    v6 = v4;
  }

  v8 = [v6 view];
  [v8 setAccessibilityElementsHidden:0];

  [v9 setDataSource:0];
  [(LNQuickLook *)self setPreviewController:0];
  [(LNQuickLook *)self finishWithError:0];
}

- (void)previewController:(id)a3 didSaveEditedCopyOfPreviewItem:(id)a4 atURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(LNQuickLook *)self editedPreviewItems];
  v12 = v7;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v9 setObject:v8 forKey:v11];
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  v4 = [(LNQuickLook *)self editingMode:a3];
  if (v4 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v4 == 1);
  }
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = [(LNQuickLook *)self items];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v3 = [(LNQuickLook *)self items];
  v4 = [v3 count];

  return v4;
}

- (void)finishWithError:(id)a3
{
  v7 = a3;
  v4 = [(LNQuickLook *)self completionHandler];

  if (v4)
  {
    v5 = [(LNQuickLook *)self completionHandler];
    v6 = [(LNQuickLook *)self editedItems];
    (v5)[2](v5, v6, v7);
  }

  [(LNQuickLook *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(UIViewController *)self->_viewControllerForPresenting presentedViewController];

  if (v5)
  {
    viewControllerForPresenting = self->_viewControllerForPresenting;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__LNQuickLook_cancelPresentationWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E74B1930;
    v8[4] = self;
    v9 = v4;
    [(UIViewController *)viewControllerForPresenting dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(LNQuickLook *)self finishWithError:v7];

    v4[2](v4);
  }
}

uint64_t __55__LNQuickLook_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)presentOverViewController:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(LNQuickLook *)self setCompletionHandler:v7];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v8 = getQLPreviewControllerClass_softClass;
  v21 = getQLPreviewControllerClass_softClass;
  if (!getQLPreviewControllerClass_softClass)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __getQLPreviewControllerClass_block_invoke;
    v17[3] = &unk_1E74B26D0;
    v17[4] = &v18;
    __getQLPreviewControllerClass_block_invoke(v17);
    v8 = v19[3];
  }

  v9 = v8;
  _Block_object_dispose(&v18, 8);
  v10 = objc_alloc_init(v8);
  [v10 setDelegate:self];
  [v10 setDataSource:self];
  if ([(LNQuickLook *)self editingMode])
  {
    [v10 setAppearanceActions:4];
  }

  [v10 reloadData];
  [v10 setCurrentPreviewItemIndex:0];
  [v10 setModalPresentationStyle:2];
  [(LNQuickLook *)self setPreviewController:v10];
  [(LNQuickLook *)self setViewControllerForPresenting:v6];
  v11 = v6;
  v12 = [v11 parentViewController];

  v13 = v11;
  if (v12)
  {
    v14 = v11;
    do
    {
      v13 = [v14 parentViewController];

      v15 = [v13 parentViewController];

      v14 = v13;
    }

    while (v15);
  }

  v16 = [v13 view];
  [v16 setAccessibilityElementsHidden:1];

  [v11 presentViewController:v10 animated:1 completion:0];
}

- (LNQuickLook)initWithItems:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"LNQuickLook.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v14.receiver = self;
  v14.super_class = LNQuickLook;
  v6 = [(LNQuickLook *)&v14 init];
  if (v6)
  {
    v7 = [v5 if_map:&__block_literal_global_8956];
    items = v6->_items;
    v6->_items = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
    editedPreviewItems = v6->_editedPreviewItems;
    v6->_editedPreviewItems = v9;

    v6->_editingMode = 0;
    v11 = v6;
  }

  return v6;
}

@end