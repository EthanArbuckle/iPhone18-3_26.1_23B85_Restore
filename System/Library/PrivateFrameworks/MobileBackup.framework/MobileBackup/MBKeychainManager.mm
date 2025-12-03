@interface MBKeychainManager
+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
+ (BOOL)addLocalBackupPassword:(id)password error:(id *)error;
+ (BOOL)removeKeybagSecretForUUID:(id)d error:(id *)error;
+ (BOOL)removeKeybagSecretsWithError:(id *)error;
+ (BOOL)removeLocalBackupPasswordAndReturnError:(id *)error;
+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
+ (BOOL)updateLocalBackupPassword:(id)password error:(id *)error;
+ (id)fetchKeybagSecretForUUID:(id)d error:(id *)error;
+ (id)fetchLocalBackupPasswordAndReturnError:(id *)error;
@end

@implementation MBKeychainManager

+ (id)fetchLocalBackupPasswordAndReturnError:(id *)error
{
  managerToUse = [self managerToUse];

  return [managerToUse fetchLocalBackupPassword:error];
}

+ (id)fetchKeybagSecretForUUID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [objc_msgSend(self "managerToUse")];

  return v7;
}

+ (BOOL)addLocalBackupPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  LOBYTE(error) = [objc_msgSend(self "managerToUse")];

  return error;
}

+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  dCopy = d;
  secretCopy = secret;
  LOBYTE(error) = [objc_msgSend(self "managerToUse")];

  return error;
}

+ (BOOL)updateLocalBackupPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  LOBYTE(error) = [objc_msgSend(self "managerToUse")];

  return error;
}

+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  dCopy = d;
  secretCopy = secret;
  LOBYTE(error) = [objc_msgSend(self "managerToUse")];

  return error;
}

+ (BOOL)removeLocalBackupPasswordAndReturnError:(id *)error
{
  managerToUse = [self managerToUse];

  return [managerToUse removeLocalBackupPassword:error];
}

+ (BOOL)removeKeybagSecretsWithError:(id *)error
{
  managerToUse = [self managerToUse];

  return [managerToUse removeKeybagSecretsWithError:error];
}

+ (BOOL)removeKeybagSecretForUUID:(id)d error:(id *)error
{
  dCopy = d;
  LOBYTE(error) = [objc_msgSend(self "managerToUse")];

  return error;
}

@end