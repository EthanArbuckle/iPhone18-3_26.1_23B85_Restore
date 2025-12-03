@interface HMMTRSystemCommissionerControllerParams
+ (id)logCategory;
- (BOOL)_checkAndUpdateValidityPeriodOfV1Keypair:(id)keypair newKeyPair:(id *)pair;
- (BOOL)_findFabricRecordInMTSKeyValueStoreMatchingKeyPair:(id)pair ipk:(id *)ipk rootCert:(id *)cert operationalKey:(id *)key operationalCert:(id *)operationalCert;
- (BOOL)fetchControllerParamsAllowingNew:(BOOL)new nocSigner:(id *)signer controllerWrapper:(id *)wrapper;
- (BOOL)v1KeypairIsEquivalentTo:(id)to;
- (HMMTRSystemCommissionerControllerParams)initWithQueue:(id)queue controllerFactory:(id)factory;
- (id)_buildControllerParams1WithV1Keypair:(id)keypair;
- (id)_buildControllerParams2WithV1Keypair:(id)keypair;
- (id)mtsKeyValueStore;
- (id)storeV0MatterKeypair;
- (id)storeV0MatterKeypairWithPrivateKey:(__SecKey *)key;
- (id)storeV1MatterKeypairWithPrivateKey:(__SecKey *)key operationalKey:(__SecKey *)operationalKey rootCert:(id)cert operationalCert:(id)operationalCert ipk:(id)ipk;
- (id)v0MatterKeypairFromKeychain;
- (id)v1MatterKeypairFromKeychain;
- (void)_buildV1KeyFromScratch;
- (void)_buildV1KeyFromV0KeyAllowingNew:(BOOL)new;
- (void)_buildV1KeyWithPrivateKey:(__SecKey *)key operationalKey:(__SecKey *)operationalKey ipk:(id)ipk rootCert:(id)cert operationalCert:(id)operationalCert updatingMTSKeyValueStore:(BOOL)store;
- (void)_buildV1KeyWithV0KeyPair:(id)pair;
- (void)_handleKeychainDataChanged;
- (void)_obtainControllerWrapperWithV1KeyPair:(id)pair startupParams:(id)params;
- (void)_startWithV1Keypair:(id)keypair;
- (void)_updateMTSKeyValueStore:(id)store;
- (void)handleKeyPairDataChanged;
- (void)issueOperationalCertificateForRequest:(id)request attestationInfo:(id)info controller:(id)controller completion:(id)completion;
- (void)setMTSStoredValue:(id)value forKey:(id)key error:(id *)error;
@end

@implementation HMMTRSystemCommissionerControllerParams

- (id)mtsKeyValueStore
{
  v2 = objc_alloc_init(MEMORY[0x277CD55A8]);

  return v2;
}

- (id)storeV1MatterKeypairWithPrivateKey:(__SecKey *)key operationalKey:(__SecKey *)operationalKey rootCert:(id)cert operationalCert:(id)operationalCert ipk:(id)ipk
{
  ipkCopy = ipk;
  operationalCertCopy = operationalCert;
  certCopy = cert;
  v14 = [[HMMTRMatterKeypair alloc] initWithV1Account:@"CHIPPlugin.systemCommissioner.nodeopcerts.CA:1" privateKey:key operationalKey:operationalKey rootCert:certCopy operationalCert:operationalCertCopy ipk:ipkCopy];

  return v14;
}

- (id)storeV0MatterKeypairWithPrivateKey:(__SecKey *)key
{
  v3 = [[HMMTRMatterKeypair alloc] initWithV0Account:@"CHIPPlugin.systemCommissioner.nodeopcerts.CA:0" privateKey:key];

  return v3;
}

- (id)storeV0MatterKeypair
{
  v2 = [[HMMTRMatterKeypair alloc] initWithAccount:@"CHIPPlugin.systemCommissioner.nodeopcerts.CA:0"];

  return v2;
}

- (id)v1MatterKeypairFromKeychain
{
  v2 = [[HMMTRMatterKeypair alloc] initWithV1Account:@"CHIPPlugin.systemCommissioner.nodeopcerts.CA:1"];

  return v2;
}

- (id)v0MatterKeypairFromKeychain
{
  v2 = [[HMMTRMatterKeypair alloc] initWithV0Account:@"CHIPPlugin.systemCommissioner.nodeopcerts.CA:0"];

  return v2;
}

- (void)setMTSStoredValue:(id)value forKey:(id)key error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  mtsKeyValueStore = [(HMMTRSystemCommissionerControllerParams *)self mtsKeyValueStore];
  [mtsKeyValueStore setStoredValue:valueCopy forKey:keyCopy error:error];
}

