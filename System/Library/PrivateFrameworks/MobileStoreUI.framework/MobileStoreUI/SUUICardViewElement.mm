@interface SUUICardViewElement
- (BOOL)isAdCard;
- (BOOL)isEnabled;
- (SUUICardViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)cardType;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUICardViewElement

- (SUUICardViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUICardViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"disabled"];
    if ([v10 length])
    {
      v11 = [v10 BOOLValue] ^ 1;
    }

    else
    {
      v11 = -1;
    }

    v9->_enabled = v11;
  }

  return v9;
}

- (int64_t)cardType
{
  style = [(SUUICardViewElement *)self style];
  cardType = [style cardType];
  v4 = SUUICardElementTypeForString(cardType);

  return v4;
}

- (BOOL)isAdCard
{
  attributes = [(SUUICardViewElement *)self attributes];
  v3 = [attributes objectForKey:@"isAdCard"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SUUICardViewElement;
  v5 = [(SUUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUUICardViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F6008;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SUUICardViewElement;
  v5 = blockCopy;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __51__SUUICardViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 7) > 0x3B || ((1 << (v3 - 7)) & 0x8801E0002000023) == 0;
  if (!v4 || (v3 - 108) <= 0x2C && ((1 << (v3 - 108)) & 0x100040800001) != 0)
  {
    (*(*(a1 + 32) + 16))();
  }
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
  v6.super_class = SUUICardViewElement;
  return [(SUUIViewElement *)&v6 isEnabled];
}

@end