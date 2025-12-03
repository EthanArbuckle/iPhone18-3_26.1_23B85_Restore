@interface MLULookupItemRawTextContent
- (MLULookupItemRawTextContent)initWithText:(id)text range:(_NSRange)range;
- (void)dismissViewController;
- (void)setupViewControllerInCommitMode;
@end

@implementation MLULookupItemRawTextContent

- (MLULookupItemRawTextContent)initWithText:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v13.receiver = self;
  v13.super_class = MLULookupItemRawTextContent;
  v8 = [(MLULookupItemRawTextContent *)&v13 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D04330]) initWithString:textCopy range:{location, length}];
    [(MLULookupItemContent *)v8 setPreviewViewController:v9];

    previewViewController = [(MLULookupItemContent *)v8 previewViewController];
    [previewViewController setModalPresentationStyle:6];

    parsecCollectionViewController = [(MLULookupItemRawTextContent *)v8 parsecCollectionViewController];
    [parsecCollectionViewController setPreviewMode:1];

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
  parsecCollectionViewController = [(MLULookupItemRawTextContent *)self parsecCollectionViewController];
  [parsecCollectionViewController setPreviewMode:0];
}

@end