@interface CKDBackingExplicitCredentialsAccount
+ (id)explicitCredentialsAccountWithEmail:(id)a3 password:(id)a4 recoveryKey:(id)a5 propertyOverrides:(id)a6 overridesByDataclass:(id)a7;
- (ACAccount)ckAccount;
- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6;
- (BOOL)isDataclassEnabled:(id)a3;
- (CKDBackingExplicitCredentialsAccount)initWithAppleAccount:(id)a3 hsa2RecoveryKey:(id)a4 hsa2AccountPassword:(id)a5;
- (NSString)password;
- (void)_setOverridesOnVettingContext:(id)a3;
- (void)renewAuthTokenWithOptions:(id)a3 completionHandler:(id)a4;
- (void)updateAccountPropertiesAndSaveAccount:(id)a3;
@end

@implementation CKDBackingExplicitCredentialsAccount

+ (id)explicitCredentialsAccountWithEmail:(id)a3 password:(id)a4 recoveryKey:(id)a5 propertyOverrides:(id)a6 overridesByDataclass:(id)a7
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (a5)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a5 = v17;
  }

  else
  {
    v16 = 0;
  }

  if (a6)
  {
    a6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a7)
  {
    a7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v18 = static CKDBackingExplicitCredentialsAccount.explicitCredentialsAccount(withEmail:password:recoveryKey:propertyOverrides:overridesByDataclass:)(v10, v12, v13, v15, v16, a5, a6, a7);

  return v18;
}

- (BOOL)isDataclassEnabled:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return 1;
}

- (void)renewAuthTokenWithOptions:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  sub_2250AD6B8(v6, v7, v5);
  _Block_release(v5);
}

- (void)updateAccountPropertiesAndSaveAccount:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_22507C7AC(&unk_225443EE0, v5);
}

- (void)_setOverridesOnVettingContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2250B0480(v4);
}

- (ACAccount)ckAccount
{
  v2 = self;
  v3 = CKDBackingExplicitCredentialsAccount.ckAccount.getter();

  return v3;
}

- (NSString)password
{
  v2 = self;
  sub_2250B0660();
  v4 = v3;
  v6 = v5;

  v7 = MEMORY[0x22AA62D80](v4, v6);

  return v7;
}

- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  v14 = a5;
  CKDBackingExplicitCredentialsAccount.authenticationController(_:shouldContinueWithAuthenticationResults:error:for:)(v14, a4, a5);

  return 0;
}

- (CKDBackingExplicitCredentialsAccount)initWithAppleAccount:(id)a3 hsa2RecoveryKey:(id)a4 hsa2AccountPassword:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKDBackingExplicitCredentialsAccount;
  v11 = [(CKDBackingAccount *)&v14 initWithAppleAccount:a3];
  v12 = v11;
  if (v9 && v11)
  {
    objc_storeStrong(&v11->_hsa2RecoveryKey, a4);
    objc_storeStrong(&v12->_hsa2AccountPassword, a5);
  }

  return v12;
}

@end