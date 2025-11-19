@interface LACUILocalization
+ (NSString)authenticationFailed;
+ (NSString)enterPasswordToAllowThis;
+ (NSString)enterPasswordToAllowThisAdmin;
+ (NSString)enterPinToAllowThis;
+ (NSString)enterPinToAllowThisAdmin;
+ (NSString)touchIdOrPasswordToAllowThis;
+ (NSString)touchIdOrPasswordToAllowThisAdmin;
+ (NSString)touchIdOrPinToAllowThis;
+ (NSString)touchIdOrPinToAllowThisAdmin;
+ (NSString)usePassword;
+ (NSString)watchOrPasswordToAllowThis;
+ (NSString)watchOrPasswordToAllowThisAdmin;
+ (NSString)watchOrPinToAllowThis;
+ (NSString)watchOrPinToAllowThisAdmin;
- (LACUILocalization)init;
@end

@implementation LACUILocalization

+ (NSString)authenticationFailed
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BF190, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)enterPasswordToAllowThis
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001DLL, 0x80000002560BF1B0, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)enterPasswordToAllowThisAdmin
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000023, 0x80000002560BF1D0, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)enterPinToAllowThis
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000018, 0x80000002560BF200, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)enterPinToAllowThisAdmin
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x80000002560BF220, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)touchIdOrPasswordToAllowThis
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000023, 0x80000002560BF240, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)touchIdOrPasswordToAllowThisAdmin
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000029, 0x80000002560BF270, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)touchIdOrPinToAllowThis
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001ELL, 0x80000002560BF2A0, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)touchIdOrPinToAllowThisAdmin
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000024, 0x80000002560BF2C0, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)usePassword
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000013, 0x80000002560BF2F0, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)watchOrPasswordToAllowThis
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000020, 0x80000002560BF310, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)watchOrPasswordToAllowThisAdmin
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000026, 0x80000002560BF340, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)watchOrPinToAllowThis
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD00000000000001BLL, 0x80000002560BF370, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

+ (NSString)watchOrPinToAllowThisAdmin
{
  v2 = specialized static LocalizedStrings.localizedString(key:value:tableSuffix:)(0xD000000000000021, 0x80000002560BF390, 0x75676F6C61746143, 0xE900000000000065);
  v3 = MEMORY[0x259C58D00](v2);

  return v3;
}

- (LACUILocalization)init
{
  v3.receiver = self;
  v3.super_class = LACUILocalization;
  return [(LACUILocalization *)&v3 init];
}

@end