@interface CKDPCSIdentityManager
+ (BOOL)_rollTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account oldIdentityID:(id *)d newIdentityID:(id *)iD withError:(id *)error;
+ (BOOL)_setIdentitySet:(_PCSIdentitySetData *)set forServiceName:(id)name backingMockAccount:(id)account withError:(id *)error;
+ (BOOL)credentialsAreValidForAccount:(id)account;
+ (BOOL)needsUserKeySyncToPopulateCurrentIdentityForAccount:(id)account serviceName:(id)name;
+ (_PCSIdentitySetData)_copyStingrayIdentitiesForOptions:(id)options withError:(id *)error;
+ (_PCSIdentitySetData)_copyStingrayIdentitiesForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error;
+ (_PCSIdentitySetData)_createIdentitySetForService:(id)service dsid:(id)dsid error:(id *)error;
+ (_PCSIdentitySetData)_getTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error;
+ (_PCSIdentitySetData)_getTestAccountIdentitySetForService:(id)service forBackingMockAccount:(id)account shouldFaultInIdentities:(BOOL)identities withError:(id *)error;
+ (_PCSIdentitySetData)copyTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error;
+ (_PCSIdentitySetData)copyTestAccountIdentitySetForService:(id)service forBackingMockAccount:(id)account withError:(id *)error;
+ (_PCSIdentitySetData)createFullKeychainIdentitySetForAccount:(id)account serviceName:(id)name error:(id *)error;
+ (id)_copyPCSIdentitiesForBackingMockAccount:(id)account withError:(id *)error;
+ (id)_generatePCSIdentityOptionsForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error;
+ (id)currentIdentityPublicKeyIDForAccount:(id)account serviceName:(id)name error:(id *)error;
+ (id)overrideKeys;
+ (id)sharedFakeIdentitySetsByServiceByUsername;
+ (id)sharedMockIdentitySetsByServiceByIdentifier;
+ (void)clearSharedMockIdentitySetsCache;
- (BOOL)_checkAndClearPCSTestOverrideForKey:(id)key;
- (BOOL)_hasCurrentKeyForService:(id)service inIdentitySet:(_PCSIdentitySetData *)set withError:(id *)error;
- (BOOL)currentServiceIsManatee;
- (BOOL)identitySet:(_PCSIdentitySetData *)set containsPublicKey:(id)key error:(id *)error;
- (BOOL)isManateeAvailableWithError:(id *)error;
- (BOOL)liverpoolServiceOwnsPublicID:(id)d;
- (BOOL)serviceIsManatee:(id)manatee;
- (CKDPCSIdentityManager)initWithAccount:(id)account deviceContext:(id)context serviceName:(id)name forceEnableReadOnlyManatee:(BOOL)manatee clientSDKVersion:(unsigned int)version;
- (_PCSIdentityData)createRandomSharingIdentityWithError:(id *)error;
- (_PCSIdentityData)createSharingIdentityFromData:(id)data error:(id *)error;
- (_PCSIdentityData)debugSharingIdentity;
- (_PCSIdentitySetData)_copyIdentityForService:(id)service useCache:(BOOL)cache validateCurrentKey:(BOOL)key error:(id *)error;
- (_PCSIdentitySetData)copyIdentitySetWithType:(unint64_t)type options:(unint64_t)options error:(id *)error;
- (_PCSIdentitySetData)copyTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error;
- (_PCSIdentitySetData)createFullKeychainIdentitySetWithError:(id *)error;
- (_PCSIdentitySetData)createTemporaryCloudKitFeaturesSigningIdentitySetForServiceName:(id)name withError:(id *)error;
- (_PCSPublicIdentityData)copyDiversifiedIdentityForService:(unint64_t)service userIDEntropy:(id)entropy withError:(id *)error;
- (_PCSPublicIdentityData)createPublicSharingIdentityFromPublicKey:(id)key error:(id *)error;
- (id)PCSServiceStringFromCKServiceType:(unint64_t)type;
- (id)_cacheIdentitySet:(_PCSIdentitySetData *)set forService:(id)service;
- (id)_copyPublicKeyDataForAllIdentitiesInSet:(_PCSIdentitySetData *)set withService:(unint64_t)service;
- (id)_copyPublicKeyDataForIdentitySet:(_PCSIdentitySetData *)set withService:(unint64_t)service withError:(id *)error;
- (id)copyAllPublicKeysForService:(unint64_t)service withError:(id *)error;
- (id)copyDiversifiedPublicKeyForService:(unint64_t)service userIDEntropy:(id)entropy withError:(id *)error;
- (id)copyPublicKeyForService:(unint64_t)service withError:(id *)error;
- (id)dataFromSharingIdentity:(_PCSIdentityData *)identity error:(id *)error;
- (void)clearOverrides;
- (void)dealloc;
- (void)identitiesChanged;
- (void)setOverride:(id)override value:(id)value;
- (void)updateAccount:(id)account;
@end

@implementation CKDPCSIdentityManager

- (void)dealloc
{
  debugIdentity = self->_debugIdentity;
  if (debugIdentity)
  {
    CFRelease(debugIdentity);
    self->_debugIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = CKDPCSIdentityManager;
  [(CKDPCSIdentityManager *)&v4 dealloc];
}

- (BOOL)currentServiceIsManatee
{
  selfCopy = self;
  v4 = objc_msgSend_serviceName(self, a2, v2);
  LOBYTE(selfCopy) = objc_msgSend_serviceIsManatee_(selfCopy, v5, v4);

  return selfCopy;
}

- (CKDPCSIdentityManager)initWithAccount:(id)account deviceContext:(id)context serviceName:(id)name forceEnableReadOnlyManatee:(BOOL)manatee clientSDKVersion:(unsigned int)version
{
  accountCopy = account;
  contextCopy = context;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = CKDPCSIdentityManager;
  v16 = [(CKDPCSIdentityManager *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v17->_deviceContext, context);
    objc_storeStrong(&v17->_serviceName, name);
    v17->_forceEnableReadOnlyManatee = manatee;
    v20 = objc_msgSend_dsid(accountCopy, v18, v19);
    cachedAccountDSID = v17->_cachedAccountDSID;
    v17->_cachedAccountDSID = v20;

    v17->_clientSDKVersion = version;
    v22 = objc_opt_new();
    PCSIdentityWrappersByServiceName = v17->_PCSIdentityWrappersByServiceName;
    v17->_PCSIdentityWrappersByServiceName = v22;

    v24 = objc_opt_new();
    pcsTestOverrides = v17->_pcsTestOverrides;
    v17->_pcsTestOverrides = v24;
  }

  return v17;
}

- (void)updateAccount:(id)account
{
  accountCopy = account;
  v6 = objc_msgSend_accountID(accountCopy, v4, v5);
  v9 = objc_msgSend_account(self, v7, v8);
  v12 = objc_msgSend_accountID(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v13, v12);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setAccount_(selfCopy, v16, accountCopy);
  if ((isEqualToString & 1) == 0)
  {
    objc_msgSend_identitiesChanged(selfCopy, v17, v18);
    v21 = objc_msgSend_dsid(accountCopy, v19, v20);
    objc_msgSend_setCachedAccountDSID_(selfCopy, v22, v21);
  }

  objc_sync_exit(selfCopy);
}

- (void)identitiesChanged
{
  v4 = objc_opt_new();
  objc_msgSend_setPCSIdentityWrappersByServiceName_(self, v3, v4);
}

- (id)_cacheIdentitySet:(_PCSIdentitySetData *)set forService:(id)service
{
  serviceCopy = service;
  if (set)
  {
    v7 = [CKDPCSIdentityWrapper alloc];
    set = objc_msgSend_initWithIdentitySet_withPrimaryServiceName_(v7, v8, set, serviceCopy);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = objc_msgSend_PCSIdentityWrappersByServiceName(selfCopy, v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, set, serviceCopy);

    objc_sync_exit(selfCopy);
  }

  return set;
}

- (_PCSIdentitySetData)_copyIdentityForService:(id)service useCache:(BOOL)cache validateCurrentKey:(BOOL)key error:(id *)error
{
  keyCopy = key;
  cacheCopy = cache;
  v184 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  if (!serviceCopy)
  {
    v170 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v170, v171, a2, self, @"CKDPCSIdentityManager.m", 161, @"No serviceName provided to _copyIdentityForService");
  }

  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_shouldEnforceIdentityFetchLimit(self, v10, v11))
  {
    if (!objc_msgSend_identityFetchLimit(self, v13, v14))
    {
      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 2005, @"Exceeded PCS identity fetching limit for tests");
        v76 = 0;
        v65 = 0;
        *error = v105 = 0;
LABEL_107:

        v157 = *MEMORY[0x277D85DE8];
        return v105;
      }

      v76 = 0;
      v65 = 0;
