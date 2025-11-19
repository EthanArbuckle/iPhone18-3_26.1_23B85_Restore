@interface SUUILockupViewElement
- (BOOL)containsElementGroups;
- (BOOL)isEnabled;
- (SUUILockupViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
- (id)applyUpdatesWithElement:(id)a3;
@end

@implementation SUUILockupViewElement

- (SUUILockupViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = SUUILockupViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:v8 parent:a4 elementFactory:a5];
  if (v9)
  {
    v10 = [v8 getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v11) = -1;
    }

    v9->_enabled = v11;
    v12 = [v8 getAttribute:@"selectable"];
    if ([v12 length])
    {
      v13 = [v12 lowercaseString];
      v9->_selectable = [v13 isEqualToString:@"true"];
    }

    v14 = [v8 getAttribute:@"type"];
    v9->_lockupViewType = SUUILockupViewTypeForString(v14);
  }

  return v9;
}

- (BOOL)containsElementGroups
{
  v2 = [(SUUIViewElement *)self firstChildForElementType:127];
  v3 = v2 != 0;

  return v3;
}

- (id)applyUpdatesWithElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUILockupViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:v4];
  v6 = v5;
  if (v4 != self || [v5 updateType])
  {
    self->_enabled = v4->_enabled;
    self->_lockupViewType = [(SUUILockupViewElement *)v4 lockupViewType];
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SUUILockupViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

@end