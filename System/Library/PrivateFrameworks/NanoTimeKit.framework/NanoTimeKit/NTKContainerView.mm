@interface NTKContainerView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NTKContainerViewLayoutDelegate)layoutDelegate;
- (void)layoutSubviews;
- (void)setLayoutDelegate:(id)delegate;
@end

@implementation NTKContainerView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKContainerView;
  [(NTKContainerView *)&v4 layoutSubviews];
  if (*&self->_delegateRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);
    [WeakRetained layoutContainerView:self];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  subviews = [(NTKContainerView *)self subviews];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__NTKContainerView_pointInside_withEvent___block_invoke;
  v11[3] = &unk_278784748;
  v11[4] = self;
  v14 = x;
  v15 = y;
  v9 = eventCopy;
  v12 = v9;
  v13 = &v16;
  [subviews enumerateObjectsUsingBlock:v11];

  LOBYTE(subviews) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return subviews;
}

void __42__NTKContainerView_pointInside_withEvent___block_invoke(double *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 4);
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2;
  [v6 convertPoint:v9 toView:{v7, v8}];
  LODWORD(v6) = [v9 pointInside:*(a1 + 5) withEvent:?];

  if (v6)
  {
    *(*(*(a1 + 6) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)setLayoutDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_layoutDelegate, obj);
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (NTKContainerViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

@end