LABEL_100:
      v105 = 0;
      goto LABEL_107;
    }

    Limit = objc_msgSend_identityFetchLimit(self, v15, v16);
    objc_msgSend_setIdentityFetchLimit_(self, v18, Limit - 1);
  }

  v174 = a2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = objc_msgSend_account(selfCopy, v20, v21);
  v25 = objc_msgSend_dsid(v22, v23, v24);
  v28 = objc_msgSend_length(v25, v26, v27);

  if (!v28)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "We don't have a DSID so we can't copy our current PCS identity", buf, 2u);
    }

    if (error)
    {
      v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 1002, @"Can't fetch identity, no account dsid available");
LABEL_42:
      v75 = 0;
      v76 = 0;
      v65 = 0;
LABEL_43:
      *error = v35;
      goto LABEL_94;
    }

LABEL_44:
    v75 = 0;
    v76 = 0;
    v65 = 0;
    goto LABEL_94;
  }

  if (objc_msgSend_serviceIsManatee_(selfCopy, v29, serviceCopy))
  {
    v32 = objc_msgSend_forceEnableReadOnlyManatee(selfCopy, v30, v31) ^ 1;
  }

  else
  {
    v32 = 0;
  }

  v36 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v30, v31);
  if (objc_msgSend_fakeManateeOverride(v36, v37, v38))
  {
    v41 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v39, v40);
    v44 = objc_msgSend_fakeWalrusOverride(v41, v42, v43);
  }

  else
  {
    v44 = 0;
  }

  if (v32)
  {
    v47 = 5006;
  }

  else
  {
    v48 = keyCopy;
    v49 = objc_msgSend_deviceContext(selfCopy, v45, v46);
    v52 = objc_msgSend_accountDataSecurityObserver(v49, v50, v51);
    v55 = objc_msgSend_account(selfCopy, v53, v54);
    v57 = objc_msgSend_isWalrusEnabledForAccount_allowFetch_(v52, v56, v55, 1);

    if (!v57)
    {
      v65 = 0;
      keyCopy = v48;
      goto LABEL_46;
    }

    keyCopy = v48;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v179 = serviceCopy;
      _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "Walrus enabled for service %{public}@", buf, 0xCu);
    }

    objc_msgSend_clientSDKVersion(selfCopy, v61, v62);
    if (CKLinkCheck32f5805a68adfc1b65f94a0de69aa32177c7cd24())
    {
      v47 = 5014;
    }

    else
    {
      v47 = 2012;
    }
  }

  if (!((objc_msgSend_accountType(v22, v45, v46) != 2) | v44 & 1 | *MEMORY[0x277CBC810] & 1))
  {
    if (error)
    {
      v35 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v63, *MEMORY[0x277CBC120], v47, @"Manatee is not available for explicit-credential accounts");
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  v177 = 0;
  isManateeAvailableWithError = objc_msgSend_isManateeAvailableWithError_(selfCopy, v63, &v177);
  v65 = v177;
  if ((isManateeAvailableWithError & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v66 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v179 = serviceCopy;
      v180 = 2112;
      v181 = v65;
      _os_log_error_impl(&dword_22506F000, v66, OS_LOG_TYPE_ERROR, "Can't copy identity set for service %{public}@. Manatee not available for current account due to %@.", buf, 0x16u);
    }

    v69 = objc_msgSend_domain(v65, v67, v68);
    if (objc_msgSend_isEqualToString_(v69, v70, *MEMORY[0x277CFD418]))
    {
      v73 = objc_msgSend_code(v65, v71, v72) == -5311;

      if (v73)
      {
        if (error)
        {
          v35 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v74, *MEMORY[0x277CBC120], 1013, v65, @"CoreCDP failed to check manatee availability");
LABEL_73:
          v75 = 0;
          v76 = 0;
          goto LABEL_43;
        }

LABEL_74:
        v75 = 0;
        goto LABEL_93;
      }
    }

    else
    {
    }

    if (error)
    {
      v35 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v74, *MEMORY[0x277CBC120], v47, v65, @"Manatee is not available for the current account");
      goto LABEL_73;
    }

    goto LABEL_74;
  }

LABEL_46:
  if (*MEMORY[0x277CBC810] == 1)
  {
    v77 = objc_msgSend_refetchPCSIdentitySet(selfCopy, v58, v59) ^ 1;
    if (!cacheCopy)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v77 = 1;
    if (!cacheCopy)
    {
LABEL_57:
      v99 = objc_msgSend_accountType(v22, v58, v59);
      if (v99 == 2)
      {
        v102 = objc_msgSend_backingAccount(v22, v100, v101);
        IdentitySetForService_dsid_error = objc_msgSend_copyTestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError_(selfCopy, v106, serviceCopy, v102, error);
      }

      else if (v99 == 3)
      {
        v102 = objc_msgSend_backingAccount(v22, v100, v101);
        IdentitySetForService_dsid_error = objc_msgSend_copyTestAccountIdentitySetForService_forBackingMockAccount_withError_(CKDPCSIdentityManager, v103, serviceCopy, v102, error);
      }

      else
      {
        v102 = objc_msgSend_dsid(v22, v100, v101);
        IdentitySetForService_dsid_error = objc_msgSend__createIdentitySetForService_dsid_error_(CKDPCSIdentityManager, v107, serviceCopy, v102, error);
      }

      v108 = IdentitySetForService_dsid_error;

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v109 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        v159 = objc_msgSend_accountType(v22, v110, v111);
        *buf = 134218242;
        v179 = v159;
        v180 = 2114;
        v181 = serviceCopy;
        _os_log_debug_impl(&dword_22506F000, v109, OS_LOG_TYPE_DEBUG, "Caching a fresh %lld-type identity set for service %{public}@.", buf, 0x16u);
      }

      v76 = objc_msgSend__cacheIdentitySet_forService_(selfCopy, v112, v108, serviceCopy);
      if (v108)
      {
        CFRelease(v108);
      }

LABEL_82:
      if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(selfCopy, v97, @"ForceNoIdentitySetError"))
      {

        v76 = 0;
      }

      v75 = 1;
      if (objc_msgSend_forceEnableReadOnlyManatee(selfCopy, v97, v98) & 1) != 0 || !keyCopy || (v120 = objc_msgSend_identitySet(v76, v118, v119), (objc_msgSend__hasCurrentKeyForService_inIdentitySet_withError_(selfCopy, v121, serviceCopy, v120, error)))
      {
LABEL_94:

        objc_sync_exit(selfCopy);
        if (v75)
        {
          v129 = *MEMORY[0x277CBC878];
          v130 = *MEMORY[0x277CBC880];
          if (v76)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v129);
            }

            v131 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
            {
              v134 = v131;
              v176 = objc_msgSend_account(selfCopy, v135, v136);
              v139 = objc_msgSend_accountID(v176, v137, v138);
              v142 = objc_msgSend_deviceContext(selfCopy, v140, v141);
              v145 = objc_msgSend_testDeviceReference(v142, v143, v144);
              v148 = objc_msgSend_serverReferenceProtocol(v145, v146, v147);
              v151 = objc_msgSend_dataDirectory(v148, v149, v150);
              v154 = objc_msgSend_identityString(v76, v152, v153);
              *buf = 138412802;
              v179 = v139;
              v180 = 2112;
              v181 = v151;
              v182 = 2112;
              v183 = v154;
              _os_log_debug_impl(&dword_22506F000, v134, OS_LOG_TYPE_DEBUG, "Using service identity for account %@ %@:\n%@", buf, 0x20u);
            }
          }

          else
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v129);
            }

            v155 = *MEMORY[0x277CBC858];
            if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22506F000, v155, OS_LOG_TYPE_ERROR, "Couldn't get a service identity set from the PCS framework", buf, 2u);
            }
          }

          v156 = objc_msgSend_identitySet(v76, v132, v133);
          v105 = v156;
          if (v156)
          {
            CFRetain(v156);
          }

          goto LABEL_107;
        }

        goto LABEL_100;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v122 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        v160 = objc_msgSend_identitySet(v76, v123, v124);
        *buf = 138412290;
        v179 = v160;
        _os_log_error_impl(&dword_22506F000, v122, OS_LOG_TYPE_ERROR, "Identity set %@ does not have a current key set. Not using it and removing it from cache.", buf, 0xCu);
      }

      v127 = objc_msgSend_PCSIdentityWrappersByServiceName(selfCopy, v125, v126);
      objc_msgSend_setObject_forKeyedSubscript_(v127, v128, 0, serviceCopy);

