@interface SUUICommentTemplateViewElement
- (SUUICommentTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SUUICommentTemplateViewElement

- (SUUICommentTemplateViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v23.receiver = self;
  v23.super_class = SUUICommentTemplateViewElement;
  v9 = [(SUUIViewElement *)&v23 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"postPlaceholderText"];
    if (v10)
    {
      objc_storeStrong(&v9->_postPlaceholderText, v10);
    }

    v11 = [elementCopy getAttribute:@"postButtonText"];
    if (v11)
    {
      objc_storeStrong(&v9->_postButtonText, v11);
    }

    v12 = [elementCopy getAttribute:@"scrollNewCommentToView"];
    v13 = v12;
    if (v12)
    {
      lowercaseString = [v12 lowercaseString];
      v9->_scrollNewCommentToView = [lowercaseString isEqualToString:@"true"];
    }

    v15 = [elementCopy getAttribute:@"showKeyboard"];
    v16 = v15;
    if (v15)
    {
      lowercaseString2 = [v15 lowercaseString];
      v9->_showKeyboard = [lowercaseString2 isEqualToString:@"true"];
    }

    v18 = [elementCopy getAttribute:@"asText"];
    if (v18)
    {
      objc_storeStrong(&v9->_asText, v18);
    }

    v19 = [elementCopy getAttribute:@"asFormat"];
    if (v19)
    {
      objc_storeStrong(&v9->_asFormat, v19);
    }

    v20 = [elementCopy getAttribute:@"commentAsText"];
    if (v20)
    {
      objc_storeStrong(&v9->_commentAsText, v20);
    }

    v21 = [elementCopy getAttribute:@"myselfText"];
    if (v21)
    {
      objc_storeStrong(&v9->_myselfText, v21);
    }
  }

  return v9;
}

@end