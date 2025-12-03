@interface CKDBackingExplicitCredentialsAccount
+ (id)explicitCredentialsAccountWithEmail:(id)email password:(id)password recoveryKey:(id)key propertyOverrides:(id)overrides overridesByDataclass:(id)dataclass;
- (ACAccount)ckAccount;
- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context;
- (BOOL)isDataclassEnabled:(id)enabled;
- (CKDBackingExplicitCredentialsAccount)initWithAppleAccount:(id)account hsa2RecoveryKey:(id)key hsa2AccountPassword:(id)password;
- (NSString)password;
- (void)_setOverridesOnVettingContext:(id)context;
- (void)renewAuthTokenWithOptions:(id)options completionHandler:(id)handler;
- (void)updateAccountPropertiesAndSaveAccount:(id)account;
@end

@implementation CKDBackingExplicitCredentialsAccount

+ (id)explicitCredentialsAccountWithEmail:(id)email password:(id)password recoveryKey:(id)key propertyOverrides:(id)overrides overridesByDataclass:(id)dataclass
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (key)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    key = v17;
  }

  else
  {
    v16 = 0;
  }

  if (overrides)
  {
    overrides = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (dataclass)
  {
    dataclass = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v18 = static CKDBackingExplicitCredentialsAccount.explicitCredentialsAccount(withEmail:password:recoveryKey:propertyOverrides:overridesByDataclass:)(v10, v12, v13, v15, v16, key, overrides, dataclass);

  return v18;
}

- (BOOL)isDataclassEnabled:(id)enabled
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 1;
}

- (void)renewAuthTokenWithOptions:(id)options completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_2250AD6B8(v6, selfCopy, v5);
  _Block_release(v5);
}

- (void)updateAccountPropertiesAndSaveAccount:(id)account
{
  v4 = _Block_copy(account);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_22507C7AC(&unk_225443EE0, v5);
}

- (void)_setOverridesOnVettingContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_2250B0480(contextCopy);
}

- (ACAccount)ckAccount
{
  selfCopy = self;
  v3 = CKDBackingExplicitCredentialsAccount.ckAccount.getter();

  return v3;
}

- (NSString)password
{
  selfCopy = self;
  sub_2250B0660();
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x22AA62D80](v4, v6);

  return v7;
}

- (BOOL)authenticationController:(id)controller shouldContinueWithAuthenticationResults:(id)results error:(id)error forContext:(id)context
{
  controllerCopy = controller;
  resultsCopy = results;
  contextCopy = context;
  selfCopy = self;
  errorCopy = error;
  CKDBackingExplicitCredentialsAccount.authenticationController(_:shouldContinueWithAuthenticationResults:error:for:)(errorCopy, results, error);

  return 0;
}

- (CKDBackingExplicitCredentialsAccount)initWithAppleAccount:(id)account hsa2RecoveryKey:(id)key hsa2AccountPassword:(id)password
{
  keyCopy = key;
  passwordCopy = password;
  v14.receiver = self;
  v14.super_class = CKDBackingExplicitCredentialsAccount;
  v11 = [(CKDBackingAccount *)&v14 initWithAppleAccount:account];
  v12 = v11;
  if (keyCopy && v11)
  {
    objc_storeStrong(&v11->_hsa2RecoveryKey, key);
    objc_storeStrong(&v12->_hsa2AccountPassword, password);
  }

  return v12;
}

@end