LABEL_93:
      v76 = 0;
      goto LABEL_94;
    }
  }

  v78 = objc_msgSend_PCSIdentityWrappersByServiceName(selfCopy, v58, v59);
  v80 = objc_msgSend_objectForKeyedSubscript_(v78, v79, serviceCopy);
  v81 = v80 != 0;

  if ((v81 & v77) == 0)
  {
    goto LABEL_57;
  }

  v82 = objc_msgSend_cachedAccountDSID(selfCopy, v58, v59);
  v85 = objc_msgSend_dsid(v22, v83, v84);
  isEqualToString = objc_msgSend_isEqualToString_(v82, v86, v85);

  if (isEqualToString)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v90 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
    {
      v161 = objc_msgSend_accountType(v22, v91, v92);
      v162 = CKStringForAccountType(v161);
      v165 = objc_msgSend_dsid(v22, v163, v164);
      *buf = 138543874;
      v179 = serviceCopy;
      v180 = 2112;
      v181 = v162;
      v182 = 2112;
      v183 = v165;
      _os_log_debug_impl(&dword_22506F000, v90, OS_LOG_TYPE_DEBUG, "Returning cached identity for service %{public}@ and %@ account %@", buf, 0x20u);
    }

    v95 = objc_msgSend_PCSIdentityWrappersByServiceName(selfCopy, v93, v94);
    v76 = objc_msgSend_objectForKeyedSubscript_(v95, v96, serviceCopy);

    goto LABEL_82;
  }

  if (*MEMORY[0x277CBC810] != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v113 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_FAULT))
    {
      v166 = objc_msgSend_dsid(v22, v114, v115);
      v169 = objc_msgSend_cachedAccountDSID(selfCopy, v167, v168);
      *buf = 138412546;
      v179 = v166;
      v180 = 2112;
      v181 = v169;
      _os_log_fault_impl(&dword_22506F000, v113, OS_LOG_TYPE_FAULT, "Current dsid: %@. Cached identities dsid: %@. The dsid has changed underneath us and we didn't clear our identity cache. Clearing cache and failing identity request", buf, 0x16u);
    }

    objc_msgSend_identitiesChanged(selfCopy, v116, v117);
    v76 = 0;
    goto LABEL_82;
  }

  v172 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v88, v89);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v172, v173, v174, selfCopy, @"CKDPCSIdentityManager.m", 244, @"Identity cache missed an invalidation, dsid of backing account has changed");

  __break(1u);
  return result;
}

+ (_PCSIdentitySetData)_createIdentitySetForService:(id)service dsid:(id)dsid error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  dsidCopy = dsid;
  v23 = *MEMORY[0x277D430A8];
  v24[0] = dsidCopy;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v24, &v23, 1);
  v11 = PCSIdentitySetCreate();
  v12 = *MEMORY[0x277CBC878];
  v13 = *MEMORY[0x277CBC880];
  if (!v11)
  {
    if (v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v12);
    }

    v15 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = serviceCopy;
      v21 = 2112;
      v22 = 0;
      _os_log_error_impl(&dword_22506F000, v15, OS_LOG_TYPE_ERROR, "Couldn't get an identity set for service %{public}@ from the PCS framework: %@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_11;
      }
    }

    else if (!error)
    {
      goto LABEL_11;
    }

    *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v16, *MEMORY[0x277CBC120], 5000, 0, @"Couldn't create a PCS identity");
    goto LABEL_11;
  }

  if (v13 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v12);
  }

  v14 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = serviceCopy;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Got identity set for service %@ from the PCS framework.", buf, 0xCu);
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_PCSIdentitySetData)copyIdentitySetWithType:(unint64_t)type options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v8 = objc_msgSend_PCSServiceStringFromCKServiceType_(self, a2, type);
  v10 = objc_msgSend__copyIdentityForService_useCache_validateCurrentKey_error_(self, v9, v8, (optionsCopy & 1) == 0, (optionsCopy & 2) == 0, error);

  return v10;
}

+ (id)currentIdentityPublicKeyIDForAccount:(id)account serviceName:(id)name error:(id *)error
{
  nameCopy = name;
  v20 = 0;
  v10 = objc_msgSend_createFullKeychainIdentitySetForAccount_serviceName_error_(self, v9, account, nameCopy, &v20);
  v11 = v20;
  v12 = v11;
  v13 = 0;
  if (v10 && !v11)
  {
    cf = 0;
    v15 = PCSIdentitySetCopyCurrentPublicIdentityWithError();
    if (v15)
    {
      v16 = PCSPublicIdentityGetPublicID();
      v12 = 0;
      CFRelease(v15);
      v13 = v16;
    }

    else
    {
      v12 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5000, 0, @"Failed to get the current public identity", 0);
      v13 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (error && !v13)
  {
    v17 = v12;
    *error = v12;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v13;
}

+ (BOOL)needsUserKeySyncToPopulateCurrentIdentityForAccount:(id)account serviceName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v21 = 0;
  v8 = objc_msgSend_createFullKeychainIdentitySetForAccount_serviceName_error_(self, v7, account, nameCopy, &v21);
  v9 = v21;
  v10 = v9;
  if (v8 && !v9)
  {
    v11 = PCSIdentitySetCopyCurrentPublicIdentityWithError();
    if (v11)
    {
      v12 = v11;
      v13 = PCSPublicIdentityGetPublicID();
      v16 = objc_msgSend_length(v13, v14, v15) == 0;
      CFRelease(v12);
    }

    else
    {
      v13 = 0;
      v16 = 1;
    }

LABEL_13:
    CFRelease(v8);
    v18 = v16;
    goto LABEL_14;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = nameCopy;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_22506F000, v17, OS_LOG_TYPE_INFO, "Warn: Failed to check if the service %@ has a current identity: %@", buf, 0x16u);
  }

  v16 = 0;
  v18 = 0;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (_PCSIdentitySetData)createFullKeychainIdentitySetForAccount:(id)account serviceName:(id)name error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  nameCopy = name;
  v11 = objc_msgSend_dsid(accountCopy, v9, v10);
  v14 = objc_msgSend_length(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_accountType(accountCopy, v15, v16);
    if (v17 == 2)
    {
      v27 = *MEMORY[0x277D43050];
      v20 = objc_msgSend_backingAccount(accountCopy, v18, v19);
      v36 = 0;
      v21 = &v36;
      v23 = objc_msgSend_copyTestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError_(CKDPCSIdentityManager, v28, v27, v20, &v36);
    }

    else if (v17 == 3)
    {
      v20 = objc_msgSend_backingAccount(accountCopy, v18, v19);
      v37 = 0;
      v21 = &v37;
      v23 = objc_msgSend_copyTestAccountIdentitySetForService_forBackingMockAccount_withError_(CKDPCSIdentityManager, v22, nameCopy, v20, &v37);
    }

    else
    {
      v20 = objc_msgSend_dsid(accountCopy, v18, v19);
      v35 = 0;
      v21 = &v35;
      v23 = objc_msgSend__createIdentitySetForService_dsid_error_(CKDPCSIdentityManager, v29, 0, v20, &v35);
    }

    v25 = v23;
    v24 = *v21;

    v26 = v25 == 0;
    if (v25)
    {
      v30 = v24 == 0;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      v24 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v24 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1002, @"Can't fetch identity set, no account dsid available");
    v25 = 0;
    v26 = 1;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v31 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v39 = v24;
    _os_log_debug_impl(&dword_22506F000, v31, OS_LOG_TYPE_DEBUG, "Failed to get full identity set: %@.", buf, 0xCu);
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (error)
  {
LABEL_16:
    v32 = v24;
    *error = v24;
  }

LABEL_17:
  if (!v26)
  {
    CFRelease(v25);
  }

  v25 = 0;
LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
  return v25;
}

- (_PCSIdentitySetData)createFullKeychainIdentitySetWithError:(id *)error
{
  v5 = objc_msgSend_account(self, a2, error);
  if (objc_msgSend_accountType(v5, v6, v7) == 2)
  {
    objc_msgSend_PCSServiceStringFromCKServiceType_(self, v8, 3);
  }

  else
  {
    objc_msgSend_serviceName(self, v8, v9);
  }
  v10 = ;
  FullKeychainIdentitySetForAccount_serviceName_error = objc_msgSend_createFullKeychainIdentitySetForAccount_serviceName_error_(CKDPCSIdentityManager, v11, v5, v10, error);

  return FullKeychainIdentitySetForAccount_serviceName_error;
}

- (BOOL)liverpoolServiceOwnsPublicID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v28 = 0;
  v6 = objc_msgSend_copyIdentitySetWithType_options_error_(self, v5, 3, 0, &v28);
  v7 = v28;
  v8 = v7;
  v9 = 0;
  LOBYTE(v10) = 0;
  if (v6 && !v7)
  {
    v11 = PCSIdentitySetCopyIdentities();
    v14 = v11;
    if (v11)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = objc_msgSend_allValues(v11, v12, v13, 0);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v24, v29, 16);
      if (v10)
      {
        v18 = 0;
        v19 = *v25;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v15);
            }

            if (*(*(&v24 + 1) + 8 * i))
            {
              v9 = PCSIdentityGetPublicKey();

              if (objc_msgSend_isEqualToString_(dCopy, v21, v9))
              {
                LOBYTE(v10) = 1;
                goto LABEL_18;
              }

              v18 = v9;
            }
          }

          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v24, v29, 16);
          if (v10)
          {
            continue;
          }

          break;
        }

        v9 = v18;
      }

      else
      {
        v9 = 0;
      }

