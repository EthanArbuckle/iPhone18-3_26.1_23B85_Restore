@interface HMMTRMultiFabricDataStoreQuery
+ (id)logCategory;
- (HMMTRMultiFabricDataStoreQuery)initWithCHIPStorageDelegate:(id)delegate keychainDelegate:(id)keychainDelegate v2FabricDataStoreDelegate:(id)storeDelegate;
- (HMMTRMultiFabricDataStoreQueryCHIPStorageDelegate)chipStorageDelegate;
- (HMMTRMultiFabricDataStoreQueryKeychainDelegate)keychainDelegate;
- (HMMTRMultiFabricDataStoreQueryV2FabricDataStoreDelegate)v2FabricDataStoreDelegate;
- (id)fabricDataFromV2FabricDataItem:(id)item;
- (id)locallyStoredFabricDataWithDataPresentInV2FabricDataStore:(BOOL *)store error:(id *)error;
- (id)logIdentifier;
@end

@implementation HMMTRMultiFabricDataStoreQuery

- (HMMTRMultiFabricDataStoreQueryV2FabricDataStoreDelegate)v2FabricDataStoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_v2FabricDataStoreDelegate);

  return WeakRetained;
}

- (HMMTRMultiFabricDataStoreQueryKeychainDelegate)keychainDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keychainDelegate);

  return WeakRetained;
}

- (HMMTRMultiFabricDataStoreQueryCHIPStorageDelegate)chipStorageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chipStorageDelegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  chipStorageDelegate = [(HMMTRMultiFabricDataStoreQuery *)self chipStorageDelegate];
  identifier = [chipStorageDelegate identifier];

  return identifier;
}

