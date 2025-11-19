@interface DDRTaskEraseWalletPasses
- (void)configure;
- (void)run;
@end

@implementation DDRTaskEraseWalletPasses

- (void)configure
{
  v3 = objc_alloc_init(PKPassLibrary);
  [(DDRTaskEraseWalletPasses *)self setPassLibrary:v3];

  v4 = [(DDRTaskEraseWalletPasses *)self passLibrary];
  -[DDRTaskEraseWalletPasses setEstimatedTime:](self, "setEstimatedTime:", [v4 estimatedTimeToResetApplePay]);
}

- (void)run
{
  v2 = [(DDRTaskEraseWalletPasses *)self passLibrary];
  [v2 resetApplePayWithDiagnosticReason:@"Device Data Reset"];
}

@end