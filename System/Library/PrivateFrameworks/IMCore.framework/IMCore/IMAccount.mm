@interface IMAccount
+ (id)_groupSummaryFromGroupList:(id)list;
+ (id)allBuddyListIMHandles;
+ (id)arrayOfAllIMHandles;
+ (id)nameOfLoginStatus:(unint64_t)status;
+ (id)passwordForAccount:(id)account forServiceName:(id)name;
+ (id)temporaryPasswordForAccount:(id)account forAuthID:(id)d forServiceName:(id)name;
+ (void)removePasswordForAccount:(id)account forServiceName:(id)name;
+ (void)removeTemporaryPasswordForAccount:(id)account forServiceName:(id)name;
+ (void)setPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name;
+ (void)setTemporaryPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)BOOLForPreferenceKey:(id)key;
- (BOOL)_aliasIsVisible:(id)visible;
- (BOOL)_hasSuppressionForCapability:(id)capability;
- (BOOL)_isUsableForSending;
- (BOOL)_updateDisplayName:(id)name;
- (BOOL)addAlias:(id)alias;
- (BOOL)addAlias:(id)alias type:(int64_t)type;
- (BOOL)addAliases:(id)aliases;
- (BOOL)addIMHandle:(id)handle toGroups:(id)groups atLocation:(int64_t)location;
- (BOOL)addPeople:(id)people toGroups:(id)groups atLocation:(int64_t)location;
- (BOOL)allowsVCRelay;
- (BOOL)authenticateAccount;
- (BOOL)canActivate;
- (BOOL)canSendMessages;
- (BOOL)emailAddressIsID:(id)d;
- (BOOL)equalID:(id)d andID:(id)iD;
- (BOOL)handlesChatInvites;
- (BOOL)hasAlias:(id)alias;
- (BOOL)hasCustomDescription;
- (BOOL)hasTargetGroupStateBeenMet;
- (BOOL)isApprovedForRelay;
- (BOOL)isConnecting;
- (BOOL)isMakoAccount;
- (BOOL)isOperational;
- (BOOL)registerAccount;
- (BOOL)removeAlias:(id)alias;
- (BOOL)removeAliases:(id)aliases;
- (BOOL)removeIMHandle:(id)handle fromGroups:(id)groups;
- (BOOL)removePeople:(id)people fromGroups:(id)groups;
- (BOOL)removeProfileValueForKey:(id)key;
- (BOOL)setProfileString:(id)string forKey:(id)key;
- (BOOL)setProfileValue:(id)value forKey:(id)key;
- (BOOL)supportsAuthorization;
- (BOOL)supportsCapability:(id)capability forAlias:(id)alias simID:(id)d;
- (BOOL)supportsRegistration;
- (BOOL)unregisterAccount;
- (BOOL)unvalidateAlias:(id)alias;
- (BOOL)unvalidateAliases:(id)aliases;
- (BOOL)updateAuthorizationCredentials:(id)credentials token:(id)token;
- (BOOL)validLogin;
- (BOOL)validPort;
- (BOOL)validServer;
- (BOOL)validateAlias:(id)alias;
- (BOOL)validateAliases:(id)aliases;
- (BOOL)validateProfile;
- (IMAccount)initWithUniqueID:(id)d service:(id)service;
- (IMServiceImpl)service;
- (NSArray)aliases;
- (NSArray)aliasesToRegister;
- (NSArray)allowList;
- (NSArray)arrayOfAllIMHandles;
- (NSArray)blockList;
- (NSArray)emailDomains;
- (NSArray)groupList;
- (NSArray)vettedAliases;
- (NSDictionary)accountPreferences;
- (NSDictionary)dictionary;
- (NSDictionary)profileInfo;
- (NSString)accountDescription;
- (NSString)authorizationID;
- (NSString)authorizationToken;
- (NSString)countryCode;
- (NSString)displayName;
- (NSString)internalName;
- (NSString)loginStatusMessage;
- (NSString)name;
- (NSString)password;
- (NSString)server;
- (NSString)serviceName;
- (NSString)shortName;
- (NSString)temporaryPassword;
- (NSString)uniqueID;
- (_FZChatRoomValidity)validityOfChatRoomName:(id)name;
- (id)_aliasInfoForAlias:(id)alias;
- (id)_imHandleWithID:(id)d alreadyCanonical:(BOOL)canonical originalID:(id)iD countryCode:(id)code;
- (id)_persistentPropertyForKey:(id)key;
- (id)_serverWithSSL:(BOOL)l;
- (id)_statuses;
- (id)aliasesForType:(int64_t)type;
- (id)canonicalFormOfID:(id)d countryCode:(id)code;
- (id)chatIDForRoomName:(id)name;
- (id)defaultChatSuffix;
- (id)description;
- (id)existingIMHandleWithID:(id)d alreadyCanonical:(BOOL)canonical;
- (id)existingIMHandleWithID:(id)d countryCode:(id)code;
- (id)existingIMHandleWithInfo:(id)info;
- (id)groupMembers:(id)members;
- (id)handlesForCNContact:(id)contact;
- (id)imHandleWithID:(id)d countryCode:(id)code;
- (id)imHandleWithInfo:(id)info;
- (id)objectForKey:(id)key;
- (id)objectForPreferenceKey:(id)key;
- (id)profileStringForKey:(id)key;
- (id)profileValueForKey:(id)key;
- (id)propertiesForGroup:(id)group;
- (id)stringForKey:(id)key;
- (id)stringForPreferenceKey:(id)key;
- (int)integerForPreferenceKey:(id)key;
- (int64_t)accountType;
- (int64_t)compareAccountNames:(id)names;
- (int64_t)compareIDs:(id)ds;
- (int64_t)compareLoginStatus:(id)status;
- (int64_t)compareNames:(id)names;
- (int64_t)compareServices:(id)services;
- (int64_t)compareStatus:(id)status;
- (int64_t)integerForKey:(id)key;
- (int64_t)invalidSettings;
- (int64_t)port;
- (int64_t)profileValidationErrorReason;
- (int64_t)profileValidationStatus;
- (int64_t)registrationFailureReason;
- (int64_t)registrationStatus;
- (int64_t)typeForAlias:(id)alias;
- (int64_t)validationErrorReasonForAlias:(id)alias;
- (int64_t)validationStatusForAlias:(id)alias;
- (unint64_t)defaultHandleCapabilities;
- (unint64_t)sortOrderForIMHandle:(id)handle inGroup:(id)group;
- (void)_applyChangesToTemporaryCache:(id)cache;
- (void)_clearImageCache;
- (void)_ensureGroupsExists:(id)exists;
- (void)_invalidateCachedAliases;
- (void)_loadFromDictionary:(id)dictionary force:(BOOL)force;
- (void)_notJustLoggedIn;
- (void)_refreshLoginIMHandle;
- (void)_registrationStatusChanged:(id)changed;
- (void)_resumeBuddyUpdatesNow;
- (void)_setInteger:(int64_t)integer forKey:(id)key;
- (void)_setLocalCachedObject:(id)object forKey:(id)key;
- (void)_setObject:(id)object forKey:(id)key;
- (void)_setPersistentPropertyObject:(id)object forKey:(id)key;
- (void)_updateLogin:(id)login;
- (void)_updateMyStatus:(unint64_t)status message:(id)message;
- (void)_updateProfileInfo:(id)info;
- (void)_watchBuddiesIfNecessary;
- (void)accountDidBecomeActive;
- (void)accountDidDeactivate;
- (void)accountWillBeRemoved;
- (void)addBuddyToBuddyList:(id)list;
- (void)beginChanges;
- (void)blockMessages:(BOOL)messages fromID:(id)d;
- (void)buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash;
- (void)buddyPropertiesChanged:(id)changed;
- (void)changeBuddyList:(id)list add:(BOOL)add groups:(id)groups atLocation:(int64_t)location;
- (void)clearServiceCaches;
- (void)clearTargetState;
- (void)dealloc;
- (void)deregisterAsIDSIDQueryControllerDelegate;
- (void)disconnectAllIMHandles;
- (void)endChanges;
- (void)enrollDeviceInSMSRelay:(id)relay;
- (void)enrollSelfDeviceInSMSRelay;
- (void)forgetAllWatches;
- (void)groupsChanged:(id)changed error:(id)error;
- (void)handleSubscriptionRequestFrom:(id)from withMessage:(id)message;
- (void)holdBuddyUpdates;
- (void)hookupToDaemon;
- (void)idsKTVerifierResultsUpdatedForDestinations:(id)destinations service:(id)service;
- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed;
- (void)loginIfActiveRegistered;
- (void)logoutAccount;
- (void)nowLoggedOut;
- (void)registerAsIDSIDQueryControllerDelegate;
- (void)registerIMHandle:(id)handle;
- (void)removePassword;
- (void)removeTemporaryPassword;
- (void)renameGroup:(id)group to:(id)to;
- (void)reorderGroup:(id)group order:(id)order;
- (void)reorderGroups:(id)groups;
- (void)requestBuddyListAuthorizationFromIMHandle:(id)handle;
- (void)requestProperty:(id)property ofIMHandle:(id)handle;
- (void)resetToDefaults;
- (void)setAccountDescription:(id)description;
- (void)setAllowList:(id)list;
- (void)setBlockList:(id)list;
- (void)setBuddyProperties:(id)properties buddyPictures:(id)pictures;
- (void)setCachedAllowList:(id)list;
- (void)setCachedBlockList:(id)list;
- (void)setCurrentAccountStatus:(id)status;
- (void)setDisplayName:(id)name;
- (void)setIMAccountLoginStatus:(unint64_t)status errorMessage:(id)message reason:(int)reason;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setLogin:(id)login;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forPreferenceKey:(id)key;
- (void)setPassword:(id)password;
- (void)setTargetGroupsState:(id)state;
- (void)setTemporaryPassword:(id)password;
- (void)setUniqueID:(id)d;
- (void)setValue:(id)value ofExtraProperty:(id)property ofIMHandle:(id)handle;
- (void)setWaitForTargetState;
- (void)startWatchingIMHandle:(id)handle;
- (void)stopWatchingIMHandle:(id)handle;
- (void)targetGroupStateTimeout;
- (void)unEnrollDeviceInSMSRelay:(id)relay;
- (void)unregisterIMHandleWithID:(id)d;
- (void)updateCapabilities:(unint64_t)capabilities;
- (void)watchBuddiesIfNecessary;
- (void)writeSettings;
@end

@implementation IMAccount

- (IMServiceImpl)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (NSString)uniqueID
{
  uniqueID = self->_uniqueID;
  if (!uniqueID)
  {
    v5 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], a2, v2);
    v6 = self->_uniqueID;
    self->_uniqueID = v5;

    uniqueID = self->_uniqueID;
  }

  return uniqueID;
}

- (int64_t)registrationFailureReason
{
  if (objc_msgSend_supportsRegistration(self, a2, v2))
  {
    return self->_registrationFailureReason;
  }

  else
  {
    return -1;
  }
}

- (BOOL)supportsRegistration
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_supportsRegistration(WeakRetained, v3, v4);

  return v5;
}

- (NSString)authorizationID
{
  if (objc_msgSend_supportsAuthorization(self, a2, v2))
  {
    v5 = objc_msgSend_objectForKey_(self, v4, *MEMORY[0x1E69A63F0]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)supportsAuthorization
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_supportsAuthorization(WeakRetained, v3, v4);

  return v5;
}

- (NSArray)vettedAliases
{
  v27 = *MEMORY[0x1E69E9840];
  vettedAliases = self->_vettedAliases;
  if (vettedAliases)
  {
    v3 = vettedAliases;
  }

  else
  {
    v5 = objc_msgSend_objectForKey_(self, a2, *MEMORY[0x1E69A6528]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v5;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          if (objc_msgSend__aliasIsVisible_(self, v10, v14, v22))
          {
            objc_msgSend_addObject_(v6, v10, v14);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v22, v26, 16);
      }

      while (v11);
    }

    v15 = _IDSCopyOrderedAliasStrings();
    v18 = objc_msgSend_array(v15, v16, v17);
    v19 = self->_vettedAliases;
    self->_vettedAliases = v18;

    v3 = self->_vettedAliases;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_invalidateCachedAliases
{
  aliases = self->_aliases;
  self->_aliases = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)_refreshLoginIMHandle
{
  v4 = objc_msgSend_login(self, a2, v2);
  loginIMHandle = self->_loginIMHandle;
  v42 = v4;
  if (v4)
  {
    if (loginIMHandle)
    {
      v7 = objc_msgSend_ID(loginIMHandle, v4, v5);
      isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v7, v8, v42);

      if (isEqualToIgnoringCase)
      {
        goto LABEL_14;
      }

      loginIMHandle = self->_loginIMHandle;
    }
  }

  else if (!loginIMHandle)
  {
    goto LABEL_14;
  }

  v10 = loginIMHandle;
  v11 = self->_loginIMHandle;
  self->_loginIMHandle = 0;

  if (v10)
  {
    v14 = objc_msgSend_me(IMMe, v12, v13);
    objc_msgSend_removeLoginIMHandle_(v14, v15, v10);

    objc_msgSend_resetCNContact(v10, v16, v17);
  }

  if (v42)
  {
    v18 = objc_msgSend_imHandleWithID_(self, v12, v42);
    v19 = self->_loginIMHandle;
    self->_loginIMHandle = v18;

    v22 = objc_msgSend_me(IMMe, v20, v21);
    v24 = objc_msgSend_addLoginIMHandle_(v22, v23, self->_loginIMHandle);

    if (v24)
    {
      v27 = objc_msgSend_me(IMMe, v25, v26);
      v30 = objc_msgSend_cnContact(v27, v28, v29);

      v34 = objc_msgSend_cnContactWithKeys_(self->_loginIMHandle, v31, MEMORY[0x1E695E0F0]);
      if (v30 != v34)
      {
        v35 = objc_msgSend_sharedInstance(IMHandleRegistrar, v32, v33);
        v36 = self->_loginIMHandle;
        v39 = objc_msgSend_identifier(v34, v37, v38);
        objc_msgSend_removeHandleFromCNIDMap_withCNID_(v35, v40, v36, v39);

        objc_msgSend_updateCNContact_(self->_loginIMHandle, v41, v30);
      }
    }
  }

LABEL_14:
}

- (int64_t)profileValidationStatus
{
  if (objc_msgSend_accountType(self, a2, v2) == 2)
  {
    return 3;
  }

  else
  {
    return self->_profileStatus;
  }
}

- (int64_t)profileValidationErrorReason
{
  v2 = objc_msgSend_profileValueForKey_(self, a2, *MEMORY[0x1E69A6470]);
  v5 = objc_msgSend_intValue(v2, v3, v4);

  return v5;
}

- (void)registerAsIDSIDQueryControllerDelegate
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_service(self, a2, v2);
  v5 = sub_1A824D260(v4);

  if (v5)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_msgSend_uniqueID(self, v6, v7);
    v11 = objc_msgSend_stringWithFormat_(v8, v10, @"IMAccount+KeyTransparency-%@", v9);
    objc_msgSend_setKeyTransparencyIDQueryListenerID_(self, v12, v11);

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = objc_msgSend_keyTransparencyIDQueryListenerID(self, v16, v17);
        *buf = 138412546;
        v26 = v18;
        v27 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Adding IDSIDQueryControllerDelegate with listenerID %@ for %@", buf, 0x16u);
      }
    }

    v19 = objc_msgSend_sharedInstance(MEMORY[0x1E69A4878], v13, v14);
    v22 = objc_msgSend_keyTransparencyIDQueryListenerID(self, v20, v21);
    objc_msgSend_addDelegate_forService_listenerID_queue_(v19, v23, self, v5, v22, MEMORY[0x1E69E96A0]);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (NSArray)aliases
{
  v41 = *MEMORY[0x1E69E9840];
  aliases = self->_aliases;
  if (aliases)
  {
    v4 = aliases;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = objc_msgSend__aliases(self, a2, v2);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v36, v40, 16);
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = *v37;
      v11 = *MEMORY[0x1E69A5568];
      v12 = *MEMORY[0x1E69A63C0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v15 = objc_msgSend_objectForKey_(v14, v7, v11);
          v17 = objc_msgSend_objectForKey_(v14, v16, v12);
          v20 = objc_msgSend_lowercaseString(v17, v18, v19);
          v23 = objc_msgSend_trimmedString(v20, v21, v22);

          if (v23 && (!v15 || objc_msgSend_BOOLValue(v15, v24, v25)) && objc_msgSend__aliasIsVisible_(self, v24, v23))
          {
            objc_msgSend_addObject_(v9, v26, v23);
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v36, v40, 16);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v27 = _IDSCopyOrderedAliasStrings();
    v30 = objc_msgSend_array(v27, v28, v29);
    v31 = self->_aliases;
    self->_aliases = v30;

    v4 = self->_aliases;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)accountType
{
  result = self->_accountType;
  if (result < 0)
  {
    v5 = objc_msgSend_login(self, a2, v2);
    v7 = objc_msgSend_rangeOfString_(v5, v6, @"P:");

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_msgSend_service(self, v8, v9);
      v13 = objc_msgSend_supportsAuthorization(v10, v11, v12);

      result = v13;
    }

    else
    {
      result = 2;
    }

    self->_accountType = result;
  }

  return result;
}

- (void)clearServiceCaches
{
  IMLogBacktrace();
  objc_msgSend_lock(self->_lock, v3, v4);
  v5 = objc_alloc(MEMORY[0x1E696AD18]);
  v7 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v5, v6, 0x10000, 5, 0);
  imHandles = self->_imHandles;
  self->_imHandles = v7;

  objc_msgSend_unlock(self->_lock, v9, v10);
  loginStatus = self->_loginStatus;
  if (loginStatus)
  {
    self->_loginStatus = 0;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    objc_msgSend_statusChangedForAccount_from_to_(WeakRetained, v13, self, loginStatus, self->_loginStatus);
  }

  sortOrders = self->_sortOrders;
  self->_sortOrders = 0;
}

- (void)accountDidBecomeActive
{
  objc_msgSend_loginIfActiveRegistered(self, a2, v2);

  MEMORY[0x1EEE66B58](self, sel_hookupToDaemon, v4);
}

- (void)loginIfActiveRegistered
{
  if (!objc_msgSend_loginStatus(self, a2, v2) && objc_msgSend_registrationStatus(self, v4, v5) == 5 && objc_msgSend_isActive(self, v6, v7))
  {

    MEMORY[0x1EEE66B58](self, sel_setIMAccountLoginStatus_errorMessage_, 4);
  }
}

- (int64_t)registrationStatus
{
  if (!objc_msgSend_supportsRegistration(self, a2, v2))
  {
    return 0;
  }

  isActive = objc_msgSend_isActive(self, v4, v5);
  if (self->_registrationStatus < 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = isActive;
  }

  if (v7)
  {
    return self->_registrationStatus;
  }

  else
  {
    return 1;
  }
}

- (void)hookupToDaemon
{
  objc_msgSend__refreshLoginIMHandle(self, a2, v2);
  self->_syncedWithRemoteBuddyList = 0;
  objc_msgSend_requestGroups(self, v4, v5);

  objc_msgSend_syncWithRemoteBuddies(self, v6, v7);
}

- (BOOL)isOperational
{
  v4 = MEMORY[0x1E69A7E70];
  v5 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v8 = objc_msgSend_accounts(v5, v6, v7);
  LOBYTE(self) = objc_msgSend_isAccountOperationalWithAllAccounts_account_(v4, v9, v8, self);

  return self;
}

- (unint64_t)defaultHandleCapabilities
{
  if (!self->_hasCheckedDefaultHandleCapabilities)
  {
    self->_hasCheckedDefaultHandleCapabilities = 1;
    v4 = objc_msgSend_service(self, a2, v2);
    v7 = objc_msgSend_serviceProperties(v4, v5, v6);
    v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A5E58]);

    v12 = objc_msgSend_service(self, v10, v11);
    v15 = objc_msgSend_serviceProperties(v12, v13, v14);
    v17 = objc_msgSend_objectForKey_(v15, v16, *MEMORY[0x1E69A5E50]);

    if (objc_msgSend_intValue(v9, v18, v19) || objc_msgSend_intValue(v17, v20, v21))
    {
      v22 = objc_msgSend_unsignedLongLongValue(v9, v20, v21);
      v25 = objc_msgSend_unsignedLongLongValue(v17, v23, v24) | v22;
    }

    else
    {
      v25 = 0;
    }

    self->_defaultHandleCapabilities = v25;
  }

  return self->_defaultHandleCapabilities;
}

- (NSString)serviceName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_name(WeakRetained, v3, v4);

  return v5;
}

- (NSString)countryCode
{
  countryCode = self->_countryCode;
  if (countryCode)
  {
    goto LABEL_21;
  }

  v5 = objc_msgSend_accountType(self, a2, v2);
  if (v5 == 1)
  {
    if (IMSharedHelperDeviceIsAltAccount())
    {
      v14 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v12, v13);
      v17 = objc_msgSend_ctPhoneNumber(v14, v15, v16);
    }

    else
    {
      if (qword_1ED767678 != -1)
      {
        sub_1A8255A2C();
      }

      v14 = objc_msgSend_sharedInstance(qword_1ED767680, v12, v13);
      if (!objc_msgSend_isTelephonyDevice(v14, v18, v19))
      {
        v8 = 0;
        goto LABEL_14;
      }

      v17 = objc_msgSend_telephoneNumber(v14, v20, v21);
    }

    v8 = v17;
LABEL_14:

    if (!objc_msgSend_length(v8, v22, v23))
    {
      v26 = objc_msgSend_profileValueForKey_(self, v24, @"Number");

      v8 = v26;
    }

    v11 = objc_msgSend_length(v8, v24, v25);
    goto LABEL_17;
  }

  if (v5 == 2)
  {
    v8 = objc_msgSend_displayName(self, v6, v7);
    v11 = objc_msgSend_length(v8, v9, v10);
  }

  else
  {
    v8 = 0;
    v11 = objc_msgSend_length(0, v6, v7);
  }

LABEL_17:
  if (v11 && (IMCountryCodeForNumber(), v27 = objc_claimAutoreleasedReturnValue(), v28 = self->_countryCode, self->_countryCode = v27, v28, !objc_msgSend_length(self->_countryCode, v29, v30)))
  {
    v32 = objc_msgSend_profileValueForKey_(self, v31, @"Number");

    if (objc_msgSend_length(v32, v44, v45))
    {
      v46 = IMCountryCodeForNumber();
      v47 = self->_countryCode;
      self->_countryCode = v46;
    }
  }

  else
  {
    v32 = v8;
  }

  countryCode = self->_countryCode;
