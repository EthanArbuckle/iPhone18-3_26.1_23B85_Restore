@interface SUUIPreviewTemplateViewElement
- (SUUIPreviewTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIPreviewTemplateViewElement

- (SUUIPreviewTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUIPreviewTemplateViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"data-content-id"];
    if ([v10 length])
    {
      v9->_itemIdentifier = [v10 longLongValue];
    }

    v11 = [v8 getAttribute:@"preview-url"];
    previewURLString = v9->_previewURLString;
    v9->_previewURLString = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIPreviewTemplateViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_itemIdentifier = [(SUUIPreviewTemplateViewElement *)v4 itemIdentifier];
    v7 = [(SUUIPreviewTemplateViewElement *)v4 previewURLString];
    previewURLString = self->_previewURLString;
    self->_previewURLString = v7;
  }

  return v6;
}

@end