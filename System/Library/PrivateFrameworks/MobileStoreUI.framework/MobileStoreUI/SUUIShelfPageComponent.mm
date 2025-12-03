@interface SUUIShelfPageComponent
- (SUUIShelfPageComponent)initWithViewElement:(id)element;
@end

@implementation SUUIShelfPageComponent

- (SUUIShelfPageComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUIShelfPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

@end