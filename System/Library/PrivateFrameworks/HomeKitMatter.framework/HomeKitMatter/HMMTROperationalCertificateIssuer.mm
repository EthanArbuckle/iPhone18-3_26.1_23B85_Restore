@interface HMMTROperationalCertificateIssuer
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEquivalentTo:(id)to;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTROperationalCertificateIssuer)initWithRemoteDelegate:(id)delegate fabricID:(id)d;
- (HMMTROperationalCertificateIssuer)initWithRootKeyPair:(id)pair rootCertificate:(id)certificate fabricID:(id)d;
- (NSString)shortDescription;
- (id)logIdentifier;
- (id)publicKeyFromCSRInfo:(id)info error:(id *)error;
- (void)issueOperationalCertificateForRequest:(id)request attestationInfo:(id)info controller:(id)controller completion:(id)completion;
@end

@implementation HMMTROperationalCertificateIssuer

- (HMMTRAccessoryServerBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  fabricID = [(HMMTROperationalCertificateIssuer *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", fabricID];

  return v4;
}

- (void)issueOperationalCertificateForRequest:(id)request attestationInfo:(id)info controller:(id)controller completion:(id)completion
{
  v99 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  infoCopy = info;
  controllerCopy = controller;
  completionCopy = completion;
  v92 = 0;
  v14 = [(HMMTROperationalCertificateIssuer *)self publicKeyFromCSRInfo:requestCopy error:&v92];
  v87 = v92;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v96 = v18;
    v97 = 2112;
    v98 = v14;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Extracted Public Key from Operational Certificate %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  rootKeyPair = [(HMMTROperationalCertificateIssuer *)selfCopy rootKeyPair];

  if (!rootKeyPair)
  {
    remoteDelegate = [(HMMTROperationalCertificateIssuer *)selfCopy remoteDelegate];

    if (remoteDelegate)
    {
      fabricID = [(HMMTROperationalCertificateIssuer *)selfCopy fabricID];

      if (!fabricID)
      {
        goto LABEL_37;
      }

      commissioneeNodeID = [(HMMTROperationalCertificateIssuer *)selfCopy commissioneeNodeID];

      if (commissioneeNodeID)
      {
        remoteDelegate2 = [(HMMTROperationalCertificateIssuer *)selfCopy remoteDelegate];
        fabricID2 = [(HMMTROperationalCertificateIssuer *)selfCopy fabricID];
        commissioneeNodeID2 = [(HMMTROperationalCertificateIssuer *)selfCopy commissioneeNodeID];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __113__HMMTROperationalCertificateIssuer_issueOperationalCertificateForRequest_attestationInfo_controller_completion___block_invoke;
        v88[3] = &unk_2786EE8F0;
        v88[4] = selfCopy;
        v89 = completionCopy;
        [remoteDelegate2 retrieveOperationalCertificatesForFabricID:fabricID2 commissioneeNodeID:commissioneeNodeID2 publicKey:v14 completion:v88];

LABEL_35:
        v45 = v87;
        goto LABEL_36;
      }

      v74 = objc_autoreleasePoolPush();
      v75 = selfCopy;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v78 = v77 = infoCopy;
        *buf = 138543362;
        v96 = v78;
        _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_ERROR, "%{public}@Cannot issue NOC because commissionee node ID was not set", buf, 0xCu);

        infoCopy = v77;
      }

      objc_autoreleasePoolPop(v74);
      v68 = MEMORY[0x277CCA9B8];
      v69 = 11;
    }

    else
    {
      v63 = objc_autoreleasePoolPush();
      v64 = selfCopy;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v67 = v66 = infoCopy;
        *buf = 138543362;
        v96 = v67;
        _os_log_impl(&dword_22AEAE000, v65, OS_LOG_TYPE_ERROR, "%{public}@NOC issuer was initialized incorrectly", buf, 0xCu);

        infoCopy = v66;
      }

      objc_autoreleasePoolPop(v63);
      v68 = MEMORY[0x277CCA9B8];
      v69 = 15;
    }

    v79 = [v68 hmfErrorWithCode:v69];
    (*(completionCopy + 2))(completionCopy, 0, v79);

    goto LABEL_35;
  }

  fabricID3 = [(HMMTROperationalCertificateIssuer *)selfCopy fabricID];

  if (!fabricID3)
  {
LABEL_37:
    _HMFPreconditionFailure();
LABEL_38:
    _HMFPreconditionFailure();
  }

  rootCertificate = [(HMMTROperationalCertificateIssuer *)selfCopy rootCertificate];

  if (!rootCertificate)
  {
    goto LABEL_38;
  }

  v86 = controllerCopy;
  commissioneeNodeID3 = [(HMMTROperationalCertificateIssuer *)selfCopy commissioneeNodeID];
  v85 = v14;
  if (commissioneeNodeID3)
  {
    v23 = *MEMORY[0x277CDC000];
    v24 = *MEMORY[0x277CDC028];
    v93[0] = *MEMORY[0x277CDBFE0];
    v93[1] = v24;
    v25 = *MEMORY[0x277CDC040];
    v94[0] = v23;
    v94[1] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
    v27 = v14;
    v28 = v26;
    error = 0;
    v29 = SecKeyCreateWithData(v27, v26, &error);
    if (v29)
    {
      v30 = v29;
      v83 = infoCopy;
      v84 = requestCopy;
      v31 = MEMORY[0x277CD5230];
      rootKeyPair2 = [(HMMTROperationalCertificateIssuer *)selfCopy rootKeyPair];
      rootCertificate2 = [(HMMTROperationalCertificateIssuer *)selfCopy rootCertificate];
      fabricID4 = [(HMMTROperationalCertificateIssuer *)selfCopy fabricID];
      commissioneeNodeID4 = [(HMMTROperationalCertificateIssuer *)selfCopy commissioneeNodeID];
      v90 = 0;
      v36 = [v31 createOperationalCertificate:rootKeyPair2 signingCertificate:rootCertificate2 operationalPublicKey:v30 fabricID:fabricID4 nodeID:commissioneeNodeID4 caseAuthenticatedTags:0 error:&v90];
      v82 = v90;

      if (v36)
      {
        v37 = objc_alloc(MEMORY[0x277CD5450]);
        rootCertificate3 = [(HMMTROperationalCertificateIssuer *)selfCopy rootCertificate];
        v39 = [v37 initWithOperationalCertificate:v36 intermediateCertificate:0 rootCertificate:rootCertificate3 adminSubject:0];

        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v43 = v81 = v40;
          commissioneeNodeID5 = [(HMMTROperationalCertificateIssuer *)v41 commissioneeNodeID];
          *buf = 138543618;
          v96 = v43;
          v97 = 2112;
          v98 = commissioneeNodeID5;
          _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_INFO, "%{public}@Successfully generated Operational Certificate for accessory with Node ID %@", buf, 0x16u);

          v40 = v81;
        }

        objc_autoreleasePoolPop(v40);
        CFRelease(v30);
        (*(completionCopy + 2))(completionCopy, v39, 0);
        infoCopy = v83;
        requestCopy = v84;
        v45 = v87;
        v46 = v82;
      }

      else
      {
        v70 = objc_autoreleasePoolPush();
        v71 = selfCopy;
        v72 = HMFGetOSLogHandle();
        requestCopy = v84;
        v46 = v82;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543618;
          v96 = v73;
          v97 = 2112;
          v98 = v82;
          _os_log_impl(&dword_22AEAE000, v72, OS_LOG_TYPE_ERROR, "%{public}@Failed to Generate Operational Certificate for Accessory getting commissioned with error %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
        v39 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
        (*(completionCopy + 2))(completionCopy, 0, v39);
        infoCopy = v83;
        v45 = v87;
      }
    }

    else
    {
      v57 = error;
      v58 = objc_autoreleasePoolPush();
      v59 = selfCopy;
      v46 = v57;
      v60 = v59;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        v96 = v62;
        v97 = 2112;
        v98 = v46;
        _os_log_impl(&dword_22AEAE000, v61, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert Public Key Data to SecKey with error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      v36 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      (*(completionCopy + 2))(completionCopy, 0, v36);
      v45 = v87;
    }
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    v54 = selfCopy;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = HMFGetLogIdentifier();
      *buf = 138543362;
      v96 = v56;
      _os_log_impl(&dword_22AEAE000, v55, OS_LOG_TYPE_ERROR, "%{public}@Cannot issue NOC because commissionee node ID was not set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v53);
    v28 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    (*(completionCopy + 2))(completionCopy, 0, v28);
    v45 = v87;
  }

  v14 = v85;
  controllerCopy = v86;
LABEL_36:

  v80 = *MEMORY[0x277D85DE8];
}

