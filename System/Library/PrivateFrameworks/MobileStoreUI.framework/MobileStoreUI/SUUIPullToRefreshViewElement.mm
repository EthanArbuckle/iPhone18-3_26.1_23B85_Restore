@interface SUUIPullToRefreshViewElement
- (SUUIPullToRefreshViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIPullToRefreshViewElement

- (SUUIPullToRefreshViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v6.receiver = self;
  v6.super_class = SUUIPullToRefreshViewElement;
  return [(SUUIViewElement *)&v6 initWithDOMElement:element parent:parent elementFactory:factory];
}

@end