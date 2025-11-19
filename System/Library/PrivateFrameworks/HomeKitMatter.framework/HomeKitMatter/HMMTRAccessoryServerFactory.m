@interface HMMTRAccessoryServerFactory
+ (id)createHMMTRHAPServiceCommon:(id)a3 characteristics:(id)a4 serviceLabelIndex:(id)a5 serviceInstanceID:(id)a6 endpointID:(id)a7 nodeID:(id)a8 topology:(id)a9 clusterIDCharacteristicMap:(id)a10 linkedServices:(id)a11;
+ (id)createHMMTRHAPServiceLabelServiceWithEndpointID:(id)a3 nodeID:(id)a4;
+ (id)createInfoService:(id)a3 model:(id)a4 manufacturer:(id)a5 serialNumber:(id)a6 instanceID:(unint64_t)a7 endpointID:(id)a8 nodeID:(id)a9 legacyInstanceIDAssignment:(BOOL)a10;
+ (id)instanceIDForCharacteristicType:(id)a3 serviceType:(id)a4 endpointID:(id)a5 nodeID:(id)a6;
+ (id)logCategory;
- (HAPKeyStore)keystore;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTRAccessoryServerFactory)initWithKeystore:(id)a3 browser:(id)a4;
- (id)vendAccessoryServerWithNodeID:(id)a3 setupCode:(id)a4 discriminator:(id)a5 category:(id)a6 vendorID:(id)a7 productID:(id)a8 serialNumber:(id)a9 firmwareRevision:(id)a10;
@end

@implementation HMMTRAccessoryServerFactory

- (HAPKeyStore)keystore
{
  WeakRetained = objc_loadWeakRetained(&self->_keystore);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (id)vendAccessoryServerWithNodeID:(id)a3 setupCode:(id)a4 discriminator:(id)a5 category:(id)a6 vendorID:(id)a7 productID:(id)a8 serialNumber:(id)a9 firmwareRevision:(id)a10
{
  v94 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v80 = a4;
  v81 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v19;
  v74 = a10;
  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138544642;
    v83 = v25;
    v84 = 2112;
    v85 = v16;
    v86 = 2112;
    v87 = v17;
    v88 = 2112;
    v89 = v18;
    v90 = 2112;
    v91 = v21;
    v92 = 2112;
    v93 = v20;
    _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_DEBUG, "%{public}@vendAccessoryServerWithNodeID - nodeID: %@, category: %@, vid: %@, pid %@, serial %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v22);
  v77 = v21;
  v78 = v20;
  v75 = v18;
  if (!v18)
  {
    v79 = v17;
    v76 = 0;
    v28 = 0;
    v21 = 0;
LABEL_19:
    v39 = objc_autoreleasePoolPush();
    v40 = v23;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v83 = v42;
      v84 = 2112;
      v85 = @"Matter Accessory";
      _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_INFO, "%{public}@No product label information available so using default name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v33 = @"Matter Accessory";
    goto LABEL_22;
  }

  v26 = [(HMMTRAccessoryServerFactory *)v23 browser];
  v27 = [v26 vendorMetadataStore];
  v28 = [v27 retrieveVendorMetadataForVendorID:v18 productID:v21];

  if (!v21)
  {
    v79 = v17;
    v76 = 0;
    goto LABEL_19;
  }

  v29 = [v28 productWithID:v21];
  v30 = [v29 categoryNumber];

  if (!v17 && v30)
  {
    v17 = [v29 categoryNumber];
  }

  v31 = [v29 deviceTypeID];

  if (v31)
  {
    v76 = [v29 deviceTypeID];
  }

  else
  {
    v76 = 0;
  }

  v32 = [v29 label];

  v79 = v17;
  if (!v32)
  {
    v21 = v29;
    goto LABEL_19;
  }

  v21 = v29;
  v33 = [v29 label];
  v34 = objc_autoreleasePoolPush();
  v35 = v23;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    v38 = [v28 name];
    *buf = 138543874;
    v83 = v37;
    v84 = 2112;
    v85 = v33;
    v86 = 2112;
    v87 = v38;
    _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@Using metadata product label: %@ and vendor name: %@", buf, 0x20u);

    v18 = v75;
  }

  objc_autoreleasePoolPop(v34);
  if (!v33)
  {
    goto LABEL_19;
  }

LABEL_22:
  v61 = v33;
  v69 = [HMMTRUtilities identifierStringWithCHIPNodeID:v16];
  v43 = [HMMTRAccessoryServerBuilder alloc];
  v70 = [(HMMTRAccessoryServerFactory *)v23 keystore];
  v68 = [(HMMTRAccessoryServerFactory *)v23 browser];
  v67 = [(HMMTRAccessoryServerBuilder *)v43 initWithKeystore:v70 browser:v68];
  v66 = [(HMMTRAccessoryServerBuilder *)v67 name:v33];
  v65 = [v66 nodeID:v16];
  v64 = [v65 vendorID:v18];
  v73 = v28;
  v63 = [v28 name];
  v62 = [v64 vendorName:v63];
  v60 = [v62 productID:v77];
  v71 = v21;
  v44 = [v21 name];
  v45 = [v60 productName:v44];
  v46 = [v45 identifier:v69];
  v47 = [v46 manufacturer:0];
  [v47 model:0];
  v48 = v72 = v16;
  v49 = [v48 serialNumber:v78];
  v50 = [v49 category:v79];
  v51 = [v50 setUpPinCode:v80];
  v52 = [v51 discriminator:v81];
  v53 = [v52 deviceTypeID:v76];

  v54 = [HMMTRUtilities sanitizeHAPName:v61];

  v55 = [HMMTRAccessoryServerFactory createInfoService:v54 model:0 manufacturer:0 serialNumber:0 instanceID:1 endpointID:&unk_283EE8568];
  v56 = [v53 addService:v55];

  v57 = [v53 build];

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

- (HMMTRAccessoryServerFactory)initWithKeystore:(id)a3 browser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMMTRAccessoryServerFactory;
  v8 = [(HMMTRAccessoryServerFactory *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_keystore, v6);
    objc_storeWeak(&v9->_browser, v7);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_7462 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_7462, &__block_literal_global_7463);
  }

  v3 = logCategory__hmf_once_v5_7464;

  return v3;
}

