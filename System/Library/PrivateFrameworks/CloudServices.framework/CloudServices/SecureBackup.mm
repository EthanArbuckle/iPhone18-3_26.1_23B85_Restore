@interface SecureBackup
+ (BOOL)moveToFederationAllowed:(id)allowed altDSID:(id)d error:(id *)error;
+ (id)_ClassCreateSecureBackupConcurrentConnection;
+ (id)_getAcceptedTermsForAltDSID:(id)d withError:(id *)error;
+ (id)getAcceptedTermsForAltDSID:(id)d withError:(id *)error;
+ (id)knownICDPFederations:(id *)federations;
+ (unsigned)daemonPasscodeRequestOpinion:(id *)opinion;
+ (unsigned)needPasscodeForHSA2EscrowRecordUpdate:(id *)update;
+ (void)asyncRequestEscrowRecordUpdate;
+ (void)getAcceptedTermsForAltDSID:(id)d reply:(id)reply;
+ (void)saveTermsAcceptance:(id)acceptance reply:(id)reply;
- (BOOL)changeSMSTargetWithError:(id *)error;
- (BOOL)disableWithError:(id *)error;
- (BOOL)enableWithError:(id *)error;
- (BOOL)isRecoveryKeySet:(id *)set;
- (BOOL)removeRecoveryKeyFromBackup:(id *)backup;
- (BOOL)requiresDoubleEnrollment;
- (BOOL)restoreKeychainWithBackupPassword:(id)password error:(id *)error;
- (BOOL)updateMetadataWithError:(id *)error;
- (BOOL)verifyRecoveryKey:(id)key error:(id *)error;
- (SecureBackup)backupWithInfo:(id)info;
- (SecureBackup)backupWithInfo:(id)info completionBlock:(id)block;
- (SecureBackup)initWithCoder:(id)coder;
- (SecureBackup)initWithUserActivityLabel:(id)label;
- (id)_CreateSecureBackupConnection;
- (id)backupForRecoveryKeyWithInfo:(id)info;
- (id)beginHSA2PasscodeRequest:(BOOL)request uuid:(id)uuid reason:(id)reason error:(id *)error;
- (id)cachePassphraseWithInfo:(id)info;
- (id)changeSMSTargetWithInfo:(id)info;
- (id)disableWithInfo:(id)info;
- (id)enableWithInfo:(id)info;
- (id)getAccountInfoWithError:(id *)error;
- (id)getAccountInfoWithInfo:(id)info results:(id *)results;
- (id)recoverSilentWithCDPContext:(id)context allRecords:(id)records altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
- (id)recoverSilentWithCDPContext:(id)context allRecords:(id)records error:(id *)error;
- (id)recoverWithCDPContext:(id)context escrowRecord:(id)record altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error;
- (id)recoverWithCDPContext:(id)context escrowRecord:(id)record error:(id *)error;
- (id)recoverWithError:(id *)error;
- (id)recoverWithInfo:(id)info results:(id *)results;
- (id)srpInitNonce;
- (id)srpRecoveryBlobFromSRPInitResponse:(id)response error:(id *)error;
- (id)startSMSChallengeWithError:(id *)error;
- (id)startSMSChallengeWithInfo:(id)info results:(id *)results;
- (id)uncachePassphraseWithInfo:(id)info;
- (id)updateMetadataWithInfo:(id)info;
- (void)backOffDateWithCompletionBlock:(id)block;
- (void)backOffDateWithInfo:(id)info completionBlock:(id)block;
- (void)cachePassphrase;
- (void)cachePassphraseWithCompletionBlock:(id)block;
- (void)cachePassphraseWithInfo:(id)info completionBlock:(id)block;
- (void)cacheRecoveryKeyWithCompletionBlock:(id)block;
- (void)changeSMSTargetWithCompletionBlock:(id)block;
- (void)changeSMSTargetWithInfo:(id)info completionBlock:(id)block;
- (void)createICDPRecordWithContents:(id)contents reply:(id)reply;
- (void)disableWithCompletionBlock:(id)block;
- (void)disableWithInfo:(id)info completionBlock:(id)block;
- (void)enableWithCompletionBlock:(id)block;
- (void)enableWithInfo:(id)info completionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)fetchStingrayAccountStatus:(id)status;
- (void)getAccountInfoWithInfo:(id)info completionBlockWithResults:(id)results;
- (void)getAccountInfoWithResults:(id)results;
- (void)getCertificates:(id)certificates;
- (void)getCountrySMSCodesWithInfo:(id)info completionBlockWithResults:(id)results;
- (void)getCountrySMSCodesWithResults:(id)results;
- (void)notificationInfo:(id)info;
- (void)populateWithInfo:(id)info;
- (void)prepareHSA2EscrowRecordContents:(BOOL)contents reply:(id)reply;
- (void)recoverRecordContents:(id)contents;
- (void)recoverWithInfo:(id)info completionBlockWithResults:(id)results;
- (void)recoverWithResults:(id)results;
- (void)restoreKeychainAsyncWithPassword:(id)password keybagDigest:(id)digest haveBottledPeer:(BOOL)peer viewsNotToBeRestored:(id)restored error:(id *)error;
- (void)setBackOffDateWithCompletionBlock:(id)block;
- (void)setBackOffDateWithInfo:(id)info completionBlock:(id)block;
- (void)setICloudPassword:(id)password;
- (void)setRawPassword:(id)password;
- (void)srpRecoveryUpdateDSID:(id)d recoveryPassphrase:(id)passphrase;
- (void)startSMSChallengeWithInfo:(id)info completionBlock:(id)block;
- (void)startSMSChallengeWithInfo:(id)info completionBlockWithResults:(id)results;
- (void)startSMSChallengeWithResults:(id)results;
- (void)stashRecoveryDataWithCompletionBlock:(id)block;
- (void)stashRecoveryDataWithInfo:(id)info completionBlock:(id)block;
- (void)stateCaptureWithCompletionBlock:(id)block;
- (void)uncachePassphrase;
- (void)uncachePassphraseWithCompletionBlock:(id)block;
- (void)uncachePassphraseWithInfo:(id)info completionBlock:(id)block;
- (void)uncacheRecoveryKeyWithCompletionBlock:(id)block;
- (void)updateMetadataWithCompletionBlock:(id)block;
- (void)updateMetadataWithInfo:(id)info completionBlock:(id)block;
@end

@implementation SecureBackup

