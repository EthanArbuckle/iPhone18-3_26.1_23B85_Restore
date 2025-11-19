@interface SUUIOrdinalViewElement
- (SUUIOrdinalViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIOrdinalViewElement

- (SUUIOrdinalViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = SUUIOrdinalViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [(IKTextParser *)SUUIViewElementText textWithDOMElement:v8 usingParseBlock:0];
    text = v9->_text;
    v9->_text = v10;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIOrdinalViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    v7 = [(SUUIOrdinalViewElement *)v4 text];
    text = self->_text;
    self->_text = v7;
  }

  return v6;
}

@end