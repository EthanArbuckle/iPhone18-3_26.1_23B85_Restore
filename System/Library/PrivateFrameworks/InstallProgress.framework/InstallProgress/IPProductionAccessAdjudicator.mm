@interface IPProductionAccessAdjudicator
- (BOOL)progressServer:(id)server shouldAcceptConnection:(id)connection;
@end

@implementation IPProductionAccessAdjudicator

- (BOOL)progressServer:(id)server shouldAcceptConnection:(id)connection
{
  v4 = [connection valueForEntitlement:@"com.apple.InstallProgress.access"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end