- (id)_CreateSecureBackupConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = getuid();
    v16 = 2080;
    v17 = getprogname();
    _os_log_impl(&dword_22E9CA000, v2, OS_LOG_TYPE_DEFAULT, "creating connection to sbd: uid %d, progname %s", v15, 0x12u);
  }

  v4 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v3, &unk_28435EF88);
  v5 = SecureBackupSetupProtocol(v4);

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  v8 = objc_msgSend_initWithMachServiceName_options_(v6, v7, @"com.apple.SecureBackupDaemon", 0);
  objc_msgSend_setRemoteObjectInterface_(v8, v9, v5);
  objc_msgSend_resume(v8, v10, v11);
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_22E9CA000, v12, OS_LOG_TYPE_DEFAULT, "sbd connection created", v15, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_ClassCreateSecureBackupConcurrentConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = CloudServicesLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = getuid();
    v16 = 2080;
    v17 = getprogname();
    _os_log_impl(&dword_22E9CA000, v2, OS_LOG_TYPE_DEFAULT, "creating connection to sbd: uid %d, progname %s", v15, 0x12u);
  }

  v4 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v3, &unk_28435EFE8);
  v5 = SecureBackupSetupConcurrentProtocol(v4);

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  v8 = objc_msgSend_initWithMachServiceName_options_(v6, v7, @"com.apple.SecureBackupDaemon.concurrent", 0);
  objc_msgSend_setRemoteObjectInterface_(v8, v9, v5);
  objc_msgSend_resume(v8, v10, v11);
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_22E9CA000, v12, OS_LOG_TYPE_DEFAULT, "sbd connection created", v15, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (SecureBackup)initWithUserActivityLabel:(id)label
{
  v27 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v22.receiver = self;
  v22.super_class = SecureBackup;
  v5 = [(SecureBackup *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    if (qword_280B5F998 != -1)
    {
      sub_22E9F2B38();
    }

    v7 = qword_280B5F9A0;
    v9 = objc_msgSend_initWithFormat_(v6, v8, @"%@: %@", v7, labelCopy);
    activityLabel = v5->_activityLabel;
    v5->_activityLabel = v9;

    v13 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v11, v12);
    activityUUID = v5->_activityUUID;
    v5->_activityUUID = v13;

    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_UUIDString(v5->_activityUUID, v16, v17);
      v19 = v5->_activityLabel;
      *buf = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_22E9CA000, v15, OS_LOG_TYPE_INFO, "New SecureBackup object: %@ %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_appleID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"SecureBackupAuthenticationAppleID");

  v11 = objc_msgSend_authToken(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"SecureBackupAuthenticationAuthToken");

  v15 = objc_msgSend_backOffDate(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"SecureBackupBackOffDate");

  v19 = objc_msgSend_countryDialCode(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"countryDialCode");

  v23 = objc_msgSend_countryCode(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"countryISOCode");

  v27 = objc_msgSend_deleteAll(self, v25, v26);
  objc_msgSend_encodeBool_forKey_(coderCopy, v28, v27, @"SecureBackupiCloudDataProtectionDeleteAllRecords");
  v31 = objc_msgSend_dsid(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"SecureBackupAuthenticationDSID");

  v35 = objc_msgSend_emcsCred(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"SecureBackupEMCSManagedCredential");

  v39 = objc_msgSend_emcsDict(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"SecureBackupEMCSIDMSDict");

  v43 = objc_msgSend_emcsMode(self, v41, v42);
  objc_msgSend_encodeBool_forKey_(coderCopy, v44, v43, @"SecureBackupContainsEMCSData");
  v47 = objc_msgSend_escrowProxyURL(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"SecureBackupAuthenticationEscrowProxyURL");

  v51 = objc_msgSend_excludeiCDPRecords(self, v49, v50);
  objc_msgSend_encodeBool_forKey_(coderCopy, v52, v51, @"SecureBackupExcludeiCDPRecords");
  v55 = objc_msgSend_fmipRecovery(self, v53, v54);
  objc_msgSend_encodeBool_forKey_(coderCopy, v56, v55, @"SecureBackupFMiPRecoveryKey");
  v59 = objc_msgSend_fmipUUID(self, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v60, v59, @"SecureBackupFMiPUUIDKey");

  ClientMetadata = objc_msgSend_generateClientMetadata(self, v61, v62);
  objc_msgSend_encodeBool_forKey_(coderCopy, v64, ClientMetadata, @"SecureBackupGenerateClientMetadataKey");
  v67 = objc_msgSend_icdp(self, v65, v66);
  objc_msgSend_encodeBool_forKey_(coderCopy, v68, v67, @"SecureBackupContainsiCDPData");
  v71 = objc_msgSend_iCloudEnv(self, v69, v70);
  objc_msgSend_encodeObject_forKey_(coderCopy, v72, v71, @"SecureBackupAuthenticationiCloudEnvironment");

  v75 = objc_msgSend_iCloudIdentityData(self, v73, v74);
  objc_msgSend_encodeObject_forKey_(coderCopy, v76, v75, @"SecureBackupiCloudIdentityData");

  v79 = objc_msgSend_iCloudPassword(self, v77, v78);
  objc_msgSend_encodeObject_forKey_(coderCopy, v80, v79, @"SecureBackupAuthenticationPassword");

  v83 = objc_msgSend_rawPassword(self, v81, v82);
  objc_msgSend_encodeObject_forKey_(coderCopy, v84, v83, @"SecureBackupAuthenticationRawPassword");

  v87 = objc_msgSend_idmsData(self, v85, v86);
  objc_msgSend_encodeObject_forKey_(coderCopy, v88, v87, @"SecureBackupIDMSData");

  v91 = objc_msgSend_idmsRecovery(self, v89, v90);
  objc_msgSend_encodeBool_forKey_(coderCopy, v92, v91, @"SecureBackupIDMSRecovery");
  v95 = objc_msgSend_metadata(self, v93, v94);
  objc_msgSend_encodeObject_forKey_(coderCopy, v96, v95, @"SecureBackupMetadata");

  v99 = objc_msgSend_metadataHash(self, v97, v98);
  objc_msgSend_encodeObject_forKey_(coderCopy, v100, v99, @"SecureBackupStingrayMetadataHash");

  v103 = objc_msgSend_oldEMCSCred(self, v101, v102);
  objc_msgSend_encodeObject_forKey_(coderCopy, v104, v103, @"SecureBackupEMCSOldManagedCredential");

  v107 = objc_msgSend_passcodeStashSecret(self, v105, v106);
  objc_msgSend_encodeObject_forKey_(coderCopy, v108, v107, @"SecureBackupPasscodeStashSecret");

  v111 = objc_msgSend_passphrase(self, v109, v110);
  objc_msgSend_encodeObject_forKey_(coderCopy, v112, v111, @"SecureBackupPassphrase");

  v115 = objc_msgSend_recordID(self, v113, v114);
  objc_msgSend_encodeObject_forKey_(coderCopy, v116, v115, @"recordID");

  v119 = objc_msgSend_recoveryKey(self, v117, v118);
  objc_msgSend_encodeObject_forKey_(coderCopy, v120, v119, @"SecureBackupRecoveryKey");

  v123 = objc_msgSend_smsTarget(self, v121, v122);
  objc_msgSend_encodeObject_forKey_(coderCopy, v124, v123, @"phoneNumber");

  v127 = objc_msgSend_silent(self, v125, v126);
  objc_msgSend_encodeBool_forKey_(coderCopy, v128, v127, @"SecureBackupSilentRecoveryAttempt");
  v131 = objc_msgSend_specifiedFederation(self, v129, v130);
  objc_msgSend_encodeObject_forKey_(coderCopy, v132, v131, @"SecureBackupSpecifiedFederation");

  v135 = objc_msgSend_stingray(self, v133, v134);
  objc_msgSend_encodeBool_forKey_(coderCopy, v136, v135, @"SecureBackupContainsiCloudIdentity");
  v139 = objc_msgSend_synchronize(self, v137, v138);
  objc_msgSend_encodeBool_forKey_(coderCopy, v140, v139, @"SecureBackupSynchronize");
  v143 = objc_msgSend_useCachedPassphrase(self, v141, v142);
  objc_msgSend_encodeBool_forKey_(coderCopy, v144, v143, @"SecureBackupUseCachedPassphrase");
  v147 = objc_msgSend_hsa2CachedPrerecordUUID(self, v145, v146);
  objc_msgSend_encodeObject_forKey_(coderCopy, v148, v147, @"SecureBackupHSA2CachedPrerecordUUID");

  v151 = objc_msgSend_useRecoveryPET(self, v149, v150);
  objc_msgSend_encodeBool_forKey_(coderCopy, v152, v151, @"SecureBackupIDMSRecovery");
  v155 = objc_msgSend_usesMultipleiCSC(self, v153, v154);
  objc_msgSend_encodeBool_forKey_(coderCopy, v156, v155, @"SecureBackupUsesMultipleiCSCs");
  v159 = objc_msgSend_usesRandomPassphrase(self, v157, v158);
  objc_msgSend_encodeBool_forKey_(coderCopy, v160, v159, @"SecureBackupUsesRandomPassphrase");
  v163 = objc_msgSend_usesRecoveryKey(self, v161, v162);
  objc_msgSend_encodeBool_forKey_(coderCopy, v164, v163, @"SecureBackupUsesRecoveryKey");
  v167 = objc_msgSend_verificationToken(self, v165, v166);
  objc_msgSend_encodeObject_forKey_(coderCopy, v168, v167, @"SecureBackupVerifcationToken");

  v171 = objc_msgSend_activityLabel(self, v169, v170);
  objc_msgSend_encodeObject_forKey_(coderCopy, v172, v171, @"activityLabel");

  v175 = objc_msgSend_activityUUID(self, v173, v174);
  objc_msgSend_encodeObject_forKey_(coderCopy, v176, v175, @"activityUUID");

  v179 = objc_msgSend_suppressServerFiltering(self, v177, v178);
  objc_msgSend_encodeBool_forKey_(coderCopy, v180, v179, @"SecureBackupSuppressServerFiltering");
  v183 = objc_msgSend_silentDoubleRecovery(self, v181, v182);
  objc_msgSend_encodeBool_forKey_(coderCopy, v184, v183, @"SecureBackupSilentDoubleRecovery");
  v187 = objc_msgSend_deleteDoubleOnly(self, v185, v186);
  objc_msgSend_encodeBool_forKey_(coderCopy, v188, v187, @"SecureBackupDeleteDoubleOnly");
  v191 = objc_msgSend_nonViableRepair(self, v189, v190);
  objc_msgSend_encodeBool_forKey_(coderCopy, v192, v191, @"SecureBackupNonViableRepairKey");
  v195 = objc_msgSend_sosCompatibleEscrowSorting(self, v193, v194);
  objc_msgSend_encodeBool_forKey_(coderCopy, v196, v195, @"SecureBackupSOSCompatibleEscrowSorting");
  v199 = objc_msgSend_deviceSessionID(self, v197, v198);
  objc_msgSend_encodeObject_forKey_(coderCopy, v200, v199, @"SecureBackupDeviceSessionIDKey");

  v203 = objc_msgSend_flowID(self, v201, v202);
  objc_msgSend_encodeObject_forKey_(coderCopy, v204, v203, @"SecureBackupFlowIDKey");

  v207 = objc_msgSend_guitarfish(self, v205, v206);
  objc_msgSend_encodeBool_forKey_(coderCopy, v208, v207, @"SecureBackupGuitarfishKey");
  v211 = objc_msgSend_guitarfishToken(self, v209, v210);
  objc_msgSend_encodeBool_forKey_(coderCopy, v212, v211, @"SecureBackupGuitarfishTokenKey");
  v216 = objc_msgSend_appleIDPasswordMetadata(self, v213, v214);
  objc_msgSend_encodeObject_forKey_(coderCopy, v215, v216, @"SecureBackupAppleIDPasswordMetadataKey");
}

- (SecureBackup)initWithCoder:(id)coder
{
  v161 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v156.receiver = self;
  v156.super_class = SecureBackup;
  v5 = [(SecureBackup *)&v156 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"SecureBackupAuthenticationAppleID");
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"SecureBackupAuthenticationAuthToken");
    authToken = v5->_authToken;
    v5->_authToken = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"SecureBackupBackOffDate");
    backOffDate = v5->_backOffDate;
    v5->_backOffDate = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"countryDialCode");
    countryDialCode = v5->_countryDialCode;
    v5->_countryDialCode = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"countryISOCode");
    countryCode = v5->_countryCode;
    v5->_countryCode = v24;

    v5->_deleteAll = objc_msgSend_decodeBoolForKey_(coderCopy, v26, @"SecureBackupiCloudDataProtectionDeleteAllRecords");
    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v28, v27, @"SecureBackupAuthenticationDSID");
    dsid = v5->_dsid;
    v5->_dsid = v29;

    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"SecureBackupEMCSManagedCredential");
    emcsCred = v5->_emcsCred;
    v5->_emcsCred = v33;

    v36 = objc_msgSend_decodePropertyListForKey_(coderCopy, v35, @"SecureBackupEMCSIDMSDict");
    emcsDict = v5->_emcsDict;
    v5->_emcsDict = v36;

    v5->_emcsMode = objc_msgSend_decodeBoolForKey_(coderCopy, v38, @"SecureBackupContainsEMCSData");
    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"SecureBackupAuthenticationEscrowProxyURL");
    escrowProxyURL = v5->_escrowProxyURL;
    v5->_escrowProxyURL = v41;

    v5->_excludeiCDPRecords = objc_msgSend_decodeBoolForKey_(coderCopy, v43, @"SecureBackupExcludeiCDPRecords");
    v5->_fmipRecovery = objc_msgSend_decodeBoolForKey_(coderCopy, v44, @"SecureBackupFMiPRecoveryKey");
    v45 = objc_opt_class();
    v47 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v46, v45, @"SecureBackupFMiPUUIDKey");
    fmipUUID = v5->_fmipUUID;
    v5->_fmipUUID = v47;

    v5->_generateClientMetadata = objc_msgSend_decodeBoolForKey_(coderCopy, v49, @"SecureBackupGenerateClientMetadataKey");
    v5->_icdp = objc_msgSend_decodeBoolForKey_(coderCopy, v50, @"SecureBackupContainsiCDPData");
    v51 = objc_opt_class();
    v53 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v52, v51, @"SecureBackupAuthenticationiCloudEnvironment");
    iCloudEnv = v5->_iCloudEnv;
    v5->_iCloudEnv = v53;

    v55 = objc_opt_class();
    v57 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v56, v55, @"SecureBackupiCloudIdentityData");
    iCloudIdentityData = v5->_iCloudIdentityData;
    v5->_iCloudIdentityData = v57;

    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v60, v59, @"SecureBackupAuthenticationPassword");
    objc_msgSend_setICloudPassword_(v5, v62, v61);

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"SecureBackupAuthenticationRawPassword");
    objc_msgSend_setRawPassword_(v5, v66, v65);

    v67 = objc_opt_class();
    v69 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v68, v67, @"SecureBackupIDMSData");
    idmsData = v5->_idmsData;
    v5->_idmsData = v69;

    v5->_idmsRecovery = objc_msgSend_decodeBoolForKey_(coderCopy, v71, @"SecureBackupIDMSRecovery");
    v73 = objc_msgSend_decodePropertyListForKey_(coderCopy, v72, @"SecureBackupMetadata");
    metadata = v5->_metadata;
    v5->_metadata = v73;

    v76 = objc_msgSend_decodePropertyListForKey_(coderCopy, v75, @"SecureBackupStingrayMetadataHash");
    metadataHash = v5->_metadataHash;
    v5->_metadataHash = v76;

    v78 = objc_opt_class();
    v80 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v79, v78, @"SecureBackupEMCSOldManagedCredential");
    oldEMCSCred = v5->_oldEMCSCred;
    v5->_oldEMCSCred = v80;

    v82 = objc_opt_class();
    v84 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v83, v82, @"SecureBackupPasscodeStashSecret");
    passcodeStashSecret = v5->_passcodeStashSecret;
    v5->_passcodeStashSecret = v84;

    v86 = objc_opt_class();
    v88 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v87, v86, @"SecureBackupPassphrase");
    passphrase = v5->_passphrase;
    v5->_passphrase = v88;

    v90 = objc_opt_class();
    v92 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v91, v90, @"recordID");
    recordID = v5->_recordID;
    v5->_recordID = v92;

    v94 = objc_opt_class();
    v96 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v95, v94, @"SecureBackupRecoveryKey");
    recoveryKey = v5->_recoveryKey;
    v5->_recoveryKey = v96;

    v98 = objc_opt_class();
    v100 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v99, v98, @"phoneNumber");
    smsTarget = v5->_smsTarget;
    v5->_smsTarget = v100;

    v5->_silent = objc_msgSend_decodeBoolForKey_(coderCopy, v102, @"SecureBackupSilentRecoveryAttempt");
    v103 = objc_opt_class();
    v105 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v104, v103, @"SecureBackupSpecifiedFederation");
    specifiedFederation = v5->_specifiedFederation;
    v5->_specifiedFederation = v105;

    v5->_stingray = objc_msgSend_decodeBoolForKey_(coderCopy, v107, @"SecureBackupContainsiCloudIdentity");
    v5->_synchronize = objc_msgSend_decodeBoolForKey_(coderCopy, v108, @"SecureBackupSynchronize");
    v5->_useCachedPassphrase = objc_msgSend_decodeBoolForKey_(coderCopy, v109, @"SecureBackupUseCachedPassphrase");
    v110 = objc_opt_class();
    v112 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v111, v110, @"SecureBackupHSA2CachedPrerecordUUID");
    hsa2CachedPrerecordUUID = v5->_hsa2CachedPrerecordUUID;
    v5->_hsa2CachedPrerecordUUID = v112;

    v5->_useRecoveryPET = objc_msgSend_decodeBoolForKey_(coderCopy, v114, @"SecureBackupIDMSRecovery");
    v5->_usesMultipleiCSC = objc_msgSend_decodeBoolForKey_(coderCopy, v115, @"SecureBackupUsesMultipleiCSCs");
    v5->_usesRandomPassphrase = objc_msgSend_decodeBoolForKey_(coderCopy, v116, @"SecureBackupUsesRandomPassphrase");
    v5->_usesRecoveryKey = objc_msgSend_decodeBoolForKey_(coderCopy, v117, @"SecureBackupUsesRecoveryKey");
    v118 = objc_opt_class();
    v120 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v119, v118, @"SecureBackupVerifcationToken");
    verificationToken = v5->_verificationToken;
    v5->_verificationToken = v120;

    v122 = objc_opt_class();
    v124 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v123, v122, @"activityLabel");
    activityLabel = v5->_activityLabel;
    v5->_activityLabel = v124;

    v126 = objc_opt_class();
    v128 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v127, v126, @"activityUUID");
    activityUUID = v5->_activityUUID;
    v5->_activityUUID = v128;

    v5->_suppressServerFiltering = objc_msgSend_decodeBoolForKey_(coderCopy, v130, @"SecureBackupSuppressServerFiltering");
    v5->_silentDoubleRecovery = objc_msgSend_decodeBoolForKey_(coderCopy, v131, @"SecureBackupSilentDoubleRecovery");
    v5->_deleteDoubleOnly = objc_msgSend_decodeBoolForKey_(coderCopy, v132, @"SecureBackupDeleteDoubleOnly");
    v5->_nonViableRepair = objc_msgSend_decodeBoolForKey_(coderCopy, v133, @"SecureBackupNonViableRepairKey");
    v5->_sosCompatibleEscrowSorting = objc_msgSend_decodeBoolForKey_(coderCopy, v134, @"SecureBackupSOSCompatibleEscrowSorting");
    v135 = objc_opt_class();
    v137 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v136, v135, @"SecureBackupDeviceSessionIDKey");
    deviceSessionID = v5->_deviceSessionID;
    v5->_deviceSessionID = v137;

    v139 = objc_opt_class();
    v141 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v140, v139, @"SecureBackupFlowIDKey");
    flowID = v5->_flowID;
    v5->_flowID = v141;

    v5->_guitarfish = objc_msgSend_decodeBoolForKey_(coderCopy, v143, @"SecureBackupGuitarfishKey");
    v5->_guitarfishToken = objc_msgSend_decodeBoolForKey_(coderCopy, v144, @"SecureBackupGuitarfishTokenKey");
    v145 = objc_opt_class();
    v147 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v146, v145, @"SecureBackupAppleIDPasswordMetadataKey");
    appleIDPasswordMetadata = v5->_appleIDPasswordMetadata;
    v5->_appleIDPasswordMetadata = v147;

    v149 = CloudServicesLog();
    if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
    {
      v152 = objc_msgSend_UUIDString(v5->_activityUUID, v150, v151);
      v153 = v5->_activityLabel;
      *buf = 138412546;
      v158 = v152;
      v159 = 2112;
      v160 = v153;
      _os_log_impl(&dword_22E9CA000, v149, OS_LOG_TYPE_INFO, "Deserialized SecureBackup object: %@ %@", buf, 0x16u);
    }
  }

  v154 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)populateWithInfo:(id)info
{
  infoCopy = info;
  v5 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v4, @"SecureBackupAuthenticationAppleID");
  objc_msgSend_setAppleID_(self, v6, v5);

  v8 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v7, @"SecureBackupAuthenticationAuthToken");
  objc_msgSend_setAuthToken_(self, v9, v8);

  v11 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v10, @"SecureBackupBackOffDate");
  objc_msgSend_setBackOffDate_(self, v12, v11);

  v14 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v13, @"countryDialCode");
  objc_msgSend_setCountryDialCode_(self, v15, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v16, @"countryISOCode");
  objc_msgSend_setCountryCode_(self, v18, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v19, @"SecureBackupiCloudDataProtectionDeleteAllRecords");
  v21 = MEMORY[0x277CBEC38];
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v20, v22, MEMORY[0x277CBEC38]);
  objc_msgSend_setDeleteAll_(self, v24, isEqualToNumber);

  v26 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v25, @"SecureBackupAuthenticationDSID");
  objc_msgSend_setDsid_(self, v27, v26);

  v29 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v28, @"SecureBackupEMCSManagedCredential");
  objc_msgSend_setEmcsCred_(self, v30, v29);

  v32 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v31, @"SecureBackupEMCSIDMSDict");
  objc_msgSend_setEmcsDict_(self, v33, v32);

  v35 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v34, @"SecureBackupContainsEMCSData");
  v37 = objc_msgSend_isEqualToNumber_(v35, v36, v21);
  objc_msgSend_setEmcsMode_(self, v38, v37);

  v40 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v39, @"SecureBackupAuthenticationEscrowProxyURL");
  objc_msgSend_setEscrowProxyURL_(self, v41, v40);

  v43 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v42, @"SecureBackupExcludeiCDPRecords");
  v45 = objc_msgSend_isEqualToNumber_(v43, v44, v21);
  objc_msgSend_setExcludeiCDPRecords_(self, v46, v45);

  v48 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v47, @"SecureBackupFMiPRecoveryKey");
  v50 = objc_msgSend_isEqualToNumber_(v48, v49, v21);
  objc_msgSend_setFmipRecovery_(self, v51, v50);

  v53 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v52, @"SecureBackupFMiPUUIDKey");
  objc_msgSend_setFmipUUID_(self, v54, v53);

  v56 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v55, @"SecureBackupGenerateClientMetadataKey");
  v58 = objc_msgSend_isEqualToNumber_(v56, v57, v21);
  objc_msgSend_setGenerateClientMetadata_(self, v59, v58);

  v61 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v60, @"SecureBackupContainsiCDPData");
  v63 = objc_msgSend_isEqualToNumber_(v61, v62, v21);
  objc_msgSend_setIcdp_(self, v64, v63);

  v66 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v65, @"SecureBackupAuthenticationiCloudEnvironment");
  objc_msgSend_setICloudEnv_(self, v67, v66);

  v69 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v68, @"SecureBackupiCloudIdentityData");
  objc_msgSend_setICloudIdentityData_(self, v70, v69);

  v72 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v71, @"SecureBackupAuthenticationPassword");
  objc_msgSend_setICloudPassword_(self, v73, v72);

  v75 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v74, @"SecureBackupAuthenticationRawPassword");
  objc_msgSend_setRawPassword_(self, v76, v75);

  v78 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v77, @"SecureBackupIDMSData");
  objc_msgSend_setIdmsData_(self, v79, v78);

  v81 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v80, @"SecureBackupIDMSRecovery");
  v83 = objc_msgSend_isEqualToNumber_(v81, v82, v21);
  objc_msgSend_setIdmsRecovery_(self, v84, v83);

  v86 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v85, @"SecureBackupMetadata");
  objc_msgSend_setMetadata_(self, v87, v86);

  v89 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v88, @"SecureBackupStingrayMetadataHash");
  objc_msgSend_setMetadataHash_(self, v90, v89);

  v92 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v91, @"SecureBackupEMCSOldManagedCredential");
  objc_msgSend_setOldEMCSCred_(self, v93, v92);

  v95 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v94, @"SecureBackupPasscodeStashSecret");
  objc_msgSend_setPasscodeStashSecret_(self, v96, v95);

  v98 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v97, @"SecureBackupPassphrase");
  objc_msgSend_setPassphrase_(self, v99, v98);

  v101 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v100, @"recordID");
  objc_msgSend_setRecordID_(self, v102, v101);

  v104 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v103, @"SecureBackupRecoveryKey");
  objc_msgSend_setRecoveryKey_(self, v105, v104);

  v107 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v106, @"phoneNumber");
  objc_msgSend_setSmsTarget_(self, v108, v107);

  v111 = objc_msgSend_smsTarget(self, v109, v110);

  if (!v111)
  {
    v113 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v112, @"SecureBackupSMSTarget");
    objc_msgSend_setSmsTarget_(self, v114, v113);
  }

  v115 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v112, @"SecureBackupSilentRecoveryAttempt");
  v116 = MEMORY[0x277CBEC38];
  v118 = objc_msgSend_isEqualToNumber_(v115, v117, MEMORY[0x277CBEC38]);
  objc_msgSend_setSilent_(self, v119, v118);

  v121 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v120, @"SecureBackupSpecifiedFederation");
  objc_msgSend_setSpecifiedFederation_(self, v122, v121);

  v124 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v123, @"SecureBackupContainsiCloudIdentity");
  v126 = objc_msgSend_isEqualToNumber_(v124, v125, v116);
  objc_msgSend_setStingray_(self, v127, v126);

  v129 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v128, @"SecureBackupSynchronize");
  v131 = objc_msgSend_isEqualToNumber_(v129, v130, v116);
  objc_msgSend_setSynchronize_(self, v132, v131);

  v134 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v133, @"SecureBackupUseCachedPassphrase");
  v136 = objc_msgSend_isEqualToNumber_(v134, v135, v116);
  objc_msgSend_setUseCachedPassphrase_(self, v137, v136);

  v139 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v138, @"SecureBackupHSA2CachedPrerecordUUID");
  objc_msgSend_setHsa2CachedPrerecordUUID_(self, v140, v139);

  v142 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v141, @"SecureBackupIDMSRecovery");
  v144 = objc_msgSend_isEqualToNumber_(v142, v143, v116);
  objc_msgSend_setUseRecoveryPET_(self, v145, v144);

  v147 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v146, @"SecureBackupUsesMultipleiCSCs");
  v149 = objc_msgSend_isEqualToNumber_(v147, v148, v116);
  objc_msgSend_setUsesMultipleiCSC_(self, v150, v149);

  v152 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v151, @"SecureBackupUsesRandomPassphrase");
  v154 = objc_msgSend_isEqualToNumber_(v152, v153, v116);
  objc_msgSend_setUsesRandomPassphrase_(self, v155, v154);

  v157 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v156, @"SecureBackupUsesRecoveryKey");
  v159 = objc_msgSend_isEqualToNumber_(v157, v158, v116);
  objc_msgSend_setUsesRecoveryKey_(self, v160, v159);

  v162 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v161, @"SecureBackupVerifcationToken");
  objc_msgSend_setVerificationToken_(self, v163, v162);

  v165 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v164, @"SecureBackupSuppressServerFiltering");
  v167 = objc_msgSend_isEqualToNumber_(v165, v166, v116);
  objc_msgSend_setSuppressServerFiltering_(self, v168, v167);

  v170 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v169, @"SecureBackupSilentDoubleRecovery");
  v172 = objc_msgSend_isEqualToNumber_(v170, v171, v116);
  objc_msgSend_setSilentDoubleRecovery_(self, v173, v172);

  v175 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v174, @"SecureBackupDeleteDoubleOnly");
  v177 = objc_msgSend_isEqualToNumber_(v175, v176, v116);
  objc_msgSend_setDeleteDoubleOnly_(self, v178, v177);

  v180 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v179, @"SecureBackupNonViableRepairKey");
  v182 = objc_msgSend_isEqualToNumber_(v180, v181, v116);
  objc_msgSend_setNonViableRepair_(self, v183, v182);

  v185 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v184, @"SecureBackupSOSCompatibleEscrowSorting");
  v187 = objc_msgSend_isEqualToNumber_(v185, v186, v116);
  objc_msgSend_setSosCompatibleEscrowSorting_(self, v188, v187);

  v190 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v189, @"SecureBackupDeviceSessionIDKey");
  objc_msgSend_setDeviceSessionID_(self, v191, v190);

  v193 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v192, @"SecureBackupFlowIDKey");
  objc_msgSend_setFlowID_(self, v194, v193);

  v196 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v195, @"SecureBackupGuitarfishKey");
  v198 = objc_msgSend_isEqualToNumber_(v196, v197, v116);
  objc_msgSend_setGuitarfish_(self, v199, v198);

  v201 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v200, @"SecureBackupGuitarfishTokenKey");
  v203 = objc_msgSend_isEqualToNumber_(v201, v202, v116);
  objc_msgSend_setGuitarfishToken_(self, v204, v203);

  v206 = objc_msgSend_objectForKeyedSubscript_(infoCopy, v205, @"SecureBackupAppleIDPasswordMetadataKey");
  objc_msgSend_setAppleIDPasswordMetadata_(self, v207, v206);
}

