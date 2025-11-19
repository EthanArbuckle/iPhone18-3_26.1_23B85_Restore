@interface MCLHPKEEncryptedDataContainer
- (NSString)cipher;
- (NSString)encapsulatedKey;
@end

@implementation MCLHPKEEncryptedDataContainer

- (NSString)encapsulatedKey
{
  MEMORY[0x277D82BE0](self);
  sub_2555F61C8();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

- (NSString)cipher
{
  MEMORY[0x277D82BE0](self);
  sub_2555F62A0();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

@end