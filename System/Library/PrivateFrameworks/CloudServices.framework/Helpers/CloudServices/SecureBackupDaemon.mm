@interface SecureBackupDaemon
- (BOOL)_backupEnabled;
- (BOOL)_restoreKeychainWithBackupPassword:(id)password keybagDigest:(id)digest error:(id *)error;
- (BOOL)_restoreView:(id)view password:(id)password keybagDigest:(id)digest restoredViews:(id)views error:(id *)error;
- (BOOL)_usesEscrow;
- (BOOL)backupAllowed;
- (BOOL)backupSetConfirmedManifest:(id)manifest digest:(id)digest manifest:(id)a5 error:(id *)error;
- (BOOL)backupSliceKeybagHasRecoveryKey:(id)key;
- (BOOL)backupWithChanges:(id)changes error:(id *)error handler:(id)handler;
- (BOOL)backupWithRegisteredBackupViewWithError:(id)error error:(id *)a4;
- (BOOL)backupWithRegisteredBackupsWithError:(id *)error handler:(id)handler;
- (BOOL)hasRecoveryKeyInKVS:(id)s error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)registerSingleRecoverySecret:(id)secret iCDP:(BOOL)p error:(id *)error;
- (BOOL)removeRecoveryKey:(id *)key;
- (BOOL)verifyRKWithKeyBag:(id)bag password:(id)password error:(id *)error;
- (BOOL)verifyRecoveryKey:(id)key error:(id *)error;
- (NSString)cachedPassphrase;
- (NSString)cachedRecordIDPassphrase;
- (NSURL)cachedKeychainURL;
- (NSURL)cachedManifestURL;
- (SecureBackupDaemon)initWithOperationsLogger:(id)logger;
- (id)_EMCSBackup;
- (id)_EMCSBackupDictForKeybagDigest:(id)digest;
- (id)_KVSKeybag;
- (id)_consumeBackupJournal;
- (id)_consumeFullBackupForRecordID:(id)d;
- (id)_consumeViewBackup:(id)backup recordID:(id)d;
- (id)_createBackupKeybagWithPassword:(id)password;
- (id)_gestaltValueForKey:(__CFString *)key;
- (id)_getDERBackupFromKVS;
- (id)_getICDPBackupFromKVS:(id)s forView:(id)view;
- (id)_getKeychainItemForKey:(id)key status:(int *)status;
- (id)_getLastBackupTimestamp;
- (id)_getProtectedKeychainAndKeybagDigestFromKVS:(id *)s;
- (id)_metadata;
- (id)_pushCachedKeychainToKVS;
- (id)_pushCachedKeychainToKVSForView:(id)view recordID:(id)d;
- (id)_recordIDFromLabel:(id)label withPrefix:(id)prefix suffix:(id)suffix;
- (id)allViews;
- (id)cachedPassphraseForFD:(int)d;
- (id)cachedRecoveryKey;
- (id)circleChangedNotification;
- (id)copyBackupKeyForNewDeviceRecoverySecret:(id)secret error:(id *)error;
- (id)copyEncodedData:(id)data error:(id *)error;
- (id)copyKVSState;
- (id)copyMyPeerID;
- (id)copyMyPeerIDWithError:(id *)error;
- (id)copyMyPeerInfo:(id *)info;
- (id)copyMyPeerWithNewDeviceRecoverySecret:(id)secret error:(id *)error;
- (id)copyOSVersion:(id)version;
- (id)copyPeerID:(id)d;
- (id)createDERDataFromPlist:(id)plist;
- (id)createEncodedDirectBackupSliceKeybagFromData:(id)data error:(id *)error;
- (id)createPeerInfoFromData:(id)data error:(id *)error;
- (id)createPlistFromDERData:(id)data;
- (id)createiCloudRecoveryPasswordWithError:(id *)error;
- (id)currentClientMetadata;
- (id)currentMachineID;
- (id)currentViews;
- (id)derDataFromDict:(id)dict;
- (id)encodedStatsForViews:(id)views;
- (id)ensureClientMetadata:(id)metadata forRequest:(id)request;
- (id)fetchPRK:(id *)k;
- (id)filteriCDPRecords:(id)records;
- (id)getPendingEscrowRequest:(id *)request;
- (id)keysOfEntriesContainingObject:(id)object backups:(id)backups;
- (id)kvs;
- (id)makeRecordCandidate:(id)candidate error:(id *)error;
- (id)massageIncomingMetadataFromInfo:(id)info;
- (id)massageOutgoingMetadataFromRequest:(id)request;
- (id)normalizeSMSTarget:(id)target error:(id *)error;
- (id)removeRKFromKeyBag:(id)bag error:(id *)error;
- (id)restoreBackup:(id)backup withName:(id)name keybagDigest:(id)digest keybag:(id)keybag password:(id)password;
- (id)restoreEMCSBackup:(id)backup keybag:(id)keybag password:(id)password;
- (id)restoreEMCSBackup:(id)backup withPassword:(id)password;
- (id)secureBackups;
- (id)sortRecordsByBottleID:(id)d;
- (id)tagStaleBottleRecords:(id)records suggestedBottles:(id)bottles;
- (int)getPasscodeRequestFlag:(unint64_t *)flag;
- (int)notifyToken;
- (int)setPasscodeRequestFlag:(unint64_t)flag;
- (int)storeCachedPassphrase:(id)passphrase;
- (int64_t)compare:(id)compare with:(id)with backups:(id)backups;
- (int64_t)compareEscrowDatesBetweenCurrentRecord:(id)record andCandidateRecord:(id)candidateRecord;
- (os_state_data_s)_stateCapture;
- (void)_backupCloudIdentityKeychainViewAndPushToKVSCheckBackupEnabled:(BOOL)enabled;
- (void)_backupKeychainFully:(BOOL)fully reply:(id)reply;
- (void)_deleteAlliCDPRecordsWithContext:(id)context;
- (void)_disableBackup;
- (void)_enumerateICDPBackupsUsingBlock:(id)block;
- (void)_fetchStingrayAccountStatusInDaemon:(id)daemon reply:(id)reply;
- (void)_getAccountInfoWithRequest:(id)request reply:(id)reply;
- (void)_recoverSilentWithCDPContext:(id)context allRecords:(id)records altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply;
- (void)_recoverWithCDPContext:(id)context escrowRecord:(id)record altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply;
- (void)_recoverWithRequest:(id)request reply:(id)reply;
- (void)_removeCachedKeychain;
- (void)_removeKVSKeybag;
- (void)_removeKeychainItemForKey:(id)key;
- (void)_removeMetadata;
- (void)_removeProtectedKeychain;
- (void)_removeUsesEscrow;
- (void)_removeVeeTwoBackup;
- (void)_restoreKeychainAsyncWithBackupBag:(id)bag password:(id)password keybagDigest:(id)digest haveBottledPeer:(BOOL)peer restoredViews:(id)views viewsNotToBeRestored:(id)restored;
- (void)_saveKeychainItem:(id)item forKey:(id)key;
- (void)_setAutobackupEnabledWithReply:(id)reply;
- (void)_setEMCSBackup:(id)backup keybag:(id)keybag;
- (void)_setKVSKeybag:(id)keybag;
- (void)_setMetadata:(id)metadata;
- (void)_stashRecoveryDataWithRequest:(id)request reply:(id)reply;
- (void)_storeProtectedKeychainInKVS:(id)s keybagDigest:(id)digest;
- (void)_storeVeeTwoBackupInKVS:(id)s forViewName:(id)name withKeyStore:(id)store manifestDigest:(id)digest keybagDigest:(id)keybagDigest;
- (void)backOffDateWithRequest:(id)request reply:(id)reply;
- (void)backupForRecoveryKeyWithInfo:(id)info garbageCollect:(BOOL)collect reply:(id)reply;
- (void)backupWithInfo:(id)info garbageCollect:(BOOL)collect reply:(id)reply;
- (void)beginHSA2PasscodeRequest:(id)request desirePasscodeImmediately:(BOOL)immediately uuid:(id)uuid reason:(id)reason reply:(id)reply;
- (void)cachePassphraseWithRequest:(id)request reply:(id)reply;
- (void)cacheRecoveryKeyWithRequest:(id)request reply:(id)reply;
- (void)changeSMSTargetWithRequest:(id)request reply:(id)reply;
- (void)clearNotifyToken;
- (void)createICDPRecordWithRequest:(id)request recordContents:(id)contents reply:(id)reply;
- (void)daemonPasscodeRequestOpinion:(id)opinion;
- (void)deleteAlliCDPRecordsWithRequest:(id)request reply:(id)reply;
- (void)disableWithRequest:(id)request reply:(id)reply;
- (void)disableiCDPBackup;
- (void)doEnableEscrowMultiICSCWithRequest:(id)request reply:(id)reply;
- (void)enableGuitarfishTokenWithRequest:(id)request reply:(id)reply;
- (void)enableWithRequest:(id)request reply:(id)reply;
- (void)fetchStingrayAccountStatusInDaemon:(id)daemon reply:(id)reply;
- (void)garbageCollectEMCSBackupsExcluding:(id)excluding;
- (void)getAcceptedTermsForAltDSID:(id)d reply:(id)reply;
- (void)getAccountInfoWithRequest:(id)request reply:(id)reply;
- (void)getCertificatesWithRequest:(id)request reply:(id)reply;
- (void)getCountrySMSCodesWithRequest:(id)request reply:(id)reply;
- (void)handleEscrowStoreResults:(id)results escrowError:(id)error request:(id)request peerID:(id)d newRecordMetadata:(id)metadata backupKeybag:(id)keybag reply:(id)reply;
- (void)handleNotification:(id)notification;
- (void)isRecoveryKeySetInDaemon:(id)daemon;
- (void)knownICDPFederations:(id)federations;
- (void)moveToFederationAllowed:(id)allowed altDSID:(id)d reply:(id)reply;
- (void)notificationInfoWithReply:(id)reply;
- (void)notificationOccurred:(id)occurred;
- (void)prepareHSA2EscrowRecordContents:(id)contents usesComplexPassphrase:(BOOL)passphrase reply:(id)reply;
- (void)recordIDAndMetadataForSilentAttempt:(id)attempt passphraseLength:(unint64_t)length platform:(int)platform reply:(id)reply;
- (void)recordNotification:(id)notification handled:(BOOL)handled;
- (void)recoverEscrowWithRequest:(id)request reply:(id)reply;
- (void)recoverGuitarfishTokenWithRequest:(id)request reply:(id)reply;
- (void)recoverRecordContentsWithRequest:(id)request reply:(id)reply;
- (void)recoverSilentWithCDPContextInDaemon:(id)daemon allRecords:(id)records altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply;
- (void)recoverSilentWithCDPContextInDaemon:(id)daemon allRecords:(id)records reply:(id)reply;
- (void)recoverWithCDPContextInDaemon:(id)daemon escrowRecord:(id)record altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply;
- (void)recoverWithCDPContextInDaemon:(id)daemon escrowRecord:(id)record reply:(id)reply;
- (void)recoverWithRequest:(id)request reply:(id)reply;
- (void)registerForNotifyEvent:(id)event;
- (void)removeRecoveryKeyFromBackupInDaemon:(id)daemon;
- (void)restoreBackupName:(id)name peerID:(id)d keybag:(id)keybag password:(id)password backup:(id)backup reply:(id)reply;
- (void)restoreKeychainWithBackupPasswordInDaemon:(id)daemon reply:(id)reply;
- (void)saveTermsAcceptance:(id)acceptance reply:(id)reply;
- (void)setBackOffDateWithRequest:(id)request reply:(id)reply;
- (void)setCachedPassphrase:(id)passphrase;
- (void)setCachedRecordIDPassphrase:(id)passphrase;
- (void)setCachedRecoveryKey:(id)key;
- (void)setEMCSDict:(id)dict backupKeybag:(id)keybag saveKeybag:(BOOL)saveKeybag reply:(id)reply;
- (void)setPasscodeMetadata:(id)metadata passphraseType:(int)type;
- (void)setupNotifyEvents;
- (void)sortForMatchingPassphraseLengthAndPlatform:(id)platform secureBackups:(id)backups passphraseLength:(unint64_t)length platform:(unint64_t)a6 reply:(id)reply;
- (void)startSMSChallengeWithRequest:(id)request reply:(id)reply;
- (void)stashRecoveryDataWithRequest:(id)request reply:(id)reply;
- (void)stateCaptureWithReply:(id)reply;
- (void)storeDERBackupInKVS:(id)s;
- (void)synchronizeKVSWithHandler:(id)handler;
- (void)uncachePassphraseWithRequest:(id)request reply:(id)reply;
- (void)uncacheRecordIDPassphrase;
- (void)uncacheRecoveryKeyWithRequest:(id)request reply:(id)reply;
- (void)unregisterForNotifyEvent:(id)event;
- (void)updateMetadataWithRequest:(id)request reply:(id)reply;
- (void)verifyRecoveryKeyInDaemon:(id)daemon reply:(id)reply;
@end

@implementation SecureBackupDaemon

