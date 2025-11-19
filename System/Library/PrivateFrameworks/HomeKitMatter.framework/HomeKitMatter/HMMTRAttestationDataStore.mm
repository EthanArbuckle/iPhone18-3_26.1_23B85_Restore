@interface HMMTRAttestationDataStore
+ (id)logCategory;
- (HMMTRAttestationDataStore)initWithFileURL:(id)a3;
- (HMMTRAttestationDataStore)initWithFileURL:(id)a3 uarpController:(id)a4 fileManager:(id)a5;
- (NSArray)cdCertificates;
- (NSArray)paaCertificates;
- (id)convertPEMtoDERforCertificate:(id)a3;
- (id)staticAttestationData;
- (id)staticAttestationDataFileURL;
- (void)attestationCertificates:(id)a3 forSubjectKeyIdentifier:(id)a4;
- (void)fetchCloudAttestationData;
- (void)saveWithPaaCertificates:(id)a3 cdCertificates:(id)a4;
@end

@implementation HMMTRAttestationDataStore

- (void)attestationCertificates:(id)a3 forSubjectKeyIdentifier:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v12;
      v51 = 2048;
      v52 = [v6 count];
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %tu PAA certificates from UARP controller", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if ([v6 count])
    {
      v29 = v7;
      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v30 = v6;
      obj = v6;
      v32 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v32)
      {
        goto LABEL_28;
      }

      v31 = *v44;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v35 = v13;
          v37 = *(*(&v43 + 1) + 8 * v13);
          v34 = [obj objectForKeyedSubscript:v29];
          v14 = [v34 componentsSeparatedByString:{@", "}];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v40;
            v19 = 1;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = [(HMMTRAttestationDataStore *)v9 convertPEMtoDERforCertificate:*(*(&v39 + 1) + 8 * i)];
                if (v21)
                {
                  if (v19)
                  {
                    if ([v15 count] != 1)
                    {
                      goto LABEL_24;
                    }

                    v22 = v36;
                  }

                  else
                  {
                    v22 = v38;
                  }

                  [v22 addObject:v21];
                }

                else
                {
                  v23 = objc_autoreleasePoolPush();
                  v24 = v9;
                  v25 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v26 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v50 = v26;
                    v51 = 2112;
                    v52 = v37;
                    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert certificate from PEM to DER. Skipping certificate from subject key ID : %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v23);
                }

LABEL_24:

                v19 = 0;
              }

              v17 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
              v19 = 0;
            }

            while (v17);
          }

          v13 = v35 + 1;
        }

        while (v35 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (!v32)
        {
LABEL_28:

          [(HMMTRAttestationDataStore *)v9 saveWithPaaCertificates:v36 cdCertificates:v38];
          v7 = v29;
          v6 = v30;
          break;
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v27;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch PAA certificates", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (NSArray)cdCertificates
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Loading locally stored attestation information", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAttestationDataStore *)v4 fileManager];
  v8 = [(HMMTRAttestationDataStore *)v4 fileURL];
  v42 = 0;
  v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v42];
  v10 = v42;

  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v4;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Locally stored attestation information not found. Loading static attestation information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9 = [(HMMTRAttestationDataStore *)v12 staticAttestationData];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v4;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v9 objectForKeyedSubscript:@"Version"];
    *buf = 138543618;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Data version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = objc_autoreleasePoolPush();
  v21 = v16;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v9 objectForKeyedSubscript:@"SchemaVersion"];
    *buf = 138543618;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Schema version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [v9 objectForKeyedSubscript:@"CDCertificates"];
  v26 = v25;
  if (!v25)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v35;
      v45 = 2112;
      v46 = v9;
      v36 = "%{public}@Could not find Certificate Declarations(CDs) in attestation data dictionary: %@";
      v37 = v30;
      v38 = OS_LOG_TYPE_ERROR;
      v39 = 22;
LABEL_20:
      _os_log_impl(&dword_22AEAE000, v37, v38, v36, buf, v39);
    }

LABEL_21:

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_22;
  }

  v27 = [v25 count];
  v28 = objc_autoreleasePoolPush();
  v29 = v21;
  v30 = HMFGetOSLogHandle();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (!v27)
  {
    if (v31)
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v35;
      v36 = "%{public}@No Certificate Declarations(CDs) found";
      v37 = v30;
      v38 = OS_LOG_TYPE_INFO;
      v39 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v31)
  {
    v32 = HMFGetLogIdentifier();
    v33 = [v26 count];
    *buf = 138543618;
    v44 = v32;
    v45 = 2048;
    v46 = v33;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Number of Certificate Declarations(CDs) found: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v34 = v26;
LABEL_22:

  v40 = *MEMORY[0x277D85DE8];

  return v34;
}

- (NSArray)paaCertificates
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Loading locally stored PAA information", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAttestationDataStore *)v4 fileManager];
  v8 = [(HMMTRAttestationDataStore *)v4 fileURL];
  v42 = 0;
  v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v42];
  v10 = v42;

  if (!v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v4;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v14;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Locally stored PAA information not found. Loading static PAA information", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9 = [(HMMTRAttestationDataStore *)v12 staticAttestationData];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = v4;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v9 objectForKeyedSubscript:@"Version"];
    *buf = 138543618;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Data version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = objc_autoreleasePoolPush();
  v21 = v16;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v9 objectForKeyedSubscript:@"SchemaVersion"];
    *buf = 138543618;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@Schema version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [v9 objectForKeyedSubscript:@"PAACertificates"];
  v26 = v25;
  if (!v25)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v21;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v35;
      v45 = 2112;
      v46 = v9;
      v36 = "%{public}@Could not find PAAs in attestation data dictionary: %@";
      v37 = v30;
      v38 = OS_LOG_TYPE_ERROR;
      v39 = 22;
