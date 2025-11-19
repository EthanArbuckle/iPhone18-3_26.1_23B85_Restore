@interface SUUICommentTemplateViewElement
- (SUUICommentTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SUUICommentTemplateViewElement

- (SUUICommentTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v23.receiver = self;
  v23.super_class = SUUICommentTemplateViewElement;
  v9 = [(SUUIViewElement *)&v23 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"postPlaceholderText"];
    if (v10)
    {
      objc_storeStrong(&v9->_postPlaceholderText, v10);
    }

    v11 = [v8 getAttribute:@"postButtonText"];
    if (v11)
    {
      objc_storeStrong(&v9->_postButtonText, v11);
    }

    v12 = [v8 getAttribute:@"scrollNewCommentToView"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 lowercaseString];
      v9->_scrollNewCommentToView = [v14 isEqualToString:@"true"];
    }

    v15 = [v8 getAttribute:@"showKeyboard"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 lowercaseString];
      v9->_showKeyboard = [v17 isEqualToString:@"true"];
    }

    v18 = [v8 getAttribute:@"asText"];
    if (v18)
    {
      objc_storeStrong(&v9->_asText, v18);
    }

    v19 = [v8 getAttribute:@"asFormat"];
    if (v19)
    {
      objc_storeStrong(&v9->_asFormat, v19);
    }

    v20 = [v8 getAttribute:@"commentAsText"];
    if (v20)
    {
      objc_storeStrong(&v9->_commentAsText, v20);
    }

    v21 = [v8 getAttribute:@"myselfText"];
    if (v21)
    {
      objc_storeStrong(&v9->_myselfText, v21);
    }
  }

  return v9;
}

@end