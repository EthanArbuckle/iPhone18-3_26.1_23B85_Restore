@interface BUAccountsProvider
+ (BUAccountsProvider)sharedProvider;
- (ACAccount)activeStoreAccount;
- (ACAccount)localStoreAccount;
- (ACAccount)primaryAppleAccount;
- (BOOL)detectedUserSwitchWithId:(id)id outSignedIn:(BOOL *)in outSignedOut:(BOOL *)out outAccountNumberChanged:(BOOL *)changed;
- (BOOL)hasCloudKitEntitlement;
- (BOOL)hasRecommendationsEnabled;
- (BOOL)isGlobalICloudDriveSyncOptedIn;
- (BOOL)isPrimaryAccountManagedAppleID;
- (BOOL)isStoreAccountManagedAppleID;
- (BOOL)isUserSignedInToiCloud;
- (BOOL)isUserSignedInToiTunes;
- (BUAccountsProvider)init;
- (NSNumber)cachedIsPrimaryAccountManagedAppleID;
- (NSNumber)cachedIsStoreAccountManagedAppleID;
- (NSNumber)lastUsedStoreAccountID;
- (NSString)currentStorefront;
- (NSString)iCloudAccountName;
- (NSString)iCloudIdentity;
- (id)_observersForAccountType:(unint64_t)type;
- (id)l_activeStoreAccount;
- (id)l_primaryAppleAccount;
- (int64_t)_addObserver:(id)observer forAccountType:(unint64_t)type;
- (int64_t)_observerCountForAccountType:(unint64_t)type;
- (int64_t)_removeObserver:(id)observer forAccountType:(unint64_t)type;
- (unint64_t)_singleAccountTypeForNotification:(id)notification;
- (void)_didReceiveNotification:(id)notification;
- (void)_registerNotificationForAccountTypeIfNeeded:(unint64_t)needed;
- (void)_unregisterNotificationForAccountType:(unint64_t)type;
- (void)addObserver:(id)observer accountTypes:(unint64_t)types;
- (void)clearLastUsedStoreAccountID;
- (void)dealloc;
- (void)nq_resetAppleAccountCachedValues;
- (void)nq_resetStoreAccountCachedValues;
- (void)nq_setupNotifyBlockForAccountType:(unint64_t)type currentAccountIdentifier:(id)identifier;
- (void)nq_teardownNotifyBlockForAccountType:(unint64_t)type;
- (void)nq_updateAccountIdentifierAndNotifyObserversForAccountType:(unint64_t)type;
- (void)nq_updateiCloudAccountIdentifierAndNotifyObservers;
- (void)nq_updateiTunesAccountIdentifierAndNotifyObservers;
- (void)observeTCCAccessChangeNotificationIfNeeded;
- (void)removeObserver:(id)observer accountTypes:(unint64_t)types;
- (void)ubiquityIdentityDidChange;
- (void)updateLastUsedStoreAccountID;
@end

@implementation BUAccountsProvider

+ (BUAccountsProvider)sharedProvider
{
  if (qword_280BC5E10 != -1)
  {
    sub_241DA73A0();
  }

  v3 = qword_280BC5E08;

  return v3;
}

