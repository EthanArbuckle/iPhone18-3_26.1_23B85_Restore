@interface SUUIPreviewControlViewElement
- (BOOL)isEnabled;
- (SUUIPreviewControlViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIPreviewControlViewElement

- (SUUIPreviewControlViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = SUUIPreviewControlViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      v11 = -1;
    }

    v9->_enabled = v11;
    v12 = [elementCopy getAttribute:@"data-content-id"];
    if ([v12 length])
    {
      v9->_itemIdentifier = [v12 longLongValue];
    }

    v13 = [elementCopy getAttribute:@"preview-url"];
    mediaURLString = v9->_mediaURLString;
    v9->_mediaURLString = v13;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIPreviewControlViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_itemIdentifier = [(SUUIPreviewControlViewElement *)elementCopy itemIdentifier];
    mediaURLString = [(SUUIPreviewControlViewElement *)elementCopy mediaURLString];
    mediaURLString = self->_mediaURLString;
    self->_mediaURLString = mediaURLString;
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