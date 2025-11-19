@interface SUUIInputViewElement
- (SUUIInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUIInputViewElement

- (SUUIInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v13 = [v8 getAttribute:@"type"];
    if ([v13 isEqualToString:@"checkbox"])
    {
      v14 = SUUICheckboxInputViewElement;
    }

    else if ([SUUITextInputViewElement isTextInputType:v13])
    {
      v14 = SUUITextInputViewElement;
    }

    else if ([v13 isEqualToString:@"search"])
    {
      v14 = SUUISearchBarViewElement;
    }

    else
    {
      if (![v13 isEqualToString:@"submit"])
      {
        v16.receiver = self;
        v16.super_class = SUUIInputViewElement;
        v12 = [(SUUIViewElement *)&v16 initWithDOMElement:v8 parent:v9 elementFactory:v10];
        goto LABEL_12;
      }

      v14 = SUUISubmitInputViewElement;
    }

    v12 = [[v14 alloc] initWithDOMElement:v8 parent:v9 elementFactory:v10];

LABEL_12:
    goto LABEL_13;
  }

  v17.receiver = self;
  v17.super_class = SUUIInputViewElement;
  v12 = [(SUUIViewElement *)&v17 initWithDOMElement:v8 parent:v9 elementFactory:v10];
LABEL_13:

  return v12;
}

@end