- (id)_createBackupKeybagWithPassword:(id)password
{
  v15 = -1;
  passwordCopy = password;
  bytes = [passwordCopy bytes];
  v5 = [passwordCopy length];

  v6 = sub_100047F88(bytes, v5, 4, &v15);
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

- (void)_saveKeychainItem:(id)item forKey:(id)key
{
  v13[0] = kSecAttrAccount;
  v13[1] = kSecAttrService;
  v14[0] = key;
  v14[1] = @"SecureBackupService";
  v13[2] = kSecClass;
  v13[3] = kSecAttrSynchronizable;
  v14[2] = kSecClassGenericPassword;
  v14[3] = &__kCFBooleanTrue;
  v13[4] = kSecAttrAccessible;
  v13[5] = kSecValueData;
  v14[4] = kSecAttrAccessibleAfterFirstUnlock;
  v14[5] = item;
  keyCopy = key;
  itemCopy = item;
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

- (void)_removeKeychainItemForKey:(id)key
{
  v10[0] = kSecAttrAccount;
  v10[1] = kSecAttrService;
  v11[0] = key;
  v11[1] = @"SecureBackupService";
  v10[2] = kSecClass;
  v10[3] = kSecAttrSynchronizable;
  v11[2] = kSecClassGenericPassword;
  v11[3] = &__kCFBooleanTrue;
  keyCopy = key;
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

- (id)_getKeychainItemForKey:(id)key status:(int *)status
{
  keyCopy = key;
  result = 0;
  v15[0] = kSecAttrAccount;
  v15[1] = kSecAttrService;
  v16[0] = keyCopy;
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
  if (status)
  {
    *status = v7;
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

- (void)_storeProtectedKeychainInKVS:(id)s keybagDigest:(id)digest
{
  digestCopy = digest;
  sCopy = s;
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
  [v13 setObject:sCopy forKeyedSubscript:@"com.apple.securebackup.keychain"];

  [v13 setObject:digestCopy forKeyedSubscript:kSecureBackupKeybagDigestKey];
  [v8 setDictionary:v13 forKey:@"com.apple.securebackup.record"];
}

- (void)_storeVeeTwoBackupInKVS:(id)s forViewName:(id)name withKeyStore:(id)store manifestDigest:(id)digest keybagDigest:(id)keybagDigest
{
  sCopy = s;
  nameCopy = name;
  storeCopy = store;
  digestCopy = digest;
  keybagDigestCopy = keybagDigest;
  context = objc_autoreleasePoolPush();
  nameCopy = [[NSString alloc] initWithFormat:@"%@.%@", @"com.apple.icdp.backup", nameCopy];
  v32 = [storeCopy dictionaryForKey:nameCopy];
  v16 = [v32 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v17 = [sCopy objectForKeyedSubscript:@"keybag"];
  v18 = [v16 objectForKeyedSubscript:@"backup"];
  v19 = [sCopy objectForKeyedSubscript:@"backup"];
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
        v38 = nameCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "skipping identical backup for %@", buf, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v22 = objc_alloc_init(NSDate);
  v23 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "rangeOfString:", @"-tomb"}];
  v30 = digestCopy;
  hexString = [digestCopy hexString];
  v25 = [hexString substringToIndex:6];

  hexString2 = [keybagDigestCopy hexString];
  v27 = [hexString2 substringToIndex:6];

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
  v36[1] = sCopy;
  v29 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  [storeCopy setDictionary:v29 forKey:nameCopy];

  digestCopy = v30;
LABEL_9:

  objc_autoreleasePoolPop(context);
}

- (void)_removeCachedKeychain
{
  cachedKeychainURL = [(SecureBackupDaemon *)self cachedKeychainURL];

  if (cachedKeychainURL)
  {
    v4 = +[NSFileManager defaultManager];
    cachedKeychainURL2 = [(SecureBackupDaemon *)self cachedKeychainURL];
    v9 = 0;
    v6 = [v4 removeItemAtURL:cachedKeychainURL2 error:&v9];
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

- (id)derDataFromDict:(id)dict
{
  dictCopy = dict;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010150;
  v8[3] = &unk_1000751D0;
  v9 = objc_alloc_init(NSMutableDictionary);
  v5 = v9;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [(SecureBackupDaemon *)self createDERDataFromPlist:v5];

  return v6;
}

- (void)storeDERBackupInKVS:(id)s
{
  sCopy = s;
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
  [v10 setObject:sCopy forKeyedSubscript:@"com.apple.securebackup.keychain"];

  [v5 setDictionary:v10 forKey:@"DERBackup"];
}

- (id)_pushCachedKeychainToKVSForView:(id)view recordID:(id)d
{
  viewCopy = view;
  dCopy = d;
  v8 = [(SecureBackupDaemon *)self kvs];
  v9 = [[SecureBackupViewStore alloc] initWithViewName:viewCopy recordID:dCopy];

  backupData = [(SecureBackupViewStore *)v9 backupData];
  if (backupData)
  {
    if ([viewCopy isEqualToString:@"KeychainV0-tomb"])
    {
      v11 = [(SecureBackupDaemon *)self _getProtectedKeychainAndKeybagDigestFromKVS:0];
      backupDict = [(SecureBackupViewStore *)v9 backupDict];
      keybagDigest = [(SecureBackupViewStore *)v9 keybagDigest];
      keybag = v11;
      v15 = backupDict;
      if (keybag == v15)
      {
        goto LABEL_6;
      }

      v16 = [keybag hash];
      if (v16 != [v15 hash])
      {
        goto LABEL_16;
      }

      allKeys = [keybag allKeys];
      v30 = [NSSet setWithArray:allKeys];

      allKeys2 = [v15 allKeys];
      v19 = [NSSet setWithArray:allKeys2];

      v29 = [v30 isEqualToSet:v19];
      if (v29)
      {
LABEL_6:
      }

      else
      {
LABEL_16:

        [(SecureBackupDaemon *)self _storeProtectedKeychainInKVS:v15 keybagDigest:keybagDigest];
      }
    }

    else
    {
      keybag = [(SecureBackupViewStore *)v9 keybag];
      recordID = [(SecureBackupViewStore *)v9 recordID];
      v22 = recordID;
      if (keybag && recordID)
      {
        v34[0] = @"backup";
        v34[1] = @"keybag";
        v35[0] = backupData;
        v35[1] = keybag;
        v34[2] = @"recordID";
        v35[2] = recordID;
        v23 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
        manifestHash = [(SecureBackupViewStore *)v9 manifestHash];
        sha1Digest = [manifestHash sha1Digest];
        [keybag sha1Digest];
        v31 = v22;
        v27 = v26 = v8;
        [(SecureBackupDaemon *)self _storeVeeTwoBackupInKVS:v23 forViewName:viewCopy withKeyStore:v26 manifestDigest:sha1Digest keybagDigest:v27];

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
      v33 = viewCopy;
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
      sha1Digest = [v6 sha1Digest];
      v9 = CloudServicesLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = sha1Digest;
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

  kvsQueue = [(SecureBackupDaemon *)self kvsQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100010A04;
  v14[3] = &unk_100075220;
  v15 = v4;
  v16 = &v18;
  v14[4] = self;
  v11 = v4;
  dispatch_sync(kvsQueue, v14);

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

- (id)_getProtectedKeychainAndKeybagDigestFromKVS:(id *)s
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

  if (s)
  {
    *s = [v5 objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
  }

  v8 = [v5 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];

  return v8;
}

- (id)_getICDPBackupFromKVS:(id)s forView:(id)view
{
  viewCopy = view;
  sCopy = s;
  viewCopy = [[NSString alloc] initWithFormat:@"%@.%@-tomb", @"com.apple.icdp.backup", viewCopy];

  v8 = [sCopy dictionaryForKey:viewCopy];

  return v8;
}

- (void)_enumerateICDPBackupsUsingBlock:(id)block
{
  blockCopy = block;
  kvsQueue = [(SecureBackupDaemon *)self kvsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010FA8;
  v7[3] = &unk_100075248;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(kvsQueue, v7);
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

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
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
    v13 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Changing metadata old: %@\n\nnew: %@", &v10, 0x16u);
  }

  [v5 setDictionary:metadataCopy forKey:v8];
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

- (void)_setKVSKeybag:(id)keybag
{
  keybagCopy = keybag;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = [v5 dataForKey:@"BackupKeybag"];
  if (v6)
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sha1Digest = [v6 sha1Digest];
      v11 = 138412290;
      v12 = sha1Digest;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Overwriting keybag in KVS! Old digest: %@", &v11, 0xCu);
    }
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sha1Digest2 = [keybagCopy sha1Digest];
    v11 = 138412290;
    v12 = sha1Digest2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving keybag in KVS digest: %@", &v11, 0xCu);
  }

  [v5 setData:keybagCopy forKey:@"BackupKeybag"];
}

- (id)_KVSKeybag
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dataForKey:@"BackupKeybag"];

  return v3;
}

- (void)_setEMCSBackup:(id)backup keybag:(id)keybag
{
  backupCopy = backup;
  keybagCopy = keybag;
  v8 = [(SecureBackupDaemon *)self kvs];
  v9 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.sbd.emcs" type:0];
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Saving EMCS backup", buf, 2u);
  }

  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];

  CFPreferencesSetAppValue(@"EMCSBackupUUID", uUIDString, SECURE_BACKUP_SERVICE_NAME);
  [v9 setString:uUIDString forKey:@"EMCSBackupUUID"];
  v20[0] = @"backup";
  v20[1] = @"keybag";
  v21[0] = backupCopy;
  v21[1] = keybagCopy;
  v20[2] = @"timestamp";
  v13 = objc_alloc_init(NSDate);
  v20[3] = @"uuid";
  v21[2] = v13;
  v21[3] = uUIDString;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  v15 = [NSString alloc];
  sha1Digest = [keybagCopy sha1Digest];
  hexString = [sha1Digest hexString];
  v18 = [v15 initWithFormat:@"%@-%@", @"EMCSBackupDict", hexString];

  [v8 setDictionary:v14 forKey:v18];
  [v8 setDictionary:v14 forKey:@"EMCSBackupDict"];
}

- (id)_EMCSBackup
{
  v2 = [(SecureBackupDaemon *)self kvs];
  v3 = [v2 dataForKey:@"EMCSBackup"];

  return v3;
}

- (id)_EMCSBackupDictForKeybagDigest:(id)digest
{
  digestCopy = digest;
  v5 = [(SecureBackupDaemon *)self kvs];
  v6 = @"EMCSBackupDict";
  if (digestCopy)
  {
    v7 = [NSString alloc];
    hexString = [digestCopy hexString];
    v6 = [v7 initWithFormat:@"%@-%@", @"EMCSBackupDict", hexString];
  }

  v9 = [v5 dictionaryForKey:v6];
  if (v9)
  {
    v10 = v9;
    if (!digestCopy)
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
        sha1Digest = [v12 sha1Digest];
        v15 = [digestCopy isEqual:sha1Digest];

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

- (void)garbageCollectEMCSBackupsExcluding:(id)excluding
{
  excludingCopy = excluding;
  v5 = [(SecureBackupDaemon *)self kvs];
  dictionaryRepresentation = [v5 dictionaryRepresentation];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [dictionaryRepresentation countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(dictionaryRepresentation);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v12 isEqualToString:{@"EMCSBackupDict", v14}] & 1) == 0 && objc_msgSend(v12, "hasPrefix:", @"EMCSBackupDict") && (objc_msgSend(v12, "hasSuffix:", excludingCopy) & 1) == 0)
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

      v9 = [dictionaryRepresentation countByEnumeratingWithState:&v15 objects:v21 count:16];
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
    sha1Digest = [v4 sha1Digest];
    v6 = 138412290;
    v7 = sha1Digest;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing keybag from KVS digest: %@", &v6, 0xCu);
  }

  [v2 removeObjectForKey:@"BackupKeybag"];
}

- (void)_setAutobackupEnabledWithReply:(id)reply
{
  [(SecureBackupDaemon *)self _backupFullKeychainWithReply:reply];
  circleChangedNotification = [(SecureBackupDaemon *)self circleChangedNotification];
  [(SecureBackupDaemon *)self unregisterForNotifyEvent:circleChangedNotification];

  [(SecureBackupDaemon *)self setNeedInitialBackup:0];
}

- (void)_backupKeychainFully:(BOOL)fully reply:(id)reply
{
  replyCopy = reply;
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
      if (!replyCopy)
      {
        v8 = "a";
      }

      *buf = 136315138;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "calling %ssynchronous backup", buf, 0xCu);
    }

    backupQueue = [(SecureBackupDaemon *)self backupQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000127E4;
    v13[3] = &unk_100075270;
    v13[4] = self;
    fullyCopy = fully;
    v14 = replyCopy;
    v15 = v17;
    dispatch_async(backupQueue, v13);

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100049FAC();
    }

    if (replyCopy)
    {
      v21 = NSLocalizedDescriptionKey;
      v22 = @"Attempt to back up when backup not enabled";
      v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [NSError errorWithDomain:kSecureBackupErrorDomain code:16 userInfo:v11];
      (*(replyCopy + 2))(replyCopy, v12);
    }
  }
}

- (void)_backupCloudIdentityKeychainViewAndPushToKVSCheckBackupEnabled:(BOOL)enabled
{
  if (!enabled)
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
    backupQueue = [(SecureBackupDaemon *)self backupQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012A74;
    v7[3] = &unk_100075298;
    v7[4] = self;
    v7[5] = buf;
    dispatch_async(backupQueue, v7);

    _Block_object_dispose(buf, 8);
    return;
  }

  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100049FE8();
  }
}

- (id)_consumeViewBackup:(id)backup recordID:(id)d
{
  backupCopy = backup;
  dCopy = d;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = backupCopy;
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
      v97 = backupCopy;
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
    v10 = backupCopy;
    v59 = v10;
    v11 = dCopy;
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
      v97 = backupCopy;
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
        domain = [v13 domain];
        if ([domain isEqualToString:NSPOSIXErrorDomain])
        {
          v27 = [v13 code] == 2;

          if (v27)
          {
            v20 = CloudServicesLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *v96 = 138412290;
              v97 = backupCopy;
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
        v97 = backupCopy;
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
        v97 = backupCopy;
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
      v97 = backupCopy;
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

    keybagDigest = [v30 keybagDigest];
    manifestHash = [v81[5] manifestHash];
    v33 = *(&buf + 1);
    obj = *(*(&buf + 1) + 40);
    v34 = [(SecureBackupDaemon *)self backupSetConfirmedManifest:v10 digest:keybagDigest manifest:manifestHash error:&obj];
    objc_storeStrong((v33 + 40), obj);

    if ((v34 & 1) == 0)
    {
      v41 = CloudServicesLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v50 = *(*(&buf + 1) + 40);
        *v96 = 138412546;
        v97 = backupCopy;
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

- (id)_consumeFullBackupForRecordID:(id)d
{
  dCopy = d;
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
  selfCopy = self;
  v6 = dCopy;
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
    [v11 setObject:v8 forKeyedSubscript:{NSUnderlyingErrorKey, v17, v18, v19, v20, selfCopy}];
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
  selfCopy = self;
  copyMyPeerID = [(SecureBackupDaemon *)self copyMyPeerID];
  v19 = copyMyPeerID;
  v21 = &v23;
  v4 = [(SecureBackupDaemon *)selfCopy backupWithRegisteredBackupsWithError:&v22 handler:v17];
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

    _pushCachedKeychainToKVS = [(SecureBackupDaemon *)self _pushCachedKeychainToKVS];
    v14 = v28[5];
    v28[5] = _pushCachedKeychainToKVS;
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

- (void)registerForNotifyEvent:(id)event
{
  uTF8String = [event UTF8String];
  if (uTF8String)
  {
    v4 = uTF8String;
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "Notification", v4);
    xpc_set_event();
  }
}

- (void)unregisterForNotifyEvent:(id)event
{
  if ([event UTF8String])
  {

    xpc_set_event();
  }
}

- (id)_gestaltValueForKey:(__CFString *)key
{
  v11 = 0;
  v4 = MGCopyAnswerWithError();
  if (!v4)
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10004A4C8(key, &v11);
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

- (id)normalizeSMSTarget:(id)target error:(id *)error
{
  targetCopy = target;
  v6 = [targetCopy length];
  v7 = (2 * v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v16 - v7;
  if (v6)
  {
    memset(&v16 - v7, 170, 2 * v6);
  }

  v9 = +[NSCharacterSet decimalDigitCharacterSet];
  invertedSet = [v9 invertedSet];

  if ([targetCopy rangeOfCharacterFromSet:invertedSet options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        *&v8[2 * i] = u_charDigitValue([targetCopy characterAtIndex:i]) + 48;
      }
    }

    error = [NSString stringWithCharacters:v8 length:v6];
  }

  else
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004A548();
    }

    if (error)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      targetCopy = [[NSString alloc] initWithFormat:@"attempt to enable backup with non-decimal digits in SMS target: %@", targetCopy];
      [v13 setObject:targetCopy forKeyedSubscript:NSLocalizedDescriptionKey];

      *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v13];

      error = 0;
    }
  }

  return error;
}

- (SecureBackupDaemon)initWithOperationsLogger:(id)logger
{
  loggerCopy = logger;
  v25.receiver = self;
  v25.super_class = SecureBackupDaemon;
  v6 = [(SecureBackupDaemon *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationsLogger, logger);
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
  isMultiUser = [v5 isMultiUser];

  if (isMultiUser)
  {
    [(SecureBackupDaemon *)self registerForNotifyEvent:@"com.apple.security.keychainchanged"];
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001545C;
  handler[3] = &unk_100075360;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", connectionQueue, handler);
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
  copyKVSState = [(SecureBackupDaemon *)self copyKVSState];
  if (copyKVSState)
  {
    v14 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:copyKVSState format:200 options:0 error:&v14];
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
  cacheDirURL = [(SecureBackupDaemon *)self cacheDirURL];

  if (cacheDirURL)
  {
    v4 = sub_100002B84();
    if (v4)
    {
      cacheDirURL2 = [(SecureBackupDaemon *)self cacheDirURL];
      v6 = [cacheDirURL2 URLByAppendingPathComponent:v4];
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
  cacheDirURL = [(SecureBackupDaemon *)self cacheDirURL];

  if (cacheDirURL)
  {
    v4 = sub_100002B84();
    if (v4)
    {
      cacheDirURL2 = [(SecureBackupDaemon *)self cacheDirURL];
      v6 = [cacheDirURL2 URLByAppendingPathComponent:v4];
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"application-identifier"];
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier = [connectionCopy processIdentifier];
    serviceName = [listenerCopy serviceName];
    v24[0] = 67109634;
    v24[1] = processIdentifier;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = serviceName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "sbd listener begin from pid %d (%@) [%@]", v24, 0x1Cu);
  }

  v12 = [connectionCopy valueForEntitlement:@"com.apple.securebackupd.access"];

  if (!v12)
  {
    v18 = CloudServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10004A754(connectionCopy);
    }

    goto LABEL_13;
  }

  serviceName2 = [listenerCopy serviceName];
  v14 = [serviceName2 isEqualToString:SECURE_BACKUP_SERVICE_NAME];

  if (!v14)
  {
    serviceName3 = [listenerCopy serviceName];
    v20 = [serviceName3 isEqualToString:SECURE_BACKUP_CONCURRENT_SERVICE_NAME];

    if (v20)
    {
      v21 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SecureBackupConcurrentProtocol];
      v16 = SecureBackupSetupConcurrentProtocol();

      [connectionCopy setExportedInterface:v16];
      [connectionCopy setExportedObject:self];
      goto LABEL_10;
    }

    v18 = CloudServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10004A6A0(connectionCopy, listenerCopy);
    }

LABEL_13:

    v22 = 0;
    goto LABEL_14;
  }

  v15 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SecureBackupProtocol];
  v16 = SecureBackupSetupProtocol();

  [connectionCopy setExportedInterface:v16];
  [connectionCopy setExportedObject:self];
  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [connectionCopy _setQueue:connectionQueue];

LABEL_10:
  [connectionCopy resume];
  v22 = 1;
LABEL_14:

  return v22;
}

- (void)recordNotification:(id)notification handled:(BOOL)handled
{
  notificationCopy = notification;
  if (handled)
  {
    [(SecureBackupDaemon *)self handledNotifications];
  }

  else
  {
    [(SecureBackupDaemon *)self ignoredNotifications];
  }
  v9 = ;
  v7 = [v9 objectForKeyedSubscript:notificationCopy];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue] + 1);
  [v9 setObject:v8 forKeyedSubscript:notificationCopy];
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [notificationCopy isEqualToString:@"com.apple.security.itembackup"];
  v6 = [notificationCopy isEqualToString:@"com.apple.security.keychainchanged"];
  circleChangedNotification = [(SecureBackupDaemon *)self circleChangedNotification];
  v8 = [notificationCopy isEqualToString:circleChangedNotification];

  if ((v5 & 1) == 0 && !v6)
  {
    if (!v8 || [(SecureBackupDaemon *)self needInitialBackup])
    {
      [(SecureBackupDaemon *)self notificationOccurred:notificationCopy];
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

    [(SecureBackupDaemon *)self recordNotification:notificationCopy handled:0];
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
  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016410;
  block[3] = &unk_1000753B0;
  block[4] = self;
  v15 = notificationCopy;
  v16 = v18;
  dispatch_after(v12, connectionQueue, block);

  _Block_object_dispose(v18, 8);
LABEL_16:
}

- (void)notificationOccurred:(id)occurred
{
  occurredCopy = occurred;
  [(SecureBackupDaemon *)self recordNotification:occurredCopy handled:1];
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = occurredCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got notification: %@", buf, 0xCu);
  }

  if ([occurredCopy isEqualToString:@"com.apple.security.itembackup"])
  {
    [(SecureBackupDaemon *)self _backupKeychain];
  }

  else if ([occurredCopy isEqualToString:@"com.apple.security.keychainchanged"])
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
    circleChangedNotification = [(SecureBackupDaemon *)self circleChangedNotification];
    v10 = [occurredCopy isEqualToString:circleChangedNotification];

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

    else if ([occurredCopy isEqualToString:@"com.apple.sbd.kvstorechange"])
    {
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = occurredCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handling notification %@", buf, 0xCu);
      }
    }
  }
}

- (id)massageIncomingMetadataFromInfo:(id)info
{
  v3 = kSecureBackupClientMetadataKey;
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:v3];
  v6 = [v5 mutableCopy];

  v7 = [infoCopy objectForKeyedSubscript:kSecureBackupTimestampKey];

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
  intValue = [v16 intValue];

  if (intValue == 6)
  {
    goto LABEL_7;
  }

  if (intValue == 4)
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

- (id)filteriCDPRecords:(id)records
{
  recordsCopy = records;
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

    backupKeyDigests = [v8 backupKeyDigests];
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      peerIDs = [v8 peerIDs];
      *buf = 138412290;
      v43 = peerIDs;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "iCloudIdentity backup keybag peers: %@", buf, 0xCu);
    }

    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = backupKeyDigests;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "keybag contains key digests %@", buf, 0xCu);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = recordsCopy;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v32 = v8;
      v33 = v6;
      v34 = recordsCopy;
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
          if (v21 && [backupKeyDigests containsObject:v21])
          {
            [v36 addObject:v19];
          }

          else
          {
            v22 = CloudServicesLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v35 = [v19 objectForKeyedSubscript:@"recordID"];
              hexString = [v21 hexString];
              *buf = 138412546;
              v43 = v35;
              v44 = 2112;
              v45 = hexString;
              v24 = hexString;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "record id %@ cannot recover iCloudIdentity backup! (backup key digest: %@)", buf, 0x16u);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v15);

      v6 = v33;
      recordsCopy = v34;
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

    allObjects = [v36 allObjects];
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

  allObjects = &__NSArray0__struct;
LABEL_31:

  return allObjects;
}

- (BOOL)hasRecoveryKeyInKVS:(id)s error:(id *)error
{
  v6 = [(SecureBackupDaemon *)self _getICDPBackupFromKVS:s forView:@"iCloudIdentity"];
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
    if (error)
    {
      v16 = v15;
      LOBYTE(v11) = 0;
      *error = v9;
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
    if (error)
    {
      v19 = v18;
      *error = v9;
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
    peerIDs = [v9 peerIDs];
    v22 = 138412546;
    v23 = peerIDs;
    v24 = 1024;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "iCloudIdentity backup keybag peers: %@ -- returning %{BOOL}d", &v22, 0x12u);
  }

LABEL_16:
  return v11;
}

