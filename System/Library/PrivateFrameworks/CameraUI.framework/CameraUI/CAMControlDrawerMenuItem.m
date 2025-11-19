@interface CAMControlDrawerMenuItem
- (CAMControlDrawerMenuItem)initWithTitle:(id)a3 selectedTitle:(id)a4 value:(id)a5;
@end

@implementation CAMControlDrawerMenuItem

- (CAMControlDrawerMenuItem)initWithTitle:(id)a3 selectedTitle:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CAMControlDrawerMenuItem;
  v11 = [(CAMControlDrawerMenuItem *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    selectedTitle = v11->_selectedTitle;
    v11->_selectedTitle = v14;

    objc_storeStrong(&v11->_value, a5);
  }

  return v11;
}

@end