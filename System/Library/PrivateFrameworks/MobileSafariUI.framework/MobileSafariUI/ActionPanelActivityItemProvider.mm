@interface ActionPanelActivityItemProvider
- (ActionPanelActivityItemProvider)initWithPlaceholderItem:(id)item tabDocument:(id)document;
- (ActionPanelActivityItemProvider)initWithTabDocument:(id)document;
- (TabDocument)tabDocument;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
@end

@implementation ActionPanelActivityItemProvider

- (ActionPanelActivityItemProvider)initWithPlaceholderItem:(id)item tabDocument:(id)document
{
  documentCopy = document;
  itemCopy = item;
  cachedCanonicalURLOrURLForSharing = [documentCopy cachedCanonicalURLOrURLForSharing];
  titleForSharing = [documentCopy titleForSharing];
  webView = [documentCopy webView];
  v14.receiver = self;
  v14.super_class = ActionPanelActivityItemProvider;
  v11 = [(_SFLinkWithPreviewActivityItemProvider *)&v14 initWithPlaceholderItem:itemCopy URL:cachedCanonicalURLOrURLForSharing pageTitle:titleForSharing webView:webView];

  if (v11)
  {
    objc_storeWeak(&v11->_tabDocument, documentCopy);
    v12 = v11;
  }

  return v11;
}

- (ActionPanelActivityItemProvider)initWithTabDocument:(id)document
{
  documentCopy = document;
  cachedCanonicalURLOrURLForSharing = [documentCopy cachedCanonicalURLOrURLForSharing];
  v6 = [(ActionPanelActivityItemProvider *)self initWithPlaceholderItem:cachedCanonicalURLOrURLForSharing tabDocument:documentCopy];

  return v6;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x277D54710]])
  {
    thumbnailHandler = [(_SFActivityItemProvider *)self thumbnailHandler];
    if (thumbnailHandler)
    {
      thumbnailHandler2 = [(_SFActivityItemProvider *)self thumbnailHandler];
      v11 = (thumbnailHandler2)[2](thumbnailHandler2, typeCopy, width, height);
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