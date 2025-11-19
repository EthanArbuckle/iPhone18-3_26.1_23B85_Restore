@interface CKMessageEntryViewContainerView
- (CKMessageEntryViewContainerViewDelegate)entryViewContainerViewDelegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation CKMessageEntryViewContainerView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKMessageEntryViewContainerView;
  [(CKMessageEntryViewContainerView *)&v4 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_entryViewContainerViewDelegate);
  [WeakRetained entryViewContainerViewDidLayoutSubviews:self];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKMessageEntryViewContainerView;
  v5 = [(CKMessageEntryViewContainerView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (CKMessageEntryViewContainerViewDelegate)entryViewContainerViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entryViewContainerViewDelegate);

  return WeakRetained;
}

@end