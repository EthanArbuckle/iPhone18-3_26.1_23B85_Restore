@interface DCDDeviceMetadata
- (DCDDeviceMetadata)initWithContext:(id)a3 cryptoProxy:(id)a4;
- (void)generateEncryptedBlobWithCompletion:(id)a3;
@end

@implementation DCDDeviceMetadata

- (DCDDeviceMetadata)initWithContext:(id)a3 cryptoProxy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(DCDDeviceMetadata *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cryptoProxy, a4);
    objc_storeStrong(&v10->_context, a3);
  }

  return v10;
}

- (void)generateEncryptedBlobWithCompletion:(id)a3
{
  v4 = a3;
  cryptoProxy = self->_cryptoProxy;
  context = self->_context;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__DCDDeviceMetadata_generateEncryptedBlobWithCompletion___block_invoke;
  v8[3] = &unk_278F59C20;
  v9 = v4;
  v7 = v4;
  [(DCCryptoProxy *)cryptoProxy fetchOpaqueBlobWithContext:context completion:v8];
}

void __57__DCDDeviceMetadata_generateEncryptedBlobWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
    (*(v2 + 16))(v2, 0, v5);
  }
}

@end