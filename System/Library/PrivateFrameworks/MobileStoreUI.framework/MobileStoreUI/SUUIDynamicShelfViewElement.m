@interface SUUIDynamicShelfViewElement
- (SUUIViewElement)cellTemplateViewElement;
- (id)applyUpdatesWithElement:(id)a3;
- (void)setShelfItemViewElementValidator:(id)a3;
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

- (id)applyUpdatesWithElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUUIDynamicShelfViewElement;
  v4 = a3;
  v5 = [(SUUIShelfViewElement *)&v8 applyUpdatesWithElement:v4];

  if (v4 != self || [v5 updateType])
  {
    cellTemplateViewElement = self->_cellTemplateViewElement;
    self->_cellTemplateViewElement = 0;
  }

  return v5;
}

- (void)setShelfItemViewElementValidator:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUIDynamicShelfViewElement;
  [(SUUIShelfViewElement *)&v5 setShelfItemViewElementValidator:a3];
  cellTemplateViewElement = self->_cellTemplateViewElement;
  self->_cellTemplateViewElement = 0;
}

@end