- (BUAccountsProvider)init
{
  v14.receiver = self;
  v14.super_class = BUAccountsProvider;
  v2 = [(BUAccountsProvider *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_observersLock._os_unfair_lock_opaque = 0;
    v2->_appleAccountCacheLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("BUAccountsProvider.notifyQueue", v4);
    notifyQueue = v3->_notifyQueue;
    v3->_notifyQueue = v5;

    v7 = objc_opt_new();
    notifyBlocks = v3->_notifyBlocks;
    v3->_notifyBlocks = v7;

    v9 = objc_opt_new();
    observerHashTables = v3->_observerHashTables;
    v3->_observerHashTables = v9;

    v11 = objc_opt_new();
    accountIdentifiers = v3->_accountIdentifiers;
    v3->_accountIdentifiers = v11;

    *&v3->_tccObserverLock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
  }

  return v3;
}

- (ACAccount)activeStoreAccount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241DC40AC;
  v15 = sub_241DC40BC;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = sub_241DA7870;
  v8 = &unk_278D1CE00;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  (v7)(v3);
  os_unfair_lock_unlock(&self->_storeAccountCacheLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (id)l_activeStoreAccount
{
  objc_msgSend__registerNotificationForAccountTypeIfNeeded_(self, a2, 1);
  activeStoreAccount = self->_activeStoreAccount;
  if (!activeStoreAccount)
  {
    v6 = objc_msgSend_bu_sharedAccountStore(MEMORY[0x277CB8F48], v3, v4);
    v9 = objc_msgSend_ams_activeiTunesAccount(v6, v7, v8);
    v10 = self->_activeStoreAccount;
    self->_activeStoreAccount = v9;

    activeStoreAccount = self->_activeStoreAccount;
  }

  return activeStoreAccount;
}

- (BOOL)isPrimaryAccountManagedAppleID
{
  v3 = objc_msgSend_cachedIsPrimaryAccountManagedAppleID(self, a2, v2);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
  v11 = objc_msgSend_BOOLForKey_(v9, v10, @"BCForceMAIDAccount");

  return (v11 | v6) & 1;
}

- (NSNumber)cachedIsPrimaryAccountManagedAppleID
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241DC40AC;
  v15 = sub_241DC40BC;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = sub_241DA8450;
  v8 = &unk_278D1D0D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  (v7)(v3);
  os_unfair_lock_unlock(&self->_appleAccountCacheLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (id)l_primaryAppleAccount
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend__registerNotificationForAccountTypeIfNeeded_(self, a2, 2);
  if (!self->_primaryAppleAccount || (objc_msgSend_hasCloudKitEntitlement(self, v3, v4) & 1) == 0)
  {
    v5 = BookUtilityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_241DA6000, v5, OS_LOG_TYPE_DEFAULT, "[PrimaryAppleAccount] No account available. Calling ams_activeiCloudAccount", &v17, 2u);
    }

    v8 = objc_msgSend_bu_sharedAccountStore(MEMORY[0x277CB8F48], v6, v7);
    v11 = objc_msgSend_ams_activeiCloudAccount(v8, v9, v10);
    primaryAppleAccount = self->_primaryAppleAccount;
    self->_primaryAppleAccount = v11;

    v13 = BookUtilityLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_primaryAppleAccount;
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_241DA6000, v13, OS_LOG_TYPE_DEFAULT, "[PrimaryAppleAccount] primaryAppleAccount: %@", &v17, 0xCu);
    }
  }

  v15 = self->_primaryAppleAccount;

  return v15;
}

- (BOOL)hasCloudKitEntitlement
{
  if (qword_280BC5DC8 != -1)
  {
    sub_241DA866C();
  }

  return byte_280BC5DD0;
}

- (BOOL)isUserSignedInToiCloud
{
  v3 = objc_msgSend_primaryAppleAccount(self, a2, v2);
  v6 = objc_msgSend_accountType(v3, v4, v5);
  v9 = objc_msgSend_identifier(v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277CB8BA0]);

  return isEqualToString;
}

