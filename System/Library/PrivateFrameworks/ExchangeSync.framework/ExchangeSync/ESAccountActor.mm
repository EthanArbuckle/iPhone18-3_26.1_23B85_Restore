@interface ESAccountActor
- (ESAccountActor)initWithDAAccount:(id)account;
@end

@implementation ESAccountActor

- (ESAccountActor)initWithDAAccount:(id)account
{
  accountCopy = account;
  v5 = +[ESAccountLoader sharedInstance];
  v6 = sharedDAAccountStore();
  v7 = [v6 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C00]];
  [v5 loadFrameworkForACAccountType:v7];

  v8 = [objc_alloc(NSClassFromString(&cfstr_Asconcreteacco.isa)) initWithDAAccount:accountCopy];
  return v8;
}

@end