- (void)setICloudPassword:(id)password
{
  passwordCopy = password;
  v7 = passwordCopy;
  if (passwordCopy && (objc_msgSend_isPasswordEquivalentToken(passwordCopy, v5, v6) & 1) == 0)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_22E9F2B60(v8);
    }
  }

  iCloudPassword = self->_iCloudPassword;
  self->_iCloudPassword = v7;
}

- (void)setRawPassword:(id)password
{
  passwordCopy = password;
  v7 = passwordCopy;
  if (passwordCopy && objc_msgSend_isPasswordEquivalentToken(passwordCopy, v5, v6))
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_22E9F2BA4(v8);
    }
  }

  rawPassword = self->_rawPassword;
  self->_rawPassword = v7;
}

- (void)getAccountInfoWithResults:(id)results
{
  resultsCopy = results;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CDAB0;
  v19[3] = &unk_278859628;
  v8 = resultsCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CDB28;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling getAccountInfoWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)fetchStingrayAccountStatus:(id)status
{
  statusCopy = status;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CDE28;
  v19[3] = &unk_278859628;
  v8 = statusCopy;
  v20 = v8;
  v10 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CDEA0;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling fetchStingrayAccountStatus in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)enableWithCompletionBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22E9CE2A8;
  v29[3] = &unk_278859628;
  v8 = blockCopy;
  v30 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v29);
  v11 = _CloudServicesSignpostLogSystem();
  v12 = _CloudServicesSignpostCreate(v11);
  v14 = v13;

  v15 = _CloudServicesSignpostLogSystem();
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E9CA000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "EnableWithRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v17 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v12;
    _os_log_impl(&dword_22E9CA000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: EnableWithRequest  enableTelemetry=YES ", buf, 0xCu);
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CE31C;
  activity_block[3] = &unk_2788596F0;
  v23 = v10;
  selfCopy = self;
  v27 = v12;
  v28 = v14;
  v25 = v7;
  v26 = v8;
  v18 = v8;
  v19 = v7;
  v20 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling enableWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)recoverWithResults:(id)results
{
  resultsCopy = results;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CE718;
  v19[3] = &unk_278859628;
  v8 = resultsCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CE790;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)recoverRecordContents:(id)contents
{
  contentsCopy = contents;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CEA90;
  v19[3] = &unk_278859628;
  v8 = contentsCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CEB08;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverRecordContents in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)createICDPRecordWithContents:(id)contents reply:(id)reply
{
  contentsCopy = contents;
  replyCopy = reply;
  v10 = objc_msgSend__CreateSecureBackupConnection(self, v8, v9);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22E9CEE34;
  v24[3] = &unk_278859628;
  v11 = replyCopy;
  v25 = v11;
  v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v12, v24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22E9CEEA8;
  v18[3] = &unk_278859740;
  v19 = v13;
  selfCopy = self;
  v21 = contentsCopy;
  v22 = v10;
  v23 = v11;
  v14 = v11;
  v15 = v10;
  v16 = contentsCopy;
  v17 = v13;
  _os_activity_initiate(&dword_22E9CA000, "calling createICDPRecord in daemon", OS_ACTIVITY_FLAG_DEFAULT, v18);
}

