@interface MCLECv3EncryptedDataContainer
- (MCLECv3Params)params;
- (NSString)data;
@end

@implementation MCLECv3EncryptedDataContainer

- (NSString)data
{
  MEMORY[0x277D82BE0](self);
  sub_2555FB810();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

- (MCLECv3Params)params
{
  MEMORY[0x277D82BE0](self);
  v4 = sub_2555FB8C8();
  MEMORY[0x277D82BD8](self);

  return v4;
}

@end