- (ACAccount)primaryAppleAccount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241DC40AC;
  v15 = sub_241DC40BC;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = sub_241DA8BE0;
  v8 = &unk_278D1CE00;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  (v7)(v3);
  os_unfair_lock_unlock(&self->_appleAccountCacheLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (NSString)iCloudIdentity
{
  v3 = objc_msgSend_primaryAppleAccount(self, a2, v2);
  v6 = objc_msgSend_aa_altDSID(v3, v4, v5);

  return v6;
}

- (NSString)currentStorefront
{
  v4 = objc_msgSend_activeStoreAccount(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_ams_storefront(v4, v5, v6);
    if (objc_msgSend_length(v8, v9, v10))
    {
      if (v8)
      {
        v11 = v7;
        goto LABEL_16;
      }
    }

    else
    {
      v12 = BookUtilityLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0E18();
      }
    }
  }

  v11 = objc_msgSend_localStoreAccount(self, v5, v6);

  if (v11)
  {
    v8 = objc_msgSend_ams_storefront(v11, v13, v14);
    if (objc_msgSend_length(v8, v15, v16))
    {
      if (v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v17 = BookUtilityLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_241DD0E54();
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (ACAccount)localStoreAccount
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241DC40AC;
  v15 = sub_241DC40BC;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = sub_241DA9628;
  v8 = &unk_278D1D0D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  (v7)(v3);
  os_unfair_lock_unlock(&self->_storeAccountCacheLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (BOOL)isUserSignedInToiTunes
{
  v3 = objc_msgSend_activeStoreAccount(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isGlobalICloudDriveSyncOptedIn
{
  v3 = objc_msgSend_primaryAppleAccount(self, a2, v2);
  isEnabledForDataclass = objc_msgSend_isEnabledForDataclass_(v3, v4, *MEMORY[0x277CB91D8]);

  return isEnabledForDataclass;
}

- (BOOL)isStoreAccountManagedAppleID
{
  v3 = objc_msgSend_cachedIsStoreAccountManagedAppleID(self, a2, v2);
  v6 = objc_msgSend_BOOLValue(v3, v4, v5);

  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
  v11 = objc_msgSend_BOOLForKey_(v9, v10, @"BCForceMAIDAccount");

  return (v11 | v6) & 1;
}

- (NSNumber)cachedIsStoreAccountManagedAppleID
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241DC40AC;
  v15 = sub_241DC40BC;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = sub_241DA9FB8;
  v8 = &unk_278D1D0D0;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock_with_options();
  (v7)(v3);
  os_unfair_lock_unlock(&self->_storeAccountCacheLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)dealloc
{
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241DC4080;
  v15[3] = &unk_278D1D148;
  v15[4] = self;
  os_unfair_lock_lock_with_options();
  sub_241DC4080(v15);
  os_unfair_lock_unlock(&self->_storeAccountCacheLock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241DC408C;
  v14[3] = &unk_278D1D148;
  v14[4] = self;
  os_unfair_lock_lock_with_options();
  sub_241DC408C(v14);
  os_unfair_lock_unlock(&self->_appleAccountCacheLock);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = sub_241DC4098;
  v7 = &unk_278D1CE00;
  selfCopy = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock_with_options();
  v6(v3);
  os_unfair_lock_unlock(&self->_tccObserverLock);

  if (notify_is_valid_token(*(v11 + 6)))
  {
    notify_cancel(*(v11 + 6));
  }

  _Block_object_dispose(&v10, 8);
  v4.receiver = self;
  v4.super_class = BUAccountsProvider;
  [(BUAccountsProvider *)&v4 dealloc];
}

- (NSString)iCloudAccountName
{
  v3 = objc_msgSend_primaryAppleAccount(self, a2, v2);
  v6 = objc_msgSend_aa_formattedUsername(v3, v4, v5);

  return v6;
}

- (NSNumber)lastUsedStoreAccountID
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"BKPreviousUserId");

  return v5;
}

- (BOOL)hasRecommendationsEnabled
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_activeStoreAccount(self, v4, v5);
  v8 = objc_msgSend_ams_accountFlagValueForAccountFlag_(v6, v7, *MEMORY[0x277CEE148]);
  v9 = BUDynamicCast(v3, v8);
  v12 = objc_msgSend_BOOLValue(v9, v10, v11);

  return v12;
}

- (BOOL)detectedUserSwitchWithId:(id)id outSignedIn:(BOOL *)in outSignedOut:(BOOL *)out outAccountNumberChanged:(BOOL *)changed
{
  idCopy = id;
  v13 = objc_msgSend_activeStoreAccount(self, v11, v12);
  v16 = objc_msgSend_ams_DSID(v13, v14, v15);

  if (idCopy)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  if (out)
  {
    *out = v19;
  }

  if (idCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16 == 0;
  }

  v21 = !v20;
  if (in)
  {
    *in = v21;
  }

  LOBYTE(v22) = 0;
  if (idCopy && v16)
  {
    v22 = objc_msgSend_isEqualToNumber_(idCopy, v17, v16) ^ 1;
  }

  if (changed)
  {
    *changed = v22;
  }

  v23 = (v19 || v21) | v22;

  return v23 & 1;
}

- (void)updateLastUsedStoreAccountID
{
  v3 = objc_msgSend_activeStoreAccount(self, a2, v2);
  v10 = objc_msgSend_ams_DSID(v3, v4, v5);

  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v6, v7);
  v9 = v8;
  if (v10)
  {
    objc_msgSend_setObject_forKey_(v8, v10, v10, @"BKPreviousUserId");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v8, 0, @"BKPreviousUserId");
  }
}

- (void)clearLastUsedStoreAccountID
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  objc_msgSend_removeObjectForKey_(v4, v3, @"BKPreviousUserId");
}

- (void)addObserver:(id)observer accountTypes:(unint64_t)types
{
  typesCopy = types;
  observerCopy = observer;
  objc_initWeak(&location, self);
  v8 = self->_notifyQueue;
  if ((typesCopy & 1) != 0 && objc_msgSend__addObserver_forAccountType_(self, v7, observerCopy, 1) == 1)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v30 = sub_241DC468C;
    v31 = &unk_278D1D148;
    selfCopy = self;
    v9 = v29;
    os_unfair_lock_lock_with_options();
    (v30)(v9);
    os_unfair_lock_unlock(&self->_storeAccountCacheLock);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DC4698;
    block[3] = &unk_278D1DA38;
    objc_copyWeak(&v28, &location);
    dispatch_async(v8, block);
    objc_destroyWeak(&v28);
  }

  if ((typesCopy & 2) != 0)
  {
    v10 = objc_msgSend__addObserver_forAccountType_(self, v7, observerCopy, 2);
    if (objc_msgSend_hasCloudKitEntitlement(self, v11, v12))
    {
      if (v10 == 1)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v24 = sub_241DC471C;
        v25 = &unk_278D1D148;
        selfCopy2 = self;
        v13 = v23;
        os_unfair_lock_lock_with_options();
        (v24)(v13);
        os_unfair_lock_unlock(&self->_appleAccountCacheLock);

        sub_241DB73FC();
        v14 = objc_opt_class();
        v17 = objc_msgSend_defaultContainer(v14, v15, v16);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_241DC4728;
        v20[3] = &unk_278D1DA88;
        v21 = v8;
        objc_copyWeak(&v22, &location);
        objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v17, v18, v20);

        objc_destroyWeak(&v22);
      }
    }

    else
    {
      v19 = BookUtilityLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_241DD0E90();
      }
    }
  }

  objc_destroyWeak(&location);
}

