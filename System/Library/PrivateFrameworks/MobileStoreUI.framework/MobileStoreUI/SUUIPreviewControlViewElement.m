@interface SUUIPreviewControlViewElement
- (BOOL)isEnabled;
- (SUUIPreviewControlViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIPreviewControlViewElement

- (SUUIPreviewControlViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SUUIPreviewControlViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      v11 = -1;
    }

    v9->_enabled = v11;
    v12 = [v8 getAttribute:@"data-content-id"];
    if ([v12 length])
    {
      v9->_itemIdentifier = [v12 longLongValue];
    }

    v13 = [v8 getAttribute:@"preview-url"];
    mediaURLString = v9->_mediaURLString;
    v9->_mediaURLString = v13;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIPreviewControlViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_enabled = v4->_enabled;
    self->_itemIdentifier = [(SUUIPreviewControlViewElement *)v4 itemIdentifier];
    v7 = [(SUUIPreviewControlViewElement *)v4 mediaURLString];
    mediaURLString = self->_mediaURLString;
    self->_mediaURLString = v7;
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SUUIPreviewControlViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

@end