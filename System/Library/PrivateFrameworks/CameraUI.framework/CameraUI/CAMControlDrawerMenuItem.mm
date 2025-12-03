@interface CAMControlDrawerMenuItem
- (CAMControlDrawerMenuItem)initWithTitle:(id)title selectedTitle:(id)selectedTitle value:(id)value;
@end

@implementation CAMControlDrawerMenuItem

- (CAMControlDrawerMenuItem)initWithTitle:(id)title selectedTitle:(id)selectedTitle value:(id)value
{
  titleCopy = title;
  selectedTitleCopy = selectedTitle;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = CAMControlDrawerMenuItem;
  v11 = [(CAMControlDrawerMenuItem *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [selectedTitleCopy copy];
    selectedTitle = v11->_selectedTitle;
    v11->_selectedTitle = v14;

    objc_storeStrong(&v11->_value, value);
  }

  return v11;
}

@end