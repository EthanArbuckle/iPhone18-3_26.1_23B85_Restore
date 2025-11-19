@interface IPProductionAccessAdjudicator
- (BOOL)progressServer:(id)a3 shouldAcceptConnection:(id)a4;
@end

@implementation IPProductionAccessAdjudicator

- (BOOL)progressServer:(id)a3 shouldAcceptConnection:(id)a4
{
  v4 = [a4 valueForEntitlement:@"com.apple.InstallProgress.access"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end