LABEL_21:
  if (!objc_msgSend_length(countryCode, a2, v2))
  {
    v35 = self->_countryCode;
    self->_countryCode = 0;
  }

  if (self->_countryCode || (IMCountryCodeForIncomingTextMessage(), v36 = objc_claimAutoreleasedReturnValue(), v37 = self->_countryCode, self->_countryCode = v36, v37, self->_countryCode))
  {
    v38 = objc_msgSend_service(self, v33, v34);
    objc_msgSend_setCountryCode_(v38, v39, self->_countryCode);

    v40 = self->_countryCode;
  }

  else
  {
    v42 = objc_msgSend_autoupdatingCurrentLocale(MEMORY[0x1E695DF58], v33, v34);
    v40 = objc_msgSend_objectForKey_(v42, v43, *MEMORY[0x1E695D978]);
  }

  return v40;
}

- (BOOL)_isUsableForSending
{
  v4 = MEMORY[0x1E69A7E70];
  v5 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v8 = objc_msgSend_accounts(v5, v6, v7);
  LOBYTE(self) = objc_msgSend_isAccountUsableForSendingWithAllAccounts_account_(v4, v9, v8, self);

  return self;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_uniqueID(self, a2, v2);
  v8 = objc_msgSend_service(self, v6, v7);
  v11 = objc_msgSend_login(self, v9, v10);
  if (objc_msgSend_isActive(self, v12, v13))
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = objc_msgSend_loginStatusMessage(self, v14, v15);
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"IMAccount: %p [ID: %@ Service: %@ Login: %@ Active: %@ LoginStatus: %@]", self, v5, v8, v11, v16, v17);

  return v19;
}

- (NSString)loginStatusMessage
{
  v3 = objc_opt_class();
  loginStatus = self->_loginStatus;

  return objc_msgSend_nameOfLoginStatus_(v3, v4, loginStatus);
}

- (void)dealloc
{
  v4 = objc_msgSend_sharedInstance(IMHandleRegistrar, a2, v2);
  objc_msgSend__dumpOutAllIMHandlesForAccount_(v4, v5, self);

  objc_msgSend_deregisterAsIDSIDQueryControllerDelegate(self, v6, v7);
  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A6160], v8, v9);
  objc_msgSend_removeListener_(v10, v11, self);

  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
  objc_msgSend_removeObserver_name_object_(v14, v15, self, 0, 0);

  objc_msgSend_lock(self->_lock, v16, v17);
  imHandles = self->_imHandles;
  self->_imHandles = 0;

  data = self->_data;
  self->_data = 0;

  objc_msgSend_unlock(self->_lock, v20, v21);
  v22.receiver = self;
  v22.super_class = IMAccount;
  [(IMAccount *)&v22 dealloc];
}

- (IMAccount)initWithUniqueID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v61.receiver = self;
  v61.super_class = IMAccount;
  v9 = [(IMAccount *)&v61 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v9->_lock;
    v9->_lock = v10;

    v12 = objc_alloc_init(IMPeople);
    buddyList = v9->_buddyList;
    v9->_buddyList = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accountPreferences = v9->_accountPreferences;
    v9->_accountPreferences = v14;

    objc_storeStrong(&v9->_uniqueID, d);
    objc_storeWeak(&v9->_service, serviceCopy);
    v18 = objc_msgSend_serviceProperties(serviceCopy, v16, v17);
    v20 = objc_msgSend_objectForKey_(v18, v19, *MEMORY[0x1E69A5EB8]);
    v9->_useMeCardName = objc_msgSend_intValue(v20, v21, v22) != 0;

    v23 = objc_alloc_init(MEMORY[0x1E696AAB0]);
    myProfile = v9->_myProfile;
    v9->_myProfile = v23;

    objc_msgSend_clearServiceCaches(v9, v25, v26);
    objc_msgSend_syncWithRemoteBuddies(v9, v27, v28);
    v31 = objc_msgSend_sharedInstance(MEMORY[0x1E69A6160], v29, v30);
    objc_msgSend_addListener_(v31, v32, v9);

    v35 = objc_msgSend_service(v9, v33, v34);

    if (v35)
    {
      v38 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v36, v37);
      v41 = objc_msgSend_service(v9, v39, v40);
      objc_msgSend_addObserver_selector_name_object_(v38, v42, v9, sel__serviceDidConnect_, @"__k_IMServiceDidConnectNotification", v41);

      v45 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v43, v44);
      v48 = objc_msgSend_service(v9, v46, v47);
      objc_msgSend_addObserver_selector_name_object_(v45, v49, v9, sel__serviceDidReconnect_, @"ServiceDidReconnect", v48);

      v52 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v50, v51);
      v55 = objc_msgSend_service(v9, v53, v54);
      objc_msgSend_addObserver_selector_name_object_(v52, v56, v9, sel__serviceDidDisconnect_, @"ServiceDidDisconnect", v55);
    }

    objc_msgSend_registerAsIDSIDQueryControllerDelegate(v9, v36, v37);
    if (qword_1ED767980 != -1)
    {
      sub_1A84DF2FC();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A828966C;
    block[3] = &unk_1E780FCB0;
    v60 = v9;
    v57 = dispatch_block_create_with_qos_class(0, QOS_CLASS_UTILITY, 0, block);
    dispatch_async(qword_1ED767988, v57);
  }

  return v9;
}

- (void)logoutAccount
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v7 = *MEMORY[0x1E69A6278] & objc_msgSend_capabilities(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
    v13 = objc_msgSend_remoteDaemon(v10, v11, v12);
    v16 = objc_msgSend_uniqueID(self, v14, v15);
    objc_msgSend_logoutAccount_(v13, v17, v16);

    v20 = objc_msgSend_service(self, v18, v19);
    LOBYTE(v13) = objc_msgSend_supportsOfflineTransfers(v20, v21, v22);

    if ((v13 & 1) == 0)
    {
      v25 = objc_msgSend_sharedInstance(IMFileTransferCenter, v23, v24);
      v27 = objc_msgSend_transfersForAccount_(v25, v26, self);

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v28 = v27;
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v44, v48, 16);
      if (v30)
      {
        v33 = v30;
        v34 = *v45;
        do
        {
          v35 = 0;
          do
          {
            if (*v45 != v34)
            {
              objc_enumerationMutation(v28);
            }

            v36 = *(*(&v44 + 1) + 8 * v35);
            v37 = objc_msgSend_sharedInstance(IMFileTransferCenter, v31, v32, v44);
            v40 = objc_msgSend_guid(v36, v38, v39);
            objc_msgSend_stopTransfer_(v37, v41, v40);

            ++v35;
          }

          while (v33 != v35);
          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v44, v48, 16);
        }

        while (v33);
      }
    }

    if (objc_msgSend_loginStatus(self, v23, v24, v44) >= 3)
    {
      objc_msgSend_setIMAccountLoginStatus_(self, v42, 0);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)_updateLogin:(id)login
{
  loginCopy = login;
  v11 = loginCopy;
  if (self->_loginID != loginCopy)
  {
    self->_accountType = -1;
    objc_storeStrong(&self->_loginID, login);
    v9 = objc_msgSend__stripFZIDPrefix(self->_loginID, v7, v8);
    strippedLogin = self->_strippedLogin;
    self->_strippedLogin = v9;
  }

  objc_msgSend__refreshLoginIMHandle(self, loginCopy, v6);
}

- (void)setLogin:(id)login
{
  loginCopy = login;
  if (objc_msgSend_accountType(self, v4, v5) != 2)
  {
    v8 = objc_msgSend_service(self, v6, v7);
    v11 = objc_msgSend_supportsAuthorization(v8, v9, v10);

    if (v11)
    {
      v12 = MEMORY[0x1AC56C3F0](loginCopy);

      loginCopy = IMGenerateLoginID();
    }

    objc_msgSend__setString_forKey_(self, loginCopy, loginCopy, *MEMORY[0x1E69A6448]);
    objc_msgSend__updateLogin_(self, v13, loginCopy);
  }
}

- (void)_updateMyStatus:(unint64_t)status message:(id)message
{
  v23 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v10 = messageCopy;
  if (!messageCopy || objc_msgSend_isEqualToString_(messageCopy, v8, self->_myStatusMessage))
  {
    p_myStatus = &self->_myStatus;
    if (self->_myStatus == status)
    {
      goto LABEL_12;
    }

    v12 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&self->_myStatusMessage, message);
  p_myStatus = &self->_myStatus;
  v12 = 1;
  if (self->_myStatus != status)
  {
LABEL_7:
    v13 = v12;
    *p_myStatus = status;
    LOBYTE(v12) = 0;
    goto LABEL_8;
  }

  v13 = 1;
LABEL_8:
  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend___mainThreadPostNotificationName_object_(v14, v15, @"__kIMMeStatusChangedNotification", self);

  if ((v12 & 1) == 0)
  {
    v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);
    objc_msgSend___mainThreadPostNotificationName_object_(v18, v19, @"__kIMAccountStatusChangedNotification", self);
  }

  if (v13)
  {
    v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);
    objc_msgSend___mainThreadPostNotificationName_object_(v20, v21, @"__kIMAccountStatusMessageChangedNotification", self);
  }

LABEL_12:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentAccountStatus:(id)status
{
  v59 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v7 = objc_msgSend_myStatusDictionary(self, v5, v6);

  if (v7 != statusCopy)
  {
    v9 = objc_msgSend_objectForKey_(statusCopy, v8, *MEMORY[0x1E69A6378]);
    v12 = objc_msgSend_intValue(v9, v10, v11);
    v14 = IMPersonStatusFromFZPersonStatus(v12, v13);

    v16 = objc_msgSend_objectForKey_(statusCopy, v15, *MEMORY[0x1E69A6380]);
    if (v16)
    {
      v18 = v16;
      objc_msgSend__updateMyStatus_message_(self, v17, v14, v16);
    }

    else
    {
      v18 = &stru_1F1B76F98;
      objc_msgSend__updateMyStatus_message_(self, v17, v14, &stru_1F1B76F98);
    }

    v21 = objc_msgSend_objectForKey_(statusCopy, v19, *MEMORY[0x1E69A6368]);
    if (v21 != self->_myProfile)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_myProfile, v21);
      }
    }

    v22 = objc_msgSend_objectForKey_(statusCopy, v20, *MEMORY[0x1E69A6358]);
    if ((objc_msgSend_isNull(v22, v23, v24) & 1) != 0 || !objc_msgSend_length(v22, v25, v26))
    {

      v22 = 0;
    }

    myPictureData = self->_myPictureData;
    if (v22 != myPictureData && (objc_msgSend_isEqualToData_(v22, v27, myPictureData) & 1) == 0)
    {
      objc_storeStrong(&self->_myPictureData, v22);
    }

    v30 = objc_msgSend_objectForKey_(statusCopy, v27, *MEMORY[0x1E69A62D8]);
    if (v30 != self->_myIdleSince)
    {
      objc_storeStrong(&self->_myIdleSince, v30);
    }

    v33 = objc_msgSend_objectForKey_(statusCopy, v29, *MEMORY[0x1E69A6340]);
    myNowPlaying = self->_myNowPlaying;
    if (v33 != myNowPlaying && (objc_msgSend_isEqualToDictionary_(myNowPlaying, v31, v33) & 1) == 0)
    {
      objc_storeStrong(&self->_myNowPlaying, v33);
      v37 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v35, v36);
      objc_msgSend___mainThreadPostNotificationName_object_(v37, v38, @"__kIMMeNowPlayingInfoChangedNotification", self);
    }

    v39 = objc_msgSend_myStatusDictionary(self, v31, v32);
    v42 = v39;
    if (statusCopy && v39)
    {
      v43 = objc_msgSend_myStatusDictionary(self, v40, v41);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v43, v44, statusCopy);

      v48 = objc_msgSend_mutableCopy(statusCopy, v46, v47);
      objc_msgSend_setMyStatusDictionary_(self, v49, v48);

      if (isEqualToDictionary)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v54 = objc_msgSend_mutableCopy(statusCopy, v52, v53);
      objc_msgSend_setMyStatusDictionary_(self, v55, v54);
    }

    v56 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v50, v51);
    objc_msgSend___mainThreadPostNotificationName_object_(v56, v57, @"__kIMAccountStatusInfoChangedNotification", self);

LABEL_25:
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)setUniqueID:(id)d
{
  dCopy = d;
  uniqueID = self->_uniqueID;
  p_uniqueID = &self->_uniqueID;
  if (uniqueID != dCopy)
  {
    v8 = dCopy;
    objc_storeStrong(p_uniqueID, d);
    dCopy = v8;
  }
}

- (NSString)shortName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_shortName(WeakRetained, v3, v4);

  return v5;
}

- (NSString)internalName
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_internalName(WeakRetained, v3, v4);

  return v5;
}

- (NSString)name
{
  if (self->_useMeCardName)
  {
    v3 = objc_msgSend_me(IMMe, a2, v2);
    v6 = objc_msgSend_fullName(v3, v4, v5);
  }

  else
  {
    v6 = objc_msgSend_accountDescription(self, a2, v2);
  }

  return v6;
}

- (id)canonicalFormOfID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (!objc_msgSend__appearsToBePhoneNumber(dCopy, v8, v9))
  {
    goto LABEL_9;
  }

  v12 = objc_msgSend_service(self, v10, v11);
  v15 = objc_msgSend__wantsInternationizedNumbers(v12, v13, v14);

  if (!v15)
  {
    goto LABEL_9;
  }

  if (!objc_msgSend_length(codeCopy, v10, v11))
  {
    v18 = objc_msgSend_countryCode(self, v16, v17);

    codeCopy = v18;
  }

  v19 = IMPhoneNumberRefCopyForPhoneNumber();
  v22 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (v19)
  {
    CFRelease(v19);
  }

  if (!objc_msgSend_length(v22, v20, v21))
  {

LABEL_9:
    v22 = objc_msgSend_lowercaseString(dCopy, v10, v11);
  }

  return v22;
}

- (BOOL)equalID:(id)d andID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v10 = objc_msgSend_equalID_andID_(WeakRetained, v9, dCopy, iDCopy);

  return v10;
}

- (void)writeSettings
{
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_sharedInstance(IMAccountController, v4, v5);
  v9 = objc_msgSend_uniqueID(self, v7, v8);
  v11 = objc_msgSend_accountForUniqueID_(v6, v10, v9);

  if (!v11)
  {
    v14 = objc_msgSend_sharedInstance(IMAccountController, v12, v13);
    objc_msgSend_addAccount_(v14, v15, self);
  }

  if (objc_msgSend_count(self->_profileChanges, v12, v13))
  {
    v18 = objc_msgSend_profileInfo(self, v16, v17);
    objc_msgSend__setObject_forKey_(self, v19, v18, *MEMORY[0x1E69A6468]);
  }

  if (objc_msgSend_count(self->_accountPreferencesChanges, v16, v17))
  {
    v22 = objc_msgSend_accountPreferences(self, v20, v21);
    objc_msgSend__setObject_forKey_(self, v23, v22, @"AccountPrefs");
  }

  v24 = objc_msgSend_dictionary(self, v20, v21);
  if (objc_msgSend_count(self->_dataChanges, v25, v26))
  {
    v29 = objc_msgSend_sharedController(IMDaemonController, v27, v28);
    v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
    v35 = objc_msgSend_uniqueID(self, v33, v34);
    objc_msgSend_writeAccount_defaults_(v32, v36, v35, self->_dataChanges);
  }

  profileChanges = self->_profileChanges;
  self->_profileChanges = 0;

  countryCode = self->_countryCode;
  self->_countryCode = 0;

  accountPreferencesChanges = self->_accountPreferencesChanges;
  self->_accountPreferencesChanges = 0;

  localCache = self->_localCache;
  self->_localCache = 0;

  dataChanges = self->_dataChanges;
  self->_dataChanges = 0;

  data = self->_data;
  self->_data = v24;
  v46 = v24;

  objc_msgSend__loadFromDictionary_force_(self, v43, v46, 1);
  objc_msgSend_unlock(self->_lock, v44, v45);
}

- (void)resetToDefaults
{
  objc_msgSend_setAutoLogin_(self, a2, 1);
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v16 = objc_msgSend_defaultAccountSettings(WeakRetained, v4, v5);

  localCache = self->_localCache;
  self->_localCache = 0;

  if (objc_msgSend_count(v16, v7, v8))
  {
    dataChanges = self->_dataChanges;
    if (dataChanges)
    {
      objc_msgSend_addEntriesFromDictionary_(dataChanges, v9, v16);
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = objc_msgSend_initWithDictionary_(v12, v13, v16);
      v15 = self->_dataChanges;
      self->_dataChanges = v14;
    }
  }

  objc_msgSend__invalidateCachedAliases(self, v9, v10);
}

- (BOOL)emailAddressIsID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_emailDomains(self, v5, v6);
  isEmailAddress_inDomains = objc_msgSend_isEmailAddress_inDomains_(IMService, v8, dCopy, v7);

  return isEmailAddress_inDomains;
}

- (int64_t)compareLoginStatus:(id)status
{
  statusCopy = status;
  v7 = objc_msgSend_loginStatus(self, v5, v6);
  v10 = objc_msgSend_loginStatus(statusCopy, v8, v9);
  if (v7 == v10)
  {
    v12 = objc_msgSend_compareAccountNames_(self, v11, statusCopy);
  }

  else if (v7 > v10)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (int64_t)compareAccountNames:(id)names
{
  namesCopy = names;
  v7 = objc_msgSend_accountDescription(self, v5, v6);
  v10 = objc_msgSend_accountDescription(namesCopy, v8, v9);
  v13 = objc_msgSend_localizedCaseInsensitiveCompare_(v7, v11, v10);
  if (!v13)
  {
    v13 = objc_msgSend_compareIDs_(self, v12, namesCopy);
  }

  return v13;
}

- (int64_t)compareStatus:(id)status
{
  statusCopy = status;
  v7 = objc_msgSend_myStatus(self, v5, v6);
  v10 = objc_msgSend_myStatus(statusCopy, v8, v9);
  v12 = IMComparePersonStatus(v7, v10);
  if (!v12)
  {
    v12 = objc_msgSend_compareAccountNames_(self, v11, statusCopy);
  }

  return v12;
}

- (int64_t)compareIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_msgSend_login(self, v5, v6);
  v10 = objc_msgSend_login(dsCopy, v8, v9);
  v12 = objc_msgSend_localizedCaseInsensitiveCompare_(v7, v11, v10);

  v13 = self > dsCopy;
  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

- (int64_t)compareServices:(id)services
{
  servicesCopy = services;
  v7 = objc_msgSend_service(self, v5, v6);
  v10 = objc_msgSend_shortName(v7, v8, v9);
  v13 = objc_msgSend_service(servicesCopy, v11, v12);

  v16 = objc_msgSend_shortName(v13, v14, v15);
  v18 = objc_msgSend_localizedCaseInsensitiveCompare_(v10, v17, v16);

  return v18;
}

- (void)updateCapabilities:(unint64_t)capabilities
{
  v17 = *MEMORY[0x1E69E9840];
  capabilities = self->_capabilities;
  if (capabilities != capabilities)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, capabilities);
    v9 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v8, capabilities);
    v11 = objc_msgSend_dictionaryWithObjectsAndKeys_(v6, v10, v7, @"__kkOldValueKey", v9, @"__kkNewValueKey", 0);

    self->_capabilities = capabilities;
    v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v14, v15, @"__kIMAccountCapabilitiesChangedNotification", self, v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsCapability:(id)capability forAlias:(id)alias simID:(id)d
{
  capabilityCopy = capability;
  aliasCopy = alias;
  dCopy = d;
  v13 = objc_msgSend_service(self, v11, v12);
  v15 = objc_msgSend_supportsCapability_(v13, v14, capabilityCopy);

  if (v15)
  {
    if (objc_msgSend__hasSuppressionForCapability_(self, v16, capabilityCopy))
    {
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_msgSend_objectForKey_(self, v17, *MEMORY[0x1E69A7A78]);
      v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, capabilityCopy);
      v23 = objc_msgSend_setWithArray_(v18, v22, v21);

      v24 = MEMORY[0x1E695DFD8];
      v26 = objc_msgSend_objectForKey_(self, v25, *MEMORY[0x1E69A7A80]);
      v28 = objc_msgSend_objectForKeyedSubscript_(v26, v27, capabilityCopy);
      v30 = objc_msgSend_setWithArray_(v24, v29, v28);

      v31 = MEMORY[0x1E695DFD8];
      v34 = objc_msgSend_aliases(self, v32, v33);
      v36 = objc_msgSend_setWithArray_(v31, v35, v34);

      v39 = (objc_msgSend_isSubsetOfSet_(v36, v37, v23) & 1) == 0 && (!aliasCopy || (objc_msgSend_containsObject_(v23, v38, aliasCopy) & 1) == 0) && (!dCopy || (objc_msgSend_containsObject_(v30, v38, dCopy) & 1) == 0);
    }

    else
    {
      v39 = 1;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (BOOL)_hasSuppressionForCapability:(id)capability
{
  v4 = *MEMORY[0x1E69A7A78];
  capabilityCopy = capability;
  v7 = objc_msgSend_objectForKey_(self, v6, v4);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, capabilityCopy);

  v11 = objc_msgSend_objectForKey_(self, v10, *MEMORY[0x1E69A7A80]);
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, capabilityCopy);

  if (objc_msgSend_count(v9, v14, v15))
  {
    v18 = 1;
  }

  else
  {
    v18 = objc_msgSend_count(v13, v16, v17) != 0;
  }

  return v18;
}

- (BOOL)handlesChatInvites
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_handlesChatInvites(WeakRetained, v3, v4);

  return v5;
}

- (NSString)password
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_login(self, v4, v5);
  v8 = objc_msgSend_canonicalFormOfID_(self, v7, v6);
  v11 = objc_msgSend_internalName(self, v9, v10);
  v13 = objc_msgSend_passwordForAccount_forServiceName_(v3, v12, v8, v11);

  return v13;
}

- (void)setPassword:(id)password
{
  v41 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    v39 = 138412290;
    v40 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to set password for account: %@", &v39, 0xCu);
  }

  if (objc_msgSend_length(passwordCopy, v11, v12))
  {
    v15 = objc_opt_class();
    v18 = objc_msgSend_login(self, v16, v17);
    v20 = objc_msgSend_canonicalFormOfID_(self, v19, v18);
    v23 = objc_msgSend_authorizationID(self, v21, v22);
    v26 = objc_msgSend_internalName(self, v24, v25);
    objc_msgSend_setPassword_forAccount_forAuthID_forServiceName_(v15, v27, passwordCopy, v20, v23, v26);

    v30 = objc_msgSend_sharedController(IMDaemonController, v28, v29);
    v33 = objc_msgSend_remoteDaemon(v30, v31, v32);
    v36 = objc_msgSend_uniqueID(self, v34, v35);
    objc_msgSend_passwordUpdatedAccount_(v33, v37, v36);
  }

  else
  {
    objc_msgSend_removePassword(self, v13, v14);
  }

  v38 = *MEMORY[0x1E69E9840];
}

