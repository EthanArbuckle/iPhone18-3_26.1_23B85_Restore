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
  publicKeyData = [v5 publicKeyData];

  return publicKeyData;
}

+ (uint64_t)certificate:()HMMTRAdditions isCompatibleWithAnotherControllerCertificate:
{
  v5 = MEMORY[0x277CD5230];
  v6 = a4;
  v7 = [v5 convertX509Certificate:a3];
  v8 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v7];
  v9 = [MEMORY[0x277CD5230] convertX509Certificate:v6];

  v10 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v9];
  subject = [v8 subject];
  fabricID = [subject fabricID];
  subject2 = [v10 subject];
  fabricID2 = [subject2 fabricID];
  if ([fabricID isEqual:fabricID2])
  {
    v28 = v7;
    subject3 = [v8 subject];
    caseAuthenticatedTags = [subject3 caseAuthenticatedTags];
    subject4 = [v10 subject];
    caseAuthenticatedTags2 = [subject4 caseAuthenticatedTags];
    v27 = caseAuthenticatedTags;
    if ([caseAuthenticatedTags isEqual:caseAuthenticatedTags2])
    {
      issuer = [v8 issuer];
      rootCACertificateID = [issuer rootCACertificateID];
      [v10 issuer];
      v18 = v25 = v9;
      [v18 rootCACertificateID];
      v19 = v24 = subject3;
      v20 = [rootCACertificateID isEqual:v19];

      subject3 = v24;
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
  issuer = [v5 issuer];
  fabricID = [issuer fabricID];

  return fabricID;
}

+ (__CFString)shortDescriptionForX509Certificate:()HMMTRAdditions
{
  v2 = [MEMORY[0x277CD5230] convertX509Certificate:?];
  if (v2)
  {
    v3 = [self shortDescriptionForMatterCertificate:v2];
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
  string = [v3 string];
  v6 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v4];

  subject = [v6 subject];
  nodeID = [subject nodeID];

  if (nodeID)
  {
    subject2 = [v6 subject];
    nodeID2 = [subject2 nodeID];
    [string appendFormat:@"NodeID = %@, ", nodeID2];
  }

  subject3 = [v6 subject];
  fabricID = [subject3 fabricID];

  if (fabricID)
  {
    subject4 = [v6 subject];
    fabricID2 = [subject4 fabricID];
    [string appendFormat:@"FabricID = %@, ", fabricID2];
  }

  subject5 = [v6 subject];
  caseAuthenticatedTags = [subject5 caseAuthenticatedTags];
  v17 = [caseAuthenticatedTags count];

  if (v17)
  {
    subject6 = [v6 subject];
    caseAuthenticatedTags2 = [subject6 caseAuthenticatedTags];
    allObjects = [caseAuthenticatedTags2 allObjects];
    v21 = [allObjects componentsJoinedByString:{@", "}];
    [string appendFormat:@"CATs = %@, ", v21];
  }

  return string;
}

+ (__CFString)describeX509Certificate:()HMMTRAdditions
{
  v2 = [MEMORY[0x277CD5230] convertX509Certificate:?];
  if (v2)
  {
    v3 = [self describeMatterCertificate:v2];
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
  string = [v3 string];
  v5 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v4];

  notBefore = [v5 notBefore];
  v7 = [notBefore description];
  notAfter = [v5 notAfter];
  v9 = [notAfter description];
  [string appendFormat:@"\nValidity: [%@ - %@]", v7, v9];

  issuer = [v5 issuer];
  nodeID = [issuer nodeID];
  issuer2 = [v5 issuer];
  fabricID = [issuer2 fabricID];
  issuer3 = [v5 issuer];
  rootCACertificateID = [issuer3 rootCACertificateID];
  issuer4 = [v5 issuer];
  intermediateCACertificateID = [issuer4 intermediateCACertificateID];
  issuer5 = [v5 issuer];
  caseAuthenticatedTags = [issuer5 caseAuthenticatedTags];
  [string appendFormat:@"\nIssuer: [node ID = %@, fabricID = %@, root certificate ID = %@, intermediate certificate ID = %@, CATs = %@]", nodeID, fabricID, rootCACertificateID, intermediateCACertificateID, caseAuthenticatedTags];

  subject = [v5 subject];
  nodeID2 = [subject nodeID];
  subject2 = [v5 subject];
  fabricID2 = [subject2 fabricID];
  subject3 = [v5 subject];
  rootCACertificateID2 = [subject3 rootCACertificateID];
  subject4 = [v5 subject];
  intermediateCACertificateID2 = [subject4 intermediateCACertificateID];
  subject5 = [v5 subject];
  caseAuthenticatedTags2 = [subject5 caseAuthenticatedTags];
  [string appendFormat:@"\nSubject: [node ID = %@, fabricID = %@, root certificate ID = %@, intermediate certificate ID = %@, CATs = %@]\n", nodeID2, fabricID2, rootCACertificateID2, intermediateCACertificateID2, caseAuthenticatedTags2];

  return string;
}

+ (void)printX509Certificate:()HMMTRAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CD5230] convertX509Certificate:v4];
  if (v5)
  {
    [self printMatterCertificate:v5];
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
    notBefore = [v4 notBefore];
    notAfter = [v4 notAfter];
    *buf = 138543874;
    v48 = v7;
    v49 = 2112;
    v50 = notBefore;
    v51 = 2112;
    v52 = notAfter;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Certificate valid between %@ and %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  issuer = [v4 issuer];

  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (issuer)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      issuer2 = [v4 issuer];
      nodeID = [issuer2 nodeID];
      issuer3 = [v4 issuer];
      [issuer3 fabricID];
      v16 = v39 = v11;
      issuer4 = [v4 issuer];
      rootCACertificateID = [issuer4 rootCACertificateID];
      issuer5 = [v4 issuer];
      intermediateCACertificateID = [issuer5 intermediateCACertificateID];
      [v4 issuer];
      v20 = v45 = v3;
      caseAuthenticatedTags = [v20 caseAuthenticatedTags];
      *buf = 138544642;
      v48 = v14;
      v49 = 2112;
      v50 = nodeID;
      v51 = 2112;
      v52 = v16;
      v53 = 2112;
      v54 = rootCACertificateID;
      v55 = 2112;
      v56 = intermediateCACertificateID;
      v57 = 2112;
      v58 = caseAuthenticatedTags;
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
  subject = [v4 subject];

  v24 = objc_autoreleasePoolPush();
  v25 = HMFGetOSLogHandle();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
  if (subject)
  {
    if (v26)
    {
      v27 = HMFGetLogIdentifier();
      subject2 = [v4 subject];
      nodeID2 = [subject2 nodeID];
      subject3 = [v4 subject];
      [subject3 fabricID];
      v29 = v40 = v24;
      subject4 = [v4 subject];
      rootCACertificateID2 = [subject4 rootCACertificateID];
      subject5 = [v4 subject];
      intermediateCACertificateID2 = [subject5 intermediateCACertificateID];
      [v4 subject];
      v33 = v46 = v3;
      caseAuthenticatedTags2 = [v33 caseAuthenticatedTags];
      *buf = 138544642;
      v48 = v27;
      v49 = 2112;
      v50 = nodeID2;
      v51 = 2112;
      v52 = v29;
      v53 = 2112;
      v54 = rootCACertificateID2;
      v55 = 2112;
      v56 = intermediateCACertificateID2;
      v57 = 2112;
      v58 = caseAuthenticatedTags2;
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