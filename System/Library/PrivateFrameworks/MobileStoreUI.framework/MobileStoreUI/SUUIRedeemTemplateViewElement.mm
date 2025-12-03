@interface SUUIRedeemTemplateViewElement
- (SUUIRedeemTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIRedeemTemplateViewElement

- (SUUIRedeemTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIRedeemTemplateViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"code"];
    initialCode = v9->_initialCode;
    v9->_initialCode = v10;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIRedeemTemplateViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    initialCode = [(SUUIRedeemTemplateViewElement *)elementCopy initialCode];
    initialCode = self->_initialCode;
    self->_initialCode = initialCode;
  }

  return v6;
}

@end