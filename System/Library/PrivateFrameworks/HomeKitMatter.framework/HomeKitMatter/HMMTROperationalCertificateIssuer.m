@interface HMMTROperationalCertificateIssuer
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEquivalentTo:(id)a3;
- (HMMTRAccessoryServerBrowser)browser;
- (HMMTROperationalCertificateIssuer)initWithRemoteDelegate:(id)a3 fabricID:(id)a4;
- (HMMTROperationalCertificateIssuer)initWithRootKeyPair:(id)a3 rootCertificate:(id)a4 fabricID:(id)a5;
- (NSString)shortDescription;
- (id)logIdentifier;
- (id)publicKeyFromCSRInfo:(id)a3 error:(id *)a4;
- (void)issueOperationalCertificateForRequest:(id)a3 attestationInfo:(id)a4 controller:(id)a5 completion:(id)a6;
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
  v3 = [(HMMTROperationalCertificateIssuer *)self fabricID];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (void)issueOperationalCertificateForRequest:(id)a3 attestationInfo:(id)a4 controller:(id)a5 completion:(id)a6
{
  v99 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v92 = 0;
  v14 = [(HMMTROperationalCertificateIssuer *)self publicKeyFromCSRInfo:v10 error:&v92];
  v87 = v92;
  v15 = objc_autoreleasePoolPush();
  v16 = self;
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
  v19 = [(HMMTROperationalCertificateIssuer *)v16 rootKeyPair];

  if (!v19)
  {
    v47 = [(HMMTROperationalCertificateIssuer *)v16 remoteDelegate];

    if (v47)
    {
      v48 = [(HMMTROperationalCertificateIssuer *)v16 fabricID];

      if (!v48)
      {
        goto LABEL_37;
      }

      v49 = [(HMMTROperationalCertificateIssuer *)v16 commissioneeNodeID];

      if (v49)
      {
        v50 = [(HMMTROperationalCertificateIssuer *)v16 remoteDelegate];
        v51 = [(HMMTROperationalCertificateIssuer *)v16 fabricID];
        v52 = [(HMMTROperationalCertificateIssuer *)v16 commissioneeNodeID];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __113__HMMTROperationalCertificateIssuer_issueOperationalCertificateForRequest_attestationInfo_controller_completion___block_invoke;
        v88[3] = &unk_2786EE8F0;
        v88[4] = v16;
        v89 = v13;
        [v50 retrieveOperationalCertificatesForFabricID:v51 commissioneeNodeID:v52 publicKey:v14 completion:v88];

LABEL_35:
        v45 = v87;
        goto LABEL_36;
      }

      v74 = objc_autoreleasePoolPush();
      v75 = v16;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v78 = v77 = v11;
        *buf = 138543362;
        v96 = v78;
        _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_ERROR, "%{public}@Cannot issue NOC because commissionee node ID was not set", buf, 0xCu);

        v11 = v77;
      }

      objc_autoreleasePoolPop(v74);
      v68 = MEMORY[0x277CCA9B8];
      v69 = 11;
    }

    else
    {
      v63 = objc_autoreleasePoolPush();
      v64 = v16;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v67 = v66 = v11;
        *buf = 138543362;
        v96 = v67;
        _os_log_impl(&dword_22AEAE000, v65, OS_LOG_TYPE_ERROR, "%{public}@NOC issuer was initialized incorrectly", buf, 0xCu);

        v11 = v66;
      }

      objc_autoreleasePoolPop(v63);
      v68 = MEMORY[0x277CCA9B8];
      v69 = 15;
    }

    v79 = [v68 hmfErrorWithCode:v69];
    (*(v13 + 2))(v13, 0, v79);

    goto LABEL_35;
  }

  v20 = [(HMMTROperationalCertificateIssuer *)v16 fabricID];

  if (!v20)
  {
LABEL_37:
    _HMFPreconditionFailure();
LABEL_38:
    _HMFPreconditionFailure();
  }

  v21 = [(HMMTROperationalCertificateIssuer *)v16 rootCertificate];

  if (!v21)
  {
    goto LABEL_38;
  }

  v86 = v12;
  v22 = [(HMMTROperationalCertificateIssuer *)v16 commissioneeNodeID];
  v85 = v14;
  if (v22)
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
      v83 = v11;
      v84 = v10;
      v31 = MEMORY[0x277CD5230];
      v32 = [(HMMTROperationalCertificateIssuer *)v16 rootKeyPair];
      v33 = [(HMMTROperationalCertificateIssuer *)v16 rootCertificate];
      v34 = [(HMMTROperationalCertificateIssuer *)v16 fabricID];
      v35 = [(HMMTROperationalCertificateIssuer *)v16 commissioneeNodeID];
      v90 = 0;
      v36 = [v31 createOperationalCertificate:v32 signingCertificate:v33 operationalPublicKey:v30 fabricID:v34 nodeID:v35 caseAuthenticatedTags:0 error:&v90];
      v82 = v90;

      if (v36)
      {
        v37 = objc_alloc(MEMORY[0x277CD5450]);
        v38 = [(HMMTROperationalCertificateIssuer *)v16 rootCertificate];
        v39 = [v37 initWithOperationalCertificate:v36 intermediateCertificate:0 rootCertificate:v38 adminSubject:0];

        v40 = objc_autoreleasePoolPush();
        v41 = v16;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v43 = v81 = v40;
          v44 = [(HMMTROperationalCertificateIssuer *)v41 commissioneeNodeID];
          *buf = 138543618;
          v96 = v43;
          v97 = 2112;
          v98 = v44;
          _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_INFO, "%{public}@Successfully generated Operational Certificate for accessory with Node ID %@", buf, 0x16u);

          v40 = v81;
        }

        objc_autoreleasePoolPop(v40);
        CFRelease(v30);
        (*(v13 + 2))(v13, v39, 0);
        v11 = v83;
        v10 = v84;
        v45 = v87;
        v46 = v82;
      }

      else
      {
        v70 = objc_autoreleasePoolPush();
        v71 = v16;
        v72 = HMFGetOSLogHandle();
        v10 = v84;
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
        (*(v13 + 2))(v13, 0, v39);
        v11 = v83;
        v45 = v87;
      }
    }

    else
    {
      v57 = error;
      v58 = objc_autoreleasePoolPush();
      v59 = v16;
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
      (*(v13 + 2))(v13, 0, v36);
      v45 = v87;
    }
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    v54 = v16;
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
    (*(v13 + 2))(v13, 0, v28);
    v45 = v87;
  }

  v14 = v85;
  v12 = v86;
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

