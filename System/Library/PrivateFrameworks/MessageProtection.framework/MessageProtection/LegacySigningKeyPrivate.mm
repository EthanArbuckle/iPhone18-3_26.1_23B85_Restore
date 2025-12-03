@interface LegacySigningKeyPrivate
- (LegacySigningKeyPrivate)init;
- (LegacySigningKeyPrivate)initWithData:(id)data error:(id *)error;
- (id)dataRepresentation;
- (id)publicKey;
- (id)signData:(id)data error:(id *)error;
@end

@implementation LegacySigningKeyPrivate

- (id)publicKey
{
  v2 = SecKeyCopyPublicKey(self->_secKeyRef);
  v3 = SecKeyCopyExternalRepresentation(v2, 0);
  v4 = [[LegacySigningKeyPublic alloc] initWithData:v3 error:0];

  return v4;
}

- (LegacySigningKeyPrivate)init
{
  v14[4] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = LegacySigningKeyPrivate;
  v2 = [(LegacySigningKeyPrivate *)&v12 init];
  v3 = *MEMORY[0x277CDC040];
  v4 = *MEMORY[0x277CDBFE0];
  v13[0] = *MEMORY[0x277CDC028];
  v13[1] = v4;
  v5 = *MEMORY[0x277CDBFF0];
  v14[0] = v3;
  v14[1] = v5;
  v6 = *MEMORY[0x277CDBFD0];
  v13[2] = *MEMORY[0x277CDC018];
  v13[3] = v6;
  v14[2] = &unk_283F13B08;
  v14[3] = MEMORY[0x277CBEC28];
  RandomKey = SecKeyCreateRandomKey([MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4], 0);
  secKeyRef = v2->_secKeyRef;
  v2->_secKeyRef = RandomKey;

  if (v2->_secKeyRef)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (LegacySigningKeyPrivate)initWithData:(id)data error:(id *)error
{
  v18[4] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = LegacySigningKeyPrivate;
  dataCopy = data;
  v5 = [(LegacySigningKeyPrivate *)&v16 init];
  v6 = *MEMORY[0x277CDC040];
  v7 = *MEMORY[0x277CDBFE0];
  v17[0] = *MEMORY[0x277CDC028];
  v17[1] = v7;
  v8 = *MEMORY[0x277CDBFF0];
  v18[0] = v6;
  v18[1] = v8;
  v9 = *MEMORY[0x277CDBFD0];
  v17[2] = *MEMORY[0x277CDC018];
  v17[3] = v9;
  v18[2] = &unk_283F13B08;
  v18[3] = MEMORY[0x277CBEC28];
  v10 = SecKeyCreateWithData(dataCopy, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4], 0);

  secKeyRef = v5->_secKeyRef;
  v5->_secKeyRef = v10;

  if (v5->_secKeyRef)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)signData:(id)data error:(id *)error
{
  Signature = SecKeyCreateSignature(self->_secKeyRef, *MEMORY[0x277CDC2E8], data, 0);

  return Signature;
}

- (id)dataRepresentation
{
  v2 = SecKeyCopyExternalRepresentation(self->_secKeyRef, 0);

  return v2;
}

@end