void __113__HMMTROperationalCertificateIssuer_issueOperationalCertificateForRequest_attestationInfo_controller_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve operational certificate from remote delegate: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CD5450]) initWithOperationalCertificate:v8 intermediateCertificate:0 rootCertificate:v7 adminSubject:0];
    (*(*(a1 + 40) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  remoteDelegate = [(HMMTROperationalCertificateIssuer *)self remoteDelegate];

  if (!remoteDelegate)
  {
    rootKeyPair = [(HMMTROperationalCertificateIssuer *)self rootKeyPair];

    if (rootKeyPair)
    {
      v11 = MEMORY[0x277CD5230];
      rootCertificate = [(HMMTROperationalCertificateIssuer *)self rootCertificate];
      rootCertificate2 = [toCopy rootCertificate];
      LOBYTE(v11) = [v11 isCertificate:rootCertificate equalTo:rootCertificate2];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      rootCertificate3 = [(HMMTROperationalCertificateIssuer *)self rootCertificate];
      if (!rootCertificate3)
      {
        rootCertificate4 = [toCopy rootCertificate];
        if (!rootCertificate4)
        {
          goto LABEL_13;
        }
      }

      v18 = MEMORY[0x277CD5230];
      rootCertificate5 = [(HMMTROperationalCertificateIssuer *)self rootCertificate];
      rootCertificate6 = [toCopy rootCertificate];
      v21 = [v18 isCertificate:rootCertificate5 equalTo:rootCertificate6];

      if (rootCertificate3)
      {

        if (v21)
        {
          goto LABEL_13;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  remoteDelegate2 = [(HMMTROperationalCertificateIssuer *)self remoteDelegate];
  remoteDelegate3 = [toCopy remoteDelegate];
  if (remoteDelegate2 == remoteDelegate3)
  {
    fabricID = [(HMMTROperationalCertificateIssuer *)self fabricID];
    fabricID2 = [toCopy fabricID];
    v16 = [fabricID isEqual:fabricID2];

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    remoteDelegate2 = [(HMMTROperationalCertificateIssuer *)self browser];
    remoteDelegate3 = [toCopy browser];
    v9 = remoteDelegate2 == remoteDelegate3;
    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

LABEL_17:
  return v9;
}

- (HMMTROperationalCertificateIssuer)initWithRemoteDelegate:(id)delegate fabricID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMMTROperationalCertificateIssuer;
  v9 = [(HMMTROperationalCertificateIssuer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteDelegate, delegate);
    objc_storeStrong(&v10->_fabricID, d);
  }

  return v10;
}

- (HMMTROperationalCertificateIssuer)initWithRootKeyPair:(id)pair rootCertificate:(id)certificate fabricID:(id)d
{
  pairCopy = pair;
  certificateCopy = certificate;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = HMMTROperationalCertificateIssuer;
  v12 = [(HMMTROperationalCertificateIssuer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootKeyPair, pair);
    objc_storeStrong(&v13->_rootCertificate, certificate);
    objc_storeStrong(&v13->_fabricID, d);
  }

  return v13;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_8575 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_8575, &__block_literal_global_8576);
  }

  v3 = logCategory__hmf_once_v9_8577;

  return v3;
}

uint64_t __48__HMMTROperationalCertificateIssuer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_8577;
  logCategory__hmf_once_v9_8577 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)publicKeyFromCSRInfo:(id)info error:(id *)error
{
  v5 = MEMORY[0x277CD5230];
  v6 = [info csr];
  v7 = [v5 publicKeyFromCSR:v6 error:error];

  return v7;
}

@end