- (id)_recordIDFromLabel:(id)label withPrefix:(id)prefix suffix:(id)suffix
{
  labelCopy = label;
  suffixCopy = suffix;
  v9 = [prefix length];
  v10 = [suffixCopy length];

  v11 = v10 + (v9 + 1);
  if ([labelCopy length] > v11 && objc_msgSend(labelCopy, "characterAtIndex:", v9) == 46)
  {
    v12 = [labelCopy substringWithRange:{v9 + 1, objc_msgSend(labelCopy, "length") - v11}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_getAccountInfoWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[SecureBackupDaemon _getAccountInfoWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [EscrowService alloc];
  operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
  v11 = [(EscrowService *)v9 initWithOperationsLogger:operationsLogger];

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
  v17 = requestCopy;
  selfCopy = self;
  v19 = v11;
  v20 = replyCopy;
  v13 = v11;
  v14 = requestCopy;
  v15 = replyCopy;
  [(EscrowService *)v13 getAccountInfoWithRequest:v14 completionBlock:v16];
}

- (void)_fetchStingrayAccountStatusInDaemon:(id)daemon reply:(id)reply
{
  replyCopy = reply;
  daemonCopy = daemon;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SecureBackupDaemon _fetchStingrayAccountStatusInDaemon:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  v9 = [EscrowService alloc];
  operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
  v11 = [(EscrowService *)v9 initWithOperationsLogger:operationsLogger];

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
  v15 = replyCopy;
  v13 = replyCopy;
  [(EscrowService *)v11 getAccountInfoWithRequest:daemonCopy completionBlock:v14];
}

- (id)tagStaleBottleRecords:(id)records suggestedBottles:(id)bottles
{
  bottlesCopy = bottles;
  [NSMutableArray arrayWithArray:records];
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
          preferredBottleIDs = [bottlesCopy preferredBottleIDs];
          if ([preferredBottleIDs containsObject:v14])
          {
          }

          else
          {
            [bottlesCopy partialRecoveryBottleIDs];
            v16 = v7;
            v17 = v8;
            v19 = v18 = bottlesCopy;
            v20 = [v19 containsObject:v14];

            bottlesCopy = v18;
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

- (id)sortRecordsByBottleID:(id)d
{
  dCopy = d;
  v5 = CloudServicesLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v87 = [dCopy count];
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

  preferredBottleIDs = [v8 preferredBottleIDs];
  if (!preferredBottleIDs || (v12 = preferredBottleIDs, [v8 preferredBottleIDs], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
  {
    partialRecoveryBottleIDs = [v8 partialRecoveryBottleIDs];
    if (!partialRecoveryBottleIDs || (v16 = partialRecoveryBottleIDs, [v8 partialRecoveryBottleIDs], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v16, !v18))
    {
      v64 = CloudServicesLog();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_10004A990();
      }

LABEL_47:

      v65 = [(SecureBackupDaemon *)self tagStaleBottleRecords:dCopy suggestedBottles:v8];
      goto LABEL_52;
    }
  }

  v19 = CloudServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    preferredBottleIDs2 = [v8 preferredBottleIDs];
    v21 = [preferredBottleIDs2 count];
    partialRecoveryBottleIDs2 = [v8 partialRecoveryBottleIDs];
    v23 = [partialRecoveryBottleIDs2 count];
    *buf = 67109376;
    *v87 = v21;
    *&v87[4] = 1024;
    *&v87[6] = v23;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Returned %d preferred bottles, %d partial recovery bottles", buf, 0xEu);
  }

  v24 = [NSMutableArray alloc];
  preferredBottleIDs3 = [v8 preferredBottleIDs];
  v26 = [v24 initWithCapacity:{objc_msgSend(preferredBottleIDs3, "count")}];

  v27 = [NSMutableArray alloc];
  partialRecoveryBottleIDs3 = [v8 partialRecoveryBottleIDs];
  v72 = [v27 initWithCapacity:{objc_msgSend(partialRecoveryBottleIDs3, "count")}];

  v69 = +[NSMutableArray array];
  preferredBottleIDs4 = [v8 preferredBottleIDs];
  v30 = [preferredBottleIDs4 count];

  if (v30)
  {
    v31 = 0;
    do
    {
      [v26 setObject:&__NSDictionary0__struct atIndexedSubscript:v31++];
      preferredBottleIDs5 = [v8 preferredBottleIDs];
      v33 = [preferredBottleIDs5 count];
    }

    while (v31 < v33);
  }

  v73 = v26;
  v70 = v6;
  selfCopy = self;
  partialRecoveryBottleIDs4 = [v8 partialRecoveryBottleIDs];
  v35 = [partialRecoveryBottleIDs4 count];

  if (v35)
  {
    v36 = 0;
    do
    {
      [v72 setObject:&__NSDictionary0__struct atIndexedSubscript:v36++];
      partialRecoveryBottleIDs5 = [v8 partialRecoveryBottleIDs];
      v38 = [partialRecoveryBottleIDs5 count];
    }

    while (v36 < v38);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v71 = dCopy;
  v39 = dCopy;
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

        preferredBottleIDs6 = [v8 preferredBottleIDs];
        v49 = [preferredBottleIDs6 indexOfObject:v47];

        v50 = v8;
        partialRecoveryBottleIDs6 = [v8 partialRecoveryBottleIDs];
        v52 = [partialRecoveryBottleIDs6 indexOfObject:v47];

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

    v63 = [(SecureBackupDaemon *)selfCopy tagStaleBottleRecords:v66 suggestedBottles:v8];
  }

  v65 = v63;
  dCopy = v71;

LABEL_52:

  return v65;
}

- (void)synchronizeKVSWithHandler:(id)handler
{
  handlerCopy = handler;
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
    v19 = handlerCopy;
    v18 = v5;
    [v18 synchronizeWithCompletionHandler:v17];
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v25 = @"KVS not available";
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [NSError errorWithDomain:kSecureBackupErrorDomain code:32 userInfo:v15];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }
}

- (void)getAccountInfoWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = os_transaction_create();
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10001AE6C;
  v20 = &unk_100075510;
  v9 = replyCopy;
  v22 = v9;
  v10 = v8;
  v21 = v10;
  v11 = objc_retainBlock(&v17);
  v12 = [(SecureBackupDaemon *)self connectionQueue:v17];
  [requestCopy setQueue:v12];

  error = [requestCopy error];

  if (error)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    [v14 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v14 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v16 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v14];
    (v11[2])(v11, 0, v16);
  }

  else
  {
    [(SecureBackupDaemon *)self _getAccountInfoWithRequest:requestCopy reply:v11];
  }
}

- (void)fetchStingrayAccountStatusInDaemon:(id)daemon reply:(id)reply
{
  daemonCopy = daemon;
  replyCopy = reply;
  v7 = os_transaction_create();
  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [daemonCopy setQueue:connectionQueue];

  error = [daemonCopy error];

  if (error)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    [v10 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [daemonCopy error];
    [v10 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v12 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v10];
    replyCopy[2](replyCopy, 0, v12);
  }

  else
  {
    [(SecureBackupDaemon *)self _fetchStingrayAccountStatusInDaemon:daemonCopy reply:replyCopy];
  }
}

- (id)massageOutgoingMetadataFromRequest:(id)request
{
  requestCopy = request;
  metadata = [requestCopy metadata];
  v5 = [metadata mutableCopy];

  if (v5 && ([requestCopy stingray] & 1) == 0 && (objc_msgSend(requestCopy, "usesRandomPassphrase") & 1) == 0)
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
    intValue = [v12 intValue];

    if (intValue == 4)
    {
      goto LABEL_10;
    }

    if (intValue == 6)
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

- (void)_stashRecoveryDataWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[SecureBackupDaemon _stashRecoveryDataWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (!error)
  {
    emcsMode = [requestCopy emcsMode];
    v16 = CloudServicesLog();
    v17 = v16;
    if (!emcsMode)
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
    emcsDict = [requestCopy emcsDict];
    emcsCred = [requestCopy emcsCred];
    if (!(emcsDict | emcsCred))
    {
      v29 = CloudServicesLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_10004ABA8();
      }

      v56 = NSLocalizedDescriptionKey;
      v30 = [[NSString alloc] initWithFormat:@"Missing parameter for SecEMCSCreateDerivedKey(): dict: %@nil, user credential: %@nil", &stru_1000767A0, &stru_1000767A0];
      v57 = v30;
      emcsDict = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];

      v11 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:emcsDict];
      replyCopy[2](replyCopy, v11);
      goto LABEL_55;
    }

    if (emcsDict)
    {
      v21 = SecEMCSCreateDerivedEMCSKey();
      if (v21)
      {
        v22 = v21;
        [v18 setObject:v21 forKeyedSubscript:@"stashedEMCSKey"];
        v23 = kSecureBackupTimestampKey;
        v24 = [emcsDict objectForKeyedSubscript:kSecureBackupTimestampKey];
        [v18 setObject:v24 forKeyedSubscript:v23];

        v25 = [emcsDict objectForKeyedSubscript:@"digest"];
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
          v28 = emcsDict;
        }

        [v27 setObject:v28 forKeyedSubscript:v26];
        v32 = emcsDict;
        emcsDict = v22;
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
      emcsDict = v33;
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
          replyCopy[2](replyCopy, v11);

          emcsDict = v32;
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
          replyCopy[2](replyCopy, v11);
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
            replyCopy[2](replyCopy, 0);
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

        replyCopy[2](replyCopy, v41);
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
    replyCopy[2](replyCopy, v11);
LABEL_54:

LABEL_55:
    goto LABEL_17;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
  error2 = [requestCopy error];
  [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

  v13 = kSecureBackupErrorDomain;
  v14 = 5;
LABEL_16:
  v18 = [NSError errorWithDomain:v13 code:v14 userInfo:v11];
  replyCopy[2](replyCopy, v18);
LABEL_17:
}

- (void)stashRecoveryDataWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  kdebug_trace();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001BB38;
  v10[3] = &unk_100075538;
  v11 = os_transaction_create();
  v12 = replyCopy;
  v8 = v11;
  v9 = replyCopy;
  [(SecureBackupDaemon *)self _stashRecoveryDataWithRequest:requestCopy reply:v10];
}

- (void)setEMCSDict:(id)dict backupKeybag:(id)keybag saveKeybag:(BOOL)saveKeybag reply:(id)reply
{
  saveKeybagCopy = saveKeybag;
  dictCopy = dict;
  keybagCopy = keybag;
  replyCopy = reply;
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon setEMCSDict:backupKeybag:saveKeybag:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  v10 = +[UMUserManager sharedManager];
  currentUser = [v10 currentUser];
  alternateDSID = [currentUser alternateDSID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v70 = 0x3032000000;
  v71 = sub_1000109EC;
  v72 = sub_1000109FC;
  v73 = 0;
  if (alternateDSID)
  {
    v13 = [dictCopy mutableCopy];
    sha1Digest = [keybagCopy sha1Digest];
    [v13 setObject:sha1Digest forKeyedSubscript:@"digest"];
    v15 = +[NSDate date];
    v47 = kSecureBackupTimestampKey;
    [v13 setObject:v15 forKeyedSubscript:?];
    v50 = sha1Digest;

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
    selfCopy = self;
    [v51 setConfigurationInfo:v13 forIdentifier:@"com.apple.idms.config.KCKey" forAltDSID:alternateDSID completion:v56];
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
      replyCopy[2](replyCopy);
    }

    else
    {
      if (saveKeybagCopy)
      {
        v34 = CloudServicesLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "creating backup bag", v62, 2u);
        }

        v35 = *(&buf + 1);
        obj = *(*(&buf + 1) + 40);
        v36 = keybagCopy;
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

          (replyCopy[2])(replyCopy, *(*(&buf + 1) + 40));
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
          uUIDString = [v44 UUIDString];
          sub_100002BE0(uUIDString);
        }

        [(SecureBackupDaemon *)self _setBackupEnabled:1 iCDP:0];
      }

      [(SecureBackupDaemon *)self setBackupAllowed:1];
      [(SecureBackupDaemon *)self backupWithInfo:0 garbageCollect:1 reply:replyCopy];
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

  (replyCopy[2])(replyCopy, *(*(&buf + 1) + 40));
LABEL_31:

  _Block_object_dispose(&buf, 8);
}

- (void)enableWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (![requestCopy guitarfish] || !objc_msgSend(requestCopy, "guitarfishToken"))
  {
    if ([requestCopy guitarfishToken])
    {
      [(SecureBackupDaemon *)self enableGuitarfishTokenWithRequest:requestCopy reply:replyCopy];
      goto LABEL_180;
    }

    v9 = _CloudServicesSignpostLogSystem();
    v10 = _CloudServicesSignpostCreate(v9);
    v12 = v11;

    v13 = _CloudServicesSignpostLogSystem();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      activityLabel = [requestCopy activityLabel];
      *buf = 138543362;
      *v173 = activityLabel;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "EnableWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
    }

    v16 = _CloudServicesSignpostLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      activityLabel2 = [requestCopy activityLabel];
      *buf = 134218242;
      *v173 = v10;
      *&v173[8] = 2114;
      v174 = activityLabel2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: EnableWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
    }

    v18 = [[SBEscrowOperationStartEvent alloc] initWithRequest:requestCopy type:100];
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    [operationsLogger updateStoreWithEvent:v18];

    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_10001E3B0;
    v167[3] = &unk_100075588;
    v170 = v10;
    v171 = v12;
    v167[4] = self;
    v20 = v18;
    v168 = v20;
    v169 = replyCopy;
    v21 = objc_retainBlock(v167);
    v22 = CloudServicesLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v173 = "[SecureBackupDaemon enableWithRequest:reply:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
    }

    connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
    [requestCopy setQueue:connectionQueue];

    error = [requestCopy error];

    if (error)
    {
      v25 = objc_alloc_init(NSMutableDictionary);
      [v25 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      error2 = [requestCopy error];
      [v25 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

      v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v25];
      (v21[2])(v21, v27);

LABEL_179:
      goto LABEL_180;
    }

    iCloudEnv = [requestCopy iCloudEnv];
    [(SecureBackupDaemon *)self setICloudEnvironment:iCloudEnv];

    if ([requestCopy emcsMode])
    {
      oldEMCSCred = [requestCopy oldEMCSCred];
      emcsCred = [requestCopy emcsCred];
      emcsDict = [requestCopy emcsDict];
      if (!emcsCred)
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
      v30 = [v29 changePasscodeFrom:oldEMCSCred to:emcsCred outError:&v166];
      v31 = v166;

      if ((v30 & 1) == 0)
      {
        v57 = CloudServicesLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v31 localizedDescription];
          sub_10004B0EC(localizedDescription, v179, v57);
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
      if (oldEMCSCred)
      {
        if (emcsDict)
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
      iCloudIdentityData2 = SecEMCSCreateNewiDMSKey();
      v34 = 0;
      sha1Digest = v34;
      v153 = v32;
      if (!iCloudIdentityData2)
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
        [(SecureBackupDaemon *)self setEMCSDict:iCloudIdentityData2 backupKeybag:v36 saveKeybag:1 reply:v21];
LABEL_163:

        v77 = iCloudIdentityData2;
        iCloudIdentityData2 = sha1Digest;
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

    if (([requestCopy stingray] & 1) == 0 && (objc_msgSend(requestCopy, "icdp") & 1) == 0)
    {
      if ([(SecureBackupDaemon *)self _backupEnabled])
      {
        metadataHash = [requestCopy metadataHash];
        v38 = metadataHash == 0;

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

    if (([requestCopy stingray] & 1) == 0 && objc_msgSend(requestCopy, "usesRandomPassphrase") && (objc_msgSend(requestCopy, "metadataHash"), v39 = objc_claimAutoreleasedReturnValue(), v40 = v39 == 0, v39, v40))
    {
      v149 = 0;
    }

    else
    {
      if (([requestCopy stingray] & 1) == 0 && objc_msgSend(requestCopy, "usesMultipleiCSC"))
      {
        v41 = CloudServicesLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Heading down multi-icsc path", buf, 2u);
        }

        [(SecureBackupDaemon *)self doEnableEscrowMultiICSCWithRequest:requestCopy reply:v21];
        goto LABEL_179;
      }

      v149 = 1;
    }

    v42 = CloudServicesLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      stingray = [requestCopy stingray];
      usesRandomPassphrase = [requestCopy usesRandomPassphrase];
      usesMultipleiCSC = [requestCopy usesMultipleiCSC];
      *buf = 67109632;
      *v173 = stingray;
      *&v173[4] = 1024;
      *&v173[6] = usesRandomPassphrase;
      LOWORD(v174) = 1024;
      *(&v174 + 2) = usesMultipleiCSC;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Heading down spaghetti path: s: %d, uRP: %d, uMiCSC:%d", buf, 0x14u);
    }

    oldEMCSCred = [(SecureBackupDaemon *)self massageOutgoingMetadataFromRequest:requestCopy];
    metadataHash2 = [requestCopy metadataHash];
    emcsCred = [metadataHash2 objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

    metadataHash3 = [requestCopy metadataHash];
    emcsDict = [metadataHash3 objectForKeyedSubscript:@"duplicateEncodedMetadata"];

    v153 = +[NSMutableDictionary dictionary];
    if ([requestCopy stingray])
    {
      appleID = [requestCopy appleID];
      if ([appleID length])
      {
        iCloudPassword = [requestCopy iCloudPassword];
        if ([iCloudPassword length])
        {
          iCloudIdentityData = [requestCopy iCloudIdentityData];
          v51 = [iCloudIdentityData length] == 0;

          if (!v51)
          {
            iCloudIdentityData2 = [requestCopy iCloudIdentityData];
            if ([requestCopy guitarfish])
            {
              sha256Digest = [iCloudIdentityData2 sha256Digest];
              [v153 setObject:sha256Digest forKeyedSubscript:kSecureBackupKeybagSHA256Key];
              v140 = sha256Digest;
              v145 = 0;
              sha1Digest = 0;
            }

            else
            {
              sha1Digest = [iCloudIdentityData2 sha1Digest];
              [v153 setObject:sha1Digest forKeyedSubscript:kSecureBackupKeybagDigestKey];
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
            appleID2 = [requestCopy appleID];
            iCloudPassword2 = [requestCopy iCloudPassword];
            iCloudIdentityData3 = [requestCopy iCloudIdentityData];
            v121 = iCloudIdentityData3;
            v122 = @"non-";
            if (iCloudPassword2)
            {
              v123 = @"non-";
            }

            else
            {
              v123 = &stru_1000767A0;
            }

            *buf = 138412802;
            *v173 = appleID2;
            v174 = v123;
            *&v173[8] = 2112;
            if (!iCloudIdentityData3)
            {
              v122 = &stru_1000767A0;
            }

            v175 = 2112;
            v176 = v122;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "attempted to store stingray identities, with invalid parameters: %@, %@nil iCloud password, %@nil iCloud identity data", buf, 0x20u);
          }

          v70 = [NSString alloc];
          appleID3 = [requestCopy appleID];
          iCloudPassword3 = [requestCopy iCloudPassword];
          iCloudIdentityData4 = [requestCopy iCloudIdentityData];
          v74 = iCloudIdentityData4;
          v75 = @"non-";
          if (iCloudPassword3)
          {
            v76 = @"non-";
          }

          else
          {
            v76 = &stru_1000767A0;
          }

          if (!iCloudIdentityData4)
          {
            v75 = &stru_1000767A0;
          }

          iCloudIdentityData2 = [v70 initWithFormat:@"attempted to store stingray identities, with invalid parameters: %@, %@nil iCloud password, %@nil iCloud identity data", appleID3, v76, v75];

          v77 = objc_alloc_init(NSMutableDictionary);
          [v77 setObject:iCloudIdentityData2 forKeyedSubscript:NSLocalizedDescriptionKey];
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

    passphrase = [requestCopy passphrase];
    if ([passphrase length])
    {
    }

    else
    {
      useCachedPassphrase = [requestCopy useCachedPassphrase];

      if (useCachedPassphrase)
      {
        cachedPassphrase = [(SecureBackupDaemon *)self cachedPassphrase];
        [requestCopy setPassphrase:cachedPassphrase];

        passphrase2 = [requestCopy passphrase];
        v63 = [passphrase2 length] == 0;

        if (v63)
        {
          v113 = CloudServicesLog();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            sub_10004AFD0();
          }

          iCloudIdentityData2 = objc_alloc_init(NSMutableDictionary);
          [iCloudIdentityData2 setObject:@"Missing cached passphrase" forKeyedSubscript:NSLocalizedDescriptionKey];
          v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:9 userInfo:iCloudIdentityData2];
          (v21[2])(v21, v31);
          goto LABEL_177;
        }
      }
    }

    passphrase3 = [requestCopy passphrase];
    if ([passphrase3 length])
    {
      if (!v149)
      {

        passphrase4 = [requestCopy passphrase];
        iCloudIdentityData2 = [passphrase4 dataUsingEncoding:4];

        if (!iCloudIdentityData2)
        {
          v102 = CloudServicesLog();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            sub_10004AF94();
          }

          iCloudIdentityData2 = objc_alloc_init(NSMutableDictionary);
          [iCloudIdentityData2 setObject:@"could not create backup bag password" forKeyedSubscript:NSLocalizedDescriptionKey];
          v31 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:iCloudIdentityData2];
          (v21[2])(v21, v31);
          goto LABEL_177;
        }

        v142 = 0;
        goto LABEL_68;
      }

      if ([requestCopy icdp])
      {

LABEL_64:
        v165[0] = 0;
        [(SecureBackupDaemon *)self createiCloudRecoveryPasswordWithError:v165];
        iCloudIdentityData2 = v54 = v153;
        v65 = v165[0];
        v31 = v65;
        if (!iCloudIdentityData2)
        {
          (v21[2])(v21, v65);
LABEL_178:

          goto LABEL_179;
        }

        v142 = v65;
LABEL_68:
        if ([requestCopy usesMultipleiCSC])
        {
          v140 = 0;
          v145 = 0;
        }

        else
        {
          v85 = [(SecureBackupDaemon *)self _createBackupKeybagWithPassword:iCloudIdentityData2];
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

        sha1Digest = 0;
LABEL_103:
        v141 = +[CSDateUtilities posixDateFormatter];
        v87 = +[NSDate date];
        v148 = [v141 stringFromDate:v87];

        v88 = kSecureBackupTimestampKey;
        [v153 setObject:v148 forKeyedSubscript:kSecureBackupTimestampKey];
        if (oldEMCSCred)
        {
          [oldEMCSCred setObject:v148 forKeyedSubscript:kSecureBackupMetadataTimestampKey];
          [v153 setObject:oldEMCSCred forKeyedSubscript:kSecureBackupClientMetadataKey];
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
              uUIDString = [v98 UUIDString];
              sub_100002BE0(uUIDString);
            }

            [(SecureBackupDaemon *)self _setKVSKeybag:v145];
            [(SecureBackupDaemon *)self _removeProtectedKeychain];
            -[SecureBackupDaemon _setBackupEnabled:iCDP:](self, "_setBackupEnabled:iCDP:", 1, [requestCopy icdp]);
            if ([requestCopy synchronize])
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
        operationsLogger2 = [(SecureBackupDaemon *)self operationsLogger];
        v150 = [(EscrowService *)v89 initWithOperationsLogger:operationsLogger2];

        smsTarget = [requestCopy smsTarget];

        if (smsTarget)
        {
          smsTarget2 = [requestCopy smsTarget];
          v164 = v142;
          v93 = [(SecureBackupDaemon *)self normalizeSMSTarget:smsTarget2 error:&v164];
          v31 = v164;

          [requestCopy setSmsTarget:v93];
          smsTarget3 = [requestCopy smsTarget];
          LODWORD(smsTarget2) = smsTarget3 == 0;

          if (smsTarget2)
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

        if ([requestCopy stingray])
        {
          v144 = v31;
        }

        else
        {
          if ([requestCopy usesMultipleiCSC])
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
          icdp = [requestCopy icdp];
          v163 = v31;
          v116 = [(SecureBackupDaemon *)self registerSingleRecoverySecret:v145 iCDP:icdp error:&v163];
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

          sha1Digest2 = [v145 sha1Digest];

          [v153 setObject:sha1Digest2 forKeyedSubscript:kSecureBackupKeybagDigestKey];
          sha1Digest = sha1Digest2;
        }

        v106 = [[NSMutableDictionary alloc] initWithCapacity:5];
        guitarfish = [requestCopy guitarfish];
        if (guitarfish)
        {
          v108 = v140;
        }

        else
        {
          v108 = sha1Digest;
        }

        v109 = &kSecureBackupKeybagSHA256Key;
        if (!guitarfish)
        {
          v109 = &kSecureBackupKeybagDigestKey;
        }

        [v106 setObject:v108 forKeyedSubscript:*v109];
        [v106 setObject:iCloudIdentityData2 forKeyedSubscript:kSecureBackupBagPasswordKey];
        [v106 setObject:@"1" forKeyedSubscript:@"BackupVersion"];
        [v106 setObject:v148 forKeyedSubscript:v139];
        [requestCopy setEscrowRecord:v106];
        [requestCopy setMetadata:v153];
        [requestCopy setEncodedMetadata:emcsCred];
        [requestCopy setDuplicateEncodedMetadata:emcsDict];
        encodedMetadata = [requestCopy encodedMetadata];

        if (encodedMetadata)
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
        v159 = requestCopy;
        v160 = v153;
        v161 = v145;
        v162 = v21;
        [(EscrowService *)v150 storeRecordWithRequest:v159 completionBlock:v158];

        v31 = v144;
LABEL_159:

        goto LABEL_160;
      }

      countryDialCode = [requestCopy countryDialCode];
      if ([countryDialCode length])
      {
        countryCode = [requestCopy countryCode];
        if ([countryCode length])
        {
          smsTarget4 = [requestCopy smsTarget];
          if ([smsTarget4 length])
          {
            appleID4 = [requestCopy appleID];
            if ([appleID4 length])
            {
              iCloudPassword4 = [requestCopy iCloudPassword];
              v143 = [iCloudPassword4 length] == 0;

              if (!v143)
              {
                goto LABEL_64;
              }

LABEL_169:
              v126 = CloudServicesLog();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
              {
                passphrase5 = [requestCopy passphrase];
                if (passphrase5)
                {
                  v135 = @"non-";
                }

                else
                {
                  v135 = &stru_1000767A0;
                }

                smsTarget5 = [requestCopy smsTarget];
                appleID5 = [requestCopy appleID];
                iCloudPassword5 = [requestCopy iCloudPassword];
                v138 = @"non-";
                if (!iCloudPassword5)
                {
                  v138 = &stru_1000767A0;
                }

                *buf = 138413058;
                *v173 = v135;
                *&v173[8] = 2112;
                v174 = smsTarget5;
                v175 = 2112;
                v176 = appleID5;
                v177 = 2112;
                v178 = v138;
                _os_log_error_impl(&_mh_execute_header, v126, OS_LOG_TYPE_ERROR, "attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", buf, 0x2Au);
              }

              v127 = [NSString alloc];
              passphrase6 = [requestCopy passphrase];
              if (passphrase6)
              {
                v129 = @"non-";
              }

              else
              {
                v129 = &stru_1000767A0;
              }

              smsTarget6 = [requestCopy smsTarget];
              appleID6 = [requestCopy appleID];
              iCloudPassword6 = [requestCopy iCloudPassword];
              v133 = @"non-";
              if (!iCloudPassword6)
              {
                v133 = &stru_1000767A0;
              }

              iCloudIdentityData2 = [v127 initWithFormat:@"attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", v129, smsTarget6, appleID6, v133];

              v77 = objc_alloc_init(NSMutableDictionary);
              [v77 setObject:iCloudIdentityData2 forKeyedSubscript:NSLocalizedDescriptionKey];
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
  (*(replyCopy + 2))(replyCopy, v8);

LABEL_180:
}

- (void)handleEscrowStoreResults:(id)results escrowError:(id)error request:(id)request peerID:(id)d newRecordMetadata:(id)metadata backupKeybag:(id)keybag reply:(id)reply
{
  resultsCopy = results;
  errorCopy = error;
  requestCopy = request;
  metadataCopy = metadata;
  keybagCopy = keybag;
  replyCopy = reply;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v21 = [domain isEqualToString:kEscrowServiceErrorDomain];

    if (v21 && [errorCopy code] == -5012)
    {
      v22 = kSecureBackupErrorDomain;
      userInfo = [errorCopy userInfo];
      v24 = [NSError errorWithDomain:v22 code:29 userInfo:userInfo];

      errorCopy = v24;
    }

    v25 = CloudServicesLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10004B20C();
    }

    replyCopy[2](replyCopy, errorCopy);
  }

  else
  {
    v26 = CloudServicesLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "escrowService storeRecordWithRequest: succeeded", buf, 2u);
    }

    if (([requestCopy stingray] & 1) == 0)
    {
      [(SecureBackupDaemon *)self _setUsesEscrow:1];
      [(SecureBackupDaemon *)self _setMetadata:metadataCopy];
      v27 = sub_100002B84();

      if (!v27)
      {
        v28 = +[NSUUID UUID];
        uUIDString = [v28 UUIDString];
        sub_100002BE0(uUIDString);
      }

      -[SecureBackupDaemon _setBackupEnabled:iCDP:](self, "_setBackupEnabled:iCDP:", 1, [requestCopy icdp]);
      [(SecureBackupDaemon *)self _removeProtectedKeychain];
      if (keybagCopy)
      {
        [(SecureBackupDaemon *)self _setKVSKeybag:keybagCopy];
      }

      [(SecureBackupDaemon *)self _removeKeychainItemForKey:@"SecureBackupEscrowCert"];
      v30 = [resultsCopy objectForKeyedSubscript:@"EscrowServiceCertificate"];
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

    replyCopy[2](replyCopy, 0);
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

- (void)backupForRecoveryKeyWithInfo:(id)info garbageCollect:(BOOL)collect reply:(id)reply
{
  replyCopy = reply;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SecureBackupDaemon backupForRecoveryKeyWithInfo:garbageCollect:reply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In %s", &v8, 0xCu);
  }

  [(SecureBackupDaemon *)self _backupCloudIdentityKeychainViewAndPushToKVSForRecoveryKey];
  replyCopy[2](replyCopy, 0);
}

- (void)backupWithInfo:(id)info garbageCollect:(BOOL)collect reply:(id)reply
{
  collectCopy = collect;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 136315138;
    *&v34[4] = "[SecureBackupDaemon backupWithInfo:garbageCollect:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", v34, 0xCu);
  }

  _metadata = [(SecureBackupDaemon *)self _metadata];
  v10 = [_metadata objectForKeyedSubscript:kSecureBackupContainsEMCSDataKey];
  v11 = [v10 isEqual:&__kCFBooleanTrue];

  if (!v11)
  {
    [(SecureBackupDaemon *)self _backupFullKeychain];
LABEL_36:
    replyCopy[2](replyCopy, 0);
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
      v26 = [_metadata objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
      sha1Digest = [v13 sha1Digest];
      v28 = CloudServicesLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 138412546;
        *&v34[4] = sha1Digest;
        *&v34[12] = 2112;
        *&v34[14] = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Pushing EMCS backup, keybag digest %@, metadata digest %@", v34, 0x16u);
      }

      if (([v26 isEqual:sha1Digest]& 1) == 0)
      {
        v29 = CloudServicesLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10004B304();
        }
      }

      [(SecureBackupDaemon *)self _setEMCSBackup:v21 keybag:v13, *v34];
      if (collectCopy)
      {
        hexString = [sha1Digest hexString];
        [(SecureBackupDaemon *)self garbageCollectEMCSBackupsExcluding:hexString];
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
  (replyCopy)[2](replyCopy, v33);

LABEL_37:
}

- (id)restoreBackup:(id)backup withName:(id)name keybagDigest:(id)digest keybag:(id)keybag password:(id)password
{
  backupCopy = backup;
  nameCopy = name;
  digestCopy = digest;
  keybagCopy = keybag;
  passwordCopy = password;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000109EC;
  v36 = sub_1000109FC;
  v37 = 0;
  v17 = [(SecureBackupDaemon *)self createPlistFromDERData:backupCopy];
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

    if ([nameCopy isEqualToString:@"KeychainV0-tomb"])
    {
      v21 = (v33 + 5);
      obj = v33[5];
      v22 = [(SecureBackupDaemon *)self createEncodedDirectBackupSliceKeybagFromData:keybagCopy error:&obj];
      objc_storeStrong(v21, obj);

      keybagCopy = v22;
    }

    v23 = v33[5];
    if (!v23)
    {
      v24 = [keybagCopy peerIDForKeybagDigest:digestCopy];
      if (v24)
      {
        v25 = CloudServicesLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          peerIDs = [keybagCopy peerIDs];
          *buf = 138412546;
          v39 = v24;
          v40 = 2112;
          v41 = peerIDs;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "using peerID %@ from backup keybag peers: %@", buf, 0x16u);
        }
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10001F5FC;
      v28[3] = &unk_100075618;
      v29 = nameCopy;
      v30 = &v32;
      [(SecureBackupDaemon *)self restoreBackupName:v29 peerID:v24 keybag:keybagCopy password:passwordCopy backup:backupCopy reply:v28];

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

- (id)encodedStatsForViews:(id)views
{
  viewsCopy = views;
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
        if (!v11 || (v12 = [viewsCopy containsObject:v10], v13 = v11, (v12 & 1) == 0))
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

- (BOOL)_restoreView:(id)view password:(id)password keybagDigest:(id)digest restoredViews:(id)views error:(id *)error
{
  viewCopy = view;
  passwordCopy = password;
  digestCopy = digest;
  viewsCopy = views;
  v16 = [(SecureBackupDaemon *)self kvs];
  v17 = [(SecureBackupDaemon *)self _getICDPBackupFromKVS:v16 forView:viewCopy];

  if (!v17)
  {
    if (error)
    {
      goto LABEL_17;
    }

LABEL_20:
    v26 = 0;
    v27 = 0;
    goto LABEL_22;
  }

  v36 = viewsCopy;
  v18 = [v17 objectForKeyedSubscript:@"com.apple.securebackup.keychain"];
  v19 = CloudServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v17 objectForKeyedSubscript:kSecureBackupTimestampKey];
    v21 = v20 = digestCopy;
    *buf = 138412546;
    v38 = viewCopy;
    v39 = 2112;
    v40 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Retrieving backup for view %@ from %@", buf, 0x16u);

    digestCopy = v20;
  }

  if (!v18)
  {

    viewsCopy = v36;
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v35 = passwordCopy;
  v22 = CloudServicesLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = viewCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "restoring backup view %@", buf, 0xCu);
  }

  v23 = [v18 objectForKeyedSubscript:@"keybag"];
  v24 = [v18 objectForKeyedSubscript:@"backup"];
  v25 = v24;
  v26 = 0;
  v27 = 0;
  if (v23 && v24)
  {
    viewCopy = [[NSString alloc] initWithFormat:@"%@-tomb", viewCopy];
    v29 = digestCopy;
    v30 = viewCopy;
    selfCopy = self;
    v32 = v29;
    v27 = [SecureBackupDaemon restoreBackup:selfCopy withName:"restoreBackup:withName:keybagDigest:keybag:password:" keybagDigest:v25 keybag:v30 password:?];
    v26 = v27 == 0;
    if (!v27)
    {
      [v36 addObject:viewCopy];
    }

    digestCopy = v32;
  }

  if (!error)
  {
    passwordCopy = v35;
    viewsCopy = v36;
    goto LABEL_22;
  }

  passwordCopy = v35;
  viewsCopy = v36;
  if (!v26)
  {
    if (v27)
    {
LABEL_18:
      v33 = v27;
      v26 = 0;
      *error = v27;
      goto LABEL_22;
    }

LABEL_17:
    v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:0];
    goto LABEL_18;
  }

LABEL_22:

  return v26;
}

- (void)_restoreKeychainAsyncWithBackupBag:(id)bag password:(id)password keybagDigest:(id)digest haveBottledPeer:(BOOL)peer restoredViews:(id)views viewsNotToBeRestored:(id)restored
{
  bagCopy = bag;
  passwordCopy = password;
  digestCopy = digest;
  viewsCopy = views;
  restoredCopy = restored;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  backupQueue = [(SecureBackupDaemon *)self backupQueue];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10001FE70;
  v25[3] = &unk_100075660;
  v25[4] = self;
  v26 = digestCopy;
  v30 = bagCopy;
  v31 = v33;
  v27 = restoredCopy;
  v28 = passwordCopy;
  v29 = viewsCopy;
  peerCopy = peer;
  v20 = bagCopy;
  v21 = viewsCopy;
  v22 = passwordCopy;
  v23 = restoredCopy;
  v24 = digestCopy;
  dispatch_async(backupQueue, v25);

  _Block_object_dispose(v33, 8);
}

- (BOOL)_restoreKeychainWithBackupPassword:(id)password keybagDigest:(id)digest error:(id *)error
{
  passwordCopy = password;
  digestCopy = digest;
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
  backupQueue = [(SecureBackupDaemon *)self backupQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002082C;
  block[3] = &unk_100075688;
  block[4] = self;
  v11 = passwordCopy;
  v31 = v11;
  v12 = digestCopy;
  v32 = v12;
  v33 = &v40;
  v34 = &v46;
  v35 = &v36;
  dispatch_sync(backupQueue, block);

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

  backupQueue2 = [(SecureBackupDaemon *)self backupQueue];
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
  dispatch_async(backupQueue2, v25);

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

    if (error)
    {
      *error = *(v47[0] + 40);
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

- (void)recordIDAndMetadataForSilentAttempt:(id)attempt passphraseLength:(unint64_t)length platform:(int)platform reply:(id)reply
{
  attemptCopy = attempt;
  replyCopy = reply;
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    lengthCopy = length;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "looking for record for silent attempt of passphrase length %lu", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100020FC4;
  v15[3] = &unk_100075700;
  v17 = replyCopy;
  lengthCopy2 = length;
  v15[4] = self;
  v16 = attemptCopy;
  platformCopy = platform;
  v13 = attemptCopy;
  v14 = replyCopy;
  [(SecureBackupDaemon *)self getAccountInfoWithRequest:v13 reply:v15];
}

- (id)restoreEMCSBackup:(id)backup keybag:(id)keybag password:(id)password
{
  passwordCopy = password;
  keybagCopy = keybag;
  backupCopy = backup;
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

- (id)restoreEMCSBackup:(id)backup withPassword:(id)password
{
  backupCopy = backup;
  passwordCopy = password;
  _metadata = [(SecureBackupDaemon *)self _metadata];
  v9 = [_metadata objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
  v10 = [backupCopy objectForKeyedSubscript:@"timestamp"];
  if (v10)
  {
    v11 = [CSDateUtilities localStringFromDate:v10];
  }

  else
  {
    v11 = @"before we saved timestamps";
  }

  v34 = [backupCopy objectForKeyedSubscript:@"backup"];
  v12 = [backupCopy objectForKeyedSubscript:@"keybag"];
  sha1Digest = [v12 sha1Digest];
  v13 = [backupCopy objectForKeyedSubscript:@"uuid"];
  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v37 = v11;
    v38 = 2112;
    v39 = sha1Digest;
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
    v16 = _metadata;
    v17 = passwordCopy;
    v18 = CFPreferencesCopyAppValue(@"EMCSBackupUUID", SECURE_BACKUP_SERVICE_NAME);
    v19 = [(__CFString *)v18 isEqualToString:v13];
    v20 = CloudServicesLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      passwordCopy = v17;
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found matching backup from this device, skipping keychain restore", buf, 2u);
      }

      v22 = 0;
      _metadata = v16;
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

    passwordCopy = v17;
    _metadata = v16;
    v9 = v15;
    v10 = v32;
    v11 = v33;
  }

  v23 = v34;
  if (v12 && v34)
  {
    v22 = [(SecureBackupDaemon *)self restoreEMCSBackup:v34 keybag:v12 password:passwordCopy];
    goto LABEL_30;
  }

  v24 = CloudServicesLog();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  v31 = passwordCopy;
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

  passwordCopy = v31;
LABEL_29:
  v11 = v33;
  v23 = v34;
LABEL_30:

  return v22;
}

- (void)recoverEscrowWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = _CloudServicesSignpostLogSystem();
  v9 = _CloudServicesSignpostCreate(v8);
  v11 = v10;

  v12 = _CloudServicesSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    activityLabel = [requestCopy activityLabel];
    *buf = 138543362;
    v42 = activityLabel;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RecoverEscrowWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
  }

  v15 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    activityLabel2 = [requestCopy activityLabel];
    *buf = 134218242;
    v42 = v9;
    v43 = 2114;
    v44 = activityLabel2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverEscrowWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
  }

  v17 = CloudServicesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    recordID = [requestCopy recordID];
    metadata = [requestCopy metadata];
    *buf = 138412546;
    v42 = recordID;
    v43 = 2112;
    v44 = metadata;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Attempting recovery of record %@ with metadata: %@", buf, 0x16u);
  }

  v20 = [EscrowService alloc];
  operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
  v22 = [(EscrowService *)v20 initWithOperationsLogger:operationsLogger];

  v23 = _CloudServicesSignpostLogSystem();
  v24 = _CloudServicesSignpostCreate(v23);
  v26 = v25;

  v27 = _CloudServicesSignpostLogSystem();
  v28 = v27;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    activityLabel3 = [requestCopy activityLabel];
    *buf = 138543362;
    v42 = activityLabel3;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, v24, "RecoverRecordWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
  }

  v30 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    activityLabel4 = [requestCopy activityLabel];
    *buf = 134218242;
    v42 = v24;
    v43 = 2114;
    v44 = activityLabel4;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: RecoverRecordWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100021F58;
  v34[3] = &unk_100075728;
  v38 = v26;
  v39 = v9;
  v40 = v11;
  v36 = replyCopy;
  v37 = v24;
  v34[4] = self;
  v35 = requestCopy;
  v32 = requestCopy;
  v33 = replyCopy;
  [(EscrowService *)v22 recoverRecordWithRequest:v32 completionBlock:v34];
}

- (id)keysOfEntriesContainingObject:(id)object backups:(id)backups
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023098;
  v8[3] = &unk_100075110;
  objectCopy = object;
  v5 = objectCopy;
  v6 = [backups keysOfEntriesPassingTest:v8];

  return v6;
}

- (int64_t)compareEscrowDatesBetweenCurrentRecord:(id)record andCandidateRecord:(id)candidateRecord
{
  candidateRecordCopy = candidateRecord;
  v6 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [record creationDate]);
  v7 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [candidateRecordCopy creationDate]);
  v8 = [v6 compare:v7];
  v9 = CloudServicesLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == -1)
  {
    if (v10)
    {
      recordId = [candidateRecordCopy recordId];
      v14 = 138412290;
      v15 = recordId;
      v12 = "candidate record (%@) is newer";
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    recordId = [candidateRecordCopy recordId];
    v14 = 138412290;
    v15 = recordId;
    v12 = "candidate record (%@) is not newer";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
  }

  return v8;
}

