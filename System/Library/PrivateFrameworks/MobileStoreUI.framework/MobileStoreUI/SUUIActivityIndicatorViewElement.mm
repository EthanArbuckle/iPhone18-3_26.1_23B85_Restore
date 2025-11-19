@interface SUUIActivityIndicatorViewElement
- (SUUIActivityIndicatorViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIActivityIndicatorViewElement

- (SUUIActivityIndicatorViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUIActivityIndicatorViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"period"];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
    }

    else
    {
      v12 = -1.0;
    }

    v9->_period = v12;
  }

  return v9;
}

@end