@interface ENXPCClient
+ (ENXPCClient)clientWithAuditToken:(id *)a3 pid:(int)a4;
- (id)description;
- (void)activateWithAppAPIVersion:(int)a3 regionISO:(id)a4;
@end

@implementation ENXPCClient

- (id)description
{
  if ([(NSString *)self->_signingIdentity length])
  {
    signingIdentity = self->_signingIdentity;
  }

  NSAppendPrintF_safe();
  v12 = 0;
  pid = self->_pid;
  NSAppendPrintF();
  v4 = v12;

  appAPIVersion = self->_appAPIVersion;
  NSAppendPrintF_safe();
  v5 = v4;

  appRegion = self->_appRegion;
  if (appRegion)
  {
    v11 = appRegion;
    NSAppendPrintF_safe();
    v7 = v5;

    v5 = v7;
  }

  return v5;
}

+ (ENXPCClient)clientWithAuditToken:(id *)a3 pid:(int)a4
{
  v5 = objc_alloc_init(ENXPCClient);
  v5->_pid = a4;
  v6 = xpc_copy_code_signing_identity_for_token();
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CCACA0] stringWithUTF8String:v6];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_285D62BB0;
  }

  objc_storeStrong(&v5->_signingIdentity, v9);
  v10 = xpc_copy_entitlement_for_token();
  v11 = v10;
  if (!v10)
  {
    goto LABEL_27;
  }

  if (xpc_dictionary_get_BOOL(v10, "com.apple.private.exposure-notification"))
  {
    v12 = 4;
LABEL_14:
    v5->_accessLevel = v12;
    goto LABEL_15;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification-test"))
  {
    v12 = 3;
    goto LABEL_14;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification"))
  {
    v12 = 2;
    goto LABEL_14;
  }

LABEL_15:
  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification-test-skip-file-verification"))
  {
    v5->_entitledToSkipFileSigningVerification = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.developer.exposure-notification-logging"))
  {
    v5->_entitledForLogging = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-differential-privacy"))
  {
    v5->_entitledForDifferentialPrivacy = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-bypass-key-release-prompt"))
  {
    v5->_entitledToSkipKeyReleasePrompt = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-test-verification"))
  {
    v5->_entitledForTestVerification = 1;
  }

  if (xpc_dictionary_get_BOOL(v11, "com.apple.private.exposure-notification-show-buddy"))
  {
    v5->_entitledToShowBuddy = 1;
  }

LABEL_27:

  return v5;
}

- (void)activateWithAppAPIVersion:(int)a3 regionISO:(id)a4
{
  self->_appAPIVersion = a3;
  if (a4)
  {
    v5 = [MEMORY[0x277CC5CA0] regionWithCode:a4];
    appRegion = self->_appRegion;
    self->_appRegion = v5;
  }
}

@end