- (int64_t)compare:(id)compare with:(id)with backups:(id)backups
{
  compareCopy = compare;
  withCopy = with;
  backupsCopy = backups;
  escrowInformationMetadata = [compareCopy escrowInformationMetadata];
  backupKeybagDigest = [escrowInformationMetadata backupKeybagDigest];

  escrowInformationMetadata2 = [withCopy escrowInformationMetadata];
  backupKeybagDigest2 = [escrowInformationMetadata2 backupKeybagDigest];

  v15 = [(SecureBackupDaemon *)self keysOfEntriesContainingObject:backupKeybagDigest backups:backupsCopy];
  v44 = backupKeybagDigest2;
  v16 = [(SecureBackupDaemon *)self keysOfEntriesContainingObject:backupKeybagDigest2 backups:backupsCopy];
  v17 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [compareCopy creationDate]);
  v43 = withCopy;
  v18 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [withCopy creationDate]);
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

  v41 = backupKeybagDigest;
  v42 = compareCopy;
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
        backupKeybagDigest = v41;
        compareCopy = v42;
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
    backupKeybagDigest = v41;
    if (v32 >= v33)
    {
      v38 = [v15 count];
      compareCopy = v42;
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
      compareCopy = v42;
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
  backupKeybagDigest = v41;
  compareCopy = v42;
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

- (void)sortForMatchingPassphraseLengthAndPlatform:(id)platform secureBackups:(id)backups passphraseLength:(unint64_t)length platform:(unint64_t)a6 reply:(id)reply
{
  platformCopy = platform;
  backupsCopy = backups;
  replyCopy = reply;
  v11 = CloudServicesLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    lengthCopy = length;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "looking for record for silent attempt of passphrase length %llu", buf, 0xCu);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v12 = platformCopy;
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v13)
  {
    v51 = 0;
    v53 = 0;
    v64 = 0;
    v54 = v12;
    lengthCopy2 = length;
    goto LABEL_83;
  }

  v14 = v13;
  v57 = replyCopy;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v68 = *v70;
  lengthCopy3 = length;
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
      recordId = [v16 recordId];
      v20 = CloudServicesLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [CSDateUtilities localStringFromDate:v18];
        *buf = 138412546;
        lengthCopy = recordId;
        v75 = 2112;
        lengthCopy4 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "checking escrow record: %@ from %@", buf, 0x16u);
      }

      remainingAttempts = [v16 remainingAttempts];
      silentAttemptAllowed = [v16 silentAttemptAllowed];
      if (remainingAttempts == 10 && silentAttemptAllowed != 0)
      {
        escrowInformationMetadata = [v16 escrowInformationMetadata];
        escrowInformationMetadata2 = [v16 escrowInformationMetadata];
        clientMetadata = [escrowInformationMetadata2 clientMetadata];

        v30 = CloudServicesLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          lengthCopy = escrowInformationMetadata;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "metadata containing bottle: %@", buf, 0xCu);
        }

        devicePlatform = [clientMetadata devicePlatform];
        secureBackupUsesNumericPassphrase = [clientMetadata secureBackupUsesNumericPassphrase];
        if (devicePlatform == a6)
        {
          if (secureBackupUsesNumericPassphrase)
          {
            lengthCopy5 = [clientMetadata secureBackupNumericPassphraseLength];
            v35 = CloudServicesLog();
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
            if (lengthCopy5 > length)
            {
              if (v36)
              {
                *buf = 134218240;
                lengthCopy = lengthCopy5;
                v75 = 2048;
                lengthCopy4 = length;
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
              lengthCopy = lengthCopy5;
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
              lengthCopy5 = lengthCopy3;
LABEL_66:
              v14 = v60;
LABEL_67:

              lengthCopy3 = lengthCopy5;
              v12 = v65;
              goto LABEL_68;
            }

            v43 = v64;
            if (v64 && [(SecureBackupDaemon *)self compare:v64 with:v16 backups:backupsCopy]!= -1)
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
              lengthCopy = v45;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "found %@ candidate", buf, 0xCu);
            }

LABEL_64:

            v49 = v16;
            v47 = recordId;

            v48 = escrowInformationMetadata;
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
            if (!v64 || [(SecureBackupDaemon *)self compare:v64 with:v16 backups:backupsCopy]== -1)
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
                lengthCopy = v42;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "found %@ candidate", buf, 0xCu);
              }

