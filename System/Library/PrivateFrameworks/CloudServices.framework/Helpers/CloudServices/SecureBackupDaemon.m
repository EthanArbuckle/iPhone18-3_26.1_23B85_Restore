@interface SecureBackupDaemon
- (BOOL)_backupEnabled;
- (BOOL)_restoreKeychainWithBackupPassword:(id)a3 keybagDigest:(id)a4 error:(id *)a5;
- (BOOL)_restoreView:(id)a3 password:(id)a4 keybagDigest:(id)a5 restoredViews:(id)a6 error:(id *)a7;
- (BOOL)_usesEscrow;
- (BOOL)backupAllowed;
- (BOOL)backupSetConfirmedManifest:(id)a3 digest:(id)a4 manifest:(id)a5 error:(id *)a6;
- (BOOL)backupSliceKeybagHasRecoveryKey:(id)a3;
- (BOOL)backupWithChanges:(id)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)backupWithRegisteredBackupViewWithError:(id)a3 error:(id *)a4;
- (BOOL)backupWithRegisteredBackupsWithError:(id *)a3 handler:(id)a4;
- (BOOL)hasRecoveryKeyInKVS:(id)a3 error:(id *)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)registerSingleRecoverySecret:(id)a3 iCDP:(BOOL)a4 error:(id *)a5;
- (BOOL)removeRecoveryKey:(id *)a3;
- (BOOL)verifyRKWithKeyBag:(id)a3 password:(id)a4 error:(id *)a5;
- (BOOL)verifyRecoveryKey:(id)a3 error:(id *)a4;
- (NSString)cachedPassphrase;
- (NSString)cachedRecordIDPassphrase;
- (NSURL)cachedKeychainURL;
- (NSURL)cachedManifestURL;
- (SecureBackupDaemon)initWithOperationsLogger:(id)a3;
- (id)_EMCSBackup;
- (id)_EMCSBackupDictForKeybagDigest:(id)a3;
- (id)_KVSKeybag;
- (id)_consumeBackupJournal;
- (id)_consumeFullBackupForRecordID:(id)a3;
- (id)_consumeViewBackup:(id)a3 recordID:(id)a4;
- (id)_createBackupKeybagWithPassword:(id)a3;
- (id)_gestaltValueForKey:(__CFString *)a3;
- (id)_getDERBackupFromKVS;
- (id)_getICDPBackupFromKVS:(id)a3 forView:(id)a4;
- (id)_getKeychainItemForKey:(id)a3 status:(int *)a4;
- (id)_getLastBackupTimestamp;
- (id)_getProtectedKeychainAndKeybagDigestFromKVS:(id *)a3;
- (id)_metadata;
- (id)_pushCachedKeychainToKVS;
- (id)_pushCachedKeychainToKVSForView:(id)a3 recordID:(id)a4;
- (id)_recordIDFromLabel:(id)a3 withPrefix:(id)a4 suffix:(id)a5;
- (id)allViews;
- (id)cachedPassphraseForFD:(int)a3;
- (id)cachedRecoveryKey;
- (id)circleChangedNotification;
- (id)copyBackupKeyForNewDeviceRecoverySecret:(id)a3 error:(id *)a4;
- (id)copyEncodedData:(id)a3 error:(id *)a4;
- (id)copyKVSState;
- (id)copyMyPeerID;
- (id)copyMyPeerIDWithError:(id *)a3;
- (id)copyMyPeerInfo:(id *)a3;
- (id)copyMyPeerWithNewDeviceRecoverySecret:(id)a3 error:(id *)a4;
- (id)copyOSVersion:(id)a3;
- (id)copyPeerID:(id)a3;
- (id)createDERDataFromPlist:(id)a3;
- (id)createEncodedDirectBackupSliceKeybagFromData:(id)a3 error:(id *)a4;
- (id)createPeerInfoFromData:(id)a3 error:(id *)a4;
- (id)createPlistFromDERData:(id)a3;
- (id)createiCloudRecoveryPasswordWithError:(id *)a3;
- (id)currentClientMetadata;
- (id)currentMachineID;
- (id)currentViews;
- (id)derDataFromDict:(id)a3;
- (id)encodedStatsForViews:(id)a3;
- (id)ensureClientMetadata:(id)a3 forRequest:(id)a4;
- (id)fetchPRK:(id *)a3;
- (id)filteriCDPRecords:(id)a3;
- (id)getPendingEscrowRequest:(id *)a3;
- (id)keysOfEntriesContainingObject:(id)a3 backups:(id)a4;
- (id)kvs;
- (id)makeRecordCandidate:(id)a3 error:(id *)a4;
- (id)massageIncomingMetadataFromInfo:(id)a3;
- (id)massageOutgoingMetadataFromRequest:(id)a3;
- (id)normalizeSMSTarget:(id)a3 error:(id *)a4;
- (id)removeRKFromKeyBag:(id)a3 error:(id *)a4;
- (id)restoreBackup:(id)a3 withName:(id)a4 keybagDigest:(id)a5 keybag:(id)a6 password:(id)a7;
- (id)restoreEMCSBackup:(id)a3 keybag:(id)a4 password:(id)a5;
- (id)restoreEMCSBackup:(id)a3 withPassword:(id)a4;
- (id)secureBackups;
- (id)sortRecordsByBottleID:(id)a3;
- (id)tagStaleBottleRecords:(id)a3 suggestedBottles:(id)a4;
- (int)getPasscodeRequestFlag:(unint64_t *)a3;
- (int)notifyToken;
- (int)setPasscodeRequestFlag:(unint64_t)a3;
- (int)storeCachedPassphrase:(id)a3;
- (int64_t)compare:(id)a3 with:(id)a4 backups:(id)a5;
- (int64_t)compareEscrowDatesBetweenCurrentRecord:(id)a3 andCandidateRecord:(id)a4;
- (os_state_data_s)_stateCapture;
- (void)_backupCloudIdentityKeychainViewAndPushToKVSCheckBackupEnabled:(BOOL)a3;
- (void)_backupKeychainFully:(BOOL)a3 reply:(id)a4;
- (void)_deleteAlliCDPRecordsWithContext:(id)a3;
- (void)_disableBackup;
- (void)_enumerateICDPBackupsUsingBlock:(id)a3;
- (void)_fetchStingrayAccountStatusInDaemon:(id)a3 reply:(id)a4;
- (void)_getAccountInfoWithRequest:(id)a3 reply:(id)a4;
- (void)_recoverSilentWithCDPContext:(id)a3 allRecords:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8;
- (void)_recoverWithCDPContext:(id)a3 escrowRecord:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8;
- (void)_recoverWithRequest:(id)a3 reply:(id)a4;
- (void)_removeCachedKeychain;
- (void)_removeKVSKeybag;
- (void)_removeKeychainItemForKey:(id)a3;
- (void)_removeMetadata;
- (void)_removeProtectedKeychain;
- (void)_removeUsesEscrow;
- (void)_removeVeeTwoBackup;
- (void)_restoreKeychainAsyncWithBackupBag:(id)a3 password:(id)a4 keybagDigest:(id)a5 haveBottledPeer:(BOOL)a6 restoredViews:(id)a7 viewsNotToBeRestored:(id)a8;
- (void)_saveKeychainItem:(id)a3 forKey:(id)a4;
- (void)_setAutobackupEnabledWithReply:(id)a3;
- (void)_setEMCSBackup:(id)a3 keybag:(id)a4;
- (void)_setKVSKeybag:(id)a3;
- (void)_setMetadata:(id)a3;
- (void)_stashRecoveryDataWithRequest:(id)a3 reply:(id)a4;
- (void)_storeProtectedKeychainInKVS:(id)a3 keybagDigest:(id)a4;
- (void)_storeVeeTwoBackupInKVS:(id)a3 forViewName:(id)a4 withKeyStore:(id)a5 manifestDigest:(id)a6 keybagDigest:(id)a7;
- (void)backOffDateWithRequest:(id)a3 reply:(id)a4;
- (void)backupForRecoveryKeyWithInfo:(id)a3 garbageCollect:(BOOL)a4 reply:(id)a5;
- (void)backupWithInfo:(id)a3 garbageCollect:(BOOL)a4 reply:(id)a5;
- (void)beginHSA2PasscodeRequest:(id)a3 desirePasscodeImmediately:(BOOL)a4 uuid:(id)a5 reason:(id)a6 reply:(id)a7;
- (void)cachePassphraseWithRequest:(id)a3 reply:(id)a4;
- (void)cacheRecoveryKeyWithRequest:(id)a3 reply:(id)a4;
- (void)changeSMSTargetWithRequest:(id)a3 reply:(id)a4;
- (void)clearNotifyToken;
- (void)createICDPRecordWithRequest:(id)a3 recordContents:(id)a4 reply:(id)a5;
- (void)daemonPasscodeRequestOpinion:(id)a3;
- (void)deleteAlliCDPRecordsWithRequest:(id)a3 reply:(id)a4;
- (void)disableWithRequest:(id)a3 reply:(id)a4;
- (void)disableiCDPBackup;
- (void)doEnableEscrowMultiICSCWithRequest:(id)a3 reply:(id)a4;
- (void)enableGuitarfishTokenWithRequest:(id)a3 reply:(id)a4;
- (void)enableWithRequest:(id)a3 reply:(id)a4;
- (void)fetchStingrayAccountStatusInDaemon:(id)a3 reply:(id)a4;
- (void)garbageCollectEMCSBackupsExcluding:(id)a3;
- (void)getAcceptedTermsForAltDSID:(id)a3 reply:(id)a4;
- (void)getAccountInfoWithRequest:(id)a3 reply:(id)a4;
- (void)getCertificatesWithRequest:(id)a3 reply:(id)a4;
- (void)getCountrySMSCodesWithRequest:(id)a3 reply:(id)a4;
- (void)handleEscrowStoreResults:(id)a3 escrowError:(id)a4 request:(id)a5 peerID:(id)a6 newRecordMetadata:(id)a7 backupKeybag:(id)a8 reply:(id)a9;
- (void)handleNotification:(id)a3;
- (void)isRecoveryKeySetInDaemon:(id)a3;
- (void)knownICDPFederations:(id)a3;
- (void)moveToFederationAllowed:(id)a3 altDSID:(id)a4 reply:(id)a5;
- (void)notificationInfoWithReply:(id)a3;
- (void)notificationOccurred:(id)a3;
- (void)prepareHSA2EscrowRecordContents:(id)a3 usesComplexPassphrase:(BOOL)a4 reply:(id)a5;
- (void)recordIDAndMetadataForSilentAttempt:(id)a3 passphraseLength:(unint64_t)a4 platform:(int)a5 reply:(id)a6;
- (void)recordNotification:(id)a3 handled:(BOOL)a4;
- (void)recoverEscrowWithRequest:(id)a3 reply:(id)a4;
- (void)recoverGuitarfishTokenWithRequest:(id)a3 reply:(id)a4;
- (void)recoverRecordContentsWithRequest:(id)a3 reply:(id)a4;
- (void)recoverSilentWithCDPContextInDaemon:(id)a3 allRecords:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8;
- (void)recoverSilentWithCDPContextInDaemon:(id)a3 allRecords:(id)a4 reply:(id)a5;
- (void)recoverWithCDPContextInDaemon:(id)a3 escrowRecord:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8;
- (void)recoverWithCDPContextInDaemon:(id)a3 escrowRecord:(id)a4 reply:(id)a5;
- (void)recoverWithRequest:(id)a3 reply:(id)a4;
- (void)registerForNotifyEvent:(id)a3;
- (void)removeRecoveryKeyFromBackupInDaemon:(id)a3;
- (void)restoreBackupName:(id)a3 peerID:(id)a4 keybag:(id)a5 password:(id)a6 backup:(id)a7 reply:(id)a8;
- (void)restoreKeychainWithBackupPasswordInDaemon:(id)a3 reply:(id)a4;
- (void)saveTermsAcceptance:(id)a3 reply:(id)a4;
- (void)setBackOffDateWithRequest:(id)a3 reply:(id)a4;
- (void)setCachedPassphrase:(id)a3;
- (void)setCachedRecordIDPassphrase:(id)a3;
- (void)setCachedRecoveryKey:(id)a3;
- (void)setEMCSDict:(id)a3 backupKeybag:(id)a4 saveKeybag:(BOOL)a5 reply:(id)a6;
- (void)setPasscodeMetadata:(id)a3 passphraseType:(int)a4;
- (void)setupNotifyEvents;
- (void)sortForMatchingPassphraseLengthAndPlatform:(id)a3 secureBackups:(id)a4 passphraseLength:(unint64_t)a5 platform:(unint64_t)a6 reply:(id)a7;
- (void)startSMSChallengeWithRequest:(id)a3 reply:(id)a4;
- (void)stashRecoveryDataWithRequest:(id)a3 reply:(id)a4;
- (void)stateCaptureWithReply:(id)a3;
- (void)storeDERBackupInKVS:(id)a3;
- (void)synchronizeKVSWithHandler:(id)a3;
- (void)uncachePassphraseWithRequest:(id)a3 reply:(id)a4;
- (void)uncacheRecordIDPassphrase;
- (void)uncacheRecoveryKeyWithRequest:(id)a3 reply:(id)a4;
- (void)unregisterForNotifyEvent:(id)a3;
- (void)updateMetadataWithRequest:(id)a3 reply:(id)a4;
- (void)verifyRecoveryKeyInDaemon:(id)a3 reply:(id)a4;
@end

@implementation SecureBackupDaemon

- (id)_createBackupKeybagWithPassword:(id)a3
{
  v15 = -1;
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];

  v6 = sub_100047F88(v4, v5, 4, &v15);
  if (v6)
  {
    v7 = v6;
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v18) = 67109120;
      HIDWORD(v18) = v7;
      v9 = "ask_create_bag() returned %d";
      v10 = &v18;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v18 = 0;
  sub_10004F640();
  if (v11)
  {
    v12 = v11;
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v12;
      v9 = "aks_save_bag() returned %d";
      v10 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v13 = 0;
    goto LABEL_9;
  }

  v13 = [NSData dataWithBytes:v18 length:1];
  if (v18)
  {
    free(v18);
  }

LABEL_9:

  return v13;
}

- (void)_saveKeychainItem:(id)a3 forKey:(id)a4
{
  v13[0] = kSecAttrAccount;
  v13[1] = kSecAttrService;
  v14[0] = a4;
  v14[1] = @"SecureBackupService";
  v13[2] = kSecClass;
  v13[3] = kSecAttrSynchronizable;
  v14[2] = kSecClassGenericPassword;
  v14[3] = &__kCFBooleanTrue;
  v13[4] = kSecAttrAccessible;
  v13[5] = kSecValueData;
  v14[4] = kSecAttrAccessibleAfterFirstUnlock;
  v14[5] = a3;
  v5 = a4;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:6];

  v8 = SecItemAdd(v7, 0);
  if (v8)
  {
    v9 = v8;
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SecItemAdd() returned %ld", &v11, 0xCu);
    }
  }
}

- (void)_removeKeychainItemForKey:(id)a3
{
  v10[0] = kSecAttrAccount;
  v10[1] = kSecAttrService;
  v11[0] = a3;
  v11[1] = @"SecureBackupService";
  v10[2] = kSecClass;
  v10[3] = kSecAttrSynchronizable;
  v11[2] = kSecClassGenericPassword;
  v11[3] = &__kCFBooleanTrue;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  v5 = SecItemDelete(v4);
  if (v5)
  {
    v6 = v5;
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SecItemDelete() returned %ld", &v8, 0xCu);
    }
  }
}

- (id)_getKeychainItemForKey:(id)a3 status:(int *)a4
{
  v5 = a3;
  result = 0;
  v15[0] = kSecAttrAccount;
  v15[1] = kSecAttrService;
  v16[0] = v5;
  v16[1] = @"SecureBackupService";
  v15[2] = kSecClass;
  v15[3] = kSecAttrSynchronizable;
  v16[2] = kSecClassGenericPassword;
  v16[3] = &__kCFBooleanTrue;
  v15[4] = kSecReturnData;
  v16[4] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
  v7 = SecItemCopyMatching(v6, &result);
  v8 = v7;
  if (a4)
  {
    *a4 = v7;
  }

  if (v7 != -25300 && v7)
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching() returned %ld", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = result;
  }

  return v9;
}

- (void)_storeProtectedKeychainInKVS:(id)a3 keybagDigest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SecureBackupDaemon *)self kvs];
  v9 = +[CSDateUtilities posixDateFormatter];
  v10 = +[NSDate date];
  v11 = [v9 stringFromDate:v10];

  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Storing keychain in KVS @%@", &v14, 0xCu);
  }

  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:v11 forKeyedSubscript:kSecureBackupTimestampKey];
  [v13 setObject:v7 forKeyedSubscript:@"com.apple.securebackup.keychain"];

  [v13 setObject:v6 forKeyedSubscript:kSecureBackupKeybagDigestKey];
  [v8 setDictionary:v13 forKey:@"com.apple.securebackup.record"];
}

- (void)_storeVeeTwoBackupInKVS:(id)a3 forViewName:(id)a4 withKeyStore:(id)a5 manifestDigest:(id)a6 keybagDigest:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v34 = a7;
  context = objc_autoreleasePoolPush();
  v15 = [[NSString alloc] initWithFormat:@"%@.%@", @"com.apple.icdp.backup", v12];
  v32 = [v13 dictionaryForKey:v15];
  v16 = [v32 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v17 = [v11 objectForKeyedSubscript:@"keybag"];
  v18 = [v16 objectForKeyedSubscript:@"backup"];
  v19 = [v11 objectForKeyedSubscript:@"backup"];
  v31 = v17;
  if ([v18 isEqual:v19])
  {
    v20 = [v16 objectForKeyedSubscript:@"keybag"];
    v21 = [v20 isEqual:v17];

    if (v21)
    {
      v22 = CloudServicesLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "skipping identical backup for %@", buf, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v22 = objc_alloc_init(NSDate);
  v23 = [v12 substringToIndex:{objc_msgSend(v12, "rangeOfString:", @"-tomb"}];
  v30 = v14;
  v24 = [v14 hexString];
  v25 = [v24 substringToIndex:6];

  v26 = [v34 hexString];
  v27 = [v26 substringToIndex:6];

  v28 = CloudServicesLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v38 = v25;
    v39 = 2112;
    v40 = v27;
    v41 = 2112;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "backing up manifest digest %@, keybag digest %@, view %@", buf, 0x20u);
  }

  v35[0] = kSecureBackupTimestampKey;
  v35[1] = @"com.apple.securebackup.keychain";
  v36[0] = v22;
  v36[1] = v11;
  v29 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v13 setDictionary:v29 forKey:v15];

  v14 = v30;
LABEL_9:

  objc_autoreleasePoolPop(context);
}

- (void)_removeCachedKeychain
{
  v3 = [(SecureBackupDaemon *)self cachedKeychainURL];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [(SecureBackupDaemon *)self cachedKeychainURL];
    v9 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0 && [v7 code] != 4)
    {
      v8 = CloudServicesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "error removing keychain: %@", buf, 0xCu);
      }
    }
  }
}

- (id)derDataFromDict:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010150;
  v8[3] = &unk_1000751D0;
  v9 = objc_alloc_init(NSMutableDictionary);
  v5 = v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [(SecureBackupDaemon *)self createDERDataFromPlist:v5];

  return v6;
}

- (void)storeDERBackupInKVS:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = +[CSDateUtilities posixDateFormatter];
  v7 = +[NSDate date];
  v8 = [v6 stringFromDate:v7];

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Storing DER keychain in KVS @%@", &v11, 0xCu);
  }

  v10 = +[NSMutableDictionary dictionary];
  [v10 setObject:v8 forKeyedSubscript:kSecureBackupTimestampKey];
  [v10 setObject:v4 forKeyedSubscript:@"com.apple.securebackup.keychain"];

  [v5 setDictionary:v10 forKey:@"DERBackup"];
}

- (id)_pushCachedKeychainToKVSForView:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SecureBackupDaemon *)self kvs];
  v9 = [[SecureBackupViewStore alloc] initWithViewName:v6 recordID:v7];

  v10 = [(SecureBackupViewStore *)v9 backupData];
  if (v10)
  {
    if ([v6 isEqualToString:@"KeychainV0-tomb"])
    {
      v11 = [(SecureBackupDaemon *)self _getProtectedKeychainAndKeybagDigestFromKVS:0];
      v12 = [(SecureBackupViewStore *)v9 backupDict];
      v13 = [(SecureBackupViewStore *)v9 keybagDigest];
      v14 = v11;
      v15 = v12;
      if (v14 == v15)
      {
        goto LABEL_6;
      }

      v16 = [v14 hash];
      if (v16 != [v15 hash])
      {
        goto LABEL_16;
      }

      v17 = [v14 allKeys];
      v30 = [NSSet setWithArray:v17];

      v18 = [v15 allKeys];
      v19 = [NSSet setWithArray:v18];

      v29 = [v30 isEqualToSet:v19];
      if (v29)
      {
LABEL_6:
      }

      else
      {
LABEL_16:

        [(SecureBackupDaemon *)self _storeProtectedKeychainInKVS:v15 keybagDigest:v13];
      }
    }

    else
    {
      v14 = [(SecureBackupViewStore *)v9 keybag];
      v21 = [(SecureBackupViewStore *)v9 recordID];
      v22 = v21;
      if (v14 && v21)
      {
        v34[0] = @"backup";
        v34[1] = @"keybag";
        v35[0] = v10;
        v35[1] = v14;
        v34[2] = @"recordID";
        v35[2] = v21;
        v23 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
        v24 = [(SecureBackupViewStore *)v9 manifestHash];
        v25 = [v24 sha1Digest];
        [v14 sha1Digest];
        v31 = v22;
        v27 = v26 = v8;
        [(SecureBackupDaemon *)self _storeVeeTwoBackupInKVS:v23 forViewName:v6 withKeyStore:v26 manifestDigest:v25 keybagDigest:v27];

        v8 = v26;
        v22 = v31;
      }

      else
      {
        v23 = CloudServicesLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100049E2C();
        }
      }
    }
  }

  else
  {
    v20 = CloudServicesLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "skipping empty backup for view %@", buf, 0xCu);
    }
  }

  [(SecureBackupViewStore *)v9 closeStore];

  return 0;
}

- (id)_pushCachedKeychainToKVS
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = sub_1000109EC;
  v19[3] = sub_1000109FC;
  v20 = 0;
  obj = 0;
  v3 = [(SecureBackupDaemon *)self copyMyPeerInfo:&obj];
  objc_storeStrong(&v20, obj);
  if (v3)
  {
    v4 = [(SecureBackupDaemon *)self copyPeerID:v3];
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "backing up peer ID %@", buf, 0xCu);
    }

    v6 = [(SecureBackupDaemon *)self copyBackupKey:v3];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 sha1Digest];
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "using backup key: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100049EC8(v19);
    }

    v4 = @"unknown";
  }

  v10 = [(SecureBackupDaemon *)self kvsQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100010A04;
  v14[3] = &unk_100075220;
  v15 = v4;
  v16 = &v18;
  v14[4] = self;
  v11 = v4;
  dispatch_sync(v10, v14);

  v12 = *(v19[0] + 40);
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)_removeProtectedKeychain
{
  v3 = [(SecureBackupDaemon *)self kvs];
  v4 = [v3 objectForKey:@"com.apple.securebackup.record"];
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing backup record from @%@", &v7, 0xCu);
  }

  [v3 removeObjectForKey:@"com.apple.securebackup.record"];
  [(SecureBackupDaemon *)self _removeCachedKeychain];
}

- (id)_getProtectedKeychainAndKeybagDigestFromKVS:(id *)a3
{
  v4 = [(SecureBackupDaemon *)self kvs];
  v5 = [v4 dictionaryForKey:@"com.apple.securebackup.record"];
  v6 = CloudServicesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Retrieving keychain from @%@", &v10, 0xCu);
  }

  if (a3)
  {
    *a3 = [v5 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
  }

  v8 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];

  return v8;
}

- (id)_getICDPBackupFromKVS:(id)a3 forView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@.%@-tomb", @"com.apple.icdp.backup", v5];

  v8 = [v6 dictionaryForKey:v7];

  return v8;
}

- (void)_enumerateICDPBackupsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self kvsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010FA8;
  v7[3] = &unk_100075248;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_removeVeeTwoBackup
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 objectForKey:@"com.apple.icdp.backup"];
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing view-based backup from @%@", &v6, 0xCu);
  }

  [v2 removeObjectForKey:@"com.apple.icdp.backup"];
}

- (id)_getDERBackupFromKVS
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dictionaryForKey:@"DERBackup"];
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrieving keychain from @%@", &v8, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];

  return v6;
}

- (id)_getLastBackupTimestamp
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dictionaryForKey:@"com.apple.securebackup.record"];
  v4 = [v3 objectForKeyedSubscript:kSecureBackupTimestampKey];

  return v4;
}

- (BOOL)_backupEnabled
{
  if (_os_feature_enabled_impl())
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SOS Compatibility Mode enabled, backup is no longer supported", v7, 2u);
    }

    return 0;
  }

  else
  {
    v5 = [(SecureBackupDaemon *)self kvs];
    if ([v5 BOOLForKey:@"com.apple.securebackup.enabled"])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v5 BOOLForKey:@"com.apple.icdpbackup.enabled"];
    }
  }

  return v4;
}

- (BOOL)_usesEscrow
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 BOOLForKey:@"BackupUsesEscrow"];

  return v3;
}

- (void)_removeUsesEscrow
{
  v2 = [(SecureBackupDaemon *)self kvs];
  [v2 removeObjectForKey:@"BackupUsesEscrow"];
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = CloudServicesLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v8 = kSecureBackupMetadataKey;
  if (v7)
  {
    v9 = [v5 objectForKey:kSecureBackupMetadataKey];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Changing metadata old: %@\n\nnew: %@", &v10, 0x16u);
  }

  [v5 setDictionary:v4 forKey:v8];
}

- (id)_metadata
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dictionaryForKey:kSecureBackupMetadataKey];

  return v3;
}

- (void)_removeMetadata
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = CloudServicesLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  v5 = kSecureBackupMetadataKey;
  if (v4)
  {
    v6 = [v2 objectForKey:kSecureBackupMetadataKey];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing metadata: %@", &v7, 0xCu);
  }

  [v2 removeObjectForKey:v5];
}

- (void)_setKVSKeybag:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = [v5 dataForKey:@"BackupKeybag"];
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 sha1Digest];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overwriting keybag in KVS! Old digest: %@", &v11, 0xCu);
    }
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 sha1Digest];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving keybag in KVS digest: %@", &v11, 0xCu);
  }

  [v5 setData:v4 forKey:@"BackupKeybag"];
}

- (id)_KVSKeybag
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dataForKey:@"BackupKeybag"];

  return v3;
}

- (void)_setEMCSBackup:(id)a3 keybag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SecureBackupDaemon *)self kvs];
  v9 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.sbd.emcs" type:0];
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving EMCS backup", buf, 2u);
  }

  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];

  CFPreferencesSetAppValue(@"EMCSBackupUUID", v12, SECURE_BACKUP_SERVICE_NAME);
  [v9 setString:v12 forKey:@"EMCSBackupUUID"];
  v20[0] = @"backup";
  v20[1] = @"keybag";
  v21[0] = v6;
  v21[1] = v7;
  v20[2] = @"timestamp";
  v13 = objc_alloc_init(NSDate);
  v20[3] = @"uuid";
  v21[2] = v13;
  v21[3] = v12;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  v15 = [NSString alloc];
  v16 = [v7 sha1Digest];
  v17 = [v16 hexString];
  v18 = [v15 initWithFormat:@"%@-%@", @"EMCSBackupDict", v17];

  [v8 setDictionary:v14 forKey:v18];
  [v8 setDictionary:v14 forKey:@"EMCSBackupDict"];
}

- (id)_EMCSBackup
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dataForKey:@"EMCSBackup"];

  return v3;
}

- (id)_EMCSBackupDictForKeybagDigest:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = @"EMCSBackupDict";
  if (v4)
  {
    v7 = [NSString alloc];
    v8 = [v4 hexString];
    v6 = [v7 initWithFormat:@"%@-%@", @"EMCSBackupDict", v8];
  }

  v9 = [v5 dictionaryForKey:v6];
  if (v9)
  {
    v10 = v9;
    if (!v4)
    {
      goto LABEL_23;
    }

    v11 = [v5 dictionaryForKey:@"EMCSBackupDict"];
    v12 = [v11 objectForKeyedSubscript:@"keybag"];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        v14 = [v12 sha1Digest];
        v15 = [v4 isEqual:v14];

        if (v15)
        {
          v16 = [v10 objectForKeyedSubscript:@"timestamp"];
          if (v16)
          {
            v17 = [v11 objectForKeyedSubscript:@"timestamp"];
            v18 = [v17 compare:v16];

            if (v18 == 1)
            {
              v19 = CloudServicesLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found non-tagged EMCS backup with more recent timestamp", buf, 2u);
              }

              v20 = v11;
              v10 = v20;
            }
          }
        }
      }
    }

    goto LABEL_22;
  }

  v21 = CloudServicesLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "looking for non-tagged EMCS backup", buf, 2u);
  }

  v10 = [v5 dictionaryForKey:@"EMCSBackupDict"];
  if (!v10)
  {
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "looking for old-style EMCS backup", buf, 2u);
    }

    v11 = [v5 dataForKey:@"EMCSBackup"];
    v23 = [v5 dataForKey:@"BackupKeybag"];
    v13 = v23;
    v10 = 0;
    if (v11 && v23)
    {
      v26[0] = @"backup";
      v26[1] = @"keybag";
      v27[0] = v11;
      v27[1] = v23;
      v10 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    }