+ (id)passwordForAccount:(id)account forServiceName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if (objc_msgSend_length(accountCopy, v7, v8))
  {
    IMGetKeychainPassword();
    v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)setPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name
{
  passwordCopy = password;
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  if (objc_msgSend_length(accountCopy, v13, v14) && objc_msgSend_length(passwordCopy, v15, v16))
  {
    IMSetKeychainPassword();
    v17 = dispatch_semaphore_create(0);
    v20 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE98], v18, v19);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A828B818;
    v23[3] = &unk_1E7810880;
    v24 = v17;
    v21 = v17;
    objc_msgSend_setPasswordForProfileID_username_service_password_outRequestID_completionBlock_(v20, v22, dCopy, accountCopy, nameCopy, passwordCopy, 0, v23);

    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)removePassword
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_registration(MEMORY[0x1E69A6138], a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_uniqueID(self, v5, v6);
    v19 = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Client request to remove password for account: %@", &v19, 0xCu);
  }

  v8 = objc_opt_class();
  v11 = objc_msgSend_login(self, v9, v10);
  v13 = objc_msgSend_canonicalFormOfID_(self, v12, v11);
  v16 = objc_msgSend_internalName(self, v14, v15);
  objc_msgSend_removePasswordForAccount_forServiceName_(v8, v17, v13, v16);

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)removePasswordForAccount:(id)account forServiceName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if (objc_msgSend_length(accountCopy, v6, v7))
  {
    IMRemoveKeychainPassword();
  }
}

- (NSString)temporaryPassword
{
  v3 = objc_opt_class();
  v6 = objc_msgSend_login(self, v4, v5);
  v8 = objc_msgSend_canonicalFormOfID_(self, v7, v6);
  v11 = objc_msgSend_authorizationID(self, v9, v10);
  v14 = objc_msgSend_internalName(self, v12, v13);
  v16 = objc_msgSend_temporaryPasswordForAccount_forAuthID_forServiceName_(v3, v15, v8, v11, v14);

  return v16;
}

- (void)setTemporaryPassword:(id)password
{
  v41 = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    v39 = 138412290;
    v40 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to set temporary password for account: %@", &v39, 0xCu);
  }

  if (objc_msgSend_length(passwordCopy, v11, v12))
  {
    v15 = objc_opt_class();
    v18 = objc_msgSend_login(self, v16, v17);
    v20 = objc_msgSend_canonicalFormOfID_(self, v19, v18);
    v23 = objc_msgSend_authorizationID(self, v21, v22);
    v26 = objc_msgSend_internalName(self, v24, v25);
    objc_msgSend_setTemporaryPassword_forAccount_forAuthID_forServiceName_(v15, v27, passwordCopy, v20, v23, v26);

    v30 = objc_msgSend_sharedController(IMDaemonController, v28, v29);
    v33 = objc_msgSend_remoteDaemon(v30, v31, v32);
    v36 = objc_msgSend_uniqueID(self, v34, v35);
    objc_msgSend_passwordUpdatedAccount_(v33, v37, v36);
  }

  else
  {
    objc_msgSend_removeTemporaryPassword(self, v13, v14);
  }

  v38 = *MEMORY[0x1E69E9840];
}

+ (id)temporaryPasswordForAccount:(id)account forAuthID:(id)d forServiceName:(id)name
{
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1A8259AE0;
  v27 = sub_1A825AE9C;
  v28 = 0;
  if (objc_msgSend_length(accountCopy, v10, v11))
  {
    v12 = dispatch_semaphore_create(0);
    v15 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE98], v13, v14);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A828BED8;
    v20[3] = &unk_1E78108A8;
    v16 = v12;
    v21 = v16;
    v22 = &v23;
    objc_msgSend_fetchPasswordForProfileID_username_service_outRequestID_completionBlock_(v15, v17, dCopy, accountCopy, nameCopy, 0, v20);

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }

  v18 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v18;
}

+ (void)setTemporaryPassword:(id)password forAccount:(id)account forAuthID:(id)d forServiceName:(id)name
{
  passwordCopy = password;
  accountCopy = account;
  dCopy = d;
  nameCopy = name;
  if (objc_msgSend_length(accountCopy, v13, v14))
  {
    v15 = dispatch_semaphore_create(0);
    v18 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE98], v16, v17);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1A828C120;
    v21[3] = &unk_1E7810880;
    v22 = v15;
    v19 = v15;
    objc_msgSend_setPasswordForProfileID_username_service_password_outRequestID_completionBlock_(v18, v20, dCopy, accountCopy, nameCopy, passwordCopy, 0, v21);

    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)removeTemporaryPassword
{
  v3 = objc_opt_class();
  v12 = objc_msgSend_login(self, v4, v5);
  v7 = objc_msgSend_canonicalFormOfID_(self, v6, v12);
  v10 = objc_msgSend_internalName(self, v8, v9);
  objc_msgSend_removeTemporaryPasswordForAccount_forServiceName_(v3, v11, v7, v10);
}

+ (void)removeTemporaryPasswordForAccount:(id)account forServiceName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if (objc_msgSend_length(accountCopy, v6, v7))
  {
    IMRemoveTemporaryKeychainPassword();
  }
}

- (NSString)accountDescription
{
  v4 = objc_msgSend_service(self, a2, v2);
  isPersistent = objc_msgSend_isPersistent(v4, v5, v6);

  if (isPersistent)
  {
    v10 = objc_msgSend_service(self, v8, v9);
    v13 = objc_msgSend_shortName(v10, v11, v12);
LABEL_3:
    v14 = v13;

    goto LABEL_9;
  }

  v15 = *MEMORY[0x1E69A6420];
  v16 = objc_msgSend_stringForKey_(self, v8, *MEMORY[0x1E69A6420]);
  v19 = objc_msgSend_length(v16, v17, v18);

  if (v19)
  {
    v22 = objc_msgSend_stringForKey_(self, v20, v15);
  }

  else
  {
    v23 = objc_msgSend_login(self, v20, v21);
    v26 = objc_msgSend_length(v23, v24, v25);

    if (!v26)
    {
      v10 = objc_msgSend_objectForKey_(self, v27, *MEMORY[0x1E69A5E40]);
      if (objc_msgSend_length(v10, v30, v31))
      {
        v13 = v10;
      }

      else
      {
        v13 = objc_msgSend_uniqueID(self, v32, v33);
      }

      goto LABEL_3;
    }

    v22 = objc_msgSend_login(self, v27, v28);
  }

  v14 = v22;
LABEL_9:

  return v14;
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  v6 = objc_msgSend_login(self, v4, v5);
  if (objc_msgSend_isEqualToString_(descriptionCopy, v7, v6))
  {

    objc_msgSend__setString_forKey_(self, v10, 0, *MEMORY[0x1E69A6420]);
  }

  else
  {
    v11 = objc_msgSend_length(descriptionCopy, v8, v9);

    if (v11)
    {
      objc_msgSend__setString_forKey_(self, v12, descriptionCopy, *MEMORY[0x1E69A6420]);
    }

    else
    {
      objc_msgSend__setString_forKey_(self, v12, 0, *MEMORY[0x1E69A6420]);
    }
  }
}

- (BOOL)hasCustomDescription
{
  v2 = objc_msgSend_stringForKey_(self, a2, *MEMORY[0x1E69A6420]);
  v5 = objc_msgSend_length(v2, v3, v4) != 0;

  return v5;
}

- (id)_serverWithSSL:(BOOL)l
{
  v4 = MEMORY[0x1E69A64E0];
  if (!l)
  {
    v4 = MEMORY[0x1E69A64D0];
  }

  v5 = objc_msgSend_stringForKey_(self, a2, *v4);
  if (objc_msgSend_length(v5, v6, v7))
  {
    v10 = v5;
    goto LABEL_11;
  }

  v11 = objc_msgSend_login(self, v8, v9);
  v14 = objc_msgSend_length(v11, v12, v13);

  if (v14)
  {
    v17 = objc_msgSend_login(self, v15, v16);
    v19 = objc_msgSend_rangeOfString_(v17, v18, @"@");
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v19 + 1;
      if (v19 + 1 < objc_msgSend_length(v17, v20, v21))
      {
        v10 = objc_msgSend_substringFromIndex_(v17, v23, v22);

        goto LABEL_11;
      }
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (NSString)server
{
  v4 = objc_msgSend_useSSL(self, a2, v2);

  return MEMORY[0x1EEE66B58](self, sel__serverWithSSL_, v4);
}

- (int64_t)port
{
  v4 = objc_msgSend_useSSL(self, a2, v2);
  v6 = MEMORY[0x1E69A64E8];
  if (!v4)
  {
    v6 = MEMORY[0x1E69A64D8];
  }

  v7 = *v6;

  return objc_msgSend_integerForKey_(self, v5, v7);
}

- (BOOL)allowsVCRelay
{
  v3 = *MEMORY[0x1E69A6438];
  v4 = objc_msgSend_objectForKey_(self, a2, *MEMORY[0x1E69A6438]);

  if (!v4)
  {
    objc_msgSend__setBool_forKey_(self, v5, 1, v3);
  }

  return objc_msgSend_BOOLForKey_(self, v5, v3);
}

- (BOOL)canActivate
{
  v4 = objc_msgSend_service(self, a2, v2);
  v9 = (objc_msgSend_isDiscontinued(v4, v5, v6) & 1) == 0 && objc_msgSend_invalidSettings(self, v7, v8) == 0;

  return v9;
}

- (BOOL)validLogin
{
  v4 = objc_msgSend_service(self, a2, v2);
  v7 = objc_msgSend_serviceProperties(v4, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A5E98]);
  v12 = objc_msgSend_intValue(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_login(self, v13, v14);
    v17 = objc_msgSend_canonicalFormOfID_(self, v16, v15);

    v20 = objc_msgSend_service(self, v18, v19);
    v23 = objc_msgSend_serviceProperties(v20, v21, v22);
    v25 = objc_msgSend_objectForKey_(v23, v24, *MEMORY[0x1E69A5EA0]);
    if (objc_msgSend_intValue(v25, v26, v27))
    {
      if (objc_msgSend_rangeOfString_(v17, v28, @"@") == 0x7FFFFFFFFFFFFFFFLL)
      {

LABEL_9:
        v30 = 0;
        goto LABEL_10;
      }

      v33 = objc_msgSend_rangeOfString_(v17, v29, @"@");

      if (!v33)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v30 = objc_msgSend_length(v17, v31, v32) != 0;
LABEL_10:

    return v30;
  }

  return 1;
}

- (BOOL)validPort
{
  v4 = objc_msgSend_service(self, a2, v2);
  v7 = objc_msgSend_serviceProperties(v4, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A5EC8]);

  if (objc_msgSend_port(self, v10, v11) < 1 || objc_msgSend_port(self, v12, v13) >= 0xFFFF)
  {
    v14 = objc_msgSend_BOOLValue(v9, v12, v13) ^ 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (BOOL)validServer
{
  v4 = objc_msgSend_service(self, a2, v2);
  v7 = objc_msgSend_serviceProperties(v4, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A5EC0]);

  v12 = objc_msgSend_server(self, v10, v11);
  if (objc_msgSend_length(v12, v13, v14) > 2 || (objc_msgSend_BOOLForKey_(self, v15, *MEMORY[0x1E69A63F8]) & 1) != 0)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v18 = objc_msgSend_BOOLValue(v9, v16, v17) ^ 1;
  }

  return v18;
}

- (int64_t)invalidSettings
{
  if (!objc_msgSend_validLogin(self, a2, v2))
  {
    return 1;
  }

  if (objc_msgSend_BOOLForKey_(self, v4, *MEMORY[0x1E69A63F8]))
  {
    return 0;
  }

  if (!objc_msgSend_validServer(self, v5, v6))
  {
    return 2;
  }

  if (objc_msgSend_validPort(self, v8, v9))
  {
    return 0;
  }

  return 3;
}

- (void)requestProperty:(id)property ofIMHandle:(id)handle
{
  handleCopy = handle;
  propertyCopy = property;
  v14 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = objc_msgSend_remoteDaemon(v14, v10, v11);
  objc_msgSend_requestProperty_ofPerson_account_(v12, v13, propertyCopy, handleCopy, self->_uniqueID);
}

- (void)setValue:(id)value ofExtraProperty:(id)property ofIMHandle:(id)handle
{
  handleCopy = handle;
  propertyCopy = property;
  valueCopy = value;
  v17 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
  v15 = objc_msgSend_remoteDaemon(v17, v13, v14);
  objc_msgSend_setValue_ofProperty_ofPerson_account_(v15, v16, valueCopy, propertyCopy, handleCopy, self->_uniqueID);
}

- (void)_loadFromDictionary:(id)dictionary force:(BOOL)force
{
  v167 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_msgSend_lock(self->_lock, v7, v8);
  if (!force && dictionaryCopy && (data = self->_data) != 0 && objc_msgSend_isEqualToDictionary_(data, v9, dictionaryCopy))
  {
    objc_msgSend_unlock(self->_lock, v9, v10);
  }

  else
  {
    isInvisible = objc_msgSend_isInvisible(self, v9, v10);
    v159 = objc_msgSend_authorizationID(self, v11, v12);
    v161 = objc_msgSend_aliases(self, v13, v14);
    v158 = objc_msgSend_vettedAliases(self, v15, v16);
    v166 = objc_msgSend__aliases(self, v17, v18);
    objc_storeStrong(&self->_data, dictionary);
    localCache = self->_localCache;
    self->_localCache = 0;

    dataChanges = self->_dataChanges;
    self->_dataChanges = 0;

    v22 = objc_msgSend_objectForKey_(dictionaryCopy, v21, @"AccountPrefs");
    accountPreferences = self->_accountPreferences;
    self->_accountPreferences = v22;

    vettedAliases = self->_vettedAliases;
    self->_vettedAliases = 0;

    objc_msgSend__invalidateCachedAliases(self, v25, v26);
    v28 = objc_msgSend_objectForKey_(dictionaryCopy, v27, *MEMORY[0x1E69A6448]);
    objc_msgSend__updateLogin_(self, v29, v28);

    v31 = objc_msgSend_objectForKey_(dictionaryCopy, v30, *MEMORY[0x1E69A6468]);
    objc_msgSend__updateProfileInfo_(self, v32, v31);

    v162 = objc_msgSend_objectForKey_(dictionaryCopy, v33, *MEMORY[0x1E69A64B0]);
    v35 = objc_msgSend_objectForKey_(v162, v34, *MEMORY[0x1E69A64B8]);
    v38 = objc_msgSend_intValue(v35, v36, v37);
    v40 = objc_msgSend_objectForKey_(v162, v39, *MEMORY[0x1E69A64A8]);
    v43 = objc_msgSend_intValue(v40, v41, v42);
    v45 = objc_msgSend_objectForKey_(v162, v44, *MEMORY[0x1E69A64A0]);
    objc_msgSend__updateRegistrationStatus_error_info_(self, v46, v38, v43, v45);

    if (!self->_accountPreferences)
    {
      v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v50 = self->_accountPreferences;
      self->_accountPreferences = v49;
    }

    v51 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v47, v48);
    objc_msgSend___mainThreadPostNotificationName_object_(v51, v52, @"__kIMAccountSettingsChangedNotification", self);

    v55 = objc_msgSend_authorizationID(self, v53, v54);
    v58 = v55;
    if (v55 == v159)
    {
    }

    else
    {
      v59 = objc_msgSend_authorizationID(self, v56, v57);
      isEqualToString = objc_msgSend_isEqualToString_(v59, v60, v159);

      if ((isEqualToString & 1) == 0)
      {
        v64 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v62, v63);
        objc_msgSend___mainThreadPostNotificationName_object_(v64, v65, @"__kIMAccountAuthorizationIDChangedNotification", self);
      }
    }

    v160 = objc_msgSend_aliases(self, v62, v63);
    if (v161 != v160 && (objc_msgSend_isEqualToArray_(v160, v67, v161) & 1) == 0)
    {
      v69 = objc_alloc(MEMORY[0x1E695DFA8]);
      v71 = objc_msgSend_initWithArray_(v69, v70, v161);
      v72 = objc_alloc(MEMORY[0x1E695DFA8]);
      v74 = objc_msgSend_initWithArray_(v72, v73, v160);
      v75 = objc_alloc(MEMORY[0x1E695DFA8]);
      v77 = objc_msgSend_initWithArray_(v75, v76, v161);
      objc_msgSend_minusSet_(v77, v78, v74);
      objc_msgSend_minusSet_(v74, v79, v71);
      v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (objc_msgSend_count(v74, v81, v82))
      {
        v85 = objc_msgSend_allObjects(v74, v83, v84);
        objc_msgSend_setObject_forKey_(v80, v86, v85, @"__kIMAccountAliasesAddedKey");
      }

      if (objc_msgSend_count(v77, v83, v84))
      {
        v89 = objc_msgSend_allObjects(v77, v87, v88);
        objc_msgSend_setObject_forKey_(v80, v90, v89, @"__kIMAccountAliasesRemovedKey");
      }

      if (objc_msgSend_count(v80, v87, v88))
      {
        v93 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v91, v92);
        objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v93, v94, @"__kIMAccountAliasesChangedNotification", self, v80);
      }
    }

    v95 = objc_msgSend__aliases(self, v67, v68);
    v163 = objc_msgSend_objectForKey_(dictionaryCopy, v96, *MEMORY[0x1E69A63D0]);
    if ((v163 || v95 != v166 && (objc_msgSend_isEqualToArray_(v95, v97, v166) & 1) == 0) && objc_msgSend_count(v95, v97, v98))
    {
      v99 = 0;
      v100 = *MEMORY[0x1E69A63C0];
      v165 = *MEMORY[0x1E69A63C8];
      do
      {
        v101 = objc_msgSend_objectAtIndex_(v95, v97, v99);
        v103 = objc_msgSend_objectForKey_(v101, v102, v100);

        if (objc_msgSend_length(v103, v104, v105))
        {
          if (v99 >= objc_msgSend_count(v166, v106, v107))
          {
            v116 = 0;
          }

          else
          {
            v110 = objc_msgSend_objectAtIndex_(v166, v108, v99);
            v112 = objc_msgSend_objectForKey_(v110, v111, v165);
            v115 = objc_msgSend_intValue(v112, v113, v114);

            v116 = v115;
          }

          if (v99 >= objc_msgSend_count(v95, v108, v109))
          {
            v124 = 0;
          }

          else
          {
            v118 = objc_msgSend_objectAtIndex_(v95, v117, v99);
            v120 = objc_msgSend_objectForKey_(v118, v119, v165);
            v123 = objc_msgSend_intValue(v120, v121, v122);

            v124 = v123;
          }

          v125 = objc_msgSend_validationErrorReasonForAlias_(self, v117, v103);
          if (v124 != v116)
          {
            v126 = v125;
            v127 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v128 = v103;
            if (v128)
            {
              CFDictionarySetValue(v127, @"__kIMAccountAliasChangedKey", v128);
            }

            v130 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v129, v124);
            if (v130)
            {
              CFDictionarySetValue(v127, @"__kIMAccountNewStatusKey", v130);
            }

            v132 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v131, v116);
            if (v132)
            {
              CFDictionarySetValue(v127, @"__kIMAccountOldStatusKey", v132);
            }

            if (v124 == -1 && v126 != -1)
            {
              v135 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v133, v126);
              if (v135)
              {
                CFDictionarySetValue(v127, @"__kIMAccountAliasValidationStatusFailedReasonKey", v135);
              }

              if (objc_msgSend_count(v163, v136, v137))
              {
                objc_msgSend_addEntriesFromDictionary_(v127, v133, v163);
              }
            }

            v138 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v133, v134);
            objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v138, v139, @"__kIMAccountAliasValidationStatusChangedNotification", self, v127);
          }
        }

        ++v99;
      }

      while (v99 < objc_msgSend_count(v95, v140, v141));
    }

    if (isInvisible != objc_msgSend_isInvisible(self, v97, v98))
    {
      v144 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v142, v143);
      objc_msgSend___mainThreadPostNotificationName_object_(v144, v145, @"__kIMAccountInvisibilityChangedNotification", self);
    }

    v146 = objc_msgSend_vettedAliases(self, v142, v143);
    v148 = v146;
    if (v146 != v158 && (objc_msgSend_isEqualToArray_(v146, v147, v158) & 1) == 0)
    {
      v150 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v147, v149);
      objc_msgSend___mainThreadPostNotificationName_object_(v150, v151, @"__kIMAccountVettedAliasesChangedNotification", self);
    }

    v152 = objc_msgSend_objectForKey_(dictionaryCopy, v147, *MEMORY[0x1E69A6428]);
    objc_msgSend__updateDisplayName_(self, v153, v152);

    objc_msgSend_unlock(self->_lock, v154, v155);
  }

  v156 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)dictionary
{
  objc_msgSend_lock(self->_lock, a2, v2);
  v6 = objc_msgSend_mutableCopy(self->_data, v4, v5);
  objc_msgSend_unlock(self->_lock, v7, v8);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (objc_msgSend_count(self->_dataChanges, v9, v10))
  {
    objc_msgSend_addEntriesFromDictionary_(v6, v11, self->_dataChanges);
  }

  v13 = objc_msgSend_accountPreferences(self, v11, v12);
  objc_msgSend_setObject_forKey_(v6, v14, v13, @"AccountPrefs");

  v17 = objc_msgSend_profileInfo(self, v15, v16);
  objc_msgSend_setObject_forKey_(v6, v18, v17, *MEMORY[0x1E69A6468]);

  return v6;
}

- (NSArray)emailDomains
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v5 = objc_msgSend_emailDomains(WeakRetained, v3, v4);

  return v5;
}

