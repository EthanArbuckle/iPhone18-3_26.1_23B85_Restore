@interface LNQuickLook
- (LNQuickLook)initWithItems:(id)items;
- (id)editedItems;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)presentOverViewController:(id)controller completionHandler:(id)handler;
- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l;
- (void)previewControllerDidDismiss:(id)dismiss;
@end

@implementation LNQuickLook

- (id)editedItems
{
  items = [(LNQuickLook *)self items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__LNQuickLook_editedItems__block_invoke;
  v6[3] = &unk_1E74B16B8;
  v6[4] = self;
  v4 = [items if_map:v6];

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

- (void)previewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  viewControllerForPresenting = [(LNQuickLook *)self viewControllerForPresenting];
  parentViewController = [viewControllerForPresenting parentViewController];

  if (parentViewController)
  {
    do
    {
      parentViewController2 = [viewControllerForPresenting parentViewController];

      v6ParentViewController = [parentViewController2 parentViewController];

      viewControllerForPresenting = parentViewController2;
    }

    while (v6ParentViewController);
  }

  else
  {
    parentViewController2 = viewControllerForPresenting;
  }

  view = [parentViewController2 view];
  [view setAccessibilityElementsHidden:0];

  [dismissCopy setDataSource:0];
  [(LNQuickLook *)self setPreviewController:0];
  [(LNQuickLook *)self finishWithError:0];
}

- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  editedPreviewItems = [(LNQuickLook *)self editedPreviewItems];
  v12 = itemCopy;
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

  [editedPreviewItems setObject:lCopy forKey:v11];
}

- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item
{
  v4 = [(LNQuickLook *)self editingMode:controller];
  if (v4 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v4 == 1);
  }
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  items = [(LNQuickLook *)self items];
  v6 = [items objectAtIndexedSubscript:index];

  return v6;
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  items = [(LNQuickLook *)self items];
  v4 = [items count];

  return v4;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(LNQuickLook *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(LNQuickLook *)self completionHandler];
    editedItems = [(LNQuickLook *)self editedItems];
    (completionHandler2)[2](completionHandler2, editedItems, errorCopy);
  }

  [(LNQuickLook *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  presentedViewController = [(UIViewController *)self->_viewControllerForPresenting presentedViewController];

  if (presentedViewController)
  {
    viewControllerForPresenting = self->_viewControllerForPresenting;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__LNQuickLook_cancelPresentationWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E74B1930;
    v8[4] = self;
    v9 = handlerCopy;
    [(UIViewController *)viewControllerForPresenting dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(LNQuickLook *)self finishWithError:v7];

    handlerCopy[2](handlerCopy);
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

- (void)presentOverViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  [(LNQuickLook *)self setCompletionHandler:handlerCopy];
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
  [(LNQuickLook *)self setViewControllerForPresenting:controllerCopy];
  v11 = controllerCopy;
  parentViewController = [v11 parentViewController];

  parentViewController2 = v11;
  if (parentViewController)
  {
    v14 = v11;
    do
    {
      parentViewController2 = [v14 parentViewController];

      v13ParentViewController = [parentViewController2 parentViewController];

      v14 = parentViewController2;
    }

    while (v13ParentViewController);
  }

  view = [parentViewController2 view];
  [view setAccessibilityElementsHidden:1];

  [v11 presentViewController:v10 animated:1 completion:0];
}

- (LNQuickLook)initWithItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQuickLook.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"items"}];
  }

  v14.receiver = self;
  v14.super_class = LNQuickLook;
  v6 = [(LNQuickLook *)&v14 init];
  if (v6)
  {
    v7 = [itemsCopy if_map:&__block_literal_global_8956];
    items = v6->_items;
    v6->_items = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    editedPreviewItems = v6->_editedPreviewItems;
    v6->_editedPreviewItems = v9;

    v6->_editingMode = 0;
    v11 = v6;
  }

  return v6;
}

@end