LABEL_22:
  }

LABEL_23:

  return v10;
}

- (void)garbageCollectEMCSBackupsExcluding:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = [v5 dictionaryRepresentation];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    *&v8 = 138412290;
    v14 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 isEqualToString:{@"EMCSBackupDict", v14}] & 1) == 0 && objc_msgSend(v12, "hasPrefix:", @"EMCSBackupDict") && (objc_msgSend(v12, "hasSuffix:", v4) & 1) == 0)
        {
          v13 = CloudServicesLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "garbage collecting backup %@", buf, 0xCu);
          }

          [v5 removeObjectForKey:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_removeKVSKeybag
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 objectForKey:@"BackupKeybag"];
    v5 = [v4 sha1Digest];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing keybag from KVS digest: %@", &v6, 0xCu);
  }

  [v2 removeObjectForKey:@"BackupKeybag"];
}

- (void)_setAutobackupEnabledWithReply:(id)a3
{
  [(SecureBackupDaemon *)self _backupFullKeychainWithReply:a3];
  v4 = [(SecureBackupDaemon *)self circleChangedNotification];
  [(SecureBackupDaemon *)self unregisterForNotifyEvent:v4];

  [(SecureBackupDaemon *)self setNeedInitialBackup:0];
}

- (void)_backupKeychainFully:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  if ([(SecureBackupDaemon *)self _backupEnabled])
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1000109EC;
    v17[4] = sub_1000109FC;
    v18 = os_transaction_create();
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      if (!v6)
      {
        v8 = "a";
      }

      *buf = 136315138;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calling %ssynchronous backup", buf, 0xCu);
    }

    v9 = [(SecureBackupDaemon *)self backupQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000127E4;
    v13[3] = &unk_100075270;
    v13[4] = self;
    v16 = a3;
    v14 = v6;
    v15 = v17;
    dispatch_async(v9, v13);

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100049FAC();
    }

    if (v6)
    {
      v21 = NSLocalizedDescriptionKey;
      v22 = @"Attempt to back up when backup not enabled";
      v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [NSError errorWithDomain:kSecureBackupErrorDomain code:16 userInfo:v11];
      (*(v6 + 2))(v6, v12);
    }
  }
}

- (void)_backupCloudIdentityKeychainViewAndPushToKVSCheckBackupEnabled:(BOOL)a3
{
  if (!a3)
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_backupCloudIdentityKeychainViewAndPushToKVS: not checking if backup is enabled", buf, 2u);
    }

    goto LABEL_9;
  }

  if ([(SecureBackupDaemon *)self _backupEnabled])
  {
LABEL_9:
    *buf = 0;
    v9 = buf;
    v10 = 0x3032000000;
    v11 = sub_1000109EC;
    v12 = sub_1000109FC;
    v13 = os_transaction_create();
    v6 = [(SecureBackupDaemon *)self backupQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012A74;
    v7[3] = &unk_100075298;
    v7[4] = self;
    v7[5] = buf;
    dispatch_async(v6, v7);

    _Block_object_dispose(buf, 8);
    return;
  }

  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100049FE8();
  }
}

- (id)_consumeViewBackup:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v56 = a4;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_consumeViewBackup: consuming backup for view %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v107 = 0x3032000000;
  v108 = sub_1000109EC;
  v109 = sub_1000109FC;
  v110 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_1000109EC;
  v84 = sub_1000109FC;
  v85 = 0;
  v54 = CloudServicesAnalyticsBackupForViewName;
  v55 = kSecureBackupErrorDomain;
  v53 = CloudServicesAnalyticsSetConfirmedManifest;
  do
  {
    v8 = objc_autoreleasePoolPush();
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v96 = 138412290;
      v97 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_consumeViewBackup: calling SecItemBackupWithChanges() for viewname: %@", v96, 0xCu);
    }

    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v67 = 0;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000137E4;
    v58[3] = &unk_1000752C0;
    v61 = &v86;
    v62 = &v76;
    v63 = &v80;
    v10 = v6;
    v59 = v10;
    v11 = v56;
    v60 = v11;
    p_buf = &buf;
    v65 = &v72;
    v66 = &v68;
    v12 = [(SecureBackupDaemon *)self backupWithChanges:v10 error:&v67 handler:v58];
    v13 = v67;
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "false";
      if (v12)
      {
        v15 = "true";
      }

      v16 = *(v77 + 6);
      v17 = *(v73 + 6);
      v18 = *(v69 + 6);
      *v96 = 138413314;
      v97 = v6;
      v98 = 2080;
      v99 = v15;
      v100 = 1024;
      v101 = v16;
      v102 = 1024;
      v103 = v17;
      v104 = 1024;
      v105 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_consumeViewBackup: SecItemBackupWithChanges() for view %@ returned %s (%d reset, %d add, %d remove)", v96, 0x28u);
    }

    if ((v12 & 1) == 0)
    {
      if (v13)
      {
        v26 = [v13 domain];
        if ([v26 isEqualToString:NSPOSIXErrorDomain])
        {
          v27 = [v13 code] == 2;

          if (v27)
          {
            v20 = CloudServicesLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *v96 = 138412290;
              v97 = v6;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "_consumeViewBackup: SecKeychainBackupWithChanges: no journal file, skipping %@", v96, 0xCu);
            }

            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v36 = CloudServicesLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v96 = 138412546;
        v97 = v6;
        v98 = 2112;
        v99 = v13;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "_consumeViewBackup: SecKeychainBackupWithChanges for view %@ failed: %@", v96, 0x16u);
      }

      if (v13)
      {
        v37 = +[CloudServicesAnalytics logger];
        v94 = @"view";
        v95 = v10;
        v38 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        [v37 logUnrecoverableError:v13 forEvent:v54 withAttributes:v38];
      }

      v20 = objc_alloc_init(NSMutableDictionary);
      [v20 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
      v39 = [NSError errorWithDomain:v55 code:24 userInfo:v20];
      v40 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v39;

      goto LABEL_31;
    }

    if (*(*(&buf + 1) + 40))
    {
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v49 = *(*(&buf + 1) + 40);
        *v96 = 138412546;
        v97 = v6;
        v98 = 2112;
        v99 = v49;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "_consumeViewBackup: Handling events for view %@ failed: %@", v96, 0x16u);
      }

      v20 = objc_alloc_init(NSMutableDictionary);
      [v20 setObject:*(*(&buf + 1) + 40) forKeyedSubscript:NSUnderlyingErrorKey];
      v21 = [NSError errorWithDomain:v55 code:24 userInfo:v20];
      v22 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v21;

      v23 = +[CloudServicesAnalytics logger];
      v24 = *(*(&buf + 1) + 40);
      v92 = @"view";
      v93 = v10;
      v25 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      [v23 logUnrecoverableError:v24 forEvent:v54 withAttributes:v25];

LABEL_31:
      v35 = 0;
      goto LABEL_32;
    }

    v28 = CloudServicesLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v96 = 138412290;
      v97 = v6;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "_consumeViewBackup: Successfully handled event for view: %@", v96, 0xCu);
    }

    v29 = +[CloudServicesAnalytics logger];
    [v29 logSuccessForEvent:v54];

    v30 = v81[5];
    if (!v30)
    {
      v35 = 1;
      goto LABEL_33;
    }

    v31 = [v30 keybagDigest];
    v32 = [v81[5] manifestHash];
    v33 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    v34 = [(SecureBackupDaemon *)self backupSetConfirmedManifest:v10 digest:v31 manifest:v32 error:&obj];
    objc_storeStrong((v33 + 40), obj);

    if ((v34 & 1) == 0)
    {
      v41 = CloudServicesLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v50 = *(*(&buf + 1) + 40);
        *v96 = 138412546;
        v97 = v6;
        v98 = 2112;
        v99 = v50;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "_consumeViewBackup: SecItemBackupSetConfirmedManifest for view %@ failed: %@", v96, 0x16u);
      }

      if ([*(*(&buf + 1) + 40) code] != -25308 || (objc_msgSend(*(*(&buf + 1) + 40), "domain"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "isEqualToString:", NSOSStatusErrorDomain), v42, (v43 & 1) == 0))
      {
        v44 = +[CloudServicesAnalytics logger];
        v45 = *(*(&buf + 1) + 40);
        v90 = @"view";
        v91 = v10;
        v46 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        [v44 logUnrecoverableError:v45 forEvent:v53 withAttributes:v46];
      }

      v20 = objc_alloc_init(NSMutableDictionary);
      [v20 setObject:*(*(&buf + 1) + 40) forKeyedSubscript:NSUnderlyingErrorKey];
      v47 = [NSError errorWithDomain:v55 code:24 userInfo:v20];
      v48 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v47;

      goto LABEL_31;
    }

    v20 = +[CloudServicesAnalytics logger];
    [v20 logSuccessForEvent:v53];
    v35 = 1;
LABEL_32:

LABEL_33:
    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v76, 8);

    objc_autoreleasePoolPop(v8);
  }

  while (v35 && *(v87 + 24) != 1);
  [v81[5] closeStore];
  v51 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&buf, 8);

  return v51;
}

- (id)_consumeFullBackupForRecordID:(id)a3
{
  v4 = a3;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "consuming full backup", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x3032000000;
  v28 = sub_1000109EC;
  v29 = sub_1000109FC;
  v30 = 0;
  v23 = buf;
  v24 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100013E84;
  v20 = &unk_1000751F8;
  v21 = self;
  v6 = v4;
  v22 = v6;
  v7 = [(SecureBackupDaemon *)self backupWithRegisteredBackupsWithError:&v24 handler:&v17];
  v8 = v24;
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    if (v7)
    {
      v10 = "true";
    }

    *v31 = 136315138;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecItemBackupWithRegisteredBackups() returned %s", v31, 0xCu);
  }

  if (v7)
  {
    v11 = [CloudServicesAnalytics logger:v17];
    [v11 logSuccessForEvent:CloudServicesAnalyticsBackupWithChangesFull];
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004A204();
    }

    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:v8 forKeyedSubscript:{NSUnderlyingErrorKey, v17, v18, v19, v20, v21}];
    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v11];
    v14 = *(v26 + 5);
    *(v26 + 5) = v13;
  }

  v15 = *(v26 + 5);
  _Block_object_dispose(buf, 8);

  return v15;
}

- (id)_consumeBackupJournal
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000109EC;
  v31 = sub_1000109FC;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001423C;
  v17[3] = &unk_100075310;
  v20 = &v27;
  v18 = self;
  v3 = [(SecureBackupDaemon *)self copyMyPeerID];
  v19 = v3;
  v21 = &v23;
  v4 = [(SecureBackupDaemon *)v18 backupWithRegisteredBackupsWithError:&v22 handler:v17];
  v5 = v22;
  v6 = CloudServicesLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "false";
    if (v4)
    {
      v7 = "true";
    }

    *buf = 136315138;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecItemBackupWithRegisteredBackups() returned %s", buf, 0xCu);
  }

  if ((v4 & 1) == 0)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004A204();
    }

    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:v5 forKeyedSubscript:NSUnderlyingErrorKey];
    v10 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v9];
    v11 = v28[5];
    v28[5] = v10;
  }

  if (*(v24 + 24) == 1)
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "forcing KVS push", buf, 2u);
    }

    v13 = [(SecureBackupDaemon *)self _pushCachedKeychainToKVS];
    v14 = v28[5];
    v28[5] = v13;
  }

  v15 = v28[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

- (void)_disableBackup
{
  [(SecureBackupDaemon *)self _removeKeychainItemForKey:@"SecureBackupPublicKeybag"];
  [(SecureBackupDaemon *)self _removeKVSKeybag];
  [(SecureBackupDaemon *)self _removeMetadata];
  [(SecureBackupDaemon *)self _removeProtectedKeychain];
  [(SecureBackupDaemon *)self _removeKeychainItemForKey:@"SecureBackupEscrowCert"];

  [(SecureBackupDaemon *)self _setBackupEnabled:0 iCDP:0];
}

- (void)disableiCDPBackup
{
  [(SecureBackupDaemon *)self _removeVeeTwoBackup];
  [(SecureBackupDaemon *)self _removeMetadata];

  [(SecureBackupDaemon *)self _setBackupEnabled:0 iCDP:1];
}

- (void)registerForNotifyEvent:(id)a3
{
  v3 = [a3 UTF8String];
  if (v3)
  {
    v4 = v3;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "Notification", v4);
    xpc_set_event();
  }
}

- (void)unregisterForNotifyEvent:(id)a3
{
  if ([a3 UTF8String])
  {

    xpc_set_event();
  }
}

- (id)_gestaltValueForKey:(__CFString *)a3
{
  v11 = 0;
  v4 = MGCopyAnswerWithError();
  if (!v4)
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004A4C8(a3, &v11);
    }

    v6 = +[CloudServicesAnalytics logger];
    v7 = CloudServicesAnalyticsGestalt;
    v12 = @"errorCode";
    v8 = [NSNumber numberWithInt:v11];
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v6 logHardFailureForEventNamed:v7 withAttributes:v9];
  }

  return v4;
}

- (id)normalizeSMSTarget:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 length];
  v7 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v16 - v7;
  if (v6)
  {
    memset(&v16 - v7, 170, 2 * v6);
  }

  v9 = +[NSCharacterSet decimalDigitCharacterSet];
  v10 = [v9 invertedSet];

  if ([v5 rangeOfCharacterFromSet:v10 options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        *&v8[2 * i] = u_charDigitValue([v5 characterAtIndex:i]) + 48;
      }
    }

    a4 = [NSString stringWithCharacters:v8 length:v6];
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004A548();
    }

    if (a4)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = [[NSString alloc] initWithFormat:@"attempt to enable backup with non-decimal digits in SMS target: %@", v5];
      [v13 setObject:v14 forKeyedSubscript:NSLocalizedDescriptionKey];

      *a4 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v13];

      a4 = 0;
    }
  }

  return a4;
}

- (SecureBackupDaemon)initWithOperationsLogger:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = SecureBackupDaemon;
  v6 = [(SecureBackupDaemon *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationsLogger, a3);
    v8 = +[NSFileManager defaultManager];
    v24 = 0;
    v9 = [v8 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v24];
    v10 = v24;
    v11 = [v9 URLByAppendingPathComponent:@"com.apple.sbd" isDirectory:1];
    [(SecureBackupDaemon *)v7 setCacheDirURL:v11];

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.sbd.connectionQueue", v12);
    connectionQueue = v7->_connectionQueue;
    v7->_connectionQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.sbd.backupQueue", v15);
    backupQueue = v7->_backupQueue;
    v7->_backupQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.sbd.kvsQueue", v18);
    kvsQueue = v7->_kvsQueue;
    v7->_kvsQueue = v19;

    *&v7->_cachedPassphraseFD = -1;
    v21 = v7->_connectionQueue;
    v23 = v7;
    os_state_add_handler();
    [(SecureBackupDaemon *)v23 setupNotifyEvents:_NSConcreteStackBlock];
  }

  return v7;
}

- (void)setupNotifyEvents
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(SecureBackupDaemon *)self setHandledNotifications:v3];

  v4 = objc_alloc_init(NSMutableDictionary);
  [(SecureBackupDaemon *)self setIgnoredNotifications:v4];

  v5 = +[UMUserManager sharedManager];
  v6 = [v5 isMultiUser];

  if (v6)
  {
    [(SecureBackupDaemon *)self registerForNotifyEvent:@"com.apple.security.keychainchanged"];
  }

  v7 = [(SecureBackupDaemon *)self connectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001545C;
  handler[3] = &unk_100075360;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v7, handler);
}

- (id)copyKVSState
{
  v3 = [(SecureBackupDaemon *)self kvs];
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = sub_100002B84();
    [v4 setObject:v5 forKeyedSubscript:@"uuid"];

    v6 = [v3 objectForKey:@"com.apple.securebackup.enabled"];
    [v4 setObject:v6 forKeyedSubscript:@"backup enabled"];

    v7 = [v3 objectForKey:@"com.apple.icdpbackup.enabled"];
    [v4 setObject:v7 forKeyedSubscript:@"iCDP backup enabled"];

    v8 = [v3 objectForKey:@"BackupUsesEscrow"];
    [v4 setObject:v8 forKeyedSubscript:@"uses escrow"];

    v9 = [v3 objectForKey:kSecureBackupMetadataKey];
    [v4 setObject:v9 forKeyedSubscript:@"metadata"];

    v10 = [v3 dictionaryForKey:@"com.apple.securebackup.record"];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:kSecureBackupTimestampKey];
      [v4 setObject:v12 forKeyedSubscript:@"backup timestamp"];

      v13 = [v11 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
      [v4 setObject:v13 forKeyedSubscript:@"keybag digest"];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100015784;
    v19[3] = &unk_100075388;
    v20 = objc_alloc_init(NSMutableDictionary);
    v14 = v4;
    v21 = v14;
    v15 = v20;
    [(SecureBackupDaemon *)self _enumerateICDPBackupsUsingBlock:v19];
    v16 = v21;
    v17 = v14;
  }

  else
  {
    v17 = &__NSDictionary0__struct;
  }

  return v17;
}

- (os_state_data_s)_stateCapture
{
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "capturing KVS state", buf, 2u);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [(SecureBackupDaemon *)self copyKVSState];
  if (v5)
  {
    v14 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v14];
    v7 = v14;
    if (v6)
    {
      v8 = [v6 length];
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "captured %zd bytes of KVS data", buf, 0xCu);
      }

      v10 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
      if (v10)
      {
        v11 = v10;
        v10->var0 = 1;
        v10->var1.var1 = v8;
        __strlcpy_chk();
        memcpy(v11->var4, [v6 bytes], v8);
LABEL_17:

        goto LABEL_18;
      }

      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004A5B8();
      }
    }

    else
    {
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004A5F4();
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10004A664();
  }

  v11 = 0;
LABEL_18:

  objc_autoreleasePoolPop(v4);
  return v11;
}

- (NSURL)cachedKeychainURL
{
  v3 = [(SecureBackupDaemon *)self cacheDirURL];

  if (v3)
  {
    v4 = sub_100002B84();
    if (v4)
    {
      v5 = [(SecureBackupDaemon *)self cacheDirURL];
      v6 = [v5 URLByAppendingPathComponent:v4];
      v7 = [v6 URLByAppendingPathExtension:@"plist"];
    }

    else
    {
      v8 = CloudServicesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "no uuid, could not create cache file URL", v10, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSURL)cachedManifestURL
{
  v3 = [(SecureBackupDaemon *)self cacheDirURL];

  if (v3)
  {
    v4 = sub_100002B84();
    if (v4)
    {
      v5 = [(SecureBackupDaemon *)self cacheDirURL];
      v6 = [v5 URLByAppendingPathComponent:v4];
      v7 = [v6 URLByAppendingPathExtension:@"manifest"];
    }

    else
    {
      v8 = CloudServicesLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "no uuid, could not create manifest file URL", v10, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"application-identifier"];
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 processIdentifier];
    v11 = [v6 serviceName];
    v24[0] = 67109634;
    v24[1] = v10;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sbd listener begin from pid %d (%@) [%@]", v24, 0x1Cu);
  }

  v12 = [v7 valueForEntitlement:@"com.apple.securebackupd.access"];

  if (!v12)
  {
    v18 = CloudServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10004A754(v7);
    }

    goto LABEL_13;
  }

  v13 = [v6 serviceName];
  v14 = [v13 isEqualToString:SECURE_BACKUP_SERVICE_NAME];

  if (!v14)
  {
    v19 = [v6 serviceName];
    v20 = [v19 isEqualToString:SECURE_BACKUP_CONCURRENT_SERVICE_NAME];

    if (v20)
    {
      v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SecureBackupConcurrentProtocol];
      v16 = SecureBackupSetupConcurrentProtocol();

      [v7 setExportedInterface:v16];
      [v7 setExportedObject:self];
      goto LABEL_10;
    }

    v18 = CloudServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10004A6A0(v7, v6);
    }

LABEL_13:

    v22 = 0;
    goto LABEL_14;
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SecureBackupProtocol];
  v16 = SecureBackupSetupProtocol();

  [v7 setExportedInterface:v16];
  [v7 setExportedObject:self];
  v17 = [(SecureBackupDaemon *)self connectionQueue];
  [v7 _setQueue:v17];

LABEL_10:
  [v7 resume];
  v22 = 1;
LABEL_14:

  return v22;
}

- (void)recordNotification:(id)a3 handled:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [(SecureBackupDaemon *)self handledNotifications];
  }

  else
  {
    [(SecureBackupDaemon *)self ignoredNotifications];
  }
  v9 = ;
  v7 = [v9 objectForKeyedSubscript:v6];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue] + 1);
  [v9 setObject:v8 forKeyedSubscript:v6];
}

- (void)handleNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 isEqualToString:@"com.apple.security.itembackup"];
  v6 = [v4 isEqualToString:@"com.apple.security.keychainchanged"];
  v7 = [(SecureBackupDaemon *)self circleChangedNotification];
  v8 = [v4 isEqualToString:v7];

  if ((v5 & 1) == 0 && !v6)
  {
    if (!v8 || [(SecureBackupDaemon *)self needInitialBackup])
    {
      [(SecureBackupDaemon *)self notificationOccurred:v4];
      goto LABEL_16;
    }

    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      v10 = "ignoring circle changed notification";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([(SecureBackupDaemon *)self pendingNotification])
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      v10 = "notification already pending";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, v18, 2u);
    }

LABEL_15:

    [(SecureBackupDaemon *)self recordNotification:v4 handled:0];
    goto LABEL_16;
  }

  *v18 = 0;
  v19 = v18;
  v20 = 0x3032000000;
  v21 = sub_1000109EC;
  v22 = sub_1000109FC;
  v23 = os_transaction_create();
  [(SecureBackupDaemon *)self setPendingNotification:1];
  v11 = CloudServicesLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "calling dispatch_after() to enqueue notification", buf, 2u);
  }

  v12 = dispatch_time(0, 5000000000);
  v13 = [(SecureBackupDaemon *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016410;
  block[3] = &unk_1000753B0;
  block[4] = self;
  v15 = v4;
  v16 = v18;
  dispatch_after(v12, v13, block);

  _Block_object_dispose(v18, 8);
LABEL_16:
}

- (void)notificationOccurred:(id)a3
{
  v4 = a3;
  [(SecureBackupDaemon *)self recordNotification:v4 handled:1];
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got notification: %@", buf, 0xCu);
  }

  if ([v4 isEqualToString:@"com.apple.security.itembackup"])
  {
    [(SecureBackupDaemon *)self _backupKeychain];
  }

  else if ([v4 isEqualToString:@"com.apple.security.keychainchanged"])
  {
    v6 = dispatch_semaphore_create(0);
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Backing up EMCS in response to keychain changed", buf, 2u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100016748;
    v13[3] = &unk_1000753D8;
    v14 = v6;
    v8 = v6;
    [(SecureBackupDaemon *)self backupWithInfo:0 reply:v13];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v9 = [(SecureBackupDaemon *)self circleChangedNotification];
    v10 = [v4 isEqualToString:v9];

    if (v10)
    {
      v11 = CloudServicesLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Performing initial backup", buf, 2u);
      }

      [(SecureBackupDaemon *)self _setAutobackupEnabled];
    }

    else if ([v4 isEqualToString:@"com.apple.sbd.kvstorechange"])
    {
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handling notification %@", buf, 0xCu);
      }
    }
  }
}

- (id)massageIncomingMetadataFromInfo:(id)a3
{
  v3 = kSecureBackupClientMetadataKey;
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 mutableCopy];

  v7 = [v4 objectForKeyedSubscript:kSecureBackupTimestampKey];

  v8 = [v6 objectForKeyedSubscript:kSecureBackupMetadataTimestampKey];
  v9 = kSecureBackupUsesComplexPassphraseKey;
  v10 = [v6 objectForKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
  v11 = [v10 isEqual:&__kCFBooleanTrue];

  v12 = kSecureBackupUsesNumericPassphraseKey;
  v13 = [v6 objectForKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:v12];
    v20 = kSecureBackupNumericPassphraseLengthKey;
    v18 = &off_10007A3B0;
LABEL_11:
    v19 = v6;
    goto LABEL_12;
  }

  if (!v13 || ![v13 BOOLValue])
  {
    [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:v12];
    v20 = kSecureBackupNumericPassphraseLengthKey;
    v18 = &off_10007A3C8;
    goto LABEL_11;
  }

  v15 = kSecureBackupNumericPassphraseLengthKey;
  v16 = [v6 objectForKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
  v17 = [v16 intValue];

  if (v17 == 6)
  {
    goto LABEL_7;
  }

  if (v17 == 4)
  {
    [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:v12];
    [v6 setObject:&off_10007A3C8 forKeyedSubscript:v15];
LABEL_7:
    if ([v8 isEqualToString:v7])
    {
      v18 = &__kCFBooleanFalse;
      v19 = v6;
      v20 = v9;
      goto LABEL_12;
    }
  }

  [v6 setObject:&__kCFBooleanFalse forKeyedSubscript:v12];
  v18 = &off_10007A3C8;
  v19 = v6;
  v20 = v15;
LABEL_12:
  [v19 setObject:v18 forKeyedSubscript:v20];

  return v6;
}

- (id)filteriCDPRecords:(id)a3
{
  v4 = a3;
  v36 = objc_alloc_init(NSMutableSet);
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = [(SecureBackupDaemon *)self _getICDPBackupFromKVS:v5 forView:@"iCloudIdentity"];

  if (!v6)
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004A858();
    }

    goto LABEL_27;
  }

  v7 = [v6 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v8 = [v7 objectForKeyedSubscript:@"keybag"];

  if (v8)
  {
    v9 = +[CloudServicesAnalytics logger];
    [v9 logSuccessForEvent:CloudServicesAnalyticsiCDPKeybag];

    v37 = [v8 backupKeyDigests];
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 peerIDs];
      *buf = 138412290;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "iCloudIdentity backup keybag peers: %@", buf, 0xCu);
    }

    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v37;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "keybag contains key digests %@", buf, 0xCu);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v32 = v8;
      v33 = v6;
      v34 = v4;
      v16 = *v39;
      v17 = kSecureBackupKeybagDigestKey;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:@"metadata"];
          v21 = [v20 objectForKeyedSubscript:v17];
          if (v21 && [v37 containsObject:v21])
          {
            [v36 addObject:v19];
          }

          else
          {
            v22 = CloudServicesLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v35 = [v19 objectForKeyedSubscript:@"recordID"];
              v23 = [v21 hexString];
              *buf = 138412546;
              v43 = v35;
              v44 = 2112;
              v45 = v23;
              v24 = v23;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "record id %@ cannot recover iCloudIdentity backup! (backup key digest: %@)", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v15);

      v6 = v33;
      v4 = v34;
      v8 = v32;
    }

    else
    {
    }

LABEL_27:

    if ([v36 count])
    {
      v29 = +[CloudServicesAnalytics logger];
      [v29 logSuccessForEvent:CloudServicesiCloudIdentity];
    }

    else
    {
      v29 = [CloudServicesError errorWithCode:212 error:0 format:@"iCloudIdentity not found in backup"];
      v30 = +[CloudServicesAnalytics logger];
      [v30 logUnrecoverableError:v29 forEvent:CloudServicesiCloudIdentity withAttributes:0];
    }

    v28 = [v36 allObjects];
    goto LABEL_31;
  }

  v25 = CloudServicesLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10004A7E8();
  }

  v26 = [CloudServicesError errorWithCode:211 error:0 format:@"no keybag found in iCloudIdentity backup"];
  v27 = +[CloudServicesAnalytics logger];
  [v27 logUnrecoverableError:v26 forEvent:CloudServicesAnalyticsiCDPKeybag withAttributes:0];

  v28 = &__NSArray0__struct;
LABEL_31:

  return v28;
}

- (BOOL)hasRecoveryKeyInKVS:(id)a3 error:(id *)a4
{
  v6 = [(SecureBackupDaemon *)self _getICDPBackupFromKVS:a3 forView:@"iCloudIdentity"];
  v7 = v6;
  if (!v6)
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004A894();
    }

    v15 = [CloudServicesError errorWithCode:204 error:0 format:@"could not get iCloudIdentity backup!"];
    v9 = v15;
    if (a4)
    {
      v16 = v15;
      LOBYTE(v11) = 0;
      *a4 = v9;
      goto LABEL_16;
    }

