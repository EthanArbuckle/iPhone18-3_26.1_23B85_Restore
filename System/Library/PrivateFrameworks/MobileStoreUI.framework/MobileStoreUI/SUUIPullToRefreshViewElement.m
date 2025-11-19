@interface SUUIPullToRefreshViewElement
- (SUUIPullToRefreshViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIPullToRefreshViewElement

- (SUUIPullToRefreshViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v6.receiver = self;
  v6.super_class = SUUIPullToRefreshViewElement;
  return [(SUUIViewElement *)&v6 initWithDOMElement:a3 parent:a4 elementFactory:a5];
}

@end