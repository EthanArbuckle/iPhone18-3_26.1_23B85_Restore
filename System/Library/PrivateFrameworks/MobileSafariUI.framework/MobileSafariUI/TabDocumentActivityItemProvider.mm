@interface TabDocumentActivityItemProvider
- (TabDocumentActivityItemProvider)initWithTabDocument:(id)document;
@end

@implementation TabDocumentActivityItemProvider

- (TabDocumentActivityItemProvider)initWithTabDocument:(id)document
{
  documentCopy = document;
  v6 = [documentCopy URL];
  title = [documentCopy title];
  webView = [documentCopy webView];
  v12.receiver = self;
  v12.super_class = TabDocumentActivityItemProvider;
  v9 = [(_SFActivityItemProvider *)&v12 initWithPlaceholderItem:documentCopy URL:v6 pageTitle:title webView:webView];

  if (v9)
  {
    objc_storeStrong(&v9->_tabDocument, document);
    v10 = v9;
  }

  return v9;
}

@end