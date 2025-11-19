@interface ActionPanelWebPageExtensionItemProvider
- (ActionPanelWebPageExtensionItemProvider)initWithExtensionItem:(id)a3 tabDocument:(id)a4;
@end

@implementation ActionPanelWebPageExtensionItemProvider

- (ActionPanelWebPageExtensionItemProvider)initWithExtensionItem:(id)a3 tabDocument:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 cachedCanonicalURLOrURLForSharing];
  v9 = [v6 titleForSharing];
  v10 = [v6 webView];

  v13.receiver = self;
  v13.super_class = ActionPanelWebPageExtensionItemProvider;
  v11 = [(_SFActivityExtensionItemProvider *)&v13 initWithExtensionItem:v7 URL:v8 pageTitle:v9 webView:v10];

  return v11;
}

@end