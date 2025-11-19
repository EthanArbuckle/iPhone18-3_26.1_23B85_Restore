@interface FCCKTestRecordNameCipher
- (id)decryptRecordName:(id)a3 withKey:(id)a4;
- (id)encryptRecordName:(id)a3 withKey:(id)a4;
@end

@implementation FCCKTestRecordNameCipher

- (id)encryptRecordName:(id)a3 withKey:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithData:v6 encoding:4];

  v9 = [v7 stringByAppendingString:v8];

  return v9;
}

- (id)decryptRecordName:(id)a3 withKey:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithData:v6 encoding:4];

  v9 = [v7 stringByReplacingOccurrencesOfString:v8 withString:&stru_1F2DC7DC0];

  return v9;
}

@end