LABEL_15:
    LOBYTE(v11) = 0;
    goto LABEL_16;
  }

  v8 = [v6 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v9 = [v8 objectForKeyedSubscript:@"keybag"];

  if (!v9)
  {
    v17 = CloudServicesLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10004A7E8();
    }

    v18 = [CloudServicesError errorWithCode:211 error:0 format:@"no keybag found in for recovery key"];
    v9 = v18;
    if (a4)
    {
      v19 = v18;
      *a4 = v9;
    }

    v20 = +[CloudServicesAnalytics logger];
    [v20 logUnrecoverableError:v9 forEvent:CloudServicesAnalyticsiCDPKeybagRecoveryKey withAttributes:0];

    goto LABEL_15;
  }

  v10 = +[CloudServicesAnalytics logger];
  [v10 logSuccessForEvent:CloudServicesAnalyticsiCDPKeybagRecoveryKey];

  v11 = [(SecureBackupDaemon *)self backupSliceKeybagHasRecoveryKey:v9];
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 peerIDs];
    v22 = 138412546;
    v23 = v13;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "iCloudIdentity backup keybag peers: %@ -- returning %{BOOL}d", &v22, 0x12u);
  }

LABEL_16:
  return v11;
}

- (id)_recordIDFromLabel:(id)a3 withPrefix:(id)a4 suffix:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 length];
  v10 = [v8 length];

  v11 = v10 + (v9 + 1);
  if ([v7 length] > v11 && objc_msgSend(v7, "characterAtIndex:", v9) == 46)
  {
    v12 = [v7 substringWithRange:{v9 + 1, objc_msgSend(v7, "length") - v11}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_getAccountInfoWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[SecureBackupDaemon _getAccountInfoWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [EscrowService alloc];
  v10 = [(SecureBackupDaemon *)self operationsLogger];
  v11 = [(EscrowService *)v9 initWithOperationsLogger:v10];

  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "calling getAccountInfoWithRequest: in daemon", buf, 2u);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100017464;
  v16[3] = &unk_100075428;
  v17 = v6;
  v18 = self;
  v19 = v11;
  v20 = v7;
  v13 = v11;
  v14 = v6;
  v15 = v7;
  [(EscrowService *)v13 getAccountInfoWithRequest:v14 completionBlock:v16];
}

- (void)_fetchStingrayAccountStatusInDaemon:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SecureBackupDaemon _fetchStingrayAccountStatusInDaemon:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [EscrowService alloc];
  v10 = [(SecureBackupDaemon *)self operationsLogger];
  v11 = [(EscrowService *)v9 initWithOperationsLogger:v10];

  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "calling getAccountInfoWithRequest: in daemon", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100019400;
  v14[3] = &unk_100075450;
  v15 = v6;
  v13 = v6;
  [(EscrowService *)v11 getAccountInfoWithRequest:v7 completionBlock:v14];
}

- (id)tagStaleBottleRecords:(id)a3 suggestedBottles:(id)a4
{
  v5 = a4;
  [NSMutableArray arrayWithArray:a3];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = kEscrowServiceRecordMetadataKey;
    v26 = kSecureBackupBottleIDKey;
    v23 = kSecureBackupRecordStatusInvalid;
    v22 = kSecureBackupBottleValidityKey;
    v24 = kEscrowServiceRecordMetadataKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:v9];
        v13 = [NSMutableDictionary dictionaryWithDictionary:v12];

        v14 = [v13 objectForKeyedSubscript:v26];
        if (v14)
        {
          v15 = [v5 preferredBottleIDs];
          if ([v15 containsObject:v14])
          {
          }

          else
          {
            [v5 partialRecoveryBottleIDs];
            v16 = v7;
            v17 = v8;
            v19 = v18 = v5;
            v20 = [v19 containsObject:v14];

            v5 = v18;
            v8 = v17;
            v7 = v16;
            v9 = v24;

            if ((v20 & 1) == 0)
            {
              [v13 setObject:v23 forKeyedSubscript:v22];
            }
          }
        }

        [v11 setObject:v13 forKeyedSubscript:v9];
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  return obj;
}

- (id)sortRecordsByBottleID:(id)a3
{
  v4 = a3;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v87 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sorting %d records", buf, 8u);
  }

  v6 = objc_alloc_init(OTConfigurationContext);
  v7 = sub_10000F1A8();
  [v6 setAltDSID:v7];

  [v6 setContext:OTDefaultContext];
  v84 = 0;
  v8 = [OTClique findOptimalBottleIDsWithContextData:v6 error:&v84];
  v9 = v84;
  v10 = v9;
  if (!v8 || v9)
  {
    v64 = CloudServicesLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_10004A9CC();
    }

    goto LABEL_47;
  }

  v11 = [v8 preferredBottleIDs];
  if (!v11 || (v12 = v11, [v8 preferredBottleIDs], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
  {
    v15 = [v8 partialRecoveryBottleIDs];
    if (!v15 || (v16 = v15, [v8 partialRecoveryBottleIDs], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v16, !v18))
    {
      v64 = CloudServicesLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10004A990();
      }

LABEL_47:

      v65 = [(SecureBackupDaemon *)self tagStaleBottleRecords:v4 suggestedBottles:v8];
      goto LABEL_52;
    }
  }

  v19 = CloudServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v8 preferredBottleIDs];
    v21 = [v20 count];
    v22 = [v8 partialRecoveryBottleIDs];
    v23 = [v22 count];
    *buf = 67109376;
    *v87 = v21;
    *&v87[4] = 1024;
    *&v87[6] = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Returned %d preferred bottles, %d partial recovery bottles", buf, 0xEu);
  }

  v24 = [NSMutableArray alloc];
  v25 = [v8 preferredBottleIDs];
  v26 = [v24 initWithCapacity:{objc_msgSend(v25, "count")}];

  v27 = [NSMutableArray alloc];
  v28 = [v8 partialRecoveryBottleIDs];
  v72 = [v27 initWithCapacity:{objc_msgSend(v28, "count")}];

  v69 = +[NSMutableArray array];
  v29 = [v8 preferredBottleIDs];
  v30 = [v29 count];

  if (v30)
  {
    v31 = 0;
    do
    {
      [v26 setObject:&__NSDictionary0__struct atIndexedSubscript:v31++];
      v32 = [v8 preferredBottleIDs];
      v33 = [v32 count];
    }

    while (v31 < v33);
  }

  v73 = v26;
  v70 = v6;
  v68 = self;
  v34 = [v8 partialRecoveryBottleIDs];
  v35 = [v34 count];

  if (v35)
  {
    v36 = 0;
    do
    {
      [v72 setObject:&__NSDictionary0__struct atIndexedSubscript:v36++];
      v37 = [v8 partialRecoveryBottleIDs];
      v38 = [v37 count];
    }

    while (v36 < v38);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v71 = v4;
  v39 = v4;
  v79 = [v39 countByEnumeratingWithState:&v80 objects:v85 count:16];
  if (v79)
  {
    v78 = *v81;
    v40 = kEscrowServiceRecordMetadataKey;
    v77 = kSecureBackupBottleIDKey;
    v75 = kSecureBackupRecordStatusValid;
    v74 = kSecureBackupBottleValidityKey;
    obj = v39;
    do
    {
      for (i = 0; i != v79; i = i + 1)
      {
        if (*v81 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v80 + 1) + 8 * i);
        v43 = [NSMutableDictionary dictionaryWithDictionary:v42];
        v44 = [v42 objectForKeyedSubscript:@"recordID"];
        v45 = [v43 objectForKeyedSubscript:v40];
        v46 = [NSMutableDictionary dictionaryWithDictionary:v45];

        v47 = [v46 objectForKeyedSubscript:v77];
        if (!v47)
        {
          v53 = CloudServicesLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v87 = v44;
            v55 = v53;
            v56 = "Record %@ does not have a bottle, ignoring it";
LABEL_29:
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 0xCu);
          }

LABEL_30:

          goto LABEL_37;
        }

        v48 = [v8 preferredBottleIDs];
        v49 = [v48 indexOfObject:v47];

        v50 = v8;
        v51 = [v8 partialRecoveryBottleIDs];
        v52 = [v51 indexOfObject:v47];

        if (v49 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v53 = CloudServicesLog();
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
          if (v52 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v8 = v50;
            if (v54)
            {
              *buf = 138412290;
              *v87 = v44;
              v55 = v53;
              v56 = "Record %@ has an unknown bottle";
              goto LABEL_29;
            }

            goto LABEL_30;
          }

          v8 = v50;
          if (v54)
          {
            *buf = 138412290;
            *v87 = v44;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Record %@ in partially preferred bottle list, adding", buf, 0xCu);
          }

          [v46 setObject:v75 forKeyedSubscript:v74];
          [v43 setObject:v46 forKeyedSubscript:v40];
          [v72 setObject:v43 atIndexedSubscript:v52];
        }

        else
        {
          v57 = CloudServicesLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v87 = v44;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Record %@ in preferred bottle list, adding", buf, 0xCu);
          }

          [v46 setObject:v75 forKeyedSubscript:v74];
          [v43 setObject:v46 forKeyedSubscript:v40];
          [v73 setObject:v43 atIndexedSubscript:v49];
          v8 = v50;
        }

LABEL_37:
      }

      v39 = obj;
      v79 = [obj countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v79);
  }

  [v69 addObjectsFromArray:v73];
  [v69 addObjectsFromArray:v72];
  [v69 removeObject:&__NSDictionary0__struct];
  v58 = [v69 count];
  v59 = CloudServicesLog();
  v60 = v39;
  v61 = v59;
  if (v58)
  {
    v10 = 0;
    v6 = v70;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [v69 count];
      *buf = 67109120;
      *v87 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Returning %d sorted records", buf, 8u);
    }

    v63 = v69;
  }

  else
  {
    v66 = v60;
    v10 = 0;
    v6 = v70;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      sub_10004A90C(v66);
    }

    v63 = [(SecureBackupDaemon *)v68 tagStaleBottleRecords:v66 suggestedBottles:v8];
  }

  v65 = v63;
  v4 = v71;

LABEL_52:

  return v65;
}

- (void)synchronizeKVSWithHandler:(id)a3
{
  v4 = a3;
  if (qword_100084A90 != -1)
  {
    sub_10004AA3C();
  }

  v5 = [(SecureBackupDaemon *)self kvs];
  if (v5)
  {
    kdebug_trace();
    v6 = _CloudServicesSignpostLogSystem();
    v7 = _CloudServicesSignpostCreate(v6);
    v9 = v8;

    v10 = _CloudServicesSignpostLogSystem();
    v11 = v10;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "KVSSynchronize", " enableTelemetry=YES ", buf, 2u);
    }

    v12 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: KVSSynchronize  enableTelemetry=YES ", buf, 0xCu);
    }

    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "waiting for sync group", buf, 2u);
    }

    dispatch_group_wait(qword_100084A98, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_enter(qword_100084A98);
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "calling synchronizeWithCompletionHandler", buf, 2u);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001A8C0;
    v17[3] = &unk_1000754E8;
    v20 = v7;
    v21 = v9;
    v17[4] = self;
    v19 = v4;
    v18 = v5;
    [v18 synchronizeWithCompletionHandler:v17];
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"KVS not available";
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [NSError errorWithDomain:kSecureBackupErrorDomain code:32 userInfo:v15];
    (*(v4 + 2))(v4, v16);
  }
}

- (void)getAccountInfoWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10001AE6C;
  v20 = &unk_100075510;
  v9 = v7;
  v22 = v9;
  v10 = v8;
  v21 = v10;
  v11 = objc_retainBlock(&v17);
  v12 = [(SecureBackupDaemon *)self connectionQueue:v17];
  [v6 setQueue:v12];

  v13 = [v6 error];

  if (v13)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v15 = [v6 error];
    [v14 setObject:v15 forKeyedSubscript:NSUnderlyingErrorKey];

    v16 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v14];
    (v11[2])(v11, 0, v16);
  }

  else
  {
    [(SecureBackupDaemon *)self _getAccountInfoWithRequest:v6 reply:v11];
  }
}

- (void)fetchStingrayAccountStatusInDaemon:(id)a3 reply:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = os_transaction_create();
  v8 = [(SecureBackupDaemon *)self connectionQueue];
  [v13 setQueue:v8];

  v9 = [v13 error];

  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    [v10 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v11 = [v13 error];
    [v10 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];

    v12 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v10];
    v6[2](v6, 0, v12);
  }

  else
  {
    [(SecureBackupDaemon *)self _fetchStingrayAccountStatusInDaemon:v13 reply:v6];
  }
}

- (id)massageOutgoingMetadataFromRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [v4 mutableCopy];

  if (v5 && ([v3 stingray] & 1) == 0 && (objc_msgSend(v3, "usesRandomPassphrase") & 1) == 0)
  {
    v6 = kSecureBackupUsesComplexPassphraseKey;
    v7 = [v5 objectForKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
    v8 = [v7 isEqual:&__kCFBooleanTrue];

    if (v8)
    {
      [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
      v9 = kSecureBackupNumericPassphraseLengthKey;
      v10 = &off_10007A3C8;
      v11 = v5;
LABEL_9:
      [v11 setObject:v10 forKeyedSubscript:v9];
      goto LABEL_10;
    }

    v12 = [v5 objectForKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
    v13 = [v12 intValue];

    if (v13 == 4)
    {
      goto LABEL_10;
    }

    if (v13 == 6)
    {
      v10 = &__kCFBooleanTrue;
      v11 = v5;
      v9 = v6;
      goto LABEL_9;
    }

    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10004AAFC();
    }
  }

LABEL_10:

  return v5;
}

- (void)_stashRecoveryDataWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SecureBackupDaemon _stashRecoveryDataWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (!v10)
  {
    v15 = [v6 emcsMode];
    v16 = CloudServicesLog();
    v17 = v16;
    if (!v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004AB6C();
      }

      v48 = NSLocalizedDescriptionKey;
      v49 = @"stashRecoveryDataWithRequest called without EMCS mode set?";
      v11 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v13 = kSecureBackupErrorDomain;
      v14 = 4;
      goto LABEL_16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EMCS mode", buf, 2u);
    }

    v18 = objc_alloc_init(NSMutableDictionary);
    *buf = 0;
    v19 = [v6 emcsDict];
    v20 = [v6 emcsCred];
    if (!(v19 | v20))
    {
      v29 = CloudServicesLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10004ABA8();
      }

      v56 = NSLocalizedDescriptionKey;
      v30 = [[NSString alloc] initWithFormat:@"Missing parameter for SecEMCSCreateDerivedKey(): dict: %@nil, user credential: %@nil", &stru_1000767A0, &stru_1000767A0];
      v57 = v30;
      v19 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];

      v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v19];
      v7[2](v7, v11);
      goto LABEL_55;
    }

    if (v19)
    {
      v21 = SecEMCSCreateDerivedEMCSKey();
      if (v21)
      {
        v22 = v21;
        [v18 setObject:v21 forKeyedSubscript:@"stashedEMCSKey"];
        v23 = kSecureBackupTimestampKey;
        v24 = [v19 objectForKeyedSubscript:kSecureBackupTimestampKey];
        [v18 setObject:v24 forKeyedSubscript:v23];

        v25 = [v19 objectForKeyedSubscript:@"digest"];
        if (v25)
        {
          v26 = @"digest";
          v27 = v18;
          v28 = v25;
        }

        else
        {
          v26 = @"stashedEMCSDict";
          v27 = v18;
          v28 = v19;
        }

        [v27 setObject:v28 forKeyedSubscript:v26];
        v32 = v19;
        v19 = v22;
        goto LABEL_32;
      }

      v35 = CloudServicesLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10004ADC8();
      }

      v32 = objc_alloc_init(NSMutableDictionary);
      [v32 setObject:@"SecEMCSCreateDerivedKey() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
    }

    else
    {
      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "no dict, calling SecEMCSCreateNewiDMSKey", v47, 2u);
      }

      v46[1] = 0;
      v32 = SecEMCSCreateNewiDMSKey();
      v33 = 0;
      v19 = v33;
      if (v32)
      {
        if (!v33)
        {
          v43 = CloudServicesLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10004AC70();
          }

          v52 = NSLocalizedDescriptionKey;
          v53 = @"SecEMCSCreateNewiDMSKey() returned nil EMCS key";
          v44 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v44];
          v7[2](v7, v11);

          v19 = v32;
          goto LABEL_55;
        }

        v34 = [(SecureBackupDaemon *)self _createBackupKeybagWithPassword:v33];
        if (!v34)
        {
          v45 = CloudServicesLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_10004AC34();
          }

          v50 = NSLocalizedDescriptionKey;
          v51 = @"could not create backup keybag";
          v36 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v36];
          v7[2](v7, v11);
          goto LABEL_53;
        }

        v25 = v34;
        [v18 setObject:v34 forKeyedSubscript:@"stashedKeybag"];
        [v18 setObject:v32 forKeyedSubscript:@"stashedEMCSDict"];
LABEL_32:

        v46[0] = 0;
        v36 = [NSPropertyListSerialization dataWithPropertyList:v18 format:200 options:0 error:v46];
        v11 = v46[0];
        if (v36)
        {
          *buf = 0;
          v37 = CloudServicesLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "calling MKBUserSessionSetSecureBackupBlob", v47, 2u);
          }

          if (MKBUserSessionSetSecureBackupBlob())
          {
            v7[2](v7, 0);
LABEL_53:

            goto LABEL_54;
          }

          v40 = CloudServicesLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_10004ACE8(buf);
          }

          v38 = objc_alloc_init(NSMutableDictionary);
          [v38 setObject:@"MKBUserSessionSetSecureBackupBlob() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
          v39 = *buf;
          [v38 setObject:*buf forKeyedSubscript:NSUnderlyingErrorKey];
        }

        else
        {
          v38 = objc_alloc_init(NSMutableDictionary);
          [v38 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
          [v38 setObject:@"could not create backup blob from stash dict" forKeyedSubscript:NSLocalizedDescriptionKey];
          v39 = CloudServicesLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_10004AD58();
          }
        }

        v41 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v38];

        v7[2](v7, v41);
        v11 = v41;
        goto LABEL_53;
      }

      v42 = CloudServicesLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10004ACAC();
      }

      v54 = NSLocalizedDescriptionKey;
      v55 = @"SecEMCSCreateNewiDMSKey() failed";
      v32 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }

    v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v32];
    v7[2](v7, v11);
LABEL_54:

LABEL_55:
    goto LABEL_17;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
  v12 = [v6 error];
  [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

  v13 = kSecureBackupErrorDomain;
  v14 = 5;
LABEL_16:
  v18 = [NSError errorWithDomain:v13 code:v14 userInfo:v11];
  v7[2](v7, v18);
LABEL_17:
}

- (void)stashRecoveryDataWithRequest:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  kdebug_trace();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001BB38;
  v10[3] = &unk_100075538;
  v11 = os_transaction_create();
  v12 = v6;
  v8 = v11;
  v9 = v6;
  [(SecureBackupDaemon *)self _stashRecoveryDataWithRequest:v7 reply:v10];
}

- (void)setEMCSDict:(id)a3 backupKeybag:(id)a4 saveKeybag:(BOOL)a5 reply:(id)a6
{
  v48 = a5;
  v53 = a3;
  v54 = a4;
  v8 = a6;
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon setEMCSDict:backupKeybag:saveKeybag:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  v10 = +[UMUserManager sharedManager];
  v11 = [v10 currentUser];
  v12 = [v11 alternateDSID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v70 = 0x3032000000;
  v71 = sub_1000109EC;
  v72 = sub_1000109FC;
  v73 = 0;
  if (v12)
  {
    v13 = [v53 mutableCopy];
    v14 = [v54 sha1Digest];
    [v13 setObject:v14 forKeyedSubscript:@"digest"];
    v15 = +[NSDate date];
    v47 = kSecureBackupTimestampKey;
    [v13 setObject:v15 forKeyedSubscript:?];
    v50 = v14;

    v51 = objc_alloc_init(AKAppleIDAuthenticationController);
    v16 = dispatch_semaphore_create(0);
    kdebug_trace();
    v17 = _CloudServicesSignpostLogSystem();
    v18 = _CloudServicesSignpostCreate(v17);
    v20 = v19;

    v21 = _CloudServicesSignpostLogSystem();
    v22 = v21;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *v62 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v18, "EMCSKVSSynchronize", " enableTelemetry=YES ", v62, 2u);
    }

    v23 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 134217984;
      *&v62[4] = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: EMCSKVSSynchronize  enableTelemetry=YES ", v62, 0xCu);
    }

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10001C3EC;
    v56[3] = &unk_100075560;
    p_buf = &buf;
    v24 = v16;
    v57 = v24;
    v58 = self;
    [v51 setConfigurationInfo:v13 forIdentifier:@"com.apple.idms.config.KCKey" forAltDSID:v12 completion:v56];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    kdebug_trace();
    Nanoseconds = _CloudServicesSignpostGetNanoseconds(v18, v20);
    v26 = _CloudServicesSignpostLogSystem();
    v27 = v26;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = *(*(&buf + 1) + 40) == 0;
      *v62 = 67240192;
      *&v62[4] = v28;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v18, "EMCSKVSSynchronize", " CloudServicesSignpostNameEMCSKVSSynchronize=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameEMCSKVSSynchronize}d ", v62, 8u);
    }

    v29 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(*(&buf + 1) + 40);
      *v62 = 134218496;
      *&v62[4] = v18;
      v63 = 2048;
      v64 = Nanoseconds / 1000000000.0;
      v65 = 1026;
      v66 = v30 == 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: EMCSKVSSynchronize  CloudServicesSignpostNameEMCSKVSSynchronize=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameEMCSKVSSynchronize}d ", v62, 0x1Cu);
    }

    if (*(*(&buf + 1) + 40))
    {
      v8[2](v8);
    }

    else
    {
      if (v48)
      {
        v34 = CloudServicesLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "creating backup bag", v62, 2u);
        }

        v35 = *(&buf + 1);
        obj = *(*(&buf + 1) + 40);
        v36 = v54;
        v37 = sub_1000328A4();
        v74 = kSecValueData;
        *v62 = v36;
        v38 = [NSDictionary dictionaryWithObjects:v62 forKeys:&v74 count:1];

        LOBYTE(v36) = sub_100002C4C(v37, v38, &obj);
        objc_storeStrong((v35 + 40), obj);
        if ((v36 & 1) == 0)
        {
          v46 = CloudServicesLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_10004AE04(&buf + 1);
          }

          (v8[2])(v8, *(*(&buf + 1) + 40));
          goto LABEL_30;
        }

        v39 = +[CSDateUtilities posixDateFormatter];
        v40 = +[NSDate date];
        v41 = [v39 stringFromDate:v40];
        v49 = v39;

        v60[0] = kSecureBackupContainsEMCSDataKey;
        v60[1] = v47;
        v61[0] = &__kCFBooleanTrue;
        v61[1] = v41;
        v60[2] = kSecureBackupKeybagDigestKey;
        v61[2] = v50;
        v42 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];
        [(SecureBackupDaemon *)self _setMetadata:v42];
        v43 = sub_100002B84();
        LODWORD(v39) = v43 == 0;

        if (v39)
        {
          v44 = +[NSUUID UUID];
          v45 = [v44 UUIDString];
          sub_100002BE0(v45);
        }

        [(SecureBackupDaemon *)self _setBackupEnabled:1 iCDP:0];
      }

      [(SecureBackupDaemon *)self setBackupAllowed:1];
      [(SecureBackupDaemon *)self backupWithInfo:0 garbageCollect:1 reply:v8];
    }

LABEL_30:

    goto LABEL_31;
  }

  v31 = CloudServicesLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10004AE78();
  }

  v67 = NSLocalizedDescriptionKey;
  v68 = @"no alt DSID for setting IdMS info";
  v13 = [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v32 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v13];
  v33 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v32;

  (v8[2])(v8, *(*(&buf + 1) + 40));
LABEL_31:

  _Block_object_dispose(&buf, 8);
}

- (void)enableWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 guitarfish] || !objc_msgSend(v6, "guitarfishToken"))
  {
    if ([v6 guitarfishToken])
    {
      [(SecureBackupDaemon *)self enableGuitarfishTokenWithRequest:v6 reply:v7];
      goto LABEL_180;
    }

    v9 = _CloudServicesSignpostLogSystem();
    v10 = _CloudServicesSignpostCreate(v9);
    v12 = v11;

    v13 = _CloudServicesSignpostLogSystem();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = [v6 activityLabel];
      *buf = 138543362;
      *v173 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EnableWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
    }

    v16 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 activityLabel];
      *buf = 134218242;
      *v173 = v10;
      *&v173[8] = 2114;
      v174 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: EnableWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
    }

    v18 = [[SBEscrowOperationStartEvent alloc] initWithRequest:v6 type:100];
    v19 = [(SecureBackupDaemon *)self operationsLogger];
    [v19 updateStoreWithEvent:v18];

    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_10001E3B0;
    v167[3] = &unk_100075588;
    v170 = v10;
    v171 = v12;
    v167[4] = self;
    v20 = v18;
    v168 = v20;
    v169 = v7;
    v21 = objc_retainBlock(v167);
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v173 = "[SecureBackupDaemon enableWithRequest:reply:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
    }

    v23 = [(SecureBackupDaemon *)self connectionQueue];
    [v6 setQueue:v23];

    v24 = [v6 error];

    if (v24)
    {
      v25 = objc_alloc_init(NSMutableDictionary);
      [v25 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      v26 = [v6 error];
      [v25 setObject:v26 forKeyedSubscript:NSUnderlyingErrorKey];

      v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v25];
      (v21[2])(v21, v27);

LABEL_179:
      goto LABEL_180;
    }

    v28 = [v6 iCloudEnv];
    [(SecureBackupDaemon *)self setICloudEnvironment:v28];

    if ([v6 emcsMode])
    {
      v155 = [v6 oldEMCSCred];
      v156 = [v6 emcsCred];
      v154 = [v6 emcsDict];
      if (!v156)
      {
        v53 = CloudServicesLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_10004B180();
        }

        v54 = objc_alloc_init(NSMutableDictionary);
        [v54 setObject:@"Missing user credential for SecEMCSCreateDerivedKey()" forKeyedSubscript:NSLocalizedDescriptionKey];
        v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v54];
        (v21[2])(v21, v31);
        goto LABEL_178;
      }

      v29 = +[MCProfileConnection sharedConnection];
      v166 = 0;
      v30 = [v29 changePasscodeFrom:v155 to:v156 outError:&v166];
      v31 = v166;

      if ((v30 & 1) == 0)
      {
        v57 = CloudServicesLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = [v31 localizedDescription];
          sub_10004B0EC(v58, v179, v57);
        }

        v54 = objc_alloc_init(NSMutableDictionary);
        [v54 setObject:@"Could not change device passcode" forKeyedSubscript:NSLocalizedDescriptionKey];
        [v54 setObject:v31 forKeyedSubscript:NSUnderlyingErrorKey];
        v59 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v54];

        (v21[2])(v21, v59);
        v31 = v59;
        goto LABEL_178;
      }

      v32 = 0;
      if (v155)
      {
        if (v154)
        {
          v32 = SecEMCSCreateDerivedEMCSKey();
          if (!v32)
          {
            v80 = CloudServicesLog();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              sub_10004B144();
            }

            v54 = objc_alloc_init(NSMutableDictionary);
            [v54 setObject:@"SecEMCSCreateDerivedEMCSKey() failed with old data" forKeyedSubscript:NSLocalizedDescriptionKey];
            v81 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v54];

            (v21[2])(v21, v81);
            v31 = v81;
            goto LABEL_178;
          }
        }
      }

      v165[1] = 0;
      v33 = SecEMCSCreateNewiDMSKey();
      v34 = 0;
      v35 = v34;
      v153 = v32;
      if (!v33)
      {
        v67 = CloudServicesLog();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          sub_10004ACAC();
        }

        v36 = objc_alloc_init(NSMutableDictionary);
        [v36 setObject:@"SecEMCSCreateNewiDMSKey() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
        v68 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v36];

        (v21[2])(v21, v68);
        v31 = v68;
        goto LABEL_163;
      }

      if (!v34)
      {
        v78 = CloudServicesLog();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          sub_10004AC70();
        }

        v36 = objc_alloc_init(NSMutableDictionary);
        [v36 setObject:@"SecEMCSCreateNewiDMSKey() returned nil EMCS key" forKeyedSubscript:NSLocalizedDescriptionKey];
        v79 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v36];

        (v21[2])(v21, v79);
        v31 = v79;
        goto LABEL_163;
      }

      v36 = [(SecureBackupDaemon *)self _createBackupKeybagWithPassword:v34];
      if (v36)
      {
        [(SecureBackupDaemon *)self setEMCSDict:v33 backupKeybag:v36 saveKeybag:1 reply:v21];
LABEL_163:

        v77 = v33;
        v33 = v35;
LABEL_176:

LABEL_177:
        v54 = v153;
        goto LABEL_178;
      }

      v145 = 0;
      v103 = CloudServicesLog();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "could not create backup keybag", buf, 2u);
      }

      v104 = objc_alloc_init(NSMutableDictionary);
      [v104 setObject:@"could not create backup keybag" forKeyedSubscript:NSLocalizedDescriptionKey];
      v105 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v104];

      (v21[2])(v21, v105);
      v31 = v105;
