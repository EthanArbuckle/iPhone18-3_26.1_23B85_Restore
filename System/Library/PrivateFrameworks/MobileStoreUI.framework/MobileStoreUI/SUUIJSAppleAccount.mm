@interface SUUIJSAppleAccount
- (SUUIJSAppleAccount)initWithACAccount:(id)account;
@end

@implementation SUUIJSAppleAccount

- (SUUIJSAppleAccount)initWithACAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = SUUIJSAppleAccount;
  v6 = [(SUUIJSAppleAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

@end