LABEL_59:

              v46 = v16;
              v47 = recordId;

              v48 = escrowInformationMetadata;
              v35 = v63;
              v64 = v46;
              lengthCopy5 = length;
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
        lengthCopy5 = lengthCopy3;
        goto LABEL_67;
      }

      v25 = silentAttemptAllowed;
      escrowInformationMetadata = CloudServicesLog();
      if (os_log_type_enabled(escrowInformationMetadata, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v26 = &stru_1000767A0;
        if (!v25)
        {
          v26 = @"not ";
        }

        lengthCopy = remainingAttempts;
        v75 = 2112;
        lengthCopy4 = v26;
        _os_log_impl(&_mh_execute_header, escrowInformationMetadata, OS_LOG_TYPE_DEFAULT, "candidate not eligible: remaining attempts = %llu, silent attempt %@allowed", buf, 0x16u);
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
    replyCopy = v57;
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

    lengthCopy2 = lengthCopy3;
LABEL_83:

    v56 = lengthCopy2;
  }

  else
  {
    replyCopy = v57;
    v53 = v63;
    v56 = lengthCopy3;
  }

  replyCopy[2](replyCopy, v51, v53, v56);
}

- (void)_recoverSilentWithCDPContext:(id)context allRecords:(id)records altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply
{
  contextCopy = context;
  recordsCopy = records;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
  LOBYTE(v59) = 1;
  v63 = dCopy;
  v64 = iDCopy;
  v65 = sessionIDCopy;
  v67 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy eventName:@"com.apple.sbd.silentBurn" testsAreEnabled:0 canSendMetrics:v59 category:&off_10007A488];
  v17 = CloudServicesLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon _recoverSilentWithCDPContext:allRecords:altDSID:flowID:deviceSessionID:reply:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  v69 = [OTEscrowTranslation CDPRecordContextToDictionary:contextCopy];
  v18 = [[SecureBackup alloc] initWithUserActivityLabel:@"silent escrow recovery"];
  [v18 populateWithInfo:v69];
  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [v18 setQueue:connectionQueue];

  error = [v18 error];

  if (!error)
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

    passphrase = [v18 passphrase];
    v26 = [passphrase length] == 0;

    if (!v26)
    {
      goto LABEL_8;
    }

    if ([v18 useCachedPassphrase])
    {
      cachedPassphrase = [(SecureBackupDaemon *)self cachedPassphrase];
      [v18 setPassphrase:cachedPassphrase];

      passphrase2 = [v18 passphrase];
      v53 = [passphrase2 length] == 0;

      if (!v53)
      {
LABEL_8:
        passphrase3 = [v18 passphrase];
        v61 = [passphrase3 length];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v28 = recordsCopy;
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
              recordId = [v32 recordId];
              if (recordId)
              {
                cachedRecordID = [(SecureBackupDaemon *)self cachedRecordID];
                v35 = [cachedRecordID isEqualToString:recordId];

                if (v35)
                {
                  v41 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v32 creationDate]);
                  v42 = CloudServicesLog();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = [CSDateUtilities localStringFromDate:v41];
                    *v92 = 138412546;
                    v93 = recordId;
                    v94 = 2112;
                    v95 = v43;
                    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "found preferred record: %@ from %@", v92, 0x16u);
                  }

                  [v18 setRecordID:recordId];
                  escrowInformationMetadata = [v32 escrowInformationMetadata];
                  v45 = [OTEscrowTranslation metadataToDictionary:escrowInformationMetadata];
                  [v18 setMetadata:v45];

                  v46 = CloudServicesLog();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    metadata = [v18 metadata];
                    *v92 = 138412290;
                    v93 = metadata;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "using metadata :%@", v92, 0xCu);
                  }

                  cachedRecordID2 = [(SecureBackupDaemon *)self cachedRecordID];
                  v49 = [cachedRecordID2 isEqualToString:recordId];

                  if (v49)
                  {
                    cachedRecordIDPassphrase = [(SecureBackupDaemon *)self cachedRecordIDPassphrase];
                    [v18 setPassphrase:cachedRecordIDPassphrase];
                  }

                  else
                  {
                    cachedRecordIDPassphrase = [v18 passphrase];
                    v55 = [cachedRecordIDPassphrase substringToIndex:v61];
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
                  v86 = replyCopy;
                  p_buf = &buf;
                  [(SecureBackupDaemon *)self recoverEscrowWithRequest:v18 reply:v83];

                  secureBackups = v28;
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

        secureBackups = [(SecureBackupDaemon *)self secureBackups];
        if ([secureBackups count] || !OctagonPlatformSupportsSOS() || _os_feature_enabled_impl())
        {
          LOBYTE(v60) = 1;
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 3221225472;
          v74[2] = sub_100024FF8;
          v74[3] = &unk_100075778;
          recordId = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v63 flowID:v64 deviceSessionID:v65 eventName:@"com.apple.sbd.sortEscrowRecordsForMatchingPassphrase" testsAreEnabled:0 canSendMetrics:v60 category:&off_10007A488];
          v75 = recordId;
          v76 = v67;
          v82[0] = replyCopy;
          v77 = v18;
          selfCopy = self;
          v79 = v63;
          v80 = v64;
          v81 = v65;
          v82[1] = &buf;
          [(SecureBackupDaemon *)self sortForMatchingPassphraseLengthAndPlatform:v28 secureBackups:secureBackups passphraseLength:v61 platform:1 reply:v74];

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
          recordId = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:v63 flowID:v64 deviceSessionID:v65 eventName:@"com.apple.sbd.recoverWithRequest" testsAreEnabled:0 canSendMetrics:v60 category:&off_10007A488];
          v71 = recordId;
          v72 = v67;
          v73 = replyCopy;
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
      secureBackups = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      recordId = [NSError errorWithDomain:kSecureBackupErrorDomain code:9 userInfo:secureBackups];
      [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v67 success:0 error:recordId];
      (*(replyCopy + 2))(replyCopy, 0, recordId);
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
      secureBackups = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      recordId = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:secureBackups];
      [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v67 success:0 error:recordId];
      (*(replyCopy + 2))(replyCopy, 0, recordId);
    }

LABEL_41:

    _Block_object_dispose(&buf, 8);
    goto LABEL_42;
  }

  v21 = objc_alloc_init(NSMutableDictionary);
  [v21 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
  error2 = [v18 error];
  [v21 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

  v23 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v21];
  [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v67 success:0 error:v23];
  (*(replyCopy + 2))(replyCopy, 0, v23);

LABEL_42:
}

- (void)_recoverWithCDPContext:(id)context escrowRecord:(id)record altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply
{
  contextCopy = context;
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  replyCopy = reply;
  v18 = CloudServicesLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon _recoverWithCDPContext:escrowRecord:altDSID:flowID:deviceSessionID:reply:]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  LOBYTE(v31) = 1;
  v19 = [[AAFAnalyticsEventSecureBackup alloc] initWithMetrics:0 altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy eventName:@"com.apple.sbd.remoteEscrowRestore" testsAreEnabled:0 canSendMetrics:v31 category:&off_10007A488];
  v20 = [[SecureBackup alloc] initWithUserActivityLabel:@"escrow recovery"];
  v21 = [OTEscrowTranslation CDPRecordContextToDictionary:contextCopy];
  [v20 populateWithInfo:v21];
  escrowInformationMetadata = [recordCopy escrowInformationMetadata];
  v23 = [OTEscrowTranslation metadataToDictionary:escrowInformationMetadata];
  [v20 setMetadata:v23];

  recordId = [recordCopy recordId];
  [v20 setRecordID:recordId];

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [v20 setQueue:connectionQueue];

  error = [v20 error];

  if (error)
  {
    v27 = objc_alloc_init(NSMutableDictionary);
    [v27 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [v20 error];
    [v27 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v29 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v27];
    [SecureBackupAnalyticsReporterRTC sendMetricWithEvent:v19 success:0 error:v29];
    replyCopy[2](replyCopy, 0, v29);
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
    v36 = replyCopy;
    p_buf = &buf;
    [(SecureBackupDaemon *)self recoverEscrowWithRequest:v20 reply:v34];

    _Block_object_dispose(&buf, 8);
  }
}

- (void)_recoverWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if ([requestCopy guitarfish] && objc_msgSend(requestCopy, "guitarfishToken"))
  {
    v8 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:0];
    replyCopy[2](replyCopy, 0, v8);

    goto LABEL_10;
  }

  if ([requestCopy guitarfishToken])
  {
    [(SecureBackupDaemon *)self recoverGuitarfishTokenWithRequest:requestCopy reply:replyCopy];
    goto LABEL_10;
  }

  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[SecureBackupDaemon _recoverWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [v12 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v12 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v12];
    replyCopy[2](replyCopy, 0, v14);

    goto LABEL_10;
  }

  if ([requestCopy emcsMode])
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

      replyCopy[2](replyCopy, 0, 0);
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
    replyCopy[2](replyCopy, 0, v32);
  }

  else
  {
    if ([requestCopy idmsRecovery])
    {
      v17 = CloudServicesLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Performing IDMS Recovery", &buf, 2u);
      }

      [requestCopy setIcdp:1];
      [requestCopy setUseRecoveryPET:1];
      v18 = [EscrowService alloc];
      operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
      v20 = [(EscrowService *)v18 initWithOperationsLogger:operationsLogger];

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_100027A94;
      v68[3] = &unk_100075840;
      v71 = replyCopy;
      v69 = requestCopy;
      selfCopy = self;
      [(EscrowService *)v20 recoverRecordWithRequest:v69 completionBlock:v68];

      goto LABEL_10;
    }

    if ([requestCopy fmipRecovery])
    {
      v21 = CloudServicesLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Performing FMIP recovery", &buf, 2u);
      }

      [requestCopy setIcdp:1];
      v22 = [EscrowService alloc];
      operationsLogger2 = [(SecureBackupDaemon *)self operationsLogger];
      v24 = [(EscrowService *)v22 initWithOperationsLogger:operationsLogger2];

      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100028018;
      v66[3] = &unk_100075450;
      v67 = replyCopy;
      [(EscrowService *)v24 recoverRecordWithRequest:requestCopy completionBlock:v66];

      goto LABEL_10;
    }

    if ([requestCopy stingray])
    {
      v25 = CloudServicesLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Performing Stingray recovery", &buf, 2u);
      }

      v26 = [EscrowService alloc];
      operationsLogger3 = [(SecureBackupDaemon *)self operationsLogger];
      v28 = [(EscrowService *)v26 initWithOperationsLogger:operationsLogger3];

      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10002838C;
      v64[3] = &unk_100075450;
      v65 = replyCopy;
      [(EscrowService *)v28 recoverRecordWithRequest:requestCopy completionBlock:v64];

      goto LABEL_10;
    }

    if (![requestCopy silent] || !objc_msgSend(requestCopy, "usesRecoveryKey"))
    {
      goto LABEL_40;
    }

    v33 = CloudServicesLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Using cached recovery key", &buf, 2u);
    }

    cachedRecoveryKey = [(SecureBackupDaemon *)self cachedRecoveryKey];
    [requestCopy setRecoveryKey:cachedRecoveryKey];

    recoveryKey = [requestCopy recoveryKey];
    LODWORD(cachedRecoveryKey) = recoveryKey == 0;

    if (!cachedRecoveryKey)
    {
LABEL_40:
      passphrase = [requestCopy passphrase];
      v37 = [passphrase length] == 0;

      if (v37)
      {
        if (![requestCopy useCachedPassphrase])
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
          replyCopy[2](replyCopy, 0, v51);

          goto LABEL_10;
        }

        cachedPassphrase = [(SecureBackupDaemon *)self cachedPassphrase];
        [requestCopy setPassphrase:cachedPassphrase];

        passphrase2 = [requestCopy passphrase];
        v45 = [passphrase2 length] == 0;

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
          replyCopy[2](replyCopy, 0, v48);

          goto LABEL_10;
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v79 = 0x3032000000;
      v80 = sub_1000109EC;
      v81 = sub_1000109FC;
      v82 = os_transaction_create();
      if (([requestCopy icdp] & 1) != 0 || -[SecureBackupDaemon _usesEscrow](self, "_usesEscrow"))
      {
        if ([requestCopy icdp] && objc_msgSend(requestCopy, "silent"))
        {
          v38 = CloudServicesLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_10004BD5C();
          }

          passphrase3 = [requestCopy passphrase];
          v40 = [passphrase3 length];
          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_100028870;
          v59[3] = &unk_100075890;
          v62 = replyCopy;
          v60 = requestCopy;
          selfCopy2 = self;
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
          v57 = replyCopy;
          v58 = &buf;
          [(SecureBackupDaemon *)self recoverEscrowWithRequest:requestCopy reply:v56];
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

        replyCopy[2](replyCopy, 0, 0);
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
    replyCopy[2](replyCopy, 0, v55);
  }

LABEL_10:
}

- (void)recoverWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  kdebug_trace();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028C30;
  v10[3] = &unk_100075510;
  v11 = os_transaction_create();
  v12 = replyCopy;
  v8 = v11;
  v9 = replyCopy;
  [(SecureBackupDaemon *)self _recoverWithRequest:requestCopy reply:v10];
}