- (void)setCachedAllowList:(id)list
{
  v28 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ((objc_msgSend_count(self->_cachedAllowList, v5, v6) || objc_msgSend_count(listCopy, v7, v8)) && self->_cachedAllowList != listCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = listCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = objc_msgSend_canonicalFormOfID_(self, v12, *(*(&v23 + 1) + 8 * i), v23);
          objc_msgSend_addObject_(v9, v17, v16);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v23, v27, 16);
      }

      while (v13);
    }

    objc_storeStrong(&self->_cachedAllowList, v9);
    v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
    objc_msgSend___mainThreadPostNotificationName_object_(v20, v21, @"__kIMAccountPrivacySettingsChangedNotification", self);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setCachedBlockList:(id)list
{
  v28 = *MEMORY[0x1E69E9840];
  listCopy = list;
  if ((objc_msgSend_count(self->_cachedBlockList, v5, v6) || objc_msgSend_count(listCopy, v7, v8)) && self->_cachedBlockList != listCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = listCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = objc_msgSend_canonicalFormOfID_(self, v12, *(*(&v23 + 1) + 8 * i), v23);
          objc_msgSend_addObject_(v9, v17, v16);
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v23, v27, 16);
      }

      while (v13);
    }

    objc_storeStrong(&self->_cachedBlockList, v9);
    v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
    objc_msgSend___mainThreadPostNotificationName_object_(v20, v21, @"__kIMAccountPrivacySettingsChangedNotification", self);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)blockMessages:(BOOL)messages fromID:(id)d
{
  messagesCopy = messages;
  v39 = objc_msgSend_canonicalFormOfID_(self, a2, d);
  v8 = objc_msgSend_blockingMode(self, v6, v7);
  v11 = objc_msgSend_blockList(self, v9, v10);
  v14 = objc_msgSend_allowList(self, v12, v13);
  v16 = v14;
  if (messagesCopy)
  {
    if (v8 <= 1)
    {
      if ((objc_msgSend_containsObject_(v11, v15, v39) & 1) == 0)
      {
        if (!v11)
        {
          v11 = objc_msgSend_array(MEMORY[0x1E695DEC8], v17, v18);
        }

        v19 = objc_msgSend_arrayByAddingObject_(v11, v17, v39);
        objc_msgSend_setBlockList_(self, v20, v19);
      }

      objc_msgSend_setBlockingMode_(self, v17, 3);
      goto LABEL_29;
    }

    if (v8 == 3)
    {
      if (objc_msgSend_containsObject_(v11, v15, v39))
      {
        goto LABEL_29;
      }

      if (!v11)
      {
        v11 = objc_msgSend_array(MEMORY[0x1E695DEC8], v29, v30);
      }

      v23 = objc_msgSend_arrayByAddingObject_(v11, v29, v39);
      objc_msgSend_setBlockList_(self, v31, v23);
    }

    else
    {
      if (v8 != 2 || !objc_msgSend_containsObject_(v14, v15, v39))
      {
        goto LABEL_29;
      }

      v23 = objc_msgSend_mutableCopy(v16, v25, v26);
      objc_msgSend_removeObject_(v23, v27, v39);
      objc_msgSend_setAllowList_(self, v28, v23);
    }

LABEL_28:

    goto LABEL_29;
  }

  if (v8 < 2)
  {
    goto LABEL_29;
  }

  if (v8 != 4)
  {
    if (v8 == 3)
    {
      if (!objc_msgSend_containsObject_(v11, v15, v39))
      {
        goto LABEL_29;
      }

      v23 = objc_msgSend_mutableCopy(v11, v32, v33);
      objc_msgSend_removeObject_(v23, v34, v39);
      objc_msgSend_setBlockList_(self, v35, v23);
    }

    else
    {
      if (v8 != 2 || (objc_msgSend_containsObject_(v14, v15, v39) & 1) != 0)
      {
        goto LABEL_29;
      }

      if (!v16)
      {
        v16 = objc_msgSend_array(MEMORY[0x1E695DEC8], v21, v22);
      }

      v23 = objc_msgSend_arrayByAddingObject_(v16, v21, v39);
      objc_msgSend_setAllowList_(self, v24, v23);
    }

    goto LABEL_28;
  }

  if ((objc_msgSend_containsObject_(v14, v15, v39) & 1) == 0)
  {
    v37 = IMSingleObjectArray();
    objc_msgSend_setAllowList_(self, v38, v37);
  }

  objc_msgSend_setBlockingMode_(self, v36, 2);
LABEL_29:
}

- (void)setBlockList:(id)list
{
  listCopy = list;
  v6 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v9 = objc_msgSend_remoteDaemon(v6, v7, v8);
  objc_msgSend_setBlockList_account_(v9, v10, listCopy, self->_uniqueID);

  objc_msgSend_setCachedBlockList_(self, v11, listCopy);
}

- (NSArray)blockList
{
  cachedBlockList = self->_cachedBlockList;
  if (cachedBlockList)
  {
    v4 = cachedBlockList;
  }

  else
  {
    v4 = objc_msgSend_array(MEMORY[0x1E695DEC8], a2, v2);
  }

  return v4;
}

- (void)setAllowList:(id)list
{
  listCopy = list;
  v6 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v9 = objc_msgSend_remoteDaemon(v6, v7, v8);
  objc_msgSend_setAllowList_account_(v9, v10, listCopy, self->_uniqueID);

  objc_msgSend_setCachedAllowList_(self, v11, listCopy);
}

- (NSArray)allowList
{
  cachedAllowList = self->_cachedAllowList;
  if (cachedAllowList)
  {
    v4 = cachedAllowList;
  }

  else
  {
    v4 = objc_msgSend_array(MEMORY[0x1E695DEC8], a2, v2);
  }

  return v4;
}

- (void)clearTargetState
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel_targetGroupStateTimeout, 0);
  targetGroupState = self->_targetGroupState;
  self->_targetGroupState = 0;
}

+ (id)_groupSummaryFromGroupList:(id)list
{
  v30 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = listCopy;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v25, v29, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v26;
    v10 = *MEMORY[0x1E69A6228];
    v11 = *MEMORY[0x1E69A6220];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(v13, v7, v10);
        v16 = objc_msgSend_objectForKey_(v13, v15, v11);
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v20 = v17;
        if (v14)
        {
          objc_msgSend_setObject_forKey_(v17, v18, v14, v10);
        }

        if (objc_msgSend_count(v16, v18, v19))
        {
          objc_msgSend_setObject_forKey_(v20, v21, v16, v11);
        }

        objc_msgSend_addObject_(v4, v21, v20);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v25, v29, 16);
    }

    while (v8);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)hasTargetGroupStateBeenMet
{
  v3 = objc_msgSend__groupSummaryFromGroupList_(IMAccount, a2, self->_lastReceivedGroupState);
  v5 = objc_msgSend__groupSummaryFromGroupList_(IMAccount, v4, self->_targetGroupState);
  isEqualToArray = objc_msgSend_isEqualToArray_(v3, v6, v5);

  return isEqualToArray;
}

- (void)targetGroupStateTimeout
{
  hasTargetGroupStateBeenMet = objc_msgSend_hasTargetGroupStateBeenMet(self, a2, v2);
  objc_msgSend_clearTargetState(self, v5, v6);
  if ((hasTargetGroupStateBeenMet & 1) == 0)
  {
    lastReceivedGroupState = self->_lastReceivedGroupState;

    objc_msgSend_groupsChanged_error_(self, v7, lastReceivedGroupState, 0);
  }
}

- (void)setWaitForTargetState
{
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel_targetGroupStateTimeout, 0);

  objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel_targetGroupStateTimeout, 0, 120.0);
}

- (void)setTargetGroupsState:(id)state
{
  stateCopy = state;
  if (self->_targetGroupState != stateCopy)
  {
    v9 = stateCopy;
    objc_storeStrong(&self->_targetGroupState, state);
    if (self->_targetGroupState)
    {
      objc_msgSend_setWaitForTargetState(self, v6, v7);
    }

    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v6, self, sel_updateWithTargetGroups, 0);
    objc_msgSend_performSelector_withObject_afterDelay_(self, v8, sel_updateWithTargetGroups, 0, 0.0);
    stateCopy = v9;
  }
}

- (void)_applyChangesToTemporaryCache:(id)cache
{
  v311 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  targetGroupState = self->_targetGroupState;
  if (!targetGroupState)
  {
    targetGroupState = self->_groups;
  }

  v8 = objc_msgSend_mutableCopy(targetGroupState, v4, v5);
  v10 = objc_msgSend_objectForKey_(cacheCopy, v9, *MEMORY[0x1E69A6230]);
  selfCopy = self;
  objc_msgSend_clearTargetState(self, v11, v12);
  v227 = cacheCopy;
  v232 = v10;
  if (objc_msgSend_count(v10, v13, v14))
  {
    v256 = objc_msgSend_mutableCopy(v8, v15, v16);
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    obj = objc_msgSend_allKeys(v10, v17, v18);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v298, v310, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v299;
      v25 = *MEMORY[0x1E69A6228];
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v299 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v298 + 1) + 8 * i);
          if (objc_msgSend_count(v8, v21, v22))
          {
            v28 = 0;
            while (1)
            {
              v29 = objc_msgSend_objectAtIndex_(v8, v21, v28);
              v31 = objc_msgSend_objectForKey_(v29, v30, v25);
              isEqualToString = objc_msgSend_isEqualToString_(v31, v32, v27);

              if (isEqualToString)
              {
                break;
              }

              if (++v28 >= objc_msgSend_count(v8, v36, v37))
              {
                goto LABEL_15;
              }
            }

            v38 = objc_msgSend_mutableCopy(v29, v34, v35);
            v40 = objc_msgSend_objectForKey_(v232, v39, v27);
            objc_msgSend_setObject_forKey_(v38, v41, v40, v25);

            objc_msgSend_replaceObjectAtIndex_withObject_(v256, v42, v28, v38);
          }

LABEL_15:
          ;
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v298, v310, 16);
      }

      while (v23);
    }

    if (v256 != v8)
    {
      v43 = v256;

      v8 = v43;
    }

    cacheCopy = v227;

    v10 = v232;
  }

  v234 = *MEMORY[0x1E69A61B0];
  v230 = objc_msgSend_objectForKey_(cacheCopy, v15, *MEMORY[0x1E69A61B0]);
  v236 = objc_msgSend_count(v230, v44, v45);
  if (!v236)
  {
    goto LABEL_58;
  }

  if (objc_msgSend_count(v8, v46, v47))
  {
    v50 = objc_msgSend_mutableCopy(v8, v48, v49);
  }

  else
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v51 = v50;

  v53 = 0;
  v54 = *MEMORY[0x1E69A6228];
  v241 = *MEMORY[0x1E69A6220];
  v251 = v8;
  do
  {
    v55 = objc_msgSend_objectAtIndex_(v230, v52, v53);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = v55;
      obja = 0;
    }

    else
    {
      v59 = objc_msgSend_objectForKey_(v55, v56, v54);
      obja = objc_msgSend_objectForKey_(v55, v60, v241);
    }

    v257 = v55;
    if (!objc_msgSend_count(v8, v57, v58))
    {
      if (!v59)
      {
        v62 = 0;
        goto LABEL_52;
      }

LABEL_39:
      v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objc_msgSend_addObject_(v51, v74, v62);
LABEL_40:
      v246 = v53;
      objc_msgSend_setObject_forKey_(v62, v61, v59, v54);
      v76 = objc_msgSend_objectForKey_(v62, v75, v241);
      v79 = objc_msgSend_mutableCopy(v76, v77, v78);

      if (!v79)
      {
        v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      objc_msgSend_setObject_forKey_(v62, v80, v79, v241);
      v296 = 0u;
      v297 = 0u;
      v294 = 0u;
      v295 = 0u;
      v81 = obja;
      v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v294, v309, 16);
      if (v83)
      {
        v85 = v83;
        v86 = *v295;
        do
        {
          for (j = 0; j != v85; ++j)
          {
            if (*v295 != v86)
            {
              objc_enumerationMutation(v81);
            }

            v88 = *(*(&v294 + 1) + 8 * j);
            if ((objc_msgSend_containsObject_(v79, v84, v88) & 1) == 0)
            {
              objc_msgSend_addObject_(v79, v84, v88);
            }
          }

          v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v294, v309, 16);
        }

        while (v85);
      }

      v53 = v246;
      v8 = v251;
      goto LABEL_52;
    }

    v62 = 0;
    v63 = 0;
    do
    {
      v64 = objc_msgSend_objectAtIndex_(v8, v61, v63);
      v66 = objc_msgSend_objectForKey_(v64, v65, v54);
      v68 = objc_msgSend_isEqualToString_(v66, v67, v59);

      if (v68)
      {
        if (v62 != v64)
        {
          v71 = objc_msgSend_mutableCopy(v64, v69, v70);

          v62 = v71;
        }

        objc_msgSend_replaceObjectAtIndex_withObject_(v51, v69, v63, v62);
      }

      ++v63;
    }

    while (v63 < objc_msgSend_count(v8, v72, v73));
    if (v59)
    {
      if (!v62)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

LABEL_52:

    ++v53;
    v10 = v232;
  }

  while (v53 != v236);
  if (v51 != v8)
  {
    v89 = v51;

    v8 = v89;
  }

  cacheCopy = v227;
LABEL_58:
  v233 = *MEMORY[0x1E69A63B0];
  v90 = objc_msgSend_objectForKey_(cacheCopy, v46, *MEMORY[0x1E69A63B0]);
  v226 = v90;
  if (objc_msgSend_count(v90, v91, v92))
  {
    v252 = v8;
    v95 = objc_msgSend_mutableCopy(v8, v93, v94);
    v98 = objc_msgSend_nonRetainingArray(MEMORY[0x1E695DF70], v96, v97);
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v237 = v90;
    v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v237, v99, &v290, v308, 16);
    if (v258)
    {
      v242 = *v291;
      v100 = *MEMORY[0x1E69A6228];
      v247 = v95;
      do
      {
        v101 = 0;
        do
        {
          if (*v291 != v242)
          {
            objc_enumerationMutation(v237);
          }

          objb = v101;
          v102 = *(*(&v290 + 1) + 8 * v101);
          v286 = 0u;
          v287 = 0u;
          v288 = 0u;
          v289 = 0u;
          v103 = v95;
          v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, &v286, v307, 16);
          if (v105)
          {
            v107 = v105;
            v108 = *v287;
            do
            {
              for (k = 0; k != v107; ++k)
              {
                if (*v287 != v108)
                {
                  objc_enumerationMutation(v103);
                }

                v110 = *(*(&v286 + 1) + 8 * k);
                v111 = objc_msgSend_objectForKey_(v110, v106, v100);
                v113 = objc_msgSend_isEqualToString_(v111, v112, v102);

                if (v113)
                {
                  objc_msgSend_addObject_(v98, v106, v110);
                }
              }

              v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v106, &v286, v307, 16);
            }

            while (v107);
          }

          v101 = objb + 1;
          v95 = v247;
        }

        while (objb + 1 != v258);
        v258 = objc_msgSend_countByEnumeratingWithState_objects_count_(v237, v114, &v290, v308, 16);
      }

      while (v258);
    }

    v8 = v252;
    if (v252 != v95)
    {
      v115 = v95;

      v8 = v115;
    }

    v90 = v226;
    cacheCopy = v227;
    v10 = v232;
  }

  v225 = objc_msgSend_objectForKey_(cacheCopy, v93, *MEMORY[0x1E69A63B8]);
  v117 = objc_msgSend_objectForKey_(v225, v116, *MEMORY[0x1E69A61C0]);
  v259 = v117;
  if (objc_msgSend_count(v117, v118, v119))
  {
    v243 = objc_msgSend_mutableCopy(v8, v120, v121);
    v124 = objc_msgSend_count(v243, v122, v123);
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v248 = objc_msgSend_allKeys(v117, v125, v126);
    objc = objc_msgSend_countByEnumeratingWithState_objects_count_(v248, v127, &v282, v306, 16);
    if (objc)
    {
      v253 = *v283;
      v129 = *MEMORY[0x1E69A6228];
      v238 = *MEMORY[0x1E69A6220];
      do
      {
        for (m = 0; m != objc; m = m + 1)
        {
          if (*v283 != v253)
          {
            objc_enumerationMutation(v248);
          }

          v131 = *(*(&v282 + 1) + 8 * m);
          v133 = objc_msgSend_objectForKey_(v117, v128, v131);
          if (v133)
          {
            v134 = v124 == 0;
          }

          else
          {
            v134 = 1;
          }

          if (!v134)
          {
            v135 = 0;
            while (1)
            {
              v136 = objc_msgSend_objectAtIndex_(v8, v132, v135);
              v138 = objc_msgSend_objectForKey_(v136, v137, v129);
              v140 = objc_msgSend_isEqualToString_(v131, v139, v138);

              if (v140)
              {
                break;
              }

              if (v124 == ++v135)
              {
                goto LABEL_94;
              }
            }

            if (v135 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v141 = objc_msgSend_objectAtIndex_(v243, v132, v135);
              v144 = objc_msgSend_mutableCopy(v141, v142, v143);

              v146 = objc_msgSend_objectForKey_(v259, v145, v131);
              objc_msgSend_setObject_forKey_(v144, v147, v146, v238);

              objc_msgSend_replaceObjectAtIndex_withObject_(v243, v148, v135, v144);
            }
          }

LABEL_94:

          v117 = v259;
        }

        objc = objc_msgSend_countByEnumeratingWithState_objects_count_(v248, v128, &v282, v306, 16);
      }

      while (objc);
    }

    if (v8 != v243)
    {
      v149 = v243;

      v8 = v149;
    }

    v90 = v226;
    cacheCopy = v227;
    v10 = v232;
  }

  v229 = objc_msgSend_objectForKey_(cacheCopy, v120, *MEMORY[0x1E69A61C8]);
  v228 = objc_msgSend_count(v229, v150, v151);
  if (v228)
  {
    v155 = objc_msgSend_mutableCopy(v8, v152, v153);
    v156 = 0;
    v157 = *MEMORY[0x1E69A6228];
    v254 = *MEMORY[0x1E69A6220];
    v239 = *MEMORY[0x1E69A6228];
    v244 = v155;
    do
    {
      v231 = v156;
      objd = objc_msgSend_objectAtIndex_(v229, v154, v156);
      v159 = objc_msgSend_objectForKey_(objd, v158, v157);
      if (objc_msgSend_count(v8, v160, v161))
      {
        v163 = 0;
        v249 = v159;
        do
        {
          v164 = objc_msgSend_objectAtIndex_(v155, v162, v163);
          v166 = objc_msgSend_objectForKey_(v164, v165, v157);
          v168 = objc_msgSend_isEqualToString_(v159, v167, v166);

          if (v168)
          {
            v171 = objc_msgSend_mutableCopy(v164, v169, v170);
            v173 = objc_msgSend_objectForKey_(v171, v172, v254);
            v176 = objc_msgSend_mutableCopy(v173, v174, v175);

            if (!v176)
            {
              v176 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v178 = v8;
            v280 = 0u;
            v281 = 0u;
            v278 = 0u;
            v279 = 0u;
            v179 = objc_msgSend_objectForKey_(objd, v177, v234);
            v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v180, &v278, v305, 16);
            if (v181)
            {
              v183 = v181;
              v184 = *v279;
              do
              {
                for (n = 0; n != v183; ++n)
                {
                  if (*v279 != v184)
                  {
                    objc_enumerationMutation(v179);
                  }

                  v186 = *(*(&v278 + 1) + 8 * n);
                  if ((objc_msgSend_containsObject_(v176, v182, v186) & 1) == 0)
                  {
                    objc_msgSend_addObject_(v176, v182, v186);
                  }
                }

                v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v179, v182, &v278, v305, 16);
              }

              while (v183);
            }

            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v188 = objc_msgSend_objectForKey_(objd, v187, v233);
            v190 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v189, &v274, v304, 16);
            if (v190)
            {
              v192 = v190;
              v193 = *v275;
              do
              {
                for (ii = 0; ii != v192; ++ii)
                {
                  if (*v275 != v193)
                  {
                    objc_enumerationMutation(v188);
                  }

                  v195 = *(*(&v274 + 1) + 8 * ii);
                  if (objc_msgSend_containsObject_(v176, v191, v195))
                  {
                    objc_msgSend_removeObject_(v176, v191, v195);
                  }
                }

                v192 = objc_msgSend_countByEnumeratingWithState_objects_count_(v188, v191, &v274, v304, 16);
              }

              while (v192);
            }

            objc_msgSend_setObject_forKey_(v171, v196, v176, v254);
            v155 = v244;
            objc_msgSend_replaceObjectAtIndex_withObject_(v244, v197, v163, v171);

            v8 = v178;
            v157 = v239;
            v159 = v249;
          }

          ++v163;
        }

        while (v163 < objc_msgSend_count(v8, v198, v199));
      }

      v156 = v231 + 1;
    }

    while (v231 + 1 != v228);
    if (v8 != v155)
    {
      v200 = v155;

      v8 = v200;
      v155 = v244;
    }

    v10 = v232;
    v90 = v226;
    v117 = v259;

    cacheCopy = v227;
  }

  v201 = objc_msgSend_objectForKey_(v225, v152, *MEMORY[0x1E69A6240]);
  if (objc_msgSend_count(v201, v202, v203))
  {
    v205 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v270 = 0u;
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v235 = v201;
    v240 = v201;
    v250 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v206, &v270, v303, 16);
    if (v250)
    {
      v245 = *v271;
      v207 = *MEMORY[0x1E69A6228];
      v255 = v8;
      do
      {
        v208 = 0;
        do
        {
          if (*v271 != v245)
          {
            objc_enumerationMutation(v240);
          }

          obje = v208;
          v209 = *(*(&v270 + 1) + 8 * v208);
          v266 = 0u;
          v267 = 0u;
          v268 = 0u;
          v269 = 0u;
          v210 = v8;
          v212 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v211, &v266, v302, 16);
          if (v212)
          {
            v214 = v212;
            v215 = *v267;
            do
            {
              for (jj = 0; jj != v214; ++jj)
              {
                if (*v267 != v215)
                {
                  objc_enumerationMutation(v210);
                }

                v217 = *(*(&v266 + 1) + 8 * jj);
                v218 = objc_msgSend_objectForKey_(v217, v213, v207);
                v220 = objc_msgSend_isEqualToString_(v218, v219, v209);

                if (v220)
                {
                  objc_msgSend_addObject_(v205, v213, v217);
                }
              }

              v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(v210, v213, &v266, v302, 16);
            }

            while (v214);
          }

          v208 = obje + 1;
          v8 = v255;
        }

        while (obje + 1 != v250);
        v250 = objc_msgSend_countByEnumeratingWithState_objects_count_(v240, v221, &v270, v303, 16);
      }

      while (v250);
    }

    if (v8 != v205)
    {
      v222 = v205;

      v8 = v222;
    }

    v90 = v226;
    cacheCopy = v227;
    v10 = v232;
    v117 = v259;
    v201 = v235;
  }

  objc_msgSend_setTargetGroupsState_(selfCopy, v204, v8);

  v223 = *MEMORY[0x1E69E9840];
}

