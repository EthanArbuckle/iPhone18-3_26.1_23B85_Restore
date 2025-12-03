@interface FCCKTestRecordNameCipher
- (id)decryptRecordName:(id)name withKey:(id)key;
- (id)encryptRecordName:(id)name withKey:(id)key;
@end

@implementation FCCKTestRecordNameCipher

- (id)encryptRecordName:(id)name withKey:(id)key
{
  v5 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  nameCopy = name;
  v8 = [[v5 alloc] initWithData:keyCopy encoding:4];

  v9 = [nameCopy stringByAppendingString:v8];

  return v9;
}

- (id)decryptRecordName:(id)name withKey:(id)key
{
  v5 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  nameCopy = name;
  v8 = [[v5 alloc] initWithData:keyCopy encoding:4];

  v9 = [nameCopy stringByReplacingOccurrencesOfString:v8 withString:&stru_1F2DC7DC0];

  return v9;
}

@end