LABEL_18:
    }

    else
    {
      LOBYTE(v10) = 0;
      v9 = 0;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (_PCSPublicIdentityData)copyDiversifiedIdentityForService:(unint64_t)service userIDEntropy:(id)entropy withError:(id *)error
{
  v58[1] = *MEMORY[0x277D85DE8];
  entropyCopy = entropy;
  cf = 0;
  v57 = *MEMORY[0x277D42FA8];
  v58[0] = MEMORY[0x277CBEC28];
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v58, &v57, 1);
  if (!objc_msgSend_length(entropyCopy, v11, v12))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Can't create a diversified identity with no server entropy", buf, 2u);
    }

    v20 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5000, 0, @"Can't create a diversified identity with no server entropy");
    goto LABEL_20;
  }

  v51 = 0;
  v14 = objc_msgSend_copyIdentitySetWithType_options_error_(self, v13, service, 0, &v51);
  v15 = v51;
  v17 = v15;
  if (!v14 || v15)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      v25 = sub_2252927B0(service);
      *buf = 138543618;
      v54 = v25;
      v55 = 2112;
      v56 = v17;
      _os_log_impl(&dword_22506F000, v24, OS_LOG_TYPE_INFO, "Warn: Couldn't get a %{public}@ identity set: %@", buf, 0x16u);
    }

    v26 = MEMORY[0x277CBC560];
    v27 = *MEMORY[0x277CBC120];
    v28 = sub_2252927B0(service);
    v20 = objc_msgSend_errorWithDomain_code_error_format_(v26, v29, v27, 5000, v17, @"Couldn't get a %@ identity set", v28);

    if (!v14)
    {
      goto LABEL_38;
    }

    CFRelease(v14);
LABEL_20:
    v14 = 0;
    goto LABEL_38;
  }

  objc_msgSend_PCSServiceStringFromCKServiceType_(self, v16, service);
  v18 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (v18 && !cf)
  {
    DiversifiedIdentityOptions = PCSIdentityCreateDiversifiedIdentityOptions();
    if (!DiversifiedIdentityOptions || cf)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v50 = v10;
      v39 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        v40 = v39;
        v41 = sub_2252927B0(service);
        *buf = 138543618;
        v54 = v41;
        v55 = 2112;
        v56 = cf;
        _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "Warn: Couldn't create a diversified %{public}@ identity: %@", buf, 0x16u);
      }

      v42 = MEMORY[0x277CBC560];
      v43 = *MEMORY[0x277CBC120];
      v44 = cf;
      v45 = sub_2252927B0(service);
      v20 = objc_msgSend_errorWithDomain_code_error_format_(v42, v46, v43, 5000, v44, @"Couldn't create a diversified %@ identity", v45);

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = v50;
    }

    else
    {
      v20 = 0;
    }

    CFRelease(v14);
LABEL_37:
    CFRelease(v18);
    v14 = DiversifiedIdentityOptions;
    goto LABEL_38;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v30 = v10;
  v31 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    v32 = v31;
    v33 = sub_2252927B0(service);
    *buf = 138543618;
    v54 = v33;
    v55 = 2112;
    v56 = cf;
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, "Warn: Couldn't get a %{public}@ identity: %@", buf, 0x16u);
  }

  v34 = MEMORY[0x277CBC560];
  v35 = *MEMORY[0x277CBC120];
  v36 = cf;
  v37 = sub_2252927B0(service);
  v20 = objc_msgSend_errorWithDomain_code_error_format_(v34, v38, v35, 5000, v36, @"Couldn't get a %@ identity", v37);

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  CFRelease(v14);
  DiversifiedIdentityOptions = 0;
  v14 = 0;
  v10 = v30;
  if (v18)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (error)
  {
    v47 = v20;
    *error = v20;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)copyDiversifiedPublicKeyForService:(unint64_t)service userIDEntropy:(id)entropy withError:(id *)error
{
  v18 = 0;
  v7 = objc_msgSend_copyDiversifiedIdentityForService_userIDEntropy_withError_(self, a2, service, entropy, &v18);
  v8 = v18;
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = PCSPublicIdentityCopyPublicKey();
LABEL_7:
    CFRelease(v7);
    v15 = v10;
    goto LABEL_8;
  }

  if (!v8)
  {
    v11 = MEMORY[0x277CBC560];
    v12 = *MEMORY[0x277CBC120];
    v13 = sub_2252927B0(service);
    v9 = objc_msgSend_errorWithDomain_code_format_(v11, v14, v12, 5000, @"Couldn't get a diversified identity for service %@", v13);
  }

  v10 = 0;
  v15 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (error)
  {
    v16 = v9;
    *error = v9;
  }

  return v15;
}

+ (BOOL)credentialsAreValidForAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = *MEMORY[0x277D43050];
  v11 = 0;
  TestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError = objc_msgSend__getTestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError_(CKDPCSIdentityManager, v5, v4, accountCopy, &v11);
  v7 = v11;
  if (!TestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v13 = v4;
      v14 = 2112;
      v15 = accountCopy;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Couldn't get a %{public}@ identity for %@: %@", buf, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return TestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError != 0;
}

- (id)copyPublicKeyForService:(unint64_t)service withError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v7 = objc_msgSend_copyIdentitySetWithType_options_error_(self, a2, service, 0, &v25);
  v8 = v25;
  v10 = v8;
  if (!v7 || (v11 = 0, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = sub_2252927B0(service);
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: Couldn't get a %{public}@ identity set: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x277CBC560];
    v16 = *MEMORY[0x277CBC120];
    v17 = sub_2252927B0(service);
    v11 = objc_msgSend_errorWithDomain_code_format_(v15, v18, v16, 5000, @"Couldn't get a %@ identity set to add to the share PCS", v17);
  }

  if (!v7 || v11)
  {
    v19 = 0;
    v20 = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v24 = 0;
    v19 = objc_msgSend__copyPublicKeyDataForIdentitySet_withService_withError_(self, v9, v7, service, &v24);
    v11 = v24;
  }

  CFRelease(v7);
  v20 = v19;
LABEL_13:
  if (error)
  {
    v21 = v11;
    *error = v11;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)copyAllPublicKeysForService:(unint64_t)service withError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v7 = objc_msgSend_copyIdentitySetWithType_options_error_(self, a2, service, 0, &v24);
  v8 = v24;
  v10 = v8;
  if (!v7 || (v11 = 0, v8))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = sub_2252927B0(service);
      *buf = 138543618;
      v26 = v14;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Warn: Couldn't get a %{public}@ identity set: %@", buf, 0x16u);
    }

    v15 = MEMORY[0x277CBC560];
    v16 = *MEMORY[0x277CBC120];
    v17 = sub_2252927B0(service);
    v11 = objc_msgSend_errorWithDomain_code_format_(v15, v18, v16, 5000, @"Couldn't get a %@ identity set to add to the share PCS", v17);
  }

  if (!v7 || v11)
  {
    v19 = 0;
    v20 = 0;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = objc_msgSend__copyPublicKeyDataForAllIdentitiesInSet_withService_(self, v9, v7, service);
  }

  CFRelease(v7);
  v20 = v19;
LABEL_13:
  if (error)
  {
    v21 = v11;
    *error = v11;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_copyPublicKeyDataForAllIdentitiesInSet:(_PCSIdentitySetData *)set withService:(unint64_t)service
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  v8 = objc_msgSend_PCSServiceStringFromCKServiceType_(self, v7, service);
  v9 = v6;
  v15 = v9;
  PCSIdentitySetEnumeratePublicKeys();
  if (!objc_msgSend_count(v9, v10, v11))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Did not get any public keys for service %{public}@.", buf, 0xCu);
    }

    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_copyPublicKeyDataForIdentitySet:(_PCSIdentitySetData *)set withService:(unint64_t)service withError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  objc_msgSend_PCSServiceStringFromCKServiceType_(self, a2, service);
  v7 = PCSIdentitySetCopyCurrentPublicIdentityWithError();
  if (v7)
  {
    v8 = PCSPublicIdentityCopyPublicKey();
    v9 = 0;
    CFRelease(v7);
    if (v8)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v10 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v16 = v8;
        _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Current identity public key data is %{public}@", buf, 0xCu);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 5002, 0, @"Couldn't copy a public identity for our current user");
    v8 = 0;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Warn: Error generating fingerprint for current self identity: %@", buf, 0xCu);
  }

  if (error)
  {
    v12 = v9;
    *error = v9;
  }

  v8 = 0;
LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (_PCSIdentitySetData)_copyStingrayIdentitiesForOptions:(id)options withError:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = PCSIdentityRecoverFDE();
  v6 = *MEMORY[0x277CBC878];
  v7 = *MEMORY[0x277CBC880];
  if (!v5)
  {
    if (v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v6);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = 0;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Error fetching Stingray PCS identity set: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
      goto LABEL_12;
    }

    *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5001, 0, @"Couldn't fetch PCS identities from Stingray");
    goto LABEL_12;
  }

  if (v7 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v6);
  }

  v8 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "PCS identity set fetched:", buf, 2u);
  }

  v14 = PCSIdentitySetCopyService();
  v9 = v14;
  PCSIdentitySetEnumeratePublicKeys();

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (_PCSIdentitySetData)_copyStingrayIdentitiesForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error
{
  v64 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  v8 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  v46 = *MEMORY[0x277CCA7E8];
  v44 = v50;
  v9 = 3;
  *&v10 = 138543618;
  v43 = v10;
  while (1)
  {

    v12 = objc_msgSend__generatePCSIdentityOptionsForService_forBackingExplicitCredentialsAccount_withError_(self, v11, serviceCopy, accountCopy, error);
    v15 = objc_msgSend_mutableCopy(v12, v13, v14);

    if (!v15)
    {
      break;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v40 = objc_msgSend_username(accountCopy, v17, v18);
      *buf = v43;
      v61 = serviceCopy;
      v62 = 2112;
      v63 = v40;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Fetching PCS identity set %{public}@ for account %@", buf, 0x16u);
    }

    v55 = 0;
    v20 = objc_msgSend__copyStingrayIdentitiesForOptions_withError_(self, v19, v15, &v55);
    v21 = v55;
    v8 = v21;
    *(v57 + 24) = 0;
    if (v20 && !v21)
    {
      goto LABEL_16;
    }

    v24 = objc_msgSend_userInfo(v21, v22, v23, v43, v44);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, v46);

    v29 = objc_msgSend_domain(v26, v27, v28);
    if (!objc_msgSend_isEqualToString_(v29, v30, @"CloudServicesErrorDomain"))
    {
      goto LABEL_12;
    }

    v33 = objc_msgSend_code(v26, v31, v32) == 305;

    if (v33)
    {
      v36 = objc_msgSend_password(accountCopy, v34, v35);
      v45 = dispatch_semaphore_create(0);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v50[0] = sub_22528B6B0;
      v50[1] = &unk_27854BBB0;
      v37 = accountCopy;
      v51 = v37;
      v29 = v36;
      v52 = v29;
      v54 = &v56;
      v38 = v45;
      v53 = v38;
      objc_msgSend_renewAuthTokenWithOptions_completionHandler_(v37, v39, MEMORY[0x277CBEC10], v49);
      dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);

LABEL_12:
    }

    if ((v57[3] & 1) != 0 && v20)
    {
      CFRelease(v20);
      v20 = 0;
    }

LABEL_16:

    if (!--v9 || *(v57 + 24) != 1)
    {

      goto LABEL_20;
    }
  }

  v20 = 0;
LABEL_20:
  _Block_object_dispose(&v56, 8);

  v41 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)sharedFakeIdentitySetsByServiceByUsername
{
  if (qword_280D58380 != -1)
  {
    dispatch_once(&qword_280D58380, &unk_28385D9C0);
  }

  v3 = qword_280D58378;

  return v3;
}

+ (_PCSIdentitySetData)_getTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error
{
  serviceCopy = service;
  accountCopy = account;
  v12 = objc_msgSend_sharedFakeIdentitySetsByServiceByUsername(self, v10, v11);
  objc_sync_enter(v12);
  v15 = objc_msgSend_username(accountCopy, v13, v14);
  v18 = objc_msgSend_length(v15, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_username(accountCopy, v19, v20);
    v23 = objc_msgSend_objectForKeyedSubscript_(v12, v22, v21);

    if (!v23)
    {
      v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v29 = objc_msgSend_username(accountCopy, v27, v28);
      objc_msgSend_setObject_forKeyedSubscript_(v12, v30, v26, v29);
    }

    v31 = objc_msgSend_username(accountCopy, v24, v25);
    v33 = objc_msgSend_objectForKeyedSubscript_(v12, v32, v31);

    v18 = objc_msgSend_objectForKeyedSubscript_(v33, v34, serviceCopy);

    if (!v18)
    {
      v18 = objc_msgSend__copyStingrayIdentitiesForService_forBackingExplicitCredentialsAccount_withError_(self, v35, serviceCopy, accountCopy, error);
      if (v18)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v33, v36, v18, serviceCopy);
        CFRelease(v18);
      }
    }
  }

  objc_sync_exit(v12);

  return v18;
}

- (_PCSIdentitySetData)copyTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error
{
  serviceCopy = service;
  accountCopy = account;
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_refetchPCSIdentitySet(self, v9, v10))
  {
    v12 = objc_opt_class();
    v15 = objc_msgSend_sharedFakeIdentitySetsByServiceByUsername(v12, v13, v14);
    objc_sync_enter(v15);
    v18 = objc_msgSend_username(accountCopy, v16, v17);
    v21 = objc_msgSend_length(v18, v19, v20);

    if (v21)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = objc_msgSend_username(accountCopy, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(v15, v26, v22, v25);
    }

    objc_sync_exit(v15);
  }

  v27 = objc_msgSend_copyTestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError_(CKDPCSIdentityManager, v9, serviceCopy, accountCopy, error);

  return v27;
}

+ (_PCSIdentitySetData)copyTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v40 = 0;
  cf = 0;
  TestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError = objc_msgSend__getTestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError_(CKDPCSIdentityManager, v8, serviceCopy, account, &v40);
  v10 = v40;
  if (TestAccountIdentitySetForService_forBackingExplicitCredentialsAccount_withError)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = v10;
    if (v10)
    {
      if (error)
      {
LABEL_7:
        v14 = v13;
        v15 = 0;
        Mutable = 0;
        v17 = 0;
        *error = v13;
        goto LABEL_41;
      }
    }

    else
    {
      v13 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5000, 0, @"Couldn't fetch identity set for service %@ to add to a new identity set.", serviceCopy);
      if (error)
      {
        goto LABEL_7;
      }
    }

    v15 = 0;
    Mutable = 0;
    v17 = 0;
LABEL_41:
    v21 = cf;
    if (!cf)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v18 = PCSIdentitySetCopyIdentities();
  if (!v18)
  {
    if (error)
    {
      v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 5000, @"Empty dictionary returned while copying identities. Can't add identities for %@ to mutable identity set.", serviceCopy);
      v15 = 0;
      Mutable = 0;
      v17 = 0;
      goto LABEL_32;
    }

    v15 = 0;
    Mutable = 0;
    v17 = 0;
    goto LABEL_40;
  }

  v15 = v18;
  v17 = PCSIdentitySetCopyCurrentIdentityWithError();
  v21 = cf;
  if (v17)
  {
    v22 = cf == 0;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    Mutable = PCSIdentitySetCreateMutable();
    v21 = cf;
    if (!Mutable || cf)
    {
      if (error)
      {
        v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 5000, @"Couldn't create a mutable identity set for service: %@", serviceCopy);
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = objc_msgSend_allValues(v15, v24, v25);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v36, v42, 16);
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v36 + 1) + 8 * i);
          if ((PCSIdentitySetAddIdentity() & 1) == 0)
          {
            if (error)
            {
              *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 5000, @"Couldn't add app-specific service identity (%@) to new identity set: %@", v32, Mutable);
            }

            CFRelease(Mutable);

            Mutable = 0;
            goto LABEL_40;
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v33, &v36, v42, 16);
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    PCSIdentitySetSetCurrentIdentity();
LABEL_40:
    v13 = 0;
    goto LABEL_41;
  }

  if (error)
  {
    v23 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v20, *MEMORY[0x277CBC120], 5000, serviceCopy);
    Mutable = 0;
LABEL_32:
    v13 = 0;
    *error = v23;
    goto LABEL_41;
  }

  Mutable = 0;
LABEL_35:
  v13 = 0;
  if (v21)
  {
LABEL_42:
    CFRelease(v21);
    cf = 0;
  }

