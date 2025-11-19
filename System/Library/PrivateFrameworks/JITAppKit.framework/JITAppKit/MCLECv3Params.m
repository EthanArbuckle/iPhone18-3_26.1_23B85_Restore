@interface MCLECv3Params
- (MCLECv3KeyAgreement)keyAgreement;
@end

@implementation MCLECv3Params

- (MCLECv3KeyAgreement)keyAgreement
{
  MEMORY[0x277D82BE0](self);
  v4 = sub_2555FB9F8();
  MEMORY[0x277D82BD8](self);

  return v4;
}

@end