- (void)recoverWithCDPContextInDaemon:(id)daemon escrowRecord:(id)record reply:(id)reply
{
  replyCopy = reply;
  recordCopy = record;
  daemonCopy = daemon;
  kdebug_trace();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100028DCC;
  v13[3] = &unk_100075510;
  v14 = os_transaction_create();
  v15 = replyCopy;
  v11 = v14;
  v12 = replyCopy;
  [(SecureBackupDaemon *)self _recoverWithCDPContext:daemonCopy escrowRecord:recordCopy reply:v13];
}

- (void)recoverWithCDPContextInDaemon:(id)daemon escrowRecord:(id)record altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply
{
  replyCopy = reply;
  sessionIDCopy = sessionID;
  iDCopy = iD;
  dCopy = d;
  recordCopy = record;
  daemonCopy = daemon;
  kdebug_trace();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100028FAC;
  v22[3] = &unk_100075510;
  v23 = os_transaction_create();
  v24 = replyCopy;
  v20 = v23;
  v21 = replyCopy;
  [(SecureBackupDaemon *)self _recoverWithCDPContext:daemonCopy escrowRecord:recordCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy reply:v22];
}

- (void)recoverSilentWithCDPContextInDaemon:(id)daemon allRecords:(id)records reply:(id)reply
{
  replyCopy = reply;
  recordsCopy = records;
  daemonCopy = daemon;
  kdebug_trace();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100029148;
  v13[3] = &unk_100075510;
  v14 = os_transaction_create();
  v15 = replyCopy;
  v11 = v14;
  v12 = replyCopy;
  [(SecureBackupDaemon *)self _recoverSilentWithCDPContext:daemonCopy allRecords:recordsCopy reply:v13];
}

- (void)recoverSilentWithCDPContextInDaemon:(id)daemon allRecords:(id)records altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID reply:(id)reply
{
  replyCopy = reply;
  sessionIDCopy = sessionID;
  iDCopy = iD;
  dCopy = d;
  recordsCopy = records;
  daemonCopy = daemon;
  kdebug_trace();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100029328;
  v22[3] = &unk_100075510;
  v23 = os_transaction_create();
  v24 = replyCopy;
  v20 = v23;
  v21 = replyCopy;
  [(SecureBackupDaemon *)self _recoverSilentWithCDPContext:daemonCopy allRecords:recordsCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy reply:v22];
}

- (void)restoreKeychainWithBackupPasswordInDaemon:(id)daemon reply:(id)reply
{
  replyCopy = reply;
  daemonCopy = daemon;
  kdebug_trace();
  v10 = 0;
  v8 = [(SecureBackupDaemon *)self _restoreKeychainWithBackupPassword:daemonCopy keybagDigest:0 error:&v10];

  v9 = v10;
  kdebug_trace();
  replyCopy[2](replyCopy, v8, v9);
}

- (void)removeRecoveryKeyFromBackupInDaemon:(id)daemon
{
  v7 = 0;
  daemonCopy = daemon;
  v5 = [(SecureBackupDaemon *)self removeRecoveryKey:&v7];
  v6 = v7;
  daemonCopy[2](daemonCopy, v5, v6);
}

- (BOOL)removeRecoveryKey:(id *)key
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
  kvsQueue = [(SecureBackupDaemon *)self kvsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029758;
  block[3] = &unk_1000758B8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v16;
  block[7] = &v13;
  dispatch_sync(kvsQueue, block);

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
    if (key)
    {
      *key = v20[5];
    }
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

- (void)verifyRecoveryKeyInDaemon:(id)daemon reply:(id)reply
{
  v9 = 0;
  replyCopy = reply;
  v7 = [(SecureBackupDaemon *)self verifyRecoveryKey:daemon error:&v9];
  v8 = v9;
  replyCopy[2](replyCopy, v7, v8);
}

- (BOOL)verifyRecoveryKey:(id)key error:(id *)error
{
  keyCopy = key;
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
  backupQueue = [(SecureBackupDaemon *)self backupQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A0AC;
  block[3] = &unk_1000758E0;
  v8 = keyCopy;
  v16 = v8;
  selfCopy = self;
  v18 = &v25;
  v19 = &v29;
  v20 = &v21;
  dispatch_sync(backupQueue, block);

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
  if (error)
  {
    v14 = v30[5];
    if (v14)
    {
      v11 = 0;
      *error = v14;
    }
  }

LABEL_13:

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v11;
}

- (void)isRecoveryKeySetInDaemon:(id)daemon
{
  daemonCopy = daemon;
  v5 = +[NSUbiquitousKeyValueStore defaultStore];
  v8 = 0;
  v6 = [(SecureBackupDaemon *)self hasRecoveryKeyInKVS:v5 error:&v8];
  v7 = v8;
  daemonCopy[2](daemonCopy, v6, v7);
}

- (void)recoverRecordContentsWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = os_transaction_create();
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[SecureBackupDaemon recoverRecordContentsWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    [(EscrowService *)v12 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [(EscrowService *)v12 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v14 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v12];
    replyCopy[2](replyCopy, 0, v14);
  }

  else
  {
    kdebug_trace();
    v15 = [EscrowService alloc];
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    v12 = [(EscrowService *)v15 initWithOperationsLogger:operationsLogger];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002AA50;
    v17[3] = &unk_100075510;
    v19 = replyCopy;
    v18 = v8;
    [(EscrowService *)v12 recoverRecordWithRequest:requestCopy completionBlock:v17];

    v14 = v19;
  }
}

- (void)createICDPRecordWithRequest:(id)request recordContents:(id)contents reply:(id)reply
{
  requestCopy = request;
  contentsCopy = contents;
  replyCopy = reply;
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

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    [v15 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v15 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

LABEL_35:
    v28 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v15];
    replyCopy[2](replyCopy, v28);
    goto LABEL_36;
  }

  if (![requestCopy icdp] || !objc_msgSend(requestCopy, "usesMultipleiCSC"))
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
      icdp = [requestCopy icdp];
      usesMultipleiCSC = [requestCopy usesMultipleiCSC];
      passphrase = [requestCopy passphrase];
      v41 = v11;
      if ([passphrase length])
      {
        v42 = @"present";
      }

      else
      {
        v42 = @"not present";
      }

      passcodeStashSecret = [requestCopy passcodeStashSecret];
      *buf = 67109890;
      if (passcodeStashSecret)
      {
        v44 = @"present";
      }

      else
      {
        v44 = @"not present";
      }

      *v51 = icdp;
      *&v51[4] = 1024;
      *&v51[6] = usesMultipleiCSC;
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

  passphrase2 = [requestCopy passphrase];
  if (![passphrase2 length])
  {
    passcodeStashSecret2 = [requestCopy passcodeStashSecret];

    if (passcodeStashSecret2)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_14:
  dsid = [requestCopy dsid];

  if (!dsid)
  {
    v24 = CloudServicesLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "setting DSID", buf, 2u);
    }

    v25 = sub_10000F044();
    [requestCopy setDsid:v25];
  }

  v15 = +[NSMutableDictionary dictionary];
  [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesMultipleiCSCKey];
  v26 = +[NSDate now];
  v27 = [CSDateUtilities localStringFromDate:v26];
  [v15 setObject:v27 forKeyedSubscript:kSecureBackupTimestampKey];

  v28 = [(SecureBackupDaemon *)self massageOutgoingMetadataFromRequest:requestCopy];
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

  [requestCopy setMetadata:v15];
  v32 = [contentsCopy mutableCopy];
  if ([requestCopy requiresDoubleEnrollment])
  {
    v33 = +[NSUUID UUID];
    uUIDString = [v33 UUIDString];
    [v32 setObject:uUIDString forKeyedSubscript:@"DoubleEnrollmentPassword"];

    [v32 setObject:&off_10007A3E0 forKeyedSubscript:@"DoubleEnrollmentVersion"];
  }

  [requestCopy setEscrowRecord:v32];
  v35 = [EscrowService alloc];
  operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
  v37 = [(EscrowService *)v35 initWithOperationsLogger:operationsLogger];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10002B25C;
  v47[3] = &unk_100075510;
  v49 = replyCopy;
  v48 = v11;
  [(EscrowService *)v37 storeRecordWithRequest:requestCopy completionBlock:v47];

LABEL_36:
}

- (void)_deleteAlliCDPRecordsWithContext:(id)context
{
  contextCopy = context;
  recordIDs = [contextCopy recordIDs];
  v6 = [recordIDs count];

  if (v6)
  {
    recordIDs2 = [contextCopy recordIDs];
    v8 = [recordIDs2 objectAtIndex:0];

    recordIDs3 = [contextCopy recordIDs];
    [recordIDs3 removeObjectAtIndex:0];

    request = [contextCopy request];
    [request setRecordID:v8];

    escrowService = [contextCopy escrowService];
    request2 = [contextCopy request];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002B4B0;
    v15[3] = &unk_100075908;
    v16 = contextCopy;
    selfCopy = self;
    [escrowService deleteRecordWithRequest:request2 completionBlock:v15];
  }

  else
  {
    completionBlock = [contextCopy completionBlock];
    deleteError = [contextCopy deleteError];
    (completionBlock)[2](completionBlock, deleteError);
  }
}

- (void)deleteAlliCDPRecordsWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[SecureBackupDaemon deleteAlliCDPRecordsWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, v13);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B794;
    v14[3] = &unk_100075840;
    v17 = replyCopy;
    v15 = requestCopy;
    selfCopy = self;
    [(SecureBackupDaemon *)self getAccountInfoWithRequest:v15 reply:v14];

    v11 = v17;
  }
}

- (void)backOffDateWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SecureBackupDaemon backOffDateWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002BC24;
    v14[3] = &unk_100075450;
    v15 = replyCopy;
    [(SecureBackupDaemon *)self getAccountInfoWithRequest:requestCopy reply:v14];
    v11 = v15;
  }
}

- (void)setBackOffDateWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v44 = "[SecureBackupDaemon setBackOffDateWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, v13);
  }

  else
  {
    metadataHash = [requestCopy metadataHash];
    v13 = [metadataHash objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

    backOffDate = [requestCopy backOffDate];

    if (backOffDate && v13)
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
            [requestCopy setStingray:1];
            [requestCopy setMetadata:v18];
            [(SecureBackupDaemon *)self updateMetadataWithRequest:requestCopy reply:replyCopy];
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

            replyCopy[2](replyCopy, v32);
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

          replyCopy[2](replyCopy, v29);
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
        replyCopy[2](replyCopy, v11);
      }
    }

    else
    {
      v33 = v13;
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10004C4A4(requestCopy, v19);
      }

      v20 = [NSString alloc];
      metadataHash2 = [requestCopy metadataHash];
      if (metadataHash2)
      {
        v22 = @"have";
      }

      else
      {
        v22 = @"missing";
      }

      backOffDate2 = [requestCopy backOffDate];
      if (backOffDate2)
      {
        v24 = @"have";
      }

      else
      {
        v24 = @"missing";
      }

      encodedMetadata = [requestCopy encodedMetadata];
      if (encodedMetadata)
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
      replyCopy[2](replyCopy, v11);
      v13 = v33;
    }
  }
}

- (void)disableWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = _CloudServicesSignpostLogSystem();
  v9 = _CloudServicesSignpostCreate(v8);
  v11 = v10;

  v12 = _CloudServicesSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    activityLabel = [requestCopy activityLabel];
    *buf = 138543362;
    v47 = activityLabel;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DisableWithRequest", " enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0xCu);
  }

  v15 = _CloudServicesSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    activityLabel2 = [requestCopy activityLabel];
    *buf = 134218242;
    v47 = v9;
    v48 = 2114;
    v49 = activityLabel2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: DisableWithRequest  enableTelemetry=YES  Activity=%{public,signpost.telemetry:string1,name=Activity}@ ", buf, 0x16u);
  }

  v17 = [[SBEscrowOperationStartEvent alloc] initWithRequest:requestCopy type:101];
  operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
  [operationsLogger updateStoreWithEvent:v17];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10002C99C;
  v41[3] = &unk_100075588;
  v44 = v9;
  v45 = v11;
  v41[4] = self;
  v19 = v17;
  v42 = v19;
  v20 = replyCopy;
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
  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    [v26 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v26 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v28 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v26];
    (v21[2])(v21, v28);

    goto LABEL_18;
  }

  if ([requestCopy icdp] && objc_msgSend(requestCopy, "deleteAll"))
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10002CBC8;
    v38[3] = &unk_100075930;
    v38[4] = self;
    v40 = v21;
    v39 = v23;
    [(SecureBackupDaemon *)self deleteAlliCDPRecordsWithRequest:requestCopy reply:v38];

    goto LABEL_18;
  }

  if ([requestCopy stingray])
  {
LABEL_17:
    v30 = [EscrowService alloc];
    operationsLogger2 = [(SecureBackupDaemon *)self operationsLogger];
    v32 = [(EscrowService *)v30 initWithOperationsLogger:operationsLogger2];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10002CC30;
    v33[3] = &unk_100075958;
    v34 = requestCopy;
    selfCopy = self;
    v37 = v21;
    v36 = v23;
    [(EscrowService *)v32 deleteRecordWithRequest:v34 completionBlock:v33];

    goto LABEL_18;
  }

  recordID = [requestCopy recordID];
  if (recordID)
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

- (void)updateMetadataWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v50 = "[SecureBackupDaemon updateMetadataWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (!error)
  {
    metadataHash = [requestCopy metadataHash];
    v46 = [metadataHash objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];
    if (![requestCopy stingray])
    {
      if ([requestCopy icdp])
      {
        metadata = [requestCopy metadata];
        if (metadata)
        {
          recordID = [requestCopy recordID];
          v31 = !recordID || v46 == 0;
          v32 = v31;

          if (!v32)
          {
            metadata2 = [requestCopy metadata];
            v21 = [metadata2 mutableCopy];

            goto LABEL_37;
          }
        }

        v33 = [CloudServicesError errorWithDomain:kSecureBackupErrorDomain code:4 format:@"update metadata with invalid parameters"];
        v34 = CloudServicesLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          recordID2 = [requestCopy recordID];
          *buf = 138412546;
          v50 = recordID2;
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

      replyCopy[2](replyCopy, v33);
      v21 = 0;
LABEL_45:

LABEL_46:
      goto LABEL_47;
    }

    v15 = kSecureBackupKeybagSHA256Key;
    v45 = [metadataHash objectForKeyedSubscript:kSecureBackupKeybagSHA256Key];
    v16 = kSecureBackupKeybagDigestKey;
    v17 = [metadataHash objectForKeyedSubscript:kSecureBackupKeybagDigestKey];
    v18 = kSecureBackupTimestampKey;
    v44 = [metadataHash objectForKeyedSubscript:kSecureBackupTimestampKey];
    v19 = kSecureBackupBackOffDateKey;
    v43 = [metadataHash objectForKeyedSubscript:kSecureBackupBackOffDateKey];
    metadata3 = [requestCopy metadata];
    if (metadata3 && v45 | v17 && v44)
    {

      if (v46)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        [v21 setObject:v45 forKeyedSubscript:v15];
        [v21 setObject:v17 forKeyedSubscript:v16];
        [v21 setObject:v44 forKeyedSubscript:v18];
        metadata4 = [requestCopy metadata];
        [v21 setObject:metadata4 forKeyedSubscript:kSecureBackupClientMetadataKey];

        backOffDate = [requestCopy backOffDate];

        if (backOffDate)
        {
          backOffDate2 = [requestCopy backOffDate];
          [backOffDate2 timeIntervalSinceReferenceDate];
          v26 = v25 > 0.0;

          if (v26)
          {
            backOffDate3 = [requestCopy backOffDate];
            [v21 setObject:backOffDate3 forKeyedSubscript:v19];
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
            operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
            v33 = [(EscrowService *)v39 initWithOperationsLogger:operationsLogger];

            [requestCopy setEncodedMetadata:v46];
            [requestCopy setMetadata:v21];
            if ([requestCopy stingray])
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
              if (![requestCopy icdp])
              {
LABEL_44:
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_10002D65C;
                v47[3] = &unk_100075450;
                v48 = replyCopy;
                [(EscrowService *)v33 updateRecordMetadataWithRequest:requestCopy completionBlock:v47];

                goto LABEL_45;
              }

              v41 = CloudServicesLog();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                recordID3 = [requestCopy recordID];
                *buf = 138412290;
                v50 = recordID3;
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

    backOffDate3 = [CloudServicesError errorWithDomain:kSecureBackupErrorDomain code:4 format:@"update stingray metadata with invalid parameters"];
    v36 = CloudServicesLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = backOffDate3;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "failed to update record metadata: %@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, backOffDate3);
    v21 = 0;
    v28 = 0;
    goto LABEL_29;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
  error2 = [requestCopy error];
  [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

  v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
  replyCopy[2](replyCopy, v13);

LABEL_47:
}

- (int)storeCachedPassphrase:(id)passphrase
{
  passphraseCopy = passphrase;
  if (![passphraseCopy length])
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
  uUIDString = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:uUIDString];
  fileSystemRepresentation = [v8 fileSystemRepresentation];

  v10 = open_dprotected_np(fileSystemRepresentation, 1794, 1, 0, 384);
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
  if (unlink(fileSystemRepresentation) < 0)
  {
    v16 = CloudServicesLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004C8E0();
    }

    goto LABEL_24;
  }

  v12 = +[NSUUID UUID];
  uUIDString2 = [v12 UUIDString];

  v28[0] = kSecureBackupPassphraseKey;
  v28[1] = @"uuid";
  v29[0] = passphraseCopy;
  v29[1] = uUIDString2;
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
    v27 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "saving uuid %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_29:

  return v11;
}

- (void)setCachedPassphrase:(id)passphrase
{
  v4 = [(SecureBackupDaemon *)self storeCachedPassphrase:passphrase];

  [(SecureBackupDaemon *)self setCachedPassphraseFD:v4];
}

- (void)setCachedRecordIDPassphrase:(id)passphrase
{
  v4 = [(SecureBackupDaemon *)self storeCachedPassphrase:passphrase];

  [(SecureBackupDaemon *)self setCachedRecordIDPassphraseFD:v4];
}

- (void)setCachedRecoveryKey:(id)key
{
  v4 = [(SecureBackupDaemon *)self storeCachedPassphrase:key];

  [(SecureBackupDaemon *)self setCachedRecoveryKeyFD:v4];
}

- (id)cachedPassphraseForFD:(int)d
{
  v4 = objc_autoreleasePoolPush();
  if (d < 0)
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
  if (fstat(d, &v19) < 0)
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
  mutableBytes = [v7 mutableBytes];
  v9 = pread(d, mutableBytes, v19.st_size, 0);
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
  cachedPassphraseFD = [(SecureBackupDaemon *)self cachedPassphraseFD];

  return [(SecureBackupDaemon *)self cachedPassphraseForFD:cachedPassphraseFD];
}

- (NSString)cachedRecordIDPassphrase
{
  cachedRecordIDPassphraseFD = [(SecureBackupDaemon *)self cachedRecordIDPassphraseFD];

  return [(SecureBackupDaemon *)self cachedPassphraseForFD:cachedRecordIDPassphraseFD];
}

- (id)cachedRecoveryKey
{
  cachedRecoveryKeyFD = [(SecureBackupDaemon *)self cachedRecoveryKeyFD];

  return [(SecureBackupDaemon *)self cachedPassphraseForFD:cachedRecoveryKeyFD];
}

- (void)uncacheRecordIDPassphrase
{
  v3 = CloudServicesLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cachedRecordID = [(SecureBackupDaemon *)self cachedRecordID];
    v6 = 138412290;
    v7 = cachedRecordID;
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

- (void)cachePassphraseWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SecureBackupDaemon cachePassphraseWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v17, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    if (replyCopy)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      error2 = [requestCopy error];
      [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      replyCopy[2](replyCopy, v13);
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

    passphrase = [requestCopy passphrase];
    [(SecureBackupDaemon *)self setCachedPassphrase:passphrase];

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)uncachePassphraseWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SecureBackupDaemon uncachePassphraseWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v15, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    if (replyCopy)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      error2 = [requestCopy error];
      [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      replyCopy[2](replyCopy, v13);

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
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }

    if (atomic_fetch_add_explicit(&dword_100084AC8, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      v11 = qword_100084AB8;
      qword_100084AB8 = 0;
      goto LABEL_14;
    }
  }
}

- (void)cacheRecoveryKeyWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[SecureBackupDaemon cacheRecoveryKeyWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v17, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    if (replyCopy)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      error2 = [requestCopy error];
      [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      replyCopy[2](replyCopy, v13);
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

    recoveryKey = [requestCopy recoveryKey];
    [(SecureBackupDaemon *)self setCachedRecoveryKey:recoveryKey];

    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }
  }
}

- (void)uncacheRecoveryKeyWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[SecureBackupDaemon uncacheRecoveryKeyWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", &v15, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    if (replyCopy)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
      error2 = [requestCopy error];
      [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

      v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
      replyCopy[2](replyCopy, v13);

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
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0);
    }

    if (atomic_fetch_add_explicit(&dword_100084ACC, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      v11 = qword_100084AC0;
      qword_100084AC0 = 0;
      goto LABEL_14;
    }
  }
}

- (void)startSMSChallengeWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SecureBackupDaemon startSMSChallengeWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = [EscrowService alloc];
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    v16 = [(EscrowService *)v14 initWithOperationsLogger:operationsLogger];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002ED2C;
    v17[3] = &unk_100075450;
    v18 = replyCopy;
    [(EscrowService *)v16 startSMSChallengeWithRequest:requestCopy completionBlock:v17];
  }
}

