@interface MLULookupItemContent
+ (id)contentWithAttachments:(id)a3 currentAttachmentIndex:(unint64_t)a4;
+ (id)contentWithText:(id)a3 range:(_NSRange)a4;
+ (id)contentWithURL:(id)a3 result:(__DDResult *)a4 documentProperties:(id)a5;
- (BOOL)commitPreviewInController:(id)a3;
- (void)dismissViewController;
- (void)setupViewControllerInCommitMode;
@end

@implementation MLULookupItemContent

+ (id)contentWithURL:(id)a3 result:(__DDResult *)a4 documentProperties:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[MLULookupItemDDContent alloc] initWithURL:v8 result:a4 documentProperties:v7];

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

+ (id)contentWithAttachments:(id)a3 currentAttachmentIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [[MLULookupItemAttachmentContent alloc] initWithAttachments:v5 currentAttachmentIndex:a4];

  return v6;
}

+ (id)contentWithText:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [[MLULookupItemRawTextContent alloc] initWithText:v6 range:location, length];

  return v7;
}

- (void)setupViewControllerInCommitMode
{
  v3 = [(MLULookupItemContent *)self previewViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(MLULookupItemContent *)self previewViewController];
    v5 = [v8 visibleViewController];
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissViewController];
    v7 = [v5 navigationItem];
    [v7 setRightBarButtonItem:v6];

    [v8 setNavigationBarHidden:0];
    [v8 setNeedsStatusBarAppearanceUpdate];
  }
}

- (BOOL)commitPreviewInController:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = [(MLULookupItemContent *)self commitType];
  if (v4 == 2)
  {
    [(MLULookupItemContent *)self setupViewControllerInCommitMode];
    result = 1;
  }

  else
  {
    if (v4 == 4)
    {
      v5 = [(MLULookupItemContent *)self commitURL];
      v6 = [MEMORY[0x277D75128] sharedApplication];
      v7 = v6;
      if (v5 && [v6 canOpenURL:v5])
      {
        v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v12 = *MEMORY[0x277D67150];
        v13[0] = MEMORY[0x277CBEC38];
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        [v8 openURL:v5 withOptions:v9];
      }
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dismissViewController
{
  v2 = [(MLULookupItemContent *)self previewViewController];
  [v2 dismissViewControllerAnimated:1 completion:&__block_literal_global];
}

@end