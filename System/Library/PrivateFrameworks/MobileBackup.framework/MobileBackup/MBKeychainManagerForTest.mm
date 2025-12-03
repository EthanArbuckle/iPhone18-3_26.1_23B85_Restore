@interface MBKeychainManagerForTest
+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
+ (BOOL)removeKeybagSecretsWithError:(id *)error;
+ (BOOL)removeLocalBackupPassword:(id *)password;
+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error;
@end

@implementation MBKeychainManagerForTest

+ (BOOL)removeLocalBackupPassword:(id *)password
{
  v3 = qword_100421AB0;
  qword_100421AB0 = 0;

  return 1;
}

+ (BOOL)addKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  secretCopy = secret;
  dCopy = d;
  v8 = qword_100421AB8;
  if (!qword_100421AB8)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = qword_100421AB8;
    qword_100421AB8 = v9;

    v8 = qword_100421AB8;
  }

  [v8 setObject:secretCopy forKeyedSubscript:dCopy];

  return 1;
}

+ (BOOL)updateKeybagSecret:(id)secret forUUID:(id)d error:(id *)error
{
  secretCopy = secret;
  dCopy = d;
  v8 = qword_100421AB8;
  if (!qword_100421AB8)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = qword_100421AB8;
    qword_100421AB8 = v9;

    v8 = qword_100421AB8;
  }

  [v8 setObject:secretCopy forKeyedSubscript:dCopy];

  return 1;
}

+ (BOOL)removeKeybagSecretsWithError:(id *)error
{
  v3 = qword_100421AB8;
  qword_100421AB8 = 0;

  return 1;
}

@end