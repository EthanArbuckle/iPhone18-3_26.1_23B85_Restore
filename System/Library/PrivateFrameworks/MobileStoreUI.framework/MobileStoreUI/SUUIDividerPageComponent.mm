@interface SUUIDividerPageComponent
- (SUUIDividerPageComponent)initWithCustomPageContext:(id)a3;
- (SUUIDividerPageComponent)initWithDividerTitle:(id)a3;
- (SUUIDividerPageComponent)initWithViewElement:(id)a3;
@end

@implementation SUUIDividerPageComponent

- (SUUIDividerPageComponent)initWithCustomPageContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUUIDividerPageComponent;
  v5 = [(SUUIPageComponent *)&v11 initWithCustomPageContext:v4];
  if (v5)
  {
    v6 = [v4 componentDictionary];
    v7 = [v6 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      title = v5->_title;
      v5->_title = v8;
    }
  }

  return v5;
}

- (SUUIDividerPageComponent)initWithDividerTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIDividerPageComponent;
  v5 = [(SUUIDividerPageComponent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (SUUIDividerPageComponent)initWithViewElement:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIDividerPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:a3];
}

@end