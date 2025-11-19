@interface MCLECv3Encryption
- (void)encryptJSON:(id)a3 recipientCertBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6;
- (void)encryptWithPayload:(id)a3 recipientCertBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6;
@end

@implementation MCLECv3Encryption

- (void)encryptJSON:(id)a3 recipientCertBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
  MEMORY[0x277D82BE0](self);
  v17 = sub_255600A3C();
  v12 = sub_255600AAC();
  v15 = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_2555F86D8(v17, v12, v15, sub_2555F8D00, v14, sub_2555F8D48, v13);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)encryptWithPayload:(id)a3 recipientCertBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  MEMORY[0x277D82BE0](self);
  v18 = sub_2556006EC();
  v19 = v7;
  v13 = sub_255600AAC();
  v16 = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  sub_2555F8D50(v18, v19, v13, v16, sub_2555FDB88, v15, sub_2555FDBD0, v14);

  MEMORY[0x277D82BD8](a4);
  sub_2555E3C2C(v18, v19);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

@end