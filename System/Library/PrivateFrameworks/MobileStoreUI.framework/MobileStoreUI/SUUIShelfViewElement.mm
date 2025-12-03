@interface SUUIShelfViewElement
- (SUUIShelfViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (void)enumerateChildrenUsingBlock:(id)block;
@end

@implementation SUUIShelfViewElement

- (SUUIShelfViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  v11 = objc_opt_class();
  if (v11 == objc_opt_class())
  {
    v14 = [elementCopy getAttribute:@"entityProviderID"];
    v15 = [v14 length];

    if (v15)
    {
      v12 = [(SUUIShelfViewElement *)[SUUIDynamicShelfViewElement alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
LABEL_12:

      goto LABEL_13;
    }
  }

  v20.receiver = self;
  v20.super_class = SUUIShelfViewElement;
  v12 = [(SUUIViewElement *)&v20 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v12)
  {
    self = [elementCopy getAttribute:@"rowCount"];
    if ([(SUUIShelfViewElement *)self length])
    {
      numberOfRows = [(SUUIShelfViewElement *)self integerValue];
      v12->super._numberOfRows = numberOfRows;
    }

    else
    {
      numberOfRows = v12->super._numberOfRows;
    }

    if (numberOfRows <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = numberOfRows;
    }

    v12->super._numberOfRows = v16;
    v17 = [elementCopy getAttribute:@"slideshowTitle"];
    slideshowTitle = v12->super._slideshowTitle;
    v12->super._slideshowTitle = v17;

    goto LABEL_12;
  }

LABEL_13:

  return &v12->super;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIShelfViewElement;
  v5 = [(SUUIViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_numberOfRows = [(SUUIShelfViewElement *)elementCopy numberOfRows];
    slideshowTitle = [(SUUIShelfViewElement *)elementCopy slideshowTitle];
    slideshowTitle = self->_slideshowTitle;
    self->_slideshowTitle = slideshowTitle;
  }

  return v6;
}

- (void)enumerateChildrenUsingBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUUIShelfViewElement_enumerateChildrenUsingBlock___block_invoke;
  v7[3] = &unk_2798FD000;
  v7[4] = self;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = SUUIShelfViewElement;
  v5 = blockCopy;
  [(SUUIViewElement *)&v6 enumerateChildrenUsingBlock:v7];
}

void __52__SUUIShelfViewElement_enumerateChildrenUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  v4 = (v3 - 14) > 0x34 || ((1 << (v3 - 14)) & 0x10000800004001) == 0;
  if (!v4 || v3 == 152)
  {
    v5 = *(*(a1 + 32) + 296);
    if (!v5 || (*(v5 + 16))(v5, v6))
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

@end