LABEL_162:

      v36 = v145;
      goto LABEL_163;
    }

    if (([v6 stingray] & 1) == 0 && (objc_msgSend(v6, "icdp") & 1) == 0)
    {
      if ([(SecureBackupDaemon *)self _backupEnabled])
      {
        v37 = [v6 metadataHash];
        v38 = v37 == 0;

        if (v38)
        {
          v86 = CloudServicesLog();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Backup already enabled", buf, 2u);
          }

          [(SecureBackupDaemon *)self _backupKeychain];
          (v21[2])(v21, 0);
          goto LABEL_179;
        }
      }
    }

    if (([v6 stingray] & 1) == 0 && objc_msgSend(v6, "usesRandomPassphrase") && (objc_msgSend(v6, "metadataHash"), v39 = objc_claimAutoreleasedReturnValue(), v40 = v39 == 0, v39, v40))
    {
      v149 = 0;
    }

    else
    {
      if (([v6 stingray] & 1) == 0 && objc_msgSend(v6, "usesMultipleiCSC"))
      {
        v41 = CloudServicesLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Heading down multi-icsc path", buf, 2u);
        }

        [(SecureBackupDaemon *)self doEnableEscrowMultiICSCWithRequest:v6 reply:v21];
        goto LABEL_179;
      }

      v149 = 1;
    }

    v42 = CloudServicesLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v6 stingray];
      v44 = [v6 usesRandomPassphrase];
      v45 = [v6 usesMultipleiCSC];
      *buf = 67109632;
      *v173 = v43;
      *&v173[4] = 1024;
      *&v173[6] = v44;
      LOWORD(v174) = 1024;
      *(&v174 + 2) = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Heading down spaghetti path: s: %d, uRP: %d, uMiCSC:%d", buf, 0x14u);
    }

    v155 = [(SecureBackupDaemon *)self massageOutgoingMetadataFromRequest:v6];
    v46 = [v6 metadataHash];
    v156 = [v46 objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

    v47 = [v6 metadataHash];
    v154 = [v47 objectForKeyedSubscript:@"duplicateEncodedMetadata"];

    v153 = +[NSMutableDictionary dictionary];
    if ([v6 stingray])
    {
      v48 = [v6 appleID];
      if ([v48 length])
      {
        v49 = [v6 iCloudPassword];
        if ([v49 length])
        {
          v50 = [v6 iCloudIdentityData];
          v51 = [v50 length] == 0;

          if (!v51)
          {
            v33 = [v6 iCloudIdentityData];
            if ([v6 guitarfish])
            {
              v52 = [v33 sha256Digest];
              [v153 setObject:v52 forKeyedSubscript:kSecureBackupKeybagSHA256Key];
              v140 = v52;
              v145 = 0;
              v35 = 0;
            }

            else
            {
              v35 = [v33 sha1Digest];
              [v153 setObject:v35 forKeyedSubscript:kSecureBackupKeybagDigestKey];
              v140 = 0;
              v145 = 0;
            }

            v142 = 0;
            goto LABEL_103;
          }

LABEL_76:
          v69 = CloudServicesLog();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v118 = [v6 appleID];
            v119 = [v6 iCloudPassword];
            v120 = [v6 iCloudIdentityData];
            v121 = v120;
            v122 = @"non-";
            if (v119)
            {
              v123 = @"non-";
            }

            else
            {
              v123 = &stru_1000767A0;
            }

            *buf = 138412802;
            *v173 = v118;
            v174 = v123;
            *&v173[8] = 2112;
            if (!v120)
            {
              v122 = &stru_1000767A0;
            }

            v175 = 2112;
            v176 = v122;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "attempted to store stingray identities, with invalid parameters: %@, %@nil iCloud password, %@nil iCloud identity data", buf, 0x20u);
          }

          v70 = [NSString alloc];
          v71 = [v6 appleID];
          v72 = [v6 iCloudPassword];
          v73 = [v6 iCloudIdentityData];
          v74 = v73;
          v75 = @"non-";
          if (v72)
          {
            v76 = @"non-";
          }

          else
          {
            v76 = &stru_1000767A0;
          }

          if (!v73)
          {
            v75 = &stru_1000767A0;
          }

          v33 = [v70 initWithFormat:@"attempted to store stingray identities, with invalid parameters: %@, %@nil iCloud password, %@nil iCloud identity data", v71, v76, v75];

          v77 = objc_alloc_init(NSMutableDictionary);
          [v77 setObject:v33 forKeyedSubscript:NSLocalizedDescriptionKey];
          v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v77];
          (v21[2])(v21, v31);
          goto LABEL_176;
        }
      }

      goto LABEL_76;
    }

    if ([(SecureBackupDaemon *)self forceICDP])
    {
      v55 = CloudServicesLog();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "FORCING ICDP + MULTIPLE ICSC", buf, 2u);
      }
    }

    v56 = [v6 passphrase];
    if ([v56 length])
    {
    }

    else
    {
      v60 = [v6 useCachedPassphrase];

      if (v60)
      {
        v61 = [(SecureBackupDaemon *)self cachedPassphrase];
        [v6 setPassphrase:v61];

        v62 = [v6 passphrase];
        v63 = [v62 length] == 0;

        if (v63)
        {
          v113 = CloudServicesLog();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            sub_10004AFD0();
          }

          v33 = objc_alloc_init(NSMutableDictionary);
          [v33 setObject:@"Missing cached passphrase" forKeyedSubscript:NSLocalizedDescriptionKey];
          v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:9 userInfo:v33];
          (v21[2])(v21, v31);
          goto LABEL_177;
        }
      }
    }

    v64 = [v6 passphrase];
    if ([v64 length])
    {
      if (!v149)
      {

        v66 = [v6 passphrase];
        v33 = [v66 dataUsingEncoding:4];

        if (!v33)
        {
          v102 = CloudServicesLog();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            sub_10004AF94();
          }

          v33 = objc_alloc_init(NSMutableDictionary);
          [v33 setObject:@"could not create backup bag password" forKeyedSubscript:NSLocalizedDescriptionKey];
          v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v33];
          (v21[2])(v21, v31);
          goto LABEL_177;
        }

        v142 = 0;
        goto LABEL_68;
      }

      if ([v6 icdp])
      {

LABEL_64:
        v165[0] = 0;
        [(SecureBackupDaemon *)self createiCloudRecoveryPasswordWithError:v165];
        v33 = v54 = v153;
        v65 = v165[0];
        v31 = v65;
        if (!v33)
        {
          (v21[2])(v21, v65);
LABEL_178:

          goto LABEL_179;
        }

        v142 = v65;
LABEL_68:
        if ([v6 usesMultipleiCSC])
        {
          v140 = 0;
          v145 = 0;
        }

        else
        {
          v85 = [(SecureBackupDaemon *)self _createBackupKeybagWithPassword:v33];
          if (!v85)
          {
            v114 = CloudServicesLog();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              sub_10004AC34();
            }

            v77 = objc_alloc_init(NSMutableDictionary);
            [v77 setObject:@"could not create backup keybag" forKeyedSubscript:NSLocalizedDescriptionKey];
            v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v77];

            (v21[2])(v21, v31);
            goto LABEL_176;
          }

          v145 = v85;
          v140 = 0;
        }

        v35 = 0;
LABEL_103:
        v141 = +[CSDateUtilities posixDateFormatter];
        v87 = +[NSDate date];
        v148 = [v141 stringFromDate:v87];

        v88 = kSecureBackupTimestampKey;
        [v153 setObject:v148 forKeyedSubscript:kSecureBackupTimestampKey];
        if (v155)
        {
          [v155 setObject:v148 forKeyedSubscript:kSecureBackupMetadataTimestampKey];
          [v153 setObject:v155 forKeyedSubscript:kSecureBackupClientMetadataKey];
        }

        if (!v149)
        {
          [v153 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesMultipleiCSCKey];
          v157 = v142;
          v95 = [(SecureBackupDaemon *)self registerSingleRecoverySecret:v145 iCDP:0 error:&v157];
          v31 = v157;

          if (v95)
          {
            [(SecureBackupDaemon *)self _setUsesEscrow:0];
            [(SecureBackupDaemon *)self _setMetadata:v153];
            v96 = sub_100002B84();
            v97 = v96 == 0;

            if (v97)
            {
              v98 = +[NSUUID UUID];
              v99 = [v98 UUIDString];
              sub_100002BE0(v99);
            }

            [(SecureBackupDaemon *)self _setKVSKeybag:v145];
            [(SecureBackupDaemon *)self _removeProtectedKeychain];
            -[SecureBackupDaemon _setBackupEnabled:iCDP:](self, "_setBackupEnabled:iCDP:", 1, [v6 icdp]);
            if ([v6 synchronize])
            {
              [(SecureBackupDaemon *)self _setAutobackupEnabledWithReply:v21];
            }

            else
            {
              [(SecureBackupDaemon *)self _setAutobackupEnabled];
              (v21[2])(v21, v31);
            }
          }

          else
          {
            v100 = CloudServicesLog();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              sub_10004B00C();
            }

            v151 = objc_alloc_init(NSMutableDictionary);
            [v151 setObject:v31 forKeyedSubscript:NSUnderlyingErrorKey];
            v101 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v151];

            (v21[2])(v21, v101);
            v31 = v101;
          }

          goto LABEL_161;
        }

        v139 = v88;
        v89 = [EscrowService alloc];
        v90 = [(SecureBackupDaemon *)self operationsLogger];
        v150 = [(EscrowService *)v89 initWithOperationsLogger:v90];

        v91 = [v6 smsTarget];

        if (v91)
        {
          v92 = [v6 smsTarget];
          v164 = v142;
          v93 = [(SecureBackupDaemon *)self normalizeSMSTarget:v92 error:&v164];
          v31 = v164;

          [v6 setSmsTarget:v93];
          v94 = [v6 smsTarget];
          LODWORD(v92) = v94 == 0;

          if (v92)
          {
            (v21[2])(v21, v31);
LABEL_160:

LABEL_161:
            v104 = v140;
            goto LABEL_162;
          }
        }

        else
        {
          v31 = v142;
        }

        if ([v6 stingray])
        {
          v144 = v31;
        }

        else
        {
          if ([v6 usesMultipleiCSC])
          {
            v112 = CloudServicesLog();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              sub_10004B07C();
            }

            v106 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:&__NSDictionary0__struct];
            (v21[2])(v21, v106);
            goto LABEL_159;
          }

          [v153 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesMultipleiCSCKey];
          v115 = [v6 icdp];
          v163 = v31;
          v116 = [(SecureBackupDaemon *)self registerSingleRecoverySecret:v145 iCDP:v115 error:&v163];
          v144 = v163;

          if ((v116 & 1) == 0)
          {
            v124 = CloudServicesLog();
            if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
            {
              sub_10004B00C();
            }

            v125 = objc_alloc_init(NSMutableDictionary);
            [v125 setObject:@"SOSCCRegisterSingleRecoverySecret() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
            [v125 setObject:v144 forKeyedSubscript:NSUnderlyingErrorKey];
            v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:20 userInfo:v125];

            (v21[2])(v21, v31);
            v106 = v125;
            goto LABEL_159;
          }

          v117 = [v145 sha1Digest];

          [v153 setObject:v117 forKeyedSubscript:kSecureBackupKeybagDigestKey];
          v35 = v117;
        }

        v106 = [[NSMutableDictionary alloc] initWithCapacity:5];
        v107 = [v6 guitarfish];
        if (v107)
        {
          v108 = v140;
        }

        else
        {
          v108 = v35;
        }

        v109 = &kSecureBackupKeybagSHA256Key;
        if (!v107)
        {
          v109 = &kSecureBackupKeybagDigestKey;
        }

        [v106 setObject:v108 forKeyedSubscript:*v109];
        [v106 setObject:v33 forKeyedSubscript:kSecureBackupBagPasswordKey];
        [v106 setObject:@"1" forKeyedSubscript:@"BackupVersion"];
        [v106 setObject:v148 forKeyedSubscript:v139];
        [v6 setEscrowRecord:v106];
        [v6 setMetadata:v153];
        [v6 setEncodedMetadata:v156];
        [v6 setDuplicateEncodedMetadata:v154];
        v110 = [v6 encodedMetadata];

        if (v110)
        {
          v111 = CloudServicesLog();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "enableWithInfo(): beginning an update request", buf, 2u);
          }
        }

        v158[0] = _NSConcreteStackBlock;
        v158[1] = 3221225472;
        v158[2] = sub_10001E5DC;
        v158[3] = &unk_1000755B0;
        v158[4] = self;
        v159 = v6;
        v160 = v153;
        v161 = v145;
        v162 = v21;
        [(EscrowService *)v150 storeRecordWithRequest:v159 completionBlock:v158];

        v31 = v144;
LABEL_159:

        goto LABEL_160;
      }

      v82 = [v6 countryDialCode];
      if ([v82 length])
      {
        v83 = [v6 countryCode];
        if ([v83 length])
        {
          v147 = [v6 smsTarget];
          if ([v147 length])
          {
            v146 = [v6 appleID];
            if ([v146 length])
            {
              v84 = [v6 iCloudPassword];
              v143 = [v84 length] == 0;

              if (!v143)
              {
                goto LABEL_64;
              }

LABEL_169:
              v126 = CloudServicesLog();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                v134 = [v6 passphrase];
                if (v134)
                {
                  v135 = @"non-";
                }

                else
                {
                  v135 = &stru_1000767A0;
                }

                v152 = [v6 smsTarget];
                v136 = [v6 appleID];
                v137 = [v6 iCloudPassword];
                v138 = @"non-";
                if (!v137)
                {
                  v138 = &stru_1000767A0;
                }

                *buf = 138413058;
                *v173 = v135;
                *&v173[8] = 2112;
                v174 = v152;
                v175 = 2112;
                v176 = v136;
                v177 = 2112;
                v178 = v138;
                _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", buf, 0x2Au);
              }

              v127 = [NSString alloc];
              v128 = [v6 passphrase];
              if (v128)
              {
                v129 = @"non-";
              }

              else
              {
                v129 = &stru_1000767A0;
              }

              v130 = [v6 smsTarget];
              v131 = [v6 appleID];
              v132 = [v6 iCloudPassword];
              v133 = @"non-";
              if (!v132)
              {
                v133 = &stru_1000767A0;
              }

              v33 = [v127 initWithFormat:@"attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", v129, v130, v131, v133];

              v77 = objc_alloc_init(NSMutableDictionary);
              [v77 setObject:v33 forKeyedSubscript:NSLocalizedDescriptionKey];
              v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v77];
              (v21[2])(v21, v31);
              goto LABEL_176;
            }
          }
        }
      }
    }

    goto LABEL_169;
  }

  v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:0];
  (*(v7 + 2))(v7, v8);

LABEL_180:
}

- (void)handleEscrowStoreResults:(id)a3 escrowError:(id)a4 request:(id)a5 peerID:(id)a6 newRecordMetadata:(id)a7 backupKeybag:(id)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (v15)
  {
    v20 = [v15 domain];
    v21 = [v20 isEqualToString:kEscrowServiceErrorDomain];

    if (v21 && [v15 code] == -5012)
    {
      v22 = kSecureBackupErrorDomain;
      v23 = [v15 userInfo];
      v24 = [NSError errorWithDomain:v22 code:29 userInfo:v23];

      v15 = v24;
    }

    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10004B20C();
    }

    v19[2](v19, v15);
  }

  else
  {
    v26 = CloudServicesLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "escrowService storeRecordWithRequest: succeeded", buf, 2u);
    }

    if (([v16 stingray] & 1) == 0)
    {
      [(SecureBackupDaemon *)self _setUsesEscrow:1];
      [(SecureBackupDaemon *)self _setMetadata:v17];
      v27 = sub_100002B84();

      if (!v27)
      {
        v28 = +[NSUUID UUID];
        v29 = [v28 UUIDString];
        sub_100002BE0(v29);
      }

      -[SecureBackupDaemon _setBackupEnabled:iCDP:](self, "_setBackupEnabled:iCDP:", 1, [v16 icdp]);
      [(SecureBackupDaemon *)self _removeProtectedKeychain];
      if (v18)
      {
        [(SecureBackupDaemon *)self _setKVSKeybag:v18];
      }

      [(SecureBackupDaemon *)self _removeKeychainItemForKey:@"SecureBackupEscrowCert"];
      v30 = [v14 objectForKeyedSubscript:@"EscrowServiceCertificate"];
      [(SecureBackupDaemon *)self _saveKeychainItem:v30 forKey:@"SecureBackupEscrowCert"];

      [(SecureBackupDaemon *)self _backupCloudIdentityKeychainViewAndPushToKVS];
      v31 = CloudServicesLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32[0] = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "backing up the rest of the keychain!", v32, 2u);
      }

      [(SecureBackupDaemon *)self _setAutobackupEnabled];
    }

    v19[2](v19, 0);
  }
}

- (BOOL)backupAllowed
{
  v2 = sem_open("com.apple.sbd.backupAllowed", 0);
  v3 = v2;
  if (v2 != -1)
  {
    sem_close(v2);
  }

  return v3 != -1;
}

- (void)backupForRecoveryKeyWithInfo:(id)a3 garbageCollect:(BOOL)a4 reply:(id)a5
{
  v6 = a5;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SecureBackupDaemon backupForRecoveryKeyWithInfo:garbageCollect:reply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In %s", &v8, 0xCu);
  }

  [(SecureBackupDaemon *)self _backupCloudIdentityKeychainViewAndPushToKVSForRecoveryKey];
  v6[2](v6, 0);
}

- (void)backupWithInfo:(id)a3 garbageCollect:(BOOL)a4 reply:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 136315138;
    *&v34[4] = "[SecureBackupDaemon backupWithInfo:garbageCollect:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", v34, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self _metadata];
  v10 = [v9 objectForKeyedSubscript:kSecureBackupContainsEMCSDataKey];
  v11 = [v10 isEqual:&__kCFBooleanTrue];

  if (!v11)
  {
    [(SecureBackupDaemon *)self _backupFullKeychain];
LABEL_36:
    v7[2](v7, 0);
    goto LABEL_37;
  }

  if (![(SecureBackupDaemon *)self backupAllowed])
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "backup not allowed: skipping", v34, 2u);
    }

    goto LABEL_35;
  }

  v12 = sub_10001F050();
  if (v12)
  {
    v13 = v12;
    kdebug_trace();
    v14 = _CloudServicesSignpostLogSystem();
    v15 = _CloudServicesSignpostCreate(v14);
    v17 = v16;

    v18 = _CloudServicesSignpostLogSystem();
    v19 = v18;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v34 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CopyEMCSBackup", " enableTelemetry=YES ", v34, 2u);
    }

    v20 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134217984;
      *&v34[4] = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: CopyEMCSBackup  enableTelemetry=YES ", v34, 0xCu);
    }

    v21 = _SecKeychainCopyEMCSBackup();
    Nanoseconds = _CloudServicesSignpostGetNanoseconds(v15, v17);
    v23 = _CloudServicesSignpostLogSystem();
    v24 = v23;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *v34 = 67240192;
      *&v34[4] = v21 != 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v15, "CopyEMCSBackup", " CloudServicesSignpostNameSecKeychainCopyEMCSBackup=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecKeychainCopyEMCSBackup}d ", v34, 8u);
    }

    v25 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134218496;
      *&v34[4] = v15;
      *&v34[12] = 2048;
      *&v34[14] = Nanoseconds / 1000000000.0;
      v35 = 1026;
      v36 = v21 != 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CopyEMCSBackup  CloudServicesSignpostNameSecKeychainCopyEMCSBackup=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecKeychainCopyEMCSBackup}d ", v34, 0x1Cu);
    }

    kdebug_trace();
    if (v21)
    {
      v26 = [v9 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
      v27 = [v13 sha1Digest];
      v28 = CloudServicesLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138412546;
        *&v34[4] = v27;
        *&v34[12] = 2112;
        *&v34[14] = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Pushing EMCS backup, keybag digest %@, metadata digest %@", v34, 0x16u);
      }

      if (([v26 isEqual:v27]& 1) == 0)
      {
        v29 = CloudServicesLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10004B304();
        }
      }

      [(SecureBackupDaemon *)self _setEMCSBackup:v21 keybag:v13, *v34];
      if (v5)
      {
        v30 = [v27 hexString];
        [(SecureBackupDaemon *)self garbageCollectEMCSBackupsExcluding:v30];
      }
    }

    else
    {
      v26 = CloudServicesLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10004B340();
      }
    }

LABEL_35:
    goto LABEL_36;
  }

  v31 = CloudServicesLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10004B37C();
  }

  v37 = NSLocalizedDescriptionKey;
  v38 = @"attempting to back up with no keybag";
  v32 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v33 = [NSError errorWithDomain:kSecureBackupErrorDomain code:22 userInfo:v32];
  (v7)[2](v7, v33);

LABEL_37:
}

- (id)restoreBackup:(id)a3 withName:(id)a4 keybagDigest:(id)a5 keybag:(id)a6 password:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000109EC;
  v36 = sub_1000109FC;
  v37 = 0;
  v17 = [(SecureBackupDaemon *)self createPlistFromDERData:v12];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 enumerateKeysAndObjectsUsingBlock:&stru_1000755F0];
    }

    else
    {
      v20 = CloudServicesLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10004B42C();
      }
    }

    if ([v13 isEqualToString:@"KeychainV0-tomb"])
    {
      v21 = (v33 + 5);
      obj = v33[5];
      v22 = [(SecureBackupDaemon *)self createEncodedDirectBackupSliceKeybagFromData:v15 error:&obj];
      objc_storeStrong(v21, obj);

      v15 = v22;
    }

    v23 = v33[5];
    if (!v23)
    {
      v24 = [v15 peerIDForKeybagDigest:v14];
      if (v24)
      {
        v25 = CloudServicesLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v15 peerIDs];
          *buf = 138412546;
          v39 = v24;
          v40 = 2112;
          v41 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "using peerID %@ from backup keybag peers: %@", buf, 0x16u);
        }
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10001F5FC;
      v28[3] = &unk_100075618;
      v29 = v13;
      v30 = &v32;
      [(SecureBackupDaemon *)self restoreBackupName:v29 peerID:v24 keybag:v15 password:v16 backup:v12 reply:v28];

      v23 = v33[5];
    }

    v19 = v23;
  }

  else
  {
    v42 = NSLocalizedDescriptionKey;
    v43 = @"could not create plist from DER backup";
    v18 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v19 = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v18];
  }

  _Block_object_dispose(&v32, 8);

  return v19;
}

- (id)encodedStatsForViews:(id)a3
{
  v3 = a3;
  if (qword_100084AB0 != -1)
  {
    sub_10004B554();
  }

  v4 = objc_alloc_init(NSMutableString);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = qword_100084AA8;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [qword_100084AA0 objectForKeyedSubscript:{v10, v15}];
        if (!v11 || (v12 = [v3 containsObject:v10], v13 = v11, (v12 & 1) == 0))
        {
          v13 = @"_";
        }

        [v4 appendString:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_restoreView:(id)a3 password:(id)a4 keybagDigest:(id)a5 restoredViews:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(SecureBackupDaemon *)self kvs];
  v17 = [(SecureBackupDaemon *)self _getICDPBackupFromKVS:v16 forView:v12];

  if (!v17)
  {
    if (a7)
    {
      goto LABEL_17;
    }

LABEL_20:
    v26 = 0;
    v27 = 0;
    goto LABEL_22;
  }

  v36 = v15;
  v18 = [v17 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v19 = CloudServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v17 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v21 = v20 = v14;
    *buf = 138412546;
    v38 = v12;
    v39 = 2112;
    v40 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);

    v14 = v20;
  }

  if (!v18)
  {

    v15 = v36;
    if (a7)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v35 = v13;
  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "restoring backup view %@", buf, 0xCu);
  }

  v23 = [v18 objectForKeyedSubscript:@"keybag"];
  v24 = [v18 objectForKeyedSubscript:@"backup"];
  v25 = v24;
  v26 = 0;
  v27 = 0;
  if (v23 && v24)
  {
    v28 = [[NSString alloc] initWithFormat:@"%@-tomb", v12];
    v29 = v14;
    v30 = v28;
    v31 = self;
    v32 = v29;
    v27 = [SecureBackupDaemon restoreBackup:v31 withName:"restoreBackup:withName:keybagDigest:keybag:password:" keybagDigest:v25 keybag:v30 password:?];
    v26 = v27 == 0;
    if (!v27)
    {
      [v36 addObject:v12];
    }

    v14 = v32;
  }

  if (!a7)
  {
    v13 = v35;
    v15 = v36;
    goto LABEL_22;
  }

  v13 = v35;
  v15 = v36;
  if (!v26)
  {
    if (v27)
    {
LABEL_18:
      v33 = v27;
      v26 = 0;
      *a7 = v27;
      goto LABEL_22;
    }

LABEL_17:
    v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:0];
    goto LABEL_18;
  }

LABEL_22:

  return v26;
}

- (void)_restoreKeychainAsyncWithBackupBag:(id)a3 password:(id)a4 keybagDigest:(id)a5 haveBottledPeer:(BOOL)a6 restoredViews:(id)a7 viewsNotToBeRestored:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v19 = [(SecureBackupDaemon *)self backupQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001FE70;
  v25[3] = &unk_100075660;
  v25[4] = self;
  v26 = v16;
  v30 = v14;
  v31 = v33;
  v27 = v18;
  v28 = v15;
  v29 = v17;
  v32 = a6;
  v20 = v14;
  v21 = v17;
  v22 = v15;
  v23 = v18;
  v24 = v16;
  dispatch_async(v19, v25);

  _Block_object_dispose(v33, 8);
}

- (BOOL)_restoreKeychainWithBackupPassword:(id)a3 keybagDigest:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v46 = 0;
  v47[0] = &v46;
  v47[1] = 0x3032000000;
  v47[2] = sub_1000109EC;
  v47[3] = sub_1000109FC;
  v48 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_1000109EC;
  v44 = sub_1000109FC;
  v45 = objc_alloc_init(NSMutableSet);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v10 = [(SecureBackupDaemon *)self backupQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002082C;
  block[3] = &unk_100075688;
  block[4] = self;
  v11 = v8;
  v31 = v11;
  v12 = v9;
  v32 = v12;
  v33 = &v40;
  v34 = &v46;
  v35 = &v36;
  dispatch_sync(v10, block);

  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v41[5];
    *buf = 138412290;
    v50 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "restoredViews: %@", buf, 0xCu);
  }

  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "kicking off async restore of the other keychain views", buf, 2u);
  }

  v16 = [(SecureBackupDaemon *)self backupQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002094C;
  v25[3] = &unk_1000756B0;
  v25[4] = self;
  v17 = v12;
  v26 = v17;
  v28 = &v36;
  v18 = v11;
  v27 = v18;
  v29 = &v40;
  dispatch_async(v16, v25);

  if (sub_1000029CC())
  {
    v19 = +[NSMutableDictionary dictionary];
    v20 = [(SecureBackupDaemon *)self encodedStatsForViews:v41[5]];
    [v19 setObject:v20 forKeyedSubscript:@"views"];

    v21 = +[CloudServicesAnalytics logger];
    [v21 logSoftFailureForEventNamed:CloudServicesSOSRestoreMetrics withAttributes:v19];
  }

  if ((v37[3] & 1) == 0)
  {
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10004B68C(v47);
    }

    if (a5)
    {
      *a5 = *(v47[0] + 40);
    }
  }

  v23 = *(v37 + 24);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  return v23 & 1;
}

- (id)secureBackups
{
  if (OctagonPlatformSupportsSOS())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100020C9C;
    v5[3] = &unk_1000756D8;
    v3 = objc_alloc_init(NSMutableDictionary);
    v6 = v3;
    [(SecureBackupDaemon *)self _enumerateICDPBackupsUsingBlock:v5];
  }

  else
  {
    v3 = &__NSDictionary0__struct;
  }

  return v3;
}

- (void)recordIDAndMetadataForSilentAttempt:(id)a3 passphraseLength:(unint64_t)a4 platform:(int)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "looking for record for silent attempt of passphrase length %lu", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100020FC4;
  v15[3] = &unk_100075700;
  v17 = v11;
  v18 = a4;
  v15[4] = self;
  v16 = v10;
  v19 = a5;
  v13 = v10;
  v14 = v11;
  [(SecureBackupDaemon *)self getAccountInfoWithRequest:v13 reply:v15];
}

