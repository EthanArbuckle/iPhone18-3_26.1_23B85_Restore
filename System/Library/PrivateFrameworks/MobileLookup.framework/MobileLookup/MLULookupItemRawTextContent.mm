@interface MLULookupItemRawTextContent
- (MLULookupItemRawTextContent)initWithText:(id)a3 range:(_NSRange)a4;
- (void)dismissViewController;
- (void)setupViewControllerInCommitMode;
@end

@implementation MLULookupItemRawTextContent

- (MLULookupItemRawTextContent)initWithText:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = MLULookupItemRawTextContent;
  v8 = [(MLULookupItemRawTextContent *)&v13 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D04330]) initWithString:v7 range:{location, length}];
    [(MLULookupItemContent *)v8 setPreviewViewController:v9];

    v10 = [(MLULookupItemContent *)v8 previewViewController];
    [v10 setModalPresentationStyle:6];

    v11 = [(MLULookupItemRawTextContent *)v8 parsecCollectionViewController];
    [v11 setPreviewMode:1];

    [(MLULookupItemContent *)v8 setValid:1];
  }

  return v8;
}

- (void)dismissViewController
{
  v2.receiver = self;
  v2.super_class = MLULookupItemRawTextContent;
  [(MLULookupItemContent *)&v2 dismissViewController];
}

- (void)setupViewControllerInCommitMode
{
  v2 = [(MLULookupItemRawTextContent *)self parsecCollectionViewController];
  [v2 setPreviewMode:0];
}

@end