@interface CRSUIDashboardWidgetWindowProxy
- (CRSUIDashboardWidgetWindowClient)delegate;
- (CRSUIDashboardWidgetWindowProxy)initWithDelegate:(id)delegate;
- (void)hostSelectedFocusableItem:(id)item;
- (void)hostSetWidgetSizes:(id)sizes;
@end

@implementation CRSUIDashboardWidgetWindowProxy

- (CRSUIDashboardWidgetWindowProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CRSUIDashboardWidgetWindowProxy;
  v5 = [(CRSUIDashboardWidgetWindowProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)hostSelectedFocusableItem:(id)item
{
  itemCopy = item;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostSelectedFocusableItem:itemCopy];
}

- (void)hostSetWidgetSizes:(id)sizes
{
  sizesCopy = sizes;
  delegate = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [delegate hostSetWidgetSizes:sizesCopy];
}

- (CRSUIDashboardWidgetWindowClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end