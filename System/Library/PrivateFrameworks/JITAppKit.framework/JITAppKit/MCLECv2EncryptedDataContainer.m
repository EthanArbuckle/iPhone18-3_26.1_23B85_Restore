@interface MCLECv2EncryptedDataContainer
- (MCLECv2EncryptedData)_encryptedData;
- (NSString)_encryptionVersion;
- (NSString)_publicKeyHash;
- (id)toDictionary;
@end

@implementation MCLECv2EncryptedDataContainer

- (NSString)_encryptionVersion
{
  MEMORY[0x277D82BE0](self);
  sub_2555ED148();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

- (MCLECv2EncryptedData)_encryptedData
{
  MEMORY[0x277D82BE0](self);
  v4 = sub_2555ED200();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (id)toDictionary
{
  MEMORY[0x277D82BE0](self);
  sub_2555EE594();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A2C();

  return v4;
}

- (NSString)_publicKeyHash
{
  MEMORY[0x277D82BE0](self);
  sub_2555EEB30();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

@end