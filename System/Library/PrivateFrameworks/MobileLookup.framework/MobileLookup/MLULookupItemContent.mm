@interface MLULookupItemContent
+ (id)contentWithAttachments:(id)attachments currentAttachmentIndex:(unint64_t)index;
+ (id)contentWithText:(id)text range:(_NSRange)range;
+ (id)contentWithURL:(id)l result:(__DDResult *)result documentProperties:(id)properties;
- (BOOL)commitPreviewInController:(id)controller;
- (void)dismissViewController;
- (void)setupViewControllerInCommitMode;
@end

@implementation MLULookupItemContent

+ (id)contentWithURL:(id)l result:(__DDResult *)result documentProperties:(id)properties
{
  propertiesCopy = properties;
  lCopy = l;
  v9 = [[MLULookupItemDDContent alloc] initWithURL:lCopy result:result documentProperties:propertiesCopy];

  if ([(MLULookupItemContent *)v9 valid])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)contentWithAttachments:(id)attachments currentAttachmentIndex:(unint64_t)index
{
  attachmentsCopy = attachments;
  v6 = [[MLULookupItemAttachmentContent alloc] initWithAttachments:attachmentsCopy currentAttachmentIndex:index];

  return v6;
}

+ (id)contentWithText:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v7 = [[MLULookupItemRawTextContent alloc] initWithText:textCopy range:location, length];

  return v7;
}

- (void)setupViewControllerInCommitMode
{
  previewViewController = [(MLULookupItemContent *)self previewViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    previewViewController2 = [(MLULookupItemContent *)self previewViewController];
    visibleViewController = [previewViewController2 visibleViewController];
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissViewController];
    navigationItem = [visibleViewController navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    [previewViewController2 setNavigationBarHidden:0];
    [previewViewController2 setNeedsStatusBarAppearanceUpdate];
  }
}

- (BOOL)commitPreviewInController:(id)controller
{
  v13[1] = *MEMORY[0x277D85DE8];
  commitType = [(MLULookupItemContent *)self commitType];
  if (commitType == 2)
  {
    [(MLULookupItemContent *)self setupViewControllerInCommitMode];
    result = 1;
  }

  else
  {
    if (commitType == 4)
    {
      commitURL = [(MLULookupItemContent *)self commitURL];
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v7 = mEMORY[0x277D75128];
      if (commitURL && [mEMORY[0x277D75128] canOpenURL:commitURL])
      {
        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v12 = *MEMORY[0x277D67150];
        v13[0] = MEMORY[0x277CBEC38];
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        [defaultWorkspace openURL:commitURL withOptions:v9];
      }
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dismissViewController
{
  previewViewController = [(MLULookupItemContent *)self previewViewController];
  [previewViewController dismissViewControllerAnimated:1 completion:&__block_literal_global];
}

@end