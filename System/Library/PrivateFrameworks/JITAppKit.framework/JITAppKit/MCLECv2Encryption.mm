@interface MCLECv2Encryption
- (BOOL)prependsEphemeralKeyPadding;
- (void)encrypt:(id)encrypt recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encrypt:(id)encrypt recipientKeyBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encrypt:(id)encrypt recipientKeyHexEncoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encryptJSON:(id)n recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encryptJSON:(id)n recipientKeyHexEncoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)encryptString:(id)string recipientKeyBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure;
- (void)setPrependsEphemeralKeyPadding:(BOOL)padding;
@end

@implementation MCLECv2Encryption

- (BOOL)prependsEphemeralKeyPadding
{
  MEMORY[0x277D82BE0](self);
  sub_2555E6A84();
  MEMORY[0x277D82BD8](self);
  return sub_25560076C() & 1;
}

- (void)setPrependsEphemeralKeyPadding:(BOOL)padding
{
  MEMORY[0x277D82BE0](self);
  v3 = sub_25560077C();
  sub_2555E6B4C(v3 & 1);
  MEMORY[0x277D82BD8](self);
}

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
  sub_2555E6C6C(v17, v12, v15, sub_2555E73AC, v14, sub_2555E7490, v13);

  MEMORY[0x277D82BD8](encoded);

  MEMORY[0x277D82BD8](n);
  MEMORY[0x277D82BD8](self);
}

- (void)encryptJSON:(id)n recipientKeyHexEncoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
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
  sub_2555E7498(v17, v12, v15, sub_2555E7A10, v14, sub_2555E7A58, v13);

  MEMORY[0x277D82BD8](encoded);

  MEMORY[0x277D82BD8](n);
  MEMORY[0x277D82BD8](self);
}

- (void)encryptString:(id)string recipientKeyBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
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
  sub_2555E7A60(v14, v19, v13, v17, sub_2555E7F04, v16, sub_2555E7F4C, v15);

  MEMORY[0x277D82BD8](encoded);

  MEMORY[0x277D82BD8](string);
  MEMORY[0x277D82BD8](self);
}

- (void)encrypt:(id)encrypt recipientCertBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
{
  MEMORY[0x277D82BE0](encrypt);
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
  sub_2555E7F54(v18, v19, v13, v16, sub_2555E9270, v15, sub_2555E92B8, v14);

  MEMORY[0x277D82BD8](encoded);
  sub_2555E3C2C(v18, v19);
  MEMORY[0x277D82BD8](encrypt);
  MEMORY[0x277D82BD8](self);
}

- (void)encrypt:(id)encrypt recipientKeyHexEncoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
{
  MEMORY[0x277D82BE0](encrypt);
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
  sub_2555E92C0(v18, v19, v13, v16, sub_2555EA35C, v15, sub_2555EA3A4, v14);

  MEMORY[0x277D82BD8](encoded);
  sub_2555E3C2C(v18, v19);
  MEMORY[0x277D82BD8](encrypt);
  MEMORY[0x277D82BD8](self);
}

- (void)encrypt:(id)encrypt recipientKeyBase64Encoded:(id)encoded onSuccess:(id)success onFailure:(id)failure
{
  MEMORY[0x277D82BE0](encrypt);
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
  sub_2555EA3AC(v18, v19, v13, v16, sub_2555EB540, v15, sub_2555EB588, v14);

  MEMORY[0x277D82BD8](encoded);
  sub_2555E3C2C(v18, v19);
  MEMORY[0x277D82BD8](encrypt);
  MEMORY[0x277D82BD8](self);
}

@end