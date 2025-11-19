@interface HMDHomeWalletKeyISOCredential
- (HMDHomeWalletKeyISOCredential)initWithHAPPairingIdentity:(id)a3 deviceCredentialKeyExternalRepresentation:(id)a4;
- (void)encodeWithCompletion:(id)a3;
- (void)signPayloadWithBuilder:(id)a3 data:(id)a4 completion:(id)a5;
@end

@implementation HMDHomeWalletKeyISOCredential

- (void)signPayloadWithBuilder:(id)a3 data:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v28, 0, sizeof(v28));
  v7 = a5;
  v8 = a4;
  v9 = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  v10 = [v9 publicKey];
  v11 = [v10 data];
  v12 = [v11 bytes];
  v26 = *v12;
  v27 = v12[1];

  v13 = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  v14 = [v13 privateKey];
  v15 = [v14 data];
  v16 = [v15 bytes];
  v24 = *v16;
  v25 = v16[1];

  [v8 bytes];
  [v8 length];

  cced25519_sign_compat();
  v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v28 length:64];
  v18 = objc_alloc(MEMORY[0x277CFEE68]);
  v19 = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  v20 = [v19 publicKey];
  v21 = [v20 data];
  v22 = [v18 initWithSigningAlgorithm:-8 issuerKey:v21 signature:v17];

  v7[2](v7, v22, 0);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCompletion:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v20 = a3;
  v4 = [(HMDHomeWalletKeyISOCredential *)self deviceCredentialKeyExternalRepresentation];
  v5 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v4];

  v22 = [v5 subdataWithRange:{0, 32}];
  v21 = [v5 subdataWithRange:{32, 32}];
  v6 = [objc_alloc(MEMORY[0x277CF39E8]) initEC2WithAlgorithm:-7 curveIdentifier:1 x:v22 y:v21 d:0 keyOperations:0 keyIdentifier:0];
  v7 = [MEMORY[0x277CBEA90] dataWithCOSEKey:v6];
  v8 = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  v9 = [HMDHome nfcIssuerKeyIdentifierWithPairingIdentity:v8];

  v10 = [objc_alloc(MEMORY[0x277CFEE70]) initWithElementIdentifier:@"credential_id" dataValue:v9];
  v25 = v10;
  v26 = @"com.apple.HomeKit";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v27[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v13 = objc_alloc(MEMORY[0x277CFEE80]);
  v14 = [MEMORY[0x277CBEAA8] distantPast];
  v15 = [MEMORY[0x277CBEAA8] distantFuture];
  v16 = [v13 initWithFormat:0 docType:@"com.apple.HomeKit.1.credential" elements:v12 validFrom:v14 validUntil:v15 deviceKey:v7 signingAlgorithm:-8];

  v17 = [(HMDHomeWalletKeyISOCredential *)self credentialBuilder];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__HMDHomeWalletKeyISOCredential_encodeWithCompletion___block_invoke;
  v23[3] = &unk_278683AB0;
  v23[4] = self;
  v24 = v20;
  v18 = v20;
  [v17 buildPayloadWithDetails:v16 completion:v23];

  v19 = *MEMORY[0x277D85DE8];
}

void __54__HMDHomeWalletKeyISOCredential_encodeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:v5];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (HMDHomeWalletKeyISOCredential)initWithHAPPairingIdentity:(id)a3 deviceCredentialKeyExternalRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDHomeWalletKeyISOCredential;
  v9 = [(HMDHomeWalletKeyISOCredential *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pairingIdentity, a3);
    objc_storeStrong(&v10->_deviceCredentialKeyExternalRepresentation, a4);
    v11 = [objc_alloc(MEMORY[0x277CFEE78]) initWithDelegate:v10];
    credentialBuilder = v10->_credentialBuilder;
    v10->_credentialBuilder = v11;
  }

  return v10;
}

@end