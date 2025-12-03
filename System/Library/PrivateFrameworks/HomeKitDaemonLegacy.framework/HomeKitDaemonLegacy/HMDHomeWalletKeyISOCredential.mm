@interface HMDHomeWalletKeyISOCredential
- (HMDHomeWalletKeyISOCredential)initWithHAPPairingIdentity:(id)identity deviceCredentialKeyExternalRepresentation:(id)representation;
- (void)encodeWithCompletion:(id)completion;
- (void)signPayloadWithBuilder:(id)builder data:(id)data completion:(id)completion;
@end

@implementation HMDHomeWalletKeyISOCredential

- (void)signPayloadWithBuilder:(id)builder data:(id)data completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  memset(v28, 0, sizeof(v28));
  completionCopy = completion;
  dataCopy = data;
  pairingIdentity = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  publicKey = [pairingIdentity publicKey];
  data = [publicKey data];
  bytes = [data bytes];
  v26 = *bytes;
  v27 = bytes[1];

  pairingIdentity2 = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  privateKey = [pairingIdentity2 privateKey];
  data2 = [privateKey data];
  bytes2 = [data2 bytes];
  v24 = *bytes2;
  v25 = bytes2[1];

  [dataCopy bytes];
  [dataCopy length];

  cced25519_sign_compat();
  v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v28 length:64];
  v18 = objc_alloc(MEMORY[0x277CFEE68]);
  pairingIdentity3 = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  publicKey2 = [pairingIdentity3 publicKey];
  data3 = [publicKey2 data];
  v22 = [v18 initWithSigningAlgorithm:-8 issuerKey:data3 signature:v17];

  completionCopy[2](completionCopy, v22, 0);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCompletion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  deviceCredentialKeyExternalRepresentation = [(HMDHomeWalletKeyISOCredential *)self deviceCredentialKeyExternalRepresentation];
  v5 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:deviceCredentialKeyExternalRepresentation];

  v22 = [v5 subdataWithRange:{0, 32}];
  v21 = [v5 subdataWithRange:{32, 32}];
  v6 = [objc_alloc(MEMORY[0x277CF39E8]) initEC2WithAlgorithm:-7 curveIdentifier:1 x:v22 y:v21 d:0 keyOperations:0 keyIdentifier:0];
  v7 = [MEMORY[0x277CBEA90] dataWithCOSEKey:v6];
  pairingIdentity = [(HMDHomeWalletKeyISOCredential *)self pairingIdentity];
  v9 = [HMDHome nfcIssuerKeyIdentifierWithPairingIdentity:pairingIdentity];

  v10 = [objc_alloc(MEMORY[0x277CFEE70]) initWithElementIdentifier:@"credential_id" dataValue:v9];
  v25 = v10;
  v26 = @"com.apple.HomeKit";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v27[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v13 = objc_alloc(MEMORY[0x277CFEE80]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v16 = [v13 initWithFormat:0 docType:@"com.apple.HomeKit.1.credential" elements:v12 validFrom:distantPast validUntil:distantFuture deviceKey:v7 signingAlgorithm:-8];

  credentialBuilder = [(HMDHomeWalletKeyISOCredential *)self credentialBuilder];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__HMDHomeWalletKeyISOCredential_encodeWithCompletion___block_invoke;
  v23[3] = &unk_279724968;
  v23[4] = self;
  v24 = completionCopy;
  v18 = completionCopy;
  [credentialBuilder buildPayloadWithDetails:v16 completion:v23];

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

- (HMDHomeWalletKeyISOCredential)initWithHAPPairingIdentity:(id)identity deviceCredentialKeyExternalRepresentation:(id)representation
{
  identityCopy = identity;
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = HMDHomeWalletKeyISOCredential;
  v9 = [(HMDHomeWalletKeyISOCredential *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pairingIdentity, identity);
    objc_storeStrong(&v10->_deviceCredentialKeyExternalRepresentation, representation);
    v11 = [objc_alloc(MEMORY[0x277CFEE78]) initWithDelegate:v10];
    credentialBuilder = v10->_credentialBuilder;
    v10->_credentialBuilder = v11;
  }

  return v10;
}

@end