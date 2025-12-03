@interface SUUIAccountButtonsComponent
- (SUUIAccountButtonsComponent)initWithCustomPageContext:(id)context;
- (SUUIAccountButtonsComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind;
- (SUUIAccountButtonsComponent)initWithViewElement:(id)element;
@end

@implementation SUUIAccountButtonsComponent

- (SUUIAccountButtonsComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SUUIAccountButtonsComponent;
  v5 = [(SUUIPageComponent *)&v9 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"hideTerms"];
    if (objc_opt_respondsToSelector())
    {
      v5->_hidesTermsAndConditions = [v7 BOOLValue];
    }
  }

  return v5;
}

- (SUUIAccountButtonsComponent)initWithFeaturedContentContext:(id)context kind:(int64_t)kind
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = SUUIAccountButtonsComponent;
  v7 = [(SUUIPageComponent *)&v13 initWithFeaturedContentContext:contextCopy kind:kind];
  if (v7)
  {
    componentDictionary = [contextCopy componentDictionary];
    v9 = [componentDictionary objectForKey:@"ecommerceLink"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SUUILink alloc] initWithLinkDictionary:v9];
      ecommerceLink = v7->_ecommerceLink;
      v7->_ecommerceLink = v10;
    }
  }

  return v7;
}

- (SUUIAccountButtonsComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUIAccountButtonsComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

@end