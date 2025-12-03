@interface SUUIColumnViewElement
- (SUUIColumnViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SUUIHeaderViewElement)headerElement;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUIColumnViewElement

- (SUUIColumnViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v14.receiver = self;
  v14.super_class = SUUIColumnViewElement;
  v9 = [(SUUIViewElement *)&v14 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"span"];
    if ([v10 length])
    {
      integerValue = [v10 integerValue];
      if (integerValue <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = integerValue;
      }
    }

    else
    {
      v12 = 1;
    }

    v9->_columnSpan = v12;
  }

  return v9;
}

- (SUUIHeaderViewElement)headerElement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SUUIColumnViewElement_headerElement__block_invoke;
  v5[3] = &unk_2798F5FB8;
  v5[4] = &v6;
  v4.receiver = self;
  v4.super_class = SUUIColumnViewElement;
  [(SUUIViewElement *)&v4 enumerateChildrenUsingBlock:v5];
  v2 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v2;
}

void __38__SUUIColumnViewElement_headerElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 48)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v7.receiver = self;
  v7.super_class = SUUIColumnViewElement;
  v5 = [(SUUIViewElement *)&v7 applyUpdatesWithElement:elementCopy];
  if (v5 == self)
  {
    self->_columnSpan = [elementCopy columnSpan];
  }

  return v5;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  if ([(SUUIViewElement *)self descendsFromElementWithType:17])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__SUUIColumnViewElement_enumerateChildrenUsingBlock___block_invoke;
    v6[3] = &unk_2798F6008;
    v7 = blockCopy;
    v5.receiver = self;
    v5.super_class = SUUIColumnViewElement;
    [(SUUIViewElement *)&v5 enumerateChildrenUsingBlock:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUUIColumnViewElement;
    [(SUUIViewElement *)&v8 enumerateChildrenUsingBlock:blockCopy];
  }
}

void __53__SUUIColumnViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] != 48)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end