@interface SUUILockupViewElement
- (BOOL)containsElementGroups;
- (BOOL)isEnabled;
- (SUUILockupViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SUUILockupViewElement

- (SUUILockupViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v16.receiver = self;
  v16.super_class = SUUILockupViewElement;
  v9 = [(SUUIViewElement *)&v16 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v11) = -1;
    }

    v9->_enabled = v11;
    v12 = [elementCopy getAttribute:@"selectable"];
    if ([v12 length])
    {
      lowercaseString = [v12 lowercaseString];
      v9->_selectable = [lowercaseString isEqualToString:@"true"];
    }

    v14 = [elementCopy getAttribute:@"type"];
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

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUILockupViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_lockupViewType = [(SUUILockupViewElement *)elementCopy lockupViewType];
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