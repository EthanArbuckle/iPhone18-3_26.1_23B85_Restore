@interface SUUIShelfPageComponent
- (SUUIShelfPageComponent)initWithViewElement:(id)a3;
@end

@implementation SUUIShelfPageComponent

- (SUUIShelfPageComponent)initWithViewElement:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIShelfPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:a3];
}

@end