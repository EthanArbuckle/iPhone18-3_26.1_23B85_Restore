@interface SUUIFacebookViewElement
- (SUUIFacebookViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUIFacebookViewElement

- (SUUIFacebookViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = SUUIFacebookViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"type"];
    v9->_facebookType = [v10 isEqualToString:@"large"];

    v11 = [v8 getAttribute:@"url"];
    urlString = v9->_urlString;
    v9->_urlString = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SUUIFacebookViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_facebookType = [(SUUIFacebookViewElement *)v4 facebookType];
    v7 = [(SUUIFacebookViewElement *)v4 URLString];
    urlString = self->_urlString;
    self->_urlString = v7;
  }

  return v6;
}

@end