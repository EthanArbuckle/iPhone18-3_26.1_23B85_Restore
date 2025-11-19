@interface HMDNIST256Utilities
+ (id)createNIST256KeyPair;
+ (id)identifier16BytesForKey:(id)a3;
+ (id)identifier8BytesForKey:(id)a3;
+ (id)privateKeyFromKeyPairExternalRepresentation:(id)a3;
+ (id)publicKeyExternalRepresentationFromKeyPairExternalRepresentation:(id)a3;
+ (id)publicKeyFromKeyPairExternalRepresentation:(id)a3;
@end

@implementation HMDNIST256Utilities

+ (id)identifier8BytesForKey:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  v3 = a3;
  CC_SHA256_Init(&v8);
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:"key-identifier" length:{14, *v8.count, *&v8.hash[2], *&v8.hash[6], *&v8.wbuf[2], *&v8.wbuf[6], *&v8.wbuf[10], *&v8.wbuf[14]}];
  [v4 appendData:v3];

  CC_SHA256_Update(&v8, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v8);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:8];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)identifier16BytesForKey:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  v3 = a3;
  CC_SHA256_Init(&v8);
  v4 = [MEMORY[0x277CBEB28] dataWithBytes:"key-identifier" length:{14, *v8.count, *&v8.hash[2], *&v8.hash[6], *&v8.wbuf[2], *&v8.wbuf[6], *&v8.wbuf[10], *&v8.wbuf[14]}];
  [v4 appendData:v3];

  CC_SHA256_Update(&v8, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(md, &v8);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)privateKeyFromKeyPairExternalRepresentation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] == 97)
  {
    v4 = [v3 subdataWithRange:{65, 32}];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = [v3 length];
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected NIST256 key pair external representation length %lu", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)publicKeyFromKeyPairExternalRepresentation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] == 97)
  {
    v4 = [v3 subdataWithRange:{1, 64}];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = [v3 length];
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected NIST256 key pair external representation length %lu", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)publicKeyExternalRepresentationFromKeyPairExternalRepresentation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length] == 97)
  {
    v4 = [v3 subdataWithRange:{0, 65}];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2048;
      v13 = [v3 length];
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unexpected NIST256 key pair external representation length %lu", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)createNIST256KeyPair
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC040];
  v3 = *MEMORY[0x277CDC018];
  v24[0] = *MEMORY[0x277CDC028];
  v24[1] = v3;
  v25[0] = v2;
  v25[1] = &unk_283E74F90;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  error = 0;
  v5 = SecKeyCreateRandomKey(v4, &error);
  v6 = v5;
  v7 = error;
  if (v5)
  {
    v8 = SecKeyCopyExternalRepresentation(v5, &error);
    v9 = error;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy NIST256 key external representation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v7 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create NIST256 key: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

@end