- (void)beginChanges
{
  if ((objc_msgSend_makingChanges(self, a2, v2) & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    coalescedChanges = self->_coalescedChanges;
    self->_coalescedChanges = v4;
  }

  ++self->_coalesceCount;
}

- (void)_ensureGroupsExists:(id)exists
{
  v24 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(existsCopy, v5, &v19, v23, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(existsCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = objc_msgSend_groupList(self, v7, v8);
        v15 = objc_msgSend_containsObject_(v13, v14, v12);

        if ((v15 & 1) == 0)
        {
          v16 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v7, v12);
          objc_msgSend_changeBuddyList_add_groups_atLocation_(self, v17, 0, 1, v16, -1);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(existsCopy, v7, &v19, v23, 16);
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)addPeople:(id)people toGroups:(id)groups atLocation:(int64_t)location
{
  v36 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  groupsCopy = groups;
  objc_msgSend__ensureGroupsExists_(self, v10, groupsCopy);
  if ((location & 0x8000000000000000) == 0)
  {
    goto LABEL_2;
  }

  hasCapability = objc_msgSend_hasCapability_(self, v11, 0x10000000);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = peopleCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, &v31, v35, 16);
  if (!v18)
  {
    goto LABEL_3;
  }

  v21 = v18;
  locationCopy = location;
  v30 = peopleCopy;
  v22 = *v32;
  v23 = 1;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(v12);
      }

      v25 = *(*(&v31 + 1) + 8 * i);
      if (hasCapability && objc_msgSend_authRequestStatus(*(*(&v31 + 1) + 8 * i), v19, v20))
      {
        objc_msgSend_requestBuddyListAuthorizationFromIMHandle_(self, v19, v25);
      }

      if (objc_msgSend_isBuddy(v25, v19, v20, locationCopy, v30, v31))
      {
        v26 = objc_msgSend_groups(v25, v19, v20);
        isSubsetOfSet = objc_msgSend_isSubsetOfSet_(groupsCopy, v27, v26);

        v23 &= isSubsetOfSet;
      }

      else
      {
        v23 = 0;
      }
    }

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v19, &v31, v35, 16);
  }

  while (v21);

  LODWORD(location) = locationCopy;
  peopleCopy = v30;
  if ((v23 & 1) == 0)
  {
LABEL_2:
    v12 = objc_msgSend_arrayByApplyingSelector_(peopleCopy, v11, "ID");
    objc_msgSend_changeBuddyList_add_groups_atLocation_(self, v13, v12, 1, groupsCopy, location);
LABEL_3:
  }

  v14 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)removePeople:(id)people fromGroups:(id)groups
{
  groupsCopy = groups;
  v8 = objc_msgSend_arrayByApplyingSelector_(people, v7, "ID");
  objc_msgSend_changeBuddyList_add_groups_atLocation_(self, v9, v8, 0, groupsCopy, 0);

  return 1;
}

- (BOOL)addIMHandle:(id)handle toGroups:(id)groups atLocation:(int64_t)location
{
  groupsCopy = groups;
  v8 = IMSingleObjectArray();
  LOBYTE(location) = objc_msgSend_addPeople_toGroups_atLocation_(self, v9, v8, groupsCopy, location);

  return location;
}

- (BOOL)removeIMHandle:(id)handle fromGroups:(id)groups
{
  groupsCopy = groups;
  v9 = objc_msgSend_ID(handle, v7, v8);
  v10 = IMSingleObjectArray();
  objc_msgSend_changeBuddyList_add_groups_atLocation_(self, v11, v10, 0, groupsCopy, 0);

  return 1;
}

- (void)addBuddyToBuddyList:(id)list
{
  listCopy = list;
  v6 = objc_msgSend_groupList(self, v4, v5);
  if (v6)
  {
    v9 = v6;
    v10 = objc_msgSend_groupList(self, v7, v8);
    v13 = objc_msgSend_count(v10, v11, v12);

    if (v13)
    {
      v14 = IMSingleObjectArray();
      v15 = MEMORY[0x1E695DFD8];
      v18 = objc_msgSend_groupList(self, v16, v17);
      v21 = objc_msgSend___imFirstObject(v18, v19, v20);
      v23 = objc_msgSend_setWithObject_(v15, v22, v21);
      objc_msgSend_addPeople_toGroups_atLocation_(self, v24, v14, v23, 0);
    }
  }
}

- (void)changeBuddyList:(id)list add:(BOOL)add groups:(id)groups atLocation:(int64_t)location
{
  addCopy = add;
  v195 = *MEMORY[0x1E69E9840];
  listCopy = list;
  groupsCopy = groups;
  objc_msgSend_beginChanges(self, v12, v13);
  v16 = objc_msgSend_allObjects(groupsCopy, v14, v15);
  v166 = v16;
  if (objc_msgSend_count(listCopy, v17, v18))
  {
    v161 = groupsCopy;
    v175 = objc_msgSend_count(v16, v19, v20);
    v169 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v21, v175);
    v23 = location >= 0 && addCopy;
    v173 = v23;
    v174 = addCopy;
    if (v23)
    {
      v24 = *MEMORY[0x1E69A63B8];
      v27 = objc_msgSend_objectForKey_(self->_coalescedChanges, v22, *MEMORY[0x1E69A63B8]);
      if (!v27)
      {
        v27 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v25, v26);
        objc_msgSend_setObject_forKey_(self->_coalescedChanges, v28, v27, v24);
      }
    }

    else
    {
      v27 = 0;
    }

    v165 = v27;
    v58 = objc_alloc(MEMORY[0x1E695DF70]);
    v61 = objc_msgSend_count(listCopy, v59, v60);
    v63 = objc_msgSend_initWithCapacity_(v58, v62, v61);
    v68 = objc_msgSend_count(listCopy, v64, v65);
    if (v68 >= 1)
    {
      for (i = 0; i != v68; ++i)
      {
        v70 = objc_msgSend_service(self, v66, v67);
        v72 = objc_msgSend_objectAtIndex_(listCopy, v71, i);
        v74 = objc_msgSend_canonicalFormOfID_(v70, v73, v72);
        objc_msgSend_addObject_(v63, v75, v74);
      }
    }

    v176 = v63;
    v164 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v66, v63);
    v78 = v165;
    v16 = v166;
    if (v175)
    {
      v77 = 0;
      v178 = *MEMORY[0x1E69A6228];
      v172 = *MEMORY[0x1E69A6220];
      v79 = MEMORY[0x1E69A61B0];
      if (!v174)
      {
        v79 = MEMORY[0x1E69A63B0];
      }

      v167 = *MEMORY[0x1E69A61C0];
      v168 = *v79;
      selfCopy = self;
      do
      {
        v177 = v77;
        v179 = objc_msgSend_objectAtIndex_(v16, v76, v77);
        v82 = objc_msgSend_count(self->_groups, v80, v81);
        if (v82)
        {
          v84 = v82;
          v85 = 0;
          while (1)
          {
            v86 = objc_msgSend_objectAtIndex_(self->_groups, v83, v85);
            v88 = objc_msgSend_objectForKey_(v86, v87, v178);
            isEqualToString = objc_msgSend_isEqualToString_(v88, v89, v179);

            if (isEqualToString)
            {
              break;
            }

            if (v84 == ++v85)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_38:
          v86 = 0;
        }

        v92 = objc_msgSend_objectForKey_(v86, v83, v172);
        if (v92)
        {
          v93 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v91, v92);
        }

        else
        {
          v93 = 0;
        }

        v94 = v179;
        if (!v174 || (objc_msgSend_isSubsetOfSet_(v164, v91, v93) & 1) == 0)
        {
          objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v91, v179, v178, v176, v168, 0);
          v97 = v96 = v93;
          objc_msgSend_addObject_(v169, v98, v97);

          v93 = v96;
        }

        if (v173)
        {
          v171 = v92;
          if (v86)
          {
            objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v91, v92);
          }

          else
          {
            objc_msgSend_array(MEMORY[0x1E695DF70], v91, v95);
          }
          v99 = ;
          v170 = v93;
          v190 = 0u;
          v191 = 0u;
          v188 = 0u;
          v189 = 0u;
          v100 = v176;
          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v101, &v188, v194, 16);
          if (v102)
          {
            v104 = v102;
            v105 = *v189;
            do
            {
              for (j = 0; j != v104; ++j)
              {
                if (*v189 != v105)
                {
                  objc_enumerationMutation(v100);
                }

                v107 = *(*(&v188 + 1) + 8 * j);
                v108 = objc_msgSend_indexOfObject_(v99, v103, v107);
                if (v108 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v111 = v108;
                  objc_msgSend_removeObjectAtIndex_(v99, v109, v108);
                  location = (__PAIR128__(location, v111) - location) >> 64;
                }

                if (location > objc_msgSend_count(v99, v109, v110))
                {
                  location = objc_msgSend_count(v99, v112, v113);
                }

                objc_msgSend_insertObject_atIndex_(v99, v112, v107, location++);
              }

              v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v103, &v188, v194, 16);
            }

            while (v104);
          }

          v78 = v165;
          v117 = objc_msgSend_objectForKey_(v165, v114, v167);
          if (!v117)
          {
            v117 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v115, v116);
            objc_msgSend_setObject_forKey_(v165, v118, v117, v167);
          }

          v94 = v179;
          objc_msgSend_setObject_forKey_(v117, v115, v99, v179);

          self = selfCopy;
          v16 = v166;
          v93 = v170;
          v92 = v171;
        }

        v77 = v177 + 1;
      }

      while (v177 + 1 != v175);
    }

    v46 = v176;
    if (objc_msgSend_count(v169, v76, v77))
    {
      v120 = *MEMORY[0x1E69A61C8];
      v122 = objc_msgSend_objectForKey_(self->_coalescedChanges, v119, *MEMORY[0x1E69A61C8]);
      if (!v122)
      {
        v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_msgSend_setObject_forKey_(self->_coalescedChanges, v123, v122, v120);
      }

      objc_msgSend_addObjectsFromArray_(v122, v121, v169);
    }

    groupsCopy = v161;
    goto LABEL_89;
  }

  if (objc_msgSend_count(groupsCopy, v19, v20))
  {
    v162 = groupsCopy;
    v31 = MEMORY[0x1E69A61B0];
    if (!addCopy)
    {
      v31 = MEMORY[0x1E69A63B0];
    }

    v169 = *v31;
    v34 = objc_msgSend_objectForKey_(self->_coalescedChanges, v32, v169);
    v35 = addCopy;
    if (!v34)
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_msgSend_setObject_forKey_(self->_coalescedChanges, v36, v34, v169);
    }

    objc_msgSend_addObjectsFromArray_(v34, v33, v16);
    v39 = objc_msgSend_groupList(self, v37, v38);
    v42 = objc_msgSend_mutableCopy(v39, v40, v41);

    v45 = v34;
    v46 = v42;
    if (!v35)
    {
      objc_msgSend_removeObjectsInArray_(v42, v43, v16);
      goto LABEL_86;
    }

    v47 = objc_msgSend_count(v42, v43, v44);
    if ((location & 0x8000000000000000) == 0)
    {
      if (v47 <= location)
      {
        goto LABEL_86;
      }

      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v50 = v162;
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v184, v193, 16);
      if (v52)
      {
        v54 = v52;
        v55 = *v185;
        do
        {
          for (k = 0; k != v54; ++k)
          {
            if (*v185 != v55)
            {
              objc_enumerationMutation(v50);
            }

            v57 = *(*(&v184 + 1) + 8 * k);
            if (objc_msgSend_containsObject_(v46, v53, v57))
            {
              objc_msgSend_insertObject_atIndex_(v46, v53, v57, location);
            }
          }

          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v184, v193, 16);
        }

        while (v54);
      }

      goto LABEL_85;
    }

    if (!v47)
    {
      goto LABEL_76;
    }

    v124 = 0;
    v125 = *MEMORY[0x1E69A6238];
    while (1)
    {
      v126 = objc_msgSend_objectAtIndex_(v46, v48, v124);
      v128 = objc_msgSend_propertiesForGroup_(self, v127, v126);
      v130 = objc_msgSend_objectForKey_(v128, v129, v125);
      if (v130)
      {
        v133 = v130;
        if (!objc_msgSend_intValue(v130, v131, v132))
        {

          if ((v124 & 0x80000000) == 0 && objc_msgSend_count(v46, v148, v149) > (v124 & 0x7FFFFFFF))
          {
            v16 = v166;
            if (objc_msgSend_count(v166, v150, v151))
            {
              v152 = 0;
              v153 = v124;
              do
              {
                v154 = objc_msgSend_objectAtIndex_(v166, v48, v152);
                v156 = objc_msgSend_containsObject_(v46, v155, v154);

                if ((v156 & 1) == 0)
                {
                  v159 = objc_msgSend_objectAtIndex_(v166, v157, v152);
                  objc_msgSend_insertObject_atIndex_(v46, v160, v159, v153);

                  ++v153;
                }

                ++v152;
              }

              while (v152 < objc_msgSend_count(v166, v157, v158));
            }

LABEL_86:
            v143 = objc_msgSend_groupList(self, v48, v49);
            isEqualToArray = objc_msgSend_isEqualToArray_(v46, v144, v143);

            if ((isEqualToArray & 1) == 0)
            {
              objc_msgSend_reorderGroups_(self, v146, v46);
            }

            groupsCopy = v162;
            v78 = v45;
LABEL_89:

            break;
          }

LABEL_76:
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v50 = v166;
          v137 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v136, &v180, v192, 16);
          if (v137)
          {
            v139 = v137;
            v140 = *v181;
            do
            {
              for (m = 0; m != v139; ++m)
              {
                if (*v181 != v140)
                {
                  objc_enumerationMutation(v50);
                }

                v142 = *(*(&v180 + 1) + 8 * m);
                if ((objc_msgSend_containsObject_(v46, v138, v142) & 1) == 0)
                {
                  objc_msgSend_addObject_(v46, v138, v142);
                }
              }

              v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v138, &v180, v192, 16);
            }

            while (v139);
          }

LABEL_85:

          v16 = v166;
          goto LABEL_86;
        }
      }

      if (++v124 >= objc_msgSend_count(v46, v134, v135))
      {
        goto LABEL_76;
      }
    }
  }

  objc_msgSend_endChanges(self, v29, v30);

  v147 = *MEMORY[0x1E69E9840];
}

- (void)renameGroup:(id)group to:(id)to
{
  groupCopy = group;
  toCopy = to;
  v9 = objc_msgSend_groupList(self, v7, v8);
  v11 = objc_msgSend_containsObject_(v9, v10, groupCopy);

  if (v11)
  {
    objc_msgSend_beginChanges(self, v12, v13);
    v16 = objc_msgSend_groupList(self, v14, v15);
    v19 = objc_msgSend_mutableCopy(v16, v17, v18);

    v22 = objc_msgSend_sharedController(IMDaemonController, v20, v21);
    v25 = objc_msgSend_remoteDaemon(v22, v23, v24);
    objc_msgSend_renameGroup_to_account_(v25, v26, groupCopy, toCopy, self->_uniqueID);

    v27 = *MEMORY[0x1E69A6230];
    v31 = objc_msgSend_objectForKey_(self->_coalescedChanges, v28, *MEMORY[0x1E69A6230]);
    if (!v31)
    {
      v31 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v29, v30);
      objc_msgSend_setObject_forKey_(self->_coalescedChanges, v32, v31, v27);
    }

    objc_msgSend_setObject_forKey_(v31, v29, toCopy, groupCopy);
    v34 = objc_msgSend_indexOfObject_(v19, v33, groupCopy);
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_replaceObjectAtIndex_withObject_(v19, v35, v34, toCopy);
      objc_msgSend_reorderGroups_(self, v37, v19);
    }

    objc_msgSend_endChanges(self, v35, v36);
  }
}

- (void)reorderGroup:(id)group order:(id)order
{
  groupCopy = group;
  orderCopy = order;
  v9 = objc_msgSend_groupList(self, v7, v8);
  v11 = objc_msgSend_containsObject_(v9, v10, groupCopy);

  if (v11)
  {
    objc_msgSend_beginChanges(self, v12, v13);
    v14 = *MEMORY[0x1E69A63B8];
    v18 = objc_msgSend_objectForKey_(self->_coalescedChanges, v15, *MEMORY[0x1E69A63B8]);
    if (!v18)
    {
      v18 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v16, v17);
      objc_msgSend_setObject_forKey_(self->_coalescedChanges, v19, v18, v14);
    }

    v20 = *MEMORY[0x1E69A61C0];
    v23 = objc_msgSend_objectForKey_(v18, v16, *MEMORY[0x1E69A61C0]);
    if (!v23)
    {
      v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v21, v22);
      objc_msgSend_setObject_forKey_(v18, v24, v23, v20);
    }

    objc_msgSend_setObject_forKey_(v23, v21, orderCopy, groupCopy);
    objc_msgSend_endChanges(self, v25, v26);
  }
}

- (void)reorderGroups:(id)groups
{
  groupsCopy = groups;
  if (groupsCopy)
  {
    v20 = groupsCopy;
    v7 = objc_msgSend_groupList(self, v5, v6);
    isEqualToArray = objc_msgSend_isEqualToArray_(v20, v8, v7);

    groupsCopy = v20;
    if ((isEqualToArray & 1) == 0)
    {
      objc_msgSend_beginChanges(self, v10, v11);
      v12 = *MEMORY[0x1E69A63B8];
      v16 = objc_msgSend_objectForKey_(self->_coalescedChanges, v13, *MEMORY[0x1E69A63B8]);
      if (!v16)
      {
        v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v14, v15);
        objc_msgSend_setObject_forKey_(self->_coalescedChanges, v17, v16, v12);
      }

      objc_msgSend_setObject_forKey_(v16, v14, v20, *MEMORY[0x1E69A6240]);
      objc_msgSend_endChanges(self, v18, v19);

      groupsCopy = v20;
    }
  }
}

- (id)propertiesForGroup:(id)group
{
  groupCopy = group;
  v7 = objc_msgSend_count(self->_groups, v5, v6);
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *MEMORY[0x1E69A6228];
    while (1)
    {
      v12 = objc_msgSend_objectAtIndex_(self->_groups, v8, v10);
      v14 = objc_msgSend_objectForKey_(v12, v13, v11);
      if (objc_msgSend_length(v14, v15, v16))
      {
        if (objc_msgSend_isEqualToString_(v14, v17, groupCopy))
        {
          break;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (id)groupMembers:(id)members
{
  v3 = objc_msgSend_propertiesForGroup_(self, a2, members);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A6220]);

  return v5;
}

- (NSArray)groupList
{
  v4 = objc_msgSend_count(self->_groups, a2, v2);
  if (v4)
  {
    v6 = v4;
    v8 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v5, v4);
    v9 = 0;
    v10 = *MEMORY[0x1E69A6228];
    do
    {
      v11 = objc_msgSend_objectAtIndex_(self->_groups, v7, v9);
      v13 = objc_msgSend_objectForKey_(v11, v12, v10);
      if (objc_msgSend_length(v13, v14, v15))
      {
        objc_msgSend_addObject_(v8, v16, v13);
      }

      ++v9;
    }

    while (v6 != v9);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)endChanges
{
  p_coalesceCount = &self->_coalesceCount;
  coalesceCount = self->_coalesceCount;
  if (coalesceCount <= 0)
  {
    sub_1A84DF360();
    coalesceCount = v16;
  }

  self->_coalesceCount = coalesceCount - 1;
  if ((objc_msgSend_makingChanges(self, a2, p_coalesceCount) & 1) == 0)
  {
    if (objc_msgSend_count(self->_coalescedChanges, v5, v6))
    {
      objc_msgSend__applyChangesToTemporaryCache_(self, v7, self->_coalescedChanges);
      v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
      v13 = objc_msgSend_remoteDaemon(v10, v11, v12);
      objc_msgSend_changeGroups_account_(v13, v14, self->_coalescedChanges, self->_uniqueID);
    }

    coalescedChanges = self->_coalescedChanges;
    self->_coalescedChanges = 0;
  }
}

- (void)holdBuddyUpdates
{
  objc_msgSend_beginChanges(self, a2, v2);
  numHolding = self->_numHolding;
  if (!numHolding)
  {
    v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
    v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
    v13 = objc_msgSend_uniqueID(self, v11, v12);
    objc_msgSend_holdBuddyUpdatesAccount_(v10, v14, v13);

    numHolding = self->_numHolding;
  }

  self->_numHolding = numHolding + 1;
}

- (void)_resumeBuddyUpdatesNow
{
  p_numHolding = &self->_numHolding;
  numHolding = self->_numHolding;
  if (numHolding <= 0)
  {
    sub_1A84DF3DC();
    numHolding = v15;
  }

  self->_numHolding = numHolding - 1;
  objc_msgSend_endChanges(self, a2, p_numHolding);
  if (!self->_numHolding)
  {
    v14 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
    v9 = objc_msgSend_remoteDaemon(v14, v7, v8);
    v12 = objc_msgSend_uniqueID(self, v10, v11);
    objc_msgSend_resumeBuddyUpdatesAccount_(v9, v13, v12);
  }
}

- (void)buddyPropertiesChanged:(id)changed
{
  v17 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(changedCopy, v5, &v12, v16, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(changedCopy);
        }

        objc_msgSend_existingIMHandleWithInfo_(self, v7, *(*(&v12 + 1) + 8 * v10));

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(changedCopy, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash
{
  dataCopy = data;
  hashCopy = hash;
  v10 = objc_msgSend_existingIMHandleWithID_(self, v9, changed);
  if (objc_msgSend_length(dataCopy, v11, v12))
  {
    v13 = dataCopy;
  }

  else
  {

    v13 = 0;
  }

  v15 = v13;
  objc_msgSend_setCustomPictureData_key_(v10, v13, v13, hashCopy);
}

- (void)setBuddyProperties:(id)properties buddyPictures:(id)pictures
{
  v78 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  picturesCopy = pictures;
  if (!self->_hasReceivedSync)
  {
    v62 = picturesCopy;
    self->_syncedWithRemoteBuddyList = 1;
    objc_msgSend__markHasSyncedWithRemoteBuddies(self, v7, v8);
    objc_msgSend_setShouldHidePeople_(self->_buddyList, v9, 0);
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = objc_msgSend_arrayOfAllIMHandles(self, v10, v11);
    v15 = objc_msgSend_copy(v12, v13, v14);

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v15;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v71, v77, 16);
    if (v19)
    {
      v20 = *v72;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v72 != v20)
          {
            objc_enumerationMutation(obj);
          }

          objc_msgSend_beginNotificationQueue(*(*(&v71 + 1) + 8 * i), v17, v18);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v71, v77, 16);
      }

      while (v19);
    }

    v58 = objc_msgSend_allKeys(propertiesCopy, v22, v23);
    if (objc_msgSend_count(v58, v24, v25))
    {
      v28 = objc_msgSend_allValues(propertiesCopy, v26, v27);
      objc_msgSend_buddyPropertiesChanged_(selfCopy, v29, v28);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v30 = objc_msgSend_allKeys(v62, v26, v27);
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v67, v76, 16);
    if (v33)
    {
      v34 = *v68;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v68 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v67 + 1) + 8 * j);
          v37 = objc_msgSend_objectForKey_(v62, v32, v36);
          v39 = objc_msgSend_objectForKey_(v37, v38, @"data");
          v41 = objc_msgSend_objectForKey_(v37, v40, @"key");
          v43 = objc_msgSend_existingIMHandleWithID_(selfCopy, v42, v36);
          objc_msgSend_setCustomPictureData_key_(v43, v44, v39, v41);
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v67, v76, 16);
      }

      while (v33);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = obj;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v63, v75, 16);
    if (v49)
    {
      v50 = *v64;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v64 != v50)
          {
            objc_enumerationMutation(v45);
          }

          objc_msgSend_releaseNotificationQueue(*(*(&v63 + 1) + 8 * k), v47, v48);
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v47, &v63, v75, 16);
      }

      while (v49);
    }

    v54 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v52, v53);
    objc_msgSend___mainThreadPostNotificationName_object_(v54, v55, @"__kIMAccountPropertiesAndPicturesLoadedNotification", selfCopy);

    objc_autoreleasePoolPop(context);
    picturesCopy = v62;
  }

  v56 = *MEMORY[0x1E69E9840];
}