- (void)removeObserver:(id)observer accountTypes:(unint64_t)types
{
  typesCopy = types;
  observerCopy = observer;
  objc_initWeak(&location, self);
  if ((typesCopy & 1) != 0 && !objc_msgSend__removeObserver_forAccountType_(self, v7, observerCopy, 1))
  {
    notifyQueue = self->_notifyQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241DC4A1C;
    v12[3] = &unk_278D1DA38;
    objc_copyWeak(&v13, &location);
    dispatch_async(notifyQueue, v12);
    objc_destroyWeak(&v13);
    if ((typesCopy & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((typesCopy & 2) == 0)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend__removeObserver_forAccountType_(self, v7, observerCopy, 2))
  {
    v8 = self->_notifyQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DC4A60;
    block[3] = &unk_278D1DA38;
    objc_copyWeak(&v11, &location);
    dispatch_async(v8, block);
    objc_destroyWeak(&v11);
  }

LABEL_7:
  objc_destroyWeak(&location);
}

- (void)observeTCCAccessChangeNotificationIfNeeded
{
  if (objc_msgSend_hasCloudKitEntitlement(self, a2, v2))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_241DC4B64;
    v5[3] = &unk_278D1D148;
    v5[4] = self;
    os_unfair_lock_lock(&self->_tccObserverLock);
    sub_241DC4B64(v5);
    os_unfair_lock_unlock(&self->_tccObserverLock);
  }

  else
  {
    v4 = BookUtilityLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_241DD0F40();
    }
  }
}

