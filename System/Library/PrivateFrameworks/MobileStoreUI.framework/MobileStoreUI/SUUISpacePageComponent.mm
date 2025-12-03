@interface SUUISpacePageComponent
- (SUUISpacePageComponent)initWithCustomPageContext:(id)context;
@end

@implementation SUUISpacePageComponent

- (SUUISpacePageComponent)initWithCustomPageContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SUUISpacePageComponent;
  v5 = [(SUUIPageComponent *)&v12 initWithCustomPageContext:contextCopy];
  if (v5)
  {
    componentDictionary = [contextCopy componentDictionary];
    v7 = [componentDictionary objectForKey:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = SUUISpacePageComponentHeightForString(v7);
    }

    else
    {
      v9 = objc_opt_respondsToSelector();
      v8 = 7.0;
      if (v9)
      {
        [v7 floatValue];
        v8 = v10;
      }
    }

    v5->_height = v8;
  }

  return v5;
}

@end