- (id)restoreEMCSBackup:(id)a3 keybag:(id)a4 password:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  kdebug_trace();
  v10 = _CloudServicesSignpostLogSystem();
  v11 = _CloudServicesSignpostCreate(v10);
  v13 = v12;

  v14 = _CloudServicesSignpostLogSystem();
  v15 = v14;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RestoreEMCSBackup", " enableTelemetry=YES ", &v27, 2u);
  }

  v16 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RestoreEMCSBackup  enableTelemetry=YES ", &v27, 0xCu);
  }

  v17 = _SecKeychainRestoreBackup();
  Nanoseconds = _CloudServicesSignpostGetNanoseconds(v11, v13);
  v19 = _CloudServicesSignpostLogSystem();
  v20 = v19;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v27 = 67240192;
    LODWORD(v28) = v17 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v11, "RestoreEMCSBackup", " CloudServicesSignpostNameRestoreEMCSBackup=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameRestoreEMCSBackup}d ", &v27, 8u);
  }

  v21 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134218496;
    v28 = v11;
    v29 = 2048;
    v30 = Nanoseconds / 1000000000.0;
    v31 = 1026;
    v32 = v17 == 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RestoreEMCSBackup  CloudServicesSignpostNameRestoreEMCSBackup=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameRestoreEMCSBackup}d ", &v27, 0x1Cu);
  }

  kdebug_trace();
  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "_SecKeychainRestoreBackup() returned %ld", &v27, 0xCu);
  }

  if (v17)
  {
    v23 = objc_alloc_init(NSMutableDictionary);
    [v23 setObject:@"_SecKeychainRestoreBackup() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
    v24 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v17 userInfo:0];
    [v23 setObject:v24 forKeyedSubscript:NSUnderlyingErrorKey];

    v25 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v23];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)restoreEMCSBackup:(id)a3 withPassword:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SecureBackupDaemon *)self _metadata];
  v9 = [v8 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
  v10 = [v6 objectForKeyedSubscript:@"timestamp"];
  if (v10)
  {
    v11 = [CSDateUtilities localStringFromDate:v10];
  }

  else
  {
    v11 = @"before we saved timestamps";
  }

  v34 = [v6 objectForKeyedSubscript:@"backup"];
  v12 = [v6 objectForKeyedSubscript:@"keybag"];
  v35 = [v12 sha1Digest];
  v13 = [v6 objectForKeyedSubscript:@"uuid"];
  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v37 = v11;
    v38 = 2112;
    v39 = v35;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "found backup from %@, keybag digest %@, metadataDigest %@, uuid %@", buf, 0x2Au);
  }

  v33 = v11;
  if (v13)
  {
    v32 = v10;
    v15 = v9;
    v16 = v8;
    v17 = v7;
    v18 = CFPreferencesCopyAppValue(@"EMCSBackupUUID", SECURE_BACKUP_SERVICE_NAME);
    v19 = [(__CFString *)v18 isEqualToString:v13];
    v20 = CloudServicesLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v7 = v17;
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found matching backup from this device, skipping keychain restore", buf, 2u);
      }

      v22 = 0;
      v8 = v16;
      v9 = v15;
      v10 = v32;
      goto LABEL_29;
    }

    if (v21)
    {
      *buf = 138412290;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Backup does not match this device's last backup uuid (%@)", buf, 0xCu);
    }

    v7 = v17;
    v8 = v16;
    v9 = v15;
    v10 = v32;
    v11 = v33;
  }

  v23 = v34;
  if (v12 && v34)
  {
    v22 = [(SecureBackupDaemon *)self restoreEMCSBackup:v34 keybag:v12 password:v7];
    goto LABEL_30;
  }

  v24 = CloudServicesLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  v31 = v7;
  if (v34)
  {
    v26 = @"non-";
  }

  else
  {
    v26 = &stru_1000767A0;
  }

  if (v25)
  {
    if (v12)
    {
      v27 = @"non-";
    }

    else
    {
      v27 = &stru_1000767A0;
    }

    *buf = 138412546;
    v37 = v26;
    v38 = 2112;
    v39 = v27;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "attempted restore with backup = %@nil, keybag = %@nil", buf, 0x16u);
  }

  else if (v12)
  {
    v27 = @"non-";
  }

  else
  {
    v27 = &stru_1000767A0;
  }

  v28 = objc_alloc_init(NSMutableDictionary);
  v29 = [[NSString alloc] initWithFormat:@"attempted restore with backup = %@nil, keybag = %@nil", v26, v27];
  [v28 setObject:v29 forKeyedSubscript:NSLocalizedDescriptionKey];

  v22 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v28];

  v7 = v31;
LABEL_29:
  v11 = v33;
  v23 = v34;
LABEL_30:

  return v22;
}

- (void)recoverEscrowWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CloudServicesSignpostLogSystem();
  v9 = _CloudServicesSignpostCreate(v8);
  v11 = v10;

  v12 = _CloudServicesSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [v6 activityLabel];
    *buf = 138543362;
    v42 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RecoverEscrowWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
  }

  v15 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 activityLabel];
    *buf = 134218242;
    v42 = v9;
    v43 = 2114;
    v44 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverEscrowWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
  }

  v17 = CloudServicesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v6 recordID];
    v19 = [v6 metadata];
    *buf = 138412546;
    v42 = v18;
    v43 = 2112;
    v44 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Attempting recovery of record %@ with metadata: %@", buf, 0x16u);
  }

  v20 = [EscrowService alloc];
  v21 = [(SecureBackupDaemon *)self operationsLogger];
  v22 = [(EscrowService *)v20 initWithOperationsLogger:v21];

  v23 = _CloudServicesSignpostLogSystem();
  v24 = _CloudServicesSignpostCreate(v23);
  v26 = v25;

  v27 = _CloudServicesSignpostLogSystem();
  v28 = v27;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    v29 = [v6 activityLabel];
    *buf = 138543362;
    v42 = v29;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v24, "RecoverRecordWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
  }

  v30 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v6 activityLabel];
    *buf = 134218242;
    v42 = v24;
    v43 = 2114;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverRecordWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100021F58;
  v34[3] = &unk_100075728;
  v38 = v26;
  v39 = v9;
  v40 = v11;
  v36 = v7;
  v37 = v24;
  v34[4] = self;
  v35 = v6;
  v32 = v6;
  v33 = v7;
  [(EscrowService *)v22 recoverRecordWithRequest:v32 completionBlock:v34];
}

- (id)keysOfEntriesContainingObject:(id)a3 backups:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023098;
  v8[3] = &unk_100075110;
  v9 = a3;
  v5 = v9;
  v6 = [a4 keysOfEntriesPassingTest:v8];

  return v6;
}

- (int64_t)compareEscrowDatesBetweenCurrentRecord:(id)a3 andCandidateRecord:(id)a4
{
  v5 = a4;
  v6 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [a3 creationDate]);
  v7 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v5 creationDate]);
  v8 = [v6 compare:v7];
  v9 = CloudServicesLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == -1)
  {
    if (v10)
    {
      v11 = [v5 recordId];
      v14 = 138412290;
      v15 = v11;
      v12 = "candidate record (%@) is newer";
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    v11 = [v5 recordId];
    v14 = 138412290;
    v15 = v11;
    v12 = "candidate record (%@) is not newer";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
  }

  return v8;
}

- (int64_t)compare:(id)a3 with:(id)a4 backups:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 escrowInformationMetadata];
  v12 = [v11 backupKeybagDigest];

  v13 = [v9 escrowInformationMetadata];
  v14 = [v13 backupKeybagDigest];

  v15 = [(SecureBackupDaemon *)self keysOfEntriesContainingObject:v12 backups:v10];
  v44 = v14;
  v16 = [(SecureBackupDaemon *)self keysOfEntriesContainingObject:v14 backups:v10];
  v17 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v8 creationDate]);
  v43 = v9;
  v18 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 creationDate]);
  v45 = v18;
  if ([v15 isEqualToSet:v16])
  {
    v19 = [v17 compare:v18];
    v20 = CloudServicesLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    v22 = v17;
    if (v19 != -1)
    {
      v24 = v43;
      v23 = v44;
      if (!v21)
      {
        goto LABEL_36;
      }

      *buf = 0;
      v25 = "candidate can recover same views but is not newer";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      goto LABEL_36;
    }

    v24 = v43;
    v23 = v44;
    if (v21)
    {
      *buf = 0;
      v34 = "candidate can recover same views but is newer";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v41 = v12;
  v42 = v8;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v26 = [&off_10007A398 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  v28 = *v47;
  while (2)
  {
    for (i = 0; i != v27; i = i + 1)
    {
      if (*v47 != v28)
      {
        objc_enumerationMutation(&off_10007A398);
      }

      v30 = *(*(&v46 + 1) + 8 * i);
      v31 = [v15 compareMembershipOfObject:v30 withSet:v16];
      v19 = v31;
      if (v31 == 1)
      {
        v20 = CloudServicesLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v30;
          v35 = "candidate cannot recover %@";
          goto LABEL_27;
        }

LABEL_28:
        v12 = v41;
        v8 = v42;
        goto LABEL_29;
      }

      if (v31 == -1)
      {
        v20 = CloudServicesLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v30;
          v35 = "candidate can recover %@";
LABEL_27:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v35, buf, 0xCu);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    v27 = [&off_10007A398 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_15:
  v32 = [v15 countOfObjectsWithPrefix:@"PCS"];
  v33 = [v16 countOfObjectsWithPrefix:@"PCS"];
  if (v32 <= v33)
  {
    v12 = v41;
    if (v32 >= v33)
    {
      v38 = [v15 count];
      v8 = v42;
      if (v38 > [v16 count])
      {
        v20 = CloudServicesLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "candidate can recover fewer total views", buf, 2u);
        }

        v19 = 1;
LABEL_29:
        v22 = v17;
        v24 = v43;
        v23 = v44;
        goto LABEL_36;
      }

      v39 = [v15 count];
      if (v39 >= [v16 count])
      {
        v22 = v17;
        v19 = [v17 compare:v45];
        v20 = CloudServicesLog();
        v40 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        v23 = v44;
        if (v19 != -1)
        {
          v24 = v43;
          if (!v40)
          {
            goto LABEL_36;
          }

          *buf = 0;
          v25 = "candidate can recover same number of views but is not newer";
          goto LABEL_5;
        }

        v24 = v43;
        if (v40)
        {
          *buf = 0;
          v34 = "candidate can recover same number of views but is newer";
          goto LABEL_21;
        }

LABEL_22:
        v19 = -1;
        goto LABEL_36;
      }

      v20 = CloudServicesLog();
      v23 = v44;
      v22 = v17;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v36 = "candidate can recover more total views";
        goto LABEL_33;
      }
    }

    else
    {
      v20 = CloudServicesLog();
      v8 = v42;
      v23 = v44;
      v22 = v17;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v36 = "candidate can recover more PCS views";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
      }
    }

    v19 = -1;
    goto LABEL_35;
  }

  v20 = CloudServicesLog();
  v12 = v41;
  v8 = v42;
  v23 = v44;
  v22 = v17;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "candidate can recover fewer PCS views", buf, 2u);
  }

  v19 = 1;
LABEL_35:
  v24 = v43;
LABEL_36:

  return v19;
}

- (void)sortForMatchingPassphraseLengthAndPlatform:(id)a3 secureBackups:(id)a4 passphraseLength:(unint64_t)a5 platform:(unint64_t)a6 reply:(id)a7
{
  v9 = a3;
  v58 = a4;
  v10 = a7;
  v11 = CloudServicesLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v74 = a5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "looking for record for silent attempt of passphrase length %llu", buf, 0xCu);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v13)
  {
    v51 = 0;
    v53 = 0;
    v64 = 0;
    v54 = v12;
    v55 = a5;
    goto LABEL_83;
  }

  v14 = v13;
  v57 = v10;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v68 = *v70;
  v67 = a5;
  v65 = v12;
  do
  {
    v15 = 0;
    v60 = v14;
    do
    {
      if (*v70 != v68)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v69 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      v18 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v16 creationDate]);
      v19 = [v16 recordId];
      v20 = CloudServicesLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [CSDateUtilities localStringFromDate:v18];
        *buf = 138412546;
        v74 = v19;
        v75 = 2112;
        v76 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "checking escrow record: %@ from %@", buf, 0x16u);
      }

      v22 = [v16 remainingAttempts];
      v23 = [v16 silentAttemptAllowed];
      if (v22 == 10 && v23 != 0)
      {
        v27 = [v16 escrowInformationMetadata];
        v28 = [v16 escrowInformationMetadata];
        v29 = [v28 clientMetadata];

        v30 = CloudServicesLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v74 = v27;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "metadata containing bottle: %@", buf, 0xCu);
        }

        v32 = [v29 devicePlatform];
        v33 = [v29 secureBackupUsesNumericPassphrase];
        if (v32 == a6)
        {
          if (v33)
          {
            v34 = [v29 secureBackupNumericPassphraseLength];
            v35 = CloudServicesLog();
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
            if (v34 > a5)
            {
              if (v36)
              {
                *buf = 134218240;
                v74 = v34;
                v75 = 2048;
                v76 = a5;
                v37 = v35;
                v38 = "escrow passphrase length (%llu) longer than silent attempt passphrase (%llu), skipping";
                v39 = 22;
                goto LABEL_29;
              }

              goto LABEL_30;
            }

            if (v36)
            {
              *buf = 134217984;
              v74 = v34;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "found clean record with passwordLength: %llu", buf, 0xCu);
            }

            if (_os_feature_enabled_impl())
            {
              v43 = v64;
              if (!v64 || [(SecureBackupDaemon *)self compareEscrowDatesBetweenCurrentRecord:v64 andCandidateRecord:v16])
              {
                v44 = CloudServicesLog();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = @"better";
                  if (!v64)
                  {
                    v45 = @"first";
                  }

                  goto LABEL_63;
                }

                goto LABEL_64;
              }

              v35 = CloudServicesLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
LABEL_73:
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "keeping current candidate", buf, 2u);
              }

LABEL_74:
              v34 = v67;
LABEL_66:
              v14 = v60;
LABEL_67:

              v67 = v34;
              v12 = v65;
              goto LABEL_68;
            }

            v43 = v64;
            if (v64 && [(SecureBackupDaemon *)self compare:v64 with:v16 backups:v58]!= -1)
            {
              v35 = CloudServicesLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_73;
              }

              goto LABEL_74;
            }

            v44 = CloudServicesLog();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = @"better";
              if (!v64)
              {
                v45 = @"first";
              }

LABEL_63:
              *buf = 138412290;
              v74 = v45;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "found %@ candidate", buf, 0xCu);
            }

LABEL_64:

            v49 = v16;
            v47 = v19;

            v48 = v27;
            v35 = v63;
            v64 = v49;
LABEL_65:
            v62 = v47;
            v63 = v48;
            goto LABEL_66;
          }

          if (_os_feature_enabled_impl())
          {
            v40 = v64;
            if (!v64 || [(SecureBackupDaemon *)self compareEscrowDatesBetweenCurrentRecord:v64 andCandidateRecord:v16])
            {
              v41 = CloudServicesLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = @"better";
                if (!v64)
                {
                  v42 = @"first";
                }

                goto LABEL_58;
              }

              goto LABEL_59;
            }

            v35 = CloudServicesLog();
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }
          }

          else
          {
            v40 = v64;
            if (!v64 || [(SecureBackupDaemon *)self compare:v64 with:v16 backups:v58]== -1)
            {
              v41 = CloudServicesLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = @"better";
                if (!v64)
                {
                  v42 = @"first";
                }

LABEL_58:
                *buf = 138412290;
                v74 = v42;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "found %@ candidate", buf, 0xCu);
              }

LABEL_59:

              v46 = v16;
              v47 = v19;

              v48 = v27;
              v35 = v63;
              v64 = v46;
              v34 = a5;
              goto LABEL_65;
            }

            v35 = CloudServicesLog();
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }
          }

          *buf = 0;
          v37 = v35;
          v38 = "keeping current candidate";
        }

        else
        {
          v35 = CloudServicesLog();
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 0;
          v37 = v35;
          v38 = "escrow record not same platform, skipping";
        }

        v39 = 2;
LABEL_29:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, v39);
LABEL_30:
        v34 = v67;
        goto LABEL_67;
      }

      v25 = v23;
      v27 = CloudServicesLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v26 = &stru_1000767A0;
        if (!v25)
        {
          v26 = @"not ";
        }

        v74 = v22;
        v75 = 2112;
        v76 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "candidate not eligible: remaining attempts = %llu, silent attempt %@allowed", buf, 0x16u);
      }

LABEL_68:

      objc_autoreleasePoolPop(v17);
      v15 = v15 + 1;
    }

    while (v14 != v15);
    v50 = [v12 countByEnumeratingWithState:&v69 objects:v77 count:16];
    v14 = v50;
  }

  while (v50);

  v51 = v62;
  if (v62)
  {
    v52 = CloudServicesLog();
    v10 = v57;
    v53 = v63;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10004B9B0();
    }

    v54 = CloudServicesLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_10004BA3C(v64);
    }

    v55 = v67;
LABEL_83:

    v56 = v55;
  }

  else
  {
    v10 = v57;
    v53 = v63;
    v56 = v67;
  }

  v10[2](v10, v51, v53, v56);
}

- (void)_recoverSilentWithCDPContext:(id)a3 allRecords:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8
{
  v68 = a3;
  v62 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v66 = a8;
  LOBYTE(v59) = 1;
  v63 = v14;
  v64 = v15;
  v65 = v16;
  v67 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v14 flowID:v15 deviceSessionID:v16 eventName:@"com.apple.sbd.silentBurn" testsAreEnabled:0 canSendMetrics:v59 category:&off_10007A488];
  v17 = CloudServicesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon _recoverSilentWithCDPContext:allRecords:altDSID:flowID:deviceSessionID:reply:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  v69 = [OTEscrowTranslation CDPRecordContextToDictionary:v68];
  v18 = [[SecureBackup alloc] initWithUserActivityLabel:@"silent escrow recovery"];
  [v18 populateWithInfo:v69];
  v19 = [(SecureBackupDaemon *)self connectionQueue];
  [v18 setQueue:v19];

  v20 = [v18 error];

  if (!v20)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v102 = 0x3032000000;
    v103 = sub_1000109EC;
    v104 = sub_1000109FC;
    v105 = os_transaction_create();
    v24 = CloudServicesLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10004BAC8();
    }

    v25 = [v18 passphrase];
    v26 = [v25 length] == 0;

    if (!v26)
    {
      goto LABEL_8;
    }

    if ([v18 useCachedPassphrase])
    {
      v51 = [(SecureBackupDaemon *)self cachedPassphrase];
      [v18 setPassphrase:v51];

      v52 = [v18 passphrase];
      v53 = [v52 length] == 0;

      if (!v53)
      {
LABEL_8:
        v27 = [v18 passphrase];
        v61 = [v27 length];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v28 = v62;
        v29 = [v28 countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v29)
        {
          v30 = *v89;
          while (2)
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v89 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v88 + 1) + 8 * i);
              v33 = [v32 recordId];
              if (v33)
              {
                v34 = [(SecureBackupDaemon *)self cachedRecordID];
                v35 = [v34 isEqualToString:v33];

                if (v35)
                {
                  v41 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v32 creationDate]);
                  v42 = CloudServicesLog();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = [CSDateUtilities localStringFromDate:v41];
                    *v92 = 138412546;
                    v93 = v33;
                    v94 = 2112;
                    v95 = v43;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "found preferred record: %@ from %@", v92, 0x16u);
                  }

                  [v18 setRecordID:v33];
                  v44 = [v32 escrowInformationMetadata];
                  v45 = [OTEscrowTranslation metadataToDictionary:v44];
                  [v18 setMetadata:v45];

                  v46 = CloudServicesLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    v47 = [v18 metadata];
                    *v92 = 138412290;
                    v93 = v47;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "using metadata :%@", v92, 0xCu);
                  }

                  v48 = [(SecureBackupDaemon *)self cachedRecordID];
                  v49 = [v48 isEqualToString:v33];

                  if (v49)
                  {
                    v50 = [(SecureBackupDaemon *)self cachedRecordIDPassphrase];
                    [v18 setPassphrase:v50];
                  }

                  else
                  {
                    v50 = [v18 passphrase];
                    v55 = [v50 substringToIndex:v61];
                    [v18 setPassphrase:v55];
                  }

                  LOBYTE(v60) = 1;
                  v83[0] = _NSConcreteStackBlock;
                  v83[1] = 3221225472;
                  v83[2] = sub_100024E84;
                  v83[3] = &unk_100075750;
                  v56 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v63 flowID:v64 deviceSessionID:v65 eventName:@"com.apple.sbd.recoverEscrowWithRequest" testsAreEnabled:0 canSendMetrics:v60 category:&off_10007A488];
                  v84 = v56;
                  v85 = v67;
                  v86 = v66;
                  p_buf = &buf;
                  [(SecureBackupDaemon *)self recoverEscrowWithRequest:v18 reply:v83];

                  v37 = v28;
                  goto LABEL_37;
                }
              }
            }

            v29 = [v28 countByEnumeratingWithState:&v88 objects:v96 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v36 = CloudServicesLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "sorting through backups!", v92, 2u);
        }

        v37 = [(SecureBackupDaemon *)self secureBackups];
        if ([v37 count] || !OctagonPlatformSupportsSOS() || _os_feature_enabled_impl())
        {
          LOBYTE(v60) = 1;
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100024FF8;
          v74[3] = &unk_100075778;
          v33 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v63 flowID:v64 deviceSessionID:v65 eventName:@"com.apple.sbd.sortEscrowRecordsForMatchingPassphrase" testsAreEnabled:0 canSendMetrics:v60 category:&off_10007A488];
          v75 = v33;
          v76 = v67;
          v82[0] = v66;
          v77 = v18;
          v78 = self;
          v79 = v63;
          v80 = v64;
          v81 = v65;
          v82[1] = &buf;
          [(SecureBackupDaemon *)self sortForMatchingPassphraseLengthAndPlatform:v28 secureBackups:v37 passphraseLength:v61 platform:1 reply:v74];

          v38 = &v75;
          v39 = &v76;
          v40 = v82;
        }

        else
        {
          v58 = CloudServicesLog();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            sub_10004BB04();
          }

          LOBYTE(v60) = 1;
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_100025524;
          v70[3] = &unk_100075400;
          v33 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v63 flowID:v64 deviceSessionID:v65 eventName:@"com.apple.sbd.recoverWithRequest" testsAreEnabled:0 canSendMetrics:v60 category:&off_10007A488];
          v71 = v33;
          v72 = v67;
          v73 = v66;
          [(SecureBackupDaemon *)self _recoverWithRequest:v18 reply:v70];
          v38 = &v71;
          v39 = &v72;
          v40 = &v73;
        }

        v41 = *v38;
LABEL_37:

        goto LABEL_41;
      }

      v54 = CloudServicesLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Missing cached passphrase", v92, 2u);
      }

      v99 = NSLocalizedDescriptionKey;
      v100 = @"Missing cached passphrase";
      v37 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v33 = [NSError errorWithDomain:kSecureBackupErrorDomain code:9 userInfo:v37];
      [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v67 success:0 error:v33];
      (*(v66 + 2))(v66, 0, v33);
    }

    else
    {
      v57 = CloudServicesLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *v92 = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "attempted to recover with empty passphrase", v92, 2u);
      }

      v97 = NSLocalizedDescriptionKey;
      v98 = @"attempted to recover with empty passphrase";
      v37 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v33 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v37];
      [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v67 success:0 error:v33];
      (*(v66 + 2))(v66, 0, v33);
    }

LABEL_41:

    _Block_object_dispose(&buf, 8);
    goto LABEL_42;
  }

  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
  v22 = [v18 error];
  [v21 setObject:v22 forKeyedSubscript:NSUnderlyingErrorKey];

  v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v21];
  [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v67 success:0 error:v23];
  (*(v66 + 2))(v66, 0, v23);

LABEL_42:
}

- (void)_recoverWithCDPContext:(id)a3 escrowRecord:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8
{
  v32 = a3;
  v14 = a4;
  v33 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = CloudServicesLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon _recoverWithCDPContext:escrowRecord:altDSID:flowID:deviceSessionID:reply:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  LOBYTE(v31) = 1;
  v19 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v33 flowID:v15 deviceSessionID:v16 eventName:@"com.apple.sbd.remoteEscrowRestore" testsAreEnabled:0 canSendMetrics:v31 category:&off_10007A488];
  v20 = [[SecureBackup alloc] initWithUserActivityLabel:@"escrow recovery"];
  v21 = [OTEscrowTranslation CDPRecordContextToDictionary:v32];
  [v20 populateWithInfo:v21];
  v22 = [v14 escrowInformationMetadata];
  v23 = [OTEscrowTranslation metadataToDictionary:v22];
  [v20 setMetadata:v23];

  v24 = [v14 recordId];
  [v20 setRecordID:v24];

  v25 = [(SecureBackupDaemon *)self connectionQueue];
  [v20 setQueue:v25];

  v26 = [v20 error];

  if (v26)
  {
    v27 = objc_alloc_init(NSMutableDictionary);
    [v27 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v28 = [v20 error];
    [v27 setObject:v28 forKeyedSubscript:NSUnderlyingErrorKey];

    v29 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v27];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v19 success:0 error:v29];
    v17[2](v17, 0, v29);
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = sub_1000109EC;
    v41 = sub_1000109FC;
    v42 = os_transaction_create();
    v30 = CloudServicesLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10004BBCC();
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100025C1C;
    v34[3] = &unk_1000757A0;
    v35 = v19;
    v36 = v17;
    p_buf = &buf;
    [(SecureBackupDaemon *)self recoverEscrowWithRequest:v20 reply:v34];

    _Block_object_dispose(&buf, 8);
  }
}

- (void)_recoverWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 guitarfish] && objc_msgSend(v6, "guitarfishToken"))
  {
    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:0];
    v7[2](v7, 0, v8);

    goto LABEL_10;
  }

  if ([v6 guitarfishToken])
  {
    [(SecureBackupDaemon *)self recoverGuitarfishTokenWithRequest:v6 reply:v7];
    goto LABEL_10;
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon _recoverWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  v10 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v10];

  v11 = [v6 error];

  if (v11)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v13 = [v6 error];
    [v12 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];

    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v12];
    v7[2](v7, 0, v14);

    goto LABEL_10;
  }

  if ([v6 emcsMode])
  {
    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "performing EMCS recovery", &buf, 2u);
    }

    if ([(SecureBackupDaemon *)self backupAllowed])
    {
      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "skipping recovery, enable/recover already called", &buf, 2u);
      }

LABEL_17:

      v7[2](v7, 0, 0);
      goto LABEL_10;
    }

    v72 = 0;
    v73 = 0;
    if (MKBUserSessionRetrieveSecureBackupBlob())
    {
      v16 = CloudServicesLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004BFD8();
      }

      goto LABEL_17;
    }

    v29 = CloudServicesLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10004BDD4(&v73);
    }

    v30 = objc_alloc_init(NSMutableDictionary);
    v31 = v73;
    [v30 setObject:v73 forKeyedSubscript:NSUnderlyingErrorKey];

    v32 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v30];
    v7[2](v7, 0, v32);
  }

  else
  {
    if ([v6 idmsRecovery])
    {
      v17 = CloudServicesLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing IDMS Recovery", &buf, 2u);
      }

      [v6 setIcdp:1];
      [v6 setUseRecoveryPET:1];
      v18 = [EscrowService alloc];
      v19 = [(SecureBackupDaemon *)self operationsLogger];
      v20 = [(EscrowService *)v18 initWithOperationsLogger:v19];

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_100027A94;
      v68[3] = &unk_100075840;
      v71 = v7;
      v69 = v6;
      v70 = self;
      [(EscrowService *)v20 recoverRecordWithRequest:v69 completionBlock:v68];

      goto LABEL_10;
    }

    if ([v6 fmipRecovery])
    {
      v21 = CloudServicesLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Performing FMIP recovery", &buf, 2u);
      }

      [v6 setIcdp:1];
      v22 = [EscrowService alloc];
      v23 = [(SecureBackupDaemon *)self operationsLogger];
      v24 = [(EscrowService *)v22 initWithOperationsLogger:v23];

      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100028018;
      v66[3] = &unk_100075450;
      v67 = v7;
      [(EscrowService *)v24 recoverRecordWithRequest:v6 completionBlock:v66];

      goto LABEL_10;
    }

    if ([v6 stingray])
    {
      v25 = CloudServicesLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Performing Stingray recovery", &buf, 2u);
      }

      v26 = [EscrowService alloc];
      v27 = [(SecureBackupDaemon *)self operationsLogger];
      v28 = [(EscrowService *)v26 initWithOperationsLogger:v27];

      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10002838C;
      v64[3] = &unk_100075450;
      v65 = v7;
      [(EscrowService *)v28 recoverRecordWithRequest:v6 completionBlock:v64];

      goto LABEL_10;
    }

    if (![v6 silent] || !objc_msgSend(v6, "usesRecoveryKey"))
    {
      goto LABEL_40;
    }

    v33 = CloudServicesLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Using cached recovery key", &buf, 2u);
    }

    v34 = [(SecureBackupDaemon *)self cachedRecoveryKey];
    [v6 setRecoveryKey:v34];

    v35 = [v6 recoveryKey];
    LODWORD(v34) = v35 == 0;

    if (!v34)
    {
LABEL_40:
      v36 = [v6 passphrase];
      v37 = [v36 length] == 0;

      if (v37)
      {
        if (![v6 useCachedPassphrase])
        {
          v49 = CloudServicesLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "attempted to recover with empty passphrase", &buf, 2u);
          }

          v74 = NSLocalizedDescriptionKey;
          v75 = @"attempted to recover with empty passphrase";
          v50 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v51 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v50];
          v7[2](v7, 0, v51);

          goto LABEL_10;
        }

        v43 = [(SecureBackupDaemon *)self cachedPassphrase];
        [v6 setPassphrase:v43];

        v44 = [v6 passphrase];
        v45 = [v44 length] == 0;

        if (v45)
        {
          v46 = CloudServicesLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Missing cached passphrase", &buf, 2u);
          }

          v76 = NSLocalizedDescriptionKey;
          v77 = @"Missing cached passphrase";
          v47 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v48 = [NSError errorWithDomain:kSecureBackupErrorDomain code:9 userInfo:v47];
          v7[2](v7, 0, v48);

          goto LABEL_10;
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v79 = 0x3032000000;
      v80 = sub_1000109EC;
      v81 = sub_1000109FC;
      v82 = os_transaction_create();
      if (([v6 icdp] & 1) != 0 || -[SecureBackupDaemon _usesEscrow](self, "_usesEscrow"))
      {
        if ([v6 icdp] && objc_msgSend(v6, "silent"))
        {
          v38 = CloudServicesLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10004BD5C();
          }

          v39 = [v6 passphrase];
          v40 = [v39 length];
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100028870;
          v59[3] = &unk_100075890;
          v62 = v7;
          v60 = v6;
          v61 = self;
          p_buf = &buf;
          [(SecureBackupDaemon *)self recordIDAndMetadataForSilentAttempt:v60 passphraseLength:v40 platform:1 reply:v59];

          v41 = v62;
        }

        else
        {
          v42 = CloudServicesLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_10004BD20();
          }

          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_100028AF0;
          v56[3] = &unk_100075868;
          v57 = v7;
          v58 = &buf;
          [(SecureBackupDaemon *)self recoverEscrowWithRequest:v6 reply:v56];
          v41 = v57;
        }
      }

      else
      {
        v52 = CloudServicesLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          sub_10004BCE4();
        }

        v7[2](v7, 0, 0);
        v41 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = 0;
      }

      _Block_object_dispose(&buf, 8);
      goto LABEL_10;
    }

    v53 = CloudServicesLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_10004BD98();
    }

    v54 = objc_alloc_init(NSMutableDictionary);
    [v54 setObject:@"silent attempt with missing cached recovery key" forKeyedSubscript:NSLocalizedDescriptionKey];
    v55 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v54];
    v7[2](v7, 0, v55);
  }