- (BOOL)isEquivalentTo:(id)a3
{
  v5 = a3;
  v6 = [(HMMTROperationalCertificateIssuer *)self remoteDelegate];

  if (!v6)
  {
    v10 = [(HMMTROperationalCertificateIssuer *)self rootKeyPair];

    if (v10)
    {
      v11 = MEMORY[0x277CD5230];
      v12 = [(HMMTROperationalCertificateIssuer *)self rootCertificate];
      v13 = [v5 rootCertificate];
      LOBYTE(v11) = [v11 isCertificate:v12 equalTo:v13];

      if (v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = [(HMMTROperationalCertificateIssuer *)self rootCertificate];
      if (!v17)
      {
        v3 = [v5 rootCertificate];
        if (!v3)
        {
          goto LABEL_13;
        }
      }

      v18 = MEMORY[0x277CD5230];
      v19 = [(HMMTROperationalCertificateIssuer *)self rootCertificate];
      v20 = [v5 rootCertificate];
      v21 = [v18 isCertificate:v19 equalTo:v20];

      if (v17)
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

  v7 = [(HMMTROperationalCertificateIssuer *)self remoteDelegate];
  v8 = [v5 remoteDelegate];
  if (v7 == v8)
  {
    v14 = [(HMMTROperationalCertificateIssuer *)self fabricID];
    v15 = [v5 fabricID];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_13:
    v7 = [(HMMTROperationalCertificateIssuer *)self browser];
    v8 = [v5 browser];
    v9 = v7 == v8;
    goto LABEL_14;
  }

  v9 = 0;
LABEL_14:

LABEL_17:
  return v9;
}

- (HMMTROperationalCertificateIssuer)initWithRemoteDelegate:(id)a3 fabricID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMTROperationalCertificateIssuer;
  v9 = [(HMMTROperationalCertificateIssuer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remoteDelegate, a3);
    objc_storeStrong(&v10->_fabricID, a4);
  }

  return v10;
}

- (HMMTROperationalCertificateIssuer)initWithRootKeyPair:(id)a3 rootCertificate:(id)a4 fabricID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMMTROperationalCertificateIssuer;
  v12 = [(HMMTROperationalCertificateIssuer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootKeyPair, a3);
    objc_storeStrong(&v13->_rootCertificate, a4);
    objc_storeStrong(&v13->_fabricID, a5);
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

- (id)publicKeyFromCSRInfo:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CD5230];
  v6 = [a3 csr];
  v7 = [v5 publicKeyFromCSR:v6 error:a4];

  return v7;
}

@end