@interface HMDNetworkRouterFirewallRuleManagerClientState
- (HMDNetworkRouterFirewallRuleManagerClient)client;
@end

@implementation HMDNetworkRouterFirewallRuleManagerClientState

- (HMDNetworkRouterFirewallRuleManagerClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end