@interface HMMTRAccessoryServerBrowserDataSourceDefault
- (id)makeMatterKeypair;
- (id)makeSystemCommissionerPairingManagerWithQueue:(id)a3 browser:(id)a4;
- (id)makeThreadRadioManagerWithBrowser:(id)a3;
@end

@implementation HMMTRAccessoryServerBrowserDataSourceDefault

- (id)makeMatterKeypair
{
  v2 = [[HMMTRMatterKeypair alloc] initWithV0Account:@"CHIPPlugin.nodeOperationalKeyPair.CA:0"];

  return v2;
}

- (id)makeThreadRadioManagerWithBrowser:(id)a3
{
  v3 = a3;
  v4 = [[HMMTRThreadRadioManager alloc] initWithBrowser:v3];

  return v4;
}

- (id)makeSystemCommissionerPairingManagerWithQueue:(id)a3 browser:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMMTRSystemCommissionerPairingManager alloc] initWithQueue:v6 accessoryServerBrowser:v5];

  return v7;
}

@end