- (void)disableWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CF198;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CF20C;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling disableWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)stashRecoveryDataWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CF4F8;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CF56C;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling stashRecoveryDataWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)updateMetadataWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CF858;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CF8CC;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling updateMetadata in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)cachePassphrase
{
  v4 = objc_msgSend__CreateSecureBackupConnection(self, a2, v2);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22E9CFB94;
  v15[3] = &unk_278859768;
  v16 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0BD0](v15);
  v9 = objc_msgSend_remoteObjectProxy(v5, v7, v8);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CFC08;
  activity_block[3] = &unk_278859790;
  v13 = v9;
  selfCopy = self;
  v10 = v9;
  _os_activity_initiate(&dword_22E9CA000, "calling cachePassphraseWithRequestAsync in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_msgSend_addBarrierBlock_(v5, v11, v6);
}

- (void)cachePassphraseWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9CFD6C;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9CFDE0;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling cachePassphraseWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)uncachePassphraseWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D004C;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D00C0;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling uncachePassphraseWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)cacheRecoveryKeyWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D032C;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D03A0;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling cacheRecoveryKeyWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)uncacheRecoveryKeyWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D060C;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D0680;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling cacheRecoveryKeyWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)uncachePassphrase
{
  v4 = objc_msgSend__CreateSecureBackupConnection(self, a2, v2);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22E9D08C8;
  v15[3] = &unk_278859768;
  v16 = v4;
  v5 = v4;
  v6 = MEMORY[0x2318F0BD0](v15);
  v9 = objc_msgSend_remoteObjectProxy(v5, v7, v8);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D093C;
  activity_block[3] = &unk_278859790;
  v13 = v9;
  selfCopy = self;
  v10 = v9;
  _os_activity_initiate(&dword_22E9CA000, "calling uncachePassphraseWithRequestAsync in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_msgSend_addBarrierBlock_(v5, v11, v6);
}

- (void)startSMSChallengeWithResults:(id)results
{
  resultsCopy = results;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D0AA0;
  v19[3] = &unk_278859628;
  v8 = resultsCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D0B18;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling startSMSChallengeWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)getCountrySMSCodesWithResults:(id)results
{
  resultsCopy = results;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D0E18;
  v19[3] = &unk_278859628;
  v8 = resultsCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D0E90;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling getCountrySMSCodesWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)changeSMSTargetWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D1190;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D1204;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling changeSMSTargetWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (SecureBackup)backupWithInfo:(id)info completionBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v10 = objc_msgSend__CreateSecureBackupConnection(self, v8, v9);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22E9D1510;
  v24[3] = &unk_278859628;
  v11 = blockCopy;
  v25 = v11;
  v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v12, v24);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D1584;
  activity_block[3] = &unk_278859678;
  v20 = v13;
  v21 = infoCopy;
  v22 = v10;
  v23 = v11;
  v14 = v11;
  v15 = v10;
  v16 = infoCopy;
  v17 = v13;
  _os_activity_initiate(&dword_22E9CA000, "calling backupWithInfo in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  return result;
}