- (void)ubiquityIdentityDidChange
{
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DC4D7C;
  block[3] = &unk_278D1D148;
  block[4] = self;
  dispatch_sync(notifyQueue, block);
}

- (void)nq_resetStoreAccountCachedValues
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_241DC4E14;
  v3[3] = &unk_278D1D148;
  v3[4] = self;
  os_unfair_lock_lock_with_options();
  (sub_241DC4E14)(v3);
  os_unfair_lock_unlock(&self->_storeAccountCacheLock);
}

- (void)nq_resetAppleAccountCachedValues
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_241DC4EF4;
  v3[3] = &unk_278D1D148;
  v3[4] = self;
  os_unfair_lock_lock_with_options();
  sub_241DC4EF4(v3);
  os_unfair_lock_unlock(&self->_appleAccountCacheLock);
}

- (int64_t)_addObserver:(id)observer forAccountType:(unint64_t)type
{
  observerCopy = observer;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = sub_241DC5090;
  v13 = &unk_278D1DAB0;
  selfCopy = self;
  typeCopy = type;
  v7 = observerCopy;
  v15 = v7;
  v16 = &v18;
  v8 = v11;
  os_unfair_lock_lock_with_options();
  v12(v8);
  os_unfair_lock_unlock(&self->_observersLock);

  v9 = v19[3];
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (int64_t)_removeObserver:(id)observer forAccountType:(unint64_t)type
{
  observerCopy = observer;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = sub_241DC5290;
  v13 = &unk_278D1DAB0;
  selfCopy = self;
  typeCopy = type;
  v7 = observerCopy;
  v15 = v7;
  v16 = &v18;
  v8 = v11;
  os_unfair_lock_lock_with_options();
  v12(v8);
  os_unfair_lock_unlock(&self->_observersLock);

  v9 = v19[3];
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (id)_observersForAccountType:(unint64_t)type
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_241DC40AC;
  v17 = sub_241DC40BC;
  v18 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = sub_241DC5460;
  v9 = &unk_278D1DAD8;
  selfCopy = self;
  v11 = &v13;
  typeCopy = type;
  v4 = v7;
  os_unfair_lock_lock_with_options();
  v8(v4);
  os_unfair_lock_unlock(&self->_observersLock);

  v5 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v5;
}

- (int64_t)_observerCountForAccountType:(unint64_t)type
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = sub_241DC55E0;
  v9 = &unk_278D1DB00;
  v11 = &v13;
  typeCopy = type;
  selfCopy = self;
  v4 = v7;
  os_unfair_lock_lock_with_options();
  v8(v4);
  os_unfair_lock_unlock(&self->_observersLock);

  v5 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v5;
}

- (void)_registerNotificationForAccountTypeIfNeeded:(unint64_t)needed
{
  objc_initWeak(&location, self);
  if (needed == 2)
  {
    if (objc_msgSend_hasCloudKitEntitlement(self, v5, v6))
    {
      v21 = objc_msgSend_appleAccountDidChangeNotificationRegisteredToken(self, v19, v20);

      if (!v21)
      {
        v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v22, v23);
        v13 = sub_241DA8788();
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_241DC58FC;
        v26[3] = &unk_278D1DB28;
        v15 = &v27;
        objc_copyWeak(&v27, &location);
        v17 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v10, v24, v13, 0, 0, v26);
        objc_msgSend_setAppleAccountDidChangeNotificationRegisteredToken_(self, v25, v17);
        goto LABEL_8;
      }
    }
  }

  else if (needed == 1)
  {
    v7 = objc_msgSend_storeAccountDidChangeNotificationRegisteredToken(self, v5, v6);

    if (!v7)
    {
      v10 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v8, v9);
      v13 = objc_msgSend_bu_sharedAccountStore(MEMORY[0x277CB8F48], v11, v12);
      v14 = *MEMORY[0x277CB8B78];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_241DC58A0;
      v28[3] = &unk_278D1DB28;
      v15 = &v29;
      objc_copyWeak(&v29, &location);
      v17 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v10, v16, v14, v13, 0, v28);
      objc_msgSend_setStoreAccountDidChangeNotificationRegisteredToken_(self, v18, v17);
