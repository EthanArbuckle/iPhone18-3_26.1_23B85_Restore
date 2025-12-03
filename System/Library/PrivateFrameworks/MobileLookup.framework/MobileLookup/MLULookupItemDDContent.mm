@interface MLULookupItemDDContent
- (MLULookupItemDDContent)initWithURL:(id)l result:(__DDResult *)result documentProperties:(id)properties;
- (unint64_t)commitType;
- (void)dismissViewController;
@end

@implementation MLULookupItemDDContent

- (MLULookupItemDDContent)initWithURL:(id)l result:(__DDResult *)result documentProperties:(id)properties
{
  lCopy = l;
  propertiesCopy = properties;
  v22.receiver = self;
  v22.super_class = MLULookupItemDDContent;
  v10 = [(MLULookupItemDDContent *)&v22 init];
  if (v10)
  {
    v11 = [MEMORY[0x277D04338] previewActionForURL:lCopy result:result context:propertiesCopy];
    previewAction = v10->_previewAction;
    v10->_previewAction = v11;

    v13 = v10->_previewAction;
    if (v13)
    {
      viewController = [(DDPreviewAction *)v13 viewController];
      if (viewController)
      {
        if ([(DDPreviewAction *)v10->_previewAction requiresEmbeddingNavigationController])
        {
          v15 = objc_alloc_init(DDPreviewNavigationController);
          [(DDPreviewNavigationController *)v15 setEdgesForExtendedLayout:1];
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          view = [(DDPreviewNavigationController *)v15 view];
          [view setBackgroundColor:whiteColor];

          [viewController setEdgesForExtendedLayout:0];
          platterTitle = [(DDPreviewAction *)v10->_previewAction platterTitle];
          [viewController setTitle:platterTitle];

          [(DDPreviewNavigationController *)v15 setNavigationBarHidden:0];
          [(DDPreviewNavigationController *)v15 pushViewController:viewController animated:0];
          [(MLULookupItemContent *)v10 setPreviewViewController:v15];
        }

        else
        {
          [(MLULookupItemContent *)v10 setPreviewViewController:viewController];
        }
      }
    }

    previewViewController = [(MLULookupItemContent *)v10 previewViewController];
    if (previewViewController)
    {
      [(MLULookupItemContent *)v10 setValid:1];
    }

    else
    {
      contact = [(MLULookupItemDDContent *)v10 contact];
      [(MLULookupItemContent *)v10 setValid:contact != 0];
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

  commitURL = [(DDPreviewAction *)self->_previewAction commitURL];

  if (commitURL)
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