- (void)backOffDateWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D1870;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D18E8;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling backOffDateWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)setBackOffDateWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D1BE8;
  v19[3] = &unk_278859628;
  v8 = blockCopy;
  v20 = v8;
  v10 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D1C5C;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling setBackOffDateWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)notificationInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v8, OS_LOG_TYPE_DEFAULT, "calling notificationInfo in daemon", buf, 2u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D1F8C;
  v19[3] = &unk_278859628;
  v9 = infoCopy;
  v20 = v9;
  v11 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v10, v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22E9D2004;
  v15[3] = &unk_2788597B8;
  v16 = v11;
  v17 = v7;
  v18 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v11;
  _os_activity_initiate(&dword_22E9CA000, "calling notificationInfo in daemon", OS_ACTIVITY_FLAG_DEFAULT, v15);
}

- (void)stateCaptureWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v8, OS_LOG_TYPE_DEFAULT, "calling stateCapture in daemon", buf, 2u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D2338;
  v19[3] = &unk_278859628;
  v9 = blockCopy;
  v20 = v9;
  v11 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v7, v10, v19);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22E9D23B0;
  v15[3] = &unk_2788597B8;
  v16 = v11;
  v17 = v7;
  v18 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v11;
  _os_activity_initiate(&dword_22E9CA000, "calling stateCapture in daemon", OS_ACTIVITY_FLAG_DEFAULT, v15);
}

- (id)getAccountInfoWithError:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_22E9D27B0;
  v37 = sub_22E9D27C0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_22E9D27B0;
  v31 = sub_22E9D27C0;
  v32 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22E9D27C8;
  v26[3] = &unk_2788597E0;
  v26[4] = &v33;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v26);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F35B0(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22E9D2838;
  v20[3] = &unk_278859830;
  v21 = v7;
  selfCopy = self;
  v24 = &v33;
  v25 = &v27;
  v23 = v5;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling getAccountInfoWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, v20);

  if (error)
  {
    *error = v34[5];
  }

  v18 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (id)getAccountInfoWithInfo:(id)info results:(id *)results
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v11 = 0;
  v7 = objc_msgSend_getAccountInfoWithError_(self, v6, &v11);
  v8 = v11;
  if (results)
  {
    v9 = v7;
    *results = v7;
  }

  return v8;
}

- (void)getAccountInfoWithInfo:(id)info completionBlockWithResults:(id)results
{
  resultsCopy = results;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_getAccountInfoWithResults_(self, v7, resultsCopy);
}

- (BOOL)updateMetadataWithError:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22E9D27B0;
  v30 = sub_22E9D27C0;
  v31 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D2CCC;
  v25[3] = &unk_2788597E0;
  v25[4] = &v26;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v25);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3628(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D2D3C;
  activity_block[3] = &unk_278859880;
  v21 = v7;
  selfCopy = self;
  v23 = v5;
  v24 = &v26;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling updateMetadataWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    *error = v27[5];
  }

  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  return v18 == 0;
}

- (id)updateMetadataWithInfo:(id)info
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v10 = 0;
  updated = objc_msgSend_updateMetadataWithError_(self, v4, &v10);
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if ((updated & 1) == 0)
  {
    v8 = v6;
  }

  return v8;
}

- (void)updateMetadataWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_updateMetadataWithCompletionBlock_(self, v7, blockCopy);
}

- (BOOL)enableWithError:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22E9D27B0;
  v30 = sub_22E9D27C0;
  v31 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D319C;
  v25[3] = &unk_2788597E0;
  v25[4] = &v26;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v25);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3718(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D320C;
  activity_block[3] = &unk_278859880;
  v21 = v7;
  selfCopy = self;
  v23 = v5;
  v24 = &v26;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling enableWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    *error = v27[5];
  }

  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  return v18 == 0;
}

- (id)enableWithInfo:(id)info
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v10 = 0;
  v5 = objc_msgSend_enableWithError_(self, v4, &v10);
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if ((v5 & 1) == 0)
  {
    v8 = v6;
  }

  return v8;
}

- (void)enableWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_enableWithCompletionBlock_(self, v7, blockCopy);
}

