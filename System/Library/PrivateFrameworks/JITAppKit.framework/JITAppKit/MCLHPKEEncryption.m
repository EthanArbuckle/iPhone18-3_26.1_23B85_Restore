@interface MCLHPKEEncryption
- (void)encryptJSON:(id)a3 certBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6;
- (void)encryptString:(id)a3 certBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6;
@end

@implementation MCLHPKEEncryption

- (void)encryptString:(id)a3 certBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
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

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)encryptJSON:(id)a3 certBase64Encoded:(id)a4 onSuccess:(id)a5 onFailure:(id)a6
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
  sub_2555F40F0(v17, v12, v15, sub_2555F4B84, v14, sub_2555F4BCC, v13);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

@end