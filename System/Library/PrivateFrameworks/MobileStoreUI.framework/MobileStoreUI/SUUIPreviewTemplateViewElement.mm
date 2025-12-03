@interface SUUIPreviewTemplateViewElement
- (SUUIPreviewTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIPreviewTemplateViewElement

- (SUUIPreviewTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIPreviewTemplateViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"data-content-id"];
    if ([v10 length])
    {
      v9->_itemIdentifier = [v10 longLongValue];
    }

    v11 = [elementCopy getAttribute:@"preview-url"];
    previewURLString = v9->_previewURLString;
    v9->_previewURLString = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIPreviewTemplateViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_itemIdentifier = [(SUUIPreviewTemplateViewElement *)elementCopy itemIdentifier];
    previewURLString = [(SUUIPreviewTemplateViewElement *)elementCopy previewURLString];
    previewURLString = self->_previewURLString;
    self->_previewURLString = previewURLString;
  }

  return v6;
}

@end