- (id)recoverWithError:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_22E9D27B0;
  v37 = sub_22E9D27C0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_22E9D27B0;
  v31 = sub_22E9D27C0;
  v32 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22E9D36D8;
  v26[3] = &unk_2788597E0;
  v26[4] = &v33;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v26);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3790(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22E9D3748;
  v20[3] = &unk_278859830;
  v21 = v7;
  selfCopy = self;
  v24 = &v33;
  v25 = &v27;
  v23 = v5;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, v20);

  if (error)
  {
    *error = v34[5];
  }

  v18 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (id)recoverWithCDPContext:(id)context escrowRecord:(id)record error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  recordCopy = record;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_22E9D27B0;
  v49 = sub_22E9D27C0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_22E9D27B0;
  v43 = sub_22E9D27C0;
  v44 = 0;
  v12 = objc_msgSend__CreateSecureBackupConnection(self, v10, v11);
  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = recordCopy;
    _os_log_impl(&dword_22E9CA000, v13, OS_LOG_TYPE_DEFAULT, "recoverWithCDPContext: invoked escrow recovery with escrowRecord: %@", buf, 0xCu);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_22E9D3C38;
  v38[3] = &unk_2788597E0;
  v38[4] = &v45;
  v15 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v12, v14, v38);
  if (pthread_main_np())
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3808(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D3CA8;
  activity_block[3] = &unk_2788598A8;
  v32 = v15;
  v24 = contextCopy;
  v33 = v24;
  v25 = recordCopy;
  v36 = &v45;
  v37 = &v39;
  v34 = v25;
  v35 = v12;
  v26 = v12;
  v27 = v15;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverWithCDPContextInDaemon in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    *error = v46[5];
  }

  v28 = v40[5];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)recoverWithCDPContext:(id)context escrowRecord:(id)record altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_22E9D27B0;
  v64 = sub_22E9D27C0;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_22E9D27B0;
  v58 = sub_22E9D27C0;
  v59 = 0;
  v21 = objc_msgSend__CreateSecureBackupConnection(self, v19, v20);
  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = recordCopy;
    _os_log_impl(&dword_22E9CA000, v22, OS_LOG_TYPE_DEFAULT, "recoverWithCDPContext: invoked escrow recovery with escrowRecord: %@", buf, 0xCu);
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_22E9D421C;
  v53[3] = &unk_2788597E0;
  v53[4] = &v60;
  v24 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v21, v23, v53);
  if (pthread_main_np())
  {
    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F38F8(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_22E9D428C;
  v43[3] = &unk_2788598D0;
  v44 = v24;
  v33 = contextCopy;
  v45 = v33;
  v34 = recordCopy;
  v46 = v34;
  v35 = dCopy;
  v47 = v35;
  v36 = iDCopy;
  v48 = v36;
  v37 = sessionIDCopy;
  v51 = &v60;
  v52 = &v54;
  v49 = v37;
  v50 = v21;
  v38 = v21;
  v39 = v24;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverWithCDPContextInDaemon in daemon", OS_ACTIVITY_FLAG_DEFAULT, v43);

  if (error)
  {
    *error = v61[5];
  }

  v40 = v55[5];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)recoverSilentWithCDPContext:(id)context allRecords:(id)records error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  recordsCopy = records;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_22E9D27B0;
  v49 = sub_22E9D27C0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_22E9D27B0;
  v43 = sub_22E9D27C0;
  v44 = 0;
  v12 = objc_msgSend__CreateSecureBackupConnection(self, v10, v11);
  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = recordsCopy;
    _os_log_impl(&dword_22E9CA000, v13, OS_LOG_TYPE_DEFAULT, "recoverSilentWithCDPContext: invoked silent escrow recovery with records: %@", buf, 0xCu);
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_22E9D47A4;
  v38[3] = &unk_2788597E0;
  v38[4] = &v45;
  v15 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v12, v14, v38);
  if (pthread_main_np())
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3970(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D4814;
  activity_block[3] = &unk_2788598A8;
  v32 = v15;
  v24 = contextCopy;
  v33 = v24;
  v25 = recordsCopy;
  v36 = &v45;
  v37 = &v39;
  v34 = v25;
  v35 = v12;
  v26 = v12;
  v27 = v15;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverSilentWithCDPContextInDaemon in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    *error = v46[5];
  }

  v28 = v40[5];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)recoverSilentWithCDPContext:(id)context allRecords:(id)records altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  recordsCopy = records;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_22E9D27B0;
  v64 = sub_22E9D27C0;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = sub_22E9D27B0;
  v58 = sub_22E9D27C0;
  v59 = 0;
  v21 = objc_msgSend__CreateSecureBackupConnection(self, v19, v20);
  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = recordsCopy;
    _os_log_impl(&dword_22E9CA000, v22, OS_LOG_TYPE_DEFAULT, "recoverSilentWithCDPContext: invoked silent escrow recovery with records: %@", buf, 0xCu);
  }

  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_22E9D4D88;
  v53[3] = &unk_2788597E0;
  v53[4] = &v60;
  v24 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v21, v23, v53);
  if (pthread_main_np())
  {
    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3A60(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_22E9D4DF8;
  v43[3] = &unk_2788598D0;
  v44 = v24;
  v33 = contextCopy;
  v45 = v33;
  v34 = recordsCopy;
  v46 = v34;
  v35 = dCopy;
  v47 = v35;
  v36 = iDCopy;
  v48 = v36;
  v37 = sessionIDCopy;
  v51 = &v60;
  v52 = &v54;
  v49 = v37;
  v50 = v21;
  v38 = v21;
  v39 = v24;
  _os_activity_initiate(&dword_22E9CA000, "calling recoverSilentWithCDPContextInDaemon in daemon", OS_ACTIVITY_FLAG_DEFAULT, v43);

  if (error)
  {
    *error = v61[5];
  }

  v40 = v55[5];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v60, 8);

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (BOOL)isRecoveryKeySet:(id *)set
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_22E9D27B0;
  v35 = sub_22E9D27C0;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v4 = objc_msgSend__CreateSecureBackupConnection(self, a2, set);
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "isRecoveryKeySet: invoked", buf, 2u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D5244;
  v25[3] = &unk_2788597E0;
  v25[4] = &v31;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v4, v6, v25);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3AD8(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D52B4;
  activity_block[3] = &unk_278859920;
  v23 = &v31;
  v24 = &v27;
  v21 = v7;
  v22 = v4;
  v16 = v4;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling isRecoveryKeySetInDaemon in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (set)
  {
    *set = v32[5];
  }

  v18 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

- (void)restoreKeychainAsyncWithPassword:(id)password keybagDigest:(id)digest haveBottledPeer:(BOOL)peer viewsNotToBeRestored:(id)restored error:(id *)error
{
  passwordCopy = password;
  digestCopy = digest;
  restoredCopy = restored;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_22E9D27B0;
  v48 = sub_22E9D27C0;
  v49 = 0;
  v17 = objc_msgSend__CreateSecureBackupConnection(self, v15, v16);
  v18 = CloudServicesLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v18, OS_LOG_TYPE_DEFAULT, "restoreKeychainAsyncWithPassword: invoked", buf, 2u);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = sub_22E9D571C;
  v42[3] = &unk_2788597E0;
  v42[4] = &v44;
  v20 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v17, v19, v42);
  if (pthread_main_np())
  {
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3BC8(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = sub_22E9D578C;
  v34[3] = &unk_278859948;
  v29 = v20;
  v35 = v29;
  v30 = passwordCopy;
  v36 = v30;
  v31 = digestCopy;
  v37 = v31;
  peerCopy = peer;
  v32 = restoredCopy;
  v38 = v32;
  v40 = &v44;
  v33 = v17;
  v39 = v33;
  _os_activity_initiate(&dword_22E9CA000, "calling restoreKeychainAsyncWithPassword in daemon", OS_ACTIVITY_FLAG_DEFAULT, v34);

  if (error)
  {
    *error = v45[5];
  }

  _Block_object_dispose(&v44, 8);
}

- (BOOL)restoreKeychainWithBackupPassword:(id)password error:(id *)error
{
  passwordCopy = password;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_22E9D27B0;
  v42 = sub_22E9D27C0;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v9 = objc_msgSend__CreateSecureBackupConnection(self, v7, v8);
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v10, OS_LOG_TYPE_DEFAULT, "restoreKeychainWithBackupPassword: invoked", buf, 2u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22E9D5BD4;
  v32[3] = &unk_2788597E0;
  v32[4] = &v38;
  v12 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v9, v11, v32);
  if (pthread_main_np())
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3CB8(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22E9D5C44;
  v26[3] = &unk_278859830;
  v27 = v12;
  v21 = passwordCopy;
  v30 = &v38;
  v31 = &v34;
  v28 = v21;
  v29 = v9;
  v22 = v9;
  v23 = v12;
  _os_activity_initiate(&dword_22E9CA000, "calling restoreKeychainWithBackupPassword in daemon", OS_ACTIVITY_FLAG_DEFAULT, v26);

  if (error)
  {
    *error = v39[5];
  }

  v24 = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v24;
}

- (BOOL)verifyRecoveryKey:(id)key error:(id *)error
{
  keyCopy = key;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_22E9D27B0;
  v42 = sub_22E9D27C0;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v9 = objc_msgSend__CreateSecureBackupConnection(self, v7, v8);
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v10, OS_LOG_TYPE_DEFAULT, "verifyRecoveryKey: invoked", buf, 2u);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_22E9D608C;
  v32[3] = &unk_2788597E0;
  v32[4] = &v38;
  v12 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v9, v11, v32);
  if (pthread_main_np())
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3DA8(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22E9D60FC;
  v26[3] = &unk_278859830;
  v27 = v12;
  v21 = keyCopy;
  v30 = &v38;
  v31 = &v34;
  v28 = v21;
  v29 = v9;
  v22 = v9;
  v23 = v12;
  _os_activity_initiate(&dword_22E9CA000, "calling verifyRecoveryKey in daemon", OS_ACTIVITY_FLAG_DEFAULT, v26);

  if (error)
  {
    *error = v39[5];
  }

  v24 = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v24;
}

- (BOOL)removeRecoveryKeyFromBackup:(id *)backup
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_22E9D27B0;
  v35 = sub_22E9D27C0;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v4 = objc_msgSend__CreateSecureBackupConnection(self, a2, backup);
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v5, OS_LOG_TYPE_DEFAULT, "removeRecoveryKeyFromBackup: invoked", buf, 2u);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D651C;
  v25[3] = &unk_2788597E0;
  v25[4] = &v31;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v4, v6, v25);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3E98(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D658C;
  activity_block[3] = &unk_278859920;
  v23 = &v31;
  v24 = &v27;
  v21 = v7;
  v22 = v4;
  v16 = v4;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling removeRecoveryKeyFromBackup in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (backup)
  {
    *backup = v32[5];
  }

  v18 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

- (id)recoverWithInfo:(id)info results:(id *)results
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v11 = 0;
  v7 = objc_msgSend_recoverWithError_(self, v6, &v11);
  v8 = v11;
  if (results)
  {
    v9 = v7;
    *results = v7;
  }

  return v8;
}

- (void)recoverWithInfo:(id)info completionBlockWithResults:(id)results
{
  resultsCopy = results;
  infoCopy = info;
  kdebug_trace();
  objc_msgSend_populateWithInfo_(self, v8, infoCopy);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22E9D6890;
  v11[3] = &unk_278859970;
  v12 = resultsCopy;
  v9 = resultsCopy;
  objc_msgSend_recoverWithResults_(self, v10, v11);
}

