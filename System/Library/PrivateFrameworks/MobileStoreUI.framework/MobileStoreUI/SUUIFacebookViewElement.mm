@interface SUUIFacebookViewElement
- (SUUIFacebookViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIFacebookViewElement

- (SUUIFacebookViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIFacebookViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"type"];
    v9->_facebookType = [v10 isEqualToString:@"large"];

    v11 = [elementCopy getAttribute:@"url"];
    urlString = v9->_urlString;
    v9->_urlString = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIFacebookViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_facebookType = [(SUUIFacebookViewElement *)elementCopy facebookType];
    uRLString = [(SUUIFacebookViewElement *)elementCopy URLString];
    urlString = self->_urlString;
    self->_urlString = uRLString;
  }

  return v6;
}

@end