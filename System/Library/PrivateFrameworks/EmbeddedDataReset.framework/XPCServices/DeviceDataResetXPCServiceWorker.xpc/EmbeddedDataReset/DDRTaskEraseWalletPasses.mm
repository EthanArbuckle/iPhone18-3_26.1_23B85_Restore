@interface DDRTaskEraseWalletPasses
- (void)configure;
- (void)run;
@end

@implementation DDRTaskEraseWalletPasses

- (void)configure
{
  v3 = objc_alloc_init(PKPassLibrary);
  [(DDRTaskEraseWalletPasses *)self setPassLibrary:v3];

  passLibrary = [(DDRTaskEraseWalletPasses *)self passLibrary];
  -[DDRTaskEraseWalletPasses setEstimatedTime:](self, "setEstimatedTime:", [passLibrary estimatedTimeToResetApplePay]);
}

- (void)run
{
  passLibrary = [(DDRTaskEraseWalletPasses *)self passLibrary];
  [passLibrary resetApplePayWithDiagnosticReason:@"Device Data Reset"];
}

@end