LABEL_20:
      _os_log_impl(&dword_22AEAE000, v37, v38, v36, buf, v39);
    }

LABEL_21:

    objc_autoreleasePoolPop(v28);
    v34 = MEMORY[0x277CBEBF8];
    goto LABEL_22;
  }

  v27 = [v25 count];
  v28 = objc_autoreleasePoolPush();
  v29 = v21;
  v30 = HMFGetOSLogHandle();
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (!v27)
  {
    if (v31)
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v35;
      v36 = "%{public}@No PAAs found";
      v37 = v30;
      v38 = OS_LOG_TYPE_INFO;
      v39 = 12;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v31)
  {
    v32 = HMFGetLogIdentifier();
    v33 = [v26 count];
    *buf = 138543618;
    v44 = v32;
    v45 = 2048;
    v46 = v33;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, "%{public}@Number of PAAs found: %tu", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v34 = v26;
LABEL_22:

  v40 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)fetchCloudAttestationData
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching cloud PAA data from UARP controller", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRAttestationDataStore *)v4 uarpController];
  v8 = [v7 getAttestationCertificates:0 assetLocationType:15];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to request PAA certificates from UARP controller", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)convertPEMtoDERforCertificate:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"-----BEGIN CERTIFICATE-----" withString:&stru_283ED2308];

    v5 = [v4 stringByReplacingOccurrencesOfString:@"-----END CERTIFICATE-----" withString:&stru_283ED2308];

    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_283ED2308];

    v7 = [v6 stringByReplacingOccurrencesOfString:@"\r" withString:&stru_283ED2308];

    v8 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v3 = [v7 stringByTrimmingCharactersInSet:v8];

    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)saveWithPaaCertificates:(id)a3 cdCertificates:(id)a4
{
  v36[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Saving certificates to file", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v35[0] = @"Version";
  v35[1] = @"SchemaVersion";
  v36[0] = &unk_283EE9060;
  v36[1] = &unk_283EE9060;
  v35[2] = @"PAACertificates";
  v35[3] = @"CDCertificates";
  v36[2] = v6;
  v36[3] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
  v13 = [(HMMTRAttestationDataStore *)v9 fileManager];
  v14 = [(HMMTRAttestationDataStore *)v9 fileURL];
  v28 = 0;
  v15 = [v13 writeDictionary:v12 toURL:v14 error:&v28];
  v16 = v28;

  v17 = objc_autoreleasePoolPush();
  v18 = v9;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if (v15)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMMTRAttestationDataStore *)v18 fileURL];
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v23 = "%{public}@Successfully saved attestation data to %@";
      v24 = v20;
      v25 = OS_LOG_TYPE_INFO;
      v26 = 22;
LABEL_8:
      _os_log_impl(&dword_22AEAE000, v24, v25, v23, buf, v26);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [(HMMTRAttestationDataStore *)v18 fileURL];
    *buf = 138543874;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v16;
    v23 = "%{public}@Failed to write attestation data to %@: %@";
    v24 = v20;
    v25 = OS_LOG_TYPE_ERROR;
    v26 = 32;
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v17);
  v27 = *MEMORY[0x277D85DE8];
}

- (id)staticAttestationData
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRAttestationDataStore *)self fileManager];
  v4 = [(HMMTRAttestationDataStore *)self staticAttestationDataFileURL];
  v15 = 0;
  v5 = [v3 dictionaryWithContentsOfURL:v4 error:&v15];
  v6 = v15;

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMMTRAttestationDataStore *)v9 staticAttestationDataFileURL];
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to load local attestation data at file URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)staticAttestationDataFileURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"attestation-data-store" withExtension:@"plist"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMMTRAttestationDataStore *)v5 initWithFileURL:v6 uarpController:v7 fileManager:v8, v9];
  }
}

- (HMMTRAttestationDataStore)initWithFileURL:(id)a3 uarpController:(id)a4 fileManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return [(HMMTRAttestationDataStore *)v16 initWithFileURL:v17, v18];
  }

  v19.receiver = self;
  v19.super_class = HMMTRAttestationDataStore;
  v13 = [(HMMTRAttestationDataStore *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fileURL, a3);
    objc_storeStrong(&v14->_uarpController, a4);
    [(UARPController *)v14->_uarpController setDelegate:v14];
    objc_storeStrong(&v14->_fileManager, a5);
  }

  return v14;
}

- (HMMTRAttestationDataStore)initWithFileURL:(id)a3
{
  v4 = MEMORY[0x277D02620];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(HMMTRFileManager);
  v8 = [(HMMTRAttestationDataStore *)self initWithFileURL:v5 uarpController:v6 fileManager:v7];

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_11819 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_11819, &__block_literal_global_11820);
  }

  v3 = logCategory__hmf_once_v21_11821;

  return v3;
}

uint64_t __40__HMMTRAttestationDataStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_11821;
  logCategory__hmf_once_v21_11821 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end