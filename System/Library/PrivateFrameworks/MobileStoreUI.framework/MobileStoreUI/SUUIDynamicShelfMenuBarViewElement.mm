@interface SUUIDynamicShelfMenuBarViewElement
- (SUUIViewElement)cellTemplateViewElement;
- (id)applyUpdatesWithElement:(id)element;
- (void)setShelfItemViewElementValidator:(id)validator;
@end

@implementation SUUIDynamicShelfMenuBarViewElement

- (SUUIViewElement)cellTemplateViewElement
{
  cellTemplateViewElement = self->_cellTemplateViewElement;
  if (!cellTemplateViewElement)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __61__SUUIDynamicShelfMenuBarViewElement_cellTemplateViewElement__block_invoke;
    v5[3] = &unk_2798F5B20;
    v5[4] = self;
    [(SUUIShelfMenuBarViewElement *)self enumerateChildrenUsingBlock:v5];
    cellTemplateViewElement = self->_cellTemplateViewElement;
  }

  return cellTemplateViewElement;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIDynamicShelfMenuBarViewElement;
  v5 = [(SUUIShelfMenuBarViewElement *)&v10 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    cellTemplateViewElement = [(SUUIDynamicShelfMenuBarViewElement *)elementCopy cellTemplateViewElement];
    cellTemplateViewElement = self->_cellTemplateViewElement;
    self->_cellTemplateViewElement = cellTemplateViewElement;
  }

  return v6;
}

- (void)setShelfItemViewElementValidator:(id)validator
{
  v5.receiver = self;
  v5.super_class = SUUIDynamicShelfMenuBarViewElement;
  [(SUUIShelfViewElement *)&v5 setShelfItemViewElementValidator:validator];
  cellTemplateViewElement = self->_cellTemplateViewElement;
  self->_cellTemplateViewElement = 0;
}

@end