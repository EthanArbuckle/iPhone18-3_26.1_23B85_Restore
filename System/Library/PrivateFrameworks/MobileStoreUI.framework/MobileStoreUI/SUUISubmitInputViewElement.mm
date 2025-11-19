@interface SUUISubmitInputViewElement
- (SUUISubmitInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUISubmitInputViewElement

- (SUUISubmitInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SUUISubmitInputViewElement;
  v9 = [(SUUIInputViewElement *)&v12 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"value"];
    if (v10)
    {
      objc_storeStrong(&v9->_label, v10);
    }
  }

  return v9;
}

@end