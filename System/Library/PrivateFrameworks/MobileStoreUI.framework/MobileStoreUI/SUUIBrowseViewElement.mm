@interface SUUIBrowseViewElement
- (SUUIBrowseViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUIBrowseViewElement

- (SUUIBrowseViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUIBrowseViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"title"];
    title = v9->_title;
    v9->_title = v10;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIBrowseViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    title = [(SUUIBrowseViewElement *)elementCopy title];
    title = self->_title;
    self->_title = title;
  }

  return v6;
}

@end