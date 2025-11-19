@interface IKNavigationItem
- (IKNavigationItem)initWithDocument:(id)a3 presentationOptions:(id)a4;
@end

@implementation IKNavigationItem

- (IKNavigationItem)initWithDocument:(id)a3 presentationOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IKNavigationItem;
  v9 = [(IKNavigationItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_document, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

@end