LABEL_43:
  if (v17)
  {
    CFRelease(v17);
  }

  v34 = *MEMORY[0x277D85DE8];
  return Mutable;
}

+ (id)_generatePCSIdentityOptionsForService:(id)service forBackingExplicitCredentialsAccount:(id)account withError:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = 0;
    v10 = objc_msgSend_iCloudAuthTokenWithError_(accountCopy, v9, &v51);
    v11 = v51;
    v12 = v11;
    if (v10 && !v11)
    {
      v13 = objc_opt_new();
      v16 = objc_msgSend_username(accountCopy, v14, v15);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v17, v16, *MEMORY[0x277D430E8]);

      v20 = objc_msgSend_password(accountCopy, v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v21, v20, *MEMORY[0x277D430C8]);

      v24 = objc_msgSend_dsid(accountCopy, v22, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v25, v24, *MEMORY[0x277D430A8]);

      objc_msgSend_setObject_forKeyedSubscript_(v13, v26, serviceCopy, *MEMORY[0x277D430D8]);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v27, MEMORY[0x277CBEC28], *MEMORY[0x277D430B8]);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v28, MEMORY[0x277CBEC38], *MEMORY[0x277D430E0]);
      objc_msgSend_setObject_forKeyedSubscript_(v13, v29, v10, *MEMORY[0x277D430A0]);
      v31 = objc_msgSend_accountPropertiesForDataclass_(accountCopy, v30, @"com.apple.Dataclass.KeychainSync");
      v33 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"escrowProxyUrl");
      objc_msgSend_setObject_forKeyedSubscript_(v13, v34, v33, *MEMORY[0x277D430B0]);

      v36 = objc_msgSend_accountPropertiesForDataclass_(accountCopy, v35, @"com.apple.Dataclass.Ubiquity");
      v38 = objc_msgSend_objectForKeyedSubscript_(v36, v37, @"apsEnv");
      objc_msgSend_setObject_forKeyedSubscript_(v13, v39, v38, *MEMORY[0x277D430F0]);

      v42 = objc_msgSend_copy(v13, v40, v41);
LABEL_15:

      goto LABEL_16;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      v45 = v43;
      v48 = objc_msgSend_username(accountCopy, v46, v47);
      *buf = 138412546;
      v53 = v48;
      v54 = 2112;
      v55 = v12;
      _os_log_error_impl(&dword_22506F000, v45, OS_LOG_TYPE_ERROR, "Error fetching iCloud auth token for account %@: %@", buf, 0x16u);

      if (error)
      {
        goto LABEL_11;
      }
    }

    else if (error)
    {
LABEL_11:
      objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v44, *MEMORY[0x277CBC120], 2011, v12, @"Error fetching iCloud auth token");
      *error = v42 = 0;
      goto LABEL_15;
    }

    v42 = 0;
    goto LABEL_15;
  }

  if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 1017, @"Account %@ is not a CKDBackingExplicitCredentialsAccount", accountCopy);
    *error = v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_16:

  v49 = *MEMORY[0x277D85DE8];

  return v42;
}

+ (BOOL)_rollTestAccountIdentitySetForService:(id)service forBackingExplicitCredentialsAccount:(id)account oldIdentityID:(id *)d newIdentityID:(id *)iD withError:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  v15 = objc_msgSend__generatePCSIdentityOptionsForService_forBackingExplicitCredentialsAccount_withError_(self, v14, serviceCopy, accountCopy, error);
  v18 = objc_msgSend_mutableCopy(v15, v16, v17);

  if (v18)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v18, v19, MEMORY[0x277CBEC38], *MEMORY[0x277D430D0]);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = MEMORY[0x277CBC858];
    v21 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v42 = v21;
      v45 = objc_msgSend_username(accountCopy, v43, v44);
      *buf = 138412290;
      v49 = v45;
      _os_log_debug_impl(&dword_22506F000, v42, OS_LOG_TYPE_DEBUG, "Fetching PCS identity set for account %@", buf, 0xCu);
    }

    v23 = PCSIdentitySetup();
    if (!v23)
    {
      if (error)
      {
        objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v22, *MEMORY[0x277CBC120], 5001, 0, @"Couldn't setup PCS identities from stingray");
        v27 = 0;
        *error = v30 = 0;
      }

      else
      {
        v27 = 0;
        v30 = 0;
      }

      v34 = 1;
LABEL_22:
      v36 = v27;
      v35 = v30;
      if (!v23)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v25 = PCSIdentitySetCopyCurrentPublicIdentityWithError();
    if (v25)
    {
      v26 = PCSPublicIdentityGetPublicID();
      v27 = v26;
      if (d)
      {
        v28 = v26;
        *d = v27;
      }

      if (PCSIdentityRollIdentity())
      {
        v47 = PCSIdentitySetCopyCurrentPublicIdentityWithError();
        v30 = PCSPublicIdentityGetPublicID();
        isEqualToString = objc_msgSend_isEqualToString_(v27, v31, v30);
        if (isEqualToString)
        {
          if (!error)
          {
            goto LABEL_40;
          }

          v46 = isEqualToString;
          objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v33, *MEMORY[0x277CBC120], 5000, 0, @"Rolling PCS identities for service %@ was unsuccessful", serviceCopy);
        }

        else
        {
          v46 = 0;
          if (iD)
          {
            v39 = v30;
            *iD = v30;
          }

          CFRelease(v23);
          v23 = PCSIdentitySetup();
          if (v23)
          {
            goto LABEL_39;
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v40 = *v20;
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = 0;
            _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Error setting up PCS identity set: %@", buf, 0xCu);
            if (!error)
            {
              goto LABEL_39;
            }
          }

          else if (!error)
          {
LABEL_39:
            LOBYTE(isEqualToString) = v46;
LABEL_40:
            v34 = isEqualToString ^ 1;
            CFRelease(v25);
            if (v47)
            {
              CFRelease(v47);
            }

            goto LABEL_22;
          }

          objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v41, *MEMORY[0x277CBC120], 5001, 0, @"Couldn't setup PCS identities from stingray");
        }
        *error = ;
        goto LABEL_39;
      }

      if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v29, *MEMORY[0x277CBC120], 5001, 0, @"Couldn't roll PCS identities for service %@", serviceCopy);
      }

      v36 = v27;
      CFRelease(v25);
      v35 = 0;
      v34 = 0;
    }

    else
    {
      if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v24, *MEMORY[0x277CBC120], 5000, 0, @"Couldn't get a public identity");
      }

      v35 = 0;
      v34 = 0;
      v36 = 0;
    }

LABEL_27:
    CFRelease(v23);
    v30 = v35;
LABEL_28:

    goto LABEL_29;
  }

  v34 = 0;
LABEL_29:

  v37 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (id)_copyPCSIdentitiesForBackingMockAccount:(id)account withError:(id *)error
{
  v51[3] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = accountCopy;
    v8 = objc_msgSend_testAccount(accountCopy, v6, v7);
    v11 = objc_msgSend_pcsIdentitiesData(v8, v9, v10);

    v12 = MEMORY[0x277CCAAC8];
    v13 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v51[2] = objc_opt_class();
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v51, 3);
    v17 = objc_msgSend_setWithArray_(v13, v16, v15);
    v41 = v11;
    v19 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v12, v18, v17, v11, 0);

    v20 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = v19;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v44, v50, 16);
    if (v23)
    {
      v25 = v23;
      v26 = *v45;
LABEL_4:
      v27 = 0;
      while (1)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v44 + 1) + 8 * v27);
        v29 = objc_msgSend_objectForKeyedSubscript_(v21, v24, v28);
        v30 = PCSIdentitySetCreateFromExternalForm();
        v31 = *MEMORY[0x277CBC880];
        if (!v30)
        {
          break;
        }

        if (v31 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v32 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "PCS identity set fetched:", buf, 2u);
        }

        v43 = PCSIdentitySetCopyService();
        v33 = v43;
        PCSIdentitySetEnumeratePublicKeys();

        objc_msgSend_setObject_forKeyedSubscript_(v20, v34, v30, v28);
        CFRelease(v30);

        if (v25 == ++v27)
        {
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v44, v50, 16);
          if (v25)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      if (v31 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v36 = v41;
      accountCopy = v42;
      v37 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = 0;
        _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Error unarchiving a mock PCS service identity: %@", buf, 0xCu);
        if (!error)
        {
          goto LABEL_22;
        }
      }

      else if (!error)
      {
LABEL_22:

        v35 = 0;
        goto LABEL_23;
      }

      *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v38, *MEMORY[0x277CBC120], 5005, 0, @"Error unarchiving a mock PCS service identity");
      goto LABEL_22;
    }

