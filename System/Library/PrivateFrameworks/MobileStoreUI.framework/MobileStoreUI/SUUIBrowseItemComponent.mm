@interface SUUIBrowseItemComponent
- (SUUIBrowseItemComponent)initWithViewElement:(id)element;
@end

@implementation SUUIBrowseItemComponent

- (SUUIBrowseItemComponent)initWithViewElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SUUIBrowseItemComponent;
  v5 = [(SUUIPageComponent *)&v18 initWithViewElement:elementCopy];
  if (v5)
  {
    metadata = [elementCopy metadata];
    if ([metadata count])
    {
      v7 = [metadata objectAtIndex:0];
      text = [v7 text];
      string = [text string];
      title = v5->_title;
      v5->_title = string;
    }

    if ([metadata count] >= 2)
    {
      v11 = [metadata objectAtIndex:1];
      text2 = [v11 text];
      string2 = [text2 string];
      subtitle = v5->_subtitle;
      v5->_subtitle = string2;
    }

    decorationImage = [elementCopy decorationImage];
    decorationImage = v5->_decorationImage;
    v5->_decorationImage = decorationImage;
  }

  return v5;
}

@end