- (void)getCountrySMSCodesWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SecureBackupDaemon getCountrySMSCodesWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, 0, v13);
  }

  else
  {
    v14 = [EscrowService alloc];
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    v16 = [(EscrowService *)v14 initWithOperationsLogger:operationsLogger];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002F2A8;
    v17[3] = &unk_100075450;
    v18 = replyCopy;
    [(EscrowService *)v16 getCountrySMSCodesWithRequest:requestCopy completionBlock:v17];
  }
}

- (void)changeSMSTargetWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[SecureBackupDaemon changeSMSTargetWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, v13);

    goto LABEL_31;
  }

  if ([(SecureBackupDaemon *)self _backupEnabled])
  {
    if ([(SecureBackupDaemon *)self _usesEscrow])
    {
      v14 = [EscrowService alloc];
      operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
      v16 = [(EscrowService *)v14 initWithOperationsLogger:operationsLogger];

      countryDialCode = [requestCopy countryDialCode];
      if ([countryDialCode length])
      {
        countryCode = [requestCopy countryCode];
        if ([countryCode length])
        {
          smsTarget = [requestCopy smsTarget];
          if ([smsTarget length])
          {
            appleID = [requestCopy appleID];
            if ([appleID length])
            {
              iCloudPassword = [requestCopy iCloudPassword];
              v22 = [iCloudPassword length] == 0;

              if (!v22)
              {
                smsTarget2 = [requestCopy smsTarget];
                v41 = 0;
                v24 = [(SecureBackupDaemon *)self normalizeSMSTarget:smsTarget2 error:&v41];
                v25 = v41;
                [requestCopy setSmsTarget:v24];

                smsTarget3 = [requestCopy smsTarget];
                LODWORD(smsTarget2) = smsTarget3 == 0;

                if (smsTarget2)
                {
                  replyCopy[2](replyCopy, v25);
                  goto LABEL_30;
                }

                v39[0] = _NSConcreteStackBlock;
                v39[1] = 3221225472;
                v39[2] = sub_10002FC30;
                v39[3] = &unk_100075450;
                v40 = replyCopy;
                [(EscrowService *)v16 changeSMSTargetWithRequest:requestCopy completionBlock:v39];
                v27 = v40;
LABEL_29:

LABEL_30:
                goto LABEL_31;
              }

LABEL_24:
              v34 = CloudServicesLog();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                smsTarget4 = [requestCopy smsTarget];
                appleID2 = [requestCopy appleID];
                iCloudPassword2 = [requestCopy iCloudPassword];
                v38 = @"non-";
                *buf = 138412802;
                v45 = smsTarget4;
                v46 = 2112;
                if (!iCloudPassword2)
                {
                  v38 = &stru_1000767A0;
                }

                v47 = appleID2;
                v48 = 2112;
                v49 = v38;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "attempted to change SMS target, with invalid parameters: %@, %@, %@nil iCloud password", buf, 0x20u);
              }

              v42 = NSLocalizedDescriptionKey;
              v43 = @"attempted to change SMS target with invalid parameters";
              v25 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
              v27 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v25];
              replyCopy[2](replyCopy, v27);
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
    replyCopy[2](replyCopy, v33);
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
    replyCopy[2](replyCopy, v30);
  }

LABEL_31:
}

- (void)notificationInfoWithReply:(id)reply
{
  replyCopy = reply;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(NSMutableDictionary);
  handledNotifications = [(SecureBackupDaemon *)self handledNotifications];
  [v5 setObject:handledNotifications forKeyedSubscript:@"handled_notifications"];

  ignoredNotifications = [(SecureBackupDaemon *)self ignoredNotifications];
  [v5 setObject:ignoredNotifications forKeyedSubscript:@"ignored_notifications"];

  v8 = xpc_copy_event();
  if (v8)
  {
    v9 = _CFXPCCreateCFObjectFromXPCObject();
    [v5 setObject:v9 forKeyedSubscript:@"events"];
  }

  replyCopy[2](replyCopy, v5, 0);

  objc_autoreleasePoolPop(v4);
}

- (void)stateCaptureWithReply:(id)reply
{
  replyCopy = reply;
  v4 = objc_autoreleasePoolPush();
  copyKVSState = [(SecureBackupDaemon *)self copyKVSState];
  replyCopy[2](replyCopy, copyKVSState, 0);

  objc_autoreleasePoolPop(v4);
}

- (id)getPendingEscrowRequest:(id *)request
{
  v4 = [SecEscrowRequest request:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 fetchRequestWaitingOnPasscode:request];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginHSA2PasscodeRequest:(id)request desirePasscodeImmediately:(BOOL)immediately uuid:(id)uuid reason:(id)reason reply:(id)reply
{
  immediatelyCopy = immediately;
  requestCopy = request;
  uuidCopy = uuid;
  reasonCopy = reason;
  replyCopy = reply;
  v16 = CloudServicesLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "beginning an HSA2 passcode request", buf, 2u);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  [requestCopy setIcdp:1];
  if ([reasonCopy reason] == 1)
  {
    v18 = CloudServicesLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      expectedFederationID = [reasonCopy expectedFederationID];
      *buf = 138412290;
      v39[0] = expectedFederationID;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "will attempt federation move to %@", buf, 0xCu);
    }

    expectedFederationID2 = [reasonCopy expectedFederationID];
    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [expectedFederationID2 integerValue]);
    [requestCopy setSpecifiedFederation:v21];
  }

  v22 = os_transaction_create();
  if (immediatelyCopy)
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
    replyCopy[2](replyCopy, 0, v29);
  }

  else
  {
    if (v26)
    {
      *buf = 67109376;
      LODWORD(v39[0]) = v23;
      WORD2(v39[0]) = 1024;
      *(v39 + 6) = immediatelyCopy;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "successfully set notify state for request to %d (desire immediately: %d)", buf, 0xEu);
    }

    v30 = [EscrowService alloc];
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    v32 = [(EscrowService *)v30 initWithOperationsLogger:operationsLogger];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10003039C;
    v33[3] = &unk_100075980;
    v37 = replyCopy;
    v34 = v32;
    v35 = uuidCopy;
    v36 = v22;
    v28 = v32;
    [(EscrowService *)v28 fetchCertificatesAndDuplicateRequest:requestCopy completionBlock:v33];

    v29 = v37;
  }
}

- (int)notifyToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
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

  objc_sync_exit(selfCopy);

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

- (int)setPasscodeRequestFlag:(unint64_t)flag
{
  notifyToken = [(SecureBackupDaemon *)self notifyToken];
  if (notifyToken != -1)
  {
    result = notify_set_state(notifyToken, flag);
    if (result != 2)
    {
      return result;
    }

    [(SecureBackupDaemon *)self clearNotifyToken];
  }

  return 2;
}

- (int)getPasscodeRequestFlag:(unint64_t *)flag
{
  notifyToken = [(SecureBackupDaemon *)self notifyToken];
  if (notifyToken != -1)
  {
    result = notify_get_state(notifyToken, flag);
    if (result != 2)
    {
      return result;
    }

    [(SecureBackupDaemon *)self clearNotifyToken];
  }

  return 2;
}

- (void)prepareHSA2EscrowRecordContents:(id)contents usesComplexPassphrase:(BOOL)passphrase reply:(id)reply
{
  passphraseCopy = passphrase;
  contentsCopy = contents;
  replyCopy = reply;
  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v83 = passphraseCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "beginning an prepare HSA2 contents request: usesComplexPassphrase: %d", buf, 8u);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [contentsCopy setQueue:connectionQueue];

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

  if (![contentsCopy stingray])
  {
    if ([contentsCopy usesRandomPassphrase])
    {
      v15 = kSecureBackupErrorDomain;
      v76 = NSLocalizedDescriptionKey;
      v77 = @"Cannot prepare HSA2 Escrow record for a usesRandomPassphrase request";
      v16 = &v77;
      v17 = &v76;
      goto LABEL_13;
    }

    if (([contentsCopy usesMultipleiCSC] & 1) == 0)
    {
      v20 = CloudServicesLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "record preparation requires a multiple iCSC world, so do that", buf, 2u);
      }

      [contentsCopy setUsesMultipleiCSC:1];
    }

    if (([contentsCopy icdp] & 1) == 0)
    {
      v21 = CloudServicesLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "record preparation requires an ICDP world, so do that", buf, 2u);
      }

      [contentsCopy setIcdp:1];
    }

    dsid = [contentsCopy dsid];

    if (!dsid)
    {
      v23 = CloudServicesLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "setting record DSID", buf, 2u);
      }

      v24 = sub_10000F044();
      [contentsCopy setDsid:v24];
    }

    metadata = [contentsCopy metadata];
    v26 = kSecureBackupUsesComplexPassphraseKey;
    v18 = [metadata objectForKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];

    integerValue = [v18 integerValue];
    metadata2 = [contentsCopy metadata];
    v29 = [metadata2 mutableCopy];
    v30 = v29;
    if (integerValue || passphraseCopy)
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
      passphrase = [contentsCopy passphrase];
      v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [passphrase length]);
      [v33 setObject:v35 forKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
    }

    [contentsCopy setMetadata:v33];

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

      replyCopy[2](replyCopy, v19);
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
        replyCopy[2](replyCopy, v39);
      }

      else
      {
        v44 = kSecureBackupErrorDomain;
        v74 = NSLocalizedDescriptionKey;
        v75 = @"No outstanding escrow request";
        v45 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v46 = [NSError errorWithDomain:v44 code:-1 userInfo:v45];
        replyCopy[2](replyCopy, v46);

        v39 = 0;
      }

      goto LABEL_83;
    }

    v71 = 0;
    v40 = [(SecureBackupDaemon *)self fetchPRK:&v71];
    v39 = v71;
    [contentsCopy setIdmsData:v40];

    if (v39)
    {
      v41 = CloudServicesLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10004CF80();
      }

      replyCopy[2](replyCopy, v39);
LABEL_83:

      v19 = v39;
LABEL_84:

      goto LABEL_14;
    }

    idmsData = [contentsCopy idmsData];

    v48 = CloudServicesLog();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
    if (idmsData)
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
    v51 = [(SecureBackupDaemon *)self makeRecordCandidate:contentsCopy error:&v70];
    v52 = v70;
    v39 = v52;
    if (!v51 || v52)
    {
      v63 = CloudServicesLog();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        sub_10004D140();
      }

      replyCopy[2](replyCopy, v39);
    }

    else
    {
      v53 = [EscrowService alloc];
      operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
      v55 = [(EscrowService *)v53 initWithOperationsLogger:operationsLogger];

      v69 = 0;
      v56 = [(EscrowService *)v55 fetchCachedCertificateWithRequest:contentsCopy error:&v69];
      v57 = v69;
      v39 = v57;
      if (!v56 || v57)
      {
        v64 = CloudServicesLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_10004D0D0();
        }

        replyCopy[2](replyCopy, v39);
      }

      else
      {
        v65 = v55;
        v68 = 0;
        v58 = [EscrowPrerecord createPrerecordFromCandidate:v51 storedCertificate:v56 request:contentsCopy error:&v68];
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

          replyCopy[2](replyCopy, v39);
          v55 = v65;
        }

        else
        {
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Successfully made an escrow prerecord", buf, 2u);
          }

          data = [v58 data];
          v67 = 0;
          [v36 cachePrerecord:v38 serializedPrerecord:data error:&v67];
          v39 = v67;

          v55 = v65;
          if (v39)
          {
            v62 = CloudServicesLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_10004CFF0();
            }

            replyCopy[2](replyCopy, v39);
          }

          else
          {
            replyCopy[2](replyCopy, 0);
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
  replyCopy[2](replyCopy, v19);
LABEL_14:
}

- (id)fetchPRK:(id *)k
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

- (void)daemonPasscodeRequestOpinion:(id)opinion
{
  opinionCopy = opinion;
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

      opinionCopy[2](opinionCopy, 0, v9);
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

        v16 = opinionCopy[2];
        v17 = opinionCopy;
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

        v16 = opinionCopy[2];
        v17 = opinionCopy;
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

    opinionCopy[2](opinionCopy, 0, v7);
    v9 = v7;
  }
}

- (void)getCertificatesWithRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[SecureBackupDaemon getCertificatesWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  v10 = [EscrowService alloc];
  operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
  v12 = [(EscrowService *)v10 initWithOperationsLogger:operationsLogger];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003171C;
  v14[3] = &unk_1000759A8;
  v15 = replyCopy;
  v13 = replyCopy;
  [(EscrowService *)v12 fetchCertificatesWithRequest:requestCopy completionBlock:v14];
}

- (void)saveTermsAcceptance:(id)acceptance reply:(id)reply
{
  acceptanceCopy = acceptance;
  replyCopy = reply;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SecureBackupDaemon saveTermsAcceptance:reply:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  altDSID = [acceptanceCopy altDSID];
  if (altDSID)
  {
    [CSCertOperations storeTerms:acceptanceCopy withAltDSID:altDSID reply:replyCopy];
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

    replyCopy[2](replyCopy, v12);
  }
}

- (void)getAcceptedTermsForAltDSID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
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
  v10 = replyCopy;
  v8 = replyCopy;
  [CSCertOperations fetchTermsWithAltDSID:dCopy reply:v9];
}

- (void)moveToFederationAllowed:(id)allowed altDSID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [allowed integerValue]);
  v9 = [CSCertOperations moveToFederationAllowed:v10 altDSID:dCopy];

  replyCopy[2](replyCopy, v9 == 0, v9);
}

- (void)knownICDPFederations:(id)federations
{
  federationsCopy = federations;
  v4 = CloudServicesLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SecureBackupDaemon knownICDPFederations:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In %s", &v6, 0xCu);
  }

  v5 = +[CSCertOperations knownICDPFederations];
  federationsCopy[2](federationsCopy, v5, 0);
}

- (void)enableGuitarfishTokenWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[SecureBackupDaemon enableGuitarfishTokenWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, v13);
  }

  else
  {
    metadata = [requestCopy metadata];
    v11 = [metadata mutableCopy];

    metadataHash = [requestCopy metadataHash];
    v13 = [metadataHash objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

    v16 = +[NSMutableDictionary dictionary];
    iCloudIdentityData = [requestCopy iCloudIdentityData];
    sha256Digest = [iCloudIdentityData sha256Digest];
    v18 = kSecureBackupKeybagSHA256Key;
    v31 = sha256Digest;
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
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    v28 = [(EscrowService *)v23 initWithOperationsLogger:operationsLogger];

    v25 = [[NSMutableDictionary alloc] initWithCapacity:5];
    [v25 setObject:v31 forKeyedSubscript:v18];
    [v25 setObject:iCloudIdentityData forKeyedSubscript:kSecureBackupBagPasswordKey];
    [v25 setObject:@"1" forKeyedSubscript:@"BackupVersion"];
    [v25 setObject:v21 forKeyedSubscript:v22];
    [requestCopy setEscrowRecord:v25];
    [requestCopy setMetadata:v16];
    [requestCopy setEncodedMetadata:v13];
    encodedMetadata = [requestCopy encodedMetadata];

    if (encodedMetadata)
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
    v33 = replyCopy;
    [(EscrowService *)v28 storeRecordWithRequest:requestCopy completionBlock:v32];
  }
}

- (void)recoverGuitarfishTokenWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SecureBackupDaemon recoverGuitarfishTokenWithRequest:reply:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "In %s", buf, 0xCu);
  }

  connectionQueue = [(SecureBackupDaemon *)self connectionQueue];
  [requestCopy setQueue:connectionQueue];

  error = [requestCopy error];

  if (error)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [(EscrowService *)v11 setObject:@"error decoding request properties" forKeyedSubscript:NSLocalizedDescriptionKey];
    error2 = [requestCopy error];
    [(EscrowService *)v11 setObject:error2 forKeyedSubscript:NSUnderlyingErrorKey];

    v13 = [NSError errorWithDomain:kSecureBackupErrorDomain code:5 userInfo:v11];
    replyCopy[2](replyCopy, 0, v13);
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
    operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
    v11 = [(EscrowService *)v15 initWithOperationsLogger:operationsLogger];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003245C;
    v17[3] = &unk_100075450;
    v18 = replyCopy;
    [(EscrowService *)v11 recoverRecordWithRequest:requestCopy completionBlock:v17];
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

- (void)restoreBackupName:(id)name peerID:(id)d keybag:(id)keybag password:(id)password backup:(id)backup reply:(id)reply
{
  nameCopy = name;
  replyCopy = reply;
  backupCopy = backup;
  passwordCopy = password;
  keybagCopy = keybag;
  dCopy = d;
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

  v26 = nameCopy;
  v27 = replyCopy;
  v24 = replyCopy;
  v25 = nameCopy;
  SecItemBackupRestore();
}