LABEL_14:

    v35 = v20;
    v36 = v41;
    accountCopy = v42;
LABEL_23:
  }

  else if (error)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1017, @"Account %@ is not a CKDBackingMockAccount", accountCopy);
    *error = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v35;
}

+ (BOOL)_setIdentitySet:(_PCSIdentitySetData *)set forServiceName:(id)name backingMockAccount:(id)account withError:(id *)error
{
  nameCopy = name;
  accountCopy = account;
  v12 = objc_msgSend__copyPCSIdentitiesForBackingMockAccount_withError_(CKDPCSIdentityManager, v11, accountCopy, error);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v13, set, nameCopy);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_225074140;
  v28 = sub_22507362C;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22528CDAC;
  v23[3] = &unk_27854BBD8;
  v23[4] = &v24;
  v16 = objc_msgSend_CKMapValues_(v12, v14, v23);
  if (error)
  {
    *error = v25[5];
  }

  v17 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v15, v16, 1, error);
  v20 = objc_msgSend_testAccount(accountCopy, v18, v19);
  objc_msgSend_daemonSetPCSIdentitiesData_(v20, v21, v17);

  _Block_object_dispose(&v24, 8);
  return v17 != 0;
}

+ (id)sharedMockIdentitySetsByServiceByIdentifier
{
  if (qword_280D58390 != -1)
  {
    dispatch_once(&qword_280D58390, &unk_28385D9E0);
  }

  v3 = qword_280D58388;

  return v3;
}

+ (void)clearSharedMockIdentitySetsCache
{
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CKDPCSIdentityManager.m", 987, @"Only for testing");
  }

  v4 = objc_opt_class();
  v12 = objc_msgSend_sharedMockIdentitySetsByServiceByIdentifier(v4, v5, v6);
  objc_msgSend_removeAllObjects(v12, v7, v8);
}

+ (_PCSIdentitySetData)_getTestAccountIdentitySetForService:(id)service forBackingMockAccount:(id)account shouldFaultInIdentities:(BOOL)identities withError:(id *)error
{
  identitiesCopy = identities;
  v61 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  v13 = objc_msgSend_sharedMockIdentitySetsByServiceByIdentifier(CKDPCSIdentityManager, v11, v12);
  objc_sync_enter(v13);
  v16 = objc_msgSend_identifier(accountCopy, v14, v15);
  v19 = objc_msgSend_length(v16, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_identifier(accountCopy, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v13, v23, v22);

    if (!v24)
    {
      v29 = objc_msgSend__copyPCSIdentitiesForBackingMockAccount_withError_(CKDPCSIdentityManager, v25, accountCopy, error);
      if (v29)
      {
        v30 = objc_msgSend_identifier(accountCopy, v27, v28);
        objc_msgSend_setObject_forKeyedSubscript_(v13, v31, v29, v30);
      }
    }

    v32 = objc_msgSend_identifier(accountCopy, v25, v26);
    v34 = objc_msgSend_objectForKeyedSubscript_(v13, v33, v32);
    v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, serviceCopy);

    if (!v36)
    {
      Mutable = 0;
      if (identitiesCopy)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v40 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v58 = serviceCopy;
          v59 = 2112;
          v60 = accountCopy;
          _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "No pre-existing identity for service %@ on account %@. That's unexpected. Filling one out", buf, 0x16u);
        }

        Mutable = PCSIdentitySetCreateMutable();
        Master = PCSIdentityCreateMaster();
        PCSIdentitySetAddIdentityWithError();
        Service = PCSIdentityCreateService();
        PCSIdentitySetAddIdentityWithError();
        if (Service)
        {
          CFRelease(Service);
        }

        if (Master)
        {
          CFRelease(Master);
        }

        v52 = objc_msgSend_identifier(accountCopy, v43, v44);
        v54 = objc_msgSend_objectForKeyedSubscript_(v13, v53, v52);
        objc_msgSend_setObject_forKeyedSubscript_(v54, v55, Mutable, serviceCopy);

        objc_msgSend__setIdentitySet_forServiceName_backingMockAccount_withError_(CKDPCSIdentityManager, v56, Mutable, serviceCopy, accountCopy, error);
      }

      else if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 5000, 0, @"No pre-existing identity for service %@ on account %@", serviceCopy, accountCopy);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v45 = objc_msgSend_identifier(accountCopy, v37, v38);
    v47 = objc_msgSend_objectForKeyedSubscript_(v13, v46, v45);
    v49 = objc_msgSend_objectForKeyedSubscript_(v47, v48, serviceCopy);
  }

  else
  {
    v49 = 0;
  }

  objc_sync_exit(v13);

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

+ (_PCSIdentitySetData)copyTestAccountIdentitySetForService:(id)service forBackingMockAccount:(id)account withError:(id *)error
{
  buf[3] = *MEMORY[0x277D85DE8];
  v17 = 0;
  TestAccountIdentitySetForService_forBackingMockAccount_withError = objc_msgSend__getTestAccountIdentitySetForService_forBackingMockAccount_withError_(CKDPCSIdentityManager, a2, service, account, &v17);
  v7 = v17;
  if (TestAccountIdentitySetForService_forBackingMockAccount_withError)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    buf[0] = 0;
    v10 = PCSIdentitySetCopySet();
    v9 = buf[0];
    v11 = v10 == 0;
    if (v10)
    {
      v12 = buf[0] == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v9 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = v7;
    v10 = 0;
    v11 = 1;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *MEMORY[0x277CBC858];
  if (!os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_18:
    CFRelease(v10);
    if (error)
    {
      goto LABEL_15;
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  LODWORD(buf[0]) = 138412290;
  *(buf + 4) = v9;
  _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "Error copying per-silo identity set: %@", buf, 0xCu);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (!error)
  {
    goto LABEL_19;
  }

LABEL_15:
  v14 = v9;
  v10 = 0;
  *error = v9;
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isManateeAvailableWithError:(id *)error
{
  errorCopy = error;
  v5 = objc_msgSend_deviceContext(self, a2, error);
  v8 = objc_msgSend_accountDataSecurityObserver(v5, v6, v7);
  v11 = objc_msgSend_account(self, v9, v10);
  LOBYTE(errorCopy) = objc_msgSend_isManateeAvailableForAccount_isSecondaryAccount_allowFetch_error_(v8, v12, v11, 0, 1, errorCopy);

  return errorCopy;
}

- (BOOL)serviceIsManatee:(id)manatee
{
  manateeCopy = manatee;
  if (*MEMORY[0x277CBC810] == 1 && self->_serviceIsManateeForUnitTests)
  {
    IsManatee = 1;
  }

  else
  {
    IsManatee = PCSServiceItemTypeIsManatee();
  }

  return IsManatee;
}

- (_PCSIdentityData)debugSharingIdentity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_debugIdentity)
  {
    Named = PCSIdentitySetCreateNamed();
    v4 = *MEMORY[0x277D43058];
    selfCopy->_debugIdentity = PCSIdentitySetCopyCurrentIdentityWithError();
    CFRelease(Named);
  }

  objc_sync_exit(selfCopy);

  return selfCopy->_debugIdentity;
}

- (_PCSPublicIdentityData)createPublicSharingIdentityFromPublicKey:(id)key error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    v6 = PCSPublicIdentityCreateFromKeyData();
    v7 = *MEMORY[0x277CBC878];
    v8 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v12 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v16 = v6;
        v17 = 2114;
        v18 = keyCopy;
        _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Created sharing identity %@ from public key %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v9 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v16 = keyCopy;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Couldn't create a sharing identity from public key %{public}@: %@", buf, 0x16u);
      }

      if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, 0, @"Couldn't create a sharing identity from public key %@", keyCopy);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Refusing to try to create a sharing identity from a nil public key", buf, 2u);
    }

    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (_PCSIdentityData)createRandomSharingIdentityWithError:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  RandomCompactRaw = PCSIdentityCreateRandomCompactRaw();
  v5 = *MEMORY[0x277CBC878];
  v6 = *MEMORY[0x277CBC880];
  if (RandomCompactRaw)
  {
    if (v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v9 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = RandomCompactRaw;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Created sharing identity %@", buf, 0xCu);
    }
  }

  else
  {
    if (v6 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v5);
    }

    v7 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = 0;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "Couldn't create a new sharing identity: %@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (error)
    {
LABEL_6:
      *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 5005, 0, @"Couldn't create a sharing identity");
    }
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return RandomCompactRaw;
}

