@interface CKMessageEntryViewContainerView
- (CKMessageEntryViewContainerViewDelegate)entryViewContainerViewDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CKMessageEntryViewContainerView;
  v5 = [(CKMessageEntryViewContainerView *)&v7 hitTest:event withEvent:test.x, test.y];
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