LABEL_8:

      objc_destroyWeak(v15);
    }
  }

  objc_destroyWeak(&location);
}

- (void)_unregisterNotificationForAccountType:(unint64_t)type
{
  if (type == 2)
  {
    v13 = objc_msgSend_appleAccountDidChangeNotificationRegisteredToken(self, a2, 2);

    if (v13)
    {
      v16 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v14, v15);
      v19 = objc_msgSend_appleAccountDidChangeNotificationRegisteredToken(self, v17, v18);
      v20 = sub_241DA8788();
      objc_msgSend_removeObserver_name_object_(v16, v21, v19, v20, 0);

      objc_msgSend_setAppleAccountDidChangeNotificationRegisteredToken_(self, v22, 0);
    }
  }

  else if (type == 1)
  {
    v4 = objc_msgSend_storeAccountDidChangeNotificationRegisteredToken(self, a2, 1);

    if (v4)
    {
      v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v5, v6);
      v10 = objc_msgSend_storeAccountDidChangeNotificationRegisteredToken(self, v8, v9);
      objc_msgSend_removeObserver_name_object_(v7, v11, v10, *MEMORY[0x277CB8B78], 0);

      objc_msgSend_setStoreAccountDidChangeNotificationRegisteredToken_(self, v12, 0);
    }
  }
}

- (void)_didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DC5B74;
  block[3] = &unk_278D1DA60;
  objc_copyWeak(&v9, &location);
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(notifyQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)nq_setupNotifyBlockForAccountType:(unint64_t)type currentAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_notifyQueue);
  if (objc_msgSend__observerCountForAccountType_(self, v7, type) >= 1)
  {
    notifyBlocks = self->_notifyBlocks;
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, type);
    v12 = objc_msgSend_objectForKeyedSubscript_(notifyBlocks, v11, v10);

    if (!v12)
    {
      v13 = self->_notifyQueue;
      objc_initWeak(&location, self);
      v14 = [BUCoalescingCallBlock alloc];
      v32 = MEMORY[0x277D85DD0];
      v33 = 3221225472;
      v34 = sub_241DC5EF0;
      v35 = &unk_278D1DB78;
      v15 = v13;
      v36 = v15;
      objc_copyWeak(v37, &location);
      v37[1] = type;
      v17 = NSStringFromBUAccountsType(type, v16);
      v19 = objc_msgSend_initWithNotifyBlock_blockDescription_(v14, v18, &v32, v17);

      objc_msgSend_setCoalescingDelay_(v19, v20, v21, 1.0, v32, v33, v34, v35);
      objc_msgSend_setMaximumDelay_(v19, v22, v23, 2.0);
      v24 = self->_notifyBlocks;
      v26 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v25, type);
      objc_msgSend_setObject_forKeyedSubscript_(v24, v27, v19, v26);

      accountIdentifiers = self->_accountIdentifiers;
      v30 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v29, type);
      objc_msgSend_setObject_forKeyedSubscript_(accountIdentifiers, v31, identifierCopy, v30);

      objc_destroyWeak(v37);
      objc_destroyWeak(&location);
    }
  }
}