- (id)dataFromSharingIdentity:(_PCSIdentityData *)identity error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  if (identity)
  {
    ExportedRawCompact = PCSIdentityCreateExportedRawCompact();
    v7 = *MEMORY[0x277CBC878];
    v8 = *MEMORY[0x277CBC880];
    if (ExportedRawCompact)
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v12 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        identityCopy2 = identity;
        v17 = 2112;
        v18 = ExportedRawCompact;
        _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Created data from sharing identity %@: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v9 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        identityCopy2 = identity;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Couldn't create data from sharing identity %@: %@", buf, 0x16u);
      }

      if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, 0, @"Couldn't create data from web sharing identity %@", identity);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Refusing to try to create data from a NULL sharing identity", buf, 2u);
    }

    ExportedRawCompact = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return ExportedRawCompact;
}

- (_PCSIdentityData)createSharingIdentityFromData:(id)data error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v6 = PCSIdentityCreateFromRaw();
    v7 = *MEMORY[0x277CBC878];
    v8 = *MEMORY[0x277CBC880];
    if (v6)
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v12 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = dataCopy;
        _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Created sharing identity %@ from data %@", buf, 0x16u);
      }
    }

    else
    {
      if (v8 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v7);
      }

      v9 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = dataCopy;
        v17 = 2112;
        v18 = 0;
        _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Couldn't create a sharing identity from data %@: %@", buf, 0x16u);
      }

      if (error)
      {
        *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5005, 0, @"Couldn't create a sharing identity from data %@", dataCopy);
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Refusing to try to create a sharing identity from nil data", buf, 2u);
    }

    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (_PCSIdentitySetData)createTemporaryCloudKitFeaturesSigningIdentitySetForServiceName:(id)name withError:(id *)error
{
  nameCopy = name;
  Mutable = PCSIdentitySetCreateMutable();
  if (Mutable)
  {
    Master = PCSIdentityCreateMaster();
    PCSIdentitySetAddIdentityWithError();
    Service = PCSIdentityCreateService();
    PCSIdentitySetAddIdentityWithError();
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 5000, nameCopy, 0);
    Master = 0;
    Service = 0;
  }

  if (error)
  {
    v9 = v12;
    *error = v12;
  }

  if (Service)
  {
    CFRelease(Service);
  }

  if (Master)
  {
    CFRelease(Master);
  }

  return Mutable;
}

- (BOOL)identitySet:(_PCSIdentitySetData *)set containsPublicKey:(id)key error:(id *)error
{
  result = 0;
  if (set && key)
  {
    v6 = PCSPublicIdentityCreateFromKeyData();
    if (!v6)
    {
      return 0;
    }

    PublicID = PCSPublicIdentityGetPublicID();
    if (PublicID)
    {
      v8 = PublicID;
      CFRetain(PublicID);
      CFRelease(v6);
      v6 = PCSIdentitySetCopyIdentity();
      CFRelease(v8);
      if (!v6)
      {
        return 0;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
    return v9;
  }

  return result;
}

- (BOOL)_hasCurrentKeyForService:(id)service inIdentitySet:(_PCSIdentitySetData *)set withError:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v9 = 0;
  if (!serviceCopy || !set)
  {
    goto LABEL_22;
  }

  cf = 0;
  v11 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend__checkAndClearPCSTestOverrideForKey_(self, v10, @"ForceSecurityErrorOnIdentityValidation"))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Forcing error from security when validating the identity", buf, 2u);
    }

    v27 = *MEMORY[0x277CCA068];
    v28[0] = @"The connection to service named com.apple.securityd.general was invalidated.";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v28, &v27, 1);
    cf = CFErrorCreate(0, @"NSCocoaErrorDomain", 4099, v14);

    v15 = 0;
    if (!v11)
    {
LABEL_13:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        setCopy = set;
        v23 = 2114;
        v24 = serviceCopy;
        v25 = 2112;
        v26 = cf;
        _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Identity set %@ was expected to have a current key set %{public}@. %@", buf, 0x20u);
        if (!error)
        {
LABEL_18:
          v15 = 0;
          v9 = 0;
          if (!v11)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      else if (!error)
      {
        goto LABEL_18;
      }

      *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v17, *MEMORY[0x277CBC120], 5000, cf, @"Couldn't create a PCS identity");
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (cf)
  {
    goto LABEL_13;
  }

LABEL_19:
  CFRelease(v11);
  v9 = v15;
LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)PCSServiceStringFromCKServiceType:(unint64_t)type
{
  v4 = @"com.apple.reminders";
  if (type <= 2)
  {
    switch(type)
    {
      case 0uLL:
        v4 = objc_msgSend_serviceName(self, a2, 0);
        goto LABEL_16;
      case 1uLL:
        v5 = MEMORY[0x277D43008];
        break;
      case 2uLL:
        v5 = MEMORY[0x277D43080];
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (type == 3)
  {
    v5 = MEMORY[0x277D43050];
LABEL_15:
    v4 = *v5;
    goto LABEL_16;
  }

  v6 = @"com.apple.CloudKitFeaturesStingray";
  if (type != 6)
  {
    v6 = @"com.apple.reminders";
  }

  if (type == 5)
  {
    v4 = @"com.apple.CloudKitFeatures";
  }

  else
  {
    v4 = v6;
  }

LABEL_16:

  return v4;
}

+ (id)overrideKeys
{
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDPCSIdentityManager.m", 1290, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSIdentityManager.m", 1290);
  }

  if (qword_280D583A0 != -1)
  {
    dispatch_once(&qword_280D583A0, &unk_28385DA00);
  }

  v3 = qword_280D58398;

  return v3;
}

- (void)clearOverrides
{
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CKDPCSIdentityManager.m", 1306, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSIdentityManager.m", 1306);
  }

  obj = self;
  objc_sync_enter(obj);
  objc_msgSend_setForceSecurityErrorOnIdentityValidation_(obj, v4, 0);
  objc_msgSend_setServiceIsManateeForUnitTests_(obj, v5, 0);
  objc_msgSend_setRefetchPCSIdentitySet_(obj, v6, 0);
  objc_msgSend_setShouldEnforceIdentityFetchLimit_(obj, v7, 0);
  objc_sync_exit(obj);
}

- (void)setOverride:(id)override value:(id)value
{
  overrideCopy = override;
  valueCopy = value;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKDPCSIdentityManager.m", 1316, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSIdentityManager.m", 1316);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_isEqualToString_(overrideCopy, v11, @"ForceSecurityErrorOnIdentityValidation"))
  {
    objc_msgSend_setForceSecurityErrorOnIdentityValidation_(selfCopy, v12, 1);
  }

  else if (objc_msgSend_isEqualToString_(overrideCopy, v12, @"MasqueradeAsManateeIdentity"))
  {
    v15 = objc_msgSend_BOOLValue(valueCopy, v13, v14);
    objc_msgSend_setServiceIsManateeForUnitTests_(selfCopy, v16, v15);
  }

  else if (objc_msgSend_isEqualToString_(overrideCopy, v13, @"RefetchPCSIdentitySet"))
  {
    v19 = objc_msgSend_BOOLValue(valueCopy, v17, v18);
    objc_msgSend_setRefetchPCSIdentitySet_(selfCopy, v20, v19);
  }

  else if (objc_msgSend_isEqualToString_(overrideCopy, v17, @"IdentityFetchLimit"))
  {
    objc_msgSend_setShouldEnforceIdentityFetchLimit_(selfCopy, v21, 1);
    v24 = objc_msgSend_unsignedIntegerValue(valueCopy, v22, v23);
    objc_msgSend_setIdentityFetchLimit_(selfCopy, v25, v24);
  }

  else if (objc_msgSend_isEqualToString_(overrideCopy, v21, @"ForceNoIdentitySetError"))
  {
    v28 = objc_msgSend_pcsTestOverrides(selfCopy, v26, v27);
    objc_msgSend_setObject_forKeyedSubscript_(v28, v29, valueCopy, overrideCopy);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_checkAndClearPCSTestOverrideForKey:(id)key
{
  keyCopy = key;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDPCSIdentityManager.m", 1336, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/ProtectedCloudStorage/CKDPCSIdentityManager.m", 1336);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_isEqualToString_(keyCopy, v9, @"ForceSecurityErrorOnIdentityValidation"))
  {
    v12 = objc_msgSend_forceSecurityErrorOnIdentityValidation(selfCopy, v10, v11);
    objc_msgSend_setForceSecurityErrorOnIdentityValidation_(selfCopy, v13, 0);
  }

  else if (objc_msgSend_isEqualToString_(keyCopy, v10, @"ForceNoIdentitySetError"))
  {
    v16 = objc_msgSend_pcsTestOverrides(selfCopy, v14, v15);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, keyCopy);
    v12 = objc_msgSend_BOOLValue(v18, v19, v20);

    v23 = objc_msgSend_pcsTestOverrides(selfCopy, v21, v22);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v24, 0, keyCopy);
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(selfCopy);

  return v12;
}

@end