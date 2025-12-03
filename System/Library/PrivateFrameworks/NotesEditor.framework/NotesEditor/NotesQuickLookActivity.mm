@interface NotesQuickLookActivity
- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view;
- (id)activityTitle;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)previewController:(id)controller transitionImageForPreviewItem:(id)item contentRect:(CGRect *)rect;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (void)_cleanup;
- (void)prepareWithActivityItems:(id)items;
- (void)presentPreviewController;
@end

@implementation NotesQuickLookActivity

- (id)activityTitle
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"QUICK_LOOK" value:@"Quick Look" table:@"Localizable"];

  return v3;
}

- (void)prepareWithActivityItems:(id)items
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NotesQuickLookActivity *)self setItem:v10, v14];

          goto LABEL_15;
        }

        if (!v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = v10;
          }

          else
          {
            v7 = 0;
          }
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_15:
    v7 = 0;
  }

  item = [(NotesQuickLookActivity *)self item];

  if (!item && v7)
  {
    v12 = objc_alloc_init(NotesQuickLookActivityItem);
    v18 = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [(NotesQuickLookActivityItem *)v12 setPreviewItems:v13];

    [(NotesQuickLookActivity *)self setItem:v12];
  }
}

- (void)_cleanup
{
  v3.receiver = self;
  v3.super_class = NotesQuickLookActivity;
  [(UIActivity *)&v3 _cleanup];
  [(NotesQuickLookActivity *)self presentPreviewController];
}

- (void)presentPreviewController
{
  object = objc_alloc_init(MEMORY[0x277CDAA58]);
  [object setDataSource:self];
  [object setDelegate:self];
  [object setIsContentManaged:{-[NotesQuickLookActivity sourceIsManaged](self, "sourceIsManaged")}];
  item = [(NotesQuickLookActivity *)self item];
  firstItemIndex = [item firstItemIndex];

  [object setCurrentPreviewItemIndex:firstItemIndex];
  v5 = MEMORY[0x277D76620];
  keyWindow = [*MEMORY[0x277D76620] keyWindow];
  ic_viewControllerManager = [keyWindow ic_viewControllerManager];
  window = [ic_viewControllerManager window];
  ic_topmostPresentedViewController = [window ic_topmostPresentedViewController];
  v10 = ic_topmostPresentedViewController;
  if (ic_topmostPresentedViewController)
  {
    rootViewController = ic_topmostPresentedViewController;
  }

  else
  {
    keyWindow2 = [*v5 keyWindow];
    rootViewController = [keyWindow2 rootViewController];
  }

  [rootViewController presentViewController:object animated:1 completion:0];
  objc_setAssociatedObject(object, &NotesQuickLookActivityLifeLine, self, 1);
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  item = [(NotesQuickLookActivity *)self item];
  previewItems = [item previewItems];
  v5 = [previewItems count];

  return v5;
}

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  item = [(NotesQuickLookActivity *)self item];
  previewItems = [item previewItems];
  v7 = [previewItems objectAtIndexedSubscript:index];

  return v7;
}

- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view
{
  itemCopy = item;
  controllerCopy = controller;
  item = [(NotesQuickLookActivity *)self item];
  delegate = [item delegate];
  item2 = [(NotesQuickLookActivity *)self item];
  [delegate notesQuickLookActivityItem:item2 rectForPreviewItem:itemCopy inView:view previewController:controllerCopy];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)previewController:(id)controller transitionImageForPreviewItem:(id)item contentRect:(CGRect *)rect
{
  controllerCopy = controller;
  itemCopy = item;
  item = [(NotesQuickLookActivity *)self item];
  delegate = [item delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    item2 = [(NotesQuickLookActivity *)self item];
    delegate2 = [item2 delegate];
    item3 = [(NotesQuickLookActivity *)self item];
    v15 = [delegate2 notesQuickLookActivityItem:item3 transitionImageForPreviewItem:itemCopy previewController:controllerCopy];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  item = [(NotesQuickLookActivity *)self item];
  delegate = [item delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    item2 = [(NotesQuickLookActivity *)self item];
    delegate2 = [item2 delegate];
    item3 = [(NotesQuickLookActivity *)self item];
    v14 = [delegate2 notesQuickLookActivityItem:item3 transitionViewForPreviewItem:itemCopy previewController:controllerCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end