LABEL_10:
}

- (void)recoverWithRequest:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  kdebug_trace();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028C30;
  v10[3] = &unk_100075510;
  v11 = os_transaction_create();
  v12 = v6;
  v8 = v11;
  v9 = v6;
  [(SecureBackupDaemon *)self _recoverWithRequest:v7 reply:v10];
}

- (void)recoverWithCDPContextInDaemon:(id)a3 escrowRecord:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  kdebug_trace();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100028DCC;
  v13[3] = &unk_100075510;
  v14 = os_transaction_create();
  v15 = v8;
  v11 = v14;
  v12 = v8;
  [(SecureBackupDaemon *)self _recoverWithCDPContext:v10 escrowRecord:v9 reply:v13];
}

- (void)recoverWithCDPContextInDaemon:(id)a3 escrowRecord:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  kdebug_trace();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100028FAC;
  v22[3] = &unk_100075510;
  v23 = os_transaction_create();
  v24 = v14;
  v20 = v23;
  v21 = v14;
  [(SecureBackupDaemon *)self _recoverWithCDPContext:v19 escrowRecord:v18 altDSID:v17 flowID:v16 deviceSessionID:v15 reply:v22];
}

- (void)recoverSilentWithCDPContextInDaemon:(id)a3 allRecords:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  kdebug_trace();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100029148;
  v13[3] = &unk_100075510;
  v14 = os_transaction_create();
  v15 = v8;
  v11 = v14;
  v12 = v8;
  [(SecureBackupDaemon *)self _recoverSilentWithCDPContext:v10 allRecords:v9 reply:v13];
}

- (void)recoverSilentWithCDPContextInDaemon:(id)a3 allRecords:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 reply:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  kdebug_trace();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100029328;
  v22[3] = &unk_100075510;
  v23 = os_transaction_create();
  v24 = v14;
  v20 = v23;
  v21 = v14;
  [(SecureBackupDaemon *)self _recoverSilentWithCDPContext:v19 allRecords:v18 altDSID:v17 flowID:v16 deviceSessionID:v15 reply:v22];
}

- (void)restoreKeychainWithBackupPasswordInDaemon:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  kdebug_trace();
  v10 = 0;
  v8 = [(SecureBackupDaemon *)self _restoreKeychainWithBackupPassword:v7 keybagDigest:0 error:&v10];

  v9 = v10;
  kdebug_trace();
  v6[2](v6, v8, v9);
}

- (void)removeRecoveryKeyFromBackupInDaemon:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(SecureBackupDaemon *)self removeRecoveryKey:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (BOOL)removeRecoveryKey:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000109EC;
  v23 = sub_1000109FC;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x2020000000;
  v18 = 0;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x2020000000;
  v15 = 0;
  v5 = [(SecureBackupDaemon *)self kvsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029758;
  block[3] = &unk_1000758B8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v16;
  block[7] = &v13;
  dispatch_sync(v5, block);

  if (*(v17[0] + 24) == 1 && *(v14[0] + 24) == 1)
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "recovery key removed from iCloudIdentity and PCS keybags", v11, 2u);
    }

    v7 = 1;
  }

  else
  {
    v8 = CloudServicesLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004C134(v17);
    }

    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004C1B0(v14);
    }

    v7 = 0;
    if (a3)
    {
      *a3 = v20[5];
    }
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

- (void)verifyRecoveryKeyInDaemon:(id)a3 reply:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(SecureBackupDaemon *)self verifyRecoveryKey:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (BOOL)verifyRecoveryKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_1000109EC;
  v33 = sub_1000109FC;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = [(SecureBackupDaemon *)self backupQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A0AC;
  block[3] = &unk_1000758E0;
  v8 = v6;
  v16 = v8;
  v17 = self;
  v18 = &v25;
  v19 = &v29;
  v20 = &v21;
  dispatch_sync(v7, block);

  if (v26[3])
  {
    if (*(v22 + 24))
    {
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "recovery key verified against iCloudIdentity and PCSMasterKey keybags", buf, 2u);
      }

LABEL_12:

      v11 = 1;
      goto LABEL_13;
    }

LABEL_7:
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v26 + 24))
      {
        v10 = @"iCloudIdentity";
      }

      else
      {
        v10 = @"PCSMasterKey";
      }

      *buf = 138412290;
      v36 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "recovery key verified against %@ keybag", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (v22[3])
  {
    goto LABEL_7;
  }

  v13 = CloudServicesLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10004C310();
  }

  v11 = 0;
  if (a4)
  {
    v14 = v30[5];
    if (v14)
    {
      v11 = 0;
      *a4 = v14;
    }
  }

LABEL_13:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v11;
}

- (void)isRecoveryKeySetInDaemon:(id)a3
{
  v4 = a3;
  v5 = +[NSUbiquitousKeyValueStore defaultStore];
  v8 = 0;
  v6 = [(SecureBackupDaemon *)self hasRecoveryKeyInKVS:v5 error:&v8];
  v7 = v8;
  v4[2](v4, v6, v7);
}

- (void)recoverRecordContentsWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SecureBackupDaemon recoverRecordContentsWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v10 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v10];

  v11 = [v6 error];

  if (v11)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [(EscrowService *)v12 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v13 = [v6 error];
    [(EscrowService *)v12 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];

    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v12];
    v7[2](v7, 0, v14);
  }

  else
  {
    kdebug_trace();
    v15 = [EscrowService alloc];
    v16 = [(SecureBackupDaemon *)self operationsLogger];
    v12 = [(EscrowService *)v15 initWithOperationsLogger:v16];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002AA50;
    v17[3] = &unk_100075510;
    v19 = v7;
    v18 = v8;
    [(EscrowService *)v12 recoverRecordWithRequest:v6 completionBlock:v17];

    v14 = v19;
  }
}

- (void)createICDPRecordWithRequest:(id)a3 recordContents:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_transaction_create();
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v51 = "[SecureBackupDaemon createICDPRecordWithRequest:recordContents:reply:]";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  if ((sub_1000029CC() & 1) == 0)
  {
    v17 = CloudServicesLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v51 = "[SecureBackupDaemon createICDPRecordWithRequest:recordContents:reply:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s is only available on internal releases", buf, 0xCu);
    }

    v18 = objc_alloc_init(NSMutableDictionary);
    v15 = v18;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Invalid OS version for call";
    goto LABEL_34;
  }

  v13 = [(SecureBackupDaemon *)self connectionQueue];
  [v8 setQueue:v13];

  v14 = [v8 error];

  if (v14)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    [v15 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v16 = [v8 error];
    [v15 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];

LABEL_35:
    v28 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v15];
    v10[2](v10, v28);
    goto LABEL_36;
  }

  if (![v8 icdp] || !objc_msgSend(v8, "usesMultipleiCSC"))
  {
LABEL_23:
    v38 = CloudServicesLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v51 = "[SecureBackupDaemon createICDPRecordWithRequest:recordContents:reply:]";
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "In %s, request doesn't look right", buf, 0xCu);
    }

    v39 = CloudServicesLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v8 icdp];
      v45 = [v8 usesMultipleiCSC];
      v40 = [v8 passphrase];
      v41 = v11;
      if ([v40 length])
      {
        v42 = @"present";
      }

      else
      {
        v42 = @"not present";
      }

      v43 = [v8 passcodeStashSecret];
      *buf = 67109890;
      if (v43)
      {
        v44 = @"present";
      }

      else
      {
        v44 = @"not present";
      }

      *v51 = v46;
      *&v51[4] = 1024;
      *&v51[6] = v45;
      v52 = 2112;
      v53 = v42;
      v11 = v41;
      v54 = 2112;
      v55 = v44;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "request: icdp:%d multipleICSC:%d passphrase:%@ stash:%@", buf, 0x22u);
    }

    v18 = objc_alloc_init(NSMutableDictionary);
    v15 = v18;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Request must be a multiple-icsc request with a passphrase or a stash";
LABEL_34:
    [v18 setObject:v20 forKeyedSubscript:v19];
    goto LABEL_35;
  }

  v21 = [v8 passphrase];
  if (![v21 length])
  {
    v22 = [v8 passcodeStashSecret];

    if (v22)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_14:
  v23 = [v8 dsid];

  if (!v23)
  {
    v24 = CloudServicesLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "setting DSID", buf, 2u);
    }

    v25 = sub_10000F044();
    [v8 setDsid:v25];
  }

  v15 = +[NSMutableDictionary dictionary];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesMultipleiCSCKey];
  v26 = +[NSDate now];
  v27 = [CSDateUtilities localStringFromDate:v26];
  [v15 setObject:v27 forKeyedSubscript:kSecureBackupTimestampKey];

  v28 = [(SecureBackupDaemon *)self massageOutgoingMetadataFromRequest:v8];
  if (v28)
  {
    v29 = +[NSDate now];
    [v28 setObject:v29 forKeyedSubscript:kSecureBackupMetadataTimestampKey];

    [v15 setObject:v28 forKeyedSubscript:kSecureBackupClientMetadataKey];
  }

  v30 = [(SecureBackupDaemon *)self _gestaltValueForKey:@"SerialNumber"];
  [v15 setObject:v30 forKeyedSubscript:kSecureBackupSerialNumberKey];

  v31 = [(SecureBackupDaemon *)self _gestaltValueForKey:@"BuildVersion"];
  [v15 setObject:v31 forKeyedSubscript:kSecureBackupBuildVersionKey];

  [v8 setMetadata:v15];
  v32 = [v9 mutableCopy];
  if ([v8 requiresDoubleEnrollment])
  {
    v33 = +[NSUUID UUID];
    v34 = [v33 UUIDString];
    [v32 setObject:v34 forKeyedSubscript:@"DoubleEnrollmentPassword"];

    [v32 setObject:&off_10007A3E0 forKeyedSubscript:@"DoubleEnrollmentVersion"];
  }

  [v8 setEscrowRecord:v32];
  v35 = [EscrowService alloc];
  v36 = [(SecureBackupDaemon *)self operationsLogger];
  v37 = [(EscrowService *)v35 initWithOperationsLogger:v36];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10002B25C;
  v47[3] = &unk_100075510;
  v49 = v10;
  v48 = v11;
  [(EscrowService *)v37 storeRecordWithRequest:v8 completionBlock:v47];

LABEL_36:
}

- (void)_deleteAlliCDPRecordsWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 recordIDs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 recordIDs];
    v8 = [v7 objectAtIndex:0];

    v9 = [v4 recordIDs];
    [v9 removeObjectAtIndex:0];

    v10 = [v4 request];
    [v10 setRecordID:v8];

    v11 = [v4 escrowService];
    v12 = [v4 request];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002B4B0;
    v15[3] = &unk_100075908;
    v16 = v4;
    v17 = self;
    [v11 deleteRecordWithRequest:v12 completionBlock:v15];
  }

  else
  {
    v13 = [v4 completionBlock];
    v14 = [v4 deleteError];
    (v13)[2](v13, v14);
  }
}

- (void)deleteAlliCDPRecordsWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SecureBackupDaemon deleteAlliCDPRecordsWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, v13);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B794;
    v14[3] = &unk_100075840;
    v17 = v7;
    v15 = v6;
    v16 = self;
    [(SecureBackupDaemon *)self getAccountInfoWithRequest:v15 reply:v14];

    v11 = v17;
  }
}

- (void)backOffDateWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SecureBackupDaemon backOffDateWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, 0, v13);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002BC24;
    v14[3] = &unk_100075450;
    v15 = v7;
    [(SecureBackupDaemon *)self getAccountInfoWithRequest:v6 reply:v14];
    v11 = v15;
  }
}

- (void)setBackOffDateWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[SecureBackupDaemon setBackOffDateWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, v13);
  }

  else
  {
    v14 = [v6 metadataHash];
    v13 = [v14 objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

    v15 = [v6 backOffDate];

    if (v15 && v13)
    {
      v16 = [[NSData alloc] initWithBase64EncodedString:v13 options:0];
      if (v16)
      {
        v34 = 0;
        v17 = [NSPropertyListSerialization propertyListWithData:v16 options:0 format:0 error:&v34];
        v11 = v34;
        if (v17)
        {
          v18 = [v17 objectForKeyedSubscript:kSecureBackupClientMetadataKey];
          if (v18)
          {
            [v6 setStingray:1];
            [v6 setMetadata:v18];
            [(SecureBackupDaemon *)self updateMetadataWithRequest:v6 reply:v7];
          }

          else
          {
            v30 = CloudServicesLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_10004C3BC();
            }

            v35 = NSLocalizedDescriptionKey;
            v36 = @"missing kSecureBackupClientMetadataKey";
            v31 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            v32 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v31];

            v7[2](v7, v32);
            v11 = v32;
          }
        }

        else
        {
          v28 = CloudServicesLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10004C3F8();
          }

          v37[0] = NSLocalizedDescriptionKey;
          v37[1] = NSUnderlyingErrorKey;
          v38[0] = @"metadata could not be decoded";
          v38[1] = v11;
          v18 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
          v29 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v18];

          v7[2](v7, v29);
          v11 = v29;
        }
      }

      else
      {
        v27 = CloudServicesLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10004C468();
        }

        v39 = NSLocalizedDescriptionKey;
        v40 = @"encodedMetadata not base64";
        v17 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v17];
        v7[2](v7, v11);
      }
    }

    else
    {
      v33 = v13;
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10004C4A4(v6, v19);
      }

      v20 = [NSString alloc];
      v21 = [v6 metadataHash];
      if (v21)
      {
        v22 = @"have";
      }

      else
      {
        v22 = @"missing";
      }

      v23 = [v6 backOffDate];
      if (v23)
      {
        v24 = @"have";
      }

      else
      {
        v24 = @"missing";
      }

      v25 = [v6 encodedMetadata];
      if (v25)
      {
        v26 = @"have";
      }

      else
      {
        v26 = @"missing";
      }

      v16 = [v20 initWithFormat:@"missing parameter: %@ metadataHash, %@ backOffDate, %@ encodedMetadata", v22, v24, v26];

      v41 = NSLocalizedDescriptionKey;
      v42 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v17];
      v7[2](v7, v11);
      v13 = v33;
    }
  }
}

- (void)disableWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CloudServicesSignpostLogSystem();
  v9 = _CloudServicesSignpostCreate(v8);
  v11 = v10;

  v12 = _CloudServicesSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = [v6 activityLabel];
    *buf = 138543362;
    v47 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DisableWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
  }

  v15 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 activityLabel];
    *buf = 134218242;
    v47 = v9;
    v48 = 2114;
    v49 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisableWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
  }

  v17 = [[SBEscrowOperationStartEvent alloc] initWithRequest:v6 type:101];
  v18 = [(SecureBackupDaemon *)self operationsLogger];
  [v18 updateStoreWithEvent:v17];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10002C99C;
  v41[3] = &unk_100075588;
  v44 = v9;
  v45 = v11;
  v41[4] = self;
  v19 = v17;
  v42 = v19;
  v20 = v7;
  v43 = v20;
  v21 = objc_retainBlock(v41);
  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[SecureBackupDaemon disableWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v23 = os_transaction_create();
  v24 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v24];

  v25 = [v6 error];

  if (v25)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    [v26 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v27 = [v6 error];
    [v26 setObject:v27 forKeyedSubscript:NSUnderlyingErrorKey];

    v28 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v26];
    (v21[2])(v21, v28);

    goto LABEL_18;
  }

  if ([v6 icdp] && objc_msgSend(v6, "deleteAll"))
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10002CBC8;
    v38[3] = &unk_100075930;
    v38[4] = self;
    v40 = v21;
    v39 = v23;
    [(SecureBackupDaemon *)self deleteAlliCDPRecordsWithRequest:v6 reply:v38];

    goto LABEL_18;
  }

  if ([v6 stingray])
  {
LABEL_17:
    v30 = [EscrowService alloc];
    v31 = [(SecureBackupDaemon *)self operationsLogger];
    v32 = [(EscrowService *)v30 initWithOperationsLogger:v31];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10002CC30;
    v33[3] = &unk_100075958;
    v34 = v6;
    v35 = self;
    v37 = v21;
    v36 = v23;
    [(EscrowService *)v32 deleteRecordWithRequest:v34 completionBlock:v33];

    goto LABEL_18;
  }

  v29 = [v6 recordID];
  if (v29)
  {

    goto LABEL_17;
  }

  if ([(SecureBackupDaemon *)self _usesEscrow])
  {
    goto LABEL_17;
  }

  [(SecureBackupDaemon *)self _disableBackup];
  if (v21)
  {
    (v21[2])(v21, 0);
  }

LABEL_18:
}

- (void)updateMetadataWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v50 = "[SecureBackupDaemon updateMetadataWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (!v10)
  {
    v14 = [v6 metadataHash];
    v46 = [v14 objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];
    if (![v6 stingray])
    {
      if ([v6 icdp])
      {
        v29 = [v6 metadata];
        if (v29)
        {
          v30 = [v6 recordID];
          v31 = !v30 || v46 == 0;
          v32 = v31;

          if (!v32)
          {
            v38 = [v6 metadata];
            v21 = [v38 mutableCopy];

            goto LABEL_37;
          }
        }

        v33 = [CloudServicesError errorWithDomain:kSecureBackupErrorDomain code:4 format:@"update metadata with invalid parameters"];
        v34 = CloudServicesLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v6 recordID];
          *buf = 138412546;
          v50 = v35;
          v51 = 2112;
          v52 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "failed to update record metadata (%@): %@", buf, 0x16u);
        }
      }

      else
      {
        v33 = [CloudServicesError errorWithDomain:kSecureBackupErrorDomain code:4 format:@"update metadata only supported for stingray and icdp records"];
        v34 = CloudServicesLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10004C60C();
        }
      }

      v7[2](v7, v33);
      v21 = 0;
LABEL_45:

LABEL_46:
      goto LABEL_47;
    }

    v15 = kSecureBackupKeybagSHA256Key;
    v45 = [v14 objectForKeyedSubscript:kSecureBackupKeybagSHA256Key];
    v16 = kSecureBackupKeybagDigestKey;
    v17 = [v14 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
    v18 = kSecureBackupTimestampKey;
    v44 = [v14 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v19 = kSecureBackupBackOffDateKey;
    v43 = [v14 objectForKeyedSubscript:kSecureBackupBackOffDateKey];
    v20 = [v6 metadata];
    if (v20 && v45 | v17 && v44)
    {

      if (v46)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        [v21 setObject:v45 forKeyedSubscript:v15];
        [v21 setObject:v17 forKeyedSubscript:v16];
        [v21 setObject:v44 forKeyedSubscript:v18];
        v22 = [v6 metadata];
        [v21 setObject:v22 forKeyedSubscript:kSecureBackupClientMetadataKey];

        v23 = [v6 backOffDate];

        if (v23)
        {
          v24 = [v6 backOffDate];
          [v24 timeIntervalSinceReferenceDate];
          v26 = v25 > 0.0;

          if (v26)
          {
            v27 = [v6 backOffDate];
            [v21 setObject:v27 forKeyedSubscript:v19];
            v28 = 1;
LABEL_29:

LABEL_30:
            v37 = v43;
            goto LABEL_31;
          }
        }

        else
        {
          v37 = v43;
          if (!v43)
          {
            v28 = 1;
LABEL_31:

            if ((v28 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_37:
            v39 = [EscrowService alloc];
            v40 = [(SecureBackupDaemon *)self operationsLogger];
            v33 = [(EscrowService *)v39 initWithOperationsLogger:v40];

            [v6 setEncodedMetadata:v46];
            [v6 setMetadata:v21];
            if ([v6 stingray])
            {
              v41 = CloudServicesLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Attempting to update record metadata", buf, 2u);
              }
            }

            else
            {
              if (![v6 icdp])
              {
LABEL_44:
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_10002D65C;
                v47[3] = &unk_100075450;
                v48 = v7;
                [(EscrowService *)v33 updateRecordMetadataWithRequest:v6 completionBlock:v47];

                goto LABEL_45;
              }

              v41 = CloudServicesLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [v6 recordID];
                *buf = 138412290;
                v50 = v42;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Attempting to update record metadata (%@)", buf, 0xCu);
              }
            }

            goto LABEL_44;
          }

          [v21 setObject:v43 forKeyedSubscript:v19];
        }

        v28 = 1;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v27 = [CloudServicesError errorWithDomain:kSecureBackupErrorDomain code:4 format:@"update stingray metadata with invalid parameters"];
    v36 = CloudServicesLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v27;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "failed to update record metadata: %@", buf, 0xCu);
    }

    v7[2](v7, v27);
    v21 = 0;
    v28 = 0;
    goto LABEL_29;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
  v12 = [v6 error];
  [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

  v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
  v7[2](v7, v13);

LABEL_47:
}

- (int)storeCachedPassphrase:(id)a3
{
  v3 = a3;
  if (![v3 length])
  {
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10004CA78();
    }

    goto LABEL_27;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = NSTemporaryDirectory();
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];
  v9 = [v8 fileSystemRepresentation];

  v10 = open_dprotected_np(v9, 1794, 1, 0, 384);
  if (v10 < 0)
  {
    v23 = CloudServicesLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004C9F0();
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_28;
  }

  v11 = v10;
  if (unlink(v9) < 0)
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004C8E0();
    }

    goto LABEL_24;
  }

  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];

  v28[0] = kSecureBackupPassphraseKey;
  v28[1] = @"uuid";
  v29[0] = v3;
  v29[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v25 = 0;
  v15 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:&v25];
  v16 = v25;
  if (!v15)
  {
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004C870();
    }

    goto LABEL_23;
  }

  if (ftruncate(v11, [v15 length]) < 0)
  {
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004C7E8();
    }

    goto LABEL_23;
  }

  v17 = pwrite(v11, [v15 bytes], objc_msgSend(v15, "length"), 0);
  if (v17 < 0)
  {
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004C760();
    }

    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v15 length];
  v20 = CloudServicesLog();
  v21 = v20;
  if (v18 < v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10004C6CC(v15);
    }

LABEL_23:

LABEL_24:
    objc_autoreleasePoolPop(v4);
    if ((close(v11) & 0x80000000) == 0)
    {
LABEL_28:
      v11 = -1;
      goto LABEL_29;
    }

    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10004C968();
    }

LABEL_27:

    goto LABEL_28;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "saving uuid %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_29:

  return v11;
}

- (void)setCachedPassphrase:(id)a3
{
  v4 = [(SecureBackupDaemon *)self storeCachedPassphrase:a3];

  [(SecureBackupDaemon *)self setCachedPassphraseFD:v4];
}

- (void)setCachedRecordIDPassphrase:(id)a3
{
  v4 = [(SecureBackupDaemon *)self storeCachedPassphrase:a3];

  [(SecureBackupDaemon *)self setCachedRecordIDPassphraseFD:v4];
}

- (void)setCachedRecoveryKey:(id)a3
{
  v4 = [(SecureBackupDaemon *)self storeCachedPassphrase:a3];

  [(SecureBackupDaemon *)self setCachedRecoveryKeyFD:v4];
}

- (id)cachedPassphraseForFD:(int)a3
{
  v4 = objc_autoreleasePoolPush();
  if (a3 < 0)
  {
    goto LABEL_13;
  }

  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *v19.st_qspare = v5;
  *&v19.st_size = v5;
  *&v19.st_blksize = v5;
  v19.st_ctimespec = v5;
  v19.st_birthtimespec = v5;
  v19.st_atimespec = v5;
  v19.st_mtimespec = v5;
  *&v19.st_dev = v5;
  *&v19.st_uid = v5;
  if (fstat(a3, &v19) < 0)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004CC2C();
    }

    goto LABEL_12;
  }

  v6 = [NSMutableData alloc];
  v7 = [v6 initWithLength:v19.st_size];
  v8 = [v7 mutableBytes];
  v9 = pread(a3, v8, v19.st_size, 0);
  if (v9 < 0)
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004CBA4();
    }

    goto LABEL_11;
  }

  if (v9 < v19.st_size)
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004CB24(&v19.st_size);
    }

LABEL_11:

LABEL_12:
LABEL_13:
    objc_autoreleasePoolPop(v4);
    v11 = 0;
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v18 = 0;
  v14 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v18];
  v15 = v18;
  if (v14)
  {
    v11 = [v14 objectForKeyedSubscript:kSecureBackupPassphraseKey];
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 objectForKeyedSubscript:@"uuid"];
      *buf = 138412290;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "fetched uuid %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004CAB4();
    }

    v11 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (!v14)
  {
    goto LABEL_14;
  }

  v11 = v11;
  v12 = v11;
LABEL_15:

  return v12;
}

- (NSString)cachedPassphrase
{
  v3 = [(SecureBackupDaemon *)self cachedPassphraseFD];

  return [(SecureBackupDaemon *)self cachedPassphraseForFD:v3];
}

- (NSString)cachedRecordIDPassphrase
{
  v3 = [(SecureBackupDaemon *)self cachedRecordIDPassphraseFD];

  return [(SecureBackupDaemon *)self cachedPassphraseForFD:v3];
}

- (id)cachedRecoveryKey
{
  v3 = [(SecureBackupDaemon *)self cachedRecoveryKeyFD];

  return [(SecureBackupDaemon *)self cachedPassphraseForFD:v3];
}

- (void)uncacheRecordIDPassphrase
{
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(SecureBackupDaemon *)self cachedRecordID];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "uncaching recordID %@", &v6, 0xCu);
  }

  if (([(SecureBackupDaemon *)self cachedRecordIDPassphraseFD]& 0x80000000) == 0)
  {
    if (close([(SecureBackupDaemon *)self cachedRecordIDPassphraseFD]) < 0)
    {
      v5 = CloudServicesLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10004C968();
      }
    }

    [(SecureBackupDaemon *)self setCachedRecordIDPassphraseFD:0xFFFFFFFFLL];
    [(SecureBackupDaemon *)self setCachedRecordID:0];
  }
}

- (void)cachePassphraseWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SecureBackupDaemon cachePassphraseWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v17, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    if (v7)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      v12 = [v6 error];
      [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      v7[2](v7, v13);
    }
  }

  else
  {
    if (!atomic_fetch_add_explicit(&dword_100084AC8, 1u, memory_order_relaxed))
    {
      v14 = os_transaction_create();
      v15 = qword_100084AB8;
      qword_100084AB8 = v14;
    }

    v16 = [v6 passphrase];
    [(SecureBackupDaemon *)self setCachedPassphrase:v16];

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (void)uncachePassphraseWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SecureBackupDaemon uncachePassphraseWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v15, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    if (v7)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      v12 = [v6 error];
      [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      v7[2](v7, v13);

LABEL_14:
    }
  }

  else
  {
    if (close([(SecureBackupDaemon *)self cachedPassphraseFD]) < 0)
    {
      v14 = CloudServicesLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004C968();
      }
    }

    [(SecureBackupDaemon *)self setCachedPassphraseFD:0xFFFFFFFFLL];
    if (v7)
    {
      v7[2](v7, 0);
    }

    if (atomic_fetch_add_explicit(&dword_100084AC8, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      v11 = qword_100084AB8;
      qword_100084AB8 = 0;
      goto LABEL_14;
    }
  }
}

