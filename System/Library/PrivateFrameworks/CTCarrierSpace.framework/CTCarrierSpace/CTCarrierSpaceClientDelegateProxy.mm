@interface CTCarrierSpaceClientDelegateProxy
- (CTCarrierSpaceClientDelegate)delegate;
- (void)appsDidChange;
- (void)capabilitiesDidChange:(id)change;
- (void)dataPlanMetricsDidChange;
- (void)plansDidChange;
- (void)purchasedPlan:(id)plan didChangeStatus:(int64_t)status context:(id)context;
- (void)remoteObjectRespondsToSelector:(SEL)selector handler:(id)handler;
- (void)usageDidChange;
- (void)userConsentFlowInfoDidChange;
@end

@implementation CTCarrierSpaceClientDelegateProxy

- (void)remoteObjectRespondsToSelector:(SEL)selector handler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();
  (*(handler + 2))(handlerCopy, v7 & 1);
}

- (void)capabilitiesDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained capabilitiesDidChange:changeCopy];
}

- (void)userConsentFlowInfoDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userConsentFlowInfoDidChange];
}

- (void)usageDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained usageDidChange];
}

- (void)plansDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained plansDidChange];
}

- (void)appsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appsDidChange];
}

- (void)dataPlanMetricsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataPlanMetricsDidChange];
}

- (void)purchasedPlan:(id)plan didChangeStatus:(int64_t)status context:(id)context
{
  contextCopy = context;
  planCopy = plan;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained purchasedPlan:planCopy didChangeStatus:status context:contextCopy];
}

- (CTCarrierSpaceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end