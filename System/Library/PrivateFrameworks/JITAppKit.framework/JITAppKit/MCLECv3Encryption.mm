@interface MCLECv3Encryption
- (void)encryptJSON:(id)n recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encryptWithPayload:(id)payload recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
@end

@implementation MCLECv3Encryption

- (void)encryptJSON:(id)n recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
{
  MEMORY[0x277D82BE0](n);
  MEMORY[0x277D82BE0](encoded);
  v10 = _Block_copy(success);
  v11 = _Block_copy(failure);
  MEMORY[0x277D82BE0](self);
  v17 = sub_255600A3C();
  v12 = sub_255600AAC();
  v15 = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_2555F86D8(v17, v12, v15, sub_2555F8D00, v14, sub_2555F8D48, v13);

  MEMORY[0x277D82BD8](encoded);

  MEMORY[0x277D82BD8](n);
  MEMORY[0x277D82BD8](self);
}

- (void)encryptWithPayload:(id)payload recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
{
  MEMORY[0x277D82BE0](payload);
  MEMORY[0x277D82BE0](encoded);
  v11 = _Block_copy(success);
  v12 = _Block_copy(failure);
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

  MEMORY[0x277D82BD8](encoded);
  sub_2555E3C2C(v18, v19);
  MEMORY[0x277D82BD8](payload);
  MEMORY[0x277D82BD8](self);
}

@end