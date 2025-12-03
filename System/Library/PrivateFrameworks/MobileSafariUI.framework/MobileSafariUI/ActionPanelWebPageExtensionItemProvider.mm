@interface ActionPanelWebPageExtensionItemProvider
- (ActionPanelWebPageExtensionItemProvider)initWithExtensionItem:(id)item tabDocument:(id)document;
@end

@implementation ActionPanelWebPageExtensionItemProvider

- (ActionPanelWebPageExtensionItemProvider)initWithExtensionItem:(id)item tabDocument:(id)document
{
  documentCopy = document;
  itemCopy = item;
  cachedCanonicalURLOrURLForSharing = [documentCopy cachedCanonicalURLOrURLForSharing];
  titleForSharing = [documentCopy titleForSharing];
  webView = [documentCopy webView];

  v13.receiver = self;
  v13.super_class = ActionPanelWebPageExtensionItemProvider;
  v11 = [(_SFActivityExtensionItemProvider *)&v13 initWithExtensionItem:itemCopy URL:cachedCanonicalURLOrURLForSharing pageTitle:titleForSharing webView:webView];

  return v11;
}

@end