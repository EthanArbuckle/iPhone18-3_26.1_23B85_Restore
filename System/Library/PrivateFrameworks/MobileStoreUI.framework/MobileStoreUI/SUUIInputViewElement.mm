@interface SUUIInputViewElement
- (SUUIInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUIInputViewElement

- (SUUIInputViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v13 = [elementCopy getAttribute:@"type"];
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
        v12 = [(SUUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
        goto LABEL_12;
      }

      v14 = SUUISubmitInputViewElement;
    }

    v12 = [[v14 alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];

LABEL_12:
    goto LABEL_13;
  }

  v17.receiver = self;
  v17.super_class = SUUIInputViewElement;
  v12 = [(SUUIViewElement *)&v17 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
LABEL_13:

  return v12;
}

@end