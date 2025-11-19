@interface NotesQuickLookActivity
- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5;
- (id)activityTitle;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)previewController:(id)a3 transitionImageForPreviewItem:(id)a4 contentRect:(CGRect *)a5;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (void)_cleanup;
- (void)prepareWithActivityItems:(id)a3;
- (void)presentPreviewController;
@end

@implementation NotesQuickLookActivity

- (id)activityTitle
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"QUICK_LOOK" value:@"Quick Look" table:@"Localizable"];

  return v3;
}

- (void)prepareWithActivityItems:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

  v11 = [(NotesQuickLookActivity *)self item];

  if (!v11 && v7)
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
  v3 = [(NotesQuickLookActivity *)self item];
  v4 = [v3 firstItemIndex];

  [object setCurrentPreviewItemIndex:v4];
  v5 = MEMORY[0x277D76620];
  v6 = [*MEMORY[0x277D76620] keyWindow];
  v7 = [v6 ic_viewControllerManager];
  v8 = [v7 window];
  v9 = [v8 ic_topmostPresentedViewController];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [*v5 keyWindow];
    v11 = [v12 rootViewController];
  }

  [v11 presentViewController:object animated:1 completion:0];
  objc_setAssociatedObject(object, &NotesQuickLookActivityLifeLine, self, 1);
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v3 = [(NotesQuickLookActivity *)self item];
  v4 = [v3 previewItems];
  v5 = [v4 count];

  return v5;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = [(NotesQuickLookActivity *)self item];
  v6 = [v5 previewItems];
  v7 = [v6 objectAtIndexedSubscript:a4];

  return v7;
}

- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(NotesQuickLookActivity *)self item];
  v11 = [v10 delegate];
  v12 = [(NotesQuickLookActivity *)self item];
  [v11 notesQuickLookActivityItem:v12 rectForPreviewItem:v8 inView:a5 previewController:v9];
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

- (id)previewController:(id)a3 transitionImageForPreviewItem:(id)a4 contentRect:(CGRect *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(NotesQuickLookActivity *)self item];
  v10 = [v9 delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(NotesQuickLookActivity *)self item];
    v13 = [v12 delegate];
    v14 = [(NotesQuickLookActivity *)self item];
    v15 = [v13 notesQuickLookActivityItem:v14 transitionImageForPreviewItem:v8 previewController:v7];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NotesQuickLookActivity *)self item];
  v9 = [v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(NotesQuickLookActivity *)self item];
    v12 = [v11 delegate];
    v13 = [(NotesQuickLookActivity *)self item];
    v14 = [v12 notesQuickLookActivityItem:v13 transitionViewForPreviewItem:v7 previewController:v6];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end