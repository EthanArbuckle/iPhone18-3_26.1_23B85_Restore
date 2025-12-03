@interface SUUIFacebookPageComponent
- (SUUIFacebookPageComponent)initWithViewElement:(id)element;
@end

@implementation SUUIFacebookPageComponent

- (SUUIFacebookPageComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUIFacebookPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

@end