- (void)_registrationStatusChanged:(id)changed
{
  countryCode = self->_countryCode;
  self->_countryCode = 0;

  objc_msgSend_loginIfActiveRegistered(self, v5, v6);
}

- (void)accountWillBeRemoved
{
  if (!self->_hasBeenRemoved)
  {
    self->_hasBeenRemoved = 1;
    loginIMHandle = self->_loginIMHandle;
    if (loginIMHandle)
    {
      objc_msgSend__stopRetainingAccount_(loginIMHandle, a2, self);
      v7 = objc_msgSend_me(IMMe, v4, v5);
      objc_msgSend_removeLoginIMHandle_(v7, v6, self->_loginIMHandle);
    }
  }
}

- (void)accountDidDeactivate
{
  if (objc_msgSend_loginStatus(self, a2, v2) >= 2)
  {

    MEMORY[0x1EEE66B58](self, sel_setIMAccountLoginStatus_errorMessage_, 0);
  }
}

- (BOOL)isApprovedForRelay
{
  v3 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  hasRelayApprovedAccount = objc_msgSend_hasRelayApprovedAccount(v3, v4, v5);

  return hasRelayApprovedAccount;
}

- (BOOL)canSendMessages
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__aliases(self, a2, v2);
  if (objc_msgSend_count(v3, v4, v5))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v3;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v34, v38, 16);
    if (v7)
    {
      v9 = v7;
      v31 = v3;
      v10 = *v35;
      v11 = *MEMORY[0x1E69A5568];
      v12 = *MEMORY[0x1E69A63C0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = objc_msgSend_objectForKey_(v14, v8, v11);
          v18 = v15;
          if (v15 && (objc_msgSend_BOOLValue(v15, v16, v17) & 1) == 0)
          {
          }

          else
          {
            v19 = objc_msgSend_objectForKey_(v14, v16, v12);
            v22 = objc_msgSend_lowercaseString(v19, v20, v21);
            v25 = objc_msgSend_trimmedString(v22, v23, v24);
            IsVisible = objc_msgSend__aliasIsVisible_(self, v26, v25);

            if (IsVisible)
            {
              v28 = 1;
              goto LABEL_16;
            }
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v34, v38, 16);
      }

      while (v9);
      v28 = 0;
LABEL_16:
      v3 = v31;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BOOL)registerAccount
{
  v6 = objc_msgSend_supportsRegistration(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
    v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
    v13 = objc_msgSend_uniqueID(self, v11, v12);
    objc_msgSend_registerAccount_(v10, v14, v13);
  }

  return v6;
}

- (BOOL)unregisterAccount
{
  v6 = objc_msgSend_supportsRegistration(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
    v10 = objc_msgSend_remoteDaemon(v7, v8, v9);
    v13 = objc_msgSend_uniqueID(self, v11, v12);
    objc_msgSend_unregisterAccount_(v10, v14, v13);
  }

  return v6;
}

+ (id)nameOfLoginStatus:(unint64_t)status
{
  if (!qword_1ED767990[0])
  {
    qword_1ED767990[0] = @"Offline";

    v4 = qword_1ED767998;
    qword_1ED767998 = @"Disconnected";

    v5 = qword_1ED7679A0;
    qword_1ED7679A0 = @"Disconnecting...";

    v6 = qword_1ED7679A8;
    qword_1ED7679A8 = @"Connecting...";

    v7 = qword_1ED7679B0;
    qword_1ED7679B0 = @"Connected";
  }

  v8 = qword_1ED767990[status];

  return v8;
}

- (void)_notJustLoggedIn
{
  v7 = *MEMORY[0x1E69E9840];
  self->_justLoggedIn = 0;
  v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend___mainThreadPostNotificationName_object_(v6, v4, @"__kIMAccountNoLongerJustLoggedInNotification", self);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnecting
{
  isActive = objc_msgSend_isActive(self, a2, v2);
  if (isActive)
  {
    LOBYTE(isActive) = objc_msgSend_loginStatus(self, v5, v6) >= 2 && objc_msgSend_loginStatus(self, v7, v8) < 4;
  }

  return isActive;
}

- (void)setIMAccountLoginStatus:(unint64_t)status errorMessage:(id)message reason:(int)reason
{
  v46 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  IMLogBacktrace();
  isActive = objc_msgSend_isActive(self, v9, v10);
  loginStatus = self->_loginStatus;
  v15 = status == 3 && loginStatus == 4;
  if (loginStatus != status && !v15)
  {
    v16 = isActive;
    self->_loginStatus = status;
    self->_justLoggedIn = status == 4;
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v12, self, sel__notJustLoggedIn, 0);
    if (v16)
    {
      v19 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v17, v18);
      v20 = MEMORY[0x1E695DF20];
      v22 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, reason);
      v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v20, v23, v22, @"__kIMAccountLoginStatusChangedReasonKey", messageCopy, @"__kIMAccountLoginStatusChangedErrorMessageKey", 0);
      objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v19, v25, @"__kIMAccountLoginStatusChangedNotification", self, v24);
    }

    if (status > 1)
    {
      self->_hasPostedOfflineNotification = 0;
      if (status == 4)
      {
        objc_msgSend__refreshLoginIMHandle(self, v17, v18);
        objc_msgSend_nowLoggedIn(self, v32, v33);
        v36 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v34, v35);
        v37 = MEMORY[0x1E695DF20];
        v39 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v38, reason);
        v41 = objc_msgSend_dictionaryWithObjectsAndKeys_(v37, v40, v39, @"__kIMAccountLoginStatusChangedReasonKey", messageCopy, @"__kIMAccountLoginStatusChangedErrorMessageKey", 0);
        objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v36, v42, @"__kIMAccountLoggedInNotification", self, v41);
      }
    }

    else
    {
      objc_msgSend_clearTargetState(self, v17, v18);
      objc_msgSend_forgetAllWatches(self, v26, v27);
      if (!self->_hasPostedOfflineNotification)
      {
        v30 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v28, v29);
        objc_msgSend___mainThreadPostNotificationName_object_(v30, v31, @"__kIMAccountLoggedOutNotification", self);

        self->_hasPostedOfflineNotification = 1;
      }

      objc_msgSend_nowLoggedOut(self, v28, v29);
    }
  }

  if (loginStatus != status)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    objc_msgSend_statusChangedForAccount_from_to_(WeakRetained, v44, self, loginStatus, status);
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)groupsChanged:(id)changed error:(id)error
{
  v146 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  errorCopy = error;
  if (!errorCopy)
  {
    if (!changedCopy)
    {
      goto LABEL_85;
    }

LABEL_6:
    if (self->_targetGroupState != changedCopy)
    {
      if (self->_lastReceivedGroupState != changedCopy)
      {
        objc_storeStrong(&self->_lastReceivedGroupState, changed);
      }

      if (objc_msgSend_isAwaitingTargetGroupState(self, v8, v9))
      {
        if (!objc_msgSend_hasTargetGroupStateBeenMet(self, v14, v15))
        {
          goto LABEL_85;
        }

        objc_msgSend_clearTargetState(self, v16, v17);
      }
    }

    v115 = errorCopy;
    context = objc_autoreleasePoolPush();
    groups = self->_groups;
    if (groups == changedCopy || (objc_msgSend_isEqualToArray_(changedCopy, v18, groups) & 1) != 0)
    {
LABEL_84:
      objc_msgSend_watchBuddiesIfNecessary(self, v18, groups);
      objc_autoreleasePoolPop(context);
      errorCopy = v115;
      goto LABEL_85;
    }

    v114 = changedCopy;
    v20 = objc_msgSend_buddyList(self, v18, groups);
    objc_msgSend_beginCoalescedChanges(v20, v21, v22);

    objc_storeStrong(&self->_groups, changed);
    v117 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v118 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v23 = MEMORY[0x1E695DF90];
    v26 = objc_msgSend_count(self->_groups, v24, v25);
    v120 = objc_msgSend_dictionaryWithCapacity_(v23, v27, v26);
    v123 = objc_msgSend_count(self->_groups, v28, v29);
    if (v123)
    {
      v31 = 0;
      obj = *MEMORY[0x1E69A6228];
      v119 = *MEMORY[0x1E69A6220];
      do
      {
        v125 = v31;
        v127 = objc_msgSend_objectAtIndex_(self->_groups, v30, v31);
        v33 = v127;
        if (!v127 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v34 = objc_msgSend_objectForKey_(v127, v32, obj);
          v38 = objc_msgSend_objectForKey_(v127, v35, v119);
          if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v39 = objc_msgSend_count(v38, v36, v37);
            v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v129 = v39;
            if (v39)
            {
              for (i = 0; v129 != i; ++i)
              {
                v43 = objc_msgSend_objectAtIndex_(v38, v40, i);
                v45 = objc_msgSend_objectForKey_(v120, v44, v43);
                if (v45)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    goto LABEL_26;
                  }
                }

                v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
                objc_msgSend_setObject_forKey_(v120, v47, v45, v43);
LABEL_26:
                v48 = objc_msgSend_imHandleWithID_(self, v46, v43);
                v51 = objc_msgSend_objectForKey_(self->_sortOrders, v49, v34);
                if (v48)
                {
                  objc_msgSend_addObject_(v41, v50, v48);
                  v53 = objc_msgSend_indexOfObjectIdenticalTo_(v41, v52, v48);
                  if (v53 != objc_msgSend_indexOfObjectIdenticalTo_(v51, v54, v48))
                  {
                    objc_msgSend_addObject_(v118, v50, v48);
                  }
                }

                if ((objc_msgSend_containsObject_(v45, v50, v34) & 1) == 0)
                {
                  objc_msgSend_addObject_(v45, v55, v34);
                }
              }
            }

            objc_msgSend_setObject_forKey_(v117, v40, v41, v34);
          }

          v33 = v127;
        }

        v31 = v125 + 1;
      }

      while (v125 + 1 != v123);
    }

    v56 = self->_members;
    v130 = objc_msgSend_mutableCopy(v120, v57, v58);
    objc_storeStrong(&self->_members, v120);
    v61 = v56;
    if (v56)
    {
      objc_opt_class();
      v62 = v130;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v61 = 0;
      }

      if (!v130)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v62 = v130;
      if (!v130)
      {
        goto LABEL_43;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_44:
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v126 = v61;
      obja = objc_msgSend_allKeys(v61, v59, v60);
      v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v63, &v139, v145, 16);
      if (v128)
      {
        v124 = *v140;
        do
        {
          for (j = 0; j != v128; ++j)
          {
            if (*v140 != v124)
            {
              objc_enumerationMutation(obja);
            }

            v66 = *(*(&v139 + 1) + 8 * j);
            v67 = MEMORY[0x1E695DFD8];
            v68 = objc_msgSend_objectForKey_(v126, v64, v66);
            v70 = objc_msgSend_setWithArray_(v67, v69, v68);

            v71 = MEMORY[0x1E695DFD8];
            v73 = objc_msgSend_objectForKey_(v130, v72, v66);
            v75 = objc_msgSend_setWithArray_(v71, v74, v73);

            if (!v75)
            {
              v75 = objc_msgSend_set(MEMORY[0x1E695DFD8], v76, v77);
            }

            v78 = objc_msgSend_count(v70, v76, v77);
            v81 = objc_msgSend_count(v75, v79, v80);
            v84 = objc_msgSend_imHandleWithID_(self, v82, v66);
            if ((v78 != 0) == (v81 == 0))
            {
              if (v78)
              {
                v85 = v81 == 0;
              }

              else
              {
                v85 = 0;
              }

              if (v85)
              {
                objc_msgSend_imHandle_buddyStatusChanged_(self, v83, v84, 0);
              }

              else
              {
                objc_msgSend_imHandle_buddyStatusChanged_(self, v83, v84, 1);
              }
            }

            if ((objc_msgSend_isEqualToSet_(v70, v83, v75) & 1) == 0 && self->_syncedWithRemoteBuddyList && self->_hasReceivedSync)
            {
              objc_msgSend_postNotificationName_(v84, v86, @"__kIMHandleGroupsChangedNotification");
            }

            objc_msgSend_removeObjectForKey_(v130, v86, v66);
          }

          v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v64, &v139, v145, 16);
        }

        while (v128);
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v89 = objc_msgSend_allKeys(v130, v87, v88);
      v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v135, v144, 16);
      if (v92)
      {
        v93 = *v136;
        do
        {
          for (k = 0; k != v92; ++k)
          {
            if (*v136 != v93)
            {
              objc_enumerationMutation(v89);
            }

            v95 = objc_msgSend_imHandleWithID_(self, v91, *(*(&v135 + 1) + 8 * k));
            objc_msgSend_imHandle_buddyStatusChanged_(self, v96, v95, 1);
            if (self->_syncedWithRemoteBuddyList && self->_hasReceivedSync)
            {
              objc_msgSend_postNotificationName_(v95, v97, @"__kIMHandleGroupsChangedNotification");
            }
          }

          v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v91, &v135, v144, 16);
        }

        while (v92);
      }

      objc_storeStrong(&self->_sortOrders, v117);
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v98 = v118;
      v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v131, v143, 16);
      if (v101)
      {
        v102 = *v132;
        do
        {
          for (m = 0; m != v101; ++m)
          {
            if (*v132 != v102)
            {
              objc_enumerationMutation(v98);
            }

            objc_msgSend_postNotificationName_(*(*(&v131 + 1) + 8 * m), v100, @"__kIMHandleSortOrderChangedNotification");
          }

          v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v100, &v131, v143, 16);
        }

        while (v101);
      }

      if (!self->_syncedWithRemoteBuddyList)
      {
        objc_msgSend__syncWithRemoteBuddies(self, v104, v105);
      }

      v106 = objc_msgSend_buddyList(self, v104, v105);
      objc_msgSend_endCoalescedChanges(v106, v107, v108);

      v111 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v109, v110);
      objc_msgSend___mainThreadPostNotificationName_object_(v111, v112, @"__kIMAccountGroupsChangedNotification", self);

      changedCopy = v114;
      goto LABEL_84;
    }

LABEL_43:
    v130 = 0;
    goto LABEL_44;
  }

  objc_msgSend_clearTargetState(self, v8, v9);
  if (changedCopy)
  {
    goto LABEL_6;
  }

  if (objc_msgSend_isAwaitingTargetGroupState(self, v8, v9))
  {
    objc_msgSend_clearTargetState(self, v11, v12);
    objc_msgSend_groupsChanged_error_(self, v13, self->_lastReceivedGroupState, 0);
  }

LABEL_85:

  v113 = *MEMORY[0x1E69E9840];
}

- (int64_t)compareNames:(id)names
{
  namesCopy = names;
  v7 = objc_msgSend_serviceName(self, v5, v6);
  v10 = objc_msgSend_serviceName(namesCopy, v8, v9);

  v12 = objc_msgSend_localizedCompareToString_(v7, v11, v10);
  return v12;
}

- (void)_clearImageCache
{
  smallImage = self->_smallImage;
  self->_smallImage = 0;

  accountImage = self->_accountImage;
  self->_accountImage = 0;
}

