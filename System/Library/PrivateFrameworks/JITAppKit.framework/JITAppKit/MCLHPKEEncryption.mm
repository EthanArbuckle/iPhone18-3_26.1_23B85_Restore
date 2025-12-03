@interface MCLHPKEEncryption
- (void)encryptJSON:(id)n certBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encryptString:(id)string certBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
@end

@implementation MCLHPKEEncryption

- (void)encryptString:(id)string certBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
{
  MEMORY[0x277D82BE0](string);
  MEMORY[0x277D82BE0](encoded);
  v11 = _Block_copy(success);
  v12 = _Block_copy(failure);
  MEMORY[0x277D82BE0](self);
  v14 = sub_255600AAC();
  v19 = v7;
  v13 = sub_255600AAC();
  v17 = v8;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  sub_2555F3C40(v14, v19, v13, v17, sub_2555F4AF4, v16, sub_2555F4B3C, v15);

  MEMORY[0x277D82BD8](encoded);

  MEMORY[0x277D82BD8](string);
  MEMORY[0x277D82BD8](self);
}

- (void)encryptJSON:(id)n certBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
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
  sub_2555F40F0(v17, v12, v15, sub_2555F4B84, v14, sub_2555F4BCC, v13);

  MEMORY[0x277D82BD8](encoded);

  MEMORY[0x277D82BD8](n);
  MEMORY[0x277D82BD8](self);
}

@end