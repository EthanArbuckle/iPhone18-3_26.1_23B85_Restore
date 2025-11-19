@interface CTCarrierSpaceClientDelegateProxy
- (CTCarrierSpaceClientDelegate)delegate;
- (void)appsDidChange;
- (void)capabilitiesDidChange:(id)a3;
- (void)dataPlanMetricsDidChange;
- (void)plansDidChange;
- (void)purchasedPlan:(id)a3 didChangeStatus:(int64_t)a4 context:(id)a5;
- (void)remoteObjectRespondsToSelector:(SEL)a3 handler:(id)a4;
- (void)usageDidChange;
- (void)userConsentFlowInfoDidChange;
@end

@implementation CTCarrierSpaceClientDelegateProxy

- (void)remoteObjectRespondsToSelector:(SEL)a3 handler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();
  (*(a4 + 2))(v6, v7 & 1);
}

- (void)capabilitiesDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained capabilitiesDidChange:v4];
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

- (void)purchasedPlan:(id)a3 didChangeStatus:(int64_t)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained purchasedPlan:v9 didChangeStatus:a4 context:v8];
}

- (CTCarrierSpaceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end