@interface SUUIBrowseItemComponent
- (SUUIBrowseItemComponent)initWithViewElement:(id)a3;
@end

@implementation SUUIBrowseItemComponent

- (SUUIBrowseItemComponent)initWithViewElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SUUIBrowseItemComponent;
  v5 = [(SUUIPageComponent *)&v18 initWithViewElement:v4];
  if (v5)
  {
    v6 = [v4 metadata];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndex:0];
      v8 = [v7 text];
      v9 = [v8 string];
      title = v5->_title;
      v5->_title = v9;
    }

    if ([v6 count] >= 2)
    {
      v11 = [v6 objectAtIndex:1];
      v12 = [v11 text];
      v13 = [v12 string];
      subtitle = v5->_subtitle;
      v5->_subtitle = v13;
    }

    v15 = [v4 decorationImage];
    decorationImage = v5->_decorationImage;
    v5->_decorationImage = v15;
  }

  return v5;
}

@end