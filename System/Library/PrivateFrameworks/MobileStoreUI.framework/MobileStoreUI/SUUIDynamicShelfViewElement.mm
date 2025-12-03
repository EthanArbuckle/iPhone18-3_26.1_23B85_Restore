@interface SUUIDynamicShelfViewElement
- (SUUIViewElement)cellTemplateViewElement;
- (id)applyUpdatesWithElement:(id)element;
- (void)setShelfItemViewElementValidator:(id)validator;
@end

@implementation SUUIDynamicShelfViewElement

- (SUUIViewElement)cellTemplateViewElement
{
  cellTemplateViewElement = self->_cellTemplateViewElement;
  if (!cellTemplateViewElement)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__SUUIDynamicShelfViewElement_cellTemplateViewElement__block_invoke;
    v5[3] = &unk_2798F5B20;
    v5[4] = self;
    [(SUUIShelfViewElement *)self enumerateChildrenUsingBlock:v5];
    cellTemplateViewElement = self->_cellTemplateViewElement;
  }

  return cellTemplateViewElement;
}

- (id)applyUpdatesWithElement:(id)element
{
  v8.receiver = self;
  v8.super_class = SUUIDynamicShelfViewElement;
  elementCopy = element;
  v5 = [(SUUIShelfViewElement *)&v8 applyUpdatesWithElement:elementCopy];

  if (elementCopy != self || [v5 updateType])
  {
    cellTemplateViewElement = self->_cellTemplateViewElement;
    self->_cellTemplateViewElement = 0;
  }

  return v5;
}

- (void)setShelfItemViewElementValidator:(id)validator
{
  v5.receiver = self;
  v5.super_class = SUUIDynamicShelfViewElement;
  [(SUUIShelfViewElement *)&v5 setShelfItemViewElementValidator:validator];
  cellTemplateViewElement = self->_cellTemplateViewElement;
  self->_cellTemplateViewElement = 0;
}

@end