@interface CDPUIAuthenticationHelper
+ (id)_authContextForContext:(id)context;
+ (void)_authWithContext:(id)context completion:(id)completion;
+ (void)proxAuthenticationForContext:(id)context viewController:(id)controller withCompletion:(id)completion;
@end

@implementation CDPUIAuthenticationHelper

+ (void)_authWithContext:(id)context completion:(id)completion
{
  v5 = MEMORY[0x277CF0178];
  completionCopy = completion;
  contextCopy = context;
  v8 = objc_alloc_init(v5);
  [v8 authenticateWithContext:contextCopy completion:completionCopy];
}

+ (id)_authContextForContext:(id)context
{
  v3 = MEMORY[0x277CF0170];
  contextCopy = context;
  v5 = objc_alloc_init(v3);
  dsid = [contextCopy dsid];
  stringValue = [dsid stringValue];
  [v5 setDSID:stringValue];

  altDSID = [contextCopy altDSID];
  [v5 setAltDSID:altDSID];

  appleID = [contextCopy appleID];
  [v5 setUsername:appleID];

  password = [contextCopy password];

  [v5 _setPassword:password];

  return v5;
}

+ (void)proxAuthenticationForContext:(id)context viewController:(id)controller withCompletion:(id)completion
{
  contextCopy = context;
  controllerCopy = controller;
  v9 = MEMORY[0x277CFD560];
  completionCopy = completion;
  if ([v9 isCDPRepairWithProximityBasedPiggybackingEnabled])
  {
    v11 = [self _authContextForContext:contextCopy];
    v12 = [objc_alloc(MEMORY[0x277CF0380]) initWithContext:v11];
    [v12 setAuthenticationType:0];
    [v12 setIsUsernameEditable:0];
    [v12 setServiceType:1];
    [v12 setSupportsPiggybacking:1];
    [v12 setPiggybackingForTrustedDevice:1];
    [v12 setPresentingViewController:controllerCopy];
    [self _authWithContext:v12 completion:completionCopy];

    completionCopy = v12;
  }

  else
  {
    v11 = _CDPStateError();
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }
}

@end