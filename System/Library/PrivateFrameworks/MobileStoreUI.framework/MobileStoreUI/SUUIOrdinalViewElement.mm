@interface SUUIOrdinalViewElement
- (SUUIOrdinalViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIOrdinalViewElement

- (SUUIOrdinalViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIOrdinalViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:elementCopy usingParseBlock:0];
    text = v9->_text;
    v9->_text = v10;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIOrdinalViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    text = [(SUUIOrdinalViewElement *)elementCopy text];
    text = self->_text;
    self->_text = text;
  }

  return v6;
}

@end