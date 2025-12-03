@interface IKNavigationItem
- (IKNavigationItem)initWithDocument:(id)document presentationOptions:(id)options;
@end

@implementation IKNavigationItem

- (IKNavigationItem)initWithDocument:(id)document presentationOptions:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = IKNavigationItem;
  v9 = [(IKNavigationItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_document, document);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

@end