uint64_t __42__HMMTRAccessoryServerFactory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_7464;
  logCategory__hmf_once_v5_7464 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)instanceIDForCharacteristicType:(id)a3 serviceType:(id)a4 endpointID:(id)a5 nodeID:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  memset(data, 0, sizeof(data));
  if (v9)
  {
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = v13;
    [v13 getUUIDBytes:data];
  }

  else
  {
    *&data[0] = 0xFEFEFEFEFEFEFEFELL;
    *(&data[0] + 1) = 0xFEFEFEFEFEFEFEFELL;
  }

  CC_SHA256_Update(&c, data, 0x10u);
  if (v10)
  {
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    if (v15)
    {
      v16 = v15;
      [v15 getUUIDBytes:data];

      goto LABEL_9;
    }

LABEL_12:
    _HMFPreconditionFailure();
  }

  *&data[0] = 0xEFEFEFEFEFEFEFEFLL;
  *(&data[0] + 1) = 0xEFEFEFEFEFEFEFEFLL;
LABEL_9:
  CC_SHA256_Update(&c, data, 0x10u);
  v20 = [v11 unsignedLongLongValue];
  CC_SHA256_Update(&c, &v20, 8u);
  v20 = [v12 unsignedLongLongValue];
  CC_SHA256_Update(&c, &v20, 8u);
  CC_SHA256_Final(data, &c);
  v20 = *&data[0] & 0x7FFFFFFFFFFFFFFFLL;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)createHMMTRHAPServiceLabelServiceWithEndpointID:(id)a3 nodeID:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CFEBA0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 getSharedInstance];
  v10 = [v9 getDefaultCharacteristicProperties:@"000000CD-0000-1000-8000-0026BB765291"];
  v11 = [v10 integerValue];

  v12 = [v9 getDefaultCharacteristicMetadata:@"000000CD-0000-1000-8000-0026BB765291"];
  v13 = [@"000000CC-0000-1000-8000-0026BB765291" hap_validatedAndNormalizedUUIDString];
  v14 = [a1 instanceIDForCharacteristicType:@"000000CD-0000-1000-8000-0026BB765291" serviceType:v13 endpointID:v8 nodeID:v7];
  v15 = [objc_alloc(MEMORY[0x277CFEA68]) initWithType:@"000000CD-0000-1000-8000-0026BB765291" instanceID:v14 value:&unk_283EE8550 stateNumber:0 properties:v11 & 0xFFEF eventNotificationsEnabled:0 metadata:v12];
  v16 = [v9 getDefaultServiceProperties:@"000000CC-0000-1000-8000-0026BB765291"];
  v17 = [v16 integerValue];

  v18 = [a1 instanceIDForCharacteristicType:0 serviceType:v13 endpointID:v8 nodeID:v7];

  v19 = [HMMTRHAPService alloc];
  v24[0] = v15;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v21 = [(HMMTRHAPService *)v19 initWithType:@"000000CC-0000-1000-8000-0026BB765291" instanceID:v18 parsedCharacteristics:v20 serviceProperties:v17 linkedServices:MEMORY[0x277CBEBF8] endpoint:v8];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)createHMMTRHAPServiceCommon:(id)a3 characteristics:(id)a4 serviceLabelIndex:(id)a5 serviceInstanceID:(id)a6 endpointID:(id)a7 nodeID:(id)a8 topology:(id)a9 clusterIDCharacteristicMap:(id)a10 linkedServices:(id)a11
{
  v51 = a3;
  v16 = a4;
  v48 = a5;
  v17 = a6;
  v56 = a7;
  v50 = a8;
  v54 = a9;
  v53 = a10;
  v47 = a11;
  v18 = [MEMORY[0x277CFEBA0] getSharedInstance];
  v55 = [MEMORY[0x277CBEB18] array];
  v52 = v17;
  if ([v16 count])
  {
    v19 = 0;
    do
    {
      v20 = [v16 objectAtIndexedSubscript:v19];
      v21 = [v18 getDefaultCharacteristicMetadata:v20];
      v22 = +[HMMTRProtocolMap protocolMap];
      [v22 updateMetadataForCharacteristic:v20 metadata:v21 endpointID:v56 topology:v54 clusterIDCharacteristicMap:v53];

      v23 = [v18 getDefaultCharacteristicProperties:v20];
      v24 = [v23 integerValue];

      if (v17)
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{++v19 + objc_msgSend(v17, "unsignedLongLongValue")}];
      }

      else
      {
        v26 = [v51 hap_validatedAndNormalizedUUIDString];
        v25 = [a1 instanceIDForCharacteristicType:v20 serviceType:v26 endpointID:v56 nodeID:v50];

        ++v19;
      }

      v27 = v24 & 0xFFEF;
      v28 = objc_alloc(MEMORY[0x277CFEA68]);
      v29 = [v21 constraints];
      v30 = [v29 minimumValue];
      v31 = [v28 initWithType:v20 instanceID:v25 value:v30 stateNumber:0 properties:v27 eventNotificationsEnabled:1 metadata:v21];

      [v55 addObject:v31];
      v17 = v52;
    }

    while (v19 < [v16 count]);
  }

  if (v48)
  {
    v32 = [v18 getDefaultCharacteristicProperties:@"000000CB-0000-1000-8000-0026BB765291"];
    v33 = [v32 integerValue];

    v34 = [v18 getDefaultCharacteristicMetadata:@"000000CB-0000-1000-8000-0026BB765291"];
    v35 = [v51 hap_validatedAndNormalizedUUIDString];
    v36 = [a1 instanceIDForCharacteristicType:@"000000CB-0000-1000-8000-0026BB765291" serviceType:v35 endpointID:v56 nodeID:v50];
    v37 = objc_alloc(MEMORY[0x277CFEA68]);
    v38 = v33 & 0xFFEF;
    v17 = v52;
    v39 = [v37 initWithType:@"000000CB-0000-1000-8000-0026BB765291" instanceID:v36 value:v48 stateNumber:0 properties:v38 eventNotificationsEnabled:0 metadata:v34];
    [v55 addObject:v39];
  }

  v40 = [v18 getDefaultServiceProperties:v51];
  v41 = [v40 integerValue];

  if (v17)
  {
    v42 = v17;
    v43 = v56;
  }

  else
  {
    v44 = [v51 hap_validatedAndNormalizedUUIDString];
    v43 = v56;
    v42 = [a1 instanceIDForCharacteristicType:0 serviceType:v44 endpointID:v56 nodeID:v50];
  }

  v45 = [[HMMTRHAPService alloc] initWithType:v51 instanceID:v42 parsedCharacteristics:v55 serviceProperties:v41 linkedServices:v47 endpoint:v43];

  return v45;
}