- (BOOL)disableWithError:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22E9D27B0;
  v30 = sub_22E9D27C0;
  v31 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D6B20;
  v25[3] = &unk_2788597E0;
  v25[4] = &v26;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v25);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F3F88(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D6B90;
  activity_block[3] = &unk_278859880;
  v21 = v7;
  selfCopy = self;
  v23 = v5;
  v24 = &v26;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling disableWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    *error = v27[5];
  }

  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  return v18 == 0;
}

- (id)disableWithInfo:(id)info
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v10 = 0;
  v5 = objc_msgSend_disableWithError_(self, v4, &v10);
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if ((v5 & 1) == 0)
  {
    v8 = v6;
  }

  return v8;
}

- (void)disableWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_disableWithCompletionBlock_(self, v7, blockCopy);
}

- (void)stashRecoveryDataWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  kdebug_trace();
  objc_msgSend_populateWithInfo_(self, v8, infoCopy);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22E9D6ECC;
  v11[3] = &unk_278859628;
  v12 = blockCopy;
  v9 = blockCopy;
  objc_msgSend_stashRecoveryDataWithCompletionBlock_(self, v10, v11);
}

- (id)cachePassphraseWithInfo:(id)info
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  objc_msgSend_cachePassphrase(self, v4, v5);
  return 0;
}

- (void)cachePassphraseWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_cachePassphraseWithCompletionBlock_(self, v7, blockCopy);
}

- (id)uncachePassphraseWithInfo:(id)info
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  objc_msgSend_uncachePassphrase(self, v4, v5);
  return 0;
}

- (void)uncachePassphraseWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_uncachePassphraseWithCompletionBlock_(self, v7, blockCopy);
}

- (id)startSMSChallengeWithError:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_22E9D27B0;
  v37 = sub_22E9D27C0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_22E9D27B0;
  v31 = sub_22E9D27C0;
  v32 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22E9D72C8;
  v26[3] = &unk_2788597E0;
  v26[4] = &v33;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v26);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F4000(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22E9D7338;
  v20[3] = &unk_278859830;
  v21 = v7;
  selfCopy = self;
  v24 = &v33;
  v25 = &v27;
  v23 = v5;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling startSMSChallengeWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, v20);

  if (error)
  {
    *error = v34[5];
  }

  v18 = v28[5];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (id)startSMSChallengeWithInfo:(id)info results:(id *)results
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v11 = 0;
  v7 = objc_msgSend_startSMSChallengeWithError_(self, v6, &v11);
  v8 = v11;
  if (results)
  {
    v9 = v7;
    *results = v7;
  }

  return v8;
}

- (void)startSMSChallengeWithInfo:(id)info completionBlockWithResults:(id)results
{
  resultsCopy = results;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_startSMSChallengeWithResults_(self, v7, resultsCopy);
}

- (void)startSMSChallengeWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22E9D7670;
  v9[3] = &unk_278859970;
  v10 = blockCopy;
  v7 = blockCopy;
  objc_msgSend_startSMSChallengeWithInfo_completionBlockWithResults_(self, v8, info, v9);
}

- (void)getCountrySMSCodesWithInfo:(id)info completionBlockWithResults:(id)results
{
  resultsCopy = results;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_getCountrySMSCodesWithResults_(self, v7, resultsCopy);
}

- (BOOL)changeSMSTargetWithError:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22E9D27B0;
  v30 = sub_22E9D27C0;
  v31 = 0;
  v5 = objc_msgSend__CreateSecureBackupConnection(self, a2, error);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D78E0;
  v25[3] = &unk_2788597E0;
  v25[4] = &v26;
  v7 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v5, v6, v25);
  if (pthread_main_np())
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F4078(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D7950;
  activity_block[3] = &unk_278859880;
  v21 = v7;
  selfCopy = self;
  v23 = v5;
  v24 = &v26;
  v16 = v5;
  v17 = v7;
  _os_activity_initiate(&dword_22E9CA000, "calling changeSMSTargetWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    *error = v27[5];
  }

  v18 = v27[5];

  _Block_object_dispose(&v26, 8);
  return v18 == 0;
}

- (id)changeSMSTargetWithInfo:(id)info
{
  objc_msgSend_populateWithInfo_(self, a2, info);
  v10 = 0;
  v5 = objc_msgSend_changeSMSTargetWithError_(self, v4, &v10);
  v6 = v10;
  v7 = v6;
  v8 = 0;
  if ((v5 & 1) == 0)
  {
    v8 = v6;
  }

  return v8;
}

- (void)changeSMSTargetWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_changeSMSTargetWithCompletionBlock_(self, v7, blockCopy);
}

- (id)backupForRecoveryKeyWithInfo:(id)info
{
  infoCopy = info;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_22E9D27B0;
  v33 = sub_22E9D27C0;
  v34 = 0;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22E9D7DC0;
  v28[3] = &unk_2788597E0;
  v28[4] = &v29;
  v9 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v7, v8, v28);
  if (pthread_main_np())
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F40F0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D7E30;
  activity_block[3] = &unk_278859880;
  v24 = v9;
  v25 = infoCopy;
  v26 = v7;
  v27 = &v29;
  v18 = v7;
  v19 = infoCopy;
  v20 = v9;
  _os_activity_initiate(&dword_22E9CA000, "calling backupForRecoveryKeyWithInfoInDaemon in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v21 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v21;
}

- (SecureBackup)backupWithInfo:(id)info
{
  infoCopy = info;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_22E9D27B0;
  v33 = sub_22E9D27C0;
  v34 = 0;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22E9D81C4;
  v28[3] = &unk_2788597E0;
  v28[4] = &v29;
  v9 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v7, v8, v28);
  if (pthread_main_np())
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F41D0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D8234;
  activity_block[3] = &unk_278859880;
  v24 = v9;
  v25 = infoCopy;
  v26 = v7;
  v27 = &v29;
  v18 = v7;
  v19 = infoCopy;
  v20 = v9;
  _os_activity_initiate(&dword_22E9CA000, "calling backupWithInfo in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v21 = v30[5];
  _Block_object_dispose(&v29, 8);

  return v21;
}

- (void)backOffDateWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_backOffDateWithCompletionBlock_(self, v7, blockCopy);
}

- (void)setBackOffDateWithInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  objc_msgSend_populateWithInfo_(self, v6, info);
  objc_msgSend_setBackOffDateWithCompletionBlock_(self, v7, blockCopy);
}

- (id)srpInitNonce
{
  v3 = [SRPInit alloc];
  v5 = objc_msgSend_initWithSecureBackup_(v3, v4, self);
  v6 = [CSSESWrapper alloc];
  v8 = objc_msgSend_initWithRequest_reqVersion_(v6, v7, v5, 0);
  objc_msgSend_setSes_(self, v9, v8);

  v12 = objc_msgSend_ses(self, v10, v11);
  v15 = objc_msgSend_srpInitBlob(v12, v13, v14);

  return v15;
}

- (void)srpRecoveryUpdateDSID:(id)d recoveryPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  dCopy = d;
  v11 = objc_msgSend_ses(self, v8, v9);
  objc_msgSend_srpRecoveryUpdateDSID_recoveryPassphrase_(v11, v10, dCopy, passphraseCopy);
}

- (id)srpRecoveryBlobFromSRPInitResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v9 = objc_msgSend_ses(self, v7, v8);
  v11 = objc_msgSend_srpRecoveryBlobFromData_error_(v9, v10, responseCopy, error);

  objc_msgSend_setSes_(self, v12, 0);

  return v11;
}

- (void)prepareHSA2EscrowRecordContents:(BOOL)contents reply:(id)reply
{
  replyCopy = reply;
  v9 = objc_msgSend__CreateSecureBackupConnection(self, v7, v8);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22E9D87BC;
  v30[3] = &unk_278859628;
  v10 = replyCopy;
  v31 = v10;
  v12 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v9, v11, v30);
  if (pthread_main_np())
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F4248(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22E9D8830;
  v24[3] = &unk_278859998;
  v25 = v12;
  selfCopy = self;
  contentsCopy = contents;
  v27 = v9;
  v28 = v10;
  v21 = v10;
  v22 = v9;
  v23 = v12;
  _os_activity_initiate(&dword_22E9CA000, "calling prepareHSA2EscrowRecordContents in daemon", OS_ACTIVITY_FLAG_DEFAULT, v24);
}

+ (void)asyncRequestEscrowRecordUpdate
{
  if ((atomic_exchange(byte_280B5F980, 1u) & 1) == 0)
  {
    v3 = dispatch_get_global_queue(9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22E9D8A74;
    block[3] = &unk_2788599B8;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

+ (unsigned)needPasscodeForHSA2EscrowRecordUpdate:(id *)update
{
  v43 = *MEMORY[0x277D85DE8];
  if (qword_280B5F9C0 != -1)
  {
    sub_22E9F4338();
  }

  if ((byte_280B5F9B9 & 1) == 0)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "unable to fetch passcode_request token";
      v9 = v7;
      v10 = 2;
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  state64 = 0;
  state = notify_get_state(dword_280B5F9BC, &state64);
  if (state)
  {
    v6 = state;
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v42) = v6;
      v8 = "unable to fetch state of passcode_request token (%d)";
      v9 = v7;
      v10 = 8;
LABEL_9:
      _os_log_impl(&dword_22E9CA000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!state64)
  {
    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E9CA000, v25, OS_LOG_TYPE_DEFAULT, "do initial state fetch in the background", buf, 2u);
    }

    objc_msgSend_asyncRequestEscrowRecordUpdate(self, v26, v27);
    goto LABEL_11;
  }

  if ((state64 & 4) == 0)
  {
    v39 = 0;
    v14 = objc_msgSend_daemonPasscodeRequestOpinion_(self, v5, &v39);
    v15 = v39;
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_domain(v15, v16, v17);
      if (objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x277CCA590]))
      {
        v23 = objc_msgSend_code(v18, v21, v22);

        if (v23 == -25308)
        {
          v24 = CloudServicesLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22E9CA000, v24, OS_LOG_TYPE_DEFAULT, "daemon unable to determine passcode status due to keybag lock; relying on dispatch state", buf, 2u);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v18;
        _os_log_impl(&dword_22E9CA000, v31, OS_LOG_TYPE_DEFAULT, "unable to ask daemon for confirmation of passcode request: %@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_49;
    }

    if ((v14 & 0xFFFFFFFE) != 2)
    {
      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E9CA000, v31, OS_LOG_TYPE_DEFAULT, "daemon believes there's no need for a passcode", buf, 2u);
      }

      goto LABEL_39;
    }