- (void)nq_teardownNotifyBlockForAccountType:(unint64_t)type
{
  dispatch_assert_queue_V2(self->_notifyQueue);
  if (!objc_msgSend__observerCountForAccountType_(self, v5, type))
  {
    notifyBlocks = self->_notifyBlocks;
    v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, type);
    v10 = objc_msgSend_objectForKeyedSubscript_(notifyBlocks, v9, v8);

    if (v10)
    {
      v12 = self->_notifyBlocks;
      v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, type);
      objc_msgSend_removeObjectForKey_(v12, v14, v13);

      accountIdentifiers = self->_accountIdentifiers;
      v18 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v16, type);
      objc_msgSend_removeObjectForKey_(accountIdentifiers, v17, v18);
    }
  }
}

- (void)nq_updateAccountIdentifierAndNotifyObserversForAccountType:(unint64_t)type
{
  if (type == 2)
  {
    objc_msgSend_nq_resetAppleAccountCachedValues(self, a2, 2);

    MEMORY[0x2821F9670](self, sel_nq_updateiCloudAccountIdentifierAndNotifyObservers, v5);
  }

  else if (type == 1)
  {
    objc_msgSend_nq_resetStoreAccountCachedValues(self, a2, 1);

    MEMORY[0x2821F9670](self, sel_nq_updateiTunesAccountIdentifierAndNotifyObservers, v4);
  }
}

- (void)nq_updateiTunesAccountIdentifierAndNotifyObservers
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_notifyQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, 1);
  v9 = objc_msgSend_accountIdentifiers(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v6);

  v14 = objc_msgSend_activeStoreAccount(self, v12, v13);
  v17 = objc_msgSend_ams_DSID(v14, v15, v16);

  if (v11 == v17 || (objc_msgSend_isEqual_(v11, v18, v17) & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    if (v11 && v17)
    {
      v20 = 102;
    }

    else if (v11 || !v17)
    {
      if (v17)
      {
        v21 = 1;
      }

      else
      {
        v21 = v11 == 0;
      }

      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = 101;
      }
    }

    else
    {
      v20 = 100;
    }

    v22 = objc_msgSend_accountIdentifiers(self, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v17, v6);
  }

  v24 = objc_msgSend__observersForAccountType_(self, v18, 1);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v31, v35, 16);
  if (v26)
  {
    v28 = v26;
    v29 = *v32;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v24);
        }

        objc_msgSend_account_didChangeWithReason_(*(*(&v31 + 1) + 8 * i), v27, 1, v20);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v31, v35, 16);
    }

    while (v28);
  }
}

- (void)nq_updateiCloudAccountIdentifierAndNotifyObservers
{
  v4 = objc_msgSend_notifyQueue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v5 = self->_notifyQueue;
  objc_initWeak(&location, self);
  if (objc_msgSend_hasCloudKitEntitlement(self, v6, v7) && objc_msgSend__observerCountForAccountType_(self, v8, 2) >= 1)
  {
    sub_241DB73FC();
    v9 = objc_opt_class();
    v12 = objc_msgSend_defaultContainer(v9, v10, v11);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_241DC650C;
    v14[3] = &unk_278D1DBC8;
    v15 = v5;
    objc_copyWeak(&v17, &location);
    selfCopy = self;
    objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v12, v13, v14);

    objc_destroyWeak(&v17);
  }

  objc_destroyWeak(&location);
}

- (unint64_t)_singleAccountTypeForNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = objc_msgSend_name(notificationCopy, v4, v5);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CB8B78]))
  {
    v10 = objc_msgSend_userInfo(notificationCopy, v8, v9);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x277CB8C90]);

    if (v12 && !objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x277CB8D58]))
    {
      v15 = 0;
    }

    else
    {
      v14 = BookUtilityLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v12;
        _os_log_impl(&dword_241DA6000, v14, OS_LOG_TYPE_INFO, "ACAccountStoreDidChangeNotification account type identifier is '%@', treat it as if there was an iTunes account change", &v20, 0xCu);
      }

      v15 = 1;
    }
  }

  else
  {
    v16 = sub_241DA8788();
    isEqualToString = objc_msgSend_isEqualToString_(v6, v17, v16);

    if (isEqualToString)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

@end