- (void)cacheRecoveryKeyWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SecureBackupDaemon cacheRecoveryKeyWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v17, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    if (v7)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      v12 = [v6 error];
      [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      v7[2](v7, v13);
    }
  }

  else
  {
    if (!atomic_fetch_add_explicit(&dword_100084ACC, 1u, memory_order_relaxed))
    {
      v14 = os_transaction_create();
      v15 = qword_100084AC0;
      qword_100084AC0 = v14;
    }

    v16 = [v6 recoveryKey];
    [(SecureBackupDaemon *)self setCachedRecoveryKey:v16];

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (void)uncacheRecoveryKeyWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SecureBackupDaemon uncacheRecoveryKeyWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v15, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    if (v7)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      v12 = [v6 error];
      [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      v7[2](v7, v13);

LABEL_14:
    }
  }

  else
  {
    if (close([(SecureBackupDaemon *)self cachedRecoveryKeyFD]) < 0)
    {
      v14 = CloudServicesLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004C968();
      }
    }

    [(SecureBackupDaemon *)self setCachedRecoveryKeyFD:0xFFFFFFFFLL];
    if (v7)
    {
      v7[2](v7, 0);
    }

    if (atomic_fetch_add_explicit(&dword_100084ACC, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      v11 = qword_100084AC0;
      qword_100084AC0 = 0;
      goto LABEL_14;
    }
  }
}

- (void)startSMSChallengeWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SecureBackupDaemon startSMSChallengeWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, 0, v13);
  }

  else
  {
    v14 = [EscrowService alloc];
    v15 = [(SecureBackupDaemon *)self operationsLogger];
    v16 = [(EscrowService *)v14 initWithOperationsLogger:v15];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002ED2C;
    v17[3] = &unk_100075450;
    v18 = v7;
    [(EscrowService *)v16 startSMSChallengeWithRequest:v6 completionBlock:v17];
  }
}

- (void)getCountrySMSCodesWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SecureBackupDaemon getCountrySMSCodesWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, 0, v13);
  }

  else
  {
    v14 = [EscrowService alloc];
    v15 = [(SecureBackupDaemon *)self operationsLogger];
    v16 = [(EscrowService *)v14 initWithOperationsLogger:v15];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002F2A8;
    v17[3] = &unk_100075450;
    v18 = v7;
    [(EscrowService *)v16 getCountrySMSCodesWithRequest:v6 completionBlock:v17];
  }
}

- (void)changeSMSTargetWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[SecureBackupDaemon changeSMSTargetWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, v13);

    goto LABEL_31;
  }

  if ([(SecureBackupDaemon *)self _backupEnabled])
  {
    if ([(SecureBackupDaemon *)self _usesEscrow])
    {
      v14 = [EscrowService alloc];
      v15 = [(SecureBackupDaemon *)self operationsLogger];
      v16 = [(EscrowService *)v14 initWithOperationsLogger:v15];

      v17 = [v6 countryDialCode];
      if ([v17 length])
      {
        v18 = [v6 countryCode];
        if ([v18 length])
        {
          v19 = [v6 smsTarget];
          if ([v19 length])
          {
            v20 = [v6 appleID];
            if ([v20 length])
            {
              v21 = [v6 iCloudPassword];
              v22 = [v21 length] == 0;

              if (!v22)
              {
                v23 = [v6 smsTarget];
                v41 = 0;
                v24 = [(SecureBackupDaemon *)self normalizeSMSTarget:v23 error:&v41];
                v25 = v41;
                [v6 setSmsTarget:v24];

                v26 = [v6 smsTarget];
                LODWORD(v23) = v26 == 0;

                if (v23)
                {
                  v7[2](v7, v25);
                  goto LABEL_30;
                }

                v39[0] = _NSConcreteStackBlock;
                v39[1] = 3221225472;
                v39[2] = sub_10002FC30;
                v39[3] = &unk_100075450;
                v40 = v7;
                [(EscrowService *)v16 changeSMSTargetWithRequest:v6 completionBlock:v39];
                v27 = v40;
LABEL_29:

LABEL_30:
                goto LABEL_31;
              }

LABEL_24:
              v34 = CloudServicesLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = [v6 smsTarget];
                v36 = [v6 appleID];
                v37 = [v6 iCloudPassword];
                v38 = @"non-";
                *buf = 138412802;
                v45 = v35;
                v46 = 2112;
                if (!v37)
                {
                  v38 = &stru_1000767A0;
                }

                v47 = v36;
                v48 = 2112;
                v49 = v38;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "attempted to change SMS target, with invalid parameters: %@, %@, %@nil iCloud password", buf, 0x20u);
              }

              v42 = NSLocalizedDescriptionKey;
              v43 = @"attempted to change SMS target with invalid parameters";
              v25 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
              v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v25];
              v7[2](v7, v27);
              goto LABEL_29;
            }
          }
        }
      }

      goto LABEL_24;
    }

    v31 = CloudServicesLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "attempted to change SMS target, but not using escrow", buf, 2u);
    }

    v50 = NSLocalizedDescriptionKey;
    v51 = @"attempted to change SMS target, but not using escrow";
    v32 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v33 = [NSError errorWithDomain:kSecureBackupErrorDomain code:10 userInfo:v32];
    v7[2](v7, v33);
  }

  else
  {
    v28 = CloudServicesLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "attempted to change SMS target, but backup is not enabled", buf, 2u);
    }

    v52 = NSLocalizedDescriptionKey;
    v53 = @"attempted to change SMS target, but backup is not enabled";
    v29 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v30 = [NSError errorWithDomain:kSecureBackupErrorDomain code:16 userInfo:v29];
    v7[2](v7, v30);
  }

LABEL_31:
}

- (void)notificationInfoWithReply:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(SecureBackupDaemon *)self handledNotifications];
  [v5 setObject:v6 forKeyedSubscript:@"handled_notifications"];

  v7 = [(SecureBackupDaemon *)self ignoredNotifications];
  [v5 setObject:v7 forKeyedSubscript:@"ignored_notifications"];

  v8 = xpc_copy_event();
  if (v8)
  {
    v9 = _CFXPCCreateCFObjectFromXPCObject();
    [v5 setObject:v9 forKeyedSubscript:@"events"];
  }

  v10[2](v10, v5, 0);

  objc_autoreleasePoolPop(v4);
}

- (void)stateCaptureWithReply:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(SecureBackupDaemon *)self copyKVSState];
  v6[2](v6, v5, 0);

  objc_autoreleasePoolPop(v4);
}

- (id)getPendingEscrowRequest:(id *)a3
{
  v4 = [SecEscrowRequest request:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fetchRequestWaitingOnPasscode:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginHSA2PasscodeRequest:(id)a3 desirePasscodeImmediately:(BOOL)a4 uuid:(id)a5 reason:(id)a6 reply:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = CloudServicesLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "beginning an HSA2 passcode request", buf, 2u);
  }

  v17 = [(SecureBackupDaemon *)self connectionQueue];
  [v12 setQueue:v17];

  [v12 setIcdp:1];
  if ([v14 reason] == 1)
  {
    v18 = CloudServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v14 expectedFederationID];
      *buf = 138412290;
      v39[0] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "will attempt federation move to %@", buf, 0xCu);
    }

    v20 = [v14 expectedFederationID];
    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 integerValue]);
    [v12 setSpecifiedFederation:v21];
  }

  v22 = os_transaction_create();
  if (v10)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v24 = [(SecureBackupDaemon *)self setPasscodeRequestFlag:v23];
  v25 = CloudServicesLog();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      *buf = 67109120;
      LODWORD(v39[0]) = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "unable to set state for token: %d", buf, 8u);
    }

    v27 = kSecureBackupErrorDomain;
    v40 = NSLocalizedDescriptionKey;
    v41 = @"unable to set state for token";
    v28 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v29 = [NSError errorWithDomain:v27 code:24 userInfo:v28];
    v15[2](v15, 0, v29);
  }

  else
  {
    if (v26)
    {
      *buf = 67109376;
      LODWORD(v39[0]) = v23;
      WORD2(v39[0]) = 1024;
      *(v39 + 6) = v10;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "successfully set notify state for request to %d (desire immediately: %d)", buf, 0xEu);
    }

    v30 = [EscrowService alloc];
    v31 = [(SecureBackupDaemon *)self operationsLogger];
    v32 = [(EscrowService *)v30 initWithOperationsLogger:v31];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10003039C;
    v33[3] = &unk_100075980;
    v37 = v15;
    v34 = v32;
    v35 = v13;
    v36 = v22;
    v28 = v32;
    [(EscrowService *)v28 fetchCertificatesAndDuplicateRequest:v12 completionBlock:v33];

    v29 = v37;
  }
}

- (int)notifyToken
{
  v2 = self;
  objc_sync_enter(v2);
  if (dword_1000848B8 == -1)
  {
    v3 = notify_register_check([SecureBackupPasscodeRequestNotifyTokenName UTF8String], &dword_1000848B8);
    if (v3)
    {
      v4 = CloudServicesLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "unable to fetch notify token: %d", v6, 8u);
      }

      dword_1000848B8 = -1;
    }
  }

  objc_sync_exit(v2);

  return dword_1000848B8;
}

- (void)clearNotifyToken
{
  obj = self;
  objc_sync_enter(obj);
  if (dword_1000848B8 != -1)
  {
    notify_cancel(dword_1000848B8);
  }

  dword_1000848B8 = -1;
  objc_sync_exit(obj);
}

- (int)setPasscodeRequestFlag:(unint64_t)a3
{
  v5 = [(SecureBackupDaemon *)self notifyToken];
  if (v5 != -1)
  {
    result = notify_set_state(v5, a3);
    if (result != 2)
    {
      return result;
    }

    [(SecureBackupDaemon *)self clearNotifyToken];
  }

  return 2;
}

- (int)getPasscodeRequestFlag:(unint64_t *)a3
{
  v5 = [(SecureBackupDaemon *)self notifyToken];
  if (v5 != -1)
  {
    result = notify_get_state(v5, a3);
    if (result != 2)
    {
      return result;
    }

    [(SecureBackupDaemon *)self clearNotifyToken];
  }

  return 2;
}

- (void)prepareHSA2EscrowRecordContents:(id)a3 usesComplexPassphrase:(BOOL)a4 reply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v83 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "beginning an prepare HSA2 contents request: usesComplexPassphrase: %d", buf, 8u);
  }

  v11 = [(SecureBackupDaemon *)self connectionQueue];
  [v8 setQueue:v11];

  v12 = [(SecureBackupDaemon *)self setPasscodeRequestFlag:4];
  v13 = CloudServicesLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (v12)
  {
    if (v14)
    {
      sub_10004CF08();
    }

    v15 = kSecureBackupErrorDomain;
    v80 = NSLocalizedDescriptionKey;
    v81 = @"unable to set state (to 0) for token";
    v16 = &v81;
    v17 = &v80;
    goto LABEL_13;
  }

  if (v14)
  {
    sub_10004CF44();
  }

  if (![v8 stingray])
  {
    if ([v8 usesRandomPassphrase])
    {
      v15 = kSecureBackupErrorDomain;
      v76 = NSLocalizedDescriptionKey;
      v77 = @"Cannot prepare HSA2 Escrow record for a usesRandomPassphrase request";
      v16 = &v77;
      v17 = &v76;
      goto LABEL_13;
    }

    if (([v8 usesMultipleiCSC] & 1) == 0)
    {
      v20 = CloudServicesLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "record preparation requires a multiple iCSC world, so do that", buf, 2u);
      }

      [v8 setUsesMultipleiCSC:1];
    }

    if (([v8 icdp] & 1) == 0)
    {
      v21 = CloudServicesLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "record preparation requires an ICDP world, so do that", buf, 2u);
      }

      [v8 setIcdp:1];
    }

    v22 = [v8 dsid];

    if (!v22)
    {
      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "setting record DSID", buf, 2u);
      }

      v24 = sub_10000F044();
      [v8 setDsid:v24];
    }

    v25 = [v8 metadata];
    v26 = kSecureBackupUsesComplexPassphraseKey;
    v18 = [v25 objectForKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];

    v27 = [v18 integerValue];
    v28 = [v8 metadata];
    v29 = [v28 mutableCopy];
    v30 = v29;
    if (v27 || v6)
    {
      if (v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = +[NSMutableDictionary dictionary];
      }

      v33 = v32;

      [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:v26];
      [v33 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
      [v33 setObject:&off_10007A3C8 forKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
    }

    else
    {
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = +[NSMutableDictionary dictionary];
      }

      v33 = v31;

      [v33 setObject:&__kCFBooleanFalse forKeyedSubscript:v26];
      [v33 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
      v34 = [v8 passphrase];
      v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v34 length]);
      [v33 setObject:v35 forKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
    }

    [v8 setMetadata:v33];

    v73 = 0;
    v36 = [SecEscrowRequest request:&v73];
    v37 = v73;
    v19 = v37;
    if (!v36)
    {
      v42 = CloudServicesLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10004D220();
      }

      v9[2](v9, v19);
      goto LABEL_84;
    }

    v72 = v37;
    v38 = [v36 fetchRequestWaitingOnPasscode:&v72];
    v39 = v72;

    if (!v38 || v39)
    {
      v43 = CloudServicesLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        sub_10004D1B0();
      }

      if (v39)
      {
        v9[2](v9, v39);
      }

      else
      {
        v44 = kSecureBackupErrorDomain;
        v74 = NSLocalizedDescriptionKey;
        v75 = @"No outstanding escrow request";
        v45 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v46 = [NSError errorWithDomain:v44 code:-1 userInfo:v45];
        v9[2](v9, v46);

        v39 = 0;
      }

      goto LABEL_83;
    }

    v71 = 0;
    v40 = [(SecureBackupDaemon *)self fetchPRK:&v71];
    v39 = v71;
    [v8 setIdmsData:v40];

    if (v39)
    {
      v41 = CloudServicesLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10004CF80();
      }

      v9[2](v9, v39);
LABEL_83:

      v19 = v39;
LABEL_84:

      goto LABEL_14;
    }

    v47 = [v8 idmsData];

    v48 = CloudServicesLog();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    if (v47)
    {
      if (!v49)
      {
        goto LABEL_58;
      }

      *buf = 0;
      v50 = "prepareHSA2: found IDMS data";
    }

    else
    {
      if (!v49)
      {
        goto LABEL_58;
      }

      *buf = 0;
      v50 = "prepareHSA2: found no IDMS data";
    }

    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v50, buf, 2u);
LABEL_58:

    v70 = 0;
    v51 = [(SecureBackupDaemon *)self makeRecordCandidate:v8 error:&v70];
    v52 = v70;
    v39 = v52;
    if (!v51 || v52)
    {
      v63 = CloudServicesLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10004D140();
      }

      v9[2](v9, v39);
    }

    else
    {
      v53 = [EscrowService alloc];
      v54 = [(SecureBackupDaemon *)self operationsLogger];
      v55 = [(EscrowService *)v53 initWithOperationsLogger:v54];

      v69 = 0;
      v56 = [(EscrowService *)v55 fetchCachedCertificateWithRequest:v8 error:&v69];
      v57 = v69;
      v39 = v57;
      if (!v56 || v57)
      {
        v64 = CloudServicesLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_10004D0D0();
        }

        v9[2](v9, v39);
      }

      else
      {
        v65 = v55;
        v68 = 0;
        v58 = [EscrowPrerecord createPrerecordFromCandidate:v51 storedCertificate:v56 request:v8 error:&v68];
        v39 = v68;
        v59 = CloudServicesLog();
        v60 = v59;
        v66 = v58;
        if (!v58 || v39)
        {
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            sub_10004D060();
          }

          v9[2](v9, v39);
          v55 = v65;
        }

        else
        {
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Successfully made an escrow prerecord", buf, 2u);
          }

          v61 = [v58 data];
          v67 = 0;
          [v36 cachePrerecord:v38 serializedPrerecord:v61 error:&v67];
          v39 = v67;

          v55 = v65;
          if (v39)
          {
            v62 = CloudServicesLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_10004CFF0();
            }

            v9[2](v9, v39);
          }

          else
          {
            v9[2](v9, 0);
          }
        }
      }
    }

    goto LABEL_83;
  }

  v15 = kSecureBackupErrorDomain;
  v78 = NSLocalizedDescriptionKey;
  v79 = @"Cannot prepare HSA2 Escrow record for a stingray request";
  v16 = &v79;
  v17 = &v78;
LABEL_13:
  v18 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:1];
  v19 = [NSError errorWithDomain:v15 code:24 userInfo:v18];
  v9[2](v9, v19);
LABEL_14:
}

- (id)fetchPRK:(id *)a3
{
  v3 = sub_100042638();
  v4 = v3;
  if (v3)
  {
    v8 = @"prk";
    v9 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004D290();
    }

    v6 = 0;
  }

  return v6;
}

- (void)daemonPasscodeRequestOpinion:(id)a3
{
  v4 = a3;
  v24 = 0;
  v5 = [SecEscrowRequest request:&v24];
  v6 = v24;
  v7 = v6;
  if (v5)
  {
    v23 = v6;
    v8 = [v5 fetchRequestWaitingOnPasscode:&v23];
    v9 = v23;

    if (v9)
    {
      v10 = CloudServicesLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10004D2CC();
      }

      v4[2](v4, 0, v9);
    }

    else
    {
      v12 = CloudServicesLog();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v13)
        {
          *buf = 138412290;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "daemonPasscodeRequestOpinion: found outstanding request %@", buf, 0xCu);
        }

        *buf = 0;
        if ([(SecureBackupDaemon *)self getPasscodeRequestFlag:buf])
        {
          v14 = CloudServicesLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10004D33C();
          }
        }

        if (!*buf)
        {
          v15 = CloudServicesLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v22[0] = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "daemonPasscodeRequestOpinion: notify lost our state. Setting back on...", v22, 2u);
          }

          [(SecureBackupDaemon *)self setPasscodeRequestFlag:1];
        }

        v16 = v4[2];
        v17 = v4;
        v18 = 2;
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "daemonPasscodeRequestOpinion: no outstanding request", buf, 2u);
        }

        v19 = [(SecureBackupDaemon *)self setPasscodeRequestFlag:4];
        v20 = CloudServicesLog();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        if (v19)
        {
          if (v21)
          {
            sub_10004CF08();
          }
        }

        else if (v21)
        {
          sub_10004CF44();
        }

        v16 = v4[2];
        v17 = v4;
        v18 = 1;
      }

      v16(v17, v18, 0);
    }
  }

  else
  {
    v11 = CloudServicesLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004D3AC();
    }

    v4[2](v4, 0, v7);
    v9 = v7;
  }
}

- (void)getCertificatesWithRequest:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SecureBackupDaemon getCertificatesWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v7 setQueue:v9];

  v10 = [EscrowService alloc];
  v11 = [(SecureBackupDaemon *)self operationsLogger];
  v12 = [(EscrowService *)v10 initWithOperationsLogger:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003171C;
  v14[3] = &unk_1000759A8;
  v15 = v6;
  v13 = v6;
  [(EscrowService *)v12 fetchCertificatesWithRequest:v7 completionBlock:v14];
}

- (void)saveTermsAcceptance:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SecureBackupDaemon saveTermsAcceptance:reply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v8 = [v5 altDSID];
  if (v8)
  {
    [CSCertOperations storeTerms:v5 withAltDSID:v8 reply:v6];
  }

  else
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to store terms: no altDSID provided", buf, 2u);
    }

    v10 = kSecureBackupErrorDomain;
    v13 = NSLocalizedDescriptionKey;
    v14 = @"missing altDSID";
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [NSError errorWithDomain:v10 code:4 userInfo:v11];

    v6[2](v6, v12);
  }
}

- (void)getAcceptedTermsForAltDSID:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SecureBackupDaemon getAcceptedTermsForAltDSID:reply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100031AC8;
  v9[3] = &unk_1000759D0;
  v10 = v5;
  v8 = v5;
  [CSCertOperations fetchTermsWithAltDSID:v6 reply:v9];
}

- (void)moveToFederationAllowed:(id)a3 altDSID:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 integerValue]);
  v9 = [CSCertOperations moveToFederationAllowed:v10 altDSID:v8];

  v7[2](v7, v9 == 0, v9);
}

- (void)knownICDPFederations:(id)a3
{
  v3 = a3;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SecureBackupDaemon knownICDPFederations:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In %s", &v6, 0xCu);
  }

  v5 = +[CSCertOperations knownICDPFederations];
  v3[2](v3, v5, 0);
}

- (void)enableGuitarfishTokenWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[SecureBackupDaemon enableGuitarfishTokenWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, v13);
  }

  else
  {
    v14 = [v6 metadata];
    v11 = [v14 mutableCopy];

    v15 = [v6 metadataHash];
    v13 = [v15 objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

    v16 = +[NSMutableDictionary dictionary];
    v30 = [v6 iCloudIdentityData];
    v17 = [v30 sha256Digest];
    v18 = kSecureBackupKeybagSHA256Key;
    v31 = v17;
    [v16 setObject:? forKeyedSubscript:?];
    v19 = +[CSDateUtilities posixDateFormatter];
    v20 = +[NSDate date];
    v29 = v19;
    v21 = [v19 stringFromDate:v20];

    v22 = kSecureBackupTimestampKey;
    [v16 setObject:v21 forKeyedSubscript:kSecureBackupTimestampKey];
    if (v11)
    {
      [v11 setObject:v21 forKeyedSubscript:kSecureBackupMetadataTimestampKey];
      [v16 setObject:v11 forKeyedSubscript:kSecureBackupClientMetadataKey];
    }

    v23 = [EscrowService alloc];
    v24 = [(SecureBackupDaemon *)self operationsLogger];
    v28 = [(EscrowService *)v23 initWithOperationsLogger:v24];

    v25 = [[NSMutableDictionary alloc] initWithCapacity:5];
    [v25 setObject:v31 forKeyedSubscript:v18];
    [v25 setObject:v30 forKeyedSubscript:kSecureBackupBagPasswordKey];
    [v25 setObject:@"1" forKeyedSubscript:@"BackupVersion"];
    [v25 setObject:v21 forKeyedSubscript:v22];
    [v6 setEscrowRecord:v25];
    [v6 setMetadata:v16];
    [v6 setEncodedMetadata:v13];
    v26 = [v6 encodedMetadata];

    if (v26)
    {
      v27 = CloudServicesLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "enableWithInfo(): beginning an update request", buf, 2u);
      }
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100032108;
    v32[3] = &unk_100075450;
    v33 = v7;
    [(EscrowService *)v28 storeRecordWithRequest:v6 completionBlock:v32];
  }
}

- (void)recoverGuitarfishTokenWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SecureBackupDaemon recoverGuitarfishTokenWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [(SecureBackupDaemon *)self connectionQueue];
  [v6 setQueue:v9];

  v10 = [v6 error];

  if (v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [(EscrowService *)v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    v12 = [v6 error];
    [(EscrowService *)v11 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    v7[2](v7, 0, v13);
  }

  else
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Performing Guitarfish token recovery", buf, 2u);
    }

    v15 = [EscrowService alloc];
    v16 = [(SecureBackupDaemon *)self operationsLogger];
    v11 = [(EscrowService *)v15 initWithOperationsLogger:v16];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003245C;
    v17[3] = &unk_100075450;
    v18 = v7;
    [(EscrowService *)v11 recoverRecordWithRequest:v6 completionBlock:v17];
    v13 = v18;
  }
}

- (id)kvs
{
  if (OctagonPlatformSupportsSOS())
  {
    if (sub_10000EF38())
    {
      v2 = +[NSUbiquitousKeyValueStore defaultStore];
      goto LABEL_8;
    }

    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7EC(v3);
    }
  }

  v2 = 0;
LABEL_8:

  return v2;
}

- (void)restoreBackupName:(id)a3 peerID:(id)a4 keybag:(id)a5 password:(id)a6 backup:(id)a7 reply:(id)a8
{
  v13 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = _CloudServicesSignpostLogSystem();
  v20 = _CloudServicesSignpostCreate(v19);

  v21 = _CloudServicesSignpostLogSystem();
  v22 = v21;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "BackupRestore", " enableTelemetry=YES ", buf, 2u);
  }

  v23 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: BackupRestore  enableTelemetry=YES ", buf, 0xCu);
  }

  v26 = v13;
  v27 = v14;
  v24 = v14;
  v25 = v13;
  SecItemBackupRestore();
}

- (BOOL)verifyRKWithKeyBag:(id)a3 password:(id)a4 error:(id *)a5
{
  v6 = a4;
  v16 = 0;
  v7 = SOSBackupSliceKeyBagCreateFromData();
  if (v7)
  {
    v8 = v16 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = CloudServicesLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004E898(&v16);
    }

LABEL_13:

    v13 = 0;
    if (a5)
    {
      *a5 = v16;
    }

    goto LABEL_15;
  }

  v10 = v7;
  v11 = SOSBSKBLoadAndUnlockWithWrappingSecret();
  CFRelease(v10);
  v12 = CloudServicesLog();
  v9 = v12;
  if (v11 == -1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004E830(&v16);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RK checks out", v15, 2u);
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (id)removeRKFromKeyBag:(id)a3 error:(id *)a4
{
  v16 = 0;
  v5 = SOSBackupSliceKeyBagCreateFromData();
  if (v5)
  {
    v6 = v16 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = v5;
    SOSBSKBRemoveRecoveryKey();
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "removed recovery key from bskb", &v15, 2u);
    }

    v15 = 0;
    v11 = SOSBSKBCopyEncoded();
    if (v11)
    {
      v12 = v15 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      CFRelease(v9);
      v8 = v11;
    }

    else
    {
      v13 = CloudServicesLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10004E900(&v15);
      }

      if (a4)
      {
        *a4 = v15;
      }

      CFRelease(v9);
      v8 = 0;
    }
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004E898(&v16);
    }

    v8 = 0;
    if (a4)
    {
      *a4 = v16;
    }
  }

  return v8;
}

- (BOOL)backupWithRegisteredBackupsWithError:(id *)a3 handler:(id)a4
{
  v5 = a4;
  v6 = _CloudServicesSignpostLogSystem();
  v7 = _CloudServicesSignpostCreate(v6);
  v9 = v8;

  v10 = _CloudServicesSignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "BackupWithRegisteredBackups", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: BackupWithRegisteredBackups  enableTelemetry=YES ", buf, 0xCu);
  }

  v13 = v5;
  v14 = SecItemBackupWithRegisteredBackups();
  v15 = v14;
  if (a3 && (v14 & 1) == 0)
  {
    *a3 = 0;
  }

  Nanoseconds = _CloudServicesSignpostGetNanoseconds(v7, v9);
  v17 = _CloudServicesSignpostLogSystem();
  v18 = v17;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 67240192;
    LODWORD(v22) = v15;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v7, "BackupWithRegisteredBackups", " CloudServicesSignpostNameSecItemBackupWithRegisteredBackups=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupWithRegisteredBackups}d ", buf, 8u);
  }

  v19 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v22 = v7;
    v23 = 2048;
    v24 = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BackupWithRegisteredBackups  CloudServicesSignpostNameSecItemBackupWithRegisteredBackups=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupWithRegisteredBackups}d ", buf, 0x1Cu);
  }

  return v15;
}

- (BOOL)backupWithRegisteredBackupViewWithError:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = SecItemBackupWithRegisteredViewBackup();
  v7 = CloudServicesLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registered view!! %@", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "failed to register view: %@", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return v6;
}

- (BOOL)backupSetConfirmedManifest:(id)a3 digest:(id)a4 manifest:(id)a5 error:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 sha1Digest];
    v14 = [v13 hexString];
    v15 = [v9 hexString];
    *v18 = 138412546;
    *&v18[4] = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setting manifest hash: %@, digest: %@", v18, 0x16u);
  }

  *v18 = 0;
  v16 = SecItemBackupSetConfirmedManifest();

  if (a6 && (v16 & 1) == 0)
  {
    *a6 = *v18;
  }

  return v16;
}

- (BOOL)backupWithChanges:(id)a3 error:(id *)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _CloudServicesSignpostLogSystem();
  v10 = _CloudServicesSignpostCreate(v9);
  v12 = v11;

  v13 = _CloudServicesSignpostLogSystem();
  v14 = v13;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "BackupWithChanges", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: BackupWithChanges  enableTelemetry=YES ", buf, 0xCu);
  }

  v16 = v8;
  v17 = SecItemBackupWithChanges();
  v18 = v17;
  if (a4 && (v17 & 1) == 0)
  {
    *a4 = 0;
  }

  Nanoseconds = _CloudServicesSignpostGetNanoseconds(v10, v12);
  v20 = _CloudServicesSignpostLogSystem();
  v21 = v20;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138543618;
    v25 = v7;
    v26 = 1026;
    LODWORD(v27) = v18;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v10, "BackupWithChanges", " CloudServicesSignpostNameSecItemBackupWithChanges=%{public,signpost.telemetry:string1,name=CloudServicesSignpostNameSecItemBackupWithChanges}@  CloudServicesSignpostNameSecItemBackupWithChanges=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupWithChanges}d ", buf, 0x12u);
  }

  v22 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v25 = v10;
    v26 = 2048;
    v27 = Nanoseconds / 1000000000.0;
    v28 = 2114;
    v29 = v7;
    v30 = 1026;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BackupWithChanges  CloudServicesSignpostNameSecItemBackupWithChanges=%{public,signpost.telemetry:string1,name=CloudServicesSignpostNameSecItemBackupWithChanges}@  CloudServicesSignpostNameSecItemBackupWithChanges=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupWithChanges}d ", buf, 0x26u);
  }

  return v18;
}

- (id)copyMyPeerInfo:(id *)a3
{
  v4 = SOSCCCopyMyPeerInfo();
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = 0;
  }

  return v5;
}

- (id)copyPeerID:(id)a3
{
  result = SOSPeerInfoGetPeerID();
  if (result)
  {

    return CFStringCreateCopy(0, result);
  }

  return result;
}

