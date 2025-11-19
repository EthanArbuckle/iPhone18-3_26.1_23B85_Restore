@interface MCLECv2EncryptedData
- (NSString)ephemeralPublicKey;
- (NSString)gcmEncryptedData;
- (NSString)gcmTag;
@end

@implementation MCLECv2EncryptedData

- (NSString)ephemeralPublicKey
{
  MEMORY[0x277D82BE0](self);
  sub_2555ED2D4();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

- (NSString)gcmEncryptedData
{
  MEMORY[0x277D82BE0](self);
  sub_2555ED3AC();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

- (NSString)gcmTag
{
  MEMORY[0x277D82BE0](self);
  sub_2555ED484();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

@end