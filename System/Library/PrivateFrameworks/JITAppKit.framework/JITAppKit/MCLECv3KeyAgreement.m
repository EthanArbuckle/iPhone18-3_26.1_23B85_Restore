@interface MCLECv3KeyAgreement
- (NSString)recipientFingerprint;
- (NSString)sender;
@end

@implementation MCLECv3KeyAgreement

- (NSString)sender
{
  MEMORY[0x277D82BE0](self);
  sub_2555FBACC();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

- (NSString)recipientFingerprint
{
  MEMORY[0x277D82BE0](self);
  sub_2555FBBA4();
  MEMORY[0x277D82BD8](self);
  v4 = sub_255600A9C();

  return v4;
}

@end