@interface NSError(KCCreationHelpers)
+ (id)errorWithCoreCryptoStatus:()KCCreationHelpers description:args:;
+ (id)errorWithCoreCryptoStatus:()KCCreationHelpers userInfo:;
+ (id)errorWithOSStatus:()KCCreationHelpers description:args:;
+ (id)errorWithOSStatus:()KCCreationHelpers userInfo:;
- (uint64_t)initWithCoreCryptoStatus:()KCCreationHelpers description:args:;
- (uint64_t)initWithOSStatus:()KCCreationHelpers description:args:;
@end

@implementation NSError(KCCreationHelpers)

- (uint64_t)initWithCoreCryptoStatus:()KCCreationHelpers description:args:
{
  v7 = UserInfoFromVA(a4, a5);
  v8 = [a1 initWithCoreCryptoStatus:a3 userInfo:v7];

  return v8;
}

- (uint64_t)initWithOSStatus:()KCCreationHelpers description:args:
{
  v7 = UserInfoFromVA(a4, a5);
  v8 = [a1 initWithOSStatus:a3 userInfo:v7];

  return v8;
}

+ (id)errorWithCoreCryptoStatus:()KCCreationHelpers description:args:
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = a4;
  v9 = [[v7 alloc] initWithCoreCryptoStatus:a3 description:v8 args:a5];

  return v9;
}

+ (id)errorWithCoreCryptoStatus:()KCCreationHelpers userInfo:
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [[v5 alloc] initWithCoreCryptoStatus:a3 userInfo:v6];

  return v7;
}

+ (id)errorWithOSStatus:()KCCreationHelpers description:args:
{
  v7 = MEMORY[0x277CCA9B8];
  v8 = a4;
  v9 = [[v7 alloc] initWithOSStatus:a3 description:v8 args:a5];

  return v9;
}

+ (id)errorWithOSStatus:()KCCreationHelpers userInfo:
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [[v5 alloc] initWithOSStatus:a3 userInfo:v6];

  return v7;
}

@end