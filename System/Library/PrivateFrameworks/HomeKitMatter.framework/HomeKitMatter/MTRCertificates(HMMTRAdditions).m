@interface MTRCertificates(HMMTRAdditions)
+ (__CFString)describeX509Certificate:()HMMTRAdditions;
+ (__CFString)shortDescriptionForX509Certificate:()HMMTRAdditions;
+ (id)describeMatterCertificate:()HMMTRAdditions;
+ (id)fabricIDFromCertificate:()HMMTRAdditions;
+ (id)publicKeyDataFromCertificate:()HMMTRAdditions;
+ (id)shortDescriptionForMatterCertificate:()HMMTRAdditions;
+ (uint64_t)certificate:()HMMTRAdditions isCompatibleWithAnotherControllerCertificate:;
+ (void)printMatterCertificate:()HMMTRAdditions;
+ (void)printX509Certificate:()HMMTRAdditions;
@end

@implementation MTRCertificates(HMMTRAdditions)

+ (id)publicKeyDataFromCertificate:()HMMTRAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x277CD5230] convertX509Certificate:v3];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v4];
  v6 = [v5 publicKeyData];

  return v6;
}

+ (uint64_t)certificate:()HMMTRAdditions isCompatibleWithAnotherControllerCertificate:
{
  v5 = MEMORY[0x277CD5230];
  v6 = a4;
  v7 = [v5 convertX509Certificate:a3];
  v8 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v7];
  v9 = [MEMORY[0x277CD5230] convertX509Certificate:v6];

  v10 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v9];
  v11 = [v8 subject];
  v12 = [v11 fabricID];
  v13 = [v10 subject];
  v14 = [v13 fabricID];
  if ([v12 isEqual:v14])
  {
    v28 = v7;
    v15 = [v8 subject];
    v16 = [v15 caseAuthenticatedTags];
    v26 = [v10 subject];
    v17 = [v26 caseAuthenticatedTags];
    v27 = v16;
    if ([v16 isEqual:v17])
    {
      v23 = [v8 issuer];
      v22 = [v23 rootCACertificateID];
      [v10 issuer];
      v18 = v25 = v9;
      [v18 rootCACertificateID];
      v19 = v24 = v15;
      v20 = [v22 isEqual:v19];

      v15 = v24;
      v9 = v25;
    }

    else
    {
      v20 = 0;
    }

    v7 = v28;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)fabricIDFromCertificate:()HMMTRAdditions
{
  v3 = a3;
  v4 = [MEMORY[0x277CD5230] convertX509Certificate:v3];
  if (!v4)
  {
    v4 = v3;
  }

  v5 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v4];
  v6 = [v5 issuer];
  v7 = [v6 fabricID];

  return v7;
}

+ (__CFString)shortDescriptionForX509Certificate:()HMMTRAdditions
{
  v2 = [MEMORY[0x277CD5230] convertX509Certificate:?];
  if (v2)
  {
    v3 = [a1 shortDescriptionForMatterCertificate:v2];
  }

  else
  {
    v3 = @"(invalid X509 certificate)";
  }

  return v3;
}

+ (id)shortDescriptionForMatterCertificate:()HMMTRAdditions
{
  v3 = MEMORY[0x277CCAB68];
  v4 = a3;
  v5 = [v3 string];
  v6 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v4];

  v7 = [v6 subject];
  v8 = [v7 nodeID];

  if (v8)
  {
    v9 = [v6 subject];
    v10 = [v9 nodeID];
    [v5 appendFormat:@"NodeID = %@, ", v10];
  }

  v11 = [v6 subject];
  v12 = [v11 fabricID];

  if (v12)
  {
    v13 = [v6 subject];
    v14 = [v13 fabricID];
    [v5 appendFormat:@"FabricID = %@, ", v14];
  }

  v15 = [v6 subject];
  v16 = [v15 caseAuthenticatedTags];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v6 subject];
    v19 = [v18 caseAuthenticatedTags];
    v20 = [v19 allObjects];
    v21 = [v20 componentsJoinedByString:{@", "}];
    [v5 appendFormat:@"CATs = %@, ", v21];
  }

  return v5;
}

+ (__CFString)describeX509Certificate:()HMMTRAdditions
{
  v2 = [MEMORY[0x277CD5230] convertX509Certificate:?];
  if (v2)
  {
    v3 = [a1 describeMatterCertificate:v2];
  }

  else
  {
    v3 = @"(invalid X509 certificate)";
  }

  return v3;
}