LABEL_28:
    v29 = state64;
    if ((state64 & 2) != 0)
    {
      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E9CA000, v31, OS_LOG_TYPE_DEFAULT, "Need password on next unlock", buf, 2u);
      }

      v11 = 3;
      goto LABEL_49;
    }

    if (state64)
    {
      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "Desire password when available";
LABEL_47:
        v11 = 2;
        _os_log_impl(&dword_22E9CA000, v31, OS_LOG_TYPE_DEFAULT, v38, buf, 2u);
        goto LABEL_49;
      }
    }

    else
    {
      v30 = CloudServicesLog();
      v31 = v30;
      if (v29)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_22E9F434C(&state64, v31, v32, v33, v34, v35, v36, v37);
        }

LABEL_39:
        v11 = 1;
LABEL_49:

        goto LABEL_12;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v38 = "Dispatch doesn't have a state for us yet, opportunistically asking for the password";
        goto LABEL_47;
      }
    }

    v11 = 2;
    goto LABEL_49;
  }

  v28 = CloudServicesLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E9CA000, v28, OS_LOG_TYPE_DEFAULT, "No need for passcode", buf, 2u);
  }

  v11 = 1;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (unsigned)daemonPasscodeRequestOpinion:(id *)opinion
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_22E9D27B0;
  v34 = sub_22E9D27C0;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v4 = objc_msgSend__ClassCreateSecureBackupConcurrentConnection(self, a2, opinion);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_22E9D9244;
  v25[3] = &unk_2788597E0;
  v25[4] = &v30;
  v6 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v4, v5, v25);
  if (pthread_main_np())
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F43BC(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D92B4;
  activity_block[3] = &unk_278859920;
  v23 = &v30;
  v24 = &v26;
  v21 = v6;
  v22 = v4;
  v15 = v4;
  v16 = v6;
  _os_activity_initiate(&dword_22E9CA000, "calling daemonPasscodeRequestOpinion in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (opinion)
  {
    v17 = v31[5];
    if (v17)
    {
      *opinion = v17;
    }
  }

  v18 = *(v27 + 6);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)beginHSA2PasscodeRequest:(BOOL)request uuid:(id)uuid reason:(id)reason error:(id *)error
{
  uuidCopy = uuid;
  reasonCopy = reason;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_22E9D27B0;
  v52 = sub_22E9D27C0;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_22E9D27B0;
  v46 = sub_22E9D27C0;
  v47 = 0;
  v14 = objc_msgSend__CreateSecureBackupConnection(self, v12, v13);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_22E9D97C0;
  v41[3] = &unk_2788597E0;
  v41[4] = &v48;
  v16 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v14, v15, v41);
  if (pthread_main_np())
  {
    v17 = CloudServicesLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F44AC(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D9830;
  activity_block[3] = &unk_278859A30;
  v33 = v16;
  selfCopy = self;
  requestCopy = request;
  v25 = uuidCopy;
  v35 = v25;
  v26 = reasonCopy;
  v38 = &v48;
  v39 = &v42;
  v36 = v26;
  v37 = v14;
  v27 = v14;
  v28 = v16;
  _os_activity_initiate(&dword_22E9CA000, "calling beginHSA2PasscodeRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    v29 = v49[5];
    if (v29)
    {
      *error = v29;
    }
  }

  v30 = v43[5];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

  return v30;
}

- (void)getCertificates:(id)certificates
{
  certificatesCopy = certificates;
  v7 = objc_msgSend__CreateSecureBackupConnection(self, v5, v6);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22E9D9B6C;
  v19[3] = &unk_278859628;
  v8 = certificatesCopy;
  v20 = v8;
  v10 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v7, v9, v19);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D9BEC;
  activity_block[3] = &unk_278859678;
  v15 = v10;
  selfCopy = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v10;
  _os_activity_initiate(&dword_22E9CA000, "calling getCertificatesWithRequest in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (BOOL)requiresDoubleEnrollment
{
  if (_os_feature_enabled_impl() & 1) != 0 || (objc_msgSend_guitarfish(self, v3, v4) & 1) != 0 || (objc_msgSend_guitarfishToken(self, v5, v6))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = _os_feature_enabled_impl();
    if (v7)
    {
      if (objc_msgSend_icdp(self, v8, v9))
      {
        LOBYTE(v7) = 1;
      }

      else
      {

        LOBYTE(v7) = objc_msgSend_stingray(self, v10, v11);
      }
    }
  }

  return v7;
}

+ (void)saveTermsAcceptance:(id)acceptance reply:(id)reply
{
  acceptanceCopy = acceptance;
  replyCopy = reply;
  v10 = objc_msgSend__ClassCreateSecureBackupConcurrentConnection(self, v8, v9);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22E9D9F64;
  v23[3] = &unk_278859628;
  v11 = replyCopy;
  v24 = v11;
  v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v12, v23);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9D9FD8;
  activity_block[3] = &unk_278859678;
  v19 = v13;
  v20 = acceptanceCopy;
  v21 = v10;
  v22 = v11;
  v14 = v11;
  v15 = v10;
  v16 = acceptanceCopy;
  v17 = v13;
  _os_activity_initiate(&dword_22E9CA000, "calling saveTermsAcceptance in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

+ (void)getAcceptedTermsForAltDSID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v10 = objc_msgSend__ClassCreateSecureBackupConcurrentConnection(self, v8, v9);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22E9DA2E4;
  v23[3] = &unk_278859628;
  v11 = replyCopy;
  v24 = v11;
  v13 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v10, v12, v23);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9DA35C;
  activity_block[3] = &unk_278859678;
  v19 = v13;
  v20 = dCopy;
  v21 = v10;
  v22 = v11;
  v14 = v11;
  v15 = v10;
  v16 = dCopy;
  v17 = v13;
  _os_activity_initiate(&dword_22E9CA000, "calling getAcceptedTermsForAltDSID in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

+ (id)_getAcceptedTermsForAltDSID:(id)d withError:(id *)error
{
  dCopy = d;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_22E9D27B0;
  v35 = sub_22E9D27C0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_22E9D27B0;
  v29 = sub_22E9D27C0;
  v30 = 0;
  v9 = objc_msgSend__ClassCreateSecureBackupConcurrentConnection(self, v7, v8);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_22E9DA7A4;
  v24[3] = &unk_2788597E0;
  v24[4] = &v31;
  v11 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v9, v10, v24);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22E9DA814;
  v18[3] = &unk_278859830;
  v19 = v11;
  v12 = dCopy;
  v22 = &v31;
  v23 = &v25;
  v20 = v12;
  v21 = v9;
  v13 = v9;
  v14 = v11;
  _os_activity_initiate(&dword_22E9CA000, "calling getAcceptedTermsForAltDSID in daemon", OS_ACTIVITY_FLAG_DEFAULT, v18);

  if (error)
  {
    v15 = v32[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

+ (id)getAcceptedTermsForAltDSID:(id)d withError:(id *)error
{
  v4 = objc_msgSend__getAcceptedTermsForAltDSID_withError_(self, a2, d, error);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(v4, v7, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)moveToFederationAllowed:(id)allowed altDSID:(id)d error:(id *)error
{
  allowedCopy = allowed;
  dCopy = d;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_22E9D27B0;
  v38 = sub_22E9D27C0;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v12 = objc_msgSend__ClassCreateSecureBackupConcurrentConnection(self, v10, v11);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22E9DAC84;
  v29[3] = &unk_2788597E0;
  v29[4] = &v34;
  v14 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v12, v13, v29);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9DACF4;
  activity_block[3] = &unk_2788598A8;
  v23 = v14;
  v15 = allowedCopy;
  v24 = v15;
  v16 = dCopy;
  v27 = &v30;
  v28 = &v34;
  v25 = v16;
  v26 = v12;
  v17 = v12;
  v18 = v14;
  _os_activity_initiate(&dword_22E9CA000, "calling moveToFederationAllowed in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (error)
  {
    v19 = v35[5];
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v20;
}

+ (id)knownICDPFederations:(id *)federations
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_22E9D27B0;
  v28 = sub_22E9D27C0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_22E9D27B0;
  v22 = sub_22E9D27C0;
  v23 = 0;
  v4 = objc_msgSend__ClassCreateSecureBackupConcurrentConnection(self, a2, federations);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22E9DB0D4;
  v17[3] = &unk_2788597E0;
  v17[4] = &v24;
  v6 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v4, v5, v17);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = sub_22E9DB144;
  activity_block[3] = &unk_278859920;
  v15 = &v18;
  v16 = &v24;
  v13 = v6;
  v14 = v4;
  v7 = v4;
  v8 = v6;
  _os_activity_initiate(&dword_22E9CA000, "calling knownICDPFederations in daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if (federations)
  {
    v9 = v25[5];
    if (v9)
    {
      *federations = v9;
    }
  }

  v10 = v19[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

@end