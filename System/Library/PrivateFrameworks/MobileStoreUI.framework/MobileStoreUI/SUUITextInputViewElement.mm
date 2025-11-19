@interface SUUITextInputViewElement
+ (BOOL)isTextInputType:(id)a3;
+ (id)supportedFeatures;
- (SUUITextInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUITextInputViewElement

- (SUUITextInputViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = SUUITextInputViewElement;
  v9 = [(SUUIInputViewElement *)&v18 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = [v8 getAttribute:@"type"];
  if ([v10 isEqualToString:@"email"])
  {
    v11 = 7;
  }

  else
  {
    if (![v10 isEqualToString:@"number"])
    {
      v9->_keyboardType = 0;
      goto LABEL_8;
    }

    v11 = 4;
  }

  v9->_keyboardType = v11;
LABEL_8:
  v12 = [v8 getAttribute:@"maxlength"];
  v13 = v12;
  if (v12)
  {
    v9->_maximumLength = [v12 integerValue];
  }

  v14 = [v8 getAttribute:@"secure"];
  v15 = v14;
  if (v14)
  {
    v9->_secure = [v14 BOOLValue];
  }

  else if ([v10 isEqualToString:@"password"])
  {
    v9->_secure = 1;
  }

  v16 = [v8 getAttribute:@"placeholdertext"];
  if (v16)
  {
    objc_storeStrong(&v9->_placeholderText, v16);
  }

LABEL_17:
  return v9;
}

+ (BOOL)isTextInputType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"number"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"email") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"password"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"text"];
  }

  return v4;
}

+ (id)supportedFeatures
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x286AFD9C0;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUITextInputViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self && v5 == self)
  {
    self->_keyboardType = [(SUUITextInputViewElement *)v4 keyboardType];
    self->_maximumLength = [(SUUITextInputViewElement *)v4 maximumLength];
  }

  return v6;
}

@end