- (NSArray)arrayOfAllIMHandles
{
  v33 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_lock, a2, v2);
  if (objc_msgSend_count(self->_imHandles, v4, v5))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = objc_msgSend_count(self->_imHandles, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = self->_imHandles;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v32, 16);
    if (v16)
    {
      v18 = v16;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v21 = objc_msgSend_objectForKey_(self->_imHandles, v17, *(*(&v28 + 1) + 8 * i), v28);
          objc_msgSend_addObject_(v13, v22, v21);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v32, 16);
      }

      while (v18);
    }

    v25 = objc_msgSend_copy(v13, v23, v24);
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  objc_msgSend_unlock(self->_lock, v6, v7, v28);
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)imHandleWithInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_objectForKey_(infoCopy, v5, *MEMORY[0x1E69A6310]);
  if (v7)
  {
    v8 = objc_msgSend_imHandleWithID_(self, v6, v7);
    v10 = v8;
    if (v8)
    {
      objc_msgSend_propertiesChanged_(v8, v9, infoCopy);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)existingIMHandleWithInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_objectForKey_(infoCopy, v5, *MEMORY[0x1E69A6310]);
  if (v7)
  {
    v8 = objc_msgSend_existingIMHandleWithID_(self, v6, v7);
    v10 = v8;
    if (v8)
    {
      objc_msgSend_propertiesChanged_(v8, v9, infoCopy);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)existingIMHandleWithID:(id)d alreadyCanonical:(BOOL)canonical
{
  dCopy = d;
  if (dCopy)
  {
    v9 = dCopy;
    if (canonical)
    {
      v10 = 0;
    }

    else
    {
      v12 = objc_msgSend_canonicalFormOfID_(self, v7, dCopy);
      if (objc_msgSend_isEqualToString_(v9, v13, v12))
      {
        v10 = 0;
      }

      else
      {
        v10 = IMCleanupPhoneNumber();
      }

      v9 = v12;
    }

    objc_msgSend_lock(self->_lock, v7, v8);
    v11 = objc_msgSend_objectForKey_(self->_imHandles, v14, v9);
    objc_msgSend_unlock(self->_lock, v15, v16);
    if (v10)
    {
      v19 = objc_msgSend_originalID(v11, v17, v18);
      isEqualToString = objc_msgSend_isEqualToString_(v19, v20, v10);

      if ((isEqualToString & 1) == 0)
      {
        v24 = objc_msgSend_trimmedString(v10, v22, v23);
        if (objc_msgSend_length(v24, v25, v26) < 4)
        {
        }

        else
        {
          hasPrefix = objc_msgSend_hasPrefix_(v10, v27, @"+");

          if ((hasPrefix & 1) == 0)
          {
            objc_msgSend__updateOriginalID_(v11, v29, v10);
            objc_msgSend__setOriginalID_(v11, v30, v10);
          }
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_imHandleWithID:(id)d alreadyCanonical:(BOOL)canonical originalID:(id)iD countryCode:(id)code
{
  dCopy = d;
  iDCopy = iD;
  codeCopy = code;
  if (!dCopy || (objc_msgSend_null(MEMORY[0x1E695DFB0], v12, v13), v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == dCopy))
  {
    v18 = 0;
  }

  else
  {
    if (canonical)
    {
      v17 = 0;
    }

    else
    {
      v19 = objc_msgSend_canonicalFormOfID_(self, v16, dCopy);
      if (objc_msgSend_isEqualToString_(dCopy, v20, v19))
      {
        v17 = 0;
      }

      else
      {
        v17 = IMCleanupPhoneNumber();
      }

      dCopy = v19;
    }

    v18 = objc_msgSend_existingIMHandleWithID_alreadyCanonical_(self, v16, dCopy, 1);
    if (!v18)
    {
      v23 = [IMHandle alloc];
      v18 = objc_msgSend_initWithAccount_ID_alreadyCanonical_(v23, v24, self, dCopy, 1);
      v27 = objc_msgSend_defaultHandleCapabilities(self, v25, v26);
      if (v27)
      {
        objc_msgSend__setCapabilities_(v18, v21, v27);
      }
    }

    if (v17)
    {
      v28 = objc_msgSend_originalID(v18, v21, v22);
      isEqualToString = objc_msgSend_isEqualToString_(v28, v29, v17);

      if ((isEqualToString & 1) == 0)
      {
        v33 = objc_msgSend_trimmedString(v17, v31, v32);
        if (objc_msgSend_length(v33, v34, v35) < 4)
        {
        }

        else
        {
          hasPrefix = objc_msgSend_hasPrefix_(v17, v36, @"+");

          if ((hasPrefix & 1) == 0)
          {
            objc_msgSend__updateOriginalID_(v18, v38, v17);
            objc_msgSend__setOriginalID_(v18, v39, v17);
          }
        }
      }
    }
  }

  return v18;
}

- (id)imHandleWithID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (dCopy)
  {
    if (objc_msgSend_length(dCopy, v7, v8) == 1 && (objc_msgSend_isEqualToString_(dCopy, v10, @"+") & 1) != 0)
    {
      v11 = 0;
      v12 = dCopy;
    }

    else
    {
      v13 = objc_msgSend_canonicalFormOfID_countryCode_(self, v10, dCopy, codeCopy);
      if (objc_msgSend_isEqualToString_(dCopy, v14, v13))
      {
        v15 = 0;
      }

      else
      {
        v15 = IMCleanupPhoneNumber();
      }

      v12 = v13;

      v11 = objc_msgSend_existingIMHandleWithID_alreadyCanonical_(self, v16, v12, 1);
      if (!v11)
      {
        v19 = [IMHandle alloc];
        v11 = objc_msgSend_initWithAccount_ID_alreadyCanonical_(v19, v20, self, v12, 1);
        v23 = objc_msgSend_defaultHandleCapabilities(self, v21, v22);
        if (v23)
        {
          objc_msgSend__setCapabilities_(v11, v17, v23);
        }
      }

      if (v15)
      {
        v24 = objc_msgSend_originalID(v11, v17, v18);
        isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v15);

        if ((isEqualToString & 1) == 0)
        {
          v29 = objc_msgSend_trimmedString(v15, v27, v28);
          if (objc_msgSend_length(v29, v30, v31) < 4)
          {
          }

          else
          {
            hasPrefix = objc_msgSend_hasPrefix_(v15, v32, @"+");

            if ((hasPrefix & 1) == 0)
            {
              objc_msgSend__updateOriginalID_(v11, v34, v15);
              objc_msgSend__setOriginalID_(v11, v35, v15);
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  return v11;
}

- (id)existingIMHandleWithID:(id)d countryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  if (dCopy && (objc_msgSend_isEqualToString_(dCopy, v7, @"+") & 1) == 0)
  {
    v11 = objc_msgSend_canonicalFormOfID_countryCode_(self, v9, dCopy, codeCopy);
    if (objc_msgSend_isEqualToString_(dCopy, v12, v11))
    {
      v15 = 0;
    }

    else
    {
      v15 = IMCleanupPhoneNumber();
    }

    objc_msgSend_lock(self->_lock, v13, v14);
    imHandles = self->_imHandles;
    v18 = objc_msgSend_canonicalFormOfID_countryCode_(self, v17, dCopy, codeCopy);
    v10 = objc_msgSend_objectForKey_(imHandles, v19, v18);

    objc_msgSend_unlock(self->_lock, v20, v21);
    if (v15)
    {
      v24 = objc_msgSend_originalID(v10, v22, v23);
      isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v15);

      if ((isEqualToString & 1) == 0)
      {
        v29 = objc_msgSend_trimmedString(v15, v27, v28);
        if (objc_msgSend_length(v29, v30, v31) < 4)
        {
        }

        else
        {
          hasPrefix = objc_msgSend_hasPrefix_(v15, v32, @"+");

          if ((hasPrefix & 1) == 0)
          {
            objc_msgSend__updateOriginalID_(v10, v34, v15);
            objc_msgSend__setOriginalID_(v10, v35, v15);
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)sortOrderForIMHandle:(id)handle inGroup:(id)group
{
  sortOrders = self->_sortOrders;
  handleCopy = handle;
  v8 = objc_msgSend_objectForKey_(sortOrders, v7, group);
  v10 = objc_msgSend_indexOfObjectIdenticalTo_(v8, v9, handleCopy);

  return v10;
}

- (void)requestBuddyListAuthorizationFromIMHandle:(id)handle
{
  handleCopy = handle;
  v14 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v9 = objc_msgSend_remoteDaemon(v14, v7, v8);
  v12 = objc_msgSend_ID(handleCopy, v10, v11);

  objc_msgSend_requestSubscriptionTo_account_(v9, v13, v12, self->_uniqueID);
}

- (id)handlesForCNContact:(id)contact
{
  contactCopy = contact;
  v6 = objc_msgSend_sharedInstance(IMHandleRegistrar, v4, v5);
  v9 = objc_msgSend_identifier(contactCopy, v7, v8);

  v11 = objc_msgSend_handlesForCNIdentifier_(v6, v10, v9);
  v14 = objc_msgSend_allObjects(v11, v12, v13);

  return v14;
}

- (void)_watchBuddiesIfNecessary
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_arrayOfAllIMHandles(self, a2, v2);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ((objc_msgSend_watchingIMHandle(v16, v11, v12, v18) & 1) == 0)
        {
          objc_msgSend_startWatchingIMHandle_(self, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v22, 16);
    }

    while (v13);
  }

  self->_needToCheckForWatchedIMHandles = 0;
  v17 = *MEMORY[0x1E69E9840];
}

- (void)watchBuddiesIfNecessary
{
  if (objc_msgSend_hasCapability_(self, a2, 0x200000000) && !self->_needToCheckForWatchedIMHandles)
  {
    self->_needToCheckForWatchedIMHandles = 1;

    objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel__watchBuddiesIfNecessary, 0, 1.0);
  }
}

- (void)startWatchingIMHandle:(id)handle
{
  handleCopy = handle;
  if (objc_msgSend_hasCapability_(self, v4, 0x200000000) && (objc_msgSend_watchingIMHandle(handleCopy, v5, v6) & 1) == 0 && self->_loginIMHandle != handleCopy)
  {
    objc_msgSend_setHasTemporaryWatch_(handleCopy, v7, 1);
    v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
    v13 = objc_msgSend_remoteDaemon(v10, v11, v12);
    v16 = objc_msgSend_ID(handleCopy, v14, v15);
    objc_msgSend_startWatchingBuddy_account_(v13, v17, v16, self->_uniqueID);
  }
}

- (void)stopWatchingIMHandle:(id)handle
{
  handleCopy = handle;
  if (objc_msgSend_watchingIMHandle(handleCopy, v4, v5) && self->_loginIMHandle != handleCopy)
  {
    objc_msgSend_setHasTemporaryWatch_(handleCopy, v6, 0);
    v9 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
    v12 = objc_msgSend_remoteDaemon(v9, v10, v11);
    v15 = objc_msgSend_ID(handleCopy, v13, v14);
    objc_msgSend_stopWatchingBuddy_account_(v12, v16, v15, self->_uniqueID);
  }
}

- (void)forgetAllWatches
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_hasCapability_(self, a2, 0x200000000))
  {
    v5 = objc_msgSend_arrayOfAllIMHandles(self, v3, v4);
    v8 = objc_msgSend_copy(v5, v6, v7);

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
    if (v11)
    {
      v13 = v11;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_setHasTemporaryWatch_(*(*(&v17 + 1) + 8 * v15++), v12, 0, v17);
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v17, v21, 16);
      }

      while (v13);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)registerIMHandle:(id)handle
{
  handleCopy = handle;
  objc_msgSend_lock(self->_lock, v4, v5);
  v10 = objc_msgSend_ID(handleCopy, v6, v7);
  if (v10)
  {
    v11 = objc_msgSend_objectForKey_(self->_imHandles, v8, v10);

    if (!v11)
    {
      objc_msgSend_setObject_forKey_(self->_imHandles, v8, handleCopy, v10);
    }
  }

  objc_msgSend_unlock(self->_lock, v8, v9);
}

- (void)unregisterIMHandleWithID:(id)d
{
  lock = self->_lock;
  dCopy = d;
  objc_msgSend_lock(lock, v6, v7);
  objc_msgSend_removeObjectForKey_(self->_imHandles, v8, dCopy);

  v11 = self->_lock;

  objc_msgSend_unlock(v11, v9, v10);
}

+ (id)arrayOfAllIMHandles
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = objc_msgSend_sharedInstance(IMAccountController, v3, v4, 0);
  v8 = objc_msgSend_accounts(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_arrayOfAllIMHandles(*(*(&v22 + 1) + 8 * i), v11, v12);
        if (objc_msgSend_count(v16, v17, v18))
        {
          objc_msgSend_addObjectsFromArray_(v2, v19, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)allBuddyListIMHandles
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = objc_msgSend_sharedInstance(IMAccountController, v3, v4, 0);
  v8 = objc_msgSend_accounts(v5, v6, v7);

  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v23, v27, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_buddyList(*(*(&v23 + 1) + 8 * i), v11, v12);
        v19 = objc_msgSend_people(v16, v17, v18);
        objc_msgSend_addObjectsFromArray_(v2, v20, v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v23, v27, 16);
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)disconnectAllIMHandles
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_login(self, a2, v2);
  v6 = objc_msgSend_imHandleWithID_(self, v5, v4);
  objc_msgSend_statusChanged_message_(v6, v7, 1, &stru_1F1B76F98);

  groups = self->_groups;
  self->_groups = 0;

  members = self->_members;
  self->_members = 0;

  sortOrders = self->_sortOrders;
  self->_sortOrders = 0;

  v13 = objc_msgSend_arrayOfAllIMHandles(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v16;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v34, v38, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v34 + 1) + 8 * v24);
        v26 = objc_msgSend_sharedInstance(IMHandleRegistrar, v20, v21, v34);
        objc_msgSend_clearSiblingCacheForIMHandle_(v26, v27, v25);

        v30 = objc_msgSend_buddyList(self, v28, v29);
        objc_msgSend_removeIMHandle_(v30, v31, v25);

        objc_msgSend_statusChanged_message_(v25, v32, 0, &stru_1F1B76F98);
        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v34, v38, 16);
    }

    while (v22);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)imHandle:(id)handle buddyStatusChanged:(BOOL)changed
{
  changedCopy = changed;
  handleCopy = handle;
  v8 = objc_msgSend_account(handleCopy, v6, v7);

  if (v8 == self)
  {
    v11 = objc_msgSend_buddyList(self, v9, v10);
    if ((objc_msgSend_isLoginIMHandle(handleCopy, v12, v13) & 1) == 0)
    {
      if (changedCopy)
      {
        objc_msgSend_setHasTemporaryWatch_(handleCopy, v14, 0);
        if (objc_msgSend_addIMHandle_(v11, v15, handleCopy) && !objc_msgSend_status(handleCopy, v16, v17) && self->_hasReceivedSync)
        {
          objc_msgSend_statusChanged_(handleCopy, v16, 1);
        }
      }

      else
      {
        objc_msgSend_removeIMHandle_(v11, v14, handleCopy);
      }

      objc_msgSend_postNotificationName_(handleCopy, v16, @"__kIMHandleIsBuddyStatusChangedNotification");
    }
  }
}

- (void)handleSubscriptionRequestFrom:(id)from withMessage:(id)message
{
  messageCopy = message;
  v7 = objc_msgSend_imHandleWithInfo_(self, v6, from);
  if (objc_msgSend_isBuddy(v7, v8, v9))
  {
    objc_msgSend_setBuddyListAuthorization_forIMHandle_(self, v10, 1, v7);
  }

  else if (messageCopy)
  {
    v11 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v10, messageCopy, @"Message");
    objc_msgSend__postNotificationName_userInfo_(v7, v12, @"__kIMHandleAuthorizationRequestNotification", v11);
  }

  else
  {
    objc_msgSend__postNotificationName_userInfo_(v7, v10, @"__kIMHandleAuthorizationRequestNotification", 0);
  }
}

- (void)nowLoggedOut
{
  objc_msgSend_disconnectAllIMHandles(self, a2, v2);

  objc_msgSend_invalidSettings(self, v4, v5);
}

- (id)chatIDForRoomName:(id)name
{
  v4 = objc_msgSend_lowercaseString(name, a2, name);
  v6 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v5, @" ", &stru_1F1B76F98);

  v8 = objc_msgSend_componentsSeparatedByString_(v6, v7, @"@");
  if (objc_msgSend_count(v8, v9, v10))
  {
    v13 = objc_msgSend___imFirstObject(v8, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  if (objc_msgSend_count(v8, v11, v12) < 2)
  {
    v16 = 0;
    v19 = objc_msgSend_length(0, v14, v15);
  }

  else
  {
    v16 = objc_msgSend_objectAtIndex_(v8, v14, 1);
    v19 = objc_msgSend_length(v16, v17, v18);
  }

  if (!v19 || (objc_msgSend_server(self, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v16, v23, v22), v22, isEqualToString))
  {
    v25 = objc_msgSend_defaultChatSuffix(self, v20, v21);
    if (objc_msgSend_length(v25, v26, v27))
    {
      v28 = v25;

      v16 = v28;
    }
  }

  if (objc_msgSend_length(v16, v20, v21))
  {
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v29, @"%@@%@", v13, v16);
  }

  else
  {
    v30 = v13;
  }

  v31 = v30;

  return v31;
}

- (id)defaultChatSuffix
{
  if (objc_msgSend_hasCapability_(self, a2, 0x8000000000))
  {
    v4 = objc_msgSend_objectForKey_(self, v3, *MEMORY[0x1E69A6418]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_FZChatRoomValidity)validityOfChatRoomName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_length(nameCopy, v5, v6);
  v10 = objc_msgSend_service(self, v8, v9);
  v13 = objc_msgSend_serviceProperties(v10, v11, v12);
  v15 = objc_msgSend_objectForKey_(v13, v14, *MEMORY[0x1E69A5E38]);
  v18 = objc_msgSend_intValue(v15, v16, v17);

  if (v18)
  {
    v21 = v7 < 1;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = objc_msgSend_characterAtIndex_(nameCopy, v19, 0);
    if ((v22 - 58) > 0xFFFFFFF5)
    {
      v61 = v22;
LABEL_31:
      v64 = 2;
      goto LABEL_36;
    }
  }

  v23 = objc_msgSend_service(self, v19, v20);
  v26 = objc_msgSend_serviceProperties(v23, v24, v25);
  v28 = objc_msgSend_objectForKey_(v26, v27, *MEMORY[0x1E69A5E28]);
  v31 = objc_msgSend_intValue(v28, v29, v30);

  v34 = objc_msgSend_service(self, v32, v33);
  v37 = objc_msgSend_serviceProperties(v34, v35, v36);
  v39 = objc_msgSend_objectForKey_(v37, v38, *MEMORY[0x1E69A5E20]);
  v42 = objc_msgSend_intValue(v39, v40, v41);

  v45 = objc_msgSend_service(self, v43, v44);
  v48 = objc_msgSend_serviceProperties(v45, v46, v47);
  v50 = objc_msgSend_objectForKey_(v48, v49, *MEMORY[0x1E69A5E30]);
  v53 = objc_msgSend_intValue(v50, v51, v52);

  if (!(v31 | v53))
  {
LABEL_35:
    v64 = 0;
    v61 = 32;
    goto LABEL_36;
  }

  if (v7 < 1)
  {
    v66 = 1;
    if (v53)
    {
LABEL_33:
      if (v66)
      {
        v67 = objc_msgSend_defaultChatSuffix(self, v54, v55);
        v70 = objc_msgSend_length(v67, v68, v69);

        if (!v70)
        {
LABEL_37:
          v61 = 64;
          v64 = 3;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_35;
  }

  selfCopy = self;
  v56 = 0;
  v57 = (v7 - 1);
  v58 = v7 & 0x7FFFFFFF;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v60 = objc_msgSend_characterAtIndex_(nameCopy, v54, v56);
    v61 = v60;
    if (v31)
    {
      v62 = !v42 && v60 == 32;
      v63 = v62;
      v64 = 1;
      v65 = (v60 - 58) >= 0xFFFFFFF6 || (v60 & 0xFFDF) - 91 >= 0xFFFFFFE6;
      if (!v65 || v63)
      {
        break;
      }
    }

    if (v53 && v60 == 64)
    {
      v61 = 64;
      if (v59 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_31;
      }

      v64 = 2;
      if (!v56)
      {
        break;
      }

      v59 = v56;
      if (v57 == v56)
      {
        goto LABEL_37;
      }
    }

    if (v58 == ++v56)
    {
      v66 = v59 == 0x7FFFFFFFFFFFFFFFLL;
      self = selfCopy;
      if (v53)
      {
        goto LABEL_33;
      }

      goto LABEL_35;
    }
  }

LABEL_36:

  return (v64 | (v61 << 32));
}

- (NSString)authorizationToken
{
  if (objc_msgSend_supportsAuthorization(self, a2, v2))
  {
    v4 = dispatch_semaphore_create(0);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_1A8259AE0;
    v33 = sub_1A825AE9C;
    v34 = 0;
    v7 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE98], v5, v6);
    v10 = objc_msgSend_authorizationID(self, v8, v9);
    v13 = objc_msgSend_login(self, v11, v12);
    v16 = objc_msgSend_internalName(self, v14, v15);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_1A8295DD8;
    v26 = &unk_1E78108D0;
    v28 = &v29;
    v17 = v4;
    v27 = v17;
    objc_msgSend_fetchAuthTokenForProfileID_username_service_outRequestID_completionBlock_(v7, v18, v10, v13, v16, 0, &v23);

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    if (objc_msgSend_length(v30[5], v19, v20, v23, v24, v25, v26))
    {
      v21 = v30[5];
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)authenticateAccount
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_supportsAuthorization(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_msgSend_uniqueID(self, v8, v9);
      v23 = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to authenticate account: %@", &v23, 0xCu);
    }

    v13 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
    v16 = objc_msgSend_remoteDaemon(v13, v14, v15);
    v19 = objc_msgSend_uniqueID(self, v17, v18);
    objc_msgSend_authenticateAccount_(v16, v20, v19);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)enrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  v14 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v9 = objc_msgSend_remoteDaemon(v14, v7, v8);
  v12 = objc_msgSend_uniqueID(self, v10, v11);
  objc_msgSend_enrollDeviceForSMSRelay_account_(v9, v13, relayCopy, v12);
}

- (void)unEnrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  v14 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v9 = objc_msgSend_remoteDaemon(v14, v7, v8);
  v12 = objc_msgSend_uniqueID(self, v10, v11);
  objc_msgSend_unEnrollDeviceForSMSRelay_account_(v9, v13, relayCopy, v12);
}

- (void)enrollSelfDeviceInSMSRelay
{
  v11 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v6 = objc_msgSend_remoteDaemon(v11, v4, v5);
  v9 = objc_msgSend_uniqueID(self, v7, v8);
  objc_msgSend_enrollSelfDeviceForSMSRelay_(v6, v10, v9);
}

- (BOOL)updateAuthorizationCredentials:(id)credentials token:(id)token
{
  v43 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  tokenCopy = token;
  v12 = objc_msgSend_supportsAuthorization(self, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_registration(MEMORY[0x1E69A6138], v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = IMGetEnvironmentName();
      *buf = 138412802;
      v38 = credentialsCopy;
      v39 = 2112;
      v40 = credentialsCopy;
      v41 = 2112;
      v42 = v14;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Updating token for account %@:%@ (Environment: %@)", buf, 0x20u);
    }

    if (credentialsCopy)
    {
      objc_msgSend__setObject_forKey_(self, v15, credentialsCopy, *MEMORY[0x1E69A63F0]);
    }

    else
    {
      objc_msgSend__removeObjectForKey_(self, v15, *MEMORY[0x1E69A63F0]);
    }

    v18 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE98], v16, v17);
    v21 = objc_msgSend_login(self, v19, v20);
    v24 = objc_msgSend_internalName(self, v22, v23);
    objc_msgSend_setAuthTokenForProfileID_username_service_authToken_selfHandle_outRequestID_completionBlock_(v18, v25, credentialsCopy, v21, v24, tokenCopy, 0, 0, &unk_1F1B6DEA0);

    v28 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
    v31 = objc_msgSend_remoteDaemon(v28, v29, v30);
    objc_msgSend_updateAuthorizationCredentials_token_account_(v31, v32, credentialsCopy, tokenCopy, self->_uniqueID);

    objc_msgSend_writeSettings(self, v33, v34);
  }

  v35 = *MEMORY[0x1E69E9840];
  return v12;
}

- (NSDictionary)profileInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (objc_msgSend_count(self->_profile, v4, v5))
  {
    objc_msgSend_addEntriesFromDictionary_(v3, v6, self->_profile);
  }

  if (objc_msgSend_count(self->_profileChanges, v6, v7))
  {
    objc_msgSend_addEntriesFromDictionary_(v3, v8, self->_profileChanges);
  }

  return v3;
}

- (id)profileValueForKey:(id)key
{
  keyCopy = key;
  v6 = objc_msgSend_objectForKey_(self->_profileChanges, v5, keyCopy);
  v8 = v6;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = objc_msgSend_objectForKey_(self->_profile, v7, keyCopy);
  }

  v10 = v9;

  return v10;
}

- (id)profileStringForKey:(id)key
{
  v3 = objc_msgSend_profileValueForKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)removeProfileValueForKey:(id)key
{
  keyCopy = key;
  v6 = objc_msgSend_profileValueForKey_(self, v5, keyCopy);

  if (v6)
  {
    objc_msgSend_setProfileValue_forKey_(self, v7, 0, keyCopy);
  }

  return v6 != 0;
}

- (BOOL)setProfileValue:(id)value forKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    v10 = objc_msgSend_registration(MEMORY[0x1E69A6138], v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = valueCopy;
      v25 = 2112;
      v26 = keyCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Setting profile value: %@   forKey: %@", &v23, 0x16u);
    }

    v13 = objc_msgSend_profileValueForKey_(self, v11, keyCopy);
    if (v13 != valueCopy)
    {
      if (valueCopy)
      {
LABEL_10:
        if (!self->_profileChanges)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          profileChanges = self->_profileChanges;
          self->_profileChanges = v18;
        }

        v20 = self->_profileChanges;
        if (valueCopy)
        {
          objc_msgSend_setObject_forKey_(v20, v12, valueCopy, keyCopy);
        }

        else
        {
          objc_msgSend_setObject_forKey_(v20, v12, &stru_1F1B76F98, keyCopy);
        }

        v16 = 1;
        goto LABEL_17;
      }

      v14 = objc_msgSend_objectForKey_(self->_profile, v12, keyCopy);
      if (v14)
      {

        goto LABEL_10;
      }

      v17 = objc_msgSend_objectForKey_(self->_profileChanges, v15, keyCopy);

      if (v17)
      {
        goto LABEL_10;
      }
    }

    v16 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v16 = 0;
LABEL_18:

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)setProfileString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (keyCopy)
  {
    v9 = objc_msgSend_profileStringForKey_(self, v7, keyCopy);
    v11 = v9;
    if (stringCopy && v9 && (objc_msgSend_isEqualToString_(v9, v10, stringCopy) & 1) != 0)
    {
      v12 = 0;
    }

    else
    {
      v12 = objc_msgSend_setProfileValue_forKey_(self, v10, stringCopy, keyCopy);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)validateProfile
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_registration(MEMORY[0x1E69A6138], a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_profileInfo(self, v5, v6);
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Requesting validation of profile info: %@", &v20, 0xCu);
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v13 = objc_msgSend_remoteDaemon(v10, v11, v12);
  v16 = objc_msgSend_uniqueID(self, v14, v15);
  objc_msgSend_validateProfileAccount_(v13, v17, v16);

  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)_updateProfileInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (objc_msgSend_isEqualToDictionary_(infoCopy, v6, self->_profile))
  {
    goto LABEL_19;
  }

  v8 = objc_msgSend_profileValueForKey_(self, v7, @"Region");
  v10 = objc_msgSend_profileValueForKey_(self, v9, @"Number");
  v13 = objc_msgSend_profileValidationStatus(self, v11, v12);
  v16 = objc_msgSend_profileValidationErrorReason(self, v14, v15);
  objc_storeStrong(&self->_profile, info);
  v18 = objc_msgSend_profileValueForKey_(self, v17, *MEMORY[0x1E69A6478]);
  self->_profileStatus = objc_msgSend_intValue(v18, v19, v20);

  v22 = objc_msgSend_profileValueForKey_(self, v21, @"Region");
  v24 = v22;
  if (v22 == v8)
  {
  }

  else
  {
    v25 = objc_msgSend_profileValueForKey_(self, v23, @"Region");
    isEqualToString = objc_msgSend_isEqualToString_(v25, v26, v8);

    if (!isEqualToString)
    {
LABEL_8:
      v31 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v28, v29);
      objc_msgSend___mainThreadPostNotificationName_object_(v31, v35, @"__kIMAccountProfileChangedNotification", self);
      goto LABEL_9;
    }
  }

  v31 = objc_msgSend_profileValueForKey_(self, v28, @"Number");
  if (v31 != v10)
  {
    v32 = objc_msgSend_profileValueForKey_(self, v30, @"Number");
    v34 = objc_msgSend_isEqualToString_(v32, v33, v10);

    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  if (objc_msgSend_profileValidationStatus(self, v28, v29) != v13 || objc_msgSend_profileValidationErrorReason(self, v36, v37) != v16)
  {
    countryCode = self->_countryCode;
    self->_countryCode = 0;

    v41 = objc_msgSend_profileValidationStatus(self, v39, v40);
    v44 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v42, v43);
    v45 = MEMORY[0x1E695DF20];
    v46 = MEMORY[0x1E696AD98];
    v49 = objc_msgSend_profileValidationStatus(self, v47, v48);
    v51 = objc_msgSend_numberWithInteger_(v46, v50, v49);
    v55 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v52, v13);
    if (v41 == -1)
    {
      v57 = MEMORY[0x1E696AD98];
      v58 = objc_msgSend_profileValidationErrorReason(self, v53, v54);
      v56 = objc_msgSend_numberWithInteger_(v57, v59, v58);
      objc_msgSend_dictionaryWithObjectsAndKeys_(v45, v60, v51, @"__kIMAccountNewStatusKey", v55, @"__kIMAccountOldStatusKey", v56, @"__kIMAccountProfileValidationStatusFailedReasonKey", 0);
    }

    else
    {
      v56 = 0;
      objc_msgSend_dictionaryWithObjectsAndKeys_(v45, v53, v51, @"__kIMAccountNewStatusKey", v55, @"__kIMAccountOldStatusKey", 0, @"__kIMAccountProfileValidationStatusFailedReasonKey", 0);
    }
    v61 = ;
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v44, v62, @"__kIMAccountProfileValidationStatusChangedNotification", self, v61);

    if (v41 == -1)
    {
    }
  }

