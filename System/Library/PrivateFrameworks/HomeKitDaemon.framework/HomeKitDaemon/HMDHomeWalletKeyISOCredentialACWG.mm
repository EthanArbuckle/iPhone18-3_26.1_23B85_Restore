@interface HMDHomeWalletKeyISOCredentialACWG
- (HMDHomeWalletKeyISOCredentialACWG)initWithIssuerKeyPairExternalRepresentation:(id)a3 deviceCredentialPublicKeyExternalRepresentation:(id)a4;
- (void)encodeWithCompletion:(id)a3;
- (void)signPayloadWithBuilder:(id)a3 data:(id)a4 completion:(id)a5;
@end

@implementation HMDHomeWalletKeyISOCredentialACWG

- (void)signPayloadWithBuilder:(id)a3 data:(id)a4 completion:(id)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(HMDHomeWalletKeyISOCredentialACWG *)self issuerKeyPairExternalRepresentation];
  v10 = [HMDNIST256Utilities publicKeyExternalRepresentationFromKeyPairExternalRepresentation:v9];

  error = 0;
  v11 = *MEMORY[0x277CDC028];
  v21[0] = *MEMORY[0x277CDBFE0];
  v21[1] = v11;
  v12 = *MEMORY[0x277CDC040];
  v22[0] = *MEMORY[0x277CDBFF0];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v14 = [(HMDHomeWalletKeyISOCredentialACWG *)self issuerKeyPairExternalRepresentation];
  v15 = SecKeyCreateWithData(v14, v13, &error);

  if (v15)
  {
    v19 = 0;
    v16 = SecKeyCreateSignature(v15, *MEMORY[0x277CDC2D0], v7, &v19);
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CFEE68]) initWithSigningAlgorithm:-7 issuerKey:v10 signature:v16];
      v8[2](v8, v17, 0);
    }

    else
    {
      (v8)[2](v8, 0, v19);
    }
  }

  else
  {
    (v8)[2](v8, 0, error);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCompletion:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v4 = [(HMDHomeWalletKeyISOCredentialACWG *)self deviceCredentialPublicKeyExternalRepresentation];
  v5 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v4];

  v6 = [v5 subdataWithRange:{0, 32}];
  v38 = [v5 subdataWithRange:{32, 32}];
  v39 = v6;
  v36 = [objc_alloc(MEMORY[0x277CF39E8]) initEC2WithAlgorithm:-7 curveIdentifier:1 x:v6 y:v38 d:0 keyOperations:0 keyIdentifier:0];
  v7 = [MEMORY[0x277CBEA90] dataWithCOSEKey:?];
  v8 = objc_alloc(MEMORY[0x277CFEE70]);
  v49 = &unk_283E74BD0;
  v9 = [objc_alloc(MEMORY[0x277CFEE70]) initWithElementIdentifier:@"This string is ignored" numberValue:&unk_283E74BE8];
  v50[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v11 = [v8 initWithElementIdentifier:@"matter1" integerKeyedDictionaryValue:v10];

  v46 = v11;
  v47 = @"aliro-a";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v48 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v16;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@ISOCredentialEncode v0.9 is enabled (with issuer public key external representation)", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v6 hmf_hexadecimalRepresentation];
    *buf = 138543618;
    v43 = v19;
    v44 = 2112;
    v45 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@ISOCredentialEncode deviceCredentialPublicKey x: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = objc_autoreleasePoolPush();
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v38 hmf_hexadecimalRepresentation];
    *buf = 138543618;
    v43 = v23;
    v44 = 2112;
    v45 = v24;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@ISOCredentialEncode deviceCredentialPublicKey y: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v25 = objc_autoreleasePoolPush();
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v7 hmf_hexadecimalRepresentation];
    *buf = 138543618;
    v43 = v27;
    v44 = 2112;
    v45 = v28;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@ISOCredentialEncode dataWithCOSEKey: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = objc_alloc(MEMORY[0x277CFEE80]);
  v30 = [MEMORY[0x277CBEAA8] distantPast];
  v31 = [MEMORY[0x277CBEAA8] distantFuture];
  v32 = [v29 initWithFormat:1 docType:@"aliro-a" elements:v13 validFrom:v30 validUntil:v31 deviceKey:v7 signingAlgorithm:-7];

  v33 = [(HMDHomeWalletKeyISOCredentialACWG *)self credentialBuilder];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __58__HMDHomeWalletKeyISOCredentialACWG_encodeWithCompletion___block_invoke;
  v40[3] = &unk_278683AB0;
  v40[4] = self;
  v41 = v37;
  v34 = v37;
  [v33 buildPayloadWithDetails:v32 completion:v40];

  v35 = *MEMORY[0x277D85DE8];
}

void __58__HMDHomeWalletKeyISOCredentialACWG_encodeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (HMDHomeWalletKeyISOCredentialACWG)initWithIssuerKeyPairExternalRepresentation:(id)a3 deviceCredentialPublicKeyExternalRepresentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMDHomeWalletKeyISOCredentialACWG;
  v9 = [(HMDHomeWalletKeyISOCredentialACWG *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_issuerKeyPairExternalRepresentation, a3);
    objc_storeStrong(&v10->_deviceCredentialPublicKeyExternalRepresentation, a4);
    v11 = [objc_alloc(MEMORY[0x277CFEE78]) initWithDelegate:v10];
    credentialBuilder = v10->_credentialBuilder;
    v10->_credentialBuilder = v11;
  }

  return v10;
}

@end