- (BOOL)verifyRKWithKeyBag:(id)bag password:(id)password error:(id *)error
{
  passwordCopy = password;
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
    if (error)
    {
      *error = v16;
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

- (id)removeRKFromKeyBag:(id)bag error:(id *)error
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

      if (error)
      {
        *error = v15;
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
    if (error)
    {
      *error = v16;
    }
  }

  return v8;
}

- (BOOL)backupWithRegisteredBackupsWithError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
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

  v13 = handlerCopy;
  v14 = SecItemBackupWithRegisteredBackups();
  v15 = v14;
  if (error && (v14 & 1) == 0)
  {
    *error = 0;
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

- (BOOL)backupWithRegisteredBackupViewWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  v6 = SecItemBackupWithRegisteredViewBackup();
  v7 = CloudServicesLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "registered view!! %@", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v11 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "failed to register view: %@", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return v6;
}

- (BOOL)backupSetConfirmedManifest:(id)manifest digest:(id)digest manifest:(id)a5 error:(id *)error
{
  digestCopy = digest;
  v10 = a5;
  manifestCopy = manifest;
  v12 = CloudServicesLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sha1Digest = [v10 sha1Digest];
    hexString = [sha1Digest hexString];
    hexString2 = [digestCopy hexString];
    *v18 = 138412546;
    *&v18[4] = hexString;
    v19 = 2112;
    v20 = hexString2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setting manifest hash: %@, digest: %@", v18, 0x16u);
  }

  *v18 = 0;
  v16 = SecItemBackupSetConfirmedManifest();

  if (error && (v16 & 1) == 0)
  {
    *error = *v18;
  }

  return v16;
}

- (BOOL)backupWithChanges:(id)changes error:(id *)error handler:(id)handler
{
  changesCopy = changes;
  handlerCopy = handler;
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

  v16 = handlerCopy;
  v17 = SecItemBackupWithChanges();
  v18 = v17;
  if (error && (v17 & 1) == 0)
  {
    *error = 0;
  }

  Nanoseconds = _CloudServicesSignpostGetNanoseconds(v10, v12);
  v20 = _CloudServicesSignpostLogSystem();
  v21 = v20;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 138543618;
    v25 = changesCopy;
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
    v29 = changesCopy;
    v30 = 1026;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: BackupWithChanges  CloudServicesSignpostNameSecItemBackupWithChanges=%{public,signpost.telemetry:string1,name=CloudServicesSignpostNameSecItemBackupWithChanges}@  CloudServicesSignpostNameSecItemBackupWithChanges=%{public,signpost.telemetry:number1,name=CloudServicesSignpostNameSecItemBackupWithChanges}d ", buf, 0x26u);
  }

  return v18;
}

- (id)copyMyPeerInfo:(id *)info
{
  v4 = SOSCCCopyMyPeerInfo();
  v5 = v4;
  if (info && !v4)
  {
    *info = 0;
  }

  return v5;
}

- (id)copyPeerID:(id)d
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

- (id)copyMyPeerIDWithError:(id *)error
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
      sub_10004E9D4(error);
    }

    v6 = 0;
  }

  return v6;
}

- (id)copyBackupKeyForNewDeviceRecoverySecret:(id)secret error:(id *)error
{
  v5 = SOSCopyDeviceBackupPublicKey();
  v6 = v5;
  if (error && !v5)
  {
    *error = 0;
  }

  return v6;
}

- (id)copyMyPeerWithNewDeviceRecoverySecret:(id)secret error:(id *)error
{
  v5 = SOSCCCopyMyPeerWithNewDeviceRecoverySecret();
  v6 = v5;
  if (error && !v5)
  {
    *error = 0;
  }

  return v6;
}

- (id)copyEncodedData:(id)data error:(id *)error
{
  v5 = SOSPeerInfoCopyEncodedData();
  v6 = v5;
  if (error && !v5)
  {
    *error = 0;
  }

  return v6;
}

- (BOOL)registerSingleRecoverySecret:(id)secret iCDP:(BOOL)p error:(id *)error
{
  v6 = SOSCCRegisterSingleRecoverySecret();
  v7 = v6;
  if (error && (v6 & 1) == 0)
  {
    *error = 0;
  }

  return v7;
}

- (id)createPeerInfoFromData:(id)data error:(id *)error
{
  v5 = SOSPeerInfoCreateFromData();
  v6 = v5;
  if (error && !v5)
  {
    *error = 0;
  }

  return v6;
}

- (id)copyOSVersion:(id)version
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
  allObjects = [v2 allObjects];
  v4 = [allObjects sortedArrayUsingSelector:"compare:"];

  return v4;
}

- (id)currentViews
{
  AllCurrent = SOSViewsGetAllCurrent();
  if (AllCurrent)
  {
    allObjects = [AllCurrent allObjects];
    v4 = [allObjects sortedArrayUsingSelector:"compare:"];
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

- (id)createEncodedDirectBackupSliceKeybagFromData:(id)data error:(id *)error
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

  if (error)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = v11;
    [v8 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];

    *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:19 userInfo:v8];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (BOOL)backupSliceKeybagHasRecoveryKey:(id)key
{
  bskb = [key bskb];
  if (bskb)
  {
    v4 = SOSBSKBHasRecoveryKey();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createDERDataFromPlist:(id)plist
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

- (id)createPlistFromDERData:(id)data
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

- (id)createiCloudRecoveryPasswordWithError:(id *)error
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

    if (error)
    {
      *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (void)doEnableEscrowMultiICSCWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = [(SecureBackupDaemon *)self massageOutgoingMetadataFromRequest:requestCopy];
  metadataHash = [requestCopy metadataHash];
  v10 = [metadataHash objectForKeyedSubscript:kSecureBackupEncodedMetadataKey];

  metadataHash2 = [requestCopy metadataHash];
  v140 = [metadataHash2 objectForKeyedSubscript:@"duplicateEncodedMetadata"];

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

  passphrase = [requestCopy passphrase];
  if ([passphrase length])
  {
  }

  else
  {
    useCachedPassphrase = [requestCopy useCachedPassphrase];

    if (useCachedPassphrase)
    {
      cachedPassphrase = [(SecureBackupDaemon *)self cachedPassphrase];
      [requestCopy setPassphrase:cachedPassphrase];

      passphrase2 = [requestCopy passphrase];
      v18 = [passphrase2 length];

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
        replyCopy[2](replyCopy, v76);

        v21 = v8;
        goto LABEL_117;
      }
    }
  }

  passphrase3 = [requestCopy passphrase];
  v139 = v12;
  if ([passphrase3 length])
  {
    goto LABEL_12;
  }

  hsa2CachedPrerecordUUID = [requestCopy hsa2CachedPrerecordUUID];
  if (hsa2CachedPrerecordUUID)
  {

LABEL_12:
    goto LABEL_13;
  }

  passcodeStashSecret = [requestCopy passcodeStashSecret];

  if (!passcodeStashSecret)
  {
    goto LABEL_73;
  }

LABEL_13:
  if (([requestCopy icdp] & 1) == 0)
  {
    countryDialCode = [requestCopy countryDialCode];
    if ([countryDialCode length])
    {
      countryCode = [requestCopy countryCode];
      if ([countryCode length])
      {
        smsTarget = [requestCopy smsTarget];
        if ([smsTarget length])
        {
          appleID = [requestCopy appleID];
          if ([appleID length])
          {
            [requestCopy iCloudPassword];
            v38 = replyCopy;
            v40 = v39 = v8;
            v138 = [v40 length];

            v8 = v39;
            replyCopy = v38;

            v12 = v139;
            if (v138)
            {
              goto LABEL_14;
            }

LABEL_73:
            v135 = v8;
            v137 = v10;
            v81 = replyCopy;
            v82 = CloudServicesLog();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
            {
              sub_10004F0DC(requestCopy, v82);
            }

            v83 = [NSString alloc];
            passphrase4 = [requestCopy passphrase];
            if (passphrase4)
            {
              v85 = @"non-";
            }

            else
            {
              v85 = &stru_1000767A0;
            }

            smsTarget2 = [requestCopy smsTarget];
            appleID2 = [requestCopy appleID];
            iCloudPassword = [requestCopy iCloudPassword];
            if (iCloudPassword)
            {
              v89 = @"non-";
            }

            else
            {
              v89 = &stru_1000767A0;
            }

            v27 = [v83 initWithFormat:@"attempted to enable backup, with invalid parameters: %@nil recovery password, %@, %@, %@nil iCloud password", v85, smsTarget2, appleID2, v89];

            v90 = objc_alloc_init(NSMutableDictionary);
            [v90 setObject:v27 forKeyedSubscript:NSLocalizedDescriptionKey];
            v91 = [NSError errorWithDomain:kSecureBackupErrorDomain code:4 userInfo:v90];
            replyCopy = v81;
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
  v21 = [(SecureBackupDaemon *)self ensureClientMetadata:v8 forRequest:requestCopy];

  hsa2CachedPrerecordUUID2 = [requestCopy hsa2CachedPrerecordUUID];

  v23 = CloudServicesLog();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (hsa2CachedPrerecordUUID2)
  {
    if (v24)
    {
      hsa2CachedPrerecordUUID3 = [requestCopy hsa2CachedPrerecordUUID];
      *buf = 138412290;
      v154 = hsa2CachedPrerecordUUID3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "enableWithRequest to escrow a prerecord: %@", buf, 0xCu);
    }

    v152 = 0;
    recordContents = [SecEscrowRequest request:&v152];
    v27 = v152;
    if (!recordContents)
    {
      v71 = CloudServicesLog();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_10004ED24();
      }

      replyCopy[2](replyCopy, v27);
      goto LABEL_116;
    }

    v137 = v10;
    hsa2CachedPrerecordUUID4 = [requestCopy hsa2CachedPrerecordUUID];
    v151 = v27;
    v29 = [recordContents fetchPrerecord:hsa2CachedPrerecordUUID4 error:&v151];
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
      replyCopy[2](replyCopy, v74);

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
      replyCopy[2](replyCopy, v93);

      v27 = recordContents;
      goto LABEL_115;
    }

    v32 = v31;
    [requestCopy setPrerecord:v31];
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
    v32 = [(SecureBackupDaemon *)self makeRecordCandidate:requestCopy error:&v150];
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

      replyCopy[2](replyCopy, v27);
      goto LABEL_117;
    }

    recordContents = [v32 recordContents];
    [requestCopy setEscrowRecord:recordContents];
  }

  v12 = v139;
  [v139 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecureBackupUsesMultipleiCSCKey];
  timestamp = [v32 timestamp];
  [v139 setObject:timestamp forKeyedSubscript:kSecureBackupTimestampKey];

  sosBackupKeybagDigest = [v32 sosBackupKeybagDigest];
  v134 = kSecureBackupKeybagDigestKey;
  [v139 setObject:sosBackupKeybagDigest forKeyedSubscript:?];

  escrowedSPKI = [v32 escrowedSPKI];
  [v139 setObject:escrowedSPKI forKeyedSubscript:kSecureBackupEscrowedSPKIKey];

  bottleID = [v32 bottleID];
  [v139 setObject:bottleID forKeyedSubscript:kSecureBackupBottleIDKey];

  passcodeGeneration = [v32 passcodeGeneration];
  if (passcodeGeneration)
  {
    v47 = passcodeGeneration;
    passcodeGeneration2 = [v32 passcodeGeneration];
    hasValue = [passcodeGeneration2 hasValue];

    if (hasValue)
    {
      passcodeGeneration3 = [v32 passcodeGeneration];
      v51 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [passcodeGeneration3 value]);
      [v139 setObject:v51 forKeyedSubscript:kSecureBackupPasscodeGenerationKey];
    }
  }

  if (v21)
  {
    timestamp2 = [v32 timestamp];
    [v21 setObject:timestamp2 forKeyedSubscript:kSecureBackupMetadataTimestampKey];

    [v139 setObject:v21 forKeyedSubscript:kSecureBackupClientMetadataKey];
  }

  smsTarget3 = [requestCopy smsTarget];

  if (!smsTarget3)
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
      [requestCopy setRecordID:v63];

      recordID = [requestCopy recordID];

      if (!recordID || v64)
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

        replyCopy[2](replyCopy, v64);

        goto LABEL_114;
      }

      v66 = v60;
      v60 = 0;
      goto LABEL_47;
    }

    sosBackupKeybagPassword = [v32 sosBackupKeybagPassword];
    v148 = 0;
    v95 = [(SecureBackupDaemon *)self copyMyPeerWithNewDeviceRecoverySecret:sosBackupKeybagPassword error:&v148];
    v64 = v148;

    if (v95)
    {
      v96 = [(SecureBackupDaemon *)self copyPeerID:v95];
      if (v96)
      {
        v60 = v96;
        v133 = v95;
        [requestCopy setRecordID:v96];
        sosPeerID = [v32 sosPeerID];
        if (sosPeerID)
        {
          v98 = sosPeerID;
          sosPeerID2 = [v32 sosPeerID];
          v131 = v64;
          v100 = sosPeerID2;
          v101 = sosPeerID2 ? sosPeerID2 : @"not possible";
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
              recordID2 = [requestCopy recordID];
              *buf = 138412290;
              v154 = recordID2;
              _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Escrow record ID will be %@", buf, 0xCu);

              v64 = v131;
            }

            v106 = [(SecureBackupDaemon *)self copyBackupKey:v133];
            v130 = v106;
            if (v106)
            {
              sha1Digest = [v106 sha1Digest];
              sosBackupKeybagDigest2 = [v32 sosBackupKeybagDigest];
              v129 = sha1Digest;
              LOBYTE(sha1Digest) = [sha1Digest isEqual:sosBackupKeybagDigest2];

              v109 = CloudServicesLog();
              v110 = v109;
              if (sha1Digest)
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
                [requestCopy setMetadata:v139];
                [requestCopy setEncodedMetadata:v137];
                [requestCopy setDuplicateEncodedMetadata:v140];
                v67 = [EscrowService alloc];
                operationsLogger = [(SecureBackupDaemon *)self operationsLogger];
                v69 = [(EscrowService *)v67 initWithOperationsLogger:operationsLogger];

                v64 = v69;
                v141[0] = _NSConcreteStackBlock;
                v141[1] = 3221225472;
                v141[2] = sub_100046CB8;
                v141[3] = &unk_1000755B0;
                v141[4] = self;
                v142 = requestCopy;
                v143 = v60;
                v144 = v139;
                v145 = replyCopy;
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

            replyCopy[2](replyCopy, v126);
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

        replyCopy[2](replyCopy, v120);
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

    replyCopy[2](replyCopy, v122);
    v60 = 0;
    v27 = v122;
    goto LABEL_113;
  }

  smsTarget4 = [requestCopy smsTarget];
  v149 = v27;
  v55 = [(SecureBackupDaemon *)self normalizeSMSTarget:smsTarget4 error:&v149];
  v56 = v149;

  [requestCopy setSmsTarget:v55];
  smsTarget5 = [requestCopy smsTarget];

  if (smsTarget5)
  {
    v27 = v56;
    goto LABEL_42;
  }

  replyCopy[2](replyCopy, v56);

  v27 = v56;
  v10 = v137;
LABEL_117:
}

- (void)setPasscodeMetadata:(id)metadata passphraseType:(int)type
{
  metadataCopy = metadata;
  if (type <= 3)
  {
    v6 = *(&off_100076228 + type);
    v7 = *(&off_100076248 + type);
    v8 = off_100076268[type];
    v9 = metadataCopy;
    [metadataCopy setObject:v6 forKeyedSubscript:kSecureBackupUsesComplexPassphraseKey];
    [v9 setObject:v7 forKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
    [v9 setObject:v8 forKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
    metadataCopy = v9;
  }
}

- (id)makeRecordCandidate:(id)candidate error:(id *)error
{
  candidateCopy = candidate;
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
    sosPeerID = [(SecureBackupEscrowRecordCandidate *)v7 sosPeerID];
    if (sosPeerID)
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

      if (error)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        [v17 setObject:@"SOSCopyPeerID() failed" forKeyedSubscript:NSLocalizedDescriptionKey];
        [v17 setObject:v46 forKeyedSubscript:NSUnderlyingErrorKey];
        v37 = [NSError errorWithDomain:kSecureBackupErrorDomain code:17 userInfo:v17];
LABEL_55:
        v18 = 0;
        *error = v37;
        goto LABEL_43;
      }
    }

    else
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        sosPeerID2 = [(SecureBackupEscrowRecordCandidate *)v7 sosPeerID];
        LODWORD(v73) = 138412290;
        *(&v73 + 4) = sosPeerID2;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Creating record candidate with SOS peerID %@", &v73, 0xCu);
      }

      v66 = 0;
      v41 = [(SecureBackupDaemon *)self copyBackupKeyForNewDeviceRecoverySecret:v8 error:&v66];
      v46 = v66;
      if (v41)
      {
        sha1Digest = [v41 sha1Digest];
        [(SecureBackupEscrowRecordCandidate *)v7 setSosBackupKeybagDigest:sha1Digest];

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
          if (error)
          {
            v17 = 0;
            v18 = 0;
            *error = v16;
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

                unsignedLongLongValue = [v23 unsignedLongLongValue];
                passcodeGeneration = [(SecureBackupEscrowRecordCandidate *)v7 passcodeGeneration];
                [passcodeGeneration setValue:unsignedLongLongValue];
              }
            }

            v26 = [[NSMutableDictionary alloc] initWithCapacity:5];
            sosBackupKeybagDigest = [(SecureBackupEscrowRecordCandidate *)v7 sosBackupKeybagDigest];
            [v26 setObject:sosBackupKeybagDigest forKeyedSubscript:kSecureBackupKeybagDigestKey];

            [v26 setObject:v8 forKeyedSubscript:kSecureBackupBagPasswordKey];
            [v26 setObject:@"1" forKeyedSubscript:@"BackupVersion"];
            [v26 setObject:v12 forKeyedSubscript:kSecureBackupTimestampKey];
            if ([candidateCopy requiresDoubleEnrollment])
            {
              v44 = +[NSUUID UUID];
              uUIDString = [v44 UUIDString];
              [v26 setObject:uUIDString forKeyedSubscript:@"DoubleEnrollmentPassword"];

              [v26 setObject:&off_10007A458 forKeyedSubscript:@"DoubleEnrollmentVersion"];
            }

            idmsData = [candidateCopy idmsData];

            if (idmsData)
            {
              idmsData2 = [candidateCopy idmsData];
              [v26 setObject:idmsData2 forKeyedSubscript:kSecureBackupIDMSDataKey];
            }

            if (v17)
            {
              [v26 setObject:v17 forKeyedSubscript:@"BottledPeerEntropy"];
            }

            [(SecureBackupEscrowRecordCandidate *)v7 setRecordContents:v26];
            v18 = v7;

            goto LABEL_42;
          }

          if (error)
          {
            v38 = objc_alloc_init(NSMutableDictionary);
            [v38 setObject:@"fetchEscrowContents failed" forKeyedSubscript:NSLocalizedDescriptionKey];
            *error = [NSError errorWithDomain:kSecureBackupErrorDomain code:46 userInfo:v38];
          }
        }

        v17 = 0;
        v18 = 0;
        goto LABEL_42;
      }

      if (error)
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
  if (error)
  {
    [NSError errorWithDomain:kSecureBackupErrorDomain code:24 userInfo:v10];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_45:

  return v18;
}

- (id)ensureClientMetadata:(id)metadata forRequest:(id)request
{
  metadataCopy = metadata;
  if (metadataCopy)
  {
    if (os_variant_has_internal_diagnostics())
    {
      currentClientMetadata = [(SecureBackupDaemon *)self currentClientMetadata];
      if (([currentClientMetadata isEqualToDictionary:metadataCopy] & 1) == 0)
      {
        v8 = CloudServicesLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_10004F3A0();
        }
      }
    }

    currentClientMetadata2 = metadataCopy;
    goto LABEL_11;
  }

  if ([request generateClientMetadata])
  {
    currentClientMetadata2 = [(SecureBackupDaemon *)self currentClientMetadata];
LABEL_11:
    v10 = currentClientMetadata2;
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

  currentMachineID = [(SecureBackupDaemon *)self currentMachineID];
  [v3 setObject:currentMachineID forKeyedSubscript:@"device_mid"];

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
    machineID = [v3 machineID];
  }

  else
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004F464();
    }

    machineID = 0;
  }

  return machineID;
}

@end