+ (id)createInfoService:(id)a3 model:(id)a4 manufacturer:(id)a5 serialNumber:(id)a6 instanceID:(unint64_t)a7 endpointID:(id)a8 nodeID:(id)a9 legacyInstanceIDAssignment:(BOOL)a10
{
  v104 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v96 = a4;
  v95 = a5;
  v94 = a6;
  v17 = a8;
  v18 = a9;
  v19 = [MEMORY[0x277CFEBA0] getSharedInstance];
  v20 = [v19 getDefaultCharacteristicMetadata:@"00000023-0000-1000-8000-0026BB765291"];
  v21 = [v19 getDefaultCharacteristicProperties:@"00000023-0000-1000-8000-0026BB765291"];
  v22 = [v21 integerValue];

  v97 = a1;
  v98 = v17;
  v99 = v18;
  v86 = a7;
  if (a10)
  {
    v23 = a7 + 1;
  }

  else
  {
    v24 = [a1 instanceIDForCharacteristicType:@"00000023-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v17 nodeID:v18];
    v23 = [v24 unsignedLongLongValue];
  }

  v25 = objc_alloc(MEMORY[0x277CFEA68]);
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
  v27 = [v25 initWithType:@"00000023-0000-1000-8000-0026BB765291" instanceID:v26 value:v16 stateNumber:0 properties:v22 eventNotificationsEnabled:1 metadata:v20];

  v28 = [v19 getDefaultCharacteristicMetadata:@"00000021-0000-1000-8000-0026BB765291"];

  v29 = [v19 getDefaultCharacteristicProperties:@"00000021-0000-1000-8000-0026BB765291"];
  v30 = [v29 integerValue];

  if (a10)
  {
    v31 = v23 + 1;
  }

  else
  {
    v32 = [v97 instanceIDForCharacteristicType:@"00000021-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v31 = [v32 unsignedLongLongValue];
  }

  v33 = objc_alloc(MEMORY[0x277CFEA68]);
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31];
  v88 = [v33 initWithType:@"00000021-0000-1000-8000-0026BB765291" instanceID:v34 value:v96 stateNumber:0 properties:v30 eventNotificationsEnabled:1 metadata:v28];

  v35 = [v19 getDefaultCharacteristicMetadata:@"00000020-0000-1000-8000-0026BB765291"];

  v36 = [v19 getDefaultCharacteristicProperties:@"00000020-0000-1000-8000-0026BB765291"];
  v37 = [v36 integerValue];

  if (a10)
  {
    v38 = v31 + 1;
  }

  else
  {
    v39 = [v97 instanceIDForCharacteristicType:@"00000020-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v38 = [v39 unsignedLongLongValue];
  }

  v40 = objc_alloc(MEMORY[0x277CFEA68]);
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38];
  v93 = [v40 initWithType:@"00000020-0000-1000-8000-0026BB765291" instanceID:v41 value:v95 stateNumber:0 properties:v37 eventNotificationsEnabled:1 metadata:v35];

  v42 = [v19 getDefaultCharacteristicMetadata:@"00000014-0000-1000-8000-0026BB765291"];

  v43 = [v19 getDefaultCharacteristicProperties:@"00000014-0000-1000-8000-0026BB765291"];
  v44 = [v43 integerValue];

  if (a10)
  {
    v45 = v38 + 1;
  }

  else
  {
    v46 = [v97 instanceIDForCharacteristicType:@"00000014-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v45 = [v46 unsignedLongLongValue];
  }

  v47 = objc_alloc(MEMORY[0x277CFEA68]);
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v45];
  v92 = [v47 initWithType:@"00000014-0000-1000-8000-0026BB765291" instanceID:v48 value:@"false" stateNumber:0 properties:v44 eventNotificationsEnabled:1 metadata:v42];

  v49 = [v19 getDefaultCharacteristicMetadata:@"00000030-0000-1000-8000-0026BB765291"];

  v50 = [v19 getDefaultCharacteristicProperties:@"00000030-0000-1000-8000-0026BB765291"];
  v51 = [v50 integerValue];

  v87 = v16;
  if (a10)
  {
    v52 = v45 + 1;
  }

  else
  {
    v53 = [v97 instanceIDForCharacteristicType:@"00000030-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v52 = [v53 unsignedLongLongValue];
  }

  v54 = objc_alloc(MEMORY[0x277CFEA68]);
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v52];
  v91 = [v54 initWithType:@"00000030-0000-1000-8000-0026BB765291" instanceID:v55 value:v94 stateNumber:0 properties:v51 eventNotificationsEnabled:1 metadata:v49];

  v56 = [v19 getDefaultCharacteristicMetadata:@"00000052-0000-1000-8000-0026BB765291"];

  v57 = [v19 getDefaultCharacteristicProperties:@"00000052-0000-1000-8000-0026BB765291"];
  v58 = [v57 integerValue];

  if (a10)
  {
    v59 = v52 + 1;
    v60 = v97;
  }

  else
  {
    v60 = v97;
    v61 = [v97 instanceIDForCharacteristicType:@"00000052-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v59 = [v61 unsignedLongLongValue];
  }

  v62 = objc_alloc(MEMORY[0x277CFEA68]);
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v59];
  v89 = [v62 initWithType:@"00000052-0000-1000-8000-0026BB765291" instanceID:v63 value:0 stateNumber:0 properties:v58 eventNotificationsEnabled:1 metadata:v56];

  v90 = [v19 getDefaultCharacteristicMetadata:@"0000026D-0000-1000-8000-0026BB765291"];

  v64 = [v19 getDefaultCharacteristicProperties:@"0000026D-0000-1000-8000-0026BB765291"];
  v65 = [v64 integerValue];

  if (a10)
  {
    v66 = v59 + 1;
  }

  else
  {
    v67 = [v60 instanceIDForCharacteristicType:@"0000026D-0000-1000-8000-0026BB765291" serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v66 = [v67 unsignedLongLongValue];
  }

  v68 = v88;
  v69 = objc_alloc(MEMORY[0x277CFEA68]);
  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v66];
  v71 = [v69 initWithType:@"0000026D-0000-1000-8000-0026BB765291" instanceID:v70 value:&unk_283EE8568 stateNumber:0 properties:v65 eventNotificationsEnabled:1 metadata:v90];

  v72 = a7;
  if (a10 && v66 >= a7 + 9)
  {
    v73 = objc_autoreleasePoolPush();
    v74 = v60;
    v75 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v76 = HMFGetLogIdentifier();
      *buf = 138543618;
      v101 = v76;
      v102 = 2048;
      v103 = v66;
      _os_log_impl(&dword_22AEAE000, v75, OS_LOG_TYPE_ERROR, "%{public}@Instance ID overflowed into next range: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v73);
    v72 = v86;
    v68 = v88;
  }

  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:{v27, v68, v93, v92, v91, v89, v71, 0}];
  v78 = [v19 getDefaultServiceProperties:@"0000003E-0000-1000-8000-0026BB765291"];
  v79 = [v78 integerValue];

  if (!a10)
  {
    v80 = [v97 instanceIDForCharacteristicType:0 serviceType:@"0000003E-0000-1000-8000-0026BB765291" endpointID:v98 nodeID:v99];
    v72 = [v80 unsignedLongLongValue];
  }

  v81 = [HMMTRHAPService alloc];
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v72];
  v83 = [(HMMTRHAPService *)v81 initWithType:@"0000003E-0000-1000-8000-0026BB765291" instanceID:v82 parsedCharacteristics:v77 serviceProperties:v79 linkedServices:MEMORY[0x277CBEBF8] endpoint:v98];

  v84 = *MEMORY[0x277D85DE8];

  return v83;
}

@end