+ (id)describeMatterCertificate:()HMMTRAdditions
{
  v3 = MEMORY[0x277CCAB68];
  v4 = a3;
  v31 = [v3 string];
  v5 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v4];

  v6 = [v5 notBefore];
  v7 = [v6 description];
  v8 = [v5 notAfter];
  v9 = [v8 description];
  [v31 appendFormat:@"\nValidity: [%@ - %@]", v7, v9];

  v29 = [v5 issuer];
  v10 = [v29 nodeID];
  v11 = [v5 issuer];
  v12 = [v11 fabricID];
  v13 = [v5 issuer];
  v14 = [v13 rootCACertificateID];
  v15 = [v5 issuer];
  v16 = [v15 intermediateCACertificateID];
  v17 = [v5 issuer];
  v18 = [v17 caseAuthenticatedTags];
  [v31 appendFormat:@"\nIssuer: [node ID = %@, fabricID = %@, root certificate ID = %@, intermediate certificate ID = %@, CATs = %@]", v10, v12, v14, v16, v18];

  v30 = [v5 subject];
  v19 = [v30 nodeID];
  v28 = [v5 subject];
  v20 = [v28 fabricID];
  v21 = [v5 subject];
  v22 = [v21 rootCACertificateID];
  v23 = [v5 subject];
  v24 = [v23 intermediateCACertificateID];
  v25 = [v5 subject];
  v26 = [v25 caseAuthenticatedTags];
  [v31 appendFormat:@"\nSubject: [node ID = %@, fabricID = %@, root certificate ID = %@, intermediate certificate ID = %@, CATs = %@]\n", v19, v20, v22, v24, v26];

  return v31;
}

+ (void)printX509Certificate:()HMMTRAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD5230] convertX509Certificate:v4];
  if (v5)
  {
    [a1 printMatterCertificate:v5];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Failed to convert X509 certificate", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)printMatterCertificate:()HMMTRAdditions
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v3];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v4 notBefore];
    v9 = [v4 notAfter];
    *buf = 138543874;
    v48 = v7;
    v49 = 2112;
    v50 = v8;
    v51 = 2112;
    v52 = v9;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Certificate valid between %@ and %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 issuer];

  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v43 = [v4 issuer];
      v15 = [v43 nodeID];
      v41 = [v4 issuer];
      [v41 fabricID];
      v16 = v39 = v11;
      v37 = [v4 issuer];
      v17 = [v37 rootCACertificateID];
      v18 = [v4 issuer];
      v19 = [v18 intermediateCACertificateID];
      [v4 issuer];
      v20 = v45 = v3;
      v21 = [v20 caseAuthenticatedTags];
      *buf = 138544642;
      v48 = v14;
      v49 = 2112;
      v50 = v15;
      v51 = 2112;
      v52 = v16;
      v53 = 2112;
      v54 = v17;
      v55 = 2112;
      v56 = v19;
      v57 = 2112;
      v58 = v21;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Certificate issuer node ID = %@, fabricID = %@, root certificate ID = %@, intermediate certificate ID = %@, CATs = %@", buf, 0x3Eu);

      v3 = v45;
      v11 = v39;
    }
  }

  else if (v13)
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v22;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@Certificate issuer = nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v23 = [v4 subject];

  v24 = objc_autoreleasePoolPush();
  v25 = HMFGetOSLogHandle();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
  if (v23)
  {
    if (v26)
    {
      v27 = HMFGetLogIdentifier();
      v44 = [v4 subject];
      v28 = [v44 nodeID];
      v42 = [v4 subject];
      [v42 fabricID];
      v29 = v40 = v24;
      v38 = [v4 subject];
      v30 = [v38 rootCACertificateID];
      v31 = [v4 subject];
      v32 = [v31 intermediateCACertificateID];
      [v4 subject];
      v33 = v46 = v3;
      v34 = [v33 caseAuthenticatedTags];
      *buf = 138544642;
      v48 = v27;
      v49 = 2112;
      v50 = v28;
      v51 = 2112;
      v52 = v29;
      v53 = 2112;
      v54 = v30;
      v55 = 2112;
      v56 = v32;
      v57 = 2112;
      v58 = v34;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Certificate subject node ID = %@, fabricID = %@, root certificate ID = %@, intermediate certificate ID = %@, CATs = %@", buf, 0x3Eu);

      v3 = v46;
      v24 = v40;
    }
  }

  else if (v26)
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v35;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Certificate subject = nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  v36 = *MEMORY[0x277D85DE8];
}

@end