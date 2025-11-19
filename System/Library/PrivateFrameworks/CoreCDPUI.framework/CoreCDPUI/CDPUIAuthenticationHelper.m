@interface CDPUIAuthenticationHelper
+ (id)_authContextForContext:(id)a3;
+ (void)_authWithContext:(id)a3 completion:(id)a4;
+ (void)proxAuthenticationForContext:(id)a3 viewController:(id)a4 withCompletion:(id)a5;
@end

@implementation CDPUIAuthenticationHelper

+ (void)_authWithContext:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CF0178];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 authenticateWithContext:v7 completion:v6];
}

+ (id)_authContextForContext:(id)a3
{
  v3 = MEMORY[0x277CF0170];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 dsid];
  v7 = [v6 stringValue];
  [v5 setDSID:v7];

  v8 = [v4 altDSID];
  [v5 setAltDSID:v8];

  v9 = [v4 appleID];
  [v5 setUsername:v9];

  v10 = [v4 password];

  [v5 _setPassword:v10];

  return v5;
}

+ (void)proxAuthenticationForContext:(id)a3 viewController:(id)a4 withCompletion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CFD560];
  v10 = a5;
  if ([v9 isCDPRepairWithProximityBasedPiggybackingEnabled])
  {
    v11 = [a1 _authContextForContext:v13];
    v12 = [objc_alloc(MEMORY[0x277CF0380]) initWithContext:v11];
    [v12 setAuthenticationType:0];
    [v12 setIsUsernameEditable:0];
    [v12 setServiceType:1];
    [v12 setSupportsPiggybacking:1];
    [v12 setPiggybackingForTrustedDevice:1];
    [v12 setPresentingViewController:v8];
    [a1 _authWithContext:v12 completion:v10];

    v10 = v12;
  }

  else
  {
    v11 = _CDPStateError();
    (*(v10 + 2))(v10, 0, v11);
  }
}

@end