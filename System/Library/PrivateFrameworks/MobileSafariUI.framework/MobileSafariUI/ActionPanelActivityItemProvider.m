@interface ActionPanelActivityItemProvider
- (ActionPanelActivityItemProvider)initWithPlaceholderItem:(id)a3 tabDocument:(id)a4;
- (ActionPanelActivityItemProvider)initWithTabDocument:(id)a3;
- (TabDocument)tabDocument;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
@end

@implementation ActionPanelActivityItemProvider

- (ActionPanelActivityItemProvider)initWithPlaceholderItem:(id)a3 tabDocument:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 cachedCanonicalURLOrURLForSharing];
  v9 = [v6 titleForSharing];
  v10 = [v6 webView];
  v14.receiver = self;
  v14.super_class = ActionPanelActivityItemProvider;
  v11 = [(_SFLinkWithPreviewActivityItemProvider *)&v14 initWithPlaceholderItem:v7 URL:v8 pageTitle:v9 webView:v10];

  if (v11)
  {
    objc_storeWeak(&v11->_tabDocument, v6);
    v12 = v11;
  }

  return v11;
}

- (ActionPanelActivityItemProvider)initWithTabDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 cachedCanonicalURLOrURLForSharing];
  v6 = [(ActionPanelActivityItemProvider *)self initWithPlaceholderItem:v5 tabDocument:v4];

  return v6;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  if ([v8 isEqualToString:*MEMORY[0x277D54710]])
  {
    v9 = [(_SFActivityItemProvider *)self thumbnailHandler];
    if (v9)
    {
      v10 = [(_SFActivityItemProvider *)self thumbnailHandler];
      v11 = (v10)[2](v10, v8, width, height);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TabDocument)tabDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_tabDocument);

  return WeakRetained;
}

@end