- (id)fabricDataFromV2FabricDataItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rootKeyPair = [itemCopy rootKeyPair];
  residentOpKeyPair = [itemCopy residentOpKeyPair];
  fabricID = [itemCopy fabricID];
  residentNodeID = [itemCopy residentNodeID];
  rcac = [itemCopy rcac];
  v10 = [itemCopy ipk];
  v11 = [HMMTRFabricDataCreator fabricDataForRootKeyPair:rootKeyPair opKeyPair:residentOpKeyPair fabricID:fabricID residentNodeID:residentNodeID overridingRCAC:rcac ipk:v10];

  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      uuid = [itemCopy uuid];
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = uuid;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive fabric data from combined data item: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)locallyStoredFabricDataWithDataPresentInV2FabricDataStore:(BOOL *)store error:(id *)error
{
  storeCopy = store;
  selfCopy = self;
  v186 = *MEMORY[0x277D85DE8];
  if (store)
  {
    *store = 0;
  }

  v2FabricDataStoreDelegate = [(HMMTRMultiFabricDataStoreQuery *)self v2FabricDataStoreDelegate];
  fabricDataItems = [v2FabricDataStoreDelegate fabricDataItems];

  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v9 = fabricDataItems;
  v10 = [v9 countByEnumeratingWithState:&v177 objects:v185 count:16];
  v174 = selfCopy;
  if (!v10)
  {

    v13 = 0;
    if (!storeCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v11 = v10;
  errorCopy = error;
  v170 = storeCopy;
  v12 = 0;
  v13 = 0;
  v14 = *v178;
  v172 = *v178;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      v16 = v13;
      if (*v178 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v177 + 1) + 8 * i);
      v17 = [(HMMTRMultiFabricDataStoreQuery *)selfCopy fabricDataFromV2FabricDataItem:v13];
      if (!v17)
      {
        v13 = v16;
        goto LABEL_23;
      }

      if (!v16)
      {
        v24 = v13;
        goto LABEL_18;
      }

      v18 = v12;
      v19 = v9;
      v20 = v13;
      version = [v13 version];
      version2 = [v16 version];
      v23 = [version compare:version2];

      if (v23)
      {
        if (v23 == 1)
        {
          v13 = v20;
LABEL_16:
          v28 = v13;

          v9 = v19;
LABEL_17:
          v12 = v18;
          v14 = v172;
          selfCopy = v174;
LABEL_18:
          v29 = v17;

          v12 = v29;
          goto LABEL_23;
        }
      }

      else
      {
        v13 = v20;
        [v20 creationTime];
        v26 = v25;
        [v16 creationTime];
        if (v26 < v27)
        {
          goto LABEL_16;
        }

        [v20 creationTime];
        v31 = v30;
        [v16 creationTime];
        if (v31 == v32)
        {
          uuid = [v20 uuid];
          uuid2 = [v16 uuid];
          v35 = [uuid compare:uuid2];

          if (v35 == 1)
          {
            v36 = v20;

            v9 = v19;
            v13 = v20;
            goto LABEL_17;
          }
        }
      }

      v13 = v16;
      v9 = v19;
      v12 = v18;
      v14 = v172;
      selfCopy = v174;
LABEL_23:
    }

    v11 = [v9 countByEnumeratingWithState:&v177 objects:v185 count:16];
  }

  while (v11);

  if (!v12)
  {
    error = errorCopy;
    storeCopy = v170;
    if (!v170)
    {
LABEL_30:
      chipStorageDelegate = [(HMMTRMultiFabricDataStoreQuery *)selfCopy chipStorageDelegate];
      keyValueStore = [chipStorageDelegate keyValueStore];
      fabricID = [keyValueStore objectForKeyedSubscript:@"HMDHMMKVS.fabricID"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = fabricID;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40;

      if (!v41 || [v41 isEqual:&unk_283EE8310])
      {
        fabricID = [chipStorageDelegate fabricID];

        if (!fabricID || [fabricID isEqual:&unk_283EE8310])
        {
          errorCopy2 = error;
          v43 = objc_autoreleasePoolPush();
          v44 = selfCopy;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v47 = v46 = v13;
            *buf = 138543362;
            v182 = v47;
            _os_log_impl(&dword_22AEAE000, v45, OS_LOG_TYPE_INFO, "%{public}@No fabric ID", buf, 0xCu);

            v13 = v46;
          }

          objc_autoreleasePoolPop(v43);
          [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
          *errorCopy2 = v48 = 0;
          goto LABEL_117;
        }

        v49 = objc_autoreleasePoolPush();
        v50 = selfCopy;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v53 = v52 = v13;
          *buf = 138543618;
          v182 = v53;
          v183 = 2112;
          v184 = fabricID;
          _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@In-memory fabric ID %@ is used while KVS hasn't stored fabric ID yet", buf, 0x16u);

          v13 = v52;
        }

        objc_autoreleasePoolPop(v49);
        selfCopy = v174;
      }

      v173 = v13;
      [(HMMTRMultiFabricDataStoreQuery *)selfCopy keychainDelegate];
      v55 = v54 = selfCopy;
      nocSigner = [v55 nocSigner];
      copyV0KeyPair = [nocSigner copyV0KeyPair];

      if (!copyV0KeyPair)
      {
        v81 = MEMORY[0x277CCA9B8];
        v82 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:1];
        *error = [v81 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v82];

        v83 = objc_autoreleasePoolPush();
        v84 = v54;
        v85 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = HMFGetLogIdentifier();
          *buf = 138543362;
          v182 = v86;
          _os_log_impl(&dword_22AEAE000, v85, OS_LOG_TYPE_INFO, "%{public}@No fabric root key pair", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v83);
        v48 = 0;
        v13 = v173;
        goto LABEL_116;
      }

      v58 = SecKeyCopyExternalRepresentation([copyV0KeyPair publicKey], 0);
      keyValueStore2 = [chipStorageDelegate keyValueStore];
      v60 = [keyValueStore2 objectForKeyedSubscript:@"IPK"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v60;
      }

      else
      {
        v61 = 0;
      }

      v62 = v61;

      if (!v62 || (v63 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v62 options:0]) == 0)
      {
        v72 = v62;
        v73 = MEMORY[0x277CCA9B8];
        v74 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
        *error = [v73 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v74];

        v75 = objc_autoreleasePoolPush();
        v76 = v174;
        v77 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v78 = v58;
          v80 = v79 = v9;
          *buf = 138543362;
          v182 = v80;
          _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_INFO, "%{public}@No IPK", buf, 0xCu);

          v9 = v79;
          v58 = v78;
        }

        objc_autoreleasePoolPop(v75);
        v48 = 0;
        v13 = v173;
        goto LABEL_115;
      }

      v64 = v63;
      v166 = v62;
      v167 = v58;
      v169 = v9;
      keyValueStore3 = [chipStorageDelegate keyValueStore];
      v175 = 0;
      v176 = 0;
      v156 = [HMMTRStorage knownFabricInStorage:keyValueStore3 fabricID:fabricID keyPair:copyV0KeyPair controllerNodeID:&v176 rootCertificate:&v175];
      v66 = v176;
      v171 = v175;

      keyValueStore4 = [chipStorageDelegate keyValueStore];
      v68 = [keyValueStore4 objectForKeyedSubscript:@"HMD.MTRPlugin.OperationalCert"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = v68;
      }

      else
      {
        v69 = 0;
      }

      v70 = v69;

      v164 = v70;
      if (v70)
      {
        v71 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v70 options:0];
      }

      else
      {
        v71 = 0;
      }

      v163 = v71;
      v162 = [MEMORY[0x277CD5230] convertX509Certificate:v71];
      v161 = [objc_alloc(MEMORY[0x277CD5228]) initWithTLVBytes:v162];
      subject = [v161 subject];
      nodeID = [subject nodeID];

      v165 = v66;
      v160 = v64;
      if (!nodeID)
      {
        if (!v66)
        {
          v118 = MEMORY[0x277CCA9B8];
          v119 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
          *error = [v118 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v119];

          v120 = objc_autoreleasePoolPush();
          v121 = v174;
          v122 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
          {
            v123 = HMFGetLogIdentifier();
            *buf = 138543362;
            v182 = v123;
            _os_log_impl(&dword_22AEAE000, v122, OS_LOG_TYPE_INFO, "%{public}@No legacy resident node ID retrieved from stored operational cert", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v120);
          v48 = 0;
          v58 = v167;
          v9 = v169;
          v13 = v173;
          v72 = v166;
          goto LABEL_114;
        }

        nodeID = v66;
      }

      v159 = nodeID;
      keyValueStore5 = [chipStorageDelegate keyValueStore];
      v90 = [keyValueStore5 objectForKeyedSubscript:@"HMD.MTRPlugin.RootCert"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }

      v92 = v91;

      v158 = v92;
      if (!v92 || (v93 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v92 options:0]) == 0)
      {
        v9 = v169;
        if (!v171)
        {
          v112 = MEMORY[0x277CCA9B8];
          v113 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
          *error = [v112 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v113];

          v114 = objc_autoreleasePoolPush();
          v115 = v174;
          v116 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
          {
            v117 = HMFGetLogIdentifier();
            *buf = 138543362;
            v182 = v117;
            _os_log_impl(&dword_22AEAE000, v116, OS_LOG_TYPE_INFO, "%{public}@No root cert", buf, 0xCu);

            v9 = v169;
          }

          objc_autoreleasePoolPop(v114);
          v48 = 0;
          goto LABEL_88;
        }

        v93 = v171;
      }

      if ([MEMORY[0x277CD5230] keypair:copyV0KeyPair matchesCertificate:v93])
      {
        v154 = v93;
        keychainDelegate = [(HMMTRMultiFabricDataStoreQuery *)v174 keychainDelegate];
        ownerSharedOperationalKeyPair = [keychainDelegate ownerSharedOperationalKeyPair];
        copyV0KeyPair2 = [ownerSharedOperationalKeyPair copyV0KeyPair];

        v155 = copyV0KeyPair2;
        if (!copyV0KeyPair2)
        {
          v133 = MEMORY[0x277CCA9B8];
          v134 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
          *error = [v133 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v134];

          v135 = objc_autoreleasePoolPush();
          v136 = v174;
          v137 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            v138 = HMFGetLogIdentifier();
            *buf = 138543362;
            v182 = v138;
            _os_log_impl(&dword_22AEAE000, v137, OS_LOG_TYPE_ERROR, "%{public}@No operational key pair", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v135);
          v48 = 0;
          v58 = v167;
          v9 = v169;
          v13 = v173;
          v72 = v166;
          v103 = 0;
          goto LABEL_112;
        }

        keyValueStore6 = [chipStorageDelegate keyValueStore];
        v98 = [keyValueStore6 objectForKeyedSubscript:@"HMD.MTRPlugin.OperationalCert"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v99 = v98;
        }

        else
        {
          v99 = 0;
        }

        v100 = v99;

        v9 = v169;
        v101 = 0x277CD5000uLL;
        if (v100)
        {
          v102 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v100 options:0];
          if (v102)
          {
            goto LABEL_80;
          }
        }

        v153 = v100;
        if (v156)
        {
          v156 = [MEMORY[0x277CCACA8] stringWithFormat:@"f/%x/n", v156];
          keyValueStore7 = [chipStorageDelegate keyValueStore];
          v126 = [keyValueStore7 objectForKeyedSubscript:v156];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v127 = v126;
          }

          else
          {
            v127 = 0;
          }

          v128 = v127;

          if (v128 && (v129 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v128 options:0]) != 0)
          {
            v130 = v129;
            v131 = v156;
            v132 = [MEMORY[0x277CD5230] convertMatterCertificate:v129];
            if ([MEMORY[0x277CD5230] keypair:v155 matchesCertificate:v132])
            {
              v157 = v132;
            }

            else
            {
              v157 = 0;
            }

            v101 = 0x277CD5000;
            if (v157)
            {

              v102 = 0;
              v100 = v153;
LABEL_80:
              v103 = v155;
              v104 = v102;
              if ([*(v101 + 560) keypair:v155 matchesCertificate:v102])
              {
                v58 = v167;
                v48 = [[HMMTRFabricData alloc] initWithRootPublicKey:v167 fabricID:fabricID ipk:v64 residentNodeID:v159 rootKeyPair:copyV0KeyPair rootCert:v154 residentOperationalKeyPair:v155 residentOperationalCert:v104];

LABEL_111:
                v13 = v173;
                v72 = v166;
LABEL_112:

                goto LABEL_113;
              }

              v153 = v100;
              v139 = MEMORY[0x277CCA9B8];
              v140 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
              *error = [v139 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v140];

              v141 = objc_autoreleasePoolPush();
              v142 = v174;
              v143 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
              {
                v144 = HMFGetLogIdentifier();
                *buf = 138543362;
                v182 = v144;
                _os_log_impl(&dword_22AEAE000, v143, OS_LOG_TYPE_ERROR, "%{public}@Operational key doesn't match operational cert", buf, 0xCu);

                v9 = v169;
              }

              objc_autoreleasePoolPop(v141);
LABEL_110:
              v48 = 0;
              v58 = v167;
              v103 = v155;
              v100 = v153;
              goto LABEL_111;
            }
          }

          else
          {
          }
        }

        v145 = MEMORY[0x277CCA9B8];
        v146 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
        *error = [v145 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v146];

        v147 = objc_autoreleasePoolPush();
        v148 = v174;
        v149 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
        {
          v150 = HMFGetLogIdentifier();
          *buf = 138543362;
          v182 = v150;
          _os_log_impl(&dword_22AEAE000, v149, OS_LOG_TYPE_INFO, "%{public}@No operational cert", buf, 0xCu);

          v9 = v169;
        }

        objc_autoreleasePoolPop(v147);
        goto LABEL_110;
      }

      v105 = MEMORY[0x277CCA9B8];
      v106 = [MEMORY[0x277CCA9B8] hmmtrErrorWithCode:2];
      *error = [v105 hapErrorWithCode:36 description:0 reason:0 suggestion:0 underlyingError:v106];

      v107 = objc_autoreleasePoolPush();
      v108 = v174;
      v109 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v111 = v110 = v93;
        *buf = 138543362;
        v182 = v111;
        _os_log_impl(&dword_22AEAE000, v109, OS_LOG_TYPE_ERROR, "%{public}@Root key doesn't match root cert", buf, 0xCu);

        v93 = v110;
      }

      objc_autoreleasePoolPop(v107);
      v48 = 0;
      v9 = v169;
LABEL_88:
      v13 = v173;
      v72 = v166;
      v58 = v167;
LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:
LABEL_117:

      v12 = v48;
      goto LABEL_118;
    }

LABEL_29:
    *storeCopy = 0;
    goto LABEL_30;
  }

  if (v170)
  {
    *v170 = 1;
  }

LABEL_118:

  v151 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMMTRMultiFabricDataStoreQuery)initWithCHIPStorageDelegate:(id)delegate keychainDelegate:(id)keychainDelegate v2FabricDataStoreDelegate:(id)storeDelegate
{
  delegateCopy = delegate;
  keychainDelegateCopy = keychainDelegate;
  storeDelegateCopy = storeDelegate;
  v14.receiver = self;
  v14.super_class = HMMTRMultiFabricDataStoreQuery;
  v11 = [(HMMTRMultiFabricDataStoreQuery *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_chipStorageDelegate, delegateCopy);
    objc_storeWeak(&v12->_keychainDelegate, keychainDelegateCopy);
    objc_storeWeak(&v12->_v2FabricDataStoreDelegate, storeDelegateCopy);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global_6585);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

uint64_t __45__HMMTRMultiFabricDataStoreQuery_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21;
  logCategory__hmf_once_v21 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end