@interface SUUIDividerPageComponent
- (SUUIDividerPageComponent)initWithCustomPageContext:(id)context;
- (SUUIDividerPageComponent)initWithDividerTitle:(id)title;
- (SUUIDividerPageComponent)initWithViewElement:(id)element;
@end

@implementation SUUIDividerPageComponent

- (SUUIDividerPageComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SUUIDividerPageComponent;
  v5 = [(SUUIPageComponent *)&v11 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"title"];
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

- (SUUIDividerPageComponent)initWithDividerTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = SUUIDividerPageComponent;
  v5 = [(SUUIDividerPageComponent *)&v9 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;
  }

  return v5;
}

- (SUUIDividerPageComponent)initWithViewElement:(id)element
{
  v4.receiver = self;
  v4.super_class = SUUIDividerPageComponent;
  return [(SUUIPageComponent *)&v4 initWithViewElement:element];
}

@end