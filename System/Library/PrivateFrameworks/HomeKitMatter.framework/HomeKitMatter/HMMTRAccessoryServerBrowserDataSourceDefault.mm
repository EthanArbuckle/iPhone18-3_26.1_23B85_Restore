@interface HMMTRAccessoryServerBrowserDataSourceDefault
- (id)makeMatterKeypair;
- (id)makeSystemCommissionerPairingManagerWithQueue:(id)queue browser:(id)browser;
- (id)makeThreadRadioManagerWithBrowser:(id)browser;
@end

@implementation HMMTRAccessoryServerBrowserDataSourceDefault

- (id)makeMatterKeypair
{
  v2 = [[HMMTRMatterKeypair alloc] initWithV0Account:@"CHIPPlugin.nodeOperationalKeyPair.CA:0"];

  return v2;
}

- (id)makeThreadRadioManagerWithBrowser:(id)browser
{
  browserCopy = browser;
  v4 = [[HMMTRThreadRadioManager alloc] initWithBrowser:browserCopy];

  return v4;
}

- (id)makeSystemCommissionerPairingManagerWithQueue:(id)queue browser:(id)browser
{
  browserCopy = browser;
  queueCopy = queue;
  v7 = [[HMMTRSystemCommissionerPairingManager alloc] initWithQueue:queueCopy accessoryServerBrowser:browserCopy];

  return v7;
}

@end