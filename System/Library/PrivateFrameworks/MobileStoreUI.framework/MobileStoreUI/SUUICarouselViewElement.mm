@interface SUUICarouselViewElement
- (SUUICarouselViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SUUIProgressIndicatorViewElement)progressIndicatorElement;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUICarouselViewElement

- (SUUICarouselViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SUUICarouselViewElement;
  v9 = [(SUUIViewElement *)&v13 initWithDOMElement:elementCopy parent:parent elementFactory:factory];
  if (v9)
  {
    v10 = [elementCopy getAttribute:@"displayInterval"];
    if ([v10 length])
    {
      [v10 doubleValue];
    }

    else
    {
      v11 = -1.0;
    }

    v9->_displayInterval = v11;
  }

  return v9;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUICarouselViewElement;
  v5 = [(SUUIViewElement *)&v9 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    [(SUUICarouselViewElement *)elementCopy displayInterval];
    self->_displayInterval = v7;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUUICarouselViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798F6008;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SUUICarouselViewElement;
  v5 = blockCopy;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __55__SUUICarouselViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 elementType];
  v4 = (v3 - 14) > 0x34 || ((1 << (v3 - 14)) & 0x10000800004001) == 0;
  if (!v4 || v3 == 152)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (SUUIProgressIndicatorViewElement)progressIndicatorElement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__96;
  v10 = __Block_byref_object_dispose__96;
  v11 = 0;
  children = [(SUUICarouselViewElement *)self children];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SUUICarouselViewElement_progressIndicatorElement__block_invoke;
  v5[3] = &unk_2798FDE00;
  v5[4] = &v6;
  [children enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __51__SUUICarouselViewElement_progressIndicatorElement__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 elementType] == 95)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end