LABEL_19:
  v63 = *MEMORY[0x1E69E9840];
}

- (NSArray)aliasesToRegister
{
  v2 = objc_msgSend_objectForKey_(self, a2, *MEMORY[0x1E69A6528]);
  v3 = _IDSCopyOrderedAliasStrings();

  v6 = objc_msgSend_array(v3, v4, v5);

  return v6;
}

- (BOOL)_aliasIsVisible:(id)visible
{
  visibleCopy = visible;
  if (objc_msgSend_hasSuffix_(visibleCopy, v5, @"inbox.appleid.apple.com"))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = objc_msgSend_objectForKey_(self, v6, *MEMORY[0x1E69A55A0]);
    v7 = objc_msgSend_containsObject_(v8, v9, visibleCopy) ^ 1;
  }

  return v7;
}

- (id)_aliasInfoForAlias:(id)alias
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lowercaseString(alias, a2, alias);
  v7 = objc_msgSend_trimmedString(v4, v5, v6);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = objc_msgSend__aliases(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v30, v34, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v31;
    v16 = *MEMORY[0x1E69A63C0];
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        v19 = objc_msgSend_objectForKey_(v18, v13, v16);
        v22 = objc_msgSend_lowercaseString(v19, v20, v21);
        v25 = objc_msgSend_trimmedString(v22, v23, v24);

        if (objc_msgSend_isEqualToString_(v25, v26, v7))
        {
          v27 = v18;

          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v30, v34, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_11:

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_statuses
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = objc_msgSend__aliases(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v19, v23, 16);
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v20;
    v10 = *MEMORY[0x1E69A63C8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v14 = objc_msgSend_objectForKey_(v12, v6, v10);
        if (v14)
        {
          v15 = objc_msgSend_objectForKey_(v12, v13, v10);
          objc_msgSend_addObject_(v8, v16, v15);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v19, v23, 16);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isMakoAccount
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_aliasesToRegister(self, a2, v2, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if (!objc_msgSend__aliasIsVisible_(self, v7, *(*(&v14 + 1) + 8 * i)))
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)hasAlias:(id)alias
{
  v4 = objc_msgSend_lowercaseString(alias, a2, alias);
  v7 = objc_msgSend_trimmedString(v4, v5, v6);

  if (objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_aliases(self, v10, v11);
    v14 = objc_msgSend_containsObject_(v12, v13, v7);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)aliasesForType:(int64_t)type
{
  v5 = objc_msgSend_aliases(self, a2, type);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8297438;
  v9[3] = &unk_1E7810918;
  v9[4] = self;
  v9[5] = type;
  v7 = objc_msgSend___imArrayByApplyingBlock_(v5, v6, v9);

  return v7;
}

- (BOOL)addAlias:(id)alias
{
  v20 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    v16 = 138412546;
    v17 = aliasCopy;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to add alias: %@   account: %@", &v16, 0x16u);
  }

  if (aliasCopy)
  {
    v11 = IMSingleObjectArray();
    v13 = objc_msgSend_addAliases_(self, v12, v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)addAliases:(id)aliases
{
  v66 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    *buf = 138412546;
    v63 = aliasesCopy;
    v64 = 2112;
    v65 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to add aliases: %@   account: %@", buf, 0x16u);
  }

  if (objc_msgSend_accountType(self, v11, v12) == 2)
  {
    v14 = 0;
    v15 = aliasesCopy;
  }

  else
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_1A8297918;
    v60[3] = &unk_1E7810940;
    v60[4] = self;
    v15 = objc_msgSend___imArrayByApplyingBlock_(aliasesCopy, v13, v60);

    v18 = objc_msgSend__aliases(self, v16, v17);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = sub_1A8297A18;
    v58[3] = &unk_1E7810940;
    v19 = v18;
    v59 = v19;
    v21 = objc_msgSend___imArrayByApplyingBlock_(v15, v20, v58);
    if (objc_msgSend_count(v21, v22, v23))
    {
      v26 = objc_msgSend__aliases(self, v24, v25);
      v29 = objc_msgSend_mutableCopy(v26, v27, v28);

      if (!v29)
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = v21;
      v30 = v21;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v54, v61, 16);
      if (v32)
      {
        v34 = v32;
        v35 = *v55;
        v36 = *MEMORY[0x1E69A63C0];
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v55 != v35)
            {
              objc_enumerationMutation(v30);
            }

            v38 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v33, *(*(&v54 + 1) + 8 * i), v36, v52);
            objc_msgSend_addObject_(v29, v39, v38);
          }

          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v54, v61, 16);
        }

        while (v34);
      }

      objc_msgSend__setLocalCachedObject_forKey_(self, v40, v29, *MEMORY[0x1E69A63E0]);
      if (objc_msgSend_count(v15, v41, v42))
      {
        v45 = objc_msgSend_sharedController(IMDaemonController, v43, v44);
        v48 = objc_msgSend_remoteDaemon(v45, v46, v47);
        objc_msgSend_addAliases_account_(v48, v49, v30, self->_uniqueID);
      }

      v14 = objc_msgSend_count(v30, v43, v44, v52) != 0;

      v21 = v53;
    }

    else
    {
      v14 = 0;
    }
  }

  v50 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)addAlias:(id)alias type:(int64_t)type
{
  v20 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  v8 = objc_msgSend_registration(MEMORY[0x1E69A6138], v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_uniqueID(self, v9, v10);
    v16 = 138412546;
    v17 = aliasCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEFAULT, "Client request to add alias: %@   account: %@", &v16, 0x16u);
  }

  v13 = objc_msgSend_addAlias_(self, v12, aliasCopy);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)removeAlias:(id)alias
{
  v20 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    v16 = 138412546;
    v17 = aliasCopy;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to remove alias: %@  account: %@", &v16, 0x16u);
  }

  if (aliasCopy)
  {
    v11 = IMSingleObjectArray();
    v13 = objc_msgSend_removeAliases_(self, v12, v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)removeAliases:(id)aliases
{
  v46 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    *buf = 138412546;
    v43 = aliasesCopy;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to remove aliases: %@  account: %@", buf, 0x16u);
  }

  if (objc_msgSend_accountType(self, v11, v12) == 2)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend___imArrayByApplyingBlock_(aliasesCopy, v13, &unk_1F1B6DEE0);
    v18 = objc_msgSend__aliases(self, v16, v17);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_1A8297FA0;
    v40[3] = &unk_1E7810940;
    v19 = v15;
    v41 = v19;
    v21 = objc_msgSend___imArrayByApplyingBlock_(v18, v20, v40);

    v24 = objc_msgSend_registration(MEMORY[0x1E69A6138], v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v21;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "Final set of aliases after removes %@", buf, 0xCu);
    }

    if (v21 && objc_msgSend_count(v21, v25, v26))
    {
      objc_msgSend__setObject_forKey_(self, v25, v21, *MEMORY[0x1E69A63E0]);
    }

    else
    {
      v29 = objc_msgSend_array(MEMORY[0x1E695DEC8], v25, v26);
      objc_msgSend__setObject_forKey_(self, v30, v29, *MEMORY[0x1E69A63E0]);
    }

    if (objc_msgSend_count(aliasesCopy, v27, v28))
    {
      v33 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
      v36 = objc_msgSend_remoteDaemon(v33, v34, v35);
      objc_msgSend_removeAliases_account_(v36, v37, aliasesCopy, self->_uniqueID);
    }

    v14 = objc_msgSend_count(aliasesCopy, v31, v32) != 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int64_t)typeForAlias:(id)alias
{
  v3 = MEMORY[0x1E696AD48];
  aliasCopy = alias;
  v5 = objc_alloc_init(v3);
  objc_msgSend_addCharactersInString_(v5, v6, @"+1234567890#* -().");
  v8 = objc_msgSend_stringByRemovingCharactersFromSet_(aliasCopy, v7, v5);

  v11 = objc_msgSend_trimmedString(v8, v9, v10);
  v14 = objc_msgSend_length(v11, v12, v13);

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  return v15;
}

- (BOOL)unvalidateAlias:(id)alias
{
  if (!alias)
  {
    return 0;
  }

  v4 = IMSingleObjectArray();
  LOBYTE(self) = objc_msgSend_unvalidateAliases_(self, v5, v4);

  return self;
}

- (BOOL)unvalidateAliases:(id)aliases
{
  aliasesCopy = aliases;
  if (objc_msgSend_accountType(self, v5, v6) == 2)
  {
    v9 = 0;
    v10 = aliasesCopy;
  }

  else
  {
    v11 = objc_msgSend_login(self, v7, v8);
    v12 = MEMORY[0x1AC56C3F0]();

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A8298280;
    v25[3] = &unk_1E7810940;
    v13 = v12;
    v26 = v13;
    v10 = objc_msgSend___imArrayByApplyingBlock_(aliasesCopy, v14, v25);

    if (objc_msgSend_count(v10, v15, v16))
    {
      v19 = objc_msgSend_sharedController(IMDaemonController, v17, v18);
      v22 = objc_msgSend_remoteDaemon(v19, v20, v21);
      objc_msgSend_unvalidateAliases_account_(v22, v23, v10, self->_uniqueID);
    }

    v9 = objc_msgSend_count(v10, v17, v18) != 0;
  }

  return v9;
}

- (BOOL)validateAlias:(id)alias
{
  v20 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    v16 = 138412546;
    v17 = aliasCopy;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to validate alias: %@  account: %@", &v16, 0x16u);
  }

  if (aliasCopy)
  {
    v11 = IMSingleObjectArray();
    v13 = objc_msgSend_validateAliases_(self, v12, v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)validateAliases:(id)aliases
{
  v31 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_uniqueID(self, v8, v9);
    v27 = 138412546;
    v28 = aliasesCopy;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Client request to validate aliases: %@  account: %@", &v27, 0x16u);
  }

  if (objc_msgSend_accountType(self, v11, v12) == 2)
  {
    v14 = 0;
    v15 = aliasesCopy;
  }

  else
  {
    v15 = objc_msgSend___imArrayByApplyingBlock_(aliasesCopy, v13, &unk_1F1B6DF00);

    if (objc_msgSend_count(v15, v16, v17))
    {
      v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
      v23 = objc_msgSend_remoteDaemon(v20, v21, v22);
      objc_msgSend_validateAliases_account_(v23, v24, v15, self->_uniqueID);
    }

    v14 = objc_msgSend_count(v15, v18, v19) != 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v14;
}

- (int64_t)validationStatusForAlias:(id)alias
{
  v4 = objc_msgSend__aliasInfoForAlias_(self, a2, alias);
  v6 = v4;
  if (v4)
  {
    v7 = objc_msgSend_objectForKey_(v4, v5, *MEMORY[0x1E69A63C8]);
    v10 = objc_msgSend_intValue(v7, v8, v9);

    if (v10 == 3 || (objc_msgSend_objectForKey_(v6, v11, *MEMORY[0x1E69A63C0]), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_vettedAliases(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_containsObject_(v15, v16, v12), v15, v12, (v17 & 1) == 0))
    {
      v18 = v10;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int64_t)validationErrorReasonForAlias:(id)alias
{
  v3 = objc_msgSend__aliasInfoForAlias_(self, a2, alias);
  v5 = v3;
  if (v3 && (objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A63D8]), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v6;
    v10 = objc_msgSend_intValue(v6, v7, v8);
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v6 = objc_msgSend_objectForKey_(self->_localCache, v5, keyCopy);

  if (v6)
  {
    objc_msgSend_objectForKey_(self->_localCache, v7, keyCopy);
    v11 = LABEL_5:;
    goto LABEL_6;
  }

  v8 = objc_msgSend_objectForKey_(self->_dataChanges, v7, keyCopy);

  if (v8)
  {
    objc_msgSend_objectForKey_(self->_dataChanges, v9, keyCopy);
    goto LABEL_5;
  }

  objc_msgSend_lock(self->_lock, v9, v10);
  v11 = objc_msgSend_objectForKey_(self->_data, v13, keyCopy);
  objc_msgSend_unlock(self->_lock, v14, v15);
LABEL_6:

  return v11;
}

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_dataChanges)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      dataChanges = self->_dataChanges;
      self->_dataChanges = v7;
    }

    v9 = self->_dataChanges;
    if (objectCopy)
    {
      objc_msgSend_setObject_forKey_(v9, objectCopy, objectCopy, keyCopy);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v9, 0, &stru_1F1B76F98, keyCopy);
    }

    objc_msgSend__invalidateCachedAliases(self, v10, v11);
  }
}

- (void)_setLocalCachedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_localCache)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      localCache = self->_localCache;
      self->_localCache = v7;
    }

    v9 = self->_localCache;
    if (objectCopy)
    {
      objc_msgSend_setObject_forKey_(v9, objectCopy, objectCopy, keyCopy);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v9, 0, &stru_1F1B76F98, keyCopy);
    }

    objc_msgSend__invalidateCachedAliases(self, v10, v11);
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (qword_1EB2EA1C0 != -1)
  {
    sub_1A84DF44C();
  }

  if (objc_msgSend_containsObject_(qword_1EB2EA1B8, v6, keyCopy))
  {
    objc_msgSend__setObject_forKey_(self, v8, objectCopy, keyCopy);
  }
}

- (id)stringForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1F1B76F98;
  }

  return v4;
}

- (BOOL)BOOLForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_BOOLValue(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)integerForKey:(id)key
{
  v3 = objc_msgSend_objectForKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_integerValue(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v10 = objc_msgSend_numberWithInteger_(v6, v8, integer);
  objc_msgSend_setObject_forKey_(self, v9, v10, keyCopy);
}

- (void)_setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x1E696AD98];
  keyCopy = key;
  v10 = objc_msgSend_numberWithInteger_(v6, v8, integer);
  objc_msgSend__setObject_forKey_(self, v9, v10, keyCopy);
}

- (id)_persistentPropertyForKey:(id)key
{
  accountPersistentPropertiesChanges = self->_accountPersistentPropertiesChanges;
  keyCopy = key;
  v7 = objc_msgSend_objectForKey_(accountPersistentPropertiesChanges, v6, keyCopy);

  v9 = 312;
  if (!v7)
  {
    v9 = 304;
  }

  v10 = objc_msgSend_objectForKey_(*(&self->super.isa + v9), v8, keyCopy);

  return v10;
}

- (void)_setPersistentPropertyObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_accountPersistentPropertiesChanges)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      accountPersistentPropertiesChanges = self->_accountPersistentPropertiesChanges;
      self->_accountPersistentPropertiesChanges = Mutable;
    }

    v9 = self->_accountPersistentPropertiesChanges;
    if (objectCopy)
    {
      objc_msgSend_setObject_forKey_(v9, objectCopy, objectCopy, keyCopy);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v9, 0, &stru_1F1B76F98, keyCopy);
    }
  }
}

- (NSDictionary)accountPreferences
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (objc_msgSend_count(self->_accountPreferences, v4, v5))
  {
    objc_msgSend_addEntriesFromDictionary_(v3, v6, self->_accountPreferences);
  }

  if (objc_msgSend_count(self->_accountPreferencesChanges, v6, v7))
  {
    objc_msgSend_addEntriesFromDictionary_(v3, v8, self->_accountPreferencesChanges);
  }

  return v3;
}

- (id)objectForPreferenceKey:(id)key
{
  accountPreferencesChanges = self->_accountPreferencesChanges;
  keyCopy = key;
  v7 = objc_msgSend_objectForKey_(accountPreferencesChanges, v6, keyCopy);

  v9 = 296;
  if (!v7)
  {
    v9 = 192;
  }

  v10 = objc_msgSend_objectForKey_(*(&self->super.isa + v9), v8, keyCopy);

  return v10;
}

- (void)setObject:(id)object forPreferenceKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (!self->_accountPreferencesChanges)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      accountPreferencesChanges = self->_accountPreferencesChanges;
      self->_accountPreferencesChanges = v7;
    }

    v9 = self->_accountPreferencesChanges;
    if (objectCopy)
    {
      objc_msgSend_setObject_forKey_(v9, objectCopy, objectCopy, keyCopy);
    }

    else
    {
      objc_msgSend_setObject_forKey_(v9, 0, &stru_1F1B76F98, keyCopy);
    }
  }
}

- (id)stringForPreferenceKey:(id)key
{
  v3 = objc_msgSend_objectForPreferenceKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)BOOLForPreferenceKey:(id)key
{
  v3 = objc_msgSend_objectForPreferenceKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_BOOLValue(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)integerForPreferenceKey:(id)key
{
  v3 = objc_msgSend_objectForPreferenceKey_(self, a2, key);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_intValue(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)displayName
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_aliases(self, a2, v2);
  displayName = self->_displayName;
  v6 = _IDSCopyCallerID();
  v9 = objc_msgSend_registration(MEMORY[0x1E69A6138], v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_displayName;
    v13 = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, " => Returning Caller ID: %@   (Set: %@   Aliases: %@)", &v13, 0x20u);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setDisplayName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (self->_displayName != nameCopy)
  {
    v7 = objc_msgSend_registration(MEMORY[0x1E69A6138], v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayName = self->_displayName;
      v22 = 138412546;
      v23 = displayName;
      v24 = 2112;
      v25 = nameCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Asked to change display name from: %@  to: %@", &v22, 0x16u);
    }

    if (((objc_msgSend__appearsToBeEmail(nameCopy, v9, v10) & 1) != 0 || objc_msgSend__appearsToBePhoneNumber(nameCopy, v11, v12)) && (objc_msgSend__appearsToBeDSID(nameCopy, v11, v12) & 1) == 0 && objc_msgSend__updateDisplayName_(self, v13, nameCopy))
    {
      v16 = objc_msgSend_registration(MEMORY[0x1E69A6138], v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_displayName;
        v22 = 138412290;
        v23 = v17;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, " Changed display name to: %@", &v22, 0xCu);
      }

      objc_msgSend__setObject_forKey_(self, v18, self->_displayName, *MEMORY[0x1E69A6428]);
      objc_msgSend_writeSettings(self, v19, v20);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateDisplayName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  displayName = self->_displayName;
  if (displayName != nameCopy && (objc_msgSend_isEqualToString_(displayName, v5, nameCopy) & 1) == 0 && (objc_msgSend__appearsToBeDSID(nameCopy, v8, v9) & 1) == 0)
  {
    if (!objc_msgSend_length(nameCopy, v10, v11) || objc_msgSend_validationStatusForAlias_(self, v15, nameCopy) == 3 || (objc_msgSend_supportsRegistration(self, v16, v17) & 1) == 0)
    {
      objc_storeStrong(&self->_displayName, name);
      v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
      objc_msgSend___mainThreadPostNotificationName_object_(v23, v24, @"__kIMAccountDisplayNameChangedNotification", self);

      v12 = 1;
      goto LABEL_5;
    }

    v20 = objc_msgSend_registration(MEMORY[0x1E69A6138], v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF460(nameCopy, self, v20);
    }
  }

  v12 = 0;
LABEL_5:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)deregisterAsIDSIDQueryControllerDelegate
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_service(self, a2, v2);
  v5 = sub_1A824D260(v4);

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_keyTransparencyIDQueryListenerID(self, v9, v10);
        v18 = 138412546;
        v19 = v11;
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Removing IDSIDQueryControllerDelegate with listenerID %@ for %@", &v18, 0x16u);
      }
    }

    v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69A4878], v6, v7);
    v15 = objc_msgSend_keyTransparencyIDQueryListenerID(self, v13, v14);
    objc_msgSend_removeDelegate_forService_listenerID_(v12, v16, self, v5, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)idsKTVerifierResultsUpdatedForDestinations:(id)destinations service:(id)service
{
  v77 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_accountDescription(self, v9, v10);
      v14 = objc_msgSend_allKeys(destinationsCopy, v12, v13);
      v16 = objc_msgSend_componentsJoinedByString_(v14, v15, @", ");
      *buf = 138412802;
      *v74 = serviceCopy;
      *&v74[8] = 2112;
      *&v74[10] = v11;
      v75 = 2112;
      v76 = v16;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received KTVerifierResult update from IDS for service %@, account %@, uris %@", buf, 0x20u);
    }
  }

  v65 = objc_msgSend_set(MEMORY[0x1E695DFA8], v6, v7, self);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v19 = objc_msgSend_allKeys(destinationsCopy, v17, v18);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v66, v72, 16);
  if (v23)
  {
    v24 = *v67;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v67 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v66 + 1) + 8 * i);
        v27 = objc_msgSend__stripFZIDPrefix(v26, v21, v22);
        v29 = objc_msgSend_objectForKeyedSubscript_(destinationsCopy, v28, v26);
        v32 = objc_msgSend_sharedController(IMKeyTransparencyController, v30, v31);
        v34 = objc_msgSend_ktVerifierResultForHandleID_(v32, v33, v27);

        if (v27)
        {
          if ((objc_msgSend_isEqual_(v34, v35, v29) & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v38 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v41 = objc_msgSend_uiStatus(v29, v39, v40);
                *buf = 138412546;
                *v74 = v27;
                *&v74[8] = 2048;
                *&v74[10] = v41;
                _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Updating status for URI: %@ to KTUIStatus: %lu", buf, 0x16u);
              }
            }

            v42 = objc_msgSend_sharedController(IMKeyTransparencyController, v36, v37);
            objc_msgSend_setKTVerifierResult_forHandleID_(v42, v43, v29, v27);

            objc_msgSend_addObject_(v65, v44, v27);
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v45 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v74 = 0;
            _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "IDS tried to update the KTVerifierResult with no URI: %@. Skipping.", buf, 0xCu);
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v66, v72, 16);
    }

    while (v23);
  }

  if (objc_msgSend_count(v65, v46, v47))
  {
    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v53 = objc_msgSend_count(v65, v51, v52);
        *buf = 67109378;
        *v74 = v53;
        *&v74[4] = 2112;
        *&v74[6] = v65;
        _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "IDS callback triggered update UI for %d changed handles: %@", buf, 0x12u);
      }
    }

    v70 = @"__kIMChatKTStatusChangedAffectedHandlesKey";
    v54 = objc_msgSend_allObjects(v65, v48, v49);
    v71 = v54;
    v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v55, &v71, &v70, 1);

    v59 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v57, v58);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v59, v60, @"__kIMChatKeyTransparencyStatusChangedNotification", v63, v56);
  }

  v61 = *MEMORY[0x1E69E9840];
}

@end