- (id)copyMyPeerID
{
  v14 = 0;
  v3 = [(SecureBackupDaemon *)self copyMyPeerInfo:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [(SecureBackupDaemon *)self copyPeerID:v3];
  }

  else
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E968(v4, v6, v7, v8, v9, v10, v11, v12);
    }

    v5 = @"unknown";
  }

  return v5;
}

- (id)copyMyPeerIDWithError:(id *)a3
{
  v5 = [(SecureBackupDaemon *)self copyMyPeerInfo:?];
  if (v5)
  {
    v6 = [(SecureBackupDaemon *)self copyPeerID:v5];
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004E9D4(a3);
    }

    v6 = 0;
  }

  return v6;
}

- (id)copyBackupKeyForNewDeviceRecoverySecret:(id)a3 error:(id *)a4
{
  v5 = SOSCopyDeviceBackupPublicKey();
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = 0;
  }

  return v6;
}

- (id)copyMyPeerWithNewDeviceRecoverySecret:(id)a3 error:(id *)a4
{
  v5 = SOSCCCopyMyPeerWithNewDeviceRecoverySecret();
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = 0;
  }

  return v6;
}

- (id)copyEncodedData:(id)a3 error:(id *)a4
{
  v5 = SOSPeerInfoCopyEncodedData();
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = 0;
  }

  return v6;
}

- (BOOL)registerSingleRecoverySecret:(id)a3 iCDP:(BOOL)a4 error:(id *)a5
{
  v6 = SOSCCRegisterSingleRecoverySecret();
  v7 = v6;
  if (a5 && (v6 & 1) == 0)
  {
    *a5 = 0;
  }

  return v7;
}

- (id)createPeerInfoFromData:(id)a3 error:(id *)a4
{
  v5 = SOSPeerInfoCreateFromData();
  v6 = v5;
  if (a4 && !v5)
  {
    *a4 = 0;
  }

  return v6;
}

- (id)copyOSVersion:(id)a3
{
  result = SOSPeerInfoLookupGestaltValue();
  if (result)
  {

    return CFStringCreateCopy(0, result);
  }

  return result;
}

- (id)allViews
{
  v2 = SOSViewCopyViewSet();
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingSelector:"compare:"];

  return v4;
}

- (id)currentViews
{
  AllCurrent = SOSViewsGetAllCurrent();
  if (AllCurrent)
  {
    v3 = [AllCurrent allObjects];
    v4 = [v3 sortedArrayUsingSelector:"compare:"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)circleChangedNotification
{
  if (OctagonPlatformSupportsSOS() && !_os_feature_enabled_impl())
  {
    v2 = &kSOSCCCircleChangedNotification;
  }

  else
  {
    v2 = &OTTrustStatusChangeNotification;
  }

  v3 = [NSString stringWithUTF8String:*v2];

  return v3;
}

- (id)createEncodedDirectBackupSliceKeybagFromData:(id)a3 error:(id *)a4
{
  v11 = 0;
  Direct = SOSBackupSliceKeyBagCreateDirect();
  if (Direct)
  {
    v11 = 0;
    v6 = SOSBSKBCopyEncoded();
    if (v6)
    {
      goto LABEL_10;
    }

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004EA50(&v11);
    }
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004EAB8(&v11);
    }
  }

  if (a4)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = v11;
    [v8 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];

    *a4 = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v8];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (BOOL)backupSliceKeybagHasRecoveryKey:(id)a3
{
  v3 = [a3 bskb];
  if (v3)
  {
    v4 = SOSBSKBHasRecoveryKey();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createDERDataFromPlist:(id)a3
{
  v12 = 0;
  DERData = CFPropertyListCreateDERData();
  if (!DERData)
  {
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004EB20(&v12, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return DERData;
}

- (id)createPlistFromDERData:(id)a3
{
  v12 = 0;
  v3 = CFPropertyListCreateWithDERData();
  if (!v3)
  {
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10004EB9C(&v12, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return v3;
}

- (id)createiCloudRecoveryPasswordWithError:(id *)a3
{
  v11 = 0;
  v4 = SecPasswordGenerate();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 dataUsingEncoding:4];
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004EC18(&v11);
    }

    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:@"SecPasswordGenerate() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
    v9 = v11;
    [v8 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];

    if (a3)
    {
      *a3 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (void)doEnableEscrowMultiICSCWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SecureBackupDaemon *)self massageOutgoingMetadataFromRequest:v6];
  v9 = [v6 metadataHash];
  v10 = [v9 objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

  v11 = [v6 metadataHash];
  v140 = [v11 objectForKeyedSubscript:@"duplicateEncodedMetadata"];

  v12 = +[NSMutableDictionary dictionary];
  if ([(SecureBackupDaemon *)self forceICDP])
  {
    v13 = CloudServicesLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FORCING ICDP + MULTIPLE ICSC", buf, 2u);
    }
  }

  v14 = [v6 passphrase];
  if ([v14 length])
  {
  }

  else
  {
    v15 = [v6 useCachedPassphrase];

    if (v15)
    {
      v16 = [(SecureBackupDaemon *)self cachedPassphrase];
      [v6 setPassphrase:v16];

      v17 = [v6 passphrase];
      v18 = [v17 length];

      if (!v18)
      {
        v75 = CloudServicesLog();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_10004F208();
        }

        v27 = objc_alloc_init(NSMutableDictionary);
        [v27 setObject:@"Missing cached passphrase" forKeyedSubscript:NSLocalizedDescriptionKey];
        v76 = [NSError errorWithDomain:kSecureBackupErrorDomain code:9 userInfo:v27];
        v7[2](v7, v76);

        v21 = v8;
        goto LABEL_117;
      }
    }
  }

  v19 = [v6 passphrase];
  v139 = v12;
  if ([v19 length])
  {
    goto LABEL_12;
  }

  v20 = [v6 hsa2CachedPrerecordUUID];
  if (v20)
  {

LABEL_12:
    goto LABEL_13;
  }

  v70 = [v6 passcodeStashSecret];

  if (!v70)
  {
    goto LABEL_73;
  }

LABEL_13:
  if (([v6 icdp] & 1) == 0)
  {
    v34 = [v6 countryDialCode];
    if ([v34 length])
    {
      v35 = [v6 countryCode];
      if ([v35 length])
      {
        v36 = [v6 smsTarget];
        if ([v36 length])
        {
          v37 = [v6 appleID];
          if ([v37 length])
          {
            [v6 iCloudPassword];
            v38 = v7;
            v40 = v39 = v8;
            v138 = [v40 length];

            v8 = v39;
            v7 = v38;

            v12 = v139;
            if (v138)
            {
              goto LABEL_14;
            }

LABEL_73:
            v135 = v8;
            v137 = v10;
            v81 = v7;
            v82 = CloudServicesLog();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              sub_10004F0DC(v6, v82);
            }

            v83 = [NSString alloc];
            v84 = [v6 passphrase];
            if (v84)
            {
              v85 = @"non-";
            }

            else
            {
              v85 = &stru_1000767A0;
            }

            v86 = [v6 smsTarget];
            v87 = [v6 appleID];
            v88 = [v6 iCloudPassword];
            if (v88)
            {
              v89 = @"non-";
            }

            else
            {
              v89 = &stru_1000767A0;
            }

            v27 = [v83 initWithFormat:@"attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", v85, v86, v87, v89];

            v90 = objc_alloc_init(NSMutableDictionary);
            [v90 setObject:v27 forKeyedSubscript:NSLocalizedDescriptionKey];
            v91 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v90];
            v7 = v81;
            v81[2](v81, v91);

            v21 = v135;
            goto LABEL_115;
          }
        }
      }
    }

    goto LABEL_73;
  }

LABEL_14:
  v21 = [(SecureBackupDaemon *)self ensureClientMetadata:v8 forRequest:v6];

  v22 = [v6 hsa2CachedPrerecordUUID];

  v23 = CloudServicesLog();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v24)
    {
      v25 = [v6 hsa2CachedPrerecordUUID];
      *buf = 138412290;
      v154 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "enableWithRequest to escrow a prerecord: %@", buf, 0xCu);
    }

    v152 = 0;
    v26 = [SecEscrowRequest request:&v152];
    v27 = v152;
    if (!v26)
    {
      v71 = CloudServicesLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_10004ED24();
      }

      v7[2](v7, v27);
      goto LABEL_116;
    }

    v137 = v10;
    v28 = [v6 hsa2CachedPrerecordUUID];
    v151 = v27;
    v29 = [v26 fetchPrerecord:v28 error:&v151];
    v30 = v151;

    if (!v29 || v30)
    {
      v72 = CloudServicesLog();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_10004ECBC();
      }

      v73 = +[NSMutableDictionary dictionary];
      [v73 setObject:v30 forKeyedSubscript:NSUnderlyingErrorKey];
      [v73 setObject:@"unable to fetch a prerecord" forKeyedSubscript:NSLocalizedDescriptionKey];
      v74 = [NSError errorWithDomain:kSecureBackupErrorDomain code:38 userInfo:v73];
      v7[2](v7, v74);

      v27 = v30;
      goto LABEL_115;
    }

    v31 = [[EscrowPrerecord alloc] initWithData:v29];
    if (!v31)
    {
      v92 = CloudServicesLog();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        sub_10004EC80();
      }

      v93 = [NSError errorWithDomain:kSecureBackupErrorDomain code:38 userInfo:0];
      v7[2](v7, v93);

      v27 = v26;
      goto LABEL_115;
    }

    v32 = v31;
    [v6 setPrerecord:v31];
    -[SecureBackupDaemon setPasscodeMetadata:passphraseType:](self, "setPasscodeMetadata:passphraseType:", v21, [v32 passphraseType]);
    v33 = CloudServicesLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "prepareHSA2: acquired prerecord", buf, 2u);
    }

    v27 = 0;
  }

  else
  {
    v137 = v10;
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "enableWithRequest to escrow a password", buf, 2u);
    }

    v150 = 0;
    v32 = [(SecureBackupDaemon *)self makeRecordCandidate:v6 error:&v150];
    v41 = v150;
    v27 = v41;
    if (!v32)
    {
      if (!v41)
      {
        v77 = objc_alloc_init(NSMutableDictionary);
        [v77 setObject:@"could not create escrow record contents" forKeyedSubscript:NSLocalizedDescriptionKey];
        v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v77];
      }

      v78 = CloudServicesLog();
      v10 = v137;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        sub_10004F074();
      }

      v7[2](v7, v27);
      goto LABEL_117;
    }

    v26 = [v32 recordContents];
    [v6 setEscrowRecord:v26];
  }

  v12 = v139;
  [v139 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesMultipleiCSCKey];
  v42 = [v32 timestamp];
  [v139 setObject:v42 forKeyedSubscript:kSecureBackupTimestampKey];

  v43 = [v32 sosBackupKeybagDigest];
  v134 = kSecureBackupKeybagDigestKey;
  [v139 setObject:v43 forKeyedSubscript:?];

  v44 = [v32 escrowedSPKI];
  [v139 setObject:v44 forKeyedSubscript:kSecureBackupEscrowedSPKIKey];

  v45 = [v32 bottleID];
  [v139 setObject:v45 forKeyedSubscript:kSecureBackupBottleIDKey];

  v46 = [v32 passcodeGeneration];
  if (v46)
  {
    v47 = v46;
    v48 = [v32 passcodeGeneration];
    v49 = [v48 hasValue];

    if (v49)
    {
      v50 = [v32 passcodeGeneration];
      v51 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v50 value]);
      [v139 setObject:v51 forKeyedSubscript:kSecureBackupPasscodeGenerationKey];
    }
  }

  if (v21)
  {
    v52 = [v32 timestamp];
    [v21 setObject:v52 forKeyedSubscript:kSecureBackupMetadataTimestampKey];

    [v139 setObject:v21 forKeyedSubscript:kSecureBackupClientMetadataKey];
  }

  v53 = [v6 smsTarget];

  if (!v53)
  {
LABEL_42:
    v58 = [(SecureBackupDaemon *)self _gestaltValueForKey:@"SerialNumber"];
    [v139 setObject:v58 forKeyedSubscript:kSecureBackupSerialNumberKey];

    v59 = [(SecureBackupDaemon *)self _gestaltValueForKey:@"BuildVersion"];
    [v139 setObject:v59 forKeyedSubscript:kSecureBackupBuildVersionKey];

    if (!OctagonPlatformSupportsSOS() || (_os_feature_enabled_impl() & 1) != 0)
    {
      v60 = objc_alloc_init(OTConfigurationContext);
      v61 = sub_10000F1A8();
      [(__CFString *)v60 setAltDSID:v61];

      [(__CFString *)v60 setContext:OTDefaultContext];
      v62 = [[OTClique alloc] initWithContextData:v60];
      v146 = 0;
      v63 = [v62 cliqueMemberIdentifier:&v146];
      v64 = v146;
      [v6 setRecordID:v63];

      v65 = [v6 recordID];

      if (!v65 || v64)
      {
        v79 = CloudServicesLog();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_10004F00C();
        }

        if (!v64)
        {
          v80 = [NSDictionary dictionaryWithObjectsAndKeys:@"OTClique no cliqueMemberIdentifier", NSLocalizedDescriptionKey, 0];
          v64 = [NSError errorWithDomain:kSecureBackupErrorDomain code:44 userInfo:v80];
        }

        v7[2](v7, v64);

        goto LABEL_114;
      }

      v66 = v60;
      v60 = 0;
      goto LABEL_47;
    }

    v94 = [v32 sosBackupKeybagPassword];
    v148 = 0;
    v95 = [(SecureBackupDaemon *)self copyMyPeerWithNewDeviceRecoverySecret:v94 error:&v148];
    v64 = v148;

    if (v95)
    {
      v96 = [(SecureBackupDaemon *)self copyPeerID:v95];
      if (v96)
      {
        v60 = v96;
        v133 = v95;
        [v6 setRecordID:v96];
        v97 = [v32 sosPeerID];
        if (v97)
        {
          v98 = v97;
          v99 = [v32 sosPeerID];
          v131 = v64;
          v100 = v99;
          v101 = v99 ? v99 : @"not possible";
          v102 = [(__CFString *)v60 isEqualToString:v101];

          v64 = v131;
          if (v102)
          {
            v103 = CloudServicesLog();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "Escrow record peer ID matches peer ID at backup time", buf, 2u);
            }

            v104 = CloudServicesLog();
            v62 = v133;
            if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
            {
              v105 = [v6 recordID];
              *buf = 138412290;
              v154 = v105;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Escrow record ID will be %@", buf, 0xCu);

              v64 = v131;
            }

            v106 = [(SecureBackupDaemon *)self copyBackupKey:v133];
            v130 = v106;
            if (v106)
            {
              v107 = [v106 sha1Digest];
              v108 = [v32 sosBackupKeybagDigest];
              v129 = v107;
              LOBYTE(v107) = [v107 isEqual:v108];

              v109 = CloudServicesLog();
              v110 = v109;
              if (v107)
              {
                if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v154 = v60;
                  v155 = 2112;
                  v156 = v130;
                  v157 = 2112;
                  v158 = v129;
                  _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "SOSCCCopyMyPeerWithNewDeviceRecoverySecret() called got peer ID: %@, backup key: %@, digest: %@", buf, 0x20u);
                }

                [v139 setObject:v129 forKeyedSubscript:v134];
                v147 = v131;
                v136 = [(SecureBackupDaemon *)self copyEncodedData:v133 error:&v147];
                v66 = v147;

                if (v136)
                {
                  [v139 setObject:v136 forKeyedSubscript:kSecureBackupPeerInfoDataKey];
                }

                else
                {
                  v132 = CloudServicesLog();
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004EDC8();
                  }
                }

LABEL_47:
                [v6 setMetadata:v139];
                [v6 setEncodedMetadata:v137];
                [v6 setDuplicateEncodedMetadata:v140];
                v67 = [EscrowService alloc];
                v68 = [(SecureBackupDaemon *)self operationsLogger];
                v69 = [(EscrowService *)v67 initWithOperationsLogger:v68];

                v64 = v69;
                v141[0] = _NSConcreteStackBlock;
                v141[1] = 3221225472;
                v141[2] = sub_100046CB8;
                v141[3] = &unk_1000755B0;
                v141[4] = self;
                v142 = v6;
                v143 = v60;
                v144 = v139;
                v145 = v7;
                v60 = v60;
                [(EscrowService *)v69 storeRecordWithRequest:v142 completionBlock:v141];

LABEL_114:
LABEL_115:
                v10 = v137;
LABEL_116:
                v12 = v139;
                goto LABEL_117;
              }

              if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
              {
                sub_10004ED8C();
              }

              v127 = kSecureBackupErrorDomain;
              v159 = NSLocalizedDescriptionKey;
              v160 = @"SOS backup keybag digest mismatch";
              v128 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
              v126 = [NSError errorWithDomain:v127 code:37 userInfo:v128];

              v27 = v128;
              v64 = v131;
              v62 = v133;
              v124 = v129;
            }

            else
            {
              v123 = CloudServicesLog();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                sub_10004EE30();
              }

              v124 = objc_alloc_init(NSMutableDictionary);
              [v124 setObject:@"SOSPeerInfoCopyBackupKey() returned no backup public key for peer" forKeyedSubscript:NSLocalizedDescriptionKey];
              v125 = [NSError alloc];
              v126 = [v125 initWithDomain:kSecureBackupErrorDomain code:20 userInfo:v124];
            }

            v7[2](v7, v126);
            v27 = v126;
            goto LABEL_114;
          }
        }

        v115 = v64;
        v117 = CloudServicesLog();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          sub_10004EE98(v60, v32);
        }

        v118 = kSecureBackupErrorDomain;
        v161 = NSLocalizedDescriptionKey;
        v162 = @"SOS peer ID mismatch";
        v119 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
        v120 = [NSError errorWithDomain:v118 code:24 userInfo:v119];

        v7[2](v7, v120);
        v27 = v120;
        v95 = v133;
LABEL_113:

        v64 = v115;
        goto LABEL_114;
      }

      v115 = v64;
      v121 = CloudServicesLog();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        sub_10004EF44();
      }

      v114 = objc_alloc_init(NSMutableDictionary);
      v112 = v114;
      v113 = NSLocalizedDescriptionKey;
      v116 = @"SOSPeerInfoGetPeerID() failed";
    }

    else
    {
      v111 = CloudServicesLog();
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        sub_10004EF80(v64);
      }

      v112 = objc_alloc_init(NSMutableDictionary);
      [v112 setObject:@"SOSCCCopyMyPeerWithNewDeviceRecoverySecret() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
      v113 = NSUnderlyingErrorKey;
      v114 = v112;
      v115 = v64;
      v116 = v64;
    }

    [v114 setObject:v116 forKeyedSubscript:v113];
    v122 = [NSError errorWithDomain:kSecureBackupErrorDomain code:17 userInfo:v112];

    v7[2](v7, v122);
    v60 = 0;
    v27 = v122;
    goto LABEL_113;
  }

  v54 = [v6 smsTarget];
  v149 = v27;
  v55 = [(SecureBackupDaemon *)self normalizeSMSTarget:v54 error:&v149];
  v56 = v149;

  [v6 setSmsTarget:v55];
  v57 = [v6 smsTarget];

  if (v57)
  {
    v27 = v56;
    goto LABEL_42;
  }

  v7[2](v7, v56);

  v27 = v56;
  v10 = v137;
LABEL_117:
}

- (void)setPasscodeMetadata:(id)a3 passphraseType:(int)a4
{
  v5 = a3;
  if (a4 <= 3)
  {
    v6 = *(&off_100076228 + a4);
    v7 = *(&off_100076248 + a4);
    v8 = off_100076268[a4];
    v9 = v5;
    [v5 setObject:v6 forKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
    [v9 setObject:v7 forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
    [v9 setObject:v8 forKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
    v5 = v9;
  }
}

- (id)makeRecordCandidate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SecureBackupEscrowRecordCandidate);
  v68 = 0;
  v8 = [(SecureBackupDaemon *)self createiCloudRecoveryPasswordWithError:&v68];
  v9 = v68;
  [(SecureBackupEscrowRecordCandidate *)v7 setSosBackupKeybagPassword:v8];
  if (v8)
  {
    v10 = +[CSDateUtilities posixDateFormatter];
    v11 = +[NSDate date];
    v12 = [v10 stringFromDate:v11];

    [(SecureBackupEscrowRecordCandidate *)v7 setTimestamp:v12];
    if (!OctagonPlatformSupportsSOS() || (_os_feature_enabled_impl() & 1) != 0)
    {
      v46 = v9;
      goto LABEL_5;
    }

    v67 = v9;
    v31 = [(SecureBackupDaemon *)self copyMyPeerIDWithError:&v67];
    v46 = v67;

    [(SecureBackupEscrowRecordCandidate *)v7 setSosPeerID:v31];
    v32 = [(SecureBackupEscrowRecordCandidate *)v7 sosPeerID];
    if (v32)
    {
      v33 = v46 == 0;
    }

    else
    {
      v33 = 0;
    }

    v34 = !v33;

    v35 = CloudServicesLog();
    v36 = v35;
    if (v34)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10004F244();
      }

      if (a4)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        [v17 setObject:@"SOSCopyPeerID() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
        [v17 setObject:v46 forKeyedSubscript:NSUnderlyingErrorKey];
        v37 = [NSError errorWithDomain:kSecureBackupErrorDomain code:17 userInfo:v17];
LABEL_55:
        v18 = 0;
        *a4 = v37;
        goto LABEL_43;
      }
    }

    else
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(SecureBackupEscrowRecordCandidate *)v7 sosPeerID];
        LODWORD(v73) = 138412290;
        *(&v73 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Creating record candidate with SOS peerID %@", &v73, 0xCu);
      }

      v66 = 0;
      v41 = [(SecureBackupDaemon *)self copyBackupKeyForNewDeviceRecoverySecret:v8 error:&v66];
      v46 = v66;
      if (v41)
      {
        v42 = [v41 sha1Digest];
        [(SecureBackupEscrowRecordCandidate *)v7 setSosBackupKeybagDigest:v42];

LABEL_5:
        v13 = objc_alloc_init(OTConfigurationContext);
        v14 = sub_10000F1A8();
        [v13 setAltDSID:v14];

        [v13 setContext:OTDefaultContext];
        v15 = [[OTClique alloc] initWithContextData:v13];
        *&v73 = 0;
        *(&v73 + 1) = &v73;
        v74 = 0x3032000000;
        v75 = sub_10004775C;
        v76 = sub_10004776C;
        v77 = 0;
        v60 = 0;
        v61 = &v60;
        v62 = 0x3032000000;
        v63 = sub_10004775C;
        v64 = sub_10004776C;
        v65 = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x3032000000;
        v57 = sub_10004775C;
        v58 = sub_10004776C;
        v59 = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x3032000000;
        v51 = sub_10004775C;
        v52 = sub_10004776C;
        v53 = 0;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100047774;
        v47[3] = &unk_100076208;
        v47[4] = &v48;
        v47[5] = &v54;
        v47[6] = &v73;
        v47[7] = &v60;
        [v15 fetchEscrowContents:v47];
        v16 = v49[5];
        if (v16)
        {
          if (a4)
          {
            v17 = 0;
            v18 = 0;
            *a4 = v16;
LABEL_42:
            _Block_object_dispose(&v48, 8);

            _Block_object_dispose(&v54, 8);
            _Block_object_dispose(&v60, 8);

            _Block_object_dispose(&v73, 8);
LABEL_43:

LABEL_44:
            v9 = v46;
            goto LABEL_45;
          }
        }

        else
        {
          if (*(*(&v73 + 1) + 40) && v61[5] && v55[5])
          {
            v20 = CloudServicesLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(*(&v73 + 1) + 40);
              v22 = [v61[5] length];
              *buf = 138412546;
              v70 = v21;
              v71 = 2048;
              v72 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Including contents for bottle ID %@ (%llu bytes)", buf, 0x16u);
            }

            [(SecureBackupEscrowRecordCandidate *)v7 setEscrowedSPKI:v55[5]];
            [(SecureBackupEscrowRecordCandidate *)v7 setBottleID:*(*(&v73 + 1) + 40)];
            v17 = v61[5];
            v45 = MKBGetDeviceConfigurations();
            if (v45)
            {
              v23 = [v45 objectForKeyedSubscript:@"PasscodeGeneration"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v24 = objc_alloc_init(EscrowPrerecordPasscodeGeneration);
                [(SecureBackupEscrowRecordCandidate *)v7 setPasscodeGeneration:v24];

                v43 = [v23 unsignedLongLongValue];
                v25 = [(SecureBackupEscrowRecordCandidate *)v7 passcodeGeneration];
                [v25 setValue:v43];
              }
            }

            v26 = [[NSMutableDictionary alloc] initWithCapacity:5];
            v27 = [(SecureBackupEscrowRecordCandidate *)v7 sosBackupKeybagDigest];
            [v26 setObject:v27 forKeyedSubscript:kSecureBackupKeybagDigestKey];

            [v26 setObject:v8 forKeyedSubscript:kSecureBackupBagPasswordKey];
            [v26 setObject:@"1" forKeyedSubscript:@"BackupVersion"];
            [v26 setObject:v12 forKeyedSubscript:kSecureBackupTimestampKey];
            if ([v6 requiresDoubleEnrollment])
            {
              v44 = +[NSUUID UUID];
              v28 = [v44 UUIDString];
              [v26 setObject:v28 forKeyedSubscript:@"DoubleEnrollmentPassword"];

              [v26 setObject:&off_10007A458 forKeyedSubscript:@"DoubleEnrollmentVersion"];
            }

            v29 = [v6 idmsData];

            if (v29)
            {
              v30 = [v6 idmsData];
              [v26 setObject:v30 forKeyedSubscript:kSecureBackupIDMSDataKey];
            }

            if (v17)
            {
              [v26 setObject:v17 forKeyedSubscript:@"BottledPeerEntropy"];
            }

            [(SecureBackupEscrowRecordCandidate *)v7 setRecordContents:v26];
            v18 = v7;

            goto LABEL_42;
          }

          if (a4)
          {
            v38 = objc_alloc_init(NSMutableDictionary);
            [v38 setObject:@"fetchEscrowContents failed" forKeyedSubscript:NSLocalizedDescriptionKey];
            *a4 = [NSError errorWithDomain:kSecureBackupErrorDomain code:46 userInfo:v38];
          }
        }

        v17 = 0;
        v18 = 0;
        goto LABEL_42;
      }

      if (a4)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        [v17 setObject:@"copyBackupKeyForNewDeviceRecoverySecret() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
        [v17 setObject:v46 forKeyedSubscript:NSUnderlyingErrorKey];
        v37 = [NSError errorWithDomain:kSecureBackupErrorDomain code:17 userInfo:v17];
        goto LABEL_55;
      }
    }

    v18 = 0;
    goto LABEL_44;
  }

  v19 = CloudServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10004F2AC();
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:@"could not create backup bag password" forKeyedSubscript:NSLocalizedDescriptionKey];
  if (a4)
  {
    [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v10];
    *a4 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_45:

  return v18;
}

- (id)ensureClientMetadata:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  if (v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = [(SecureBackupDaemon *)self currentClientMetadata];
      if (([v7 isEqualToDictionary:v6] & 1) == 0)
      {
        v8 = CloudServicesLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_10004F3A0();
        }
      }
    }

    v9 = v6;
    goto LABEL_11;
  }

  if ([a4 generateClientMetadata])
  {
    v9 = [(SecureBackupDaemon *)self currentClientMetadata];
LABEL_11:
    v10 = v9;
    goto LABEL_12;
  }

  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_10004F424();
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)currentClientMetadata
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v15 = -1;
  v4 = +[MCProfileConnection sharedConnection];
  v5 = [v4 unlockScreenTypeWithOutSimplePasscodeType:&v15];

  if (v5)
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
    [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
    v6 = &off_10007A410;
  }

  else
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
    if (v15)
    {
      [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
      v6 = &off_10007A440;
    }

    else
    {
      [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
      v6 = &off_10007A428;
    }
  }

  [v3 setObject:v6 forKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
  v7 = MGCopyAnswer();
  [v3 setObject:v7 forKeyedSubscript:@"device_name"];

  v8 = MGCopyAnswer();
  [v3 setObject:v8 forKeyedSubscript:@"device_model"];

  v9 = MGCopyAnswer();
  [v3 setObject:v9 forKeyedSubscript:@"device_model_version"];

  v10 = MGCopyAnswer();
  [v3 setObject:v10 forKeyedSubscript:@"device_model_class"];

  [v3 setObject:&off_10007A458 forKeyedSubscript:@"device_platform"];
  v11 = MGCopyAnswer();
  [v3 setObject:v11 forKeyedSubscript:@"device_color"];

  v12 = MGCopyAnswer();
  [v3 setObject:v12 forKeyedSubscript:@"device_enclosure_color"];

  v13 = [(SecureBackupDaemon *)self currentMachineID];
  [v3 setObject:v13 forKeyedSubscript:@"device_mid"];

  return v3;
}

- (id)currentMachineID
{
  v2 = objc_alloc_init(AKAnisetteProvisioningController);
  v8 = 0;
  v3 = [v2 anisetteDataWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = [v3 machineID];
  }

  else
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004F464();
    }

    v5 = 0;
  }

  return v5;
}

@end