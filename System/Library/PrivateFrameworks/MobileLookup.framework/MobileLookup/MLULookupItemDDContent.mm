@interface MLULookupItemDDContent
- (MLULookupItemDDContent)initWithURL:(id)a3 result:(__DDResult *)a4 documentProperties:(id)a5;
- (unint64_t)commitType;
- (void)dismissViewController;
@end

@implementation MLULookupItemDDContent

- (MLULookupItemDDContent)initWithURL:(id)a3 result:(__DDResult *)a4 documentProperties:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = MLULookupItemDDContent;
  v10 = [(MLULookupItemDDContent *)&v22 init];
  if (v10)
  {
    v11 = [MEMORY[0x277D04338] previewActionForURL:v8 result:a4 context:v9];
    previewAction = v10->_previewAction;
    v10->_previewAction = v11;

    v13 = v10->_previewAction;
    if (v13)
    {
      v14 = [(DDPreviewAction *)v13 viewController];
      if (v14)
      {
        if ([(DDPreviewAction *)v10->_previewAction requiresEmbeddingNavigationController])
        {
          v15 = objc_alloc_init(DDPreviewNavigationController);
          [(DDPreviewNavigationController *)v15 setEdgesForExtendedLayout:1];
          v16 = [MEMORY[0x277D75348] whiteColor];
          v17 = [(DDPreviewNavigationController *)v15 view];
          [v17 setBackgroundColor:v16];

          [v14 setEdgesForExtendedLayout:0];
          v18 = [(DDPreviewAction *)v10->_previewAction platterTitle];
          [v14 setTitle:v18];

          [(DDPreviewNavigationController *)v15 setNavigationBarHidden:0];
          [(DDPreviewNavigationController *)v15 pushViewController:v14 animated:0];
          [(MLULookupItemContent *)v10 setPreviewViewController:v15];
        }

        else
        {
          [(MLULookupItemContent *)v10 setPreviewViewController:v14];
        }
      }
    }

    v19 = [(MLULookupItemContent *)v10 previewViewController];
    if (v19)
    {
      [(MLULookupItemContent *)v10 setValid:1];
    }

    else
    {
      v20 = [(MLULookupItemDDContent *)v10 contact];
      [(MLULookupItemContent *)v10 setValid:v20 != 0];
    }
  }

  return v10;
}

- (unint64_t)commitType
{
  if (([(DDPreviewAction *)self->_previewAction wantsSeamlessCommit]& 1) != 0)
  {
    return 2;
  }

  v4 = [(DDPreviewAction *)self->_previewAction commitURL];

  if (v4)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (void)dismissViewController
{
  v2.receiver = self;
  v2.super_class = MLULookupItemDDContent;
  [(MLULookupItemContent *)&v2 dismissViewController];
}

@end