- (BOOL)v1KeypairIsEquivalentTo:(id)to
{
  toCopy = to;
  v1keypair = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
  if ([v1keypair operationalKey])
  {
    v6 = [HMMTRMatterKeypair alloc];
    v1keypair2 = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
    v8 = -[HMMTRMatterKeypair initWithPrivateKey:](v6, "initWithPrivateKey:", [v1keypair2 operationalKey]);
  }

  else
  {
    v8 = 0;
  }

  if ([toCopy operationalKey])
  {
    v9 = -[HMMTRMatterKeypair initWithPrivateKey:]([HMMTRMatterKeypair alloc], "initWithPrivateKey:", [toCopy operationalKey]);
  }

  else
  {
    v9 = 0;
  }

  v1keypair3 = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
  serialize = [v1keypair3 serialize];
  serialize2 = [toCopy serialize];
  if ([serialize isEqual:serialize2])
  {
    serialize3 = [(HMMTRMatterKeypair *)v8 serialize];
    serialize4 = [(HMMTRMatterKeypair *)v9 serialize];
    if ([serialize3 isEqual:serialize4])
    {
      v1keypair4 = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
      rootCert = [v1keypair4 rootCert];
      rootCert2 = [toCopy rootCert];
      v28 = rootCert;
      if ([rootCert isEqual:rootCert2])
      {
        v1keypair5 = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
        operationalCert = [v1keypair5 operationalCert];
        operationalCert2 = [toCopy operationalCert];
        v25 = operationalCert;
        v18 = operationalCert;
        v19 = operationalCert2;
        if ([v18 isEqual:operationalCert2])
        {
          v1keypair6 = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
          v23 = [v1keypair6 ipk];
          v22 = [toCopy ipk];
          v20 = [v23 isEqual:v22];
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_handleKeychainDataChanged
{
  v16 = *MEMORY[0x277D85DE8];
  v1MatterKeypairFromKeychain = [(HMMTRSystemCommissionerControllerParams *)self v1MatterKeypairFromKeychain];
  if (v1MatterKeypairFromKeychain)
  {
    if ([(HMMTRSystemCommissionerControllerParams *)self v1KeypairIsEquivalentTo:v1MatterKeypairFromKeychain])
    {
      v4 = objc_autoreleasePoolPush();
      selfCopy = self;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v7;
        _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@V1 keypair remains the same", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      [(HMMTRSystemCommissionerControllerParams *)self _startWithV1Keypair:v1MatterKeypairFromKeychain];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@V1 keypair disappeared from keychain", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    controllerWrapper = [(HMMTRSystemCommissionerControllerParams *)selfCopy2 controllerWrapper];
    [controllerWrapper remove];

    [(HMMTRSystemCommissionerControllerParams *)selfCopy2 setControllerWrapper:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_findFabricRecordInMTSKeyValueStoreMatchingKeyPair:(id)pair ipk:(id *)ipk rootCert:(id *)cert operationalKey:(id *)key operationalCert:(id *)operationalCert
{
  v183 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  mtsKeyValueStore = [(HMMTRSystemCommissionerControllerParams *)self mtsKeyValueStore];
  v13 = mtsKeyValueStore;
  if (!mtsKeyValueStore)
  {
    v117 = objc_autoreleasePoolPush();
    selfCopy = self;
    v119 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      v120 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v120;
      _os_log_impl(&dword_22AEAE000, v119, OS_LOG_TYPE_ERROR, "%{public}@Couldn't access MatterSupport key store", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v117);
    v114 = 0;
    goto LABEL_102;
  }

  v14 = [mtsKeyValueStore storedValueForKey:@"IPK"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
    *ipk = 0;
    goto LABEL_83;
  }

  v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v16 options:0];
  *ipk = v17;

  if (!*ipk)
  {
LABEL_83:
    v121 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v123 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
    {
      v124 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v124;
      _os_log_impl(&dword_22AEAE000, v123, OS_LOG_TYPE_INFO, "%{public}@No IPK in MatterSupport storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v121);
    v114 = 0;
    goto LABEL_101;
  }

  certCopy = cert;
  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v178 = v21;
    _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_DEBUG, "%{public}@IPK retrieved from MatterSupport storage", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = [v13 storedValueForKey:@"g/fidx"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (!v24)
  {
    v125 = objc_autoreleasePoolPush();
    v126 = selfCopy3;
    v127 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
    {
      v128 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v128;
      _os_log_impl(&dword_22AEAE000, v127, OS_LOG_TYPE_INFO, "%{public}@No fabric index info in MatterSupport storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v125);
    v114 = 0;
    goto LABEL_100;
  }

  operationalCertCopy = operationalCert;
  v25 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v24 options:0];
  if (!v25)
  {
    v129 = objc_autoreleasePoolPush();
    v130 = selfCopy3;
    v131 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v132;
      _os_log_impl(&dword_22AEAE000, v131, OS_LOG_TYPE_ERROR, "%{public}@Fabric index info wasn't base64 encoded in MatterSupport storage", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v129);
    v114 = 0;
    goto LABEL_99;
  }

  v26 = [HMMTRTLVParser fabricIndicesFromTLV:v25];
  v27 = objc_autoreleasePoolPush();
  v171 = selfCopy3;
  v28 = HMFGetOSLogHandle();
  v29 = v28;
  v142 = v26;
  if (!v26)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v133 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v133;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Fabric index info wasn't parsed successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v114 = 0;
    goto LABEL_98;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543618;
    v178 = v30;
    v179 = 2112;
    *v180 = v142;
    _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Fabric indices in the MatterSupport storage: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v31 = v142;
  v172 = [v31 countByEnumeratingWithState:&v173 objects:v182 count:16];
  if (!v172)
  {

    v114 = 0;
    v115 = 0;
    v116 = 0;
    v107 = 0;
    v109 = 0;
    v111 = 0;
    v113 = 0;
    goto LABEL_97;
  }

  keyCopy = key;
  v137 = v25;
  v138 = v24;
  v139 = v16;
  v147 = 0;
  v148 = 0;
  v146 = 0;
  v151 = 0;
  v149 = 0;
  v154 = 0;
  v170 = *v174;
  v165 = v13;
  v32 = v31;
  v168 = v31;
  do
  {
    for (i = 0; i != v172; ++i)
    {
      if (*v174 != v170)
      {
        objc_enumerationMutation(v32);
      }

      v34 = *(*(&v173 + 1) + 8 * i);
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/r", objc_msgSend(v34, "unsignedIntValue")];
      v36 = [v13 storedValueForKey:v35];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      if (v38)
      {
        v39 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v38 options:0];
        if (v39)
        {
          v40 = v39;
          v169 = [MEMORY[0x277CD5230] convertMatterCertificate:v39];
          if ([MEMORY[0x277CD5230] keypair:pairCopy matchesCertificate:?])
          {
            v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/o", objc_msgSend(v34, "unsignedIntValue")];
            v42 = [v13 storedValueForKey:v41];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;

            if (v44 && (v166 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v44 options:0]) != 0)
            {
              v159 = v44;
              v164 = [[HMMTRMatterKeypair alloc] initWithTLVData:v166];
              if (v164)
              {
                v158 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/n", objc_msgSend(v34, "unsignedIntValue")];
                v45 = [v13 storedValueForKey:?];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v46 = v45;
                }

                else
                {
                  v46 = 0;
                }

                v47 = v46;

                v157 = v47;
                if (v47 && (v48 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v47 options:0]) != 0)
                {
                  v49 = v48;
                  v160 = [MEMORY[0x277CD5230] convertMatterCertificate:v48];
                  v156 = v49;
                  if ([MEMORY[0x277CD5230] keypair:v164 matchesCertificate:?])
                  {
                    v50 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v49];
                    subject = [v50 subject];
                    fabricID = [subject fabricID];

                    v52 = v50;
                    v152 = v50;
                    if (!v154)
                    {
                      goto LABEL_45;
                    }

                    notBefore = [v50 notBefore];

                    context = objc_autoreleasePoolPush();
                    v144 = v171;
                    v54 = HMFGetOSLogHandle();
                    v55 = os_log_type_enabled(v54, OS_LOG_TYPE_INFO);
                    if (notBefore >= v151)
                    {
                      v65 = v159;
                      if (v55)
                      {
                        v102 = HMFGetLogIdentifier();
                        unsignedIntValue = [v34 unsignedIntValue];
                        *buf = 138543874;
                        v178 = v102;
                        v179 = 2112;
                        *v180 = fabricID;
                        *&v180[8] = 1024;
                        LODWORD(v181) = unsignedIntValue;
                        _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_INFO, "%{public}@Redundant system commissioner NOC present in MatterSupport storage with fabricID %@, index: 0x%x", buf, 0x1Cu);
                      }

                      objc_autoreleasePoolPop(context);
                      v64 = v152;
                      v63 = fabricID;
                    }

                    else
                    {
                      if (v55)
                      {
                        v56 = HMFGetLogIdentifier();
                        unsignedIntValue2 = [v149 unsignedIntValue];
                        *buf = 138543874;
                        v178 = v56;
                        v179 = 2112;
                        *v180 = v154;
                        *&v180[8] = 1024;
                        LODWORD(v181) = unsignedIntValue2;
                        _os_log_impl(&dword_22AEAE000, v54, OS_LOG_TYPE_INFO, "%{public}@Redundant system commissioner NOC present in MatterSupport storage with fabricID %@, index: 0x%x", buf, 0x1Cu);
                      }

                      objc_autoreleasePoolPop(context);
                      v52 = v152;
LABEL_45:
                      v145 = fabricID;

                      v155 = v34;
                      [v52 notBefore];
                      v59 = v58 = v41;

                      v60 = v169;
                      v61 = v160;

                      v62 = v164;
                      v147 = v61;
                      v148 = v62;
                      v13 = v165;
                      v146 = v60;
                      v151 = v59;
                      v41 = v58;
                      v63 = fabricID;
                      v64 = v152;
                      v149 = v155;
                      v154 = v145;
                      v65 = v159;
                    }
                  }

                  else
                  {
                    v96 = objc_autoreleasePoolPush();
                    v97 = v171;
                    v98 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                    {
                      HMFGetLogIdentifier();
                      v99 = v153 = v41;
                      unsignedIntValue3 = [v34 unsignedIntValue];
                      unsignedIntValue4 = [v34 unsignedIntValue];
                      *buf = 138543874;
                      v178 = v99;
                      v179 = 1024;
                      *v180 = unsignedIntValue3;
                      v13 = v165;
                      *&v180[4] = 1024;
                      *&v180[6] = unsignedIntValue4;
                      _os_log_impl(&dword_22AEAE000, v98, OS_LOG_TYPE_ERROR, "%{public}@f/%x/n doesn't match f/%x/o", buf, 0x18u);

                      v41 = v153;
                    }

                    objc_autoreleasePoolPop(v96);
                    v65 = v159;
                  }
                }

                else
                {
                  v82 = objc_autoreleasePoolPush();
                  v83 = v171;
                  v84 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v162 = v40;
                    v85 = v82;
                    v87 = v86 = v41;
                    unsignedIntValue5 = [v34 unsignedIntValue];
                    *buf = 138543618;
                    v178 = v87;
                    v179 = 1024;
                    *v180 = unsignedIntValue5;
                    _os_log_impl(&dword_22AEAE000, v84, OS_LOG_TYPE_ERROR, "%{public}@No f/%x/n in storage", buf, 0x12u);

                    v41 = v86;
                    v82 = v85;
                    v40 = v162;
                  }

                  objc_autoreleasePoolPop(v82);
                  v65 = v159;
                }
              }

              else
              {
                v89 = objc_autoreleasePoolPush();
                v90 = v171;
                v91 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v163 = v40;
                  v92 = v89;
                  v94 = v93 = v41;
                  unsignedIntValue6 = [v34 unsignedIntValue];
                  *buf = 138543618;
                  v178 = v94;
                  v179 = 1024;
                  *v180 = unsignedIntValue6;
                  _os_log_impl(&dword_22AEAE000, v91, OS_LOG_TYPE_ERROR, "%{public}@f/%x/o format mismatch", buf, 0x12u);

                  v41 = v93;
                  v89 = v92;
                  v40 = v163;
                }

                objc_autoreleasePoolPop(v89);
                v65 = v159;
              }
            }

            else
            {
              v76 = objc_autoreleasePoolPush();
              v77 = v171;
              v78 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v161 = v40;
                v80 = v79 = v41;
                unsignedIntValue7 = [v34 unsignedIntValue];
                *buf = 138543618;
                v178 = v80;
                v179 = 1024;
                *v180 = unsignedIntValue7;
                _os_log_impl(&dword_22AEAE000, v78, OS_LOG_TYPE_ERROR, "%{public}@No f/%x/o in storage", buf, 0x12u);

                v41 = v79;
                v40 = v161;
              }

              objc_autoreleasePoolPop(v76);
              v13 = v165;
              v65 = v44;
            }
          }

          else
          {
            v71 = objc_autoreleasePoolPush();
            v72 = v171;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              v74 = HMFGetLogIdentifier();
              unsignedIntValue8 = [v34 unsignedIntValue];
              *buf = 138543618;
              v178 = v74;
              v179 = 1024;
              *v180 = unsignedIntValue8;
              _os_log_impl(&dword_22AEAE000, v73, OS_LOG_TYPE_INFO, "%{public}@Ignoring incompatible system commissioner fabric in MatterSupport storage with index: 0x%x", buf, 0x12u);

              v13 = v165;
            }

            objc_autoreleasePoolPop(v71);
          }

          v32 = v168;
          goto LABEL_73;
        }
      }

      v66 = objc_autoreleasePoolPush();
      v67 = v171;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        unsignedIntValue9 = [v34 unsignedIntValue];
        *buf = 138543618;
        v178 = v69;
        v179 = 1024;
        *v180 = unsignedIntValue9;
        _os_log_impl(&dword_22AEAE000, v68, OS_LOG_TYPE_ERROR, "%{public}@f/%x/r isn't base 64 encoded", buf, 0x12u);

        v32 = v168;
      }

      objc_autoreleasePoolPop(v66);
LABEL_73:
    }

    v172 = [v32 countByEnumeratingWithState:&v173 objects:v182 count:16];
  }

  while (v172);

  if (v149)
  {
    v104 = objc_autoreleasePoolPush();
    v105 = v171;
    v106 = HMFGetOSLogHandle();
    v24 = v138;
    v16 = v139;
    v25 = v137;
    v107 = v151;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
    {
      v108 = HMFGetLogIdentifier();
      *buf = 138543874;
      v178 = v108;
      v179 = 2112;
      *v180 = v149;
      *&v180[8] = 2112;
      v181 = v154;
      _os_log_impl(&dword_22AEAE000, v106, OS_LOG_TYPE_INFO, "%{public}@Picked fabric index %@ with fabric ID %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v104);
    v109 = v146;
    v110 = v146;
    *certCopy = v146;
    v111 = v147;
    v112 = v147;
    *operationalCertCopy = v147;
    v113 = v148;
    *keyCopy = v113;
    v114 = 1;
    v115 = v154;
    v116 = v149;
  }

  else
  {
    v114 = 0;
    v116 = 0;
    v24 = v138;
    v16 = v139;
    v25 = v137;
    v111 = v147;
    v113 = v148;
    v109 = v146;
    v107 = v151;
    v115 = v154;
  }

LABEL_97:

LABEL_98:
LABEL_99:

LABEL_100:
LABEL_101:

LABEL_102:
  v134 = *MEMORY[0x277D85DE8];
  return v114;
}

- (void)_updateMTSKeyValueStore:(id)store
{
  v58 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  mtsKeyValueStore = [(HMMTRSystemCommissionerControllerParams *)self mtsKeyValueStore];
  v6 = mtsKeyValueStore;
  if (mtsKeyValueStore)
  {
    selfCopy = self;
    v38 = storeCopy;
    [mtsKeyValueStore storedValuesByKey];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = v51 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v48 objects:v57 count:16];
    v41 = v6;
    v39 = v7;
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v48 + 1) + 8 * i);
          if ([v12 hasPrefix:@"f/"])
          {
            v47 = 0;
            v13 = [v6 removeStoredValueForKey:v12 error:&v47];
            v14 = v47;
            if ((v13 & 1) == 0)
            {
              v15 = objc_autoreleasePoolPush();
              v16 = selfCopy;
              v17 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v18 = HMFGetLogIdentifier();
                *buf = 138543618;
                v54 = v18;
                v55 = 2112;
                v56 = v12;
                _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not remove key '%@' from MTSKeyValueStore", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v15);
              v6 = v41;
              v7 = v39;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v9);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = v38;
    v20 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v44;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v43 + 1) + 8 * j);
          v25 = [v19 objectForKeyedSubscript:v24];
          v26 = [v25 base64EncodedStringWithOptions:0];
          v42 = 0;
          v27 = [v6 setStoredValue:v26 forKey:v24 error:&v42];
          v28 = v42;

          if ((v27 & 1) == 0)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = selfCopy;
            v31 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = HMFGetLogIdentifier();
              *buf = 138543618;
              v54 = v32;
              v55 = 2112;
              v56 = v24;
              _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not store key '%@' into MTSKeyValueStore", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v29);
            v6 = v41;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v21);
    }

    storeCopy = v38;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v36;
      _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not retrieve MTSKeyValueStore to update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_obtainControllerWrapperWithV1KeyPair:(id)pair startupParams:(id)params
{
  v42 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  paramsCopy = params;
  controllerWrapper = [(HMMTRSystemCommissionerControllerParams *)self controllerWrapper];
  [controllerWrapper remove];

  [(HMMTRSystemCommissionerControllerParams *)self setV1keypair:pairCopy];
  controllerFactory = [(HMMTRSystemCommissionerControllerParams *)self controllerFactory];
  v10 = [controllerFactory wrapperWithName:@"System Commissioner Controller" startupParams:paramsCopy entityIdentifier:0];
  [(HMMTRSystemCommissionerControllerParams *)self setControllerWrapper:v10];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    controllerWrapper2 = [(HMMTRSystemCommissionerControllerParams *)selfCopy controllerWrapper];
    fabricID = [paramsCopy fabricID];
    v36 = 138543874;
    v37 = v14;
    v38 = 2112;
    v39 = controllerWrapper2;
    v40 = 2112;
    v41 = fabricID;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@Obtained controller wrapper %@ for fabric ID %@", &v36, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = MEMORY[0x277CD5230];
    rootCertificate = [paramsCopy rootCertificate];
    v23 = [v21 shortDescriptionForX509Certificate:rootCertificate];
    v36 = 138543618;
    v37 = v20;
    v38 = 2112;
    v39 = v23;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@System commissioner root certificate: %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v24 = MEMORY[0x277CD5230];
  rootCertificate2 = [paramsCopy rootCertificate];
  [v24 printX509Certificate:rootCertificate2];

  v26 = objc_autoreleasePoolPush();
  v27 = v18;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = MEMORY[0x277CD5230];
    operationalCertificate = [paramsCopy operationalCertificate];
    v32 = [v30 shortDescriptionForX509Certificate:operationalCertificate];
    v36 = 138543618;
    v37 = v29;
    v38 = 2112;
    v39 = v32;
    _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@System commissioner NOC: %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v33 = MEMORY[0x277CD5230];
  operationalCertificate2 = [paramsCopy operationalCertificate];
  [v33 printX509Certificate:operationalCertificate2];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_buildV1KeyWithPrivateKey:(__SecKey *)key operationalKey:(__SecKey *)operationalKey ipk:(id)ipk rootCert:(id)cert operationalCert:(id)operationalCert updatingMTSKeyValueStore:(BOOL)store
{
  storeCopy = store;
  v49 = *MEMORY[0x277D85DE8];
  ipkCopy = ipk;
  certCopy = cert;
  operationalCertCopy = operationalCert;
  v17 = [(HMMTRSystemCommissionerControllerParams *)self storeV1MatterKeypairWithPrivateKey:key operationalKey:operationalKey rootCert:certCopy operationalCert:operationalCertCopy ipk:ipkCopy];
  if (v17)
  {
    v18 = [[HMMTRMatterKeypair alloc] initWithPrivateKey:operationalKey];
    if (v18)
    {
      v19 = [[HMMTRControllerParameters alloc] initWithIPK:ipkCopy operationalKeypair:v18 operationalCertificate:operationalCertCopy intermediateCertificate:0 rootCertificate:certCopy];
      v20 = v19;
      if (v19)
      {
        [(HMMTRControllerParameters *)v19 setVendorID:&unk_283EE8790];
        if (storeCopy)
        {
          serialize = [(HMMTRMatterKeypair *)v18 serialize];
          if (serialize)
          {
            [(HMMTRSystemCommissionerControllerParams *)self setGeneratingKeyPair:1];
            controllerFactory = [(HMMTRSystemCommissionerControllerParams *)self controllerFactory];
            v23 = [controllerFactory stackStorageWithStartupParams:v20 operationalKeyPairTLV:serialize];

            context = objc_autoreleasePoolPush();
            selfCopy = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v26 = v44 = v23;
              *buf = 138543362;
              v48 = v26;
              _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@Dumping storage content to MTSKeyValueStore for backward compatibility", buf, 0xCu);

              v23 = v44;
            }

            objc_autoreleasePoolPop(context);
            [(HMMTRSystemCommissionerControllerParams *)selfCopy _updateMTSKeyValueStore:v23];
            [(HMMTRSystemCommissionerControllerParams *)selfCopy _startWithV1Keypair:v17];
            [(HMMTRSystemCommissionerControllerParams *)selfCopy setGeneratingKeyPair:0];
          }

          else
          {
            v39 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v42 = contexta = v39;
              *buf = 138543362;
              v48 = v42;
              _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Could not serialize operational key pair", buf, 0xCu);

              v39 = contexta;
            }

            objc_autoreleasePoolPop(v39);
          }
        }

        else
        {
          [(HMMTRSystemCommissionerControllerParams *)self _startWithV1Keypair:v17];
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v48 = v38;
          _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@Bad startup parameter", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v34;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not build operational key pair from V1 Key. System commissioner won't be functional.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v30;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Could not build V1 key. System commissioner won't be functional.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_buildV1KeyWithV0KeyPair:(id)pair
{
  v59 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v9;
    v54 = 2112;
    v55 = v5;
    _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@Building new fabric certs with fabricID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes);
  if (v10)
  {
    v11 = v10;
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v53 = v15;
      v54 = 2112;
      v55 = v5;
      v56 = 1024;
      LODWORD(v57) = v11;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@FATAL Error: Failed to generate IPK for fabric ID %@. Status: %d", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
    v17 = [v16 base64EncodedStringWithOptions:0];
    v51 = 0;
    [(HMMTRSystemCommissionerControllerParams *)selfCopy setMTSStoredValue:v17 forKey:@"IPK" error:&v51];
    v18 = v51;

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (v18)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v23;
        v54 = 2112;
        v55 = v18;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_ERROR, "%{public}@FATAL Error: Failed to store IPK in system commissioner storage: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v24;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@IPK for System Commissioner was generated and stored", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v50 = 0;
      v25 = [MEMORY[0x277CD5230] createRootCertificate:pairCopy issuerID:0 fabricID:v5 error:&v50];
      v18 = v50;
      if (v25)
      {
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
        v27 = objc_autoreleasePoolPush();
        v28 = v20;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543874;
          v53 = v30;
          v54 = 2112;
          v55 = v5;
          v56 = 2112;
          v57 = v26;
          _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Generated RCAC for fabric %@, controller node ID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        initUnassociated = [[HMMTRMatterKeypair alloc] initUnassociated];
        v32 = initUnassociated;
        if (initUnassociated)
        {
          v49 = v18;
          v33 = [MEMORY[0x277CD5230] createOperationalCertificate:pairCopy signingCertificate:v25 operationalPublicKey:objc_msgSend(initUnassociated fabricID:"publicKey") nodeID:v5 caseAuthenticatedTags:v26 error:{0, &v49}];
          v34 = v49;

          if (v33)
          {
            -[HMMTRSystemCommissionerControllerParams _buildV1KeyWithPrivateKey:operationalKey:ipk:rootCert:operationalCert:updatingMTSKeyValueStore:](v28, "_buildV1KeyWithPrivateKey:operationalKey:ipk:rootCert:operationalCert:updatingMTSKeyValueStore:", [pairCopy privateKey], objc_msgSend(v32, "privateKey"), v16, v25, v33, 1);
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v43 = v28;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543874;
              v53 = v46;
              v54 = 2112;
              v55 = v5;
              v56 = 2112;
              v57 = v34;
              _os_log_impl(&dword_22AEAE000, v44, OS_LOG_TYPE_ERROR, "%{public}@FATAL Error: Failed to generate ooperational cert for fabric ID %@. error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(context);
          }

          v18 = v34;
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = v28;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v42 = contexta = v39;
            *buf = 138543362;
            v53 = v42;
            _os_log_impl(&dword_22AEAE000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate operational key", buf, 0xCu);

            v39 = contexta;
          }

          objc_autoreleasePoolPop(v39);
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v20;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543874;
          v53 = v38;
          v54 = 2112;
          v55 = v5;
          v56 = 2112;
          v57 = v18;
          _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@FATAL Error: Failed to generate root cert for fabric ID %@. error: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v35);
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_buildV1KeyFromScratch
{
  v13 = *MEMORY[0x277D85DE8];
  storeV0MatterKeypair = [(HMMTRSystemCommissionerControllerParams *)self storeV0MatterKeypair];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = storeV0MatterKeypair;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@Using new key pair for system commissioner: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [(HMMTRSystemCommissionerControllerParams *)selfCopy _buildV1KeyWithV0KeyPair:storeV0MatterKeypair];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_buildV1KeyFromV0KeyAllowingNew:(BOOL)new
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v8;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Building V1 key from V0 key", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v0MatterKeypairFromKeychain = [(HMMTRSystemCommissionerControllerParams *)selfCopy v0MatterKeypairFromKeychain];
  if (v0MatterKeypairFromKeychain)
  {
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v10 = [(HMMTRSystemCommissionerControllerParams *)selfCopy _findFabricRecordInMTSKeyValueStoreMatchingKeyPair:v0MatterKeypairFromKeychain ipk:&v48 rootCert:&v47 operationalKey:&v46 operationalCert:&v45];
    v11 = v48;
    v12 = v47;
    v13 = v46;
    v14 = v45;
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v18)
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v19;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Check if MTS stored cert has correct validity period", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v44 = 0;
      v20 = [HMMTRStorage checkAndUpdateExpiryOfCertificate:v12 keyPair:v0MatterKeypairFromKeychain newCertificate:&v44];
      v21 = v44;
      v43 = v11;
      if (v20)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v16;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543362;
          v50 = v25;
          _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@V1 key will be updated using new root cert. This will disrupt all paired accessories", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v22);
        v26 = v21;

        v12 = v26;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = v16;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v30;
        _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_INFO, "%{public}@Propagating V1 key from V0 key and storage certs", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      privateKey = [v0MatterKeypairFromKeychain privateKey];
      privateKey2 = [v13 privateKey];
      v33 = privateKey;
      v11 = v43;
      [(HMMTRSystemCommissionerControllerParams *)v28 _buildV1KeyWithPrivateKey:v33 operationalKey:privateKey2 ipk:v43 rootCert:v12 operationalCert:v14 updatingMTSKeyValueStore:0];
    }

    else if (new)
    {
      if (v18)
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v39;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@Propagating V1 key from V0 key and creating new fabric certs", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMMTRSystemCommissionerControllerParams *)v16 _buildV1KeyWithV0KeyPair:v0MatterKeypairFromKeychain];
    }

    else
    {
      if (v18)
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v41;
        _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@No fabric records present in MTS storage for matching V0 key pair", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = selfCopy;
    v36 = HMFGetOSLogHandle();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
    if (new)
    {
      if (v37)
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v38;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@No V0 keypair present. Building new V1 keypair.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      [(HMMTRSystemCommissionerControllerParams *)v35 _buildV1KeyFromScratch];
    }

    else
    {
      if (v37)
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v40;
        _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_INFO, "%{public}@No V0 keypair present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (id)_buildControllerParams2WithV1Keypair:(id)keypair
{
  v40 = *MEMORY[0x277D85DE8];
  keypairCopy = keypair;
  if ([keypairCopy operationalKey])
  {
    v5 = -[HMMTRMatterKeypair initWithPrivateKey:]([HMMTRMatterKeypair alloc], "initWithPrivateKey:", [keypairCopy operationalKey]);
  }

  else
  {
    v5 = 0;
  }

  v6 = dispatch_queue_create("HMMTRPerControllerStorage queue for System Commissioner fabric", 0);
  v7 = [[HMMTRSystemCommissionerPerControllerStorage alloc] initWithQueue:v6];
  v8 = [HMMTRControllerParameters alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v10 = [keypairCopy ipk];
  operationalCert = [keypairCopy operationalCert];
  rootCert = [keypairCopy rootCert];
  v13 = [(HMMTRControllerParameters *)v8 initWithStorageDelegate:v7 storageDelegateQueue:v6 uniqueIdentifier:uUID ipk:v10 vendorID:&unk_283EE8790 operationalKeypair:v5 operationalCertificate:operationalCert intermediateCertificate:0 rootCertificate:rootCert];

  if (v13)
  {
    v14 = MEMORY[0x277CD5230];
    operationalCert2 = [keypairCopy operationalCert];
    v16 = [v14 convertX509Certificate:operationalCert2];

    v17 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v16];
    v18 = v17;
    if (v17)
    {
      subject = [v17 subject];
      fabricID = [subject fabricID];
      [(HMMTRSystemCommissionerControllerParams *)self setCommissioningFabricID:fabricID];

      subject2 = [v18 subject];
      nodeID = [subject2 nodeID];
      [(HMMTRSystemCommissionerControllerParams *)self setAdminNodeID:nodeID];

      [(HMMTRControllerParameters *)v13 setOperationalCertificateIssuer:self];
      workQueue = [(HMMTRSystemCommissionerControllerParams *)self workQueue];
      [(HMMTRControllerParameters *)v13 setOperationalCertificateIssuerQueue:workQueue];

      certificationDeclarationCertificates = [(HMMTRSystemCommissionerControllerParams *)self certificationDeclarationCertificates];
      [(HMMTRControllerParameters *)v13 setCertificationDeclarationCertificates:certificationDeclarationCertificates];

      productAttestationAuthorityCertificates = [(HMMTRSystemCommissionerControllerParams *)self productAttestationAuthorityCertificates];
      [(HMMTRControllerParameters *)v13 setProductAttestationAuthorityCertificates:productAttestationAuthorityCertificates];

      v26 = v13;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v37 = v31;
        *buf = 138543362;
        v39 = v34;
        _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Bad NOC in V1 key", buf, 0xCu);

        v31 = v37;
      }

      objc_autoreleasePoolPop(v31);
      v26 = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v30;
      _os_log_impl(&dword_22AEAE000, v29, OS_LOG_TYPE_ERROR, "%{public}@Bad startup parameter from V1 keypair", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_buildControllerParams1WithV1Keypair:(id)keypair
{
  v34 = *MEMORY[0x277D85DE8];
  keypairCopy = keypair;
  if ([keypairCopy operationalKey])
  {
    v5 = -[HMMTRMatterKeypair initWithPrivateKey:]([HMMTRMatterKeypair alloc], "initWithPrivateKey:", [keypairCopy operationalKey]);
  }

  else
  {
    v5 = 0;
  }

  v6 = [HMMTRControllerParameters alloc];
  v7 = [keypairCopy ipk];
  operationalCert = [keypairCopy operationalCert];
  rootCert = [keypairCopy rootCert];
  v10 = [(HMMTRControllerParameters *)v6 initWithIPK:v7 operationalKeypair:v5 operationalCertificate:operationalCert intermediateCertificate:0 rootCertificate:rootCert];

  if (v10)
  {
    v11 = MEMORY[0x277CD5230];
    operationalCert2 = [keypairCopy operationalCert];
    v13 = [v11 convertX509Certificate:operationalCert2];

    v14 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v13];
    v15 = v14;
    if (v14)
    {
      subject = [v14 subject];
      fabricID = [subject fabricID];
      [(HMMTRSystemCommissionerControllerParams *)self setCommissioningFabricID:fabricID];

      subject2 = [v15 subject];
      nodeID = [subject2 nodeID];
      [(HMMTRSystemCommissionerControllerParams *)self setAdminNodeID:nodeID];

      [(HMMTRControllerParameters *)v10 setVendorID:&unk_283EE8790];
      [(HMMTRControllerParameters *)v10 setOperationalCertificateIssuer:self];
      workQueue = [(HMMTRSystemCommissionerControllerParams *)self workQueue];
      [(HMMTRControllerParameters *)v10 setOperationalCertificateIssuerQueue:workQueue];

      v21 = v10;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v32 = 138543362;
        v33 = v29;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Bad NOC in V1 key", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v21 = 0;
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v25;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, "%{public}@Bad startup parameter from V1 keypair", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_startWithV1Keypair:(id)keypair
{
  v15 = *MEMORY[0x277D85DE8];
  keypairCopy = keypair;
  controllerFactory = [(HMMTRSystemCommissionerControllerParams *)self controllerFactory];
  usesCommonStorage = [controllerFactory usesCommonStorage];

  if (usesCommonStorage)
  {
    [(HMMTRSystemCommissionerControllerParams *)self _buildControllerParams1WithV1Keypair:keypairCopy];
  }

  else
  {
    [(HMMTRSystemCommissionerControllerParams *)self _buildControllerParams2WithV1Keypair:keypairCopy];
  }
  v7 = ;
  if (v7)
  {
    [(HMMTRSystemCommissionerControllerParams *)self _obtainControllerWrapperWithV1KeyPair:keypairCopy startupParams:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate controller parameters from V1 keypair", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkAndUpdateValidityPeriodOfV1Keypair:(id)keypair newKeyPair:(id *)pair
{
  v24 = *MEMORY[0x277D85DE8];
  keypairCopy = keypair;
  rootCert = [keypairCopy rootCert];
  v21 = 0;
  v8 = [HMMTRStorage checkAndUpdateExpiryOfCertificate:rootCert keyPair:keypairCopy newCertificate:&v21];
  v9 = v21;

  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v13;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@V1 key pair root cert is updated. This will disrupt already paired accessories.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    privateKey = [keypairCopy privateKey];
    operationalKey = [keypairCopy operationalKey];
    operationalCert = [keypairCopy operationalCert];
    v17 = [keypairCopy ipk];
    *pair = [(HMMTRSystemCommissionerControllerParams *)selfCopy storeV1MatterKeypairWithPrivateKey:privateKey operationalKey:operationalKey rootCert:v9 operationalCert:operationalCert ipk:v17];

    v18 = *pair != 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)issueOperationalCertificateForRequest:(id)request attestationInfo:(id)info controller:(id)controller completion:(id)completion
{
  v64[2] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  infoCopy = info;
  controllerCopy = controller;
  completionCopy = completion;
  commissioneeNodeID = [(HMMTRSystemCommissionerControllerParams *)self commissioneeNodeID];

  if (commissioneeNodeID)
  {
    v15 = MEMORY[0x277CD5230];
    v16 = [requestCopy csr];
    v56 = 0;
    v17 = [v15 publicKeyFromCSR:v16 error:&v56];
    v18 = v56;

    if (v17)
    {
      v52 = infoCopy;
      v53 = requestCopy;
      v19 = *MEMORY[0x277CDC040];
      v20 = *MEMORY[0x277CDBFE0];
      v63[0] = *MEMORY[0x277CDC028];
      v63[1] = v20;
      v21 = *MEMORY[0x277CDC000];
      v64[0] = v19;
      v64[1] = v21;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
      v51 = error = 0;
      v22 = SecKeyCreateWithData(v17, v51, &error);
      if (v22)
      {
        v23 = v22;
        v1keypair = [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
        rootCert = [v1keypair rootCert];

        v26 = MEMORY[0x277CD5230];
        [(HMMTRSystemCommissionerControllerParams *)self v1keypair];
        v27 = v50 = controllerCopy;
        commissioningFabricID = [(HMMTRSystemCommissionerControllerParams *)self commissioningFabricID];
        [(HMMTRSystemCommissionerControllerParams *)self commissioneeNodeID];
        v29 = v49 = v17;
        v54 = v18;
        v30 = [v26 createOperationalCertificate:v27 signingCertificate:rootCert operationalPublicKey:v23 fabricID:commissioningFabricID nodeID:v29 caseAuthenticatedTags:0 error:&v54];
        v31 = v54;

        controllerCopy = v50;
        v32 = objc_alloc(MEMORY[0x277CD5450]);
        adminNodeID = [(HMMTRSystemCommissionerControllerParams *)self adminNodeID];
        v34 = [v32 initWithOperationalCertificate:v30 intermediateCertificate:0 rootCertificate:rootCert adminSubject:adminNodeID];

        v17 = v49;
        CFRelease(v23);
        completionCopy[2](completionCopy, v34, 0);

        v18 = v31;
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        selfCopy = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543874;
          v58 = v47;
          v59 = 2112;
          v60 = v17;
          v61 = 2112;
          v62 = error;
          _os_log_impl(&dword_22AEAE000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to create SecKey from %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v44);
        (completionCopy)[2](completionCopy, 0, error);
      }

      infoCopy = v52;

      requestCopy = v53;
    }

    else
    {
      v39 = controllerCopy;
      v40 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v43;
        v59 = 2112;
        v60 = v18;
        _os_log_impl(&dword_22AEAE000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract public key from CSR: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      (completionCopy)[2](completionCopy, 0, v18);
      controllerCopy = v39;
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v38;
      _os_log_impl(&dword_22AEAE000, v37, OS_LOG_TYPE_ERROR, "%{public}@No commissionee node ID assigned yet. Not issuing NOC.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:6 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v18);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)handleKeyPairDataChanged
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Keypair data changed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMMTRSystemCommissionerControllerParams *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMMTRSystemCommissionerControllerParams_handleKeyPairDataChanged__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __67__HMMTRSystemCommissionerControllerParams_handleKeyPairDataChanged__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) generatingKeyPair])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@Currently generating key pair. Will ignore the keypair data change.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D85DE8];

    [v7 _handleKeychainDataChanged];
  }
}

- (BOOL)fetchControllerParamsAllowingNew:(BOOL)new nocSigner:(id *)signer controllerWrapper:(id *)wrapper
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8108;
  v24 = __Block_byref_object_dispose__8109;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8108;
  v18 = __Block_byref_object_dispose__8109;
  v19 = 0;
  workQueue = [(HMMTRSystemCommissionerControllerParams *)self workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__HMMTRSystemCommissionerControllerParams_fetchControllerParamsAllowingNew_nocSigner_controllerWrapper___block_invoke;
  v12[3] = &unk_2786EE898;
  newCopy = new;
  v12[4] = self;
  v12[5] = &v20;
  v12[6] = &v14;
  dispatch_sync(workQueue, v12);

  v10 = v15[5];
  if (v10)
  {
    *signer = v21[5];
    *wrapper = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v10 != 0;
}

void __104__HMMTRSystemCommissionerControllerParams_fetchControllerParamsAllowingNew_nocSigner_controllerWrapper___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) controllerWrapper];

  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_DEBUG, "%{public}@No new fabric created. Returning previous controller wrapper.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = [*(a1 + 32) v1MatterKeypairFromKeychain];
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 56) == 1)
      {
        v9 = *(a1 + 32);
        v25 = 0;
        v10 = [v9 _checkAndUpdateValidityPeriodOfV1Keypair:v8 newKeyPair:&v25];
        v11 = v25;
        v12 = v11;
        if (v10)
        {
          v13 = v11;

          v8 = v13;
        }
      }

      [*(a1 + 32) _startWithV1Keypair:v8];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v17;
        _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@No V1 keypair present", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 32) _buildV1KeyFromV0KeyAllowingNew:*(a1 + 56)];
    }
  }

  v18 = [*(a1 + 32) v1keypair];
  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [*(a1 + 32) controllerWrapper];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = *MEMORY[0x277D85DE8];
}

- (HMMTRSystemCommissionerControllerParams)initWithQueue:(id)queue controllerFactory:(id)factory
{
  queueCopy = queue;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = HMMTRSystemCommissionerControllerParams;
  v9 = [(HMMTRSystemCommissionerControllerParams *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_controllerFactory, factory);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t64 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t64, &__block_literal_global_8119);
  }

  v3 = logCategory__hmf_once_v65;

  return v3;
}

uint64_t __54__HMMTRSystemCommissionerControllerParams_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v65;
  logCategory__hmf_once_v65 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end