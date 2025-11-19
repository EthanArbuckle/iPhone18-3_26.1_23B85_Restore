@interface CRSUIDashboardWidgetWindowProxy
- (CRSUIDashboardWidgetWindowClient)delegate;
- (CRSUIDashboardWidgetWindowProxy)initWithDelegate:(id)a3;
- (void)hostSelectedFocusableItem:(id)a3;
- (void)hostSetWidgetSizes:(id)a3;
@end

@implementation CRSUIDashboardWidgetWindowProxy

- (CRSUIDashboardWidgetWindowProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRSUIDashboardWidgetWindowProxy;
  v5 = [(CRSUIDashboardWidgetWindowProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)hostSelectedFocusableItem:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [v5 hostSelectedFocusableItem:v4];
}

- (void)hostSetWidgetSizes:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIDashboardWidgetWindowProxy *)self delegate];
  [v5 hostSetWidgetSizes:v4];
}

- (CRSUIDashboardWidgetWindowClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end