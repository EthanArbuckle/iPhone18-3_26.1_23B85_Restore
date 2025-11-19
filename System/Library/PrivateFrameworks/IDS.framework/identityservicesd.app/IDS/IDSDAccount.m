@interface IDSDAccount
+ (BOOL)dependentRegistration:(id)a3 hasDependentRegistrationWithURI:(id)a4 token:(id)a5;
+ (void)_sendLocallyWithSendParameters:(id)a3 service:(id)a4 uriToLocalDestination:(id)a5 data:(id)a6 protobuf:(id)a7 threadContext:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10;
+ (void)_splitDestinations:(id)a3 intoLocalDestinations:(id *)a4 remoteDestinations:(id *)a5 threadContext:(id)a6 sendParameters:(id)a7;
+ (void)dependentRegistration:(id)a3 findDeviceUniqueID:(id *)a4 btID:(id *)a5 forURI:(id)a6 token:(id)a7 supportsLiveDelivery:(BOOL *)a8;
+ (void)sendMessageWithSendParameters:(id)a3 service:(id)a4 threadContext:(id)a5 willSendBlock:(id)a6 progressBlock:(id)a7 completionBlock:(id)a8;
- (BOOL)_hasBudgetForForcedGDR;
- (BOOL)_isPasswordPromptPermissibleDuringAuthentication;
- (BOOL)_issueForcedDependentCheckIfPossible;
- (BOOL)_migrateRegistrationIfNeeded;
- (BOOL)_rebuildRegistrationInfo:(BOOL)a3;
- (BOOL)_stopRegistrationAgent;
- (BOOL)forEachAdhocAccount:(id)a3;
- (BOOL)hasAliasURI:(id)a3;
- (BOOL)hasDependentRegistrationWithURI:(id)a3 token:(id)a4;
- (BOOL)hasEverRegistered;
- (BOOL)hasVettedAliasURI:(id)a3;
- (BOOL)isAdHocAccount;
- (BOOL)isDeviceAuthenticated;
- (BOOL)isDeviceRegistered;
- (BOOL)isEnabled;
- (BOOL)isTemporary;
- (BOOL)isUsableForSending;
- (BOOL)isUserDisabled;
- (BOOL)provisionPseudonymForURI:(id)a3 properties:(id)a4 requestProperties:(id)a5 completionBlock:(id)a6;
- (BOOL)renewPseudonym:(id)a3 forUpdatedExpiryEpoch:(double)a4 requestProperties:(id)a5 completionBlock:(id)a6;
- (BOOL)revokePseudonym:(id)a3 requestProperties:(id)a4 completionBlock:(id)a5;
- (BOOL)shouldAutoRegisterAllHandles;
- (BOOL)shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)a3;
- (BOOL)shouldRegisterUsingDSHandle;
- (BOOL)updateKTOptInStatus:(BOOL)a3 withCompletion:(id)a4;
- (BOOL)updateKTOptInStatusWithRequest:(id)a3 withCompletion:(id)a4;
- (IDSDAccount)initWithDictionary:(id)a3 service:(id)a4 uniqueID:(id)a5;
- (IDSDAccount)superAccount;
- (IDSGameCenterData)gameCenterData;
- (IDSRegistration)primaryRegistration;
- (NSArray)linkedAccounts;
- (NSArray)prefixedURIStringsFromRegistration;
- (NSArray)pseudonyms;
- (NSArray)registeredDevices;
- (NSArray)unprefixedURIStringsFromRegistration;
- (NSDictionary)accountSetupInfo;
- (NSDictionary)pseudonymURIMap;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)dsHandle;
- (double)_maxSelectedButVettedGracePeriod;
- (id)_allUserIntentWithDefaultReason:(BOOL)a3;
- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)a3 includingCurrentDevice:(BOOL)a4 includingTinker:(BOOL)a5;
- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)a3 includingTinker:(BOOL)a4;
- (id)_fromIDFromDevice:(id)a3 withCBUUID:(id)a4 uniqueID:(id)a5;
- (id)_initWithLoginID:(id)a3 service:(id)a4 uniqueID:(id)a5 accountType:(int)a6 accountConfig:(id)a7 primaryAccount:(id)a8 isAdHocAccount:(BOOL)a9;
- (id)_performedForcedGDRDatePeriod;
- (id)_registrationCert;
- (id)_unprefixedURIStringsFromAccountInfo;
- (id)_uriDictionariesFromAccountInfo;
- (id)_userIntentDictForAlias:(id)a3;
- (id)accountAndAdHocAccounts;
- (id)adHocAccounts;
- (id)defaultPairedDependentRegistrationIncludingTinker:(BOOL)a3;
- (id)dependentRegistrationMatchingUUID:(id)a3 includingTinker:(BOOL)a4;
- (id)fromIDForCBUUID:(id)a3 deviceID:(id)a4;
- (id)invisibleAliases;
- (id)newSendMessageContext;
- (id)primaryAccount;
- (id)primaryAccountUniqueID;
- (id)primaryServiceName;
- (id)pseudonymForPseudonymURIString:(id)a3;
- (id)senderKeyDistributionManager;
- (id)serviceType;
- (id)smallDescription;
- (id)vettedAliases;
- (int)_currentForcedGDRCount;
- (int)_neededRegistrationType;
- (int)accountType;
- (int)registrationErrorReason;
- (int)registrationStatus;
- (int64_t)_validationStatusForAlias:(id)a3;
- (int64_t)lastRegistrationFailureError;
- (int64_t)maxRemoteMessagingPayloadSize;
- (int64_t)registrationError;
- (unint64_t)_handleAndConvertFeatureToggleError:(int64_t)a3;
- (unsigned)currentAliasState:(id)a3;
- (unsigned)unselectReasonForAlias:(id)a3;
- (void)_addAliases:(id)a3;
- (void)_addPseudonym:(id)a3;
- (void)_addPseudonyms:(id)a3;
- (void)_authenticateAccount;
- (void)_broadcastAccountInfoChanged;
- (void)_broadcastAccountMessageBlock:(id)a3;
- (void)_checkRegistration;
- (void)_cleanupAccount;
- (void)_clearForcedGDRCount;
- (void)_clearForcedGDRDate;
- (void)_clearGDRState;
- (void)_deregisterDeviceCenterNotifications;
- (void)_flushTokensForRegisteredURIs:(id)a3;
- (void)_handleKTOptInStatusUpdateError:(int64_t)a3;
- (void)_handlePseudonymProvisionError:(int64_t)a3;
- (void)_identityGenerated:(id)a3;
- (void)_identityRebuilt:(id)a3;
- (void)_incrementForcedGDRCount;
- (void)_issueCriticalDependentCheck;
- (void)_issueDependentCheck;
- (void)_keychainMigrationComplete:(id)a3;
- (void)_needsEncryptionIdentityRoll:(id)a3;
- (void)_notifyClientDelegatesWithBlock:(id)a3;
- (void)_notifyDelegatesAddedLocalDevice:(id)a3;
- (void)_notifyListenersAndSetDependentRegistrations:(id)a3 onRegistrationInfo:(id)a4;
- (void)_notifyListenersWithChanges:(id)a3;
- (void)_notifyRegistrationListenersAccountDidUpdateRegisteredDevices;
- (void)_parseHandlesInfo:(id)a3 currentAliases:(id)a4 currentVettedAliases:(id)a5;
- (void)_processReceivedDependentRegistration:(id)a3 oldDependentRegistrations:(id)a4;
- (void)_rapportSendWithSendParameters:(id)a3 completionBlock:(id)a4;
- (void)_reAuthenticate;
- (void)_refreshRegistration;
- (void)_registerAccount;
- (void)_registerForDeviceCenterNotifications;
- (void)_registrationAbilityChanged:(id)a3;
- (void)_removeAliases:(id)a3 withReason:(unsigned __int8)a4;
- (void)_removeAllPseudonyms;
- (void)_removeAuthenticationCredentialsIncludingAuthToken:(BOOL)a3;
- (void)_removePseudonym:(id)a3;
- (void)_removePseudonyms:(id)a3;
- (void)_reregisterAndReProvision;
- (void)_reregisterAndReidentify:(BOOL)a3;
- (void)_resetVariables;
- (void)_retryRegister;
- (void)_saveAndNotifyGDRUpdate;
- (void)_sendLocallyWithSendParameters:(id)a3 uriToLocalDestination:(id)a4 data:(id)a5 protobuf:(id)a6 completionBlock:(id)a7;
- (void)_sendMessageWithSendParametersOnMainThread:(id)a3 filteredDestinations:(id)a4 data:(id)a5 compressedData:(id)a6 protobufToSend:(id)a7 willSendBlock:(id)a8 completionBlock:(id)a9;
- (void)_sendRemotelyWithSendParameters:(id)a3 data:(id)a4 protobuf:(id)a5 willSendBlock:(id)a6 completionBlock:(id)a7;
- (void)_setUserIntentState:(unsigned __int8)a3 forAlias:(id)a4 withReason:(unsigned __int8)a5;
- (void)_setValidationStatus:(int64_t)a3 error:(int)a4 forAlias:(id)a5 info:(id)a6 addToCurrentHandlesIfNeeded:(BOOL)a7 forceAdd:(BOOL)a8 aliasProperties:(id)a9;
- (void)_setupAccount;
- (void)_splitDestinations:(id)a3 intoLocalDestinations:(id *)a4 remoteDestinations:(id *)a5 rapportDestinations:(id *)a6 sendParameters:(id)a7;
- (void)_stopTrackingUserIntentOfAlias:(id)a3;
- (void)_unregisterAccount;
- (void)_unvalidateAliases:(id)a3;
- (void)_updateAccountWithAccountInfo:(id)a3;
- (void)_updateCallerIDToTemporaryPhone;
- (void)_updateHandles:(BOOL)a3;
- (void)_updatePerformedForcedGDRDate;
- (void)_updatePhoneNumberCallerID;
- (void)_updatePseudonymsFromEmailInfo:(id)a3;
- (void)_updateRegistrationStatusWithError:(int64_t)a3 info:(id)a4;
- (void)_updateSessionsForAllRegisteredURIsWithSendReasonPathID:(int64_t)a3;
- (void)_updateSessionsWithRegisteredURIs:(id)a3 retryIfNotRegistered:(BOOL)a4 sendReasonPathID:(int64_t)a5;
- (void)_updateVettedAliases:(id)a3 emailInfo:(id)a4 addToCurrentHandlesIfNeeded:(BOOL)a5;
- (void)_validateAliases:(id)a3;
- (void)_validateAliases:(id)a3 validateAlreadyValid:(BOOL)a4;
- (void)_writeAccountDefaults:(id)a3 force:(BOOL)a4 interestedSubservices:(id)a5;
- (void)activateRegistration;
- (void)addAliases:(id)a3;
- (void)addRegistrationListener:(id)a3;
- (void)askPeersToClearCacheWithURIs:(id)a3 fromURI:(id)a4 forService:(id)a5;
- (void)authenticateAccount;
- (void)center:(id)a3 failedAuthentication:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)center:(id)a3 failedRegionValidation:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)center:(id)a3 startedAuthenticating:(id)a4;
- (void)center:(id)a3 succeededAuthentication:(id)a4;
- (void)center:(id)a3 succeededCurrentEmailsRequest:(id)a4 emailInfo:(id)a5;
- (void)center:(id)a3 succeededIdentification:(id)a4 phoneNumber:(id)a5 token:(id)a6;
- (void)center:(id)a3 succeededRegionValidation:(id)a4 regionID:(id)a5 phoneNumber:(id)a6 extraContext:(id)a7 verified:(BOOL)a8;
- (void)clearDisplayName;
- (void)deactivateAndPurgeIdentify;
- (void)deactivateRegistration;
- (void)dealloc;
- (void)decryptMessageData:(id)a3 guid:(id)a4 localURI:(id)a5 remoteURI:(id)a6 pushToken:(id)a7 groupID:(id)a8 command:(id)a9 encryptionType:(int64_t)a10 isLiveRetry:(BOOL)a11 replayKey:(id)a12 incomingMetric:(id)a13 completionBlock:(id)a14;
- (void)didAddPairedDevice:(id)a3;
- (void)didRemovePairedDevice:(id)a3;
- (void)didUpdatePairedDevice:(id)a3;
- (void)didUpdateProtocolForPairedDevice:(id)a3;
- (void)findDeviceUniqueID:(id *)a3 btID:(id *)a4 forURI:(id)a5 token:(id)a6 supportsLiveDelivery:(BOOL *)a7;
- (void)gdrReAuthenticateIfNecessary;
- (void)handler:(id)a3 flushCacheForURIs:(id)a4;
- (void)handler:(id)a3 profile:(id)a4 deviceUpdated:(id)a5 service:(id)a6;
- (void)handler:(id)a3 profileHandlesUpdated:(id)a4 status:(id)a5 allowGDR:(id)a6;
- (void)handler:(id)a3 pushTokenChanged:(id)a4;
- (void)handler:(id)a3 reloadBag:(id)a4;
- (void)markAsUnvettedAlias:(id)a3;
- (void)markAsVettedAlias:(id)a3;
- (void)passwordUpdated;
- (void)refreshAdHocServiceNames;
- (void)refreshVettedAliases;
- (void)registerAccount;
- (void)registrationController:(id)a3 deregistrationSucceeded:(id)a4;
- (void)registrationController:(id)a3 deregistrationWillStart:(id)a4;
- (void)registrationController:(id)a3 registrationFailed:(id)a4 error:(int64_t)a5 info:(id)a6;
- (void)registrationController:(id)a3 registrationSucceeded:(id)a4;
- (void)registrationController:(id)a3 registrationUpdated:(id)a4;
- (void)registrationController:(id)a3 registrationWillStart:(id)a4;
- (void)registrationControllerNeedsNewRegistration:(id)a3;
- (void)removeAliases:(id)a3;
- (void)removeRegistrationListener:(id)a3;
- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 withCompletion:(id)a6;
- (void)reportClientEvent:(id)a3 completionBlock:(id)a4;
- (void)reportMessage:(id)a3 toURI:(id)a4;
- (void)reportSpamWithMessages:(id)a3 toURI:(id)a4;
- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 toURI:(id)a8;
- (void)resetErrorState;
- (void)retrieveFeatureToggleStateForOptions:(id)a3 completionBlock:(id)a4;
- (void)sendMessage:(id)a3 params:(id)a4 bulkedPayload:(id)a5 fromID:(id)a6 toDestinations:(id)a7 useDictAsTopLevel:(BOOL)a8 dataToEncrypt:(id)a9 encryptPayload:(BOOL)a10 wantsResponse:(BOOL)a11 expirationDate:(id)a12 command:(id)a13 wantsDeliveryStatus:(BOOL)a14 wantsCertifiedDelivery:(BOOL)a15 deliveryStatusContext:(id)a16 messageUUID:(id)a17 priority:(int64_t)a18 localDelivery:(BOOL)a19 disallowRefresh:(BOOL)a20 willSendBlock:(id)a21 completionBlock:(id)a22;
- (void)sendMessageWithSendParameters:(id)a3 willSendBlock:(id)a4 completionBlock:(id)a5;
- (void)sendSenderKeyMessageToDestinations:(id)a3 fromURI:(id)a4 guid:(id)a5 messageData:(id)a6 sendReasonPathID:(int64_t)a7 completionBlock:(id)a8;
- (void)sendServerMessage:(id)a3 command:(id)a4 completionBlock:(id)a5;
- (void)setDisplayName:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setGameCenterData:(id)a3;
- (void)setIsBeingRemoved:(BOOL)a3;
- (void)setIsTemporary:(BOOL)a3;
- (void)setIsUserDisabled:(BOOL)a3;
- (void)setLoginID:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setPendingDependentCheck:(BOOL)a3;
- (void)setRegistrationStatus:(int)a3 error:(int64_t)a4 alertInfo:(id)a5;
- (void)setUserUniqueIdentifier:(id)a3;
- (void)setupAccountWithCompletionBlock:(id)a3;
- (void)systemDidFinishMigration;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidStartBackup;
- (void)systemRestoreStateDidChange;
- (void)unregisterAccount;
- (void)unvalidateAliases:(id)a3;
- (void)updateAuthorizationCredentials:(id)a3 token:(id)a4;
- (void)updateFeatureToggleStateWithOptions:(id)a3 completionBlock:(id)a4;
- (void)validateAliases:(id)a3;
- (void)validateCredentialsWithDeliveryCompletionBlock:(id)a3;
- (void)validateProfile;
@end

@implementation IDSDAccount

- (NSDictionary)accountSetupInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSDAccount *)self accountInfo];
  if ([v4 count])
  {
    [v3 addEntriesFromDictionary:v4];
  }

  v5 = [(IDSDAccount *)self uniqueID];
  [v3 setObject:v5 forKey:kIDSServiceDefaultsUniqueIDKey];

  v6 = [(IDSDAccount *)self service];
  v7 = [v6 identifier];
  [v3 setObject:v7 forKey:kIDSServiceDefaultsServiceNameKey];

  v8 = [(IDSDAccount *)self prefixedURIStringsFromRegistration];
  if (v8)
  {
    [v3 setObject:v8 forKey:kIDSServiceDefaultsRegisteredURIs];
  }

  return v3;
}

- (int)registrationStatus
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
  v3 = [v2 objectForKey:kIDSServiceDefaultsRegistrationInfoStatusKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)accountType
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsAccountTypeKey];
  v3 = [v2 intValue];

  return v3;
}

- (IDSRegistration)primaryRegistration
{
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v3 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsPrimaryAccountKey];
    v4 = +[IDSDAccountController sharedInstance];
    v5 = [v4 accountWithUniqueID:v3];

    v6 = [v5 registration];
  }

  else
  {
    v6 = [(IDSDAccount *)self registration];
  }

  return v6;
}

- (BOOL)isAdHocAccount
{
  v2 = [(IDSDAccount *)self accountInfo];
  v3 = [v2 objectForKey:kIDSServiceDefaultsPrimaryServiceNameKey];
  v4 = [v3 length] != 0;

  return v4;
}

- (NSArray)prefixedURIStringsFromRegistration
{
  v2 = [(IDSDAccount *)self primaryRegistration];
  v3 = [v2 uris];

  return v3;
}

- (NSString)description
{
  context = objc_autoreleasePoolPush();
  v3 = [(IDSDAccount *)self service];
  v4 = [(IDSDAccount *)self loginID];
  v5 = [(IDSDAccount *)self uniqueID];
  [(IDSDAccount *)self accountType];
  v6 = _StringForIDSAccountType();
  v7 = [(IDSDAccount *)self registration];
  if ([(IDSDAccount *)self isRegistered])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = sub_100016528([(IDSDAccount *)self registrationError]);
  v10 = [(IDSDAccount *)self linkedAccounts];
  v11 = [v10 arrayByApplyingSelector:"uniqueID"];
  v12 = [NSString stringWithFormat:@"IDSDAccount: %p [Service: %@ Login: %@ UniqueID: %@ Account Type: %@ Registration: %@  Registered: %@  Registration Error: %@  Linked Accounts: %@]", self, v3, v4, v5, v6, v7, v8, v9, v11];

  objc_autoreleasePoolPop(context);

  return v12;
}

- (int64_t)registrationError
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
  v3 = [v2 objectForKey:kIDSServiceDefaultsRegistrationInfoInternalErrorCodeKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (NSArray)linkedAccounts
{
  v3 = +[IDSDServiceController sharedInstance];
  v38 = self;
  v4 = [(IDSDAccount *)self service];
  v5 = [v3 linkedServicesForService:v4];

  if ([v5 count])
  {
    v40 = objc_alloc_init(NSMutableArray);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v31 = v5;
    obj = v5;
    v34 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (!v34)
    {
      goto LABEL_38;
    }

    v33 = *v46;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v6;
        v7 = *(*(&v45 + 1) + 8 * v6);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v8 = +[IDSDAccountController sharedInstance];
        v9 = [v8 accountsOnService:v7];

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
        v11 = v38;
        if (v10)
        {
          v12 = v10;
          v13 = *v42;
          v37 = *v42;
          do
          {
            v14 = 0;
            v39 = v12;
            do
            {
              if (*v42 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v41 + 1) + 8 * v14);
              v16 = [(IDSDAccount *)v11 accountType];
              if (v16 == 2)
              {
                if ([v15 accountType] == 2)
                {
                  goto LABEL_33;
                }
              }

              else if (v16 == 1)
              {
                v20 = v9;
                v21 = [v15 accountType];
                v22 = v21 == 1;
                v23 = [v15 loginID];
                v24 = [v23 lowercaseString];
                v25 = [(IDSDAccount *)v11 loginID];
                v26 = [v25 lowercaseString];
                if (IMAreObjectsLogicallySame())
                {
                  v9 = v20;
                }

                else
                {
                  v27 = [v15 loginID];
                  if ([v27 length])
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v36 = [(IDSDAccount *)v38 loginID];
                    v28 = [v36 length];
                    v22 = v21 == 1 && v28 == 0;
                  }

                  v9 = v20;

                  v11 = v38;
                }

                v13 = v37;

                v12 = v39;
                if (v22)
                {
LABEL_33:
                  [v40 addObject:v15];
                }
              }

              else if (!v16 && ![v15 accountType])
              {
                v17 = [v15 userUniqueIdentifier];
                v18 = [(IDSDAccount *)v11 userUniqueIdentifier];
                v19 = [v17 isEqualToString:v18];

                v11 = v38;
                if (v19)
                {
                  goto LABEL_33;
                }
              }

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v12);
        }

        v6 = v35 + 1;
      }

      while ((v35 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (!v34)
      {
LABEL_38:

        v5 = v31;
        goto LABEL_40;
      }
    }
  }

  v40 = 0;
LABEL_40:

  return v40;
}

- (id)primaryServiceName
{
  v3 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsPrimaryServiceNameKey];
  if (![v3 length])
  {
    v4 = [(IDSDAccount *)self service];
    v5 = [v4 identifier];

    v3 = v5;
  }

  return v3;
}

- (NSArray)pseudonyms
{
  v32 = objc_alloc_init(NSMutableArray);
  v26 = objc_autoreleasePoolPush();
  v37 = self;
  v3 = [(IDSDAccount *)self accountInfo];
  v4 = [v3 objectForKey:kIDSServiceDefaultsPseudonymsKey];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v28)
  {
    v27 = *v43;
    v36 = kIDSServiceDefaultsPropertiesKey;
    v34 = kIDSServiceDefaultsURIKey;
    do
    {
      v5 = 0;
      do
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v5;
        v6 = *(*(&v42 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [obj objectForKeyedSubscript:v6];
        v33 = [IDSURI URIWithPrefixedURI:v6];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v35 = v7;
        v8 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v39;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(v35);
              }

              v12 = *(*(&v38 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              v14 = [IDSPseudonymProperties alloc];
              v15 = [v12 objectForKeyedSubscript:v36];
              v16 = [v14 initWithDictionaryRepresentation:v15];

              v17 = [v16 allowedServices];
              v18 = [(IDSDAccount *)v37 service];
              v19 = [v18 identifier];
              v20 = [v17 containsObject:v19];

              if (v20)
              {
                v21 = [v12 objectForKeyedSubscript:v34];
                v22 = [IDSURI URIWithPrefixedURI:v21];

                if (v22 && v16)
                {
                  v23 = [[IDSPseudonym alloc] initWithURI:v22 maskedURI:v33 properties:v16];
                  [v32 addObject:v23];
                }
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v35 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v9);
        }

        objc_autoreleasePoolPop(context);
        v5 = v31 + 1;
      }

      while ((v31 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v28);
  }

  objc_autoreleasePoolPop(v26);
  v24 = [v32 copy];

  return v24;
}

- (id)newSendMessageContext
{
  im_assert_primary_base_queue();
  v3 = objc_alloc_init(IDSDAccountSendMessageContext);
  v4 = [(IDSDAccount *)self service];
  v5 = [v4 identifier];
  [(IDSDAccountSendMessageContext *)v3 setServiceIdentifier:v5];

  v6 = [v4 pushTopic];
  [(IDSDAccountSendMessageContext *)v3 setServicePushTopic:v6];

  v7 = [v4 duetIdentifiers];
  [(IDSDAccountSendMessageContext *)v3 setServiceDuetIdentifiers:v7];

  -[IDSDAccountSendMessageContext setServiceAdHocType:](v3, "setServiceAdHocType:", [v4 adHocServiceType]);
  -[IDSDAccountSendMessageContext setServiceIsDSBased:](v3, "setServiceIsDSBased:", [v4 shouldRegisterUsingDSHandle]);
  -[IDSDAccountSendMessageContext setServiceAllowProxyDelivery:](v3, "setServiceAllowProxyDelivery:", [v4 shouldAllowProxyDelivery]);
  -[IDSDAccountSendMessageContext setServiceAllowLocalDelivery:](v3, "setServiceAllowLocalDelivery:", [v4 allowLocalDelivery]);
  -[IDSDAccountSendMessageContext setServiceAllowWiProxDelivery:](v3, "setServiceAllowWiProxDelivery:", [v4 allowWiProxDelivery]);
  -[IDSDAccountSendMessageContext setServiceAllowLiveMessageDelivery:](v3, "setServiceAllowLiveMessageDelivery:", [v4 shouldAllowLiveMessageDelivery]);
  -[IDSDAccountSendMessageContext setServiceUseiMessageCallerID:](v3, "setServiceUseiMessageCallerID:", [v4 useiMessageCallerID]);
  -[IDSDAccountSendMessageContext setServiceWantsReflectedSend:](v3, "setServiceWantsReflectedSend:", [v4 wantsLocalReflectedSend]);
  -[IDSDAccountSendMessageContext setServiceWantsTinkerDevices:](v3, "setServiceWantsTinkerDevices:", [v4 wantsTinkerDevices]);
  -[IDSDAccountSendMessageContext setSilentlyFailMessagesOnSwitch:](v3, "setSilentlyFailMessagesOnSwitch:", [v4 shouldSilentlyFailMessagesOnSwitch]);
  -[IDSDAccountSendMessageContext setShouldProtectTrafficUsingClassA:](v3, "setShouldProtectTrafficUsingClassA:", [v4 shouldProtectTrafficUsingClassA]);
  -[IDSDAccountSendMessageContext setShouldAllowCloudDelivery:](v3, "setShouldAllowCloudDelivery:", [v4 shouldAllowCloudDelivery]);
  [(IDSDAccountSendMessageContext *)v3 setAccountType:[(IDSDAccount *)self accountType]];
  v8 = [(IDSDAccount *)self primaryRegistration];
  v9 = [v8 dsHandle];
  [(IDSDAccountSendMessageContext *)v3 setPrimaryRegistrationDSHandle:v9];

  v10 = [(IDSDAccount *)self displayName];
  [(IDSDAccountSendMessageContext *)v3 setAccountDisplayName:v10];

  v11 = [(IDSDAccount *)self primaryRegistration];
  v12 = [v11 uris];
  [(IDSDAccountSendMessageContext *)v3 setPrimaryRegistrationURIs:v12];

  [(IDSDAccountSendMessageContext *)v3 setIsRegistrationActive:[(IDSDAccount *)self isRegistrationActive]];
  v13 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [v4 wantsTinkerDevices]);
  [(IDSDAccountSendMessageContext *)v3 setDependentRegistrations:v13];

  v14 = -[IDSDAccount defaultPairedDependentRegistrationIncludingTinker:](self, "defaultPairedDependentRegistrationIncludingTinker:", [v4 wantsTinkerDevices]);
  [(IDSDAccountSendMessageContext *)v3 setDefaultPairedDependentRegistrations:v14];

  v15 = +[IDSDAccountController sharedInstance];
  v16 = [v15 appleIDAccountOnService:v4];
  v17 = [v16 dependentRegistrations];
  [(IDSDAccountSendMessageContext *)v3 setAppleIDPrimaryDependentRegistrations:v17];

  v18 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  [(IDSDAccountSendMessageContext *)v3 setAliasStrings:v18];

  v19 = [(IDSDAccount *)self pseudonyms];
  [(IDSDAccountSendMessageContext *)v3 setPseudonyms:v19];

  v20 = [(IDSDAccount *)self smallDescription];
  [(IDSDAccountSendMessageContext *)v3 setAccountDescription:v20];

  v21 = [(IDSDAccount *)self service];
  -[IDSDAccountSendMessageContext setDataProtectionClass:](v3, "setDataProtectionClass:", [v21 dataProtectionClass]);

  return v3;
}

- (NSArray)unprefixedURIStringsFromRegistration
{
  if ([(IDSDAccount *)self accountType]== 2)
  {
    v3 = [(IDSDAccount *)self registration];
    v4 = [v3 uris];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(IDSDAccount *)self prefixedURIStringsFromRegistration];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = [(IDSDAccount *)self primaryRegistration];
    v6 = [v7 uris];
  }

  v8 = [v6 __imArrayByApplyingBlock:&stru_100BDD448];

  return v8;
}

- (id)smallDescription
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(IDSDAccount *)self service];
  v5 = [v4 identifier];
  v6 = [(IDSDAccount *)self loginID];
  [(IDSDAccount *)self accountType];
  v7 = _StringForIDSAccountType();
  v8 = [(IDSDAccount *)self uniqueID];
  v9 = [(IDSDAccount *)self isRegistered];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [NSString stringWithFormat:@"<%@:%@:%@:%@:%@>", v5, v6, v7, v8, v10];

  objc_autoreleasePoolPop(v3);

  return v11;
}

- (IDSDAccount)superAccount
{
  v3 = [(IDSDAccount *)self service];
  v4 = [v3 superService];

  if (![v4 length])
  {
    v10 = 0;
    goto LABEL_15;
  }

  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithPushTopic:v4];

  v7 = [(IDSDAccount *)self accountType];
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = +[IDSDAccountController sharedInstance];
      v9 = [v8 appleIDAccountOnService:v6];
    }

    else
    {
      if (v7 != 2)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v8 = +[IDSDAccountController sharedInstance];
      v9 = [v8 localAccountOnService:v6];
    }

    goto LABEL_8;
  }

  v11 = +[IDSDAccountController sharedInstance];
  v8 = [v11 accountsOnService:v6 withType:0];

  if (![v8 count])
  {
    v10 = 0;
    goto LABEL_9;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10048AA98;
  v14[3] = &unk_100BDCF30;
  v14[4] = self;
  v12 = [v8 __imArrayByFilteringWithBlock:v14];
  v10 = [v12 firstObject];

  if (!v10)
  {
    v9 = [v8 firstObject];
LABEL_8:
    v10 = v9;
  }

LABEL_9:

LABEL_14:
LABEL_15:

  return v10;
}

- (id)_registrationCert
{
  v2 = [(IDSDAccount *)self primaryRegistration];
  v3 = [v2 registrationCert];

  return v3;
}

- (BOOL)isDeviceRegistered
{
  v3 = [(IDSDAccount *)self primaryRegistration];
  if ([v3 registrationStatus] == 8)
  {
    v4 = [(IDSDAccount *)self primaryRegistration];
    v5 = [v4 registrationCert];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDeviceAuthenticated
{
  v2 = [(IDSDAccount *)self primaryRegistration];
  v3 = [v2 registrationStatus] > 5;

  return v3;
}

- (id)_unprefixedURIStringsFromAccountInfo
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = kIDSServiceDefaultsAliasKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) objectForKey:v8];
        if ([v10 length])
        {
          if (IMStringIsPhoneNumber())
          {
            v11 = IMCanonicalizeFormattedString();

            v10 = v11;
          }

          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_uriDictionariesFromAccountInfo
{
  v2 = [(IDSDAccount *)self accountInfo];
  v3 = [v2 objectForKey:kIDSServiceDefaultsAliasesKey];
  v4 = [v3 __imArrayByApplyingBlock:&stru_100BDEFB8];

  return v4;
}

- (id)vettedAliases
{
  v2 = [(IDSDAccount *)self accountInfo];
  v3 = [v2 objectForKey:kIDSServiceDefaultsVettedAliasesKey];

  return v3;
}

- (void)_issueCriticalDependentCheck
{
  [(IDSDAccount *)self _clearGDRState];

  [(IDSDAccount *)self _issueDependentCheck];
}

- (void)_clearGDRState
{
  registrationInfo = self->_registrationInfo;
  v4 = +[NSDate date];
  [(IDSRegistration *)registrationInfo setDependentRegistrationsTTL:v4];

  [(IDSRegistration *)self->_registrationInfo setDependentRegistrationAuthRetries:&off_100C3C898];
  [(IDSRegistration *)self->_registrationInfo setDependentRegistrationResponseCode:&off_100C3C898];
  [(IDSRegistration *)self->_registrationInfo saveToKeychain];
  v6 = +[IDSDeviceHeartbeatCenter sharedInstance];
  v5 = [(IDSRegistration *)self->_registrationInfo idsUserID];
  [v6 resetExpiryForUser:v5];
}

- (void)_issueDependentCheck
{
  if (self->_registrationInfo && ![(IDSDAccount *)self isAdHocAccount])
  {
    v3 = [(IDSDAccount *)self systemMonitor];
    v4 = [v3 isUnderFirstDataProtectionLock];

    if (v4)
    {
      v5 = +[IMRGLog GDR];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v18 = v6;
        v7 = "Device is still under first data protection lock, deferring request for: %@";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    if ([(IDSDAccount *)self _isBuddyBlockingRegistration])
    {
      v5 = +[IMRGLog GDR];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v18 = v6;
        v7 = "Not issuing dependancy check, we're not through buddy yet for: %@";
        goto LABEL_9;
      }

LABEL_10:

      *(self + 80) |= 0x20u;
      return;
    }

    if ((*(self + 80) & 8) != 0)
    {
      v12 = +[IMRGLog GDR];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not issuing dependancy check, we're in progress now for: %@", buf, 0xCu);
      }
    }

    else
    {
      *(self + 80) |= 8u;
      v8 = +[IMRGLog GDR];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(IDSDAccount *)self uniqueID];
        v10 = [(IDSDAccount *)self service];
        v11 = [v10 queryService];
        *buf = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Issued dependent registration check for account: %@   service: %@", buf, 0x16u);
      }

      v12 = [(IDSDAccount *)self registrationCenter];
      v13 = [v12 gdrCenter];
      registrationInfo = self->_registrationInfo;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000246DC;
      v16[3] = &unk_100BDEF50;
      v16[4] = self;
      [v13 getDependentRegistrations:registrationInfo completionBlock:v16];
    }
  }
}

- (BOOL)shouldRegisterUsingDSHandle
{
  v2 = [(IDSDAccount *)self service];
  v3 = [v2 shouldRegisterUsingDSHandle];

  return v3;
}

- (void)_removeAllPseudonyms
{
  v5 = kIDSServiceDefaultsPseudonymsKey;
  v3 = +[NSNull null];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [(IDSDAccount *)self _writeAccountDefaults:v4 force:1];
}

- (id)accountAndAdHocAccounts
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:self];
  v4 = [(IDSDAccount *)self adHocAccounts];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)adHocAccounts
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023728;
  v7[3] = &unk_100BDB478;
  v8 = objc_alloc_init(NSMutableArray);
  v3 = v8;
  if ([(IDSDAccount *)self forEachAdhocAccount:v7])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)invisibleAliases
{
  v2 = [(IDSDAccount *)self accountInfo];
  v3 = [v2 objectForKey:kIDSServiceDefaultsInvisibleAliasesKey];

  return v3;
}

- (id)primaryAccount
{
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v3 = +[IDSDAccountController sharedInstance];
    v4 = [(IDSDAccount *)self primaryAccountUniqueID];
    v5 = [v3 accountWithUniqueID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)primaryAccountUniqueID
{
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v3 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsPrimaryAccountKey];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)dsHandle
{
  v2 = [(IDSDAccount *)self primaryRegistration];
  v3 = [v2 dsHandle];

  return v3;
}

- (void)_broadcastAccountInfoChanged
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100920D0C(self, v3);
  }

  [(CUTDeferredTaskQueue *)self->_broadcastAccountInfoChangedTask cancelPendingExecutions];
  v4 = objc_alloc_init(IMMessageContext);
  [v4 setShouldBoost:0];
  v5 = +[IDSDaemon sharedInstance];
  v6 = [(IDSDAccount *)self service];
  v7 = [v6 pushTopic];
  v8 = [v5 broadcasterForTopic:v7 ignoreServiceListener:1 messageContext:v4];

  v9 = [(IDSDAccount *)self uniqueID];
  v10 = [(IDSDAccount *)self accountSetupInfo];
  [v8 account:v9 accountInfoChanged:v10];

  *(self + 81) &= ~4u;
}

- (void)_cleanupAccount
{
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v2 = [(IDSDAccount *)self service];
  v73 = [v2 identifier];

  v3 = [v73 isEqualToIgnoringCase:@"com.apple.madrid"];
  v4 = [v73 isEqualToIgnoringCase:@"com.apple.ess"];
  v5 = [v73 isEqualToIgnoringCase:@"com.apple.private.ac"];
  v6 = [v73 isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"];
  v7 = +[IDSRegistrationController systemSupportsPhoneNumberRegistration];
  v8 = [(IDSDAccount *)self accountType];
  v9 = v8 == 1;
  if (v8 == 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v69 = v10;
  v11 = +[IDSRegistrationController registeredPhoneNumbers];
  v12 = objc_alloc_init(NSMutableSet);
  v66 = v6;
  v67 = v4;
  v68 = v3;
  v62 = kIDSServiceDefaultsVettedAliasesKey;
  v13 = [(NSMutableDictionary *)self->_accountInfo objectForKey:?];
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_100485B44;
  v94[3] = &unk_100BDD268;
  v97 = v9;
  v14 = v11;
  v95 = v14;
  v96 = &v102;
  v15 = [v13 __imArrayByApplyingBlock:v94];

  key = kIDSServiceDefaultsAliasesKey;
  v16 = [(NSMutableDictionary *)self->_accountInfo objectForKey:?];
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_100485C64;
  v86[3] = &unk_100BDD290;
  v91 = &v98;
  v92 = &v102;
  v71 = v12;
  v87 = v71;
  v88 = self;
  v70 = v15;
  v89 = v70;
  v93 = v9;
  v65 = v14;
  v90 = v65;
  v17 = [v16 __imArrayByApplyingBlock:v86];

  v18 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  v19 = [v18 __imArrayByApplyingBlock:&stru_100BDD2B0];
  v75 = [v19 __imSetFromArray];

  v20 = [v17 __imArrayByApplyingBlock:&stru_100BDD2D0];
  v74 = [v20 __imSetFromArray];

  if (v74 && ([v74 isEqualToSet:v75] & 1) != 0 || (-[IDSDAccount registration](self, "registration"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
  {
    v72 = 0;
    v38 = v17;
  }

  else
  {
    v23 = [v75 mutableCopy];
    [v23 minusSet:v74];
    v64 = [v74 mutableCopy];
    [v64 minusSet:v75];
    if (!v17)
    {
      v17 = objc_alloc_init(NSArray);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v82 objects:v121 count:16];
    v25 = v17;
    v72 = v24 != 0;
    if (v24)
    {
      v26 = *v83;
      v27 = kIDSServiceDefaultsAliasKey;
      v28 = kIDSServiceDefaultsAliasStatusKey;
      v29 = kIDSServiceDefaultsAliasIsUserVisibleKey;
      do
      {
        v30 = 0;
        v31 = v25;
        do
        {
          if (*v83 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v82 + 1) + 8 * v30);
          v119[0] = v27;
          v119[1] = v28;
          v120[0] = v32;
          v120[1] = &off_100C3C778;
          v119[2] = v29;
          v120[2] = &__kCFBooleanFalse;
          v33 = [NSDictionary dictionaryWithObjects:v120 forKeys:v119 count:3];
          v25 = [v31 arrayByAddingObject:v33];

          v30 = v30 + 1;
          v31 = v25;
        }

        while (v24 != v30);
        v24 = [obj countByEnumeratingWithState:&v82 objects:v121 count:16];
      }

      while (v24);
    }

    if ([v64 count])
    {
      IMSetAppBoolForKey();
    }

    v34 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(IDSDAccount *)self smallDescription];
      v36 = [obj count];
      v37 = [v64 count];
      *buf = 138413314;
      v110 = v35;
      v111 = 1024;
      v112 = v36;
      v113 = 1024;
      v114 = v37;
      v115 = 2112;
      v116 = v75;
      v117 = 2112;
      v118 = v74;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Alias set does not match during cleanup {self: %@, registeredButNotStored.count: %d, storedButNotRegistered.count: %d, aliasStrings: %@, aliasesSet: %@}", buf, 0x2Cu);
    }

    v38 = v25;
  }

  if ((v69 & (v68 | v67 | v5 | v66)) == 0)
  {
    v46 = 0;
LABEL_31:
    v39 = self;
    goto LABEL_33;
  }

  v39 = self;
  if ((v99[3] & 1) == 0 && [(IDSDAccount *)self isRegistered])
  {
    v40 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Account is missing sentinel alias, repairing...", buf, 2u);
    }

    v41 = [[NSMutableArray alloc] initWithArray:v38];
    v107[0] = kIDSServiceDefaultsAliasKey;
    v42 = [kIDSServiceDefaultsSentinelAlias lowercaseString];
    v108[0] = v42;
    v108[1] = &off_100C3C778;
    v107[1] = kIDSServiceDefaultsAliasStatusKey;
    v107[2] = kIDSServiceDefaultsAliasIsUserVisibleKey;
    v108[2] = &__kCFBooleanFalse;
    v43 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:3];

    [v41 addObject:v43];
    v44 = v41;

    v45 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Indicating that we need to re-register for alias repair", buf, 2u);
    }

    IMSetAppBoolForKey();
    v46 = 1;
    v38 = v44;
    goto LABEL_31;
  }

  v46 = 0;
LABEL_33:
  v47 = kIDSServiceDefaultsRegisteredURIs;
  v48 = [(NSMutableDictionary *)v39->_accountInfo objectForKey:kIDSServiceDefaultsRegisteredURIs];

  if ((v72 | v46 | *(v103 + 24)) & 1 | (v48 != 0))
  {
    v49 = objc_alloc_init(NSMutableDictionary);
    if ((v72 | v46 | *(v103 + 24)))
    {
      v50 = v38;
      if (v50)
      {
        CFDictionarySetValue(v49, key, v50);
      }

      if ((v46 | *(v103 + 24)))
      {
        v51 = v70;
        if (v51)
        {
          CFDictionarySetValue(v49, v62, v51);
        }

        v52 = [(IDSDAccount *)self registration];
        [v52 setVettedEmails:v51];
      }
    }

    if (v48)
    {
      v53 = +[NSNull null];
      if (v53)
      {
        CFDictionarySetValue(v49, v47, v53);
      }
    }

    v54 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v110 = v49;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "  Cleaning up account!!! -- with changes: %@", buf, 0xCu);
    }

    [(IDSDAccount *)self _writeAccountDefaults:v49 force:1];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v55 = v71;
    v56 = [v55 countByEnumeratingWithState:&v78 objects:v106 count:16];
    if (v56)
    {
      v57 = *v79;
      do
      {
        for (i = 0; i != v56; i = i + 1)
        {
          if (*v79 != v57)
          {
            objc_enumerationMutation(v55);
          }

          [(IDSDAccount *)self markAsUnselectedAlias:*(*(&v78 + 1) + 8 * i) withReason:5];
        }

        v56 = [v55 countByEnumeratingWithState:&v78 objects:v106 count:16];
      }

      while (v56);
    }
  }

  v59 = [(IDSDAccount *)self pseudonyms];
  v60 = [v59 __imArrayByFilteringWithBlock:&stru_100BDD310];

  if ([(__CFDictionary *)v60 count])
  {
    v61 = +[IMRGLog accountCleanup];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v110 = v60;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "  Cleaning up expired pseudonyms {pseudonymsToRemove: %@}", buf, 0xCu);
    }

    [(IDSDAccount *)self _removePseudonyms:v60];
  }

  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
}

- (void)_resetVariables
{
  v2 = *(self + 81);
  *(self + 80) &= 3u;
  *(self + 81) = v2 & 0xFC;
}

- (void)_setupAccount
{
  *(self + 80) |= 2u;
  registrationInfo = self->_registrationInfo;
  self->_registrationInfo = 0;

  v4 = objc_autoreleasePoolPush();
  [(IDSDAccount *)self _resetVariables];
  [(IDSDAccount *)self _cleanupAccount];
  objc_autoreleasePoolPop(v4);
  v5 = [CUTDeferredTaskQueue alloc];
  v6 = im_primary_queue();
  v7 = [v5 initWithCapacity:1 queue:v6 block:&stru_100BDD350];
  broadcastAccountInfoChangedTask = self->_broadcastAccountInfoChangedTask;
  self->_broadcastAccountInfoChangedTask = v7;

  v9 = +[IDSUTunDeliveryController sharedInstance];
  [v9 addConnectivityDelegate:self];

  v10 = +[IDSPairingManager sharedInstance];
  [v10 addDelegate:self];

  objc_initWeak(&location, self);
  v11 = +[IDSPeerIDManager sharedInstance];
  objc_copyWeak(&v26, &location);
  v12 = [(IDSDAccount *)self uniqueID:_NSConcreteStackBlock];
  [v11 addCompletionBlock:&v25 forToken:v12];

  v13 = [(IDSDAccount *)self registrationError];
  v14 = [(IDSDAccount *)self registrationErrorReason];
  if (v13 == -1)
  {
    v15 = v14;
    if (v14 != -1)
    {
      v16 = sub_1004503A8(v14);
      v17 = [NSMutableDictionary alloc];
      v18 = kIDSServiceDefaultsRegistrationInfoKey;
      v19 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
      v20 = [v17 initWithDictionary:v19];

      v21 = [NSNumber numberWithInteger:v16];
      if (v21)
      {
        CFDictionarySetValue(v20, kIDSServiceDefaultsRegistrationInfoInternalErrorCodeKey, v21);
      }

      v22 = [NSDictionary dictionaryWithObject:v20 forKey:v18];
      [(IDSDAccount *)self _writeAccountDefaults:v22 force:1];

      v23 = +[IMRGLog registration];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = sub_100016528(v16);
        *buf = 67109634;
        v29 = v16;
        v30 = 2112;
        v31 = v24;
        v32 = 1024;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Setting registration error to %d (%@) from reason %d", buf, 0x18u);
      }
    }
  }

  *(self + 80) &= ~2u;
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (IDSDAccount)initWithDictionary:(id)a3 service:(id)a4 uniqueID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "IDSDAccount initWithDictionary %@ service %@ uniqueID %@", buf, 0x20u);
  }

  v36.receiver = self;
  v36.super_class = IDSDAccount;
  v12 = [(IDSDAccount *)&v36 init];
  if (!v12)
  {
    goto LABEL_20;
  }

  if (v10)
  {
    if (v9)
    {
      v13 = [v8 objectForKey:kIDSServiceDefaultsAccountTypeKey];
      v14 = [v13 intValue];

      if (IDSIsValidAccountType())
      {
        objc_storeStrong(&v12->_uniqueID, a5);
        v15 = [v8 mutableCopy];
        accountInfo = v12->_accountInfo;
        v12->_accountInfo = v15;

        if (!v12->_accountInfo)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v18 = v12->_accountInfo;
          v12->_accountInfo = Mutable;
        }

        objc_storeStrong(&v12->_service, a4);
        v19 = kIDSServiceDefaultsAliasesKey;
        v20 = [v8 objectForKey:kIDSServiceDefaultsAliasesKey];
        v30 = _NSConcreteStackBlock;
        v31 = 3221225472;
        v32 = sub_1004870D0;
        v33 = &unk_100BDD408;
        v21 = v12;
        v34 = v21;
        v35 = v8;
        v22 = [v20 __imArrayByApplyingBlock:&v30];

        v23 = [v22 count];
        v24 = v12->_accountInfo;
        if (v23)
        {
          [(NSMutableDictionary *)v24 setObject:v22 forKey:v19];
        }

        else
        {
          [(NSMutableDictionary *)v24 removeObjectForKey:v19];
        }

        v27 = v12->_accountInfo;
        v28 = [v9 pushTopic];
        [(NSMutableDictionary *)v27 setObject:v28 forKey:kIDSServiceDefaultsPushTopicKey];

        [(NSMutableDictionary *)v12->_accountInfo removeObjectForKey:@"AuthToken"];
        [(IDSDAccount *)v21 _setupAccount];

LABEL_20:
        v26 = v12;
        goto LABEL_21;
      }

      v25 = +[IMRGLog warning];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_100920A18(v14, v25);
      }
    }

    else
    {
      v25 = +[IMRGLog warning];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_100920A90();
      }
    }
  }

  else
  {
    v25 = +[IMRGLog warning];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_100920AF8();
    }
  }

  v26 = 0;
LABEL_21:

  return v26;
}

- (id)_initWithLoginID:(id)a3 service:(id)a4 uniqueID:(id)a5 accountType:(int)a6 accountConfig:(id)a7 primaryAccount:(id)a8 isAdHocAccount:(BOOL)a9
{
  v11 = *&a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v36 = a7;
  v18 = a8;
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v39 = v15;
    v40 = 2112;
    v41 = v16;
    v42 = 2112;
    v43 = v17;
    v44 = 1024;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IDSDAccount initWithLoginID %@ service %@ uniqueID %@ accountType %d", buf, 0x26u);
  }

  v37.receiver = self;
  v37.super_class = IDSDAccount;
  v20 = [(IDSDAccount *)&v37 init];
  if (!v20)
  {
    goto LABEL_29;
  }

  if (!v17)
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100920AF8();
    }

    goto LABEL_32;
  }

  if ((IDSIsValidAccountType() & 1) == 0)
  {
    v22 = +[IMRGLog warning];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_100920A18(v11, v22);
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100920A90();
    }

    goto LABEL_32;
  }

  if (!a9)
  {
    if (![v16 adHocServiceType])
    {
      goto LABEL_20;
    }

    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100920B60();
    }

    goto LABEL_32;
  }

  if (![v18 length])
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100920BC8();
    }

LABEL_32:

LABEL_33:
    v34 = 0;
    goto LABEL_34;
  }

  [v16 adHocServiceType];
LABEL_20:
  if ([v36 count])
  {
    v23 = [[NSMutableDictionary alloc] initWithDictionary:v36];
    accountInfo = v20->_accountInfo;
    v20->_accountInfo = v23;
  }

  if (!v20->_accountInfo)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v26 = v20->_accountInfo;
    v20->_accountInfo = Mutable;
  }

  objc_storeStrong(&v20->_service, a4);
  objc_storeStrong(&v20->_uniqueID, a5);
  if ([v15 length])
  {
    [(IDSDAccount *)v20 setObject:v15 forKey:kIDSServiceDefaultsLoginAsKey];
  }

  v27 = [v16 identifier];
  [(IDSDAccount *)v20 setObject:v27 forKey:kIDSServiceDefaultsServiceNameKey];

  v28 = [v16 pushTopic];
  [(IDSDAccount *)v20 setObject:v28 forKey:kIDSServiceDefaultsPushTopicKey];

  v29 = [NSNumber numberWithInt:v11];
  [(IDSDAccount *)v20 setObject:v29 forKey:kIDSServiceDefaultsAccountTypeKey];

  if (a9)
  {
    v30 = +[IDSDAccountController sharedInstance];
    v31 = [v30 accountWithUniqueID:v18];

    v32 = [v31 service];
    v33 = [v32 identifier];
    [(IDSDAccount *)v20 setObject:v33 forKey:kIDSServiceDefaultsPrimaryServiceNameKey];

    [(IDSDAccount *)v20 setObject:v18 forKey:kIDSServiceDefaultsPrimaryAccountKey];
  }

  [(IDSDAccount *)v20 _setupAccount];
LABEL_29:
  v34 = v20;
LABEL_34:

  return v34;
}

- (void)dealloc
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    *buf = 138412290;
    v19 = uniqueID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc IDSAccount: %@", buf, 0xCu);
  }

  [(CUTDeferredTaskQueue *)self->_broadcastAccountInfoChangedTask cancelPendingExecutions];
  v5 = +[IDSPeerIDManager sharedInstance];
  v6 = [(IDSDAccount *)self uniqueID];
  [v5 removeCompletionBlockForToken:v6];

  v7 = +[IDSUTunDeliveryController sharedInstance];
  [v7 removeConnectivityDelegate:self];

  v8 = +[IDSPairingManager sharedInstance];
  [v8 removeDelegate:self];

  v9 = +[IDSRegistrationController sharedInstance];
  [v9 removeListener:self];

  v10 = +[IDSSMSRegistrationCenter sharedInstance];
  [v10 removeListener:self];

  v11 = +[IDSAppleIDRegistrationCenter sharedInstance];
  [v11 removeListener:self];

  v12 = +[IDSRegistrationCenter sharedInstance];
  [v12 removeListener:self];

  v13 = +[IMSystemMonitor sharedInstance];
  [v13 removeListener:self];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 removeObserver:self name:0 object:0];

  [(IDSDAccount *)self _ignoreIncomingPushes];
  v15 = +[IDSDRegistrationPushManager sharedInstance];
  [v15 stopTrackingRegisteredAccountID:self->_uniqueID];

  [(IDSRegistrationPushHandler *)self->_pushHandler removeListener:self];
  [(IDSDAccount *)self _stopRegistrationAgent];
  v16 = +[IDSRestoreMonitor sharedInstance];
  [v16 removeTarget:self];

  v17.receiver = self;
  v17.super_class = IDSDAccount;
  [(IDSDAccount *)&v17 dealloc];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    [(NSMutableDictionary *)self->_accountInfo setObject:v6 forKey:v7];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Missing object %@ or key %@ when changing accountInfo", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

- (void)setUserUniqueIdentifier:(id)a3
{
  if (a3)
  {
    v6 = kIDSServiceDefaultsUserUniqueIdentifier;
    v7 = a3;
    v4 = a3;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v5];

    [(IDSRegistration *)self->_registrationInfo setUserUniqueIdentifier:v4];
    [(IDSRegistration *)self->_registrationInfo saveToKeychain];
  }
}

- (IDSGameCenterData)gameCenterData
{
  v3 = [IDSGameCenterData alloc];
  v4 = [(NSMutableDictionary *)self->_accountInfo objectForKey:IDSGameCenterContactsAssociationID];
  v5 = [(NSMutableDictionary *)self->_accountInfo objectForKey:IDSGameCenterContactsSharingState];
  v6 = [(NSMutableDictionary *)self->_accountInfo objectForKey:IDSGameCenterContactsLastUpdatedDate];
  v7 = [v3 initWithAssociationID:v4 sharingState:v5 lastUpdatedDate:v6];

  return v7;
}

- (void)setGameCenterData:(id)a3
{
  v9 = a3;
  v4 = [v9 contactsAssociationID];

  if (v4)
  {
    v5 = [v9 contactsAssociationID];
    [(IDSDAccount *)self setObject:v5 forKey:IDSGameCenterContactsAssociationID];
  }

  else
  {
    [(NSMutableDictionary *)self->_accountInfo removeObjectForKey:IDSGameCenterContactsAssociationID];
  }

  v6 = [v9 contactsSharingState];
  [(IDSDAccount *)self setObject:v6 forKey:IDSGameCenterContactsSharingState];

  v7 = [v9 contactsLastUpdatedDate];

  if (v7)
  {
    v8 = [v9 contactsLastUpdatedDate];
    [(IDSDAccount *)self setObject:v8 forKey:IDSGameCenterContactsLastUpdatedDate];
  }

  else
  {
    [(NSMutableDictionary *)self->_accountInfo removeObjectForKey:IDSGameCenterContactsLastUpdatedDate];
  }
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  if ([(IDSDAccount *)v4 length])
  {
    v5 = [(IDSDAccount *)self displayName];
    v6 = [v5 isEqualToIgnoringCase:v4];

    if ((v6 & 1) == 0)
    {
      v7 = [(IDSDAccount *)self aliases];
      v8 = [v7 containsObject:v4];

      v9 = +[IMRGLog registration];
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = [(IDSDAccount *)self displayName];
          *buf = 138412802;
          v16 = self;
          v17 = 2112;
          v18 = v11;
          v19 = 2112;
          v20 = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Display name changed for account: %@    %@ => %@", buf, 0x20u);
        }

        v13 = kIDSServiceDefaultsDisplayNameKey;
        v14 = v4;
        v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
        [(IDSDAccount *)self writeAccountDefaults:v9];
      }

      else if (v10)
      {
        v12 = [(IDSDAccount *)self aliases];
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requested display name: %@ is not part of valid account aliases: %@, ignoring!", buf, 0x16u);
      }
    }
  }
}

- (void)clearDisplayName
{
  v3 = [(IDSDAccount *)self displayName];

  if (v3)
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(IDSDAccount *)self displayName];
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to clear Display Name on Account, Removing Display name %@", buf, 0xCu);
    }

    v7 = kIDSServiceDefaultsDisplayNameKey;
    v8 = &stru_100C06028;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v6];
  }
}

- (void)setIsUserDisabled:(BOOL)a3
{
  v3 = a3;
  if (IMShouldLog())
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Account with uniqueID %@ was disabled by user", buf, 0xCu);
    }
  }

  v8 = [NSNumber numberWithBool:v3, kIDSServiceDefaultsUserDisabled];
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(IDSDAccount *)self writeAccountDefaults:v9];
}

- (BOOL)isUserDisabled
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsUserDisabled];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setLoginID:(id)a3
{
  v4 = a3;
  v5 = kIDSServiceDefaultsLoginAsKey;
  v6 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsLoginAsKey];
  if (([v4 isEqualToIgnoringCase:v6] & 1) == 0)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting loginID on account { oldLoginID: %@, newLoginID: %@, self: %@ }", &v11, 0x20u);
    }

    v8 = [v4 lowercaseString];
    [(IDSDAccount *)self setObject:v8 forKey:v5];

    v9 = [(IDSDAccount *)self registration];
    [v9 setMainID:v4];

    v10 = [(IDSDAccount *)self registration];
    [v10 setVettedEmails:0];

    [(IDSDAccount *)self registerAccount];
  }
}

- (int)registrationErrorReason
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
  v3 = [v2 objectForKey:kIDSServiceDefaultsRegistrationInfoErrorCodeKey];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (BOOL)isTemporary
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsIsTemporary];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsTemporary:(BOOL)a3
{
  if (a3)
  {
    v10 = kIDSServiceDefaultsIsTemporary;
    v4 = [NSNumber numberWithBool:1];
    v11 = v4;
    v5 = &v11;
    v6 = &v10;
  }

  else
  {
    v8 = kIDSServiceDefaultsIsTemporary;
    v4 = +[NSNull null];
    v9 = v4;
    v5 = &v9;
    v6 = &v8;
  }

  v7 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:1];
  [(IDSDAccount *)self writeAccountDefaults:v7];
}

- (void)setExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(IDSDAccount *)self expirationDate];
  if (v4)
  {
    v21 = kIDSServiceDefaultsExpirationDate;
    v22 = v4;
    v6 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v6];
  }

  else
  {
    v19 = kIDSServiceDefaultsExpirationDate;
    v6 = +[NSNull null];
    v20 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v7];
  }

  v8 = [(IDSDAccount *)self isTemporary];
  if (v4 && v8 && !v5)
  {
    v9 = +[IDSDaemon sharedInstance];
    v10 = [(IDSDAccount *)self service];
    v11 = [v10 pushTopic];
    v12 = [v9 broadcasterForTopic:v11 ignoreServiceListener:1 messageContext:0];

    v13 = [(IDSDAccount *)self accountSetupInfo];
    [v12 accountAdded:v13];

    v14 = +[IDSDAccountController sharedInstance];
    v15 = [(IDSDAccount *)self uniqueID];
    LODWORD(v11) = [v14 isEnabledAccount:v15];

    if (v11)
    {
      v16 = [(IDSDAccount *)self uniqueID];
      v17 = [(IDSDAccount *)self service];
      v18 = [v17 pushTopic];
      [v12 accountEnabled:v16 onService:v18];
    }
  }
}

- (BOOL)shouldAutoRegisterAllHandles
{
  v2 = [(IDSDAccount *)self service];
  v3 = [v2 shouldAutoRegisterAllHandles];

  return v3;
}

- (BOOL)isEnabled
{
  v3 = +[IDSDAccountController sharedInstance];
  v4 = [(IDSDAccount *)self uniqueID];
  v5 = [v3 isEnabledAccount:v4];

  return v5;
}

- (void)setupAccountWithCompletionBlock:(id)a3
{
  v4 = [a3 copy];
  v5 = +[IDSDAccountController sharedInstance];
  v6 = [(IDSDAccount *)self uniqueID];
  [v5 enableAccountWithUniqueID:v6];

  v7 = [(IDSDAccount *)self registrationStatus];
  v8 = v7;
  if (v7 == 5 || v7 == -1)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IDSDAccount *)self uniqueID];
      v23 = 67109378;
      LODWORD(v24[0]) = v8;
      WORD2(v24[0]) = 2112;
      *(v24 + 6) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSDAccount status %d, calling handler: %@", &v23, 0x12u);
    }

    if (v4)
    {
      v4[2](v4, self);
    }

    goto LABEL_17;
  }

  if ([(IDSDAccount *)self accountType]!= 1)
  {
    goto LABEL_11;
  }

  if ([(IDSDAccount *)self shouldAutoRegisterAllHandles]|| [(IDSDAccount *)self shouldRegisterUsingDSHandle])
  {
    [(IDSDAccount *)self registerAccount];
LABEL_11:
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v17 = [(IDSDAccount *)self accountInfo];
  v18 = [v17 objectForKey:kIDSServiceDefaultsAliasesKey];
  v19 = [v18 __imArrayByApplyingBlock:&stru_100BDD428];

  v20 = [v19 count];
  v21 = +[IMRGLog registration];
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v23 = 138412290;
      v24[0] = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Can configure account with aliases: %@", &v23, 0xCu);
    }

    [(IDSDAccount *)self registerAccount];
    [(IDSDAccount *)self addAliases:v19];
    [(IDSDAccount *)self validateAliases:v19];
  }

  else
  {
    if (v22)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "* No aliases to configure, nothing to do here", &v23, 2u);
    }
  }

  if (v4)
  {
LABEL_12:
    if (!self->_setupHandlers)
    {
      v11 = objc_alloc_init(NSMutableArray);
      setupHandlers = self->_setupHandlers;
      self->_setupHandlers = v11;
    }

    v13 = [v4 copy];
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100920C4C(v13, self, v14);
    }

    v15 = self->_setupHandlers;
    v16 = objc_retainBlock(v13);
    [(NSMutableArray *)v15 addObject:v16];
  }

LABEL_17:
}

- (BOOL)hasAliasURI:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(IDSDAccount *)self primaryRegistration];
  v6 = [v5 uris];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (BOOL)hasVettedAliasURI:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(IDSDAccount *)self vettedAliases];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)hasEverRegistered
{
  v2 = [(IDSDAccount *)self accountInfo];
  v3 = [v2 objectForKey:kIDSServiceDefaultsHasEverRegistered];
  v4 = [v3 intValue] > 0;

  return v4;
}

- (BOOL)isUsableForSending
{
  v3 = +[IDSDAccountController sharedInstance];
  v4 = [(IDSDAccount *)self uniqueID];
  v5 = [v3 isEnabledAccount:v4];

  if (!v5)
  {
    goto LABEL_13;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = 1;
    return v6 & 1;
  }

  v7 = [(IDSDAccount *)self accountType];
  if (v7 == 1)
  {
    if ([(IDSDAccount *)self isRegistered])
    {
      v9 = [(IDSDAccount *)self aliases];
      if ([v9 count])
      {
        if ([v9 count] == 1)
        {
          v10 = [v9 lastObject];
          v11 = [v10 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

          v6 = v11 ^ 1;
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        v6 = 0;
      }

      return v6 & 1;
    }

    goto LABEL_13;
  }

  if (v7)
  {
LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  return [(IDSDAccount *)self isRegistered];
}

+ (void)dependentRegistration:(id)a3 findDeviceUniqueID:(id *)a4 btID:(id *)a5 forURI:(id)a6 token:(id)a7 supportsLiveDelivery:(BOOL *)a8
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v12)
  {
    v55 = [v13 lowercaseString];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v73;
      v19 = IDSDevicePropertyPushToken;
      v20 = IDSDevicePropertyIdentities;
      v64 = IDSDevicePropertyIdentitiesURI;
      v63 = IDSDevicePropertyDefaultPairedDevice;
      v59 = IDSDevicePropertyPrivateDeviceData;
      v58 = IDSDevicePropertyClientData;
      v57 = IDSPrivateDeviceDataUniqueID;
      v56 = IDSDevicePropertyNSUUID;
      v54 = IDSRegistrationPropertySupportsLiveDelivery;
      v50 = v14;
      v51 = v12;
      v62 = a5;
      v60 = a8;
      v49 = v15;
      v46 = IDSDevicePropertyPushToken;
      v47 = *v73;
      v45 = IDSDevicePropertyIdentities;
      do
      {
        v21 = 0;
        v48 = v17;
        do
        {
          if (*v73 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v53 = v21;
          v66 = *(*(&v72 + 1) + 8 * v21);
          v22 = [v66 objectForKey:v19];
          v23 = v22;
          if (v22)
          {
            v52 = v22;
            v24 = [v22 isEqualToData:v14];
            v23 = v52;
            if (v24)
            {
              v25 = v66;
              v26 = [v66 objectForKey:v20];
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              obj = v26;
              v27 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
              v28 = v55;
              v30 = v64;
              v29 = a4;
              if (v27)
              {
                v31 = v27;
                v32 = *v69;
                v61 = *v69;
                while (2)
                {
                  for (i = 0; i != v31; i = i + 1)
                  {
                    if (*v69 != v32)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v34 = [*(*(&v68 + 1) + 8 * i) objectForKey:v30];
                    v35 = [v34 lowercaseString];

                    if (v35 && [v35 isEqualToString:v28])
                    {
                      v36 = [v25 objectForKey:v63];
                      v37 = [v36 BOOLValue];

                      if (v37)
                      {
                        v14 = v50;
                        if (v29)
                        {
                          *v29 = IDSDeviceDefaultPairedDeviceUniqueID;
                        }

                        v12 = v51;
                        if (v62)
                        {
                          *v62 = IDSDeviceDefaultPairedDeviceUniqueID;
                        }

                        v15 = v49;
                        goto LABEL_35;
                      }

                      v38 = [v25 objectForKey:v59];
                      v39 = [v25 _dictionaryForKey:v58];
                      v40 = [v38 _stringForKey:v57];
                      v41 = [v25 objectForKey:v56];
                      if (v29)
                      {
                        v42 = v40;
                        *v29 = v40;
                      }

                      if (v62)
                      {
                        v43 = v41;
                        *v62 = v41;
                      }

                      if (v60)
                      {
                        v44 = [v39 _numberForKey:v54];
                        *v60 = [v44 BOOLValue];

                        v28 = v55;
                      }

                      v30 = v64;
                      v29 = a4;
                      v32 = v61;
                      v25 = v66;
                    }
                  }

                  v31 = [obj countByEnumeratingWithState:&v68 objects:v76 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

              v14 = v50;
              v12 = v51;
              v17 = v48;
              v15 = v49;
              v19 = v46;
              v18 = v47;
              v20 = v45;
              v23 = v52;
            }
          }

          v21 = v53 + 1;
        }

        while ((v53 + 1) != v17);
        v17 = [v15 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v17);
    }

LABEL_35:

    v13 = v55;
  }
}

- (void)findDeviceUniqueID:(id *)a3 btID:(id *)a4 forURI:(id)a5 token:(id)a6 supportsLiveDelivery:(BOOL *)a7
{
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v12 && v13)
  {
    v15 = [(IDSDAccount *)self service];
    v16 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [v15 wantsTinkerDevices]);

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v20 = self;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%@ Asked to look up device unique id for uri %@ and token %@ in our dependent registrations %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [objc_opt_class() dependentRegistration:v16 findDeviceUniqueID:a3 btID:a4 forURI:v12 token:v14 supportsLiveDelivery:a7];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ Asked to look up device unique id for uri %@ and token %@ - failing", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

+ (BOOL)dependentRegistration:(id)a3 hasDependentRegistrationWithURI:(id)a4 token:(id)a5
{
  v38 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    v36 = v9;
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v50 = a1;
      v51 = 2112;
      v52 = v8;
      v53 = 2112;
      v54 = v10;
      v55 = 2112;
      v56 = v38;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ Asked to look up existence of device with uri %@ and token %@ in our dependent registrations %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v30 = v10;
      v31 = v38;
      v28 = a1;
      v29 = v8;
      _IDSLogV();
    }

    v12 = [v8 lowercaseString];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v38;
    v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v37)
    {
      v35 = *v44;
      v34 = IDSDevicePropertyPushToken;
      v32 = IDSDevicePropertyIdentities;
      v13 = IDSDevicePropertyIdentitiesURI;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v15 objectForKey:v34];
          v17 = v16;
          if (v16 && [v16 isEqualToData:v36])
          {
            v18 = [v15 objectForKey:v32];
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v19 = v18;
            v20 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v20)
            {
              v21 = *v40;
              while (2)
              {
                for (j = 0; j != v20; j = j + 1)
                {
                  if (*v40 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = [*(*(&v39 + 1) + 8 * j) objectForKey:v13];
                  v24 = [v23 lowercaseString];

                  if (v24 && ([v24 isEqualToString:v12] & 1) != 0)
                  {

                    v25 = 1;
                    goto LABEL_35;
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v37);
    }

    v25 = 0;
LABEL_35:
    v8 = v12;
    v10 = v36;
  }

  else
  {
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v50 = a1;
      v51 = 2112;
      v52 = v8;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ Asked to look up existince of device with uri %@ and token %@ - failing", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)hasDependentRegistrationWithURI:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSDAccount *)self service];
  v9 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [v8 wantsTinkerDevices]);

  if ([objc_opt_class() dependentRegistration:v9 hasDependentRegistrationWithURI:v6 token:v7])
  {
    v10 = 1;
  }

  else if ([(IDSDAccount *)self accountType])
  {
    v10 = 0;
  }

  else
  {
    v11 = +[IDSDAccountController sharedInstance];
    v12 = [(IDSDAccount *)self service];
    v13 = [v11 appleIDAccountOnService:v12];
    v10 = [v13 hasDependentRegistrationWithURI:v6 token:v7];
  }

  return v10;
}

- (id)fromIDForCBUUID:(id)a3 deviceID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSServiceProperties *)self->_service shouldAllowLiveMessageDelivery];
  v47 = v7;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v57 = v6;
  if (v6 || v9)
  {
    v52 = v9;
    v11 = [(IDSDAccount *)self service];
    v12 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [v11 wantsTinkerDevices]);

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v64 = self;
      v65 = 2112;
      v66 = v6;
      v67 = 2112;
      v68 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Asked to look up fromID for CBUUID %@ in %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v45 = v6;
      v46 = v12;
      v44 = self;
      _IDSLogV();
    }

    if (v6)
    {
      v14 = +[IDSUTunDeliveryController sharedInstance];
      v56 = [v14 lockedContinuityPeerID:v6];

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v64 = v56;
        v65 = 2112;
        v66 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found locked peer %@ for cbUUID %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v44 = v56;
        v45 = v6;
        _IDSLogV();
      }

      if (!v56)
      {
        v16 = +[IDSUTunDeliveryController sharedInstance];
        v17 = [v16 sessionIDforPeer:v57];

        if (v17)
        {
          v18 = +[IDSUTunDeliveryController sharedInstance];
          v56 = [v18 lockedContinuityPeerID:v17];

          v19 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v64 = v56;
            v65 = 2112;
            v66 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found locked peer %@ for sessionID %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v44 = v56;
            v45 = v17;
            _IDSLogV();
          }
        }

        else
        {
          v20 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v64 = 0;
            v65 = 2112;
            v66 = v57;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Couldn't find locked peer %@ for cbUUID %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v44 = 0;
            v45 = v57;
            _IDSLogV();
          }

          v56 = 0;
        }
      }
    }

    else
    {
      v56 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v12;
    v21 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v21)
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v50 = IDSDevicePropertyPrivateDeviceData;
      v51 = *v59;
      v49 = IDSPrivateDeviceDataUniqueID;
      v22 = IDSDevicePropertyNSUUID;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v58 + 1) + 8 * i);
          v25 = [v24 objectForKey:{v50, v44, v45, v46}];
          v26 = [v25 _stringForKey:v49];
          v27 = +[IDSDAccountController sharedInstance];
          v28 = [v27 propertiesForDeviceWithUniqueID:v26];
          v29 = [v28 objectForKey:v22];

          if (v57)
          {
            v30 = [(IDSDAccount *)v29 isEqualToString:v57];
          }

          else
          {
            v30 = 0;
          }

          if (v52)
          {
            v31 = [(IDSDAccount *)v26 isEqualToString:v47];
          }

          else
          {
            v31 = 0;
          }

          if (v56)
          {
            v32 = [(IDSDAccount *)v26 isEqualToString:?];
          }

          else
          {
            v32 = 0;
          }

          if ((v30 | v31))
          {
            if ((v32 | v31))
            {
              v10 = [(IDSDAccount *)self _fromIDFromDevice:v24 withCBUUID:v29 uniqueID:v26];

              goto LABEL_76;
            }

            v33 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v64 = v29;
              v65 = 2112;
              v66 = v26;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CBUUID matched, but uniqueID mismatched. Setting fallback device. { cbuuid: %@, uniqueID: %@ }", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v44 = v29;
              v45 = v26;
              _IDSLogV();
            }

            v34 = v24;

            v35 = v29;
            v36 = v26;

            v53 = v36;
            v54 = v35;
            v55 = v34;
          }
        }

        v21 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
    }

    v37 = [(IDSServiceProperties *)self->_service shouldAllowLiveMessageDelivery];
    if (v55)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (v38 == 1)
    {
      v39 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(IDSServiceProperties *)self->_service serviceName];
        *buf = 138412802;
        v64 = v57;
        v65 = 2112;
        v66 = v56;
        v67 = 2112;
        v68 = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Did not find any device in dependentRegistrations that matches lockedPeerID. Service supports live delivery, so falling back to device that matches just cbuuid { cbuuid: %@, lockedPeerID: %@, service: %@ }", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [(IDSServiceProperties *)self->_service serviceName];
        v46 = v45 = v56;
        v44 = v57;
        _IDSLogV();
      }

      v10 = [(IDSDAccount *)self _fromIDFromDevice:v55 withCBUUID:v54 uniqueID:v53, v44, v45, v46];
    }

    else
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [obj count];
        *buf = 138412802;
        v64 = v57;
        v65 = 2112;
        v66 = v56;
        v67 = 2048;
        v68 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Did not find any device in dependentRegistrations that matches {cbuuid: %@, lockedPeerID: %@, count: %ld}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [obj count];
        _IDSLogV();
      }

      v10 = 0;
    }

LABEL_76:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_fromIDFromDevice:(id)a3 withCBUUID:(id)a4 uniqueID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IDSServiceProperties *)self->_service adHocServiceType]== 2)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 _stringForKey:IDSDevicePropertyIdentifierOverride];
      *buf = 138412802;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Returning device fromID for cbuuid {deviceCBUUID: %@, uniqueID: %@, uniqueIDOverride: %@}", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v13 = _IDSShouldLog();
      v14 = IDSDevicePropertyIdentifierOverride;
      if (v13)
      {
        [v8 _stringForKey:IDSDevicePropertyIdentifierOverride];
        v26 = v25 = v10;
        v24 = v9;
        _IDSLogV();
      }
    }

    else
    {
      v14 = IDSDevicePropertyIdentifierOverride;
    }

    v15 = [v8 _stringForKey:{v14, v24, v25, v26}];
    v22 = _IDSCopyIDForDeviceUniqueID();
  }

  else
  {
    v15 = [v8 _dataForKey:IDSDevicePropertyPushToken];
    v16 = [(IDSDAccount *)self service];
    v17 = [v16 identifier];
    _IDSPrefersPhoneNumbersForServiceIdentifier();

    v18 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
    v19 = _IDSCopyCallerIDWithSelfMessagingHint();
    v20 = [v19 _bestGuessURIFromCanicalizedID];

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Returning token uri fromID for cbuuid {deviceCBUUID: %@, uniqueID: %@, deviceToken: %@, deviceFromID: %@}", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v22 = _IDSCopyIDForTokenWithURI();
  }

  return v22;
}

- (id)defaultPairedDependentRegistrationIncludingTinker:(BOOL)a3
{
  v4 = [(IDSDAccount *)self _dependentRegistrationsForDefaultPairedDevice:1 includingTinker:a3];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v25 = self;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ Asked to look up default paired device dependent registration in %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = self;
    v18 = v4;
    _IDSLogV();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    v9 = IDSDevicePropertyDefaultPairedDevice;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKey:{v9, v17, v18, v19}];
        v13 = [v12 BOOLValue];

        if (v13)
        {
          v15 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v25 = self;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ found default paired device dependent registration %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v14 = v11;
          goto LABEL_21;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)a3 includingTinker:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(IDSDAccount *)self _dependentRegistrationsForDefaultPairedDevice:v5 includingCurrentDevice:0 includingTinker:v4];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)a3 includingCurrentDevice:(BOOL)a4 includingTinker:(BOOL)a5
{
  v135 = a3;
  v118 = objc_autoreleasePoolPush();
  v155 = self;
  v8 = [(IDSDAccount *)self primaryRegistration];
  v9 = [v8 dependentRegistrations];

  v153 = objc_alloc_init(NSMutableArray);
  v10 = +[IDSPairingManager sharedInstance];
  v11 = [v10 pairedDeviceUniqueID];

  v12 = +[IDSPairingManager sharedInstance];
  v13 = v12;
  v117 = a5;
  if (a5)
  {
    [v12 allPairedUniqueIDs];
  }

  else
  {
    [v12 allTraditionallyPairedUniqueIDs];
  }
  v14 = ;

  v134 = v14;
  v137 = [[NSMutableSet alloc] initWithSet:v14];
  v15 = +[IDSPairingManager sharedInstance];
  v133 = [v15 uniqueIDToCbuuidsOfPairingDevicesDictionary];

  context = objc_autoreleasePoolPush();
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = v9;
  v16 = [obj countByEnumeratingWithState:&v165 objects:v175 count:16];
  v132 = v11;
  if (!v16)
  {
    v124 = 0;
    goto LABEL_73;
  }

  v17 = v16;
  v124 = 0;
  v18 = *v166;
  key = IDSDevicePropertyService;
  v144 = IDSDevicePropertyPushToken;
  v136 = IDSDevicePropertySubServices;
  v143 = IDSDevicePropertyPrivateDeviceData;
  v139 = IDSPrivateDeviceDataUniqueID;
  v130 = IDSDevicePropertyDefaultPairedDevice;
  v129 = IDSDevicePropertyIsActivePairedDevice;
  v127 = IDSDevicePropertyDefaultLocalDevice;
  v128 = IDSDevicePropertyIdentifierOverride;
  v126 = IDSDevicePropertyStableBluetoothIdentifier;
  v122 = IDSDevicePropertyPairingProtocolVersion;
  v120 = IDSDevicePropertyMaxCompatibilityVersion;
  v121 = IDSDevicePropertyMinCompatibilityVersion;
  v119 = IDSDeviceServicePropertyMinCompatibilityVersion;
  v123 = IDSDevicePropertyNSUUID;
  v125 = IDSDevicePropertyLocallyPresent;
  v131 = a4;
  v141 = *v166;
  while (2)
  {
    v19 = 0;
    v142 = v17;
    do
    {
      if (*v166 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v165 + 1) + 8 * v19);
      v21 = [v20 objectForKey:{key, context}];
      v22 = [(IDSDAccount *)v155 primaryServiceName];
      v23 = [v22 isEqualToIgnoringCase:v21];

      if (v23)
      {
        v151 = [v20 objectForKey:v144];
        if (!a4)
        {
          v24 = [(IDSDAccount *)v155 primaryRegistration];
          v25 = [v24 pushToken];
          v26 = [v151 isEqualToData:v25];

          if (v26)
          {
            goto LABEL_67;
          }
        }

        v27 = [(IDSDAccount *)v155 service];
        v28 = [v27 identifier];

        v29 = [(IDSDAccount *)v155 service];
        v30 = [v29 adHocServiceType];

        if (v30)
        {
          if (v30 != 5)
          {
            v31 = [v20 objectForKey:v136];
            v32 = [v31 containsObject:v28];

            if (!v32)
            {
LABEL_66:
              v17 = v142;

              v18 = v141;
LABEL_67:

              goto LABEL_68;
            }
          }
        }

        v147 = [v20 objectForKey:v143];
        v33 = [v147 _stringForKey:v139];
        if (v33)
        {
          [v137 removeObject:v33];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v34 = [v33 isEqualToIgnoringCase:v11];
        }

        else
        {
          v34 = 0;
        }

        if (((!v135 | v34) & 1) == 0)
        {
LABEL_65:

          goto LABEL_66;
        }

        v35 = [v20 mutableCopy];
        v36 = v28;
        value = v36;
        if (v36)
        {
          CFDictionarySetValue(v35, key, v36);
          v36 = value;
        }

        v138 = v28;

        if (v30 && v30 != 5)
        {
          [(__CFDictionary *)v35 removeObjectForKey:v136];
        }

        v37 = [NSNumber numberWithBool:v34];
        if (v37)
        {
          CFDictionarySetValue(v35, v130, v37);
        }

        v38 = [NSNumber numberWithBool:v34];
        if (v38)
        {
          CFDictionarySetValue(v35, v129, v38);
        }

        v39 = v33;
        if (v33)
        {
          CFDictionarySetValue(v35, v128, v39);
        }

        v40 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v134 containsObject:v39]);
        if (v40)
        {
          CFDictionarySetValue(v35, v127, v40);
        }

        v41 = [v133 objectForKey:v39];
        v42 = v41;
        if (v41)
        {
          v43 = v41;
          CFDictionarySetValue(v35, v126, v43);
        }

        if (!v34)
        {
LABEL_61:
          v63 = [NSNumber numberWithBool:v34];
          if (v63)
          {
            CFDictionarySetValue(v35, v125, v63);
          }

          v64 = +[IDSDAccountController sharedInstance];
          v65 = [v64 propertiesForDeviceWithUniqueID:v39];
          [(__CFDictionary *)v35 addEntriesFromDictionary:v65];

          [v153 addObject:v35];
          if (v135 & v34)
          {

            goto LABEL_73;
          }

          a4 = v131;
          v11 = v132;
          v28 = v138;
          goto LABEL_65;
        }

        v44 = +[IDSPairingManager sharedInstance];
        v45 = [v44 pairedDevicePairingProtocolVersion];

        if (v45)
        {
          v46 = [NSNumber numberWithUnsignedInt:v45];
          if (v46)
          {
            CFDictionarySetValue(v35, v122, v46);
          }
        }

        v47 = +[IDSPairingManager sharedInstance];
        v48 = [v47 pairedDeviceMinCompatibilityVersion];

        if (v48)
        {
          v49 = [NSNumber numberWithUnsignedInt:v48];
          if (v49)
          {
            CFDictionarySetValue(v35, v121, v49);
          }
        }

        v50 = +[IDSPairingManager sharedInstance];
        v51 = [v50 pairedDeviceMaxCompatibilityVersion];

        if (v51)
        {
          v52 = [NSNumber numberWithUnsignedInt:v51];
          if (v52)
          {
            CFDictionarySetValue(v35, v120, v52);
          }
        }

        v53 = +[IDSPairingManager sharedInstance];
        v54 = [v53 pairedDeviceServiceMinCompatibilityVersion];

        if (v54)
        {
          v55 = [NSNumber numberWithUnsignedInt:v54];
          if (v55)
          {
            CFDictionarySetValue(v35, v119, v55);
          }
        }

        v56 = +[IDSPairingManager sharedInstance];
        v57 = [v56 pairedDeviceUUIDString];

        if (v57)
        {
          CFDictionarySetValue(v35, v123, v57);
        }

        v58 = [(__CFDictionary *)v35 objectForKey:v143];
        v59 = [v58 mutableCopy];

        if (v59)
        {
          v60 = v59;
        }

        else
        {
          v60 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (!v60)
          {
LABEL_60:
            v61 = +[IDSPairingManager sharedInstance];
            v62 = [v61 pairedDevicePrivateData];
            [(__CFDictionary *)v60 addEntriesFromDictionary:v62];

            v124 = 1;
            goto LABEL_61;
          }
        }

        CFDictionarySetValue(v35, v143, v60);

        goto LABEL_60;
      }

LABEL_68:

      v19 = v19 + 1;
    }

    while (v17 != v19);
    v17 = [obj countByEnumeratingWithState:&v165 objects:v175 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_73:

  objc_autoreleasePoolPop(context);
  if (v117)
  {
    v66 = 1;
  }

  else
  {
    v67 = +[IDSPairingManager sharedInstance];
    v66 = [v67 activePairedDeviceHasPairingType:0];
  }

  if ((v124 & 1) == 0)
  {
    v68 = +[IDSPairingManager sharedInstance];
    v69 = [v68 isPaired] & v66;

    if (v69 == 1)
    {
      v70 = [NSMutableDictionary alloc];
      v71 = +[IDSPairingManager sharedInstance];
      v72 = [v71 pairedDevice];
      v73 = [v70 initWithDictionary:v72];

      v74 = [(IDSDAccount *)v155 service];
      v75 = [v74 identifier];

      if (v75)
      {
        CFDictionarySetValue(v73, IDSDevicePropertyService, v75);
      }

      if (v73)
      {
        v76 = +[IDSPairingManager sharedInstance];
        v77 = [v76 pairedDeviceUniqueID];

        [v153 addObject:v73];
        [v137 removeObject:v77];
      }
    }
  }

  if (!v135)
  {
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v78 = v137;
    v79 = [v78 countByEnumeratingWithState:&v161 objects:v174 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v162;
      v82 = IDSDevicePropertyService;
      do
      {
        for (i = 0; i != v80; i = i + 1)
        {
          if (*v162 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v84 = *(*(&v161 + 1) + 8 * i);
          v85 = [NSMutableDictionary alloc];
          v86 = +[IDSPairingManager sharedInstance];
          v87 = [v86 pairedDeviceForUniqueID:v84];
          v88 = [v87 dictionaryRepresentation];
          v89 = [v85 initWithDictionary:v88];

          v90 = [(IDSDAccount *)v155 service];
          v91 = [v90 identifier];

          if (v91)
          {
            CFDictionarySetValue(v89, v82, v91);
          }

          if (v89)
          {
            [v153 addObject:v89];
          }
        }

        v80 = [v78 countByEnumeratingWithState:&v161 objects:v174 count:16];
      }

      while (v80);
    }
  }

  v92 = objc_alloc_init(NSMutableDictionary);
  v148 = objc_alloc_init(NSMutableArray);
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v152 = v153;
  v93 = [v152 countByEnumeratingWithState:&v157 objects:v173 count:16];
  if (v93)
  {
    v94 = v93;
    v95 = 0;
    v96 = 0;
    v156 = *v158;
    v97 = IDSDevicePropertyIdentifierOverride;
    v98 = IDSDevicePropertyPrivateDeviceData;
    obja = IDSPrivateDeviceDataUniqueID;
    keya = IDSPrivateDeviceDataRegistrationDate;
    v154 = v92;
    do
    {
      for (j = 0; j != v94; j = j + 1)
      {
        if (*v158 != v156)
        {
          objc_enumerationMutation(v152);
        }

        v100 = *(*(&v157 + 1) + 8 * j);
        v101 = [v100 objectForKey:{v97, context}];

        if ([v101 length])
        {
          v95 = v101;
        }

        else
        {
          v102 = [v100 objectForKey:v98];
          v95 = [v102 _stringForKey:obja];

          v92 = v154;
        }

        if ([v95 length])
        {
          v103 = [v92 objectForKey:v95];

          if (v103)
          {
            v104 = [v103 objectForKey:v98];
            v105 = [v104 objectForKey:keya];
            [v105 doubleValue];
            v107 = v106;

            v108 = [v100 objectForKey:v98];
            v109 = [v108 objectForKey:keya];
            [v109 doubleValue];
            v111 = v110;

            if (v107 >= v111)
            {
              v112 = +[IMRGLog registration];
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v170 = v100;
                _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Duplicated device %@, ignoring...", buf, 0xCu);
              }
            }

            else
            {
              [v154 setObject:v100 forKey:v95];
              v112 = +[IMRGLog registration];
              if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v170 = v103;
                v171 = 2112;
                v172 = v100;
                _os_log_debug_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEBUG, "Found duplicate device %@, replaced with newer device %@", buf, 0x16u);
              }
            }

            v96 = v103;
            v92 = v154;
          }

          else
          {
            [v92 setObject:v100 forKey:v95];
            v96 = 0;
          }
        }

        else
        {
          [v148 addObject:v100];
        }
      }

      v94 = [v152 countByEnumeratingWithState:&v157 objects:v173 count:16];
    }

    while (v94);
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v113 = [v92 allValues];
  [v148 addObjectsFromArray:v113];

  v114 = v148;
  objc_autoreleasePoolPop(v118);

  return v114;
}

- (NSArray)registeredDevices
{
  v2 = [(IDSDAccount *)self dependentRegistrations];
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [IDSRegisteredDevice registeredDeviceFromDependentRegistrationDictionary:*(*(&v11 + 1) + 8 * i), v11];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)dependentRegistrationMatchingUUID:(id)a3 includingTinker:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(IDSDAccount *)self dependentRegistrationsIncludingTinker:v4];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = IDSDevicePropertyIdentifierOverride;
    v20 = IDSDevicePropertyPrivateDeviceData;
    v19 = IDSPrivateDeviceDataUniqueID;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 _stringForKey:{v11, v19}];
        if (![v14 length])
        {
          v15 = [v13 objectForKey:v20];
          v16 = [v15 _stringForKey:v19];

          v14 = v16;
        }

        if ([v14 isEqualToIgnoringCase:v6])
        {
          v17 = v13;

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (int64_t)lastRegistrationFailureError
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsLastRegistrationFailureErrorKey];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)_broadcastAccountMessageBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(IDSDAccount *)self accountAndAdHocAccounts];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4[2](v4, *(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyListenersWithChanges:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(IMMessageContext);
    [v5 setShouldBoost:0];
    v6 = [v4 objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
    if (v6)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10048C3A8;
      v32[3] = &unk_100BDD470;
      v33 = v5;
      v34 = v6;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v32];
    }

    v7 = [v4 objectForKey:kIDSServiceDefaultsAliasesKey];
    if (v7)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10048C4E0;
      v29[3] = &unk_100BDD470;
      v30 = v5;
      v31 = v7;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v29];
    }

    v8 = [v4 objectForKey:kIDSServiceDefaultsVettedAliasesKey];
    if (v8)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10048C618;
      v26[3] = &unk_100BDD470;
      v27 = v5;
      v28 = v8;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v26];
    }

    v9 = [v4 objectForKey:kIDSServiceDefaultsProfileKey];
    if (v9)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10048C750;
      v23[3] = &unk_100BDD470;
      v24 = v5;
      v25 = v9;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v23];
    }

    v10 = [v4 objectForKey:{kIDSServiceDefaultsLoginAsKey, v7}];
    if (v10)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10048C888;
      v20[3] = &unk_100BDD470;
      v21 = v5;
      v22 = v10;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v20];
    }

    v11 = [v4 objectForKey:kIDSServiceDefaultsDisplayNameKey];
    if (v11)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10048C9C0;
      v17[3] = &unk_100BDD470;
      v18 = v5;
      v19 = v11;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v17];
    }

    v12 = [v4 objectForKey:kIDSServiceDefaultsPseudonymsKey];
    if (v12)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10048CAF8;
      v14[3] = &unk_100BDD470;
      v15 = v5;
      v16 = v12;
      [(IDSDAccount *)self _broadcastAccountMessageBlock:v14];
    }
  }
}

- (void)_writeAccountDefaults:(id)a3 force:(BOOL)a4 interestedSubservices:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ((*(self + 80) & 2) != 0 && !v6 || (*(self + 81) & 8) != 0)
  {
    v19 = +[IMRGLog accountUpdate];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (*(self + 80) >> 1) & 1;
      v21 = (*(self + 81) >> 3) & 1;
      *buf = 136315650;
      v55 = "[IDSDAccount _writeAccountDefaults:force:interestedSubservices:]";
      v56 = 1024;
      *v57 = v20;
      *&v57[4] = 1024;
      *&v57[6] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s returning because duringInit %d isBeingRemoved %d", buf, 0x18u);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v11 = [v8 allKeys];
    v12 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v12)
    {
      v13 = v12;
      v39 = v6;
      v40 = v9;
      v14 = *v50;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          v17 = [v8 objectForKey:v16];
          v18 = [(NSMutableDictionary *)self->_accountInfo objectForKey:v16];
          if (([v17 isNull] & 1) != 0 || !v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
LABEL_37:

            context = objc_autoreleasePoolPush();
            if ([(IDSDAccount *)self accountType]!= 2)
            {
              v22 = +[IMRGLog registration];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v55 = self;
                v56 = 2112;
                *v57 = v8;
                *&v57[8] = 2112;
                v58 = @"YES";
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ - write account defaults: %@  (has changes: %@)", buf, 0x20u);
              }
            }

            [(IDSDAccount *)self _notifyListenersWithChanges:v8];
            v23 = [v8 mutableCopy];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v24 = [v8 allKeys];
            v25 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v46;
              do
              {
                for (j = 0; j != v26; j = j + 1)
                {
                  if (*v46 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v45 + 1) + 8 * j);
                  v30 = [v8 objectForKey:v29];
                  if ([v30 isNull] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v30, "length"))
                  {
                    [v23 removeObjectForKey:v29];
                    [(NSMutableDictionary *)self->_accountInfo removeObjectForKey:v29];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
              }

              while (v26);
            }

            v9 = v40;
            if ([(IDSDAccount *)self isAdHocAccount])
            {
              v31 = [(IDSDAccount *)self service];
              v32 = [v31 identifier];

              v33 = [(IDSDAccount *)self primaryServiceName];
              v34 = [(IDSDAccount *)self service];
              v35 = [v34 pushTopic];

              v36 = [(IDSDAccount *)self primaryAccount];
              v37 = [v36 uniqueID];

              if (v32)
              {
                [v23 setObject:v32 forKey:kIDSServiceDefaultsServiceNameKey];
              }

              if (v33)
              {
                [v23 setObject:v33 forKey:kIDSServiceDefaultsPrimaryServiceNameKey];
              }

              if (v35)
              {
                [v23 setObject:v35 forKey:kIDSServiceDefaultsPushTopicKey];
              }

              if (v37)
              {
                [v23 setObject:v37 forKey:kIDSServiceDefaultsPrimaryAccountKey];
              }
            }

            [(NSMutableDictionary *)self->_accountInfo addEntriesFromDictionary:v23];
            if ((*(self + 81) & 4) == 0)
            {
              *(self + 81) |= 4u;
              [(CUTDeferredTaskQueue *)self->_broadcastAccountInfoChangedTask cancelPendingExecutions];
              [(CUTDeferredTaskQueue *)self->_broadcastAccountInfoChangedTask enqueueExecutionWithTarget:self afterDelay:2.0];
            }

            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10048D314;
            v41[3] = &unk_100BDB450;
            v42 = v40;
            v43 = v8;
            v44 = v39;
            [(IDSDAccount *)self forEachAdhocAccount:v41];

            objc_autoreleasePoolPop(context);
            v11 = +[IDSDAccountController sharedInstance];
            [v11 delayedSaveSettings];
            goto LABEL_65;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (([v17 isEqualToArray:v18] & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (([v17 isEqualToDictionary:v18] & 1) == 0)
              {
                goto LABEL_37;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (([v17 isEqualToSet:v18] & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (([v17 isEqualToValue:v18] & 1) == 0)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (([v17 isEqualToAttributedString:v18] & 1) == 0)
                    {
                      goto LABEL_37;
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if (([v17 isEqualToString:v18] & 1) == 0)
                      {
                        goto LABEL_37;
                      }
                    }

                    else if (![v17 isEqual:v18])
                    {
                      goto LABEL_37;
                    }
                  }
                }
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v9 = v40;
    }

LABEL_65:

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_updateAccountWithAccountInfo:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = self;
    v40 = 2112;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ - update account with defaults: %@", buf, 0x16u);
  }

  v6 = self;
  if ([(IDSDAccount *)v6 accountType]!= 2 && [(IDSDAccount *)v6 isAdHocAccount])
  {
    v7 = [(IDSDAccount *)v6 primaryAccount];

    v6 = v7;
  }

  v8 = [v4 objectForKey:kIDSServiceDefaultsAliasesKey];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [NSSet alloc];
      v10 = [(IDSDAccount *)v6 registration];
      v11 = [v10 candidateEmails];
      v12 = [v9 initWithArray:v11];

      v13 = objc_alloc_init(NSMutableSet);
      v30 = v12;
      v29 = [[NSMutableSet alloc] initWithSet:v12];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v8;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        v18 = kIDSServiceDefaultsAliasKey;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [*(*(&v33 + 1) + 8 * i) objectForKey:v18];
            [(IDSDAccount *)v13 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v16);
      }

      [(IDSDAccount *)v29 minusSet:v13];
      [(IDSDAccount *)v13 minusSet:v30];
      v21 = +[IMRGLog accountUpdate];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Current   aliases: %@", buf, 0xCu);
      }

      v22 = +[IMRGLog accountUpdate];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v29;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Aliases to remove: %@", buf, 0xCu);
      }

      v23 = +[IMRGLog accountUpdate];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Aliases to    add: %@", buf, 0xCu);
      }

      v24 = [(IDSDAccount *)v29 allObjects];
      [(IDSDAccount *)v6 _removeAliases:v24 withReason:6];

      v25 = [(IDSDAccount *)v29 allObjects];
      [(IDSDAccount *)v6 removeAliases:v25];

      v26 = [(IDSDAccount *)v13 allObjects];
      [(IDSDAccount *)v6 addAliases:v26];
    }
  }

  [(IDSDAccount *)v6 _writeAccountDefaults:v4 force:0];
  v27 = [(IDSDAccount *)v6 linkedAccounts];
  if ([v27 count])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10048D88C;
    v31[3] = &unk_100BDB090;
    v32 = [[NSMutableDictionary alloc] initWithDictionary:v4];
    v28 = v32;
    [v27 __imForEach:v31];
  }
}

- (BOOL)forEachAdhocAccount:(id)a3
{
  v4 = a3;
  v5 = +[IDSDServiceController sharedInstance];
  v6 = [(IDSDAccount *)self service];
  v7 = [v6 identifier];
  v8 = [v5 adHocServicesForIdentifier:v7];

  v9 = v8;
  v10 = [v8 count];
  if (v10)
  {
    v41 = v10;
    v42 = v8;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v57;
      v49 = v4;
      v50 = self;
      v43 = *v57;
      do
      {
        v14 = 0;
        v44 = v12;
        do
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v56 + 1) + 8 * v14);
          if (-[IDSDAccount accountType](self, "accountType", v41, v42) != 1 && -[IDSDAccount accountType](self, "accountType") || [v15 adHocServiceType] != 2)
          {
            if (![v15 disabledOnTinkerWatch] || (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCurrentDeviceTinkerConfiguredWatch"), v16, !v17))
            {
              if ([v15 enabledOnlyWhenPaired])
              {
                v19 = +[IDSDAccountController sharedInstance];
                v20 = [v19 isTraditionalLocalSetupEnabled];

                if (!v20)
                {
                  goto LABEL_41;
                }
              }

              v47 = v14;
              context = objc_autoreleasePoolPush();
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v21 = +[IDSDAccountController sharedInstance];
              v22 = [v21 accountsOnService:v15];

              v23 = [v22 countByEnumeratingWithState:&v52 objects:v60 count:16];
              if (!v23)
              {
                goto LABEL_40;
              }

              v24 = v23;
              v25 = *v53;
              v51 = v22;
              while (2)
              {
                v26 = 0;
LABEL_20:
                if (*v53 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v52 + 1) + 8 * v26);
                v28 = [(IDSDAccount *)self accountType];
                if (v28 == 2)
                {
                  if ([v27 accountType] != 2)
                  {
                    goto LABEL_33;
                  }
                }

                else if (v28 == 1)
                {
                  if ([v27 accountType] != 1)
                  {
                    goto LABEL_33;
                  }

                  v32 = [v27 loginID];
                  v33 = [v32 lowercaseString];
                  v34 = [(IDSDAccount *)self loginID];
                  v35 = [v34 lowercaseString];
                  if (IMAreObjectsLogicallySame())
                  {

                    v22 = v51;
                  }

                  else
                  {
                    v36 = [v27 loginID];
                    if ([v36 length])
                    {

                      v4 = v49;
                      v22 = v51;
                      goto LABEL_33;
                    }

                    v37 = [(IDSDAccount *)self loginID];
                    v48 = [v37 length];

                    self = v50;
                    v4 = v49;
                    v22 = v51;
                    if (v48)
                    {
LABEL_33:
                      if (v24 == ++v26)
                      {
                        v38 = [v22 countByEnumeratingWithState:&v52 objects:v60 count:16];
                        v24 = v38;
                        if (!v38)
                        {
LABEL_40:

                          objc_autoreleasePoolPop(context);
                          v13 = v43;
                          v12 = v44;
                          v14 = v47;
                          goto LABEL_41;
                        }

                        continue;
                      }

                      goto LABEL_20;
                    }
                  }
                }

                else
                {
                  if (v28)
                  {
                    goto LABEL_33;
                  }

                  if ([v27 accountType])
                  {
                    goto LABEL_33;
                  }

                  v29 = [(IDSDAccount *)self userUniqueIdentifier];
                  v30 = [v27 userUniqueIdentifier];
                  v31 = [v29 isEqualToString:v30];

                  self = v50;
                  if ((v31 & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }

                break;
              }

              v4[2](v4, v27);
              goto LABEL_33;
            }

            v18 = +[IMRGLog registration];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v62 = v15;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not reporting tinker disabled service {service: %@}", buf, 0xCu);
            }
          }

LABEL_41:
          v14 = v14 + 1;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
      }

      while (v12);
    }

    v10 = v41;
    v9 = v42;
  }

  v39 = v10 != 0;

  return v39;
}

- (NSString)debugDescription
{
  v24 = objc_autoreleasePoolPush();
  v21 = [(IDSDAccount *)self service];
  v20 = [(IDSDAccount *)self loginID];
  v26 = [(IDSDAccount *)self uniqueID];
  [(IDSDAccount *)self accountType];
  v18 = _StringForIDSAccountType();
  v23 = [(IDSDAccount *)self vettedAliases];
  v25 = [IDSLogFormatter descriptionForArray:v23 options:0];
  v22 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  v17 = [IDSLogFormatter descriptionForArray:v22 options:0];
  v19 = [(IDSDAccount *)self registration];
  v3 = [v19 debugDescription];
  v4 = [(IDSDAccount *)self isRegistered];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  v16 = v5;
  v15 = sub_100016528([(IDSDAccount *)self registrationError]);
  v14 = sub_100016528([(IDSDAccount *)self lastRegistrationFailureError]);
  v13 = [(IDSDAccount *)self lastRegistrationFailureDate];
  v6 = [(IDSDAccount *)self lastRegistrationSuccessDate];
  v7 = [(IDSDAccount *)self userUniqueIdentifier];
  v8 = [(IDSDAccount *)self linkedAccounts];
  v9 = [v8 arrayByApplyingSelector:"uniqueID"];
  v10 = [IDSLogFormatter descriptionForArray:v9 options:0];
  v11 = [NSString stringWithFormat:@"IDSDAccount: %p [Service: %@ Login: %@ UniqueID: %@ Account Type: %@ Vetted Aliases: %@ Aliases: %@ Registration: %@  Registered: %@  Registration Error: %@  Last Registration Failure Error: %@  Last Registration Failure Date: %@  Last Registration Success Date: %@  User Unique ID: %@ Linked Accounts: %@]", self, v21, v20, v26, v18, v25, v17, v3, v16, v15, v14, v13, v6, v7, v10];

  objc_autoreleasePoolPop(v24);

  return v11;
}

- (void)_notifyClientDelegatesWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(IMMessageContext);
    v7 = +[IDSDaemon sharedInstance];
    v8 = [(IDSDAccount *)self service];
    v9 = [v8 pushTopic];
    v10 = [v7 broadcasterForTopic:v9 ignoreServiceListener:1 messageContext:v6];

    v11 = objc_autoreleasePoolPush();
    v12[2](v12, v10);
    objc_autoreleasePoolPop(v11);

    objc_autoreleasePoolPop(v5);
    v4 = v12;
  }
}

- (void)_notifyDelegatesAddedLocalDevice:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10048E318;
  v5[3] = &unk_100BDD498;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v5];
}

- (void)didAddPairedDevice:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKey:IDSDevicePropertyPairingType];
  v5 = [v4 integerValue];

  if (!v5)
  {
    [(IDSDAccount *)self _notifyDelegatesAddedLocalDevice:v6];
  }
}

- (void)didRemovePairedDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:IDSDevicePropertyPairingType];
  v6 = [v5 integerValue];

  if (!v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10048E690;
    v7[3] = &unk_100BDD498;
    v7[4] = self;
    v8 = v4;
    [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v7];
  }
}

- (void)didUpdatePairedDevice:(id)a3
{
  v4 = [a3 objectForKey:IDSDevicePropertyPairingType];
  v5 = [v4 integerValue];

  if (!v5)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10048E918;
    v6[3] = &unk_100BDB090;
    v6[4] = self;
    [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v6];
  }
}

- (void)didUpdateProtocolForPairedDevice:(id)a3
{
  v4 = [a3 objectForKey:IDSDevicePropertyPairingType];
  v5 = [v4 integerValue];

  if (!v5)
  {
    v6 = [(IDSDAccount *)self service];
    v7 = [v6 pushTopic];
    if ([v7 isEqualToIgnoringCase:@"com.apple.private.alloy.bluetoothregistry"])
    {
    }

    else
    {
      v8 = [(IDSDAccount *)self service];
      v9 = [v8 pushTopic];
      v10 = [v9 isEqualToIgnoringCase:@"com.apple.private.alloy.bluetoothregistryclassc"];

      if (!v10)
      {
        return;
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10048EC30;
    v11[3] = &unk_100BDB090;
    v11[4] = self;
    [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v11];
  }
}

- (void)setPendingDependentCheck:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 80) = *(self + 80) & 0xDF | v3;
}

- (void)setIsBeingRemoved:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 81) = *(self + 81) & 0xF7 | v3;
}

- (id)senderKeyDistributionManager
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 senderKeyDistributionManager];

  return v3;
}

- (int)_currentForcedGDRCount
{
  v2 = [(IDSDAccount *)self userDefaults];
  v3 = [v2 appValueForKey:@"performedGDROverrides"];
  v4 = [v3 intValue];

  return v4;
}

- (void)_incrementForcedGDRCount
{
  v3 = [(IDSDAccount *)self _currentForcedGDRCount];
  v5 = [(IDSDAccount *)self userDefaults];
  v4 = [NSNumber numberWithInt:v3 + 1];
  [v5 setAppValue:v4 forKey:@"performedGDROverrides"];
}

- (void)_clearForcedGDRCount
{
  v2 = [(IDSDAccount *)self userDefaults];
  [v2 removeAppValueForKey:@"performedGDROverrides"];
}

- (void)_clearForcedGDRDate
{
  v2 = [(IDSDAccount *)self userDefaults];
  [v2 removeAppValueForKey:@"last24PeriodGDRPerformed"];
}

- (id)_performedForcedGDRDatePeriod
{
  v2 = [(IDSDAccount *)self userDefaults];
  v3 = [v2 appValueForKey:@"last24PeriodGDRPerformed"];
  [v3 doubleValue];
  v5 = v4;

  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:v5];
  v7 = +[NSDate date];
  v8 = [v6 earlierDate:v7];

  if (v8 == v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (void)_updatePerformedForcedGDRDate
{
  v8 = +[NSDate date];
  v3 = [v8 dateByAddingTimeInterval:-86400.0];
  v4 = [(IDSDAccount *)self _performedForcedGDRDatePeriod];
  v5 = [v4 earlierDate:v3];

  if (v5 == v4)
  {
    v6 = [(IDSDAccount *)self userDefaults];
    [v8 timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithDouble:?];
    [v6 setAppValue:v7 forKey:@"last24PeriodGDRPerformed"];
  }
}

- (BOOL)_hasBudgetForForcedGDR
{
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"md-ids-gdr-day-limit"];

  v5 = IMGetAppIntForKey();
  if (v5 >= 1)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100924B7C(v5, v6);
    }

    v7 = v5 & 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v9 = [v8 intValue];
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d max forced GDRs", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v17 = v9;
        _IDSLogV();
      }

      v7 = v9;
LABEL_5:

      if (!v7)
      {
        return v7;
      }

      goto LABEL_21;
    }
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Server Bag has no value for max GDR per day, using the default: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = 1;
    _IDSLogV();
  }

  v7 = 1;
LABEL_21:
  if (v7 <= [(IDSDAccount *)self _currentForcedGDRCount])
  {
    v12 = [(IDSDAccount *)self _performedForcedGDRDatePeriod];
    v7 = +[NSDate date];
    v13 = [v7 dateByAddingTimeInterval:-86400.0];

    v14 = [v12 earlierDate:v13];
    LODWORD(v7) = v14 == v12;

    if (v7)
    {
      [(IDSDAccount *)self _clearForcedGDRCount];
      [(IDSDAccount *)self _clearForcedGDRDate];
      v15 = [(IDSDAccount *)self _performedForcedGDRDatePeriod];
    }
  }

  else
  {
    [(IDSDAccount *)self _incrementForcedGDRCount];
    [(IDSDAccount *)self _updatePerformedForcedGDRDate];
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_updatePhoneNumberCallerID
{
  registrationInfo = self->_registrationInfo;
  if (registrationInfo && ![(IDSRegistration *)registrationInfo registrationType])
  {
    v4 = [(IDSRegistration *)self->_registrationInfo phoneNumber];
    if ([v4 length])
    {
      v5 = IMSingleObjectArray();
      [(IDSDAccount *)self _updateVettedAliases:v5 emailInfo:0 addToCurrentHandlesIfNeeded:1];

      v6 = [NSDictionary dictionaryWithObject:v4 forKey:kIDSServiceDefaultsLoginAsKey];
      [(IDSDAccount *)self writeAccountDefaults:v6];

      v7 = [NSDictionary dictionaryWithObject:v4 forKey:kIDSServiceDefaultsDisplayNameKey];
      [(IDSDAccount *)self writeAccountDefaults:v7];

      if ((*(self + 80) & 2) == 0)
      {
        [(IDSRegistration *)self->_registrationInfo saveToKeychain];
      }
    }

    else
    {
      v8 = [NSDictionary dictionaryWithObject:&stru_100C06028 forKey:kIDSServiceDefaultsLoginAsKey];
      [(IDSDAccount *)self writeAccountDefaults:v8];

      v9 = [NSDictionary dictionaryWithObject:&stru_100C06028 forKey:kIDSServiceDefaultsDisplayNameKey];
      [(IDSDAccount *)self writeAccountDefaults:v9];

      if ([(IDSDAccount *)self isRegistered])
      {
        v10 = +[IMRGLog warning];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_100924BF4();
        }
      }
    }

    if ([v4 length] && -[IDSDAccount _validationStatusForAlias:](self, "_validationStatusForAlias:", v4) != 3)
    {
      v12 = +[IMRGLog registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100924C28();
      }

      v13 = +[NSArray array];
      v14 = [NSDictionary dictionaryWithObject:v13 forKey:kIDSServiceDefaultsAliasesKey];
      [(IDSDAccount *)self writeAccountDefaults:v14];

      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100924C5C();
      }

      v16 = IMSingleObjectArray();
      [(IDSDAccount *)self _addAliases:v16];

      v17 = +[IMRGLog registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100924CD0();
      }

      [(IDSDAccount *)self _setValidationStatus:3 error:0xFFFFFFFFLL forAlias:v4 info:0 addToCurrentHandlesIfNeeded:1 forceAdd:0];
    }

    else
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100924D04();
      }
    }
  }
}

- (void)_updateCallerIDToTemporaryPhone
{
  v3 = [(IDSServiceProperties *)self->_service identifier];
  v4 = [v3 isEqualToString:@"com.apple.madrid"];

  if (v4)
  {
    v5 = @"iMessage";
  }

  else
  {
    v6 = [(IDSServiceProperties *)self->_service identifier];
    v7 = [v6 isEqualToString:@"com.apple.ess"];

    if (!v7)
    {
      return;
    }

    v5 = @"FaceTime";
  }

  v8 = IMPreferredAccountMap();
  v9 = [v8 objectForKey:v5];
  v10 = [v9 objectForKey:@"guid"];

  v11 = [(IDSDAccount *)self accountController];
  v12 = [v11 appleIDAccountOnService:self->_service];
  v13 = [v12 uniqueID];

  if (!v10 || ([v10 isEqualToString:v13] & 1) == 0)
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(IDSDAccount *)self uniqueID];
      v17 = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating preferred account to Home Number {service: %@, oldID: %@, newID: %@}", &v17, 0x20u);
    }

    v16 = [(IDSDAccount *)self uniqueID];
    IMUpdatePreferredAccountForService();
  }
}

- (int)_neededRegistrationType
{
  if ([(IDSDAccount *)self accountType])
  {
    return 1;
  }

  if ([(IDSDAccount *)self isTemporary])
  {
    return 2;
  }

  return 0;
}

- (BOOL)_rebuildRegistrationInfo:(BOOL)a3
{
  v3 = a3;
  if (![(IDSDAccount *)self isAdHocAccount])
  {
    if ([(IDSDAccount *)self accountType]== 2)
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100924D6C(self);
      }

      goto LABEL_7;
    }

    v8 = +[IDSRegistrationKeyManager sharedInstance];
    if ([v8 requiresKeychainMigration])
    {
      v9 = [(IDSDAccount *)self systemMonitor];
      v10 = [v9 isUnderFirstDataProtectionLock];

      if (v10)
      {
        v5 = +[IMRGLog registration];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Under first lock and keychain upgrade pending, not loading registration for this account", buf, 2u);
        }

        v6 = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }

    if (!self->_registrationInfo)
    {
      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100924D38();
      }

      goto LABEL_34;
    }

    v11 = [(IDSDAccount *)self _neededRegistrationType];
    if (v11 == [(IDSRegistration *)self->_registrationInfo registrationType])
    {
      if (!self->_registrationInfo)
      {
        return 0;
      }

      if ([IDSRegistrationController systemSupportsRegistrationInfo:?])
      {
        if (self->_registrationInfo)
        {
          if ([(IDSDAccount *)self _neededRegistrationType]== 1)
          {
            v12 = [(IDSDAccount *)self loginID];
            v13 = [(IDSRegistration *)self->_registrationInfo email];
            v14 = [v12 isEqualToIgnoringCase:v13];

            if ((v14 & 1) == 0)
            {
              v20 = +[IMRGLog registration];
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_34;
              }

              v212 = [(IDSDAccount *)self loginID];
              v213 = [(IDSRegistration *)self->_registrationInfo email];
              *buf = 138412546;
              *v236 = v212;
              *&v236[8] = 2112;
              v237 = v213;
              v214 = "Emails are different, we need to rebuild  (%@ vs %@)";
              goto LABEL_219;
            }
          }

          if (!self->_registrationInfo)
          {
            return 0;
          }

          v15 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
          if (!v15)
          {
            return 0;
          }

          v16 = v15;
          v17 = [(IDSRegistration *)self->_registrationInfo pushToken];
          v18 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            return 0;
          }

          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v212 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
            v213 = [(IDSRegistration *)self->_registrationInfo pushToken];
            *buf = 138412546;
            *v236 = v212;
            *&v236[8] = 2112;
            v237 = v213;
            v214 = "Push tokens are different, we need to rebuild  (%@ vs %@)";
LABEL_219:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v214, buf, 0x16u);
          }

LABEL_34:

          if (!v3)
          {
            return 1;
          }

          registrationInfo = self->_registrationInfo;
          if (registrationInfo && [(IDSRegistration *)registrationInfo registrationStatus]== 8)
          {
            v28 = +[IDSRegistrationController sharedInstance];
            [v28 unregisterInfo:self->_registrationInfo];
          }

          v29 = self->_registrationInfo;
          v30 = self->_registrationInfo;
          self->_registrationInfo = 0;

          v31 = +[IDSRegistrationController sharedInstance];
          [v31 cancelActionsForRegistrationInfo:v29];

          v32 = +[IDSRegistrationController sharedInstance];
          [v32 stopTrackingRegistration:v29];

          p_superclass = IDSBTDatagramLink.superclass;
          v34 = +[IDSHeartbeatCenter sharedInstance];
          [v34 removeRegistrationInfo:v29];

          v35 = [(IDSDAccount *)self _neededRegistrationType];
          v36 = v35;
          if (v35)
          {
            if (v35 == 2)
            {
              v38 = [(IDSDAccount *)self userUniqueIdentifier];
            }

            else
            {
              v37 = 0;
              if (v35 != 1)
              {
                goto LABEL_48;
              }

              v38 = [(IDSDAccount *)self loginID];
            }

            v37 = v38;
          }

          else
          {
            v39 = [(IDSDAccount *)self userUniqueIdentifier];
            v40 = v39;
            v41 = @"phone-number-registration";
            if (v39)
            {
              v41 = v39;
            }

            v37 = v41;
          }

LABEL_48:

          v42 = +[IDSRegistrationKeychainManager sharedInstance];
          v43 = [(IDSDAccount *)self serviceType];
          v44 = [v42 registrationWithServiceType:v43 registrationType:v36 value:v37];
          v45 = self->_registrationInfo;
          self->_registrationInfo = v44;

          [(IDSRegistration *)self->_registrationInfo setShouldAutoRegisterAllHandles:[(IDSDAccount *)self shouldAutoRegisterAllHandles]];
          [(IDSRegistration *)self->_registrationInfo setShouldRegisterUsingDSHandle:[(IDSDAccount *)self shouldRegisterUsingDSHandle]];
          v46 = self->_registrationInfo;
          v219 = v37;
          if (v46)
          {
            if (v36 != 1)
            {
              goto LABEL_78;
            }

            v47 = [(IDSRegistration *)v46 regionID];
            v48 = &_dispatch_main_q_ptr;
            if ([v47 length])
            {
              v49 = [(IDSRegistration *)self->_registrationInfo regionBasePhoneNumber];
              v50 = [(IDSRegistration *)self->_registrationInfo regionServerContext];
              v51 = [NSNumber numberWithInt:3];
              v52 = [NSNumber numberWithInt:0xFFFFFFFFLL];
              v53 = +[IMRGLog registration];
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = v47;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Found pre-existing regionID %@", buf, 0xCu);
              }

              v54 = +[IMRGLog registration];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = v49;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Found pre-existing base phone number %@", buf, 0xCu);
              }

              v55 = +[IMRGLog registration];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = v50;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found pre-existing region context %@", buf, 0xCu);
              }

              v56 = objc_alloc_init(NSMutableDictionary);
              v57 = v47;
              if (v57)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileRegionIDKey, v57);
              }

              v58 = v49;
              v48 = &_dispatch_main_q_ptr;
              if (v58)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileBaseNumberKey, v58);
              }

              v59 = v50;
              if (v59)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileServerContextKey, v59);
              }

              v60 = v51;
              if (v60)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileValdationStatusKey, v60);
              }

              v61 = v52;
              if (v61)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileValdationErrorCodeKey, v61);
              }

              v62 = [NSDictionary dictionaryWithObject:v56 forKey:kIDSServiceDefaultsProfileKey];
              [(IDSDAccount *)self _writeAccountDefaults:v62 force:1];

              p_superclass = (IDSBTDatagramLink + 8);
            }

            v63 = [(IDSRegistration *)self->_registrationInfo vettedEmails];
            v233[0] = _NSConcreteStackBlock;
            v233[1] = 3221225472;
            v233[2] = sub_1004EB1A0;
            v233[3] = &unk_100BD9528;
            v233[4] = self;
            v64 = [v63 __imArrayByApplyingBlock:v233];

            v65 = [(IDSDAccount *)self vettedAliases];
            v66 = [v65 count];

            if (v66)
            {
              v67 = self->_registrationInfo;
              v68 = [(IDSDAccount *)self vettedAliases];
              [(IDSRegistration *)v67 setVettedEmails:v68];
            }

            if ([v64 count])
            {
              v69 = +[IMRGLog registration];
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = v64;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Found pre-existing confirmedEmails emails %@", buf, 0xCu);
              }

              v70 = [(dispatch_queue_s *)v48[25] dictionaryWithObject:v64 forKey:kIDSServiceDefaultsVettedAliasesKey];
              [(IDSDAccount *)self _writeAccountDefaults:v70 force:1];
            }
          }

          else
          {
            v47 = +[IMRGLog registration];
            if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_77;
            }

            v64 = [(IDSDAccount *)self serviceType];
            *buf = 138412546;
            *v236 = v64;
            *&v236[8] = 2112;
            v237 = v37;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Didn't find a registration in the keychain for %@ %@", buf, 0x16u);
          }

LABEL_77:
          if (!self->_registrationInfo)
          {
            v72 = 0;
            goto LABEL_83;
          }

LABEL_78:
          v71 = [(IDSDAccount *)self _rebuildRegistrationInfo:0];
          v72 = self->_registrationInfo;
          if (!v71)
          {
            if (!v72)
            {
              goto LABEL_165;
            }

            v73 = +[IMRGLog registration];
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = self->_registrationInfo;
              *buf = 138412290;
              *v236 = v74;
              _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Using cached registration info: %@", buf, 0xCu);
            }

LABEL_162:

            v173 = self->_registrationInfo;
            if (v173)
            {
              v174 = [(IDSRegistration *)v173 userUniqueIdentifier];

              v175 = self->_registrationInfo;
              if (!v174)
              {
                v176 = [(IDSDAccount *)self userUniqueIdentifier];
                [(IDSRegistration *)v175 setUserUniqueIdentifier:v176];

                v175 = self->_registrationInfo;
              }

LABEL_166:
              v177 = [(IDSRegistration *)v175 uris];
              if ([v177 count] || -[IDSRegistration shouldRegisterUsingDSHandle](self->_registrationInfo, "shouldRegisterUsingDSHandle"))
              {
              }

              else
              {
                v210 = [(IDSRegistration *)self->_registrationInfo registrationStatus];

                if (v210 == 8)
                {
                  v211 = +[IMRGLog registration];
                  if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "  We have no URIs registered, and we're not DS based, forcing unregistered", buf, 2u);
                  }

                  [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
                }
              }

              v178 = [(IDSRegistration *)self->_registrationInfo registrationCert];
              if (v178)
              {
              }

              else if ([(IDSRegistration *)self->_registrationInfo registrationStatus]== 8)
              {
                v179 = +[IMRGLog registration];
                if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v179, OS_LOG_TYPE_DEFAULT, "  We have no registration cert, forcing unregistered", buf, 2u);
                }

                [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
              }

              v180 = [(IDSDAccount *)self accountInfo];
              v181 = kIDSServiceDefaultsAuthorizationIDKey;
              v182 = [v180 objectForKey:kIDSServiceDefaultsAuthorizationIDKey];

              v183 = [(IDSRegistration *)self->_registrationInfo profileID];
              if (![v182 length] && objc_msgSend(v183, "length"))
              {
                v184 = +[IMRGLog registration];
                if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v236 = v183;
                  _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "Setting profileID %@ onto account", buf, 0xCu);
                }

                v185 = objc_alloc_init(NSMutableDictionary);
                v186 = v183;
                if (v186)
                {
                  CFDictionarySetValue(v185, v181, v186);
                }

                [(IDSDAccount *)self writeAccountDefaults:v185];
              }

              v216 = v183;
              v187 = [(IDSDAccount *)self registrationError];
              if ([(IDSDAccount *)self shouldRegisterUsingDSHandle])
              {
                v188 = [(IDSRegistration *)self->_registrationInfo dsHandle];
                v189 = [v188 length] == 0;
              }

              else
              {
                v189 = 0;
              }

              if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
              {
                v190 = [(IDSRegistration *)self->_registrationInfo profileID];
                if (![v190 length])
                {
                  v189 = 1;
                }
              }

              v218 = v182;
              if ((v187 - 33) > 1)
              {
                if (!v189)
                {
LABEL_197:
                  [(IDSDAccount *)self refreshAdHocServiceNames];
                  v198 = +[IMRGLog registration];
                  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
                  {
                    v199 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
                    v200 = IMLoggingStringForArray();
                    v201 = [(IDSDAccount *)self uniqueID];
                    *buf = 138412546;
                    *v236 = v200;
                    *&v236[8] = 2112;
                    v237 = v201;
                    _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "Current aliases: %@   for: %@", buf, 0x16u);
                  }

                  v222 = 0u;
                  v223 = 0u;
                  v220 = 0u;
                  v221 = 0u;
                  v202 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
                  v203 = [v202 countByEnumeratingWithState:&v220 objects:v234 count:16];
                  if (v203)
                  {
                    v204 = v203;
                    v205 = *v221;
                    do
                    {
                      for (i = 0; i != v204; i = i + 1)
                      {
                        if (*v221 != v205)
                        {
                          objc_enumerationMutation(v202);
                        }

                        v207 = *(*(&v220 + 1) + 8 * i);
                        if ([(IDSDAccount *)self _validationStatusForAlias:v207]!= -1)
                        {
                          v208 = +[IMRGLog registration];
                          if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *v236 = v207;
                            _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, " => adding candidate email: %@", buf, 0xCu);
                          }

                          [(IDSRegistration *)self->_registrationInfo addCandidateEmail:v207];
                        }
                      }

                      v204 = [v202 countByEnumeratingWithState:&v220 objects:v234 count:16];
                    }

                    while (v204);
                  }

                  v209 = +[IDSRegistrationController sharedInstance];
                  [v209 startTrackingActiveRegistration:self->_registrationInfo];

                  v6 = 1;
                  v5 = v219;
                  goto LABEL_8;
                }

                v192 = +[IMRGLog registration];
                if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                {
                  v193 = self->_registrationInfo;
                  *buf = 138412290;
                  *v236 = v193;
                  _os_log_impl(&_mh_execute_header, v192, OS_LOG_TYPE_DEFAULT, "*** Account needs repair, let's try to pull what we can from accounts (%@)", buf, 0xCu);
                }

                v191 = +[FTPasswordManager sharedInstance];
                v194 = [(IDSRegistration *)self->_registrationInfo profileID];
                v195 = [(IDSRegistration *)self->_registrationInfo email];
                v196 = [v195 lowercaseString];
                v197 = [(IDSRegistration *)self->_registrationInfo serviceType];
                v224[0] = _NSConcreteStackBlock;
                v224[1] = 3221225472;
                v224[2] = sub_1004EB208;
                v224[3] = &unk_100BDEE48;
                v224[4] = self;
                [v191 fetchAuthTokenForProfileID:v194 username:v196 service:v197 outRequestID:0 completionBlock:v224];
              }

              else
              {
                v191 = +[IMRGLog registration];
                if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v191, OS_LOG_TYPE_DEFAULT, "Not Attempting Account Repair, This is a managed AppleID", buf, 2u);
                }
              }

              goto LABEL_197;
            }

LABEL_165:
            v175 = 0;
            goto LABEL_166;
          }

LABEL_83:
          if ([(IDSRegistration *)v72 registrationStatus]== 8)
          {
            v75 = +[IDSRegistrationController sharedInstance];
            [v75 unregisterInfo:self->_registrationInfo];
          }

          v76 = +[IDSRegistrationController sharedInstance];
          [v76 cancelActionsForRegistrationInfo:self->_registrationInfo];

          v77 = +[IDSRegistrationController sharedInstance];
          [v77 stopTrackingRegistration:self->_registrationInfo];

          v78 = [p_superclass + 469 sharedInstance];
          [v78 removeRegistrationInfo:self->_registrationInfo];

          v79 = objc_alloc_init(IDSRegistration);
          v80 = self->_registrationInfo;
          self->_registrationInfo = v79;

          v81 = [(IDSDAccount *)self serviceType];
          [(IDSRegistration *)self->_registrationInfo setServiceType:v81];
          v82 = self->_registrationInfo;
          v83 = _IDSRegistrationServiceIdentifierFromServiceType();
          [(IDSRegistration *)v82 setServiceIdentifier:v83];

          [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
          [(IDSRegistration *)self->_registrationInfo setRegistrationType:v36];
          v84 = self->_registrationInfo;
          v85 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
          [(IDSRegistration *)v84 setPushToken:v85];

          [(IDSRegistration *)self->_registrationInfo setShouldAutoRegisterAllHandles:[(IDSDAccount *)self shouldAutoRegisterAllHandles]];
          [(IDSRegistration *)self->_registrationInfo setShouldRegisterUsingDSHandle:[(IDSDAccount *)self shouldRegisterUsingDSHandle]];
          v86 = self->_registrationInfo;
          v87 = [(IDSDAccount *)self userUniqueIdentifier];
          [(IDSRegistration *)v86 setUserUniqueIdentifier:v87];

          if (v36 == 1)
          {
            v88 = self->_registrationInfo;
            v89 = [(IDSDAccount *)self loginID];
            [(IDSRegistration *)v88 setEmail:v89];
          }

          v90 = [(IDSDAccount *)self accountInfo];
          v91 = [v90 objectForKey:kIDSServiceDefaultsAuthorizationIDKey];

          v217 = v91;
          if ([v91 length])
          {
            v92 = [(IDSRegistration *)self->_registrationInfo profileID];
            if ([v92 length])
            {
              v93 = [(IDSRegistration *)self->_registrationInfo profileID];
              v94 = [v91 isEqualToString:v93];

              if (!v94)
              {
                goto LABEL_95;
              }
            }

            else
            {
            }

            v95 = +[IMRGLog registration];
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v236 = v91;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Setting profileID %@ onto registration", buf, 0xCu);
            }

            [(IDSRegistration *)self->_registrationInfo setProfileID:v91];
          }

LABEL_95:
          v215 = v81;
          v96 = [(IDSRegistration *)self->_registrationInfo idsUserID];
          if ([v96 length])
          {
            v97 = [(IDSRegistration *)self->_registrationInfo idsUserID];
            v98 = [v97 _FZIDType] == 1;
          }

          else
          {
            v98 = 0;
          }

          if (v36 == 1 && !v98)
          {
            v99 = [(IDSRegistration *)self->_registrationInfo profileID];
            v100 = [v99 length];

            if (!v100)
            {
              goto LABEL_130;
            }

            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
            v101 = +[IDSRegistrationKeychainManager sharedInstance];
            v102 = [v101 registrations];

            v103 = [v102 countByEnumeratingWithState:&v229 objects:v241 count:16];
            if (v103)
            {
              v104 = v103;
              v105 = *v230;
              while (2)
              {
                for (j = 0; j != v104; j = j + 1)
                {
                  if (*v230 != v105)
                  {
                    objc_enumerationMutation(v102);
                  }

                  v107 = *(*(&v229 + 1) + 8 * j);
                  v108 = [v107 registrationCert];
                  if (v108 && [v107 registrationType] == 1)
                  {
                    v109 = [v107 profileID];
                    v110 = [(IDSRegistration *)self->_registrationInfo profileID];
                    v111 = [v109 isEqualToIgnoringCase:v110];

                    if (v111)
                    {
                      v112 = +[IMRGLog registration];
                      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *v236 = v107;
                        _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Setting idsUserID (for auth cert), isCDMA, and keyPairSignature on registration using existing registration with the same profileID { keychainRegistration: %@ }", buf, 0xCu);
                      }

                      v114 = +[FTDeviceSupport sharedInstance];
                      v115 = [v114 isC2KEquipment];

                      v116 = self->_registrationInfo;
                      v117 = [v107 idsUserID];
                      [(IDSRegistration *)v116 setIdsUserID:v117];

                      v118 = self->_registrationInfo;
                      v119 = [NSNumber numberWithBool:v115];
                      [(IDSRegistration *)v118 setIsCDMA:v119];

                      v120 = self->_registrationInfo;
                      v121 = +[IDSRegistrationKeyManager sharedInstance];
                      v122 = [v121 keyPairSignature];
                      [(IDSRegistration *)v120 setKeyPairSignature:v122];

                      goto LABEL_117;
                    }
                  }

                  else
                  {
                  }
                }

                v104 = [v102 countByEnumeratingWithState:&v229 objects:v241 count:16];
                if (v104)
                {
                  continue;
                }

                break;
              }
            }

LABEL_117:

            LODWORD(v36) = 1;
          }

          if (v36 != 1)
          {
            if (v36 == 2)
            {
              v155 = self->_registrationInfo;
              v156 = [(IDSDAccount *)self loginID];
              [(IDSRegistration *)v155 setMainID:v156];

              v157 = self->_registrationInfo;
              v158 = [(IDSDAccount *)self loginID];
              v159 = [v158 _IDFromFZIDType:0];
              [(IDSRegistration *)v157 setIdsUserID:v159];

              v160 = [(IDSDAccount *)self accountController];
              v161 = [(IDSDAccount *)self serviceController];
              v162 = [v161 iCloudService];
              v163 = [v160 appleIDAccountOnService:v162];
              v123 = [v163 loginID];

              [(IDSRegistration *)self->_registrationInfo setEmail:v123];
              [(IDSRegistration *)self->_registrationInfo setNeedsRenewal:1];
            }

            else
            {
              if (v36)
              {
LABEL_159:
                v171 = +[IMRGLog registration];
                if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                {
                  v172 = self->_registrationInfo;
                  *buf = 138412290;
                  *v236 = v172;
                  _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "Created new registration info: %@", buf, 0xCu);
                }

                v73 = v215;
                goto LABEL_162;
              }

              v123 = [(IDSRegistration *)self->_registrationInfo userUniqueIdentifier];
              v124 = [(IDSRegistration *)self->_registrationInfo mainID];
              if (v123)
              {
                v125 = +[IDSRegistrationKeychainManager sharedInstance];
                v126 = [v125 smsSignatureForID:v123];

                v127 = +[FTDeviceSupport sharedInstance];
                v128 = [v127 isC2KEquipment];

                v129 = +[IDSRegistrationKeyManager sharedInstance];
                v130 = [v129 keyPairSignature];

                v131 = +[IMRGLog registration];
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = @"NO";
                  *buf = 138412802;
                  *v236 = v124;
                  *&v236[8] = 2112;
                  if (v128)
                  {
                    v132 = @"YES";
                  }

                  v237 = v132;
                  v238 = 2112;
                  v239 = v130;
                  _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Setting idsUserID , mainID, isCDMA, and keyPairSignature on phone number registration {mainID: %@, isC2K: %@, keyPairSignature: %@}", buf, 0x20u);
                }

                if (v124)
                {
                  v133 = self->_registrationInfo;
                  v134 = [v124 _IDFromFZIDType:0];
                  [(IDSRegistration *)v133 setIdsUserID:v134];
                }

                v135 = self->_registrationInfo;
                v136 = [NSNumber numberWithBool:v128];
                [(IDSRegistration *)v135 setIsCDMA:v136];

                [(IDSRegistration *)self->_registrationInfo setKeyPairSignature:v130];
              }
            }

LABEL_158:

            goto LABEL_159;
          }

LABEL_130:
          v137 = +[IMRGLog registration];
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v138 = self->_registrationInfo;
            *buf = 138412290;
            *v236 = v138;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Rebuilding aliases for: %@", buf, 0xCu);
          }

          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v139 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
          v140 = [v139 countByEnumeratingWithState:&v225 objects:v240 count:16];
          if (v140)
          {
            v141 = v140;
            v142 = *v226;
            do
            {
              for (k = 0; k != v141; k = k + 1)
              {
                if (*v226 != v142)
                {
                  objc_enumerationMutation(v139);
                }

                v144 = *(*(&v225 + 1) + 8 * k);
                v145 = [(IDSDAccount *)self _validationStatusForAlias:v144];
                v146 = +[IMRGLog registration];
                v147 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
                if (v145 == -1)
                {
                  if (v147)
                  {
                    *buf = 138412290;
                    *v236 = v144;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, " => ignoring failed validation email: %@", buf, 0xCu);
                  }
                }

                else
                {
                  if (v147)
                  {
                    *buf = 138412290;
                    *v236 = v144;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, " => adding candidate email: %@", buf, 0xCu);
                  }

                  [(IDSRegistration *)self->_registrationInfo addCandidateEmail:v144];
                }
              }

              v141 = [v139 countByEnumeratingWithState:&v225 objects:v240 count:16];
            }

            while (v141);
          }

          v148 = [(IDSDAccount *)self accountInfo];
          v123 = [v148 objectForKey:kIDSServiceDefaultsProfileKey];

          v149 = +[IMRGLog registration];
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v236 = v123;
            _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Existing region profile: %@", buf, 0xCu);
          }

          if ([v123 count])
          {
            v150 = [v123 objectForKey:kIDSServiceDefaultsProfileValdationStatusKey];
            v151 = [v150 intValue];

            if (v151 == 3)
            {
              v152 = +[IMRGLog registration];
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "We have a profile, and it's validated!", buf, 2u);
              }

              v153 = [(IDSRegistration *)self->_registrationInfo regionID];
              v154 = [v153 length];

              if (!v154)
              {
                v164 = +[IMRGLog registration];
                if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "No region ID, we'll use our profile's", buf, 2u);
                }

                v165 = self->_registrationInfo;
                v166 = [v123 objectForKey:kIDSServiceDefaultsProfileRegionIDKey];
                [(IDSRegistration *)v165 setRegionID:v166];

                v167 = self->_registrationInfo;
                v168 = [v123 objectForKey:kIDSServiceDefaultsProfileBaseNumberKey];
                [(IDSRegistration *)v167 setRegionBasePhoneNumber:v168];

                v169 = self->_registrationInfo;
                v170 = [v123 objectForKey:kIDSServiceDefaultsProfileServerContextKey];
                [(IDSRegistration *)v169 setRegionServerContext:v170];
              }
            }
          }

          goto LABEL_158;
        }

        return 0;
      }

      v20 = +[IMRGLog registration];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v26 = [(IDSRegistration *)self->_registrationInfo registrationType];
      *buf = 67109120;
      *v236 = v26;
      v23 = "Registration type is not supported: %d";
      v24 = v20;
      v25 = 8;
    }

    else
    {
      v20 = +[IMRGLog registration];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v21 = [(IDSDAccount *)self _neededRegistrationType];
      v22 = [(IDSRegistration *)self->_registrationInfo registrationType];
      *buf = 67109376;
      *v236 = v21;
      *&v236[4] = 1024;
      *&v236[6] = v22;
      v23 = "Our registration types don't match, needs rebuild  (%d vs %d)";
      v24 = v20;
      v25 = 14;
    }

    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    goto LABEL_34;
  }

  v5 = +[IMRGLog warning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100924E04(self);
  }

LABEL_7:
  v6 = 0;
LABEL_8:

  return v6;
}

- (void)refreshAdHocServiceNames
{
  v30 = objc_alloc_init(NSMutableArray);
  v3 = [(IDSDAccount *)self accountController];
  v4 = [v3 isLocalSetupEnabled];

  v5 = [(IDSDAccount *)self accountController];
  v6 = [v5 isTraditionalLocalSetupEnabled];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = +[IDSDServiceController sharedInstance];
  v8 = [(IDSDAccount *)self service];
  v9 = [v8 identifier];
  v10 = [v7 adHocServicesForIdentifier:v9];

  v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v32;
    *&v12 = 138412290;
    v29 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        v17 = [v16 adHocServiceType];
        if (v17)
        {
          v18 = v17 == 5;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = v17;
          if ((v17 != 2) | v4 & 1)
          {
            if ([(IDSDAccount *)self accountType]== 1)
            {
              if (v19 == 2)
              {
                goto LABEL_11;
              }
            }

            else
            {
              v20 = [(IDSDAccount *)self accountType];
              if (v19 == 2 && v20 == 0)
              {
                goto LABEL_11;
              }
            }

            if ([v16 disabledOnTinkerWatch] && (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isCurrentDeviceTinkerConfiguredWatch"), v22, v23))
            {
              v24 = +[IMRGLog registration];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v29;
                v36 = v16;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Ignoring tinker disabled service {service: %@}", buf, 0xCu);
              }
            }

            else
            {
              if (!(v6 & 1 | (([v16 enabledOnlyWhenPaired] & 1) == 0)))
              {
                goto LABEL_11;
              }

              v24 = [v16 identifier];
              [v30 addObject:v24];
            }
          }
        }

LABEL_11:
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v25 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v13 = v25;
    }

    while (v25);
  }

  if ([v30 count])
  {
    [(IDSRegistration *)self->_registrationInfo setAdHocServiceNames:v30];
  }

  v26 = +[IMRGLog registration];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = IMLoggingStringForArray();
    registrationInfo = self->_registrationInfo;
    *buf = 138412546;
    v36 = v27;
    v37 = 2112;
    v38 = registrationInfo;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Adding ad hoc service names %@ to %@", buf, 0x16u);
  }
}

- (void)_registrationAbilityChanged:(id)a3
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(IDSDAccount *)self uniqueID];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device Controller says I should maybe try to re-register now: %@", &v8, 0xCu);
  }

  [(IDSDAccount *)self _rebuildRegistrationInfo:1];
  if (![(IDSDAccount *)self isDeviceRegistered])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IDSDAccount *)self uniqueID];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "This indeed necessitated a re-register, kicking it off: %@", &v8, 0xCu);
    }

    [(IDSDAccount *)self _registerAccount];
  }
}

- (void)_registerForDeviceCenterNotifications
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_registrationAbilityChanged:" name:FaceTimeDeviceRegistrationStateChangedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_identityRebuilt:" name:@"__kIDSRegistrationKeyManagerPrivateIdentityRebuiltNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_identityGenerated:" name:@"__kIDSRegistrationKeyManagerPrivateIdentityGeneratedNotification" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_keychainMigrationComplete:" name:@"__kIDSRegistrationKeyManagerKeychainMigrationComplete" object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_needsEncryptionIdentityRoll:" name:@"__kIDSRegistrationKeyManagerEncryptionIdentityNeedsRollNotification" object:0];
}

- (void)_deregisterDeviceCenterNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:FaceTimeDeviceRegistrationStateChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"__kIDSRegistrationKeyManagerPrivateIdentityRebuiltNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"__kIDSRegistrationKeyManagerPrivateIdentityGeneratedNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:@"__kIDSRegistrationKeyManagerKeychainMigrationComplete" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:@"__kIDSRegistrationKeyManagerEncryptionIdentityNeedsRollNotification" object:0];
}

- (void)_identityRebuilt:(id)a3
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100924E9C();
  }

  [(IDSDAccount *)self reregister];
}

- (void)_identityGenerated:(id)a3
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "***** Notified that a new identity was generated -- re-registering { account: %@ }", &v5, 0xCu);
  }

  [(IDSDAccount *)self reregister];
}

- (void)_needsEncryptionIdentityRoll:(id)a3
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100924F04();
  }

  [(IDSDAccount *)self reregister];
}

- (void)_keychainMigrationComplete:(id)a3
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "***** Keychain migration completed", &v16, 2u);
  }

  if ([(IDSDAccount *)self isEnabled])
  {
    [(IDSDAccount *)self _rebuildRegistrationInfo:1];
    *(self + 81) |= 2u;
    [(IDSRegistration *)self->_registrationInfo setIsDisabled:0];
    v5 = +[IDSRegistrationController sharedInstance];
    [v5 startTrackingActiveRegistration:self->_registrationInfo];

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
    if (![(IDSRegistration *)self->_registrationInfo registrationType])
    {
      v6 = +[IDSSMSRegistrationCenter sharedInstance];
      [v6 notePhoneNumberRegistrationReset];
    }

    v7 = [(IDSDAccount *)self isDeviceRegistered];
    if ([(IDSRegistration *)self->_registrationInfo needsMigration])
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "****** Forcing Registration, needs migration ******", &v16, 2u);
      }

      *(self + 80) |= 4u;
    }

    else
    {
      if (v7)
      {
        [(IDSDAccount *)self _checkRegistration];
LABEL_22:
        [(IDSDAccount *)self _refreshRegistration];
        return;
      }

      registrationInfo = self->_registrationInfo;
      if (registrationInfo)
      {
        if (![(IDSRegistration *)registrationInfo canRegister])
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = self->_registrationInfo;
            v16 = 138412290;
            v17 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "****** NOT Forcing Registration, we were active, but unregistered, however there's nothing to register: %@ ******", &v16, 0xCu);
          }

          goto LABEL_22;
        }

        registrationInfo = self->_registrationInfo;
      }

      v12 = [(IDSRegistration *)registrationInfo registrationCert];
      *(self + 80) = *(self + 80) & 0xFB | (4 * (v12 != 0));

      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "****** Forcing Registration, we were active, but unregistered: %@ ******", &v16, 0xCu);
      }
    }

    [(IDSDAccount *)self _registerAccount];
    goto LABEL_22;
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(IDSDAccount *)self smallDescription];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Account %@ is disabled, ignoring...", &v16, 0xCu);
  }
}

- (void)_updatePseudonymsFromEmailInfo:(id)a3
{
  v4 = a3;
  v48 = self;
  [(IDSDAccount *)self _removeAllPseudonyms];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v4;
  v42 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v42)
  {
    v41 = *v65;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v65 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v49 = [v6 objectForKey:@"uri"];
        v8 = [v6 objectForKey:@"pseudonyms"];
        if (-[IDSDAccount accountType](v48, "accountType") != 1 || ![v49 _appearsToBePhoneNumber] || (+[IDSRegistrationController registeredPhoneNumbers](IDSRegistrationController, "registeredPhoneNumbers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v49), v9, (v10 & 1) == 0))
        {
          v44 = v7;
          v45 = i;
          v46 = objc_alloc_init(NSMutableArray);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v43 = v8;
          v51 = v8;
          v50 = [v51 countByEnumeratingWithState:&v60 objects:v69 count:16];
          if (v50)
          {
            v47 = *v61;
            do
            {
              for (j = 0; j != v50; j = j + 1)
              {
                if (*v61 != v47)
                {
                  objc_enumerationMutation(v51);
                }

                v12 = *(*(&v60 + 1) + 8 * j);
                context = objc_autoreleasePoolPush();
                v13 = [v51 objectForKey:v12];
                v14 = [[IDSURI alloc] initWithPrefixedURI:v12];
                v15 = [IDSURI alloc];
                v16 = [v49 _stripFZIDPrefix];
                v17 = [v15 initWithUnprefixedURI:v16];

                v53 = [v13 objectForKey:@"featureId"];
                v18 = [v13 objectForKey:@"scopeId"];
                v19 = [v13 objectForKey:@"expiry-epoch-seconds"];
                v20 = v19;
                v52 = v18;
                if (v19)
                {
                  v21 = v19;
                }

                else
                {
                  v21 = [v13 objectForKey:@"expiry"];
                }

                v55 = v21;

                v22 = [v13 objectForKey:@"allowedServices"];
                v23 = objc_alloc_init(NSMutableSet);
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v24 = v22;
                v25 = [v24 countByEnumeratingWithState:&v56 objects:v68 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v57;
                  do
                  {
                    for (k = 0; k != v26; k = k + 1)
                    {
                      if (*v57 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = *(*(&v56 + 1) + 8 * k);
                      [v23 addObject:v29];
                      v30 = [v24 objectForKey:v29];
                      [v23 addObjectsFromArray:v30];
                    }

                    v26 = [v24 countByEnumeratingWithState:&v56 objects:v68 count:16];
                  }

                  while (v26);
                }

                v31 = [(IDSDAccount *)v48 service];
                v32 = [v31 identifier];
                v33 = [v23 containsObject:v32];

                if (v33 && v53 && v55 && [v23 count])
                {
                  v34 = [IDSPseudonymProperties alloc];
                  [v55 doubleValue];
                  v36 = v35;
                  v37 = [v23 allObjects];
                  v38 = [v34 initWithFeatureID:v53 scopeID:v52 expiryEpoch:v37 allowedServices:v36];

                  v39 = [[IDSPseudonym alloc] initWithURI:v14 maskedURI:v17 properties:v38];
                  [v46 addObject:v39];
                }

                objc_autoreleasePoolPop(context);
              }

              v50 = [v51 countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v50);
          }

          [(IDSDAccount *)v48 _addPseudonyms:v46];
          v7 = v44;
          i = v45;
          v8 = v43;
        }

        objc_autoreleasePoolPop(v7);
      }

      v42 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v42);
  }
}

- (void)_updateVettedAliases:(id)a3 emailInfo:(id)a4 addToCurrentHandlesIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
  v11 = [(IDSDAccount *)self vettedAliases];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1004ECBBC;
  v49[3] = &unk_100BDEE70;
  v49[4] = self;
  v12 = v8;
  v50 = v12;
  v13 = [v10 __imArrayByApplyingBlock:v49];
  if (v12 && v11 && [v12 isEqualToArray:v11] && !objc_msgSend(v13, "count"))
  {
    v33 = v12;
  }

  else
  {
    v41 = v10;
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(IDSDAccount *)self uniqueID];
      *buf = 138412802;
      v57 = v12;
      v58 = 2112;
      v59 = v11;
      v60 = 2112;
      v61 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating vetted aliases to: %@     current: %@   ID: %@", buf, 0x20u);
    }

    v16 = [IDSHandleListUpdatedMetric alloc];
    v17 = [(IDSDAccount *)self service];
    v18 = [v17 serviceName];
    v19 = [v16 initWithService:v18];

    v20 = +[IDSCoreAnalyticsLogger defaultLogger];
    v39 = v19;
    [v20 logMetric:v19];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = v11;
    v21 = v11;
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v45 + 1) + 8 * i);
          if (([v12 containsObject:v26] & 1) == 0 && (objc_msgSend(v13, "containsObject:", v26) & 1) == 0)
          {
            [(IDSDAccount *)self markAsUnvettedAlias:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v23);
    }

    [(IDSDAccount *)self _removeAliases:v13 withReason:2];
    v42 = objc_alloc_init(NSMutableArray);
    if ([v12 count])
    {
      v44 = 0;
      v27 = 0;
      v43 = kIDSServiceDefaultsAliasIsUserVisibleKey;
      do
      {
        v28 = [v12 objectAtIndexedSubscript:v27];
        if ([v9 count] <= v27)
        {
          v32 = 0;
        }

        else
        {
          v29 = [v9 objectAtIndexedSubscript:v27];
          v30 = [v29 objectForKey:@"is-user-visible"];
          v31 = v30;
          if (v30)
          {
            v53 = v43;
            v54 = v30;
            v44 = 1;
            v32 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            if (([v31 BOOLValue] & 1) == 0)
            {
              [v42 addObject:v28];
              v44 = 1;
            }
          }

          else
          {
            v32 = 0;
          }
        }

        [(IDSDAccount *)self _setValidationStatus:3 error:0xFFFFFFFFLL forAlias:v28 info:0 addToCurrentHandlesIfNeeded:v5 forceAdd:0 aliasProperties:v32];

        ++v27;
      }

      while (v27 < [v12 count]);
    }

    else
    {
      v44 = 0;
    }

    v33 = [v12 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

    v34 = +[IMRGLog registration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "     Added: %@", buf, 0xCu);
    }

    v35 = +[IMRGLog registration];
    v11 = v40;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v13;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "   Removed: %@", buf, 0xCu);
    }

    if ([v33 count])
    {
      v51 = kIDSServiceDefaultsVettedAliasesKey;
      v52 = v33;
      v36 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v37 = [v36 mutableCopy];

      if (v44)
      {
        [v37 setObject:v42 forKey:kIDSServiceDefaultsInvisibleAliasesKey];
      }

      [(IDSDAccount *)self writeAccountDefaults:v37];
    }

    else
    {
      v37 = +[NSNull null];
      v38 = [NSDictionary dictionaryWithObject:v37 forKey:kIDSServiceDefaultsVettedAliasesKey];
      [(IDSDAccount *)self writeAccountDefaults:v38];
    }

    v10 = v41;
  }
}

- (void)_checkRegistration
{
  if (self->_registrationInfo)
  {
    v3 = +[IDSRegistrationKeyManager sharedInstance];
    v4 = [v3 requiresKeychainMigration];

    v5 = &uuid_unparse_upper_ptr;
    if (v4)
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10092507C();
      }

      goto LABEL_59;
    }

    v7 = [(IDSRegistration *)self->_registrationInfo serviceType];
    if (IDSIsFaceTimeRegistrationServiceType() || IDSIsCallingRegistrationServiceType())
    {
      v8 = _IDSInvitationProtocolVersionNumber();
    }

    else
    {
      if (IDSIsiMessageRegistrationServiceType())
      {
        _IDSiMessageProtocolVersionNumber();
      }

      else
      {
        _IDSAlloyProtocolVersionNumber();
      }
      v8 = ;
    }

    v6 = v8;
    v9 = [(IDSRegistration *)self->_registrationInfo applicationVersion];
    v10 = [(IDSRegistration *)self->_registrationInfo IDSVersion];
    v47 = [(IDSRegistration *)self->_registrationInfo identityVersion];
    v11 = [(IDSRegistration *)self->_registrationInfo keyPairSignature];
    if (!v11)
    {
      v12 = +[IDSRegistrationKeyManager sharedInstance];
      v13 = [v12 isMigratedKeyPairSignature];

      if (v13)
      {
        registrationInfo = self->_registrationInfo;
        v15 = +[IDSRegistrationKeyManager sharedInstance];
        v16 = [v15 keyPairSignature];
        [(IDSRegistration *)registrationInfo setKeyPairSignature:v16];

        v5 = &uuid_unparse_upper_ptr;
        v11 = [(IDSRegistration *)self->_registrationInfo keyPairSignature];
        [(IDSRegistration *)self->_registrationInfo saveToKeychain];
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_100924F6C();
        }
      }

      else
      {
        v11 = 0;
      }
    }

    if (!(v9 | v10))
    {
      v18 = +[IMRGLog registration];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

LABEL_41:
        LOBYTE(v33) = 1;
        goto LABEL_42;
      }

      *buf = 0;
      v19 = "Registration protocols are empty, this is probably a new install, we'll force a register";
      goto LABEL_20;
    }

    if (v10)
    {
      v22 = _IDSIDProtocolVersionNumber();
      v23 = [v10 isEqualToNumber:v22];

      if (v23)
      {
        v24 = _IDSIdentityVersionNumber();
        v25 = [v47 isEqualToNumber:v24];

        if (v25)
        {
          if (v9)
          {
            v5 = &uuid_unparse_upper_ptr;
            if ([v9 isEqualToNumber:v6])
            {
              if (!v11 || (+[IDSRegistrationKeyManager sharedInstance](IDSRegistrationKeyManager, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), [v26 keyPairSignature], v27 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v11, "isEqualToString:", v27), v27, v5 = &uuid_unparse_upper_ptr, v26, (v44 & 1) == 0))
              {
                v40 = [v5[504] registration];
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = +[IDSRegistrationKeyManager sharedInstance];
                  v42 = [v41 keyPairSignature];
                  *buf = 138412546;
                  v49 = v11;
                  v50 = 2112;
                  v51 = v42;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Registration key pair signatures are different (%@ -> %@), clearing cert - forcing redentification", buf, 0x16u);

                  v5 = &uuid_unparse_upper_ptr;
                }

                [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
                goto LABEL_41;
              }

              v28 = +[IDSRegistrationKeyManager sharedInstance];
              v29 = [(IDSDAccount *)self service];
              v45 = [v29 applicationKeyIndex];
              v30 = [(IDSDAccount *)self service];
              v46 = [v28 needsPublicDataUpdatedForKeyIndex:v45 ktRegistrationKeyIndex:{objc_msgSend(v30, "ktRegistrationDataIndex")}];

              if (v46)
              {
                v5 = &uuid_unparse_upper_ptr;
                v18 = +[IMRGLog registration];
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_40;
                }

                *buf = 0;
                v19 = "Message Protection Public Data Needs Update, we'll force a re-register";
                goto LABEL_20;
              }

              if ([(IDSDAccount *)self isRegistered])
              {
                v33 = [(IDSRegistration *)self->_registrationInfo registrationCert];
                if (!v33)
                {
LABEL_75:
                  v5 = &uuid_unparse_upper_ptr;
LABEL_42:
                  if (IMGetCachedDomainBoolForKey())
                  {
                    v34 = [v5[504] warning];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
                    {
                      sub_100925014();
                    }

                    v35 = +[IDSRegistrationReasonTracker sharedInstance];
                    v36 = [(IDSRegistration *)self->_registrationInfo userUniqueIdentifier];
                    [v35 setPNRReason:7 forUserUniqueIdentifier:v36];

                    [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
                    if (![(IDSRegistration *)self->_registrationInfo registrationType])
                    {
                      v37 = +[IDSPACStateTracker sharedInstance];
                      [v37 notePhoneAuthCertLost:2];
                    }

                    if (![(IDSRegistration *)self->_registrationInfo registrationType])
                    {
                      [(IDSRegistration *)self->_registrationInfo setMainID:0];
                    }

                    [(IDSRegistration *)self->_registrationInfo setUris:0];
                    [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
                    [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:0];
                    v5 = &uuid_unparse_upper_ptr;
                  }

                  else
                  {
                    if (!IMGetCachedDomainBoolForKey())
                    {
                      if ((v33 & 1) == 0)
                      {
LABEL_58:

LABEL_59:
                        return;
                      }

LABEL_55:
                      v39 = [v5[504] warning];
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
                      {
                        sub_100925048();
                      }

                      [(IDSDAccount *)self _registerAccount];
                      *(self + 80) |= 4u;
                      goto LABEL_58;
                    }

                    v38 = [v5[504] warning];
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                    {
                      sub_100924FE0();
                    }
                  }

                  IMSetDomainBoolForKey();
                  goto LABEL_55;
                }

                v43 = [(IDSRegistration *)self->_registrationInfo authenticationCert];

                if (!v43)
                {
                  v5 = &uuid_unparse_upper_ptr;
                  v18 = +[IMRGLog registration];
                  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_40;
                  }

                  *buf = 0;
                  v19 = "Registered but missing an authentication cert, forcing re-register";
LABEL_20:
                  v20 = v18;
                  v21 = 2;
LABEL_21:
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
                  goto LABEL_40;
                }
              }

              LOBYTE(v33) = 0;
              goto LABEL_75;
            }

            v18 = +[IMRGLog registration];
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_40;
            }

            *buf = 138412546;
            v49 = v9;
            v50 = 2112;
            v51 = v6;
            v19 = "Registration application protocol versions are different, we'll force a server registration   (%@ -> %@)";
          }

          else
          {
            v5 = &uuid_unparse_upper_ptr;
            v18 = +[IMRGLog registration];
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_40;
            }

            *buf = 138412546;
            v49 = 0;
            v50 = 2112;
            v51 = v6;
            v19 = "Registration application protocol version is empty, we'll force a server registration   (%@ -> %@)";
          }

          v20 = v18;
          v21 = 22;
          goto LABEL_21;
        }

        v5 = &uuid_unparse_upper_ptr;
        v18 = +[IMRGLog registration];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v31 = _IDSIdentityVersionNumber();
        *buf = 138412546;
        v49 = v47;
        v50 = 2112;
        v51 = v31;
        v32 = "Registration identity versions different, we'll force a server registration   (%@ -> %@)";
      }

      else
      {
        v5 = &uuid_unparse_upper_ptr;
        v18 = +[IMRGLog registration];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        v31 = _IDSIDProtocolVersionNumber();
        *buf = 138412546;
        v49 = v10;
        v50 = 2112;
        v51 = v31;
        v32 = "Registration identity protocol versions different, we'll force a server registration   (%@ -> %@)";
      }
    }

    else
    {
      v18 = +[IMRGLog registration];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v31 = _IDSIDProtocolVersionNumber();
      *buf = 138412546;
      v49 = 0;
      v50 = 2112;
      v51 = v31;
      v32 = "Registration identity protocol version is empty, we'll force a server registration   (%@ -> %@)";
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);

    v5 = &uuid_unparse_upper_ptr;
    goto LABEL_40;
  }
}

- (void)setRegistrationStatus:(int)a3 error:(int64_t)a4 alertInfo:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = sub_1004503CC(a4);
  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = [NSNumber numberWithInt:v6];
  if (v11)
  {
    CFDictionarySetValue(v10, kIDSServiceDefaultsRegistrationInfoStatusKey, v11);
  }

  v12 = [NSNumber numberWithInt:v9];
  if (v12)
  {
    CFDictionarySetValue(v10, kIDSServiceDefaultsRegistrationInfoErrorCodeKey, v12);
  }

  v13 = [NSNumber numberWithInteger:a4];
  if (v13)
  {
    CFDictionarySetValue(v10, kIDSServiceDefaultsRegistrationInfoInternalErrorCodeKey, v13);
  }

  if (v8)
  {
    CFDictionarySetValue(v10, kIDSServiceDefaultsRegistrationInfoAlertInfoKey, v8);
  }

  v14 = [NSDictionary dictionaryWithObject:v10 forKey:kIDSServiceDefaultsRegistrationInfoKey];
  [(IDSDAccount *)self _writeAccountDefaults:v14 force:1];

  if (v6 == 5 || v6 == -1)
  {
    v27 = a4;
    v15 = [(NSMutableArray *)self->_setupHandlers count];
    if (v15 - 1 >= 0)
    {
      v16 = v15;
      do
      {
        v17 = [(NSMutableArray *)self->_setupHandlers objectAtIndex:--v16];
        v18 = [v17 copy];

        v19 = +[IMRGLog registration];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_retainBlock(v18);
          *buf = 134217984;
          v29 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling account setup handler %p", buf, 0xCu);
        }

        (*(v18 + 2))(v18, self);
      }

      while (v16 > 0);
    }

    setupHandlers = self->_setupHandlers;
    self->_setupHandlers = 0;

    if (v6 == -1)
    {
      v25 = +[NSDate date];
      v26 = [NSDictionary dictionaryWithObject:v25 forKey:kIDSServiceDefaultsLastRegistrationFailureDateKey];
      [(IDSDAccount *)self writeAccountDefaults:v26];

      v23 = [NSNumber numberWithInteger:v27];
      [NSDictionary dictionaryWithObject:v23 forKey:kIDSServiceDefaultsLastRegistrationFailureErrorKey];
    }

    else
    {
      v22 = [NSDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:kIDSServiceDefaultsHasEverRegistered];
      [(IDSDAccount *)self writeAccountDefaults:v22];

      v23 = +[NSDate date];
      [NSDictionary dictionaryWithObject:v23 forKey:kIDSServiceDefaultsLastRegistrationSuccessDateKey];
    }
    v24 = ;
    [(IDSDAccount *)self writeAccountDefaults:v24];
  }
}

- (void)_updateRegistrationStatusWithError:(int64_t)a3 info:(id)a4
{
  v6 = a4;
  if ([(IDSRegistration *)self->_registrationInfo registrationStatus]!= 8)
  {
    goto LABEL_20;
  }

  if ([(IDSRegistration *)self->_registrationInfo registrationType]!= 1)
  {
    if ([(IDSRegistration *)self->_registrationInfo registrationType]&& [(IDSRegistration *)self->_registrationInfo registrationType]!= 2)
    {
      goto LABEL_12;
    }

    v7 = [(IDSRegistration *)self->_registrationInfo phoneNumber];
    v9 = IMSingleObjectArray();
    [(IDSDAccount *)self _updateVettedAliases:v9 emailInfo:0 addToCurrentHandlesIfNeeded:1];

    goto LABEL_11;
  }

  v7 = [(IDSDAccount *)self aliases];
  if (![v7 count] && !-[IDSDAccount shouldAutoRegisterAllHandles](self, "shouldAutoRegisterAllHandles") && !-[IDSDAccount shouldRegisterUsingDSHandle](self, "shouldRegisterUsingDSHandle"))
  {

    goto LABEL_72;
  }

  v8 = [(IDSDAccount *)self dsHandle];
  if (!v8)
  {
    v54 = [(IDSDAccount *)self shouldRegisterUsingDSHandle];

    if (!v54)
    {
      goto LABEL_12;
    }

LABEL_72:
    v61 = +[IMRGLog registration];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = [(IDSDAccount *)self aliases];
      v63 = [(IDSDAccount *)self dsHandle];
      *buf = 138412546;
      v67 = v62;
      v68 = 2112;
      v69 = v63;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "We were registered but we have no aliases %@ or dsHandle %@", buf, 0x16u);
    }

    v64 = [(IDSRegistration *)self->_registrationInfo authenticationToken];

    if (v64)
    {
      v65 = 6;
    }

    else
    {
      v65 = 0;
    }

    [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:v65];
    goto LABEL_12;
  }

LABEL_11:
LABEL_12:
  v10 = +[IDSRegistrationKeyManager sharedInstance];
  v11 = [v10 requiresKeychainMigration];

  if (v11)
  {
    goto LABEL_20;
  }

  v12 = +[IDSRegistrationKeyManager sharedInstance];
  if ([v12 identityPrivateKey])
  {
    v13 = +[IDSRegistrationKeyManager sharedInstance];
    v14 = [v13 identityPublicKey];

    if (v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v15 = +[IMRGLog registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = self;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We were registered, but we're missing our private/public identity keys... will reregister: %@", buf, 0xCu);
  }

  im_dispatch_after_primary_queue();
LABEL_20:
  v16 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
  if (v16 <= 2)
  {
    if (v16 > 0)
    {
      if (v16 == 1)
      {
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(IDSDAccount *)self uniqueID];
          v39 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          v67 = v18;
          v68 = 1024;
          LODWORD(v69) = v39;
          v20 = "Setting account: %@ to authenticating  (Reg status: %d) (Waiting for restore)";
          goto LABEL_55;
        }
      }

      else
      {
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(IDSDAccount *)self uniqueID];
          v32 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          v67 = v18;
          v68 = 1024;
          LODWORD(v69) = v32;
          v20 = "Setting account: %@ to authenticating  (Reg status: %d) (Waiting for push token)";
          goto LABEL_55;
        }
      }

      goto LABEL_56;
    }

    if (v16 == -1)
    {
      v33 = +[IMRGLog registration];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v67 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to failed registration", buf, 0xCu);
      }

      [(IDSDAccount *)self _notifyListenersAndSetDependentRegistrations:0 onRegistrationInfo:self->_registrationInfo];
      [(IDSRegistration *)self->_registrationInfo saveToKeychain];
      v35 = +[IDSHeartbeatCenter sharedInstance];
      [v35 removeRegistrationInfo:self->_registrationInfo];

      v36 = +[IDSRegistrationController sharedInstance];
      [v36 cancelActionsForRegistrationInfo:self->_registrationInfo];

      v37 = +[IDSRegistrationController sharedInstance];
      [v37 stopTrackingRegistration:self->_registrationInfo];

      v38 = +[IDSDeviceHeartbeatCenter sharedInstance];
      [v38 accountsChanged];

      [(IDSDAccount *)self setRegistrationStatus:0xFFFFFFFFLL error:a3 alertInfo:v6];
    }

    else if (!v16)
    {
      v21 = +[IMRGLog registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v67 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to unregistered", buf, 0xCu);
      }

      if (_os_feature_enabled_impl() && ([(IDSDAccount *)self registrationError]== 47 || [(IDSDAccount *)self registrationError]== 49 || [(IDSDAccount *)self registrationError]== 48))
      {
        v23 = +[IDSFoundationLog KeyTransparency];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Currently unregistered due to KT server rejection. Updating error.", buf, 2u);
        }
      }

      else
      {
        a3 = -1;
      }

      [(IDSDAccount *)self setRegistrationStatus:1 error:a3 alertInfo:v6];
      v55 = +[IDSHeartbeatCenter sharedInstance];
      [v55 removeRegistrationInfo:self->_registrationInfo];

      v56 = +[IDSRegistrationController sharedInstance];
      [v56 stopTrackingRegistration:self->_registrationInfo];

      v57 = +[IDSDeviceHeartbeatCenter sharedInstance];
      [v57 accountsChanged];

      [(IDSDAccount *)self _updatePhoneNumberCallerID];
      [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
      [(IDSDAccount *)self _notifyListenersAndSetDependentRegistrations:0 onRegistrationInfo:self->_registrationInfo];
      [(IDSRegistration *)self->_registrationInfo saveToKeychain];
      v58 = [(IDSDAccount *)self service];
      v59 = [v58 identifier];
      v60 = [v59 isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"];

      if (v60)
      {
        v29 = [(IDSDAccount *)self accountController];
        [v29 updateDevicePropertiesWithDevices:0];
        goto LABEL_58;
      }
    }
  }

  else if (v16 > 5)
  {
    switch(v16)
    {
      case 6:
        v45 = +[IMRGLog registration];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [(IDSDAccount *)self uniqueID];
          v47 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          v67 = v46;
          v68 = 1024;
          LODWORD(v69) = v47;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to authenticated  (Reg status: %d)", buf, 0x12u);
        }

        v40 = self;
        v41 = 3;
        goto LABEL_57;
      case 7:
        v48 = +[IMRGLog registration];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [(IDSDAccount *)self uniqueID];
          v50 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          v67 = v49;
          v68 = 1024;
          LODWORD(v69) = v50;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to registering  (Reg status: %d)", buf, 0x12u);
        }

        [(IDSDAccount *)self setRegistrationStatus:4 error:-1 alertInfo:v6];
        v51 = +[IDSHeartbeatCenter sharedInstance];
        [v51 removeRegistrationInfo:self->_registrationInfo];

        v52 = +[IDSRegistrationController sharedInstance];
        [v52 stopTrackingRegistration:self->_registrationInfo];

        v53 = +[IDSDeviceHeartbeatCenter sharedInstance];
        [v53 accountsChanged];

        [(IDSDAccount *)self _updatePhoneNumberCallerID];
        break;
      case 8:
        v24 = +[IMRGLog registration];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(IDSDAccount *)self uniqueID];
          *buf = 138412290;
          v67 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to registered", buf, 0xCu);
        }

        [(IDSDAccount *)self setRegistrationStatus:5 error:-1 alertInfo:v6];
        [(IDSDAccount *)self _updatePhoneNumberCallerID];
        v26 = +[IDSHeartbeatCenter sharedInstance];
        [v26 addRegistrationInfo:self->_registrationInfo];

        v27 = +[IDSRegistrationController sharedInstance];
        [v27 startTrackingRegistration:self->_registrationInfo];

        v28 = +[IDSDeviceHeartbeatCenter sharedInstance];
        [v28 accountsChanged];

        if (![(IDSDAccount *)self accountType])
        {
          v29 = [(IDSDAccount *)self accountController];
          v30 = [(IDSDAccount *)self service];
          v31 = [v29 appleIDAccountOnService:v30];
          [v31 _cleanupAccount];

LABEL_58:
        }

        break;
    }
  }

  else
  {
    if ((v16 - 3) < 2)
    {
      v17 = +[IMRGLog registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        v18 = [(IDSDAccount *)self uniqueID];
        v19 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
        *buf = 138412546;
        v67 = v18;
        v68 = 1024;
        LODWORD(v69) = v19;
        v20 = "Setting account: %@ to authenticating  (Reg status: %d)";
LABEL_55:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
      }

LABEL_56:

      v40 = self;
      v41 = 2;
LABEL_57:
      [(IDSDAccount *)v40 setRegistrationStatus:v41 error:-1 alertInfo:v6];
      v42 = +[IDSHeartbeatCenter sharedInstance];
      [v42 removeRegistrationInfo:self->_registrationInfo];

      v43 = +[IDSRegistrationController sharedInstance];
      [v43 stopTrackingRegistration:self->_registrationInfo];

      v29 = +[IDSDeviceHeartbeatCenter sharedInstance];
      [v29 accountsChanged];
      goto LABEL_58;
    }

    if (v16 == 5)
    {
      v17 = +[IMRGLog registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      goto LABEL_56;
    }
  }

  [(IDSDAccount *)self _refreshRegistration];
  v44 = [(IDSDAccount *)self accountController];
  [v44 authKitAccountUpdate:self->_registrationInfo];
}

- (BOOL)_stopRegistrationAgent
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    registrationInfo = self->_registrationInfo;
    v13 = 138412290;
    v14 = registrationInfo;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "  Stop Registration Agent for: %@", &v13, 0xCu);
  }

  if (self->_registrationInfo)
  {
    v5 = +[IDSRegistrationController sharedInstance];
    [v5 cancelActionsForRegistrationInfo:self->_registrationInfo];

    v6 = +[IDSRegistrationController sharedInstance];
    [v6 stopTrackingRegistration:self->_registrationInfo];

    v7 = +[IDSHeartbeatCenter sharedInstance];
    [v7 removeRegistrationInfo:self->_registrationInfo];

    v8 = [(IDSDAccount *)self service];
    v9 = [v8 identifier];
    v10 = [v9 isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"];

    if (v10)
    {
      v11 = [(IDSDAccount *)self accountController];
      [v11 updateDevicePropertiesWithDevices:0];
    }
  }

  return 1;
}

- (void)_reAuthenticate
{
  [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
  [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:0];
  [(IDSRegistration *)self->_registrationInfo saveToKeychain];

  [(IDSDAccount *)self reIdentify];
}

- (void)_reregisterAndReProvision
{
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10092513C(self);
    }

LABEL_7:

    return;
  }

  v4 = [(IDSDAccount *)self isAdHocAccount];
  v5 = +[IMRGLog registration];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(IDSDAccount *)self primaryAccount];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", &v9, 0xCu);
    }

    v8 = [(IDSDAccount *)self primaryAccount];
    [v8 _reregisterAndReProvision];
  }

  else
  {
    if (v6)
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Re-registering and re-provisioning: %@", &v9, 0xCu);
    }

    [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
    [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
    [(IDSRegistration *)self->_registrationInfo setUris:0];
    [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    [(IDSDAccount *)self _registerAccount];
  }
}

- (void)_removeAuthenticationCredentialsIncludingAuthToken:(BOOL)a3
{
  v3 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "  ** Removing authentication credentials **", &v14, 2u);
  }

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_9;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009251D4(self);
    }

LABEL_9:

    return;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSDAccount *)self primaryAccount];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", &v14, 0xCu);
    }

    v9 = [(IDSDAccount *)self primaryAccount];
    [v9 _removeAuthenticationCredentials];
  }

  else
  {
    v10 = [(IDSDAccount *)self systemMonitor];
    v11 = [v10 isUnderFirstDataProtectionLock];

    if (v11)
    {
      v12 = +[IMRGLog registration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, changing request to a deferred re-identification", &v14, 2u);
      }

      *(self + 80) |= 0x80u;
    }

    else
    {
      [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
      if (![(IDSRegistration *)self->_registrationInfo registrationType])
      {
        v13 = +[IDSPACStateTracker sharedInstance];
        [v13 notePhoneAuthCertLost:3];
      }

      if (![(IDSRegistration *)self->_registrationInfo registrationType])
      {
        [(IDSRegistration *)self->_registrationInfo setMainID:0];
      }

      [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
      [(IDSRegistration *)self->_registrationInfo setUris:0];
      if (v3)
      {
        [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:0];
      }

      [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    }
  }
}

- (void)_reregisterAndReidentify:(BOOL)a3
{
  v3 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = _os_activity_create(&_mh_execute_header, "Daemon reregister/reidentify account", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  if (v3)
  {
    v5 = +[IMRGLog registration];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "  ** Re-identifying from beginning **";
  }

  else
  {
    v5 = +[IMRGLog registration];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = "  ** Re-registering **";
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
LABEL_7:

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_10092526C();
    }

    goto LABEL_14;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_1009252BC();
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(IDSDAccount *)self primaryAccount];
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", buf, 0xCu);
    }

    v10 = [(IDSDAccount *)self primaryAccount];
    [v10 _reregisterAndReidentify:v3];
  }

  else
  {
    v11 = [(IDSDAccount *)self systemMonitor];
    v12 = [v11 isUnderFirstDataProtectionLock];

    if (v12)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, deferring request", buf, 2u);
      }

      if (v3)
      {
        v14 = 80;
        v15 = *(self + 80) | 0x80;
      }

      else
      {
        v14 = 81;
        v15 = *(self + 81) | 1;
      }

      *(&self->super.isa + v14) = v15;
    }

    else
    {
      if (v3)
      {
        [(IDSDAccount *)self _removeAuthenticationCredentials];
      }

      [(IDSDAccount *)self _registerAccount];
    }
  }

LABEL_15:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)systemDidFinishMigration
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Migration is complete, checking to see if we should re-register now", v4, 2u);
  }

  [(IDSDAccount *)self _rebuildRegistrationInfo:1];
  [(IDSDAccount *)self _reregister];
}

- (void)systemDidStartBackup
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System started backup: %@", &v4, 0xCu);
  }
}

- (void)systemRestoreStateDidChange
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System restore state changed: %@", &v6, 0xCu);
  }

  [(IDSDAccount *)self _rebuildRegistrationInfo:1];
  [(IDSDAccount *)self _reregister];
  if ((*(self + 80) & 0x20) != 0)
  {
    v4 = +[IMRGLog GDR];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(IDSDAccount *)self uniqueID];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We had a pending GDR, kicking it off now: %@", &v6, 0xCu);
    }

    *(self + 80) &= ~0x20u;
    [(IDSDAccount *)self _issueDependentCheck];
  }
}

- (void)activateRegistration
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v46 = _os_activity_create(&_mh_execute_header, "Daemon activate account registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v46, &state);
  if (![(IDSDAccount *)self isAdHocAccount]&& [(IDSDAccount *)self accountType]!= 2)
  {
    if ((*(self + 81) & 2) != 0)
    {
      goto LABEL_4;
    }

    v3 = objc_autoreleasePoolPush();
    [(IDSDAccount *)self _registerForDeviceCenterNotifications];
    v4 = [(IDSDAccount *)self systemMonitor];
    [v4 addListener:self];

    v5 = +[IDSRegistrationController sharedInstance];
    [v5 addListener:self];

    v6 = +[IDSSMSRegistrationCenter sharedInstance];
    [v6 addListener:self];

    v7 = +[IDSAppleIDRegistrationCenter sharedInstance];
    [v7 addListener:self];

    v8 = [(IDSDAccount *)self registrationCenter];
    [v8 addListener:self];

    v9 = objc_alloc_init(IDSRegistrationPushHandler);
    pushHandler = self->_pushHandler;
    self->_pushHandler = v9;

    [(IDSRegistrationPushHandler *)self->_pushHandler addListener:self];
    [(IDSDAccount *)self _acceptIncomingPushes];
    v11 = +[IDSDRegistrationPushManager sharedInstance];
    [v11 startTrackingRegisteredAccountID:self->_uniqueID];

    if (IMGetCachedDomainBoolForKey())
    {
      v12 = +[IMRGLog warning];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_100925310();
      }

      v13 = +[IDSRegistrationKeychainManager sharedInstance];
      [v13 removeAllRegistrations];

      IMSetDomainBoolForKey();
    }

    [(IDSDAccount *)self _rebuildRegistrationInfo:1];
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v3;
      v15 = [(IDSDAccount *)self uniqueID];
      v16 = [(IDSDAccount *)self loginID];
      v17 = [(IDSDAccount *)self service];
      v18 = [v17 identifier];
      if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
      {
        v19 = @"AppleID";
      }

      else
      {
        v19 = @"Phone Number";
      }

      v20 = +[FTDeviceSupport sharedInstance];
      v21 = [v20 deviceInformationString];
      registrationInfo = self->_registrationInfo;
      *buf = 138413570;
      v48 = v15;
      v49 = 2112;
      v50 = v16;
      v51 = 2112;
      v52 = v18;
      v53 = 2112;
      v54 = v19;
      v55 = 2112;
      v56 = v21;
      v57 = 2112;
      v58 = registrationInfo;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*** Activating registration: %@   Login: %@   Service: %@   Type: %@   Environment: %@   Registration: %@", buf, 0x3Eu);

      v3 = v44;
    }

    if (self->_registrationInfo && ![IDSRegistrationController systemSupportsRegistrationInfo:?])
    {
      v30 = +[IMRGLog warning];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_100925344(&self->_registrationInfo, v30);
      }

      v31 = +[IMRGLog warning];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1009253C0();
      }

      v26 = [(IDSDAccount *)self accountController];
      v27 = [(IDSDAccount *)self uniqueID];
      [(IDSDAccount *)v26 disableAccountWithUniqueID:v27];
      goto LABEL_51;
    }

    *(self + 81) |= 2u;
    [(IDSRegistration *)self->_registrationInfo setIsDisabled:0];
    v23 = +[IDSRegistrationController sharedInstance];
    [v23 startTrackingActiveRegistration:self->_registrationInfo];

    v24 = +[IDSServerBag sharedInstance];
    v25 = [v24 bagURL];

    if (v25)
    {
      v26 = [v25 host];
      v27 = [v25 port];
      v28 = [NSDictionary dictionaryWithObjectsAndKeys:v26, kIDSServiceDefaultsServerHostKey, v27, kIDSServiceDefaultsServerPortKey, 0];
      [(IDSDAccount *)self _writeAccountDefaults:v28 force:1];
      v29 = +[IMRGLog registration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v48 = v26;
        v49 = 2112;
        v50 = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Using server: %@:%@", buf, 0x16u);
      }
    }

    else
    {
      v32 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't get bag url", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }

      v27 = 0;
      v26 = 0;
    }

    v33 = +[IMRGLog registration];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Priming Server bag", buf, 2u);
    }

    v34 = +[IDSServerBag sharedInstance];
    v35 = +[IMRGLog registration];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "...done", buf, 2u);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
    if (![(IDSRegistration *)self->_registrationInfo registrationType])
    {
      v36 = +[IDSSMSRegistrationCenter sharedInstance];
      [v36 notePhoneNumberRegistrationReset];
    }

    v37 = [(IDSDAccount *)self isDeviceRegistered];
    if ([(IDSRegistration *)self->_registrationInfo needsMigration])
    {
      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "****** Forcing Registration, needs migration ******", buf, 2u);
      }

      *(self + 80) |= 4u;
    }

    else
    {
      if (v37)
      {
        [(IDSDAccount *)self _checkRegistration];
LABEL_50:
        [(IDSDAccount *)self _refreshRegistration];

LABEL_51:
        objc_autoreleasePoolPop(v3);
        goto LABEL_4;
      }

      v39 = self->_registrationInfo;
      if (v39)
      {
        if (![(IDSRegistration *)v39 canRegister])
        {
          v42 = +[IMRGLog registration];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = self->_registrationInfo;
            *buf = 138412290;
            v48 = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "****** NOT Forcing Registration, we were active, but unregistered, however there's nothing to register: %@ ******", buf, 0xCu);
          }

          goto LABEL_50;
        }

        v39 = self->_registrationInfo;
      }

      v40 = [(IDSRegistration *)v39 registrationCert];
      *(self + 80) = *(self + 80) & 0xFB | (4 * (v40 != 0));

      v41 = +[IMRGLog registration];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = self;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "****** Forcing Registration, we were active, but unregistered: %@ ******", buf, 0xCu);
      }
    }

    [(IDSDAccount *)self _registerAccount];
    goto LABEL_50;
  }

  *(self + 81) |= 2u;
LABEL_4:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)deactivateRegistration
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v32 = _os_activity_create(&_mh_execute_header, "Daemon deactivate account registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v32, &state);
  if ([(IDSDAccount *)self isAdHocAccount]|| [(IDSDAccount *)self accountType]== 2)
  {
    *(self + 81) &= ~2u;
  }

  else if ((*(self + 81) & 2) != 0)
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(IDSDAccount *)self uniqueID];
      v4 = [(IDSDAccount *)self loginID];
      v5 = [(IDSDAccount *)self service];
      v6 = [v5 identifier];
      if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
      {
        v7 = @"AppleID";
      }

      else
      {
        v7 = @"Phone Number";
      }

      v8 = +[FTDeviceSupport sharedInstance];
      v9 = [v8 deviceInformationString];
      registrationInfo = self->_registrationInfo;
      *buf = 138413570;
      v34 = v30;
      v35 = 2112;
      v36 = v4;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = v9;
      v43 = 2112;
      v44 = registrationInfo;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "*** Deactivating registration: %@   Login: %@   Service: %@   Type: %@   Environment: %@   Registration: %@", buf, 0x3Eu);
    }

    v11 = +[IDSRegistrationController sharedInstance];
    [v11 stopTrackingActiveRegistration:self->_registrationInfo];

    v12 = +[IDSSMSRegistrationCenter sharedInstance];
    [v12 cancelActionsForRegistrationInfo:self->_registrationInfo];

    [(IDSRegistration *)self->_registrationInfo setVettedEmails:0];
    [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    if ([(IDSDAccount *)self isDeviceRegistered])
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_registrationInfo;
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "*** simply marking account as unregistered: %@", buf, 0xCu);
      }

      [(IDSDAccount *)self _unregisterAccount];
    }

    else
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = self->_registrationInfo;
        *buf = 138412290;
        v34 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** removing registration from keychain: %@", buf, 0xCu);
      }

      [(IDSRegistration *)self->_registrationInfo removeFromKeychain];
    }

    [(IDSDAccount *)self _stopRegistrationAgent];
    [(IDSDAccount *)self _ignoreIncomingPushes];
    v17 = +[IDSDRegistrationPushManager sharedInstance];
    [v17 stopTrackingRegisteredAccountID:self->_uniqueID];

    *(self + 81) &= ~2u;
    [(IDSRegistration *)self->_registrationInfo setIsDisabled:1];
    [(IDSDAccount *)self _refreshRegistration];
    v18 = +[IDSRegistrationController sharedInstance];
    [v18 removeListener:self];

    v19 = +[IDSSMSRegistrationCenter sharedInstance];
    [v19 removeListener:self];

    v20 = +[IDSAppleIDRegistrationCenter sharedInstance];
    [v20 removeListener:self];

    v21 = [(IDSDAccount *)self registrationCenter];
    [v21 removeListener:self];

    v22 = [(IDSDAccount *)self systemMonitor];
    [v22 removeListener:self];

    [(IDSDAccount *)self _deregisterDeviceCenterNotifications];
    v23 = +[IDSRestoreMonitor sharedInstance];
    [v23 removeTarget:self];

    [(IDSRegistrationPushHandler *)self->_pushHandler removeListener:self];
    pushHandler = self->_pushHandler;
    self->_pushHandler = 0;

    dateOfLastHandlesCheck = self->_dateOfLastHandlesCheck;
    self->_dateOfLastHandlesCheck = 0;

    v26 = self->_registrationInfo;
    self->_registrationInfo = 0;

    setupHandlers = self->_setupHandlers;
    self->_setupHandlers = 0;

    [(IDSDAccount *)self _resetVariables];
    v28 = +[NSNull null];
    v29 = [NSDictionary dictionaryWithObject:v28 forKey:kIDSServiceDefaultsLastGDRDateKey];
    [(IDSDAccount *)self writeAccountDefaults:v29];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_authenticateAccount
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[FTDeviceSupport sharedInstance];
    v5 = [v4 deviceInformationString];
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " => Authenticate (Environment: %@) %@", &v14, 0x16u);
  }

  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009254C0(self);
      }
    }

    else if ([(IDSDAccount *)self accountType]== 2)
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100925428(self);
      }
    }

    else if ([(IDSRegistration *)self->_registrationInfo registrationType])
    {
      v7 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];

      v6 = +[IMRGLog registration];
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v8)
        {
          registrationInfo = self->_registrationInfo;
          v14 = 138412290;
          v15 = registrationInfo;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting auth for: %@", &v14, 0xCu);
        }

        v10 = self->_registrationInfo;
        v11 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
        [(IDSRegistration *)v10 setPushToken:v11];

        [(IDSRegistration *)self->_registrationInfo setRunningSimpleAuthentication:1];
        if ([(IDSRegistration *)self->_registrationInfo registrationStatus]<= 6)
        {
          [(IDSRegistration *)self->_registrationInfo setVettedEmails:0];
          [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:5];
        }

        [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
        v6 = +[IDSAppleIDRegistrationCenter sharedInstance];
        [v6 authenticateRegistration:self->_registrationInfo requireSilentAuth:[(IDSDAccount *)self _isPasswordPromptPermissibleDuringAuthentication]^ 1];
      }

      else if (v8)
      {
        v12 = [(IDSRegistration *)self->_registrationInfo pushToken];
        v13 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
        v14 = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to authenticate, but haven't received push token yet, waiting... (Mine: %@  APSD: %@)", &v14, 0x16u);
      }
    }

    else
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1009253F4();
      }
    }
  }

  else
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }
  }
}

- (BOOL)_isPasswordPromptPermissibleDuringAuthentication
{
  v3 = [(IDSDAccount *)self service];
  v4 = [(IDSDAccount *)self serviceController];
  v5 = [v4 iTunesService];

  if (v3 != v5)
  {
    return 1;
  }

  v7 = +[FTDeviceSupport sharedInstance];
  v8 = [v7 deviceType];

  if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    return 0;
  }

  return [(IDSDAccount *)self hasEverRegistered];
}

- (void)authenticateAccount
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[FTDeviceSupport sharedInstance];
    v5 = [v4 deviceInformationString];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client requested re-authenticate (Environment: %@)", &v7, 0xCu);
  }

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_9;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009255F0(self);
    }

LABEL_9:

    return;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100925558(self);
    }

    goto LABEL_9;
  }

  [(IDSDAccount *)self _authenticateAccount];
}

- (void)_retryRegister
{
  v3 = +[IDSRestoreMonitor sharedInstance];
  [v3 removeTarget:self];

  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrying registration, to check for backup state", &v7, 2u);
  }

  [(IDSDAccount *)self _registerAccount];
  if ((*(self + 80) & 0x20) != 0)
  {
    v5 = +[IMRGLog GDR];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(IDSDAccount *)self uniqueID];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We had a pending GDR, kicking it off now: %@", &v7, 0xCu);
    }

    *(self + 80) &= ~0x20u;
    [(IDSDAccount *)self _issueDependentCheck];
  }
}

- (BOOL)_migrateRegistrationIfNeeded
{
  if ([(IDSRegistration *)self->_registrationInfo registrationType]!= 1)
  {
    return 0;
  }

  v3 = [(IDSRegistration *)self->_registrationInfo migrationContext];

  if (!v3)
  {
    return 0;
  }

  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    registrationInfo = self->_registrationInfo;
    *buf = 138412290;
    v45 = registrationInfo;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating Apple ID based registration info: %@", buf, 0xCu);
  }

  v6 = [(IDSDAccount *)self loginID];
  v7 = [v6 _FZBestGuessFZIDType];

  v8 = v7 != 0;
  if (v7)
  {
    v9 = self->_registrationInfo;
    v10 = [(IDSDAccount *)self loginID];
    [(IDSRegistration *)v9 setEmail:v10];

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_registrationInfo;
      v13 = [(IDSDAccount *)self loginID];
      *buf = 138412546;
      v45 = v12;
      v46 = 2112;
      v47 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rebuilding aliases for: %@ (%@)", buf, 0x16u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v20 = [(IDSDAccount *)self _validationStatusForAlias:v19];
          v21 = +[IMRGLog registration];
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (v20 == -1)
          {
            if (v22)
            {
              *buf = 138412290;
              v45 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " => ignoring failed validation email: %@", buf, 0xCu);
            }
          }

          else
          {
            if (v22)
            {
              *buf = 138412290;
              v45 = v19;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, " => adding candidate email: %@", buf, 0xCu);
            }

            [(IDSRegistration *)self->_registrationInfo addCandidateEmail:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v16);
    }

    v23 = [(IDSDAccount *)self accountInfo];
    v24 = [v23 objectForKey:kIDSServiceDefaultsProfileKey];

    v25 = +[IMRGLog registration];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Existing region profile: %@", buf, 0xCu);
    }

    if ([(IDSRegistration *)v24 count])
    {
      v26 = [(IDSRegistration *)v24 objectForKey:kIDSServiceDefaultsProfileValdationStatusKey];
      v27 = [v26 intValue];

      if (v27 == 3)
      {
        v28 = +[IMRGLog registration];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "We have a profile, and it's validated!", buf, 2u);
        }

        v29 = [(IDSRegistration *)self->_registrationInfo regionID];
        v30 = [v29 length];

        if (!v30)
        {
          v31 = +[IMRGLog registration];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No region ID, we'll use our profile's", buf, 2u);
          }

          v32 = self->_registrationInfo;
          v33 = [(IDSRegistration *)v24 objectForKey:kIDSServiceDefaultsProfileRegionIDKey];
          [(IDSRegistration *)v32 setRegionID:v33];

          v34 = self->_registrationInfo;
          v35 = [(IDSRegistration *)v24 objectForKey:kIDSServiceDefaultsProfileBaseNumberKey];
          [(IDSRegistration *)v34 setRegionBasePhoneNumber:v35];

          v36 = self->_registrationInfo;
          v37 = [(IDSRegistration *)v24 objectForKey:kIDSServiceDefaultsProfileServerContextKey];
          [(IDSRegistration *)v36 setRegionServerContext:v37];
        }
      }
    }

    v8 = 1;
  }

  [(IDSRegistration *)self->_registrationInfo setMigrationContext:0];
  return v8;
}

- (void)_registerAccount
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v42 = _os_activity_create(&_mh_execute_header, "Daemon register account", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v42, &state);
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[FTDeviceSupport sharedInstance];
    v5 = [v4 deviceInformationString];
    *buf = 138412546;
    v44 = v5;
    v45 = 2112;
    v46 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Re-register called (Environment: %@) %@", buf, 0x16u);
  }

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_10092526C();
    }

    goto LABEL_10;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_100925688();
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSDAccount *)self primaryAccount];
      *buf = 138412290;
      v44 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", buf, 0xCu);
    }

    v9 = [(IDSDAccount *)self primaryAccount];
    [v9 _registerAccount];
  }

  else if ([IDSRegistrationController canStartRegistrationForAccountType:[(IDSDAccount *)self accountType]])
  {
    v10 = +[IDSRestoreMonitor sharedInstance];
    [v10 removeTarget:self];

    [(IDSDAccount *)self _migrateRegistrationIfNeeded];
    v11 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
    LOBYTE(v10) = v11 == 0;

    if (v10)
    {
      v21 = +[IMRGLog pushToken];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(IDSRegistration *)self->_registrationInfo pushToken];
        v23 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
        v24 = IMGetEnvironmentName();
        *buf = 138412802;
        v44 = v22;
        v45 = 2112;
        v46 = v23;
        v47 = 2112;
        v48 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Asked to register, but haven't received push token yet, waiting... (Mine: %@  APSD: %@  Env: %@)", buf, 0x20u);
      }

      if (![(IDSRegistration *)self->_registrationInfo registrationStatus])
      {
        [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:2];
        [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
      }
    }

    else
    {
      registrationInfo = self->_registrationInfo;
      v13 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
      [(IDSRegistration *)registrationInfo setPushToken:v13];

      if ([(IDSRegistration *)self->_registrationInfo registrationStatus]<= 5)
      {
        [(IDSRegistration *)self->_registrationInfo setVettedEmails:0];
      }

      [(IDSRegistration *)self->_registrationInfo setNeedsMigration:0];
      v14 = [(IDSDAccount *)self systemMonitor];
      v15 = [v14 isUnderFirstDataProtectionLock];

      if (v15)
      {
        v16 = +[IMRGLog registration];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, deferring request", buf, 2u);
        }

        *(self + 81) |= 1u;
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v25 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
        v26 = [v25 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (v26)
        {
          v28 = *v38;
          *&v27 = 138412290;
          v36 = v27;
          do
          {
            for (i = 0; i != v26; i = i + 1)
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v37 + 1) + 8 * i);
              if ([(IDSDAccount *)self _validationStatusForAlias:v30, v36]== 3)
              {
                v31 = [(IDSRegistration *)self->_registrationInfo candidateEmails];
                if ([v31 containsObject:v30])
                {
                }

                else
                {
                  v32 = [(IDSRegistration *)self->_registrationInfo confirmedEmails];
                  v33 = [v32 containsObject:v30];

                  if ((v33 & 1) == 0)
                  {
                    v34 = +[IMRGLog registration];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v36;
                      v44 = v30;
                      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "We were missing candidate alias: %@, adding it", buf, 0xCu);
                    }

                    [(IDSRegistration *)self->_registrationInfo addCandidateEmail:v30];
                  }
                }
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v37 objects:v49 count:16];
          }

          while (v26);
        }

        v35 = +[IDSRegistrationController sharedInstance];
        [v35 registerInfo:self->_registrationInfo requireSilentAuth:{-[IDSDAccount _isPasswordPromptPermissibleDuringAuthentication](self, "_isPasswordPromptPermissibleDuringAuthentication") ^ 1}];
      }
    }
  }

  else
  {
    v17 = +[IMRGLog registration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = @"NO";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Asked to register, but haven't completed upgrade/restore, current state: %@", buf, 0xCu);
    }

    [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:1];
    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
    v18 = +[IDSRestoreMonitor sharedInstance];
    v19 = [v18 hasActionForTarget:self];

    if ((v19 & 1) == 0)
    {
      v20 = +[IDSRestoreMonitor sharedInstance];
      [v20 addTarget:self actionBlock:&stru_100BDEE90];
    }
  }

LABEL_11:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)registerAccount
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSDAccount *)self uniqueID];
    v5 = +[FTDeviceSupport sharedInstance];
    v6 = [v5 deviceInformationString];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client requested re-register: %@ (Environment: %@)", &v8, 0x16u);
  }

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_9;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1009256DC(self);
    }

LABEL_9:

    return;
  }

  [(IDSDAccount *)self _registerAccount];
}

- (void)_unregisterAccount
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = _os_activity_create(&_mh_execute_header, "Daemon unregister account", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IDSDAccount *)self uniqueID];
    v5 = +[FTDeviceSupport sharedInstance];
    v6 = [v5 deviceInformationString];
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " => Deregister: %@ (Environment: %@)", buf, 0x16u);
  }

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_10092526C();
    }

    goto LABEL_9;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_1009257C8();
    }

LABEL_9:

    goto LABEL_10;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(IDSDAccount *)self uniqueID];
      objc_claimAutoreleasedReturnValue();
      sub_100925774();
    }

    goto LABEL_9;
  }

  v8 = +[IDSRegistrationController sharedInstance];
  [v8 unregisterInfo:self->_registrationInfo];

  v9 = +[IDSRegistrationController sharedInstance];
  [v9 stopTrackingRegistration:self->_registrationInfo];

  if (![(IDSRegistration *)self->_registrationInfo registrationType])
  {
    [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:0];
  }

  [(IDSDAccount *)self _notifyListenersAndSetDependentRegistrations:0 onRegistrationInfo:self->_registrationInfo];
  [(IDSRegistration *)self->_registrationInfo saveToKeychain];
LABEL_10:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)unregisterAccount
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[FTDeviceSupport sharedInstance];
    v5 = [v4 deviceInformationString];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client requested de-register (Environment: %@)", &v7, 0xCu);
  }

  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_9;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009258B4(self);
    }

LABEL_9:

    return;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10092581C(self);
    }

    goto LABEL_9;
  }

  [(IDSDAccount *)self _unregisterAccount];
}

- (void)passwordUpdated
{
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1009259E4(self);
    }

LABEL_7:

    return;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10092594C(self);
    }

    goto LABEL_7;
  }

  if ([(IDSRegistration *)self->_registrationInfo registrationType]&& [(IDSRegistration *)self->_registrationInfo registrationType]!= 2)
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client password updated", buf, 2u);
    }

    if (self->_registrationInfo)
    {
      v5 = +[IMRGLog registration];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing signature, and re-registering", v7, 2u);
      }

      v6 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
      [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
      [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
      [(IDSRegistration *)self->_registrationInfo setUris:0];
      [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
      if (v6 == 6)
      {
        [(IDSDAccount *)self _authenticateAccount];
      }

      else
      {
        [(IDSDAccount *)self _reregister];
      }

      [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
    }
  }
}

- (void)updateAuthorizationCredentials:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v8 = +[IMRGLog warning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v8 = +[IMRGLog warning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100925B14(self);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v8 = +[IMRGLog warning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100925A7C(self);
    }

    goto LABEL_7;
  }

  if ([(IDSRegistration *)self->_registrationInfo registrationType]&& [(IDSRegistration *)self->_registrationInfo registrationType]!= 2)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client updating auth ID: %@  token: %@", &v14, 0x16u);
    }

    [(IDSRegistration *)self->_registrationInfo setProfileID:v6];
    [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:v7];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "... Saving", &v14, 2u);
    }

    [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    v11 = objc_alloc_init(NSMutableDictionary);
    v8 = v11;
    if (v6)
    {
      CFDictionarySetValue(v11, kIDSServiceDefaultsAuthorizationIDKey, v6);
    }

    v12 = [(IDSDAccount *)self loginID];
    v13 = IMCanonicalFormForEmail();
    IMSetKeychainAuthToken();

    [(IDSDAccount *)self writeAccountDefaults:v8];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)handler:(id)a3 pushTokenChanged:(id)a4
{
  v5 = a4;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100925C44(self);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100925BAC(self);
    }

    goto LABEL_7;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = [(IDSRegistration *)self->_registrationInfo pushToken];
  if (v7)
  {
    v8 = v7;
    v9 = [(IDSRegistration *)self->_registrationInfo pushToken];
    v10 = [v9 isEqualToData:v5];

    if (v10)
    {
      v6 = +[IMRGLog pushToken];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(IDSRegistration *)self->_registrationInfo pushToken];
        v20 = 138412546;
        v21 = v5;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Informed of push token change to: %@, but no need to reregister (from: %@)", &v20, 0x16u);
      }

      goto LABEL_7;
    }
  }

  v12 = +[IMRGLog pushToken];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(IDSRegistration *)self->_registrationInfo pushToken];
    v20 = 138412546;
    v21 = v5;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Informed of push token change to: %@, reregistering (from: %@)", &v20, 0x16u);
  }

  v14 = [(IDSDAccount *)self peerIDManager];
  [v14 clearCacheAndPersistImmediately:0];

  [(IDSDAccount *)self _refreshRegistration];
  v15 = [(IDSDAccount *)self registration];
  v16 = [v15 registrationType];

  if (!v16)
  {
    v17 = +[IDSRegistrationReasonTracker sharedInstance];
    v18 = [(IDSDAccount *)self userUniqueIdentifier];
    [v17 setPNRReason:12 forUserUniqueIdentifier:v18];

    v19 = +[IDSPACStateTracker sharedInstance];
    [v19 notePhoneAuthCertLost:4];
  }

  [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
  [(IDSRegistration *)self->_registrationInfo setPushToken:v5];
  [(IDSDAccount *)self _registerAccount];
LABEL_8:
}

- (void)handler:(id)a3 reloadBag:(id)a4
{
  v5 = a4;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100925D74(self);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100925CDC(self);
    }

    goto LABEL_7;
  }

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received reload bag push for: %@", &v23, 0xCu);
  }

  if (![v5 length] || (_IDSRegistrationServiceTypeForString(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", IDSRegistrationServiceTypeiMessage), v8, v9))
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " => Reloading iMessage bag", &v23, 2u);
    }

    v11 = [IDSServerBag sharedInstanceForBagType:1];
    [v11 forceBagLoad];
  }

  if (![v5 length] || (_IDSRegistrationServiceTypeForString(), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", IDSRegistrationServiceTypeFaceTime), v12, v13))
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, " => Reloading FaceTime bag", &v23, 2u);
    }

    v15 = [IDSServerBag sharedInstanceForBagType:0];
    [v15 forceBagLoad];
  }

  if (![v5 length] || (_IDSRegistrationServiceTypeForString(), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", IDSRegistrationServiceTypeCalling), v16, v17))
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " => Reloading FaceTime Audio bag", &v23, 2u);
    }

    v19 = [IDSServerBag sharedInstanceForBagType:0];
    [v19 forceBagLoad];
  }

  if (![v5 length] || (_IDSRegistrationServiceTypeForString(), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", IDSRegistrationServiceTypeMultiway), v20, v21))
  {
    v22 = +[IMRGLog registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " => Reloading FaceTime Multiway bag", &v23, 2u);
    }

    v6 = [IDSServerBag sharedInstanceForBagType:0];
    [v6 forceBagLoad];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_parseHandlesInfo:(id)a3 currentAliases:(id)a4 currentVettedAliases:(id)a5
{
  v7 = a3;
  v73 = a4;
  v77 = a5;
  v79 = +[IDSRegistrationController registeredPhoneNumbers];
  v75 = objc_alloc_init(NSMutableArray);
  v76 = objc_alloc_init(NSMutableArray);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = *v97;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v97 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v96 + 1) + 8 * i);
      v12 = [v11 objectForKey:@"uri"];
      v13 = [v12 _stripFZIDPrefix];

      v14 = [v11 objectForKey:@"device-name"];
      v15 = [v11 objectForKey:@"is-user-visible"];
      v16 = [v11 objectForKey:@"status"];
      v17 = [v16 intValue];

      if (v17 <= 5050)
      {
        if (v17 == 5036)
        {

          [(IDSDAccount *)self _setValidationStatus:1 error:5 forAlias:0 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
          goto LABEL_23;
        }

        if (v17 == 5038)
        {
LABEL_13:

          [(IDSDAccount *)self _setValidationStatus:1 error:4 forAlias:0 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
          goto LABEL_23;
        }

LABEL_22:
        [(IDSDAccount *)self _setValidationStatus:1 error:0 forAlias:v13 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];

        goto LABEL_23;
      }

      if (v17 != 5051)
      {
        if (v17 == 5055)
        {
          goto LABEL_13;
        }

        if (v17 == 5052)
        {

          [(IDSDAccount *)self _setValidationStatus:2 error:0xFFFFFFFFLL forAlias:0 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
LABEL_23:
          v13 = 0;
LABEL_24:
          v18 = +[IMRGLog registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [(IDSDAccount *)self uniqueID];
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not adding registered phone alias to appleID account {uniqueID: %@, phoneAlias: %@}", buf, 0x16u);
          }

          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (!v13 || ([v79 containsObject:v13] & 1) != 0)
      {
        goto LABEL_24;
      }

      v18 = objc_alloc_init(NSMutableDictionary);
      CFDictionarySetValue(v18, @"uri", v13);
      if (v14)
      {
        CFDictionarySetValue(v18, @"device-name", v14);
      }

      if (v15)
      {
        CFDictionarySetValue(v18, @"is-user-visible", v15);
      }

      [v75 addObject:v18];
      [v76 addObject:v13];
LABEL_26:
    }

    v8 = [obj countByEnumeratingWithState:&v96 objects:v114 count:16];
  }

  while (v8);
LABEL_28:

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v111 = sub_10000AA24;
  v112 = sub_10000BC84;
  v113 = objc_alloc_init(NSMutableArray);
  v72 = [v77 __imArrayByApplyingBlock:&stru_100BDEEB0];
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1004F389C;
  v92[3] = &unk_100BDEED8;
  v92[4] = self;
  v95 = buf;
  v69 = v77;
  v93 = v69;
  v70 = v73;
  v94 = v70;
  v78 = [v76 __imArrayByApplyingBlock:v92];
  if ([*(*&buf[8] + 40) count])
  {
    v71 = [v72 arrayByAddingObjectsFromArray:*(*&buf[8] + 40)];
  }

  else
  {
    v71 = v72;
  }

  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v101 = 138412290;
    v102 = v70;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "My current handles: %@", v101, 0xCu);
  }

  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v101 = 138412290;
    v102 = v69;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "My current vetted handles: %@", v101, 0xCu);
  }

  v22 = +[IMRGLog registration];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v101 = 138412290;
    v102 = v72;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "My current vetted emails: %@", v101, 0xCu);
  }

  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v101 = 138412290;
    v102 = v71;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Asserted Emails: %@", v101, 0xCu);
  }

  v24 = +[IMRGLog registration];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v101 = 138412290;
    v102 = v76;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "My new aliases: %@", v101, 0xCu);
  }

  v25 = +[IMRGLog registration];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v101 = 138412290;
    v102 = v78;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Newly added: %@", v101, 0xCu);
  }

  if (![v78 count])
  {
    v26 = +[IMRGLog registration];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    *v101 = 0;
    v27 = "** No new handles!";
    goto LABEL_77;
  }

  if ([(IDSDAccount *)self shouldAutoRegisterAllHandles])
  {
    v26 = +[IMRGLog registration];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    *v101 = 0;
    v27 = " => All handle based account, not showing available notification";
LABEL_77:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, v101, 2u);
    goto LABEL_78;
  }

  if ([(IDSDAccount *)self shouldRegisterUsingDSHandle])
  {
    v26 = +[IMRGLog registration];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    *v101 = 0;
    v27 = " => DS handle based account, not showing available notification";
    goto LABEL_77;
  }

  v28 = [(IDSDAccount *)self service];
  v29 = [v28 shouldShowUsageNotifications];

  if (!v29)
  {
    v26 = +[IMRGLog registration];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    *v101 = 0;
    v27 = "** Not showing notification, service is not configured to show them";
    goto LABEL_77;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v26 = v75;
  v30 = [v26 countByEnumeratingWithState:&v88 objects:v109 count:16];
  if (!v30)
  {
    goto LABEL_78;
  }

  v80 = *v89;
  v74 = v26;
  while (2)
  {
    v31 = 0;
    while (2)
    {
      if (*v89 != v80)
      {
        objc_enumerationMutation(v74);
      }

      v32 = *(*(&v88 + 1) + 8 * v31);
      v33 = [v32 objectForKey:@"uri"];
      v34 = [v32 objectForKey:@"device-name"];
      if ([v78 containsObject:v33])
      {
        v35 = +[IDSRegistrationController registeredPhoneNumbers];
        v36 = [v35 containsObject:v33];

        if (v36)
        {
          v37 = +[IMRGLog registration];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = 0;
            v38 = v37;
            v39 = " => Not adding, this is my phone number";
            goto LABEL_64;
          }
        }

        else if ([(IDSDAccount *)self wasRecentlySelectedAlias:v33])
        {
          v40 = +[IMRGLog registration];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = 138412290;
            v102 = v33;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Alias was recently selected, just adding {alias: %@}", v101, 0xCu);
          }

          v37 = IMSingleObjectArray();
          [(IDSDAccount *)self addAliases:v37];
          [(IDSDAccount *)self validateAliases:v37];
        }

        else
        {
          v41 = [(IDSDAccount *)self serviceType];
          v37 = _StringForIDSRegistrationServiceType();

          v42 = +[IMRGLog registration];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = [(IDSRegistration *)self->_registrationInfo mainID];
            *v101 = 138413058;
            v102 = v33;
            v103 = 2112;
            v104 = v34;
            v105 = 2112;
            v106 = v43;
            v107 = 2112;
            v108 = v37;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "** Adding notification for %@  on device %@  on apple ID: %@ for service: %@", v101, 0x2Au);
          }

          [(IDSDAccount *)self markAsVettedAlias:v33];
          v44 = [(IDSDAccount *)self appleIDNotificationCenter];
          v45 = [(IDSDAccount *)self uniqueID];
          v46 = [(IDSRegistration *)self->_registrationInfo mainID];
          v47 = [(IDSDAccount *)self serviceType];
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_1004F3938;
          v87[3] = &unk_100BDEF00;
          v87[4] = self;
          [v44 addAvailableNotificationForSession:v45 appleID:v46 alias:v33 deviceName:v34 serviceType:v47 completionBlock:v87];
        }
      }

      else
      {
        v37 = +[IMRGLog registration];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *v101 = 0;
          v38 = v37;
          v39 = " => Not adding, new handles does not contain this alias";
LABEL_64:
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, v101, 2u);
        }
      }

      if (v30 != ++v31)
      {
        continue;
      }

      break;
    }

    v26 = v74;
    v30 = [v74 countByEnumeratingWithState:&v88 objects:v109 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_78:

  [(IDSDAccount *)self _updateVettedAliases:v76 emailInfo:v75 addToCurrentHandlesIfNeeded:0];
  if ([(IDSDAccount *)self shouldAutoRegisterAllHandles])
  {
    v48 = +[IMRGLog registration];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, " => We should auto configure all handles", v101, 2u);
    }

    v49 = +[IMRGLog registration];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(IDSDAccount *)self vettedAliases];
      *v101 = 138412290;
      v102 = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "    Vetted: %@", v101, 0xCu);
    }

    v51 = +[IMRGLog registration];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
      *v101 = 138412290;
      v102 = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "   Current: %@", v101, 0xCu);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v53 = [(IDSDAccount *)self vettedAliases];
    v54 = [v53 countByEnumeratingWithState:&v83 objects:v100 count:16];
    if (v54)
    {
      v55 = *v84;
      do
      {
        for (j = 0; j != v54; j = j + 1)
        {
          if (*v84 != v55)
          {
            objc_enumerationMutation(v53);
          }

          v57 = *(*(&v83 + 1) + 8 * j);
          v58 = +[IMRGLog registration];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = 138412290;
            v102 = v57;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "      Checking: %@", v101, 0xCu);
          }

          v59 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
          v60 = [v59 containsObject:v57];

          if (v60)
          {
            v61 = +[IMRGLog registration];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *v101 = 0;
              v62 = v61;
              v63 = "      => Already in alias set";
              goto LABEL_100;
            }

            goto LABEL_101;
          }

          v64 = +[IMRGLog registration];
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = 138412290;
            v102 = v57;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "         => Not in alias strings: %@", v101, 0xCu);
          }

          if ([*(*&buf[8] + 40) containsObject:v57])
          {
            v61 = +[IMRGLog registration];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *v101 = 0;
              v62 = v61;
              v63 = "         => Already in auto register set";
LABEL_100:
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, v63, v101, 2u);
            }

LABEL_101:

            continue;
          }

          v65 = +[IMRGLog registration];
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = 138412290;
            v102 = v57;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "         => Not in auto register: %@", v101, 0xCu);
          }

          [*(*&buf[8] + 40) addObject:v57];
        }

        v54 = [v53 countByEnumeratingWithState:&v83 objects:v100 count:16];
      }

      while (v54);
    }
  }

  if ([*(*&buf[8] + 40) count])
  {
    v66 = +[IMRGLog registration];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v67 = *(*&buf[8] + 40);
      *v101 = 138412290;
      v102 = v67;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "** Auto registering handles: %@", v101, 0xCu);
    }

    [(IDSDAccount *)self _addAliases:*(*&buf[8] + 40)];
    [(IDSDAccount *)self _validateAliases:*(*&buf[8] + 40) validateAlreadyValid:1];
  }

  else
  {
    v68 = +[IMRGLog registration];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *v101 = 0;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "No handles to auto register", v101, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)_updateHandles:(BOOL)a3
{
  v3 = a3;
  if (![(IDSDAccount *)self isDeviceAuthenticated])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v30 = v6;
      v7 = " => Ignoring, we're not authenticated for: %@";
      goto LABEL_8;
    }

LABEL_9:

    return;
  }

  if ([(IDSRegistration *)self->_registrationInfo registrationType]!= 1 && [(IDSRegistration *)self->_registrationInfo registrationType])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v30 = v6;
      v7 = " => Not updating handles, this is not an apple ID or phone based account for: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v8 = [(IDSDAccount *)self systemMonitor];
  v9 = [v8 isUnderFirstDataProtectionLock];

  if (v9)
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, deferring request", buf, 2u);
    }

    *(self + 80) |= 0x40u;
  }

  else
  {
    v11 = *(self + 80);
    v12 = +[IMRGLog registration];
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if ((v11 & 0x10) != 0)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not issuing handle gathering, we're in progress now", buf, 2u);
      }
    }

    else
    {
      if (v13)
      {
        v14 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v30 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Kicking off handle gathering for: %@", buf, 0xCu);
      }

      *(self + 80) |= 0x10u;
      v15 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
      v16 = [v15 copy];

      v17 = [(IDSDAccount *)self vettedAliases];
      v18 = [v17 copy];

      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "  (currentAliases: %@)", buf, 0xCu);
      }

      v20 = +[IMRGLog registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "  (currentVettedAliases: %@)", buf, 0xCu);
      }

      v21 = +[IMRGLog registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v30 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "  * Sending handle update request for: %@", buf, 0xCu);
      }

      v23 = [(IDSDAccount *)self registrationCenter];
      registrationInfo = self->_registrationInfo;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1004F3E4C;
      v26[3] = &unk_100BDEF28;
      v26[4] = self;
      v27 = v16;
      v28 = v18;
      v25 = v18;
      v12 = v16;
      [v23 queryValidatedEmailsForRegistration:registrationInfo allowPasswordPrompt:v3 completionBlock:v26];
    }
  }
}

- (void)handler:(id)a3 profile:(id)a4 deviceUpdated:(id)a5 service:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100925F1C(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100925E84(self);
    }

    goto LABEL_7;
  }

  v13 = +[IMRGLog GDR];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(IDSDAccount *)self uniqueID];
    v39 = 138413058;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received device updated push for profile: %@   token: %@   service: %@  for: %@", &v39, 0x2Au);
  }

  v15 = [(IDSDAccount *)self registrationCenter];
  v16 = [v15 dateLastRegistered];
  if (v16)
  {
    v17 = v16;
    v18 = [(IDSDAccount *)self registrationCenter];
    v19 = [v18 dateLastRegistered];
    [v19 timeIntervalSinceNow];
    v21 = fabs(v20);

    if (v21 < 10.0)
    {
      v22 = +[IMRGLog GDR];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring update - we have recent registration events", &v39, 2u);
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([(IDSDAccount *)self _isBuddyBlockingRegistration])
  {
    v23 = +[IMRGLog GDR];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = v24;
      v25 = "System not setup, ignoring devices updated push for: %@";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v39, 0xCu);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v26 = [(IDSDAccount *)self systemMonitor];
  v27 = [v26 isUnderFirstDataProtectionLock];

  if (v27)
  {
    v23 = +[IMRGLog GDR];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = v24;
      v25 = "Device is still under first data protection lock, ignoring for: %@";
      goto LABEL_26;
    }

LABEL_27:

    *(self + 80) |= 0x20u;
    goto LABEL_8;
  }

  if (![v9 length])
  {
    v12 = +[IMRGLog GDR];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = v30;
      v31 = "  Empty user ID, ignoring for: %@";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v31, &v39, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  v28 = [(IDSRegistration *)self->_registrationInfo profileID];
  if ([v9 isEqualToIgnoringCase:v28])
  {
    v29 = [(IDSRegistration *)self->_registrationInfo registrationType]!= 2;
  }

  else
  {
    v29 = 0;
  }

  v32 = [(IDSRegistration *)self->_registrationInfo userID];
  v33 = [v9 isEqualToIgnoringCase:v32];

  if (!v29 && (v33 & 1) == 0)
  {
    v12 = +[IMRGLog GDR];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = v30;
      v31 = "  Unknown profile ID ID, not proceeding for: %@";
      goto LABEL_50;
    }

    goto LABEL_7;
  }

  if (v10)
  {
    v34 = [(IDSRegistration *)self->_registrationInfo pushToken];
    v35 = [v10 isEqualToData:v34];

    if (v35)
    {
      v12 = +[IMRGLog GDR];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(IDSDAccount *)self uniqueID];
        v39 = 138412290;
        v40 = v30;
        v31 = " => Ignoring a device update from myself for: %@";
        goto LABEL_50;
      }

      goto LABEL_7;
    }
  }

  v36 = [(IDSDAccount *)self isDeviceRegistered];
  v12 = +[IMRGLog GDR];
  v37 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((v36 & 1) == 0)
  {
    if (v37)
    {
      v30 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = v30;
      v31 = " => Ignoring, we're not registered for: %@";
      goto LABEL_50;
    }

    goto LABEL_7;
  }

  if (v37)
  {
    v38 = [(IDSDAccount *)self uniqueID];
    v39 = 138412290;
    v40 = v38;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Kicking off device and handles gathering for: %@", &v39, 0xCu);
  }

  if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
  {
    [(IDSDAccount *)self _updateHandles:1];
  }

  [(IDSDAccount *)self _issueCriticalDependentCheck];
LABEL_8:
}

- (void)handler:(id)a3 profileHandlesUpdated:(id)a4 status:(id)a5 allowGDR:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10092604C(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100925FB4(self);
    }

    goto LABEL_7;
  }

  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(IDSDAccount *)self uniqueID];
    v34 = 138413058;
    v35 = v9;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received handles updated push for profile: %@ allowGDR: %@   status: %@   for: %@", &v34, 0x2Au);
  }

  v15 = [(IDSDAccount *)self registrationCenter];
  v16 = [v15 dateLastRegistered];
  if (v16)
  {
    v17 = v16;
    v18 = [(IDSDAccount *)self registrationCenter];
    v19 = [v18 dateLastRegistered];
    [v19 timeIntervalSinceNow];
    v21 = fabs(v20);

    if (v21 < 10.0)
    {
      v22 = +[IMRGLog registration];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring update - we have recent registration events", &v34, 2u);
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

  if ([(IDSDAccount *)self _isBuddyBlockingRegistration])
  {
    v12 = +[IMRGLog registration];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      goto LABEL_8;
    }

    v23 = [(IDSDAccount *)self uniqueID];
    v34 = 138412290;
    v35 = v23;
    v24 = "System not setup, ignoring handles update push for: %@";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v24, &v34, 0xCu);

    goto LABEL_7;
  }

  v25 = [(IDSDAccount *)self systemMonitor];
  v26 = [v25 isUnderFirstDataProtectionLock];

  if (v26)
  {
    v27 = +[IMRGLog registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, ignoring for: %@", &v34, 0xCu);
    }

    *(self + 80) |= 0x40u;
  }

  else
  {
    if (![v9 length])
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v23 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = v23;
      v24 = "  Empty user ID, ignoring for: %@";
      goto LABEL_23;
    }

    if (-[IDSDAccount accountType](self, "accountType") || [v9 _FZIDType])
    {
      v29 = 0;
    }

    else
    {
      v32 = [(IDSDAccount *)self loginID];
      v33 = [v9 _stripFZIDPrefix];
      v29 = [v32 isEqualToIgnoringCase:v33];
    }

    v30 = [(IDSRegistration *)self->_registrationInfo profileID];
    v31 = [v9 isEqualToIgnoringCase:v30];

    if ((v31 & 1) == 0 && (v29 & 1) == 0)
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v23 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = v23;
      v24 = "  Unknown profile ID ID, not proceeding for: %@";
      goto LABEL_23;
    }

    [(IDSDAccount *)self _updateHandles:1];
    if ([(IDSRegistration *)self->_registrationInfo registrationType]!= 1)
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v23 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = v23;
      v24 = "  Not an appleID registration, not perfoming GDR for : %@";
      goto LABEL_23;
    }

    if (!v11 || [v11 BOOLValue])
    {
      [(IDSDAccount *)self _issueCriticalDependentCheck];
    }
  }

LABEL_8:
}

- (void)handler:(id)a3 flushCacheForURIs:(id)a4
{
  v4 = a4;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received flush cache push for uris: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v19 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v6;
        v7 = *(*(&v27 + 1) + 8 * v6);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = [(IDSDAccount *)self vettedAliases];
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            v12 = 0;
            do
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v23 + 1) + 8 * v12);
              v14 = +[IDSDaemon sharedInstance];
              v15 = [v14 queryUpdateNotifier];
              v16 = [[IDSURI alloc] initWithPrefixedURI:v13];
              v17 = [[IDSURI alloc] initWithPrefixedURI:v7];
              [v15 handleRegistrationUpdateForHash:0 localURI:v16 remoteURI:v17 service:self->_service guid:0 forceUpdate:1];

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v10);
        }

        v6 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }
}

- (void)gdrReAuthenticateIfNecessary
{
  if (!self->_registrationInfo || [(IDSDAccount *)self isAdHocAccount])
  {
    return;
  }

  v3 = [(IDSRegistration *)self->_registrationInfo dependentRegistrationResponseCode];
  v4 = [v3 integerValue];

  v5 = [(IDSRegistration *)self->_registrationInfo dependentRegistrationAuthRetries];
  v6 = [v5 unsignedIntValue];

  if ([(IDSDAccount *)self isRegistered])
  {
    v7 = [(IDSRegistration *)self->_registrationInfo registrationCert];
    if (v7)
    {
      v8 = [(IDSRegistration *)self->_registrationInfo authenticationCert];
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [(IDSDAccount *)self registrationCenter];
  v11 = [v10 gdrCenter];
  if ([v11 shouldReAuthenticateForGDRResultCode:v4 retries:v6])
  {

LABEL_12:
    v12 = +[IMRGLog GDR];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(IDSDAccount *)self smallDescription];
      v23 = 134218498;
      v24 = v4;
      v25 = 1024;
      LODWORD(v26[0]) = v6;
      WORD2(v26[0]) = 2112;
      *(v26 + 6) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Should retry (resultCode %ld) (retries %d) (%@)", &v23, 0x1Cu);
    }

    registrationInfo = self->_registrationInfo;
    v15 = [NSNumber numberWithUnsignedInt:(v6 + 1)];
    [(IDSRegistration *)registrationInfo setDependentRegistrationAuthRetries:v15];

    v16 = [(IDSDAccount *)self registration];
    LODWORD(registrationInfo) = [v16 registrationType];

    if (!registrationInfo)
    {
      v17 = +[IDSRegistrationReasonTracker sharedInstance];
      v18 = [(IDSDAccount *)self userUniqueIdentifier];
      [v17 setPNRReason:8 forUserUniqueIdentifier:v18];
    }

    [(IDSDAccount *)self _reAuthenticate];
    return;
  }

  if (v4 == 1 && v9)
  {
    goto LABEL_12;
  }

  v19 = +[IMRGLog GDR];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v4 == 6006)
  {
    if (v20)
    {
      v21 = [(IDSDAccount *)self smallDescription];
      v23 = 134218242;
      v24 = 6006;
      v25 = 2112;
      v26[0] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Should reregister then retry (resultCode %ld) (%@)", &v23, 0x16u);
    }

    [(IDSDAccount *)self reregister];
  }

  else
  {
    if (v20)
    {
      v22 = [(IDSDAccount *)self smallDescription];
      v23 = 134218498;
      v24 = v4;
      v25 = 1024;
      LODWORD(v26[0]) = v6;
      WORD2(v26[0]) = 2112;
      *(v26 + 6) = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Should not retry (resultCode %ld) (retries %d) (%@)", &v23, 0x1Cu);
    }
  }
}

- (void)_notifyListenersAndSetDependentRegistrations:(id)a3 onRegistrationInfo:(id)a4
{
  v17 = self;
  v5 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    v11 = IDSDevicePropertyService;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 objectForKey:{v11, v17}];
        v15 = [v6 serviceIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          if (!v9)
          {
            v9 = objc_alloc_init(NSMutableArray);
          }

          [v9 addObject:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [v6 setDependentRegistrations:{v9, v17}];
  [v18 _notifyRegistrationListenersAccountDidUpdateRegisteredDevices];
}

- (void)_saveAndNotifyGDRUpdate
{
  [(IDSRegistration *)self->_registrationInfo saveToKeychain];
  v3 = objc_alloc_init(IMMessageContext);
  [v3 setShouldBoost:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000257DC;
  v5[3] = &unk_100BDD470;
  v6 = v3;
  v7 = self;
  v4 = v3;
  [(IDSDAccount *)self _broadcastAccountMessageBlock:v5];
}

- (BOOL)_issueForcedDependentCheckIfPossible
{
  if ((*(self + 80) & 8) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(IDSDAccount *)self _hasBudgetForForcedGDR];
    if (v3)
    {
      [(IDSDAccount *)self _issueCriticalDependentCheck];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_processReceivedDependentRegistration:(id)a3 oldDependentRegistrations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IDSDevicePropertyService;
  v9 = [v6 objectForKey:IDSDevicePropertyService];
  v10 = IDSDevicePropertyPushToken;
  v11 = [v6 objectForKey:IDSDevicePropertyPushToken];
  v64 = [v6 objectForKey:IDSDevicePropertyName];
  v63 = [v6 objectForKey:IDSDevicePropertyHardwareVersion];
  v65 = v9;
  v62 = _IDSRegistrationServiceTypeForString();
  v52 = v6;
  v58 = [v6 objectForKey:IDSDevicePropertyClientData];
  v53 = v7;
  if (v7)
  {
    v12 = [(IDSRegistration *)self->_registrationInfo pushToken];
    v13 = [v11 isEqualToData:v12];

    if ((v13 & 1) == 0)
    {
      v56 = sub_1004F54C8(v62);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = v53;
      v14 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v75;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v75 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v74 + 1) + 8 * i);
            v19 = [v18 _dataForKey:v10];
            v20 = [v18 _stringForKey:v8];
            v21 = _IDSRegistrationServiceTypeForString();

            v22 = v19;
            if (-[NSObject isEqualToData:](v19, "isEqualToData:", v11) && (([v21 isEqualToString:v62] & 1) != 0 || v56 && objc_msgSend(v21, "isEqualToString:", v56)))
            {
              v51 = +[IMRGLog GDR];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v80 = v64;
                v81 = 2112;
                v82 = v65;
                v83 = 2112;
                v84 = v63;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, " *** Not notifying for device name: %@  service: %@, we already know about this one!   hardware: %@", buf, 0x20u);
              }

              v25 = obj;
              v26 = v22;
              goto LABEL_47;
            }
          }

          v15 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      if ([(IDSDAccount *)self accountType]== 1)
      {
        v23 = [v52 objectForKey:IDSDevicePropertyIdentities];
        v24 = [v23 __imArrayByApplyingBlock:&stru_100BDF150];
        v25 = [v24 _IDsFromURIs];

        if ([v25 count])
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v26 = v25;
          v61 = [v26 countByEnumeratingWithState:&v70 objects:v87 count:16];
          if (v61)
          {
            obja = v25;
            v60 = *v71;
            v27 = &uuid_unparse_upper_ptr;
            v59 = v11;
            v57 = v26;
            do
            {
              for (j = 0; j != v61; j = j + 1)
              {
                if (*v71 != v60)
                {
                  objc_enumerationMutation(v57);
                }

                v29 = *(*(&v70 + 1) + 8 * j);
                v30 = [v27[504] GDR];
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v80 = v64;
                  v81 = 2112;
                  v82 = v65;
                  v83 = 2112;
                  v84 = v29;
                  v85 = 2112;
                  v86 = v63;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " Queued notification for device name: %@   service: %@  handle: %@ hardware: %@", buf, 0x2Au);
                }

                v31 = [(IDSDAccount *)self serviceController];
                v32 = [v31 serviceWithIdentifier:v65];

                v33 = [(IDSDAccount *)self accountController];
                v34 = [v33 accountsOnService:v32];

                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v35 = v34;
                v36 = [v35 countByEnumeratingWithState:&v66 objects:v78 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v67;
                  while (2)
                  {
                    for (k = 0; k != v37; k = k + 1)
                    {
                      if (*v67 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = *(*(&v66 + 1) + 8 * k);
                      v41 = [v40 accountType];
                      if (v41 == [(IDSDAccount *)self accountType])
                      {
                        v27 = &uuid_unparse_upper_ptr;
                        v44 = +[IMRGLog GDR];
                        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v80 = v40;
                          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "  Found similar account: %@", buf, 0xCu);
                        }

                        v42 = [[IDSEndpointCapabilities alloc] initWithCapabilitiesMap:v58];
                        v45 = +[IMRGLog GDR];
                        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412802;
                          v80 = v64;
                          v81 = 2112;
                          v82 = v62;
                          v83 = 2112;
                          v84 = v29;
                          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " Adding notification for device name: %@   service: %@  handle: %@", buf, 0x20u);
                        }

                        v46 = [(IDSDAccount *)self appleIDNotificationCenter];
                        v47 = [(IDSDAccount *)self uniqueID];
                        v48 = [(IDSRegistration *)self->_registrationInfo mainID];
                        if ([v29 length])
                        {
                          [v46 addUsageNotificationForSession:v47 appleID:v48 alias:v29 deviceName:v64 hardwareVersion:v63 deviceCapabilities:v42 serviceType:v62];
                        }

                        else
                        {
                          v49 = +[IDSRegistrationController registeredPhoneNumbers];
                          v50 = [v49 anyObject];
                          [v46 addUsageNotificationForSession:v47 appleID:v48 alias:v50 deviceName:v64 hardwareVersion:v63 deviceCapabilities:v42 serviceType:v62];

                          v27 = &uuid_unparse_upper_ptr;
                        }

                        goto LABEL_41;
                      }
                    }

                    v37 = [v35 countByEnumeratingWithState:&v66 objects:v78 count:16];
                    if (v37)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v27 = &uuid_unparse_upper_ptr;
                v42 = +[IMRGLog GDR];
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = [v32 serviceName];
                  *buf = 138412546;
                  v80 = v43;
                  v81 = 2112;
                  v82 = v29;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "We don't have an enabled account for service %@ with %@ as an alias, ignoring...", buf, 0x16u);
                }

LABEL_41:
                v11 = v59;
              }

              v26 = v57;
              v61 = [v57 countByEnumeratingWithState:&v70 objects:v87 count:16];
            }

            while (v61);
            v25 = obja;
          }
        }

        else
        {
          v26 = +[IMRGLog GDR];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v80 = v64;
            v81 = 2112;
            v82 = v65;
            v83 = 2112;
            v84 = v63;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " *** Not notifying for device name: %@  service: %@, don't have any valid handles!   hardware: %@", buf, 0x20u);
          }
        }

LABEL_47:
      }
    }
  }
}

- (void)_flushTokensForRegisteredURIs:(id)a3
{
  v3 = a3;
  v4 = +[IMRGLog GDR];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Flushing cache for: %@", buf, 0xCu);
  }

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1004F63A4;
  v73[3] = &unk_100BD7530;
  v73[4] = self;
  v5 = [v3 __imArrayByApplyingBlock:v73];
  v45 = v5;
  if (_os_feature_enabled_impl())
  {
    v42 = v3;
    v47 = [NSMutableSet setWithArray:v5];
    v6 = +[NSMutableSet set];
    [(IDSDAccount *)self accountAndAdHocAccounts];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v7 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v70;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v70 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v69 + 1) + 8 * i);
          v12 = [(IDSDAccount *)self dsHandle];
          if (v12)
          {
            v13 = [(IDSDAccount *)self service];
            v14 = [v13 identifier];
            v15 = [IDSURI URIWithPrefixedURI:v12 withServiceLoggingHint:v14];
            [v47 addObject:v15];
          }

          v16 = [v11 service];
          v17 = [v16 queryService];
          [v6 addObject:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v8);
    }

    v18 = [(IDSDAccount *)self peerIDManager];
    v19 = v47;
    v20 = [v47 allObjects];
    v21 = [v6 allObjects];
    [v18 forgetPeerTokensForURIs:v20 services:v21 reason:13];

    v3 = v42;
    v5 = v45;
  }

  else
  {
    v19 = [(IDSDAccount *)self accountAndAdHocAccounts];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = [v19 countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v46)
    {
      v43 = v3;
      v44 = *v66;
      v22 = self;
      v48 = v19;
      do
      {
        v23 = 0;
        do
        {
          if (*v66 != v44)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v65 + 1) + 8 * v23);
          v25 = [(IDSDAccount *)v22 dsHandle];
          v49 = v25;
          v50 = v23;
          if (v25)
          {
            v26 = v25;
            v27 = [(IDSDAccount *)v22 service];
            v28 = [v27 identifier];
            v29 = [IDSURI URIWithPrefixedURI:v26 withServiceLoggingHint:v28];
            v30 = [v5 arrayByAddingObject:v29];
          }

          else
          {
            v30 = v5;
          }

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v53 = v30;
          v52 = [v53 countByEnumeratingWithState:&v61 objects:v75 count:16];
          if (v52)
          {
            v51 = *v62;
            do
            {
              v31 = 0;
              do
              {
                if (*v62 != v51)
                {
                  objc_enumerationMutation(v53);
                }

                obja = v31;
                v32 = *(*(&v61 + 1) + 8 * v31);
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v33 = v53;
                v34 = [v33 countByEnumeratingWithState:&v57 objects:v74 count:16];
                if (v34)
                {
                  v35 = v34;
                  v36 = *v58;
                  do
                  {
                    for (j = 0; j != v35; j = j + 1)
                    {
                      if (*v58 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v38 = *(*(&v57 + 1) + 8 * j);
                      v39 = [(IDSDAccount *)self peerIDManager];
                      v40 = [v24 service];
                      v41 = [v40 queryService];
                      [v39 forgetPeerTokensForURI:v38 fromURI:v32 service:v41 reason:13];
                    }

                    v35 = [v33 countByEnumeratingWithState:&v57 objects:v74 count:16];
                  }

                  while (v35);
                }

                v31 = obja + 1;
              }

              while (obja + 1 != v52);
              v52 = [v33 countByEnumeratingWithState:&v61 objects:v75 count:16];
            }

            while (v52);
          }

          v23 = v50 + 1;
          v5 = v45;
          v22 = self;
          v19 = v48;
        }

        while ((v50 + 1) != v46);
        v46 = [v48 countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v46);
      v3 = v43;
    }
  }
}

- (void)_updateSessionsForAllRegisteredURIsWithSendReasonPathID:(int64_t)a3
{
  v6 = [(IDSDAccount *)self primaryRegistration];
  v5 = [v6 uris];
  [(IDSDAccount *)self _updateSessionsWithRegisteredURIs:v5 sendReasonPathID:a3];
}

- (void)_updateSessionsWithRegisteredURIs:(id)a3 retryIfNotRegistered:(BOOL)a4 sendReasonPathID:(int64_t)a5
{
  v6 = a4;
  v40 = a3;
  v8 = [(IDSDAccount *)self registration];
  v9 = [v8 registrationStatus];

  if (v9 > 7)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1004F6B34;
    v47[3] = &unk_100BD7530;
    v47[4] = self;
    v17 = [v40 __imArrayByApplyingBlock:v47];
    v42 = objc_alloc_init(IDSSendParameters);
    v39 = [[IDSSendReason alloc] initWithReason:10 subreason:4 pathID:a5];
    v18 = [IDSSendReasonContainer createWithReason:v39];
    [v42 setSendReasonContainer:v18];

    v19 = +[IMRGLog GDR];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(IDSDAccount *)self service];
      v21 = [v20 queryService];
      *buf = 138412546;
      v53 = v40;
      v54 = 2112;
      v55 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating active URIs: %@   service: %@", buf, 0x16u);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v17;
    v22 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v22)
    {
      v23 = *v44;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v43 + 1) + 8 * i);
          v26 = [(IDSDAccount *)self peerIDManager];
          v27 = [(IDSDAccount *)self service];
          v28 = [v27 queryService];
          v29 = [v26 activeURIsFromURI:v25 service:v28];

          LOBYTE(v28) = [(__CFString *)v29 count]== 0;
          v30 = +[IMRGLog GDR];
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (v28)
          {
            if (v31)
            {
              *buf = 138412290;
              v53 = v25;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "   No active sessions from: %@", buf, 0xCu);
            }
          }

          else
          {
            if (v31)
            {
              *buf = 138412546;
              v53 = v25;
              v54 = 2112;
              v55 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "   Sending to active sessions for URI: %@   sessions: %@", buf, 0x16u);
            }

            v30 = +[NSDictionary dictionary];
            v32 = [v25 unprefixedURI];
            v33 = [NSSet setWithArray:v29];
            v34 = [IDSDestination destinationWithDestinations:v33];
            v35 = [NSDate dateWithTimeIntervalSinceNow:30.0];
            LOWORD(v38) = 256;
            LOWORD(v37) = 0;
            LOWORD(v36) = 0;
            [IDSDAccount sendMessage:"sendMessage:params:bulkedPayload:fromID:toDestinations:useDictAsTopLevel:dataToEncrypt:encryptPayload:wantsResponse:expirationDate:command:wantsDeliveryStatus:wantsCertifiedDelivery:deliveryStatusContext:messageUUID:priority:localDelivery:disallowRefresh:willSendBlock:completionBlock:" params:v30 bulkedPayload:v42 fromID:0 toDestinations:v32 useDictAsTopLevel:v34 dataToEncrypt:1 encryptPayload:0 wantsResponse:v36 expirationDate:v35 command:&off_100C3C8B0 wantsDeliveryStatus:v37 wantsCertifiedDelivery:0 deliveryStatusContext:0 messageUUID:300 priority:v38 localDelivery:0 disallowRefresh:0 willSendBlock:? completionBlock:?];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v10 = +[IMRGLog GDR];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
      if (v6)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = [(IDSDAccount *)self service];
      v14 = [v13 queryService];
      *buf = 134218754;
      v53 = v11;
      v54 = 2112;
      v55 = v12;
      v56 = 2112;
      v57 = v40;
      v58 = 2112;
      v59 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not registered. Waiting to send the 130 { registrationStatus: %ld, retry: %@, registeredURIs: %@, service: %@ }", buf, 0x2Au);
    }

    if (v6)
    {
      objc_initWeak(buf, self);
      v15 = [(IDSDAccount *)self _unregistered130RetryInterval];
      v16 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1004F6ADC;
      block[3] = &unk_100BDEF78;
      objc_copyWeak(v50, buf);
      v49 = v40;
      v50[1] = a5;
      dispatch_after(v15, v16, block);

      objc_destroyWeak(v50);
      objc_destroyWeak(buf);
    }
  }
}

- (void)center:(id)a3 succeededIdentification:(id)a4 phoneNumber:(id)a5 token:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (![(IDSRegistration *)self->_registrationInfo registrationType])
  {
    v12 = [v9 userUniqueIdentifier];
    v13 = [(IDSDAccount *)self userUniqueIdentifier];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412802;
        v18 = v9;
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Succeeded SMS identification with info: %@    number: %@  token: %@", &v17, 0x20u);
      }

      [(IDSRegistration *)self->_registrationInfo setPhoneNumber:v10];
      [(IDSRegistration *)self->_registrationInfo setMainID:v10];
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating caller ID to phone number: %@", &v17, 0xCu);
      }

      [(IDSDAccount *)self _updatePhoneNumberCallerID];
    }
  }
}

- (void)registrationController:(id)a3 registrationWillStart:(id)a4
{
  v5 = a4;
  if (self->_registrationInfo == v5)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_8;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100926270(self);
      }

LABEL_8:

      goto LABEL_9;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009261D8(self);
      }

      goto LABEL_8;
    }

    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting registration for: %@", &v8, 0xCu);
    }

    if ([(IDSRegistration *)v5 registrationStatus]== -1)
    {
      [(IDSRegistration *)v5 setRegistrationStatus:3];
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }

LABEL_9:
}

- (void)registrationController:(id)a3 registrationUpdated:(id)a4
{
  v5 = a4;
  if (self->_registrationInfo == v5)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_8;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009263A0(self);
      }

LABEL_8:

      goto LABEL_9;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100926308(self);
      }

      goto LABEL_8;
    }

    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating registration for: %@", &v8, 0xCu);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }

LABEL_9:
}

- (void)registrationController:(id)a3 registrationSucceeded:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_registrationInfo == v7)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      v8 = +[IMRGLog warning];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_108;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v8 = +[IMRGLog warning];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10092656C(self);
      }

LABEL_108:

      goto LABEL_109;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      v8 = +[IMRGLog warning];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1009264D4(self);
      }

      goto LABEL_108;
    }

    v9 = +[IDSRegistrationController sharedInstance];
    v10 = [v9 trackedRegistrations];
    [v10 containsObjectIdenticalTo:v7];

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100926438();
    }

    [(IDSDAccount *)self _refreshRegistration];
    v12 = [(IDSRegistration *)self->_registrationInfo registrationType];
    registrationInfo = self->_registrationInfo;
    if (v12)
    {
      if ([(IDSRegistration *)registrationInfo registrationType]== 2 && ![(IDSDAccount *)self hasEverRegistered])
      {
        [(IDSDAccount *)self _updateCallerIDToTemporaryPhone];
      }
    }

    else
    {
      v14 = [(IDSRegistration *)registrationInfo phoneNumber];
      if (v14)
      {
        v15 = [NSDictionary dictionaryWithObject:v14 forKey:kIDSServiceDefaultsLoginAsKey];
        [(IDSDAccount *)self writeAccountDefaults:v15];
      }
    }

    v16 = [(IDSRegistration *)v7 serviceIdentifier];
    v17 = IDSIsGameCenterRegistrationServiceType();

    if (v17)
    {
      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(IDSRegistration *)v7 contextInfo];
        *buf = 138412290;
        v102 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Getting GameCenter Data from registration with contextInfo: %@", buf, 0xCu);
      }

      v20 = [(IDSRegistration *)v7 contextInfo];
      v21 = [v20 objectForKey:IDSGameCenterContactsLastUpdatedDate];

      if (v21)
      {
        [v21 doubleValue];
        v22 = [NSDate dateWithTimeIntervalSince1970:?];
      }

      else
      {
        v22 = 0;
      }

      v23 = [IDSGameCenterData alloc];
      v24 = [(IDSRegistration *)v7 contextInfo];
      v25 = [v24 objectForKey:IDSGameCenterContactsAssociationID];
      v26 = [(IDSRegistration *)v7 contextInfo];
      v27 = [v26 objectForKey:IDSGameCenterContactsSharingState];
      v28 = [v23 initWithAssociationID:v25 sharingState:v27 lastUpdatedDate:v22];

      [(IDSDAccount *)self setGameCenterData:v28];
    }

    [(IDSRegistration *)v7 saveToKeychain];
    v29 = [(IDSDAccount *)self vettedAliases];
    v30 = +[IMRGLog registration];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v7;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Saved: %@", buf, 0xCu);
    }

    v31 = +[IMRGLog registration];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v29;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "vettedAliases: %@", buf, 0xCu);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
    v32 = +[IMRGLog registration];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v7;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Checking to see if I should confirm aliases for: %@", buf, 0xCu);
    }

    v79 = v7;
    v80 = v6;

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v33 = [(IDSDAccount *)self aliases];
    v34 = [v33 countByEnumeratingWithState:&v93 objects:v100 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v94;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v94 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v93 + 1) + 8 * i);
          if (([(IDSRegistration *)v29 containsObject:v39]& 1) == 0 && [(IDSDAccount *)self validationStatusForAlias:v39]<= 1)
          {
            if (!v36)
            {
              v36 = objc_alloc_init(NSMutableSet);
            }

            [(IDSRegistration *)v36 addObject:v39];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v93 objects:v100 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
    }

    v40 = +[IMRGLog registration];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = v36;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Aliases that are unvalidated: %@", buf, 0xCu);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v41 = v36;
    v42 = [(IDSRegistration *)v41 countByEnumeratingWithState:&v89 objects:v99 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v90;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v90 != v44)
          {
            objc_enumerationMutation(v41);
          }

          IsEmail = IMStringIsEmail();
          v47 = IMSingleObjectArray();
          if (IsEmail)
          {
            [(IDSDAccount *)self _validateAliases:v47];
          }

          else
          {
            [(IDSDAccount *)self _removeAliases:v47 withReason:2];
          }
        }

        v43 = [(IDSRegistration *)v41 countByEnumeratingWithState:&v89 objects:v99 count:16];
      }

      while (v43);
    }

    if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
    {
      v48 = +[IMRGLog registration];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v41;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Aliases that are unvalidated: %@", buf, 0xCu);
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v49 = [(IDSRegistration *)self->_registrationInfo uris];
      v50 = [v49 countByEnumeratingWithState:&v85 objects:v98 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = 0;
        v53 = *v86;
        do
        {
          for (k = 0; k != v51; k = k + 1)
          {
            if (*v86 != v53)
            {
              objc_enumerationMutation(v49);
            }

            v55 = [*(*(&v85 + 1) + 8 * k) _stripFZIDPrefix];
            if ([v55 length])
            {
              if (!v52)
              {
                v52 = objc_alloc_init(NSMutableArray);
              }

              [v52 addObject:v55];
              v56 = [(IDSDAccount *)self aliases];
              v57 = [v56 containsObject:v55];

              if ((v57 & 1) == 0)
              {
                v58 = IMSingleObjectArray();
                [(IDSDAccount *)self _addAliases:v58];
              }

              [(IDSDAccount *)self _setValidationStatus:3 error:0xFFFFFFFFLL forAlias:v55 info:0 addToCurrentHandlesIfNeeded:1 forceAdd:0];
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v85 objects:v98 count:16];
        }

        while (v51);
      }

      else
      {
        v52 = 0;
      }

      if ([v52 count])
      {
        v59 = [NSSet setWithArray:v52];
      }

      else
      {
        v59 = 0;
      }

      v60 = [(IDSDAccount *)self aliases];
      if ([v60 count])
      {
        v61 = [NSMutableSet setWithArray:v60];
      }

      else
      {
        v61 = 0;
      }

      [v61 minusSet:{v59, v59}];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v62 = v61;
      v63 = [v62 countByEnumeratingWithState:&v81 objects:v97 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v82;
        v66 = kIDSServiceDefaultsSentinelAlias;
        do
        {
          for (m = 0; m != v64; m = m + 1)
          {
            if (*v82 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v68 = *(*(&v81 + 1) + 8 * m);
            if ([v68 isEqualToIgnoringCase:v66])
            {
              v69 = 3;
            }

            else
            {
              if ([(IDSDAccount *)self _validationStatusForAlias:v68]== 2)
              {
                continue;
              }

              v69 = 1;
            }

            [(IDSDAccount *)self _setValidationStatus:v69 error:0xFFFFFFFFLL forAlias:v68 info:0 addToCurrentHandlesIfNeeded:1 forceAdd:1];
          }

          v64 = [v62 countByEnumeratingWithState:&v81 objects:v97 count:16];
        }

        while (v64);
      }
    }

    v7 = v79;
    v6 = v80;
    if ((*(self + 80) & 4) != 0)
    {
      *(self + 80) &= ~4u;
      v70 = +[IMRGLog registration];
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Forcing a handles query request post-register to pull the current state", buf, 2u);
      }

      [(IDSDAccount *)self _updateHandles:1];
    }

    v71 = [(IDSDAccount *)self accountInfo];
    v72 = kIDSServiceDefaultsAuthorizationIDKey;
    v8 = [v71 objectForKey:kIDSServiceDefaultsAuthorizationIDKey];

    v73 = [(IDSRegistration *)self->_registrationInfo profileID];
    if (![v8 length]&& [(IDSRegistration *)v73 length])
    {
      v74 = +[IMRGLog registration];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = v73;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Finished registering without profileID, setting profileID %@ onto account", buf, 0xCu);
      }

      v75 = objc_alloc_init(NSMutableDictionary);
      v76 = v75;
      if (v73)
      {
        CFDictionarySetValue(v75, v72, v73);
      }

      [(IDSDAccount *)self writeAccountDefaults:v76];
    }

    [(IDSDAccount *)self _issueCriticalDependentCheck];
    v77 = [NSDictionary dictionaryWithObject:&__kCFBooleanTrue forKey:kIDSServiceDefaultsHasEverRegistered];
    [(IDSDAccount *)self writeAccountDefaults:v77];

    goto LABEL_108;
  }

LABEL_109:
}

- (void)registrationController:(id)a3 registrationFailed:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (self->_registrationInfo == v9)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_98;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
      {
        sub_1009268AC(self);
      }

      goto LABEL_98;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
      {
        sub_100926814(self);
      }

      goto LABEL_98;
    }

    v11 = self;
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100926604();
    }

    [(IDSDAccount *)v11 _updateRegistrationStatusWithError:a5 info:v10];
    v13 = +[IMRGLog warning];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100926684(a5);
    }

    v14 = 0;
    if (a5 <= 30)
    {
      if (a5 <= 9)
      {
        if ((a5 - 3) >= 2)
        {
          if (a5 == 1)
          {
            v14 = 1;
          }

          else if (a5 != 5)
          {
            goto LABEL_88;
          }

          goto LABEL_76;
        }

        v31 = +[IMRGLog warning];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          sub_100926710();
        }

        if (IMGetCachedDomainBoolForKey())
        {
          v32 = [IMUserNotification userNotificationWithIdentifier:@"Disabled" title:@"FaceTime" message:@"Too many SMS attempts defaultButton:you can re-enable this in Preferences" alternateButton:@"OK" otherButton:0, 0];
          v33 = +[IMUserNotificationCenter sharedInstance];
          [v33 addUserNotification:v32 listener:0];
        }

        v15 = +[IDSSMSRegistrationCenter sharedInstance];
        [v15 notePhoneNumberRegistrationReset];
        goto LABEL_86;
      }

      if (a5 > 28)
      {
        if (a5 == 29)
        {
          v15 = +[IMRGLog warning];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            sub_100926744();
          }
        }

        else
        {
          v15 = +[IMRGLog warning];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            sub_100926778();
          }
        }

        goto LABEL_86;
      }

      if ((a5 - 10) >= 2)
      {
        if (a5 != 12)
        {
          goto LABEL_88;
        }

LABEL_76:
        v39 = +[IMRGLog warning];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          sub_1009267AC();
        }

        [(IDSRegistration *)v9 removeFromKeychain];
        goto LABEL_88;
      }

LABEL_38:
      [(IDSRegistration *)v9 removeFromKeychain];
      if (![(IDSRegistration *)v9 registrationType])
      {
        [(IDSRegistration *)v9 setMainID:0];
        [(IDSRegistration *)v9 setAuthenticationToken:0];
        [(IDSRegistration *)v9 setAuthenticationCert:0];
        v34 = +[IDSPACStateTracker sharedInstance];
        [v34 notePhoneAuthCertLost:5];

        v35 = +[IMRGLog registration];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v9;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " => Will retry SMS Registration: %@", buf, 0xCu);
        }

        v36 = +[IMRGLog registration];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v9;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " => Resetting status to waiting for auth response: %@", buf, 0xCu);
        }

        [(IDSRegistration *)v9 setRegistrationStatus:4];
        [(IDSDAccount *)v11 _updateRegistrationStatusWithError:-1 info:0];
        v37 = +[IDSRegistrationReasonTracker sharedInstance];
        v38 = [(IDSRegistration *)v9 userUniqueIdentifier];
        [v37 setPNRReason:6 forUserUniqueIdentifier:v38];

        v21 = +[IDSSMSRegistrationCenter sharedInstance];
        [v21 sendRegistration:v9];
        goto LABEL_97;
      }

      if ([(IDSRegistration *)v9 registrationType]== 1)
      {
        v17 = [(IDSRegistration *)v9 retries];
        v18 = +[IMRGLog registration];
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v17 <= 2)
        {
          v56 = v10;
          v57 = v11;
          if (v19)
          {
            *buf = 138412290;
            v68 = v9;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " => Will retry Authentication: %@", buf, 0xCu);
          }

          [(IDSRegistration *)v9 setRetries:[(IDSRegistration *)v9 retries]+ 1];
          [(IDSRegistration *)v9 setRegistrationCert:0];
          [(IDSRegistration *)v9 setAuthenticationToken:0];
          v20 = [(IDSRegistration *)v9 confirmedEmails];
          [(IDSRegistration *)v9 setUris:0];
          [(IDSRegistration *)v9 saveToKeychain];
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v21 = v20;
          v22 = [v21 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v63;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v63 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v62 + 1) + 8 * i);
                v27 = +[IMRGLog registration];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v68 = v26;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Added confirmed emails: %@", buf, 0xCu);
                }

                [(IDSRegistration *)v9 addCandidateEmail:v26];
              }

              v23 = [v21 countByEnumeratingWithState:&v62 objects:v66 count:16];
            }

            while (v23);
          }

          v28 = [(IDSRegistration *)v9 authenticationToken];

          if (!v28)
          {
            [(IDSRegistration *)v9 setRegistrationStatus:3];
            v11 = v57;
            [(IDSDAccount *)v57 _updateRegistrationStatusWithError:-1 info:0];
            v55 = +[IDSAppleIDRegistrationCenter sharedInstance];
            [v55 authenticateRegistration:v9 forceNewToken:1];

            goto LABEL_104;
          }

          v11 = v57;
          if ([(IDSRegistration *)v9 registrationStatus]>= 6)
          {
            sub_100450550(v9);
LABEL_104:
            v10 = v56;
LABEL_97:

LABEL_98:
            goto LABEL_99;
          }

          v14 = 0;
          v10 = v56;
LABEL_88:
          [(IDSDAccount *)v11 _stopRegistrationAgent];
          v47 = objc_alloc_init(IMMessageContext);
          [v47 setShouldBoost:0];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1004F88F8;
          v58[3] = &unk_100BDB450;
          v21 = v47;
          v59 = v21;
          v60 = v11;
          v61 = v14;
          [(IDSDAccount *)v11 _broadcastAccountMessageBlock:v58];
          v48 = +[IMRGLog warning];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = @"NO";
            if (v14)
            {
              v49 = @"YES";
            }

            *buf = 138412546;
            v68 = v49;
            v69 = 2112;
            v70 = v9;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Needs deletion: %@ (%@)", buf, 0x16u);
          }

          v50 = [(IDSDAccount *)v11 accountController];
          v51 = [(IDSDAccount *)v11 uniqueID];
          [v50 disablePrimaryAccountWithUniqueID:v51];

          if (v14)
          {
            v52 = +[IMRGLog warning];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [(IDSDAccount *)v11 uniqueID];
              *buf = 138412290;
              v68 = v53;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Deleting account ID: %@", buf, 0xCu);
            }

            v54 = [(IDSDAccount *)v11 accountController];
            [v54 removeAccount:v11];
          }

          goto LABEL_97;
        }

        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " => Not retrying, max retries hit", buf, 2u);
        }

        [(IDSRegistration *)v9 setRetries:0];
LABEL_87:
        v14 = 0;
        goto LABEL_88;
      }

      if ([(IDSRegistration *)v9 registrationType]!= 2)
      {
        goto LABEL_87;
      }

      v30 = +[IMRGLog registration];
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_85;
      }

LABEL_84:
      *buf = 134218242;
      v68 = a5;
      v69 = 2112;
      v70 = v9;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " => Nuking Home Number user {error: %ld, registration: %@}", buf, 0x16u);
LABEL_85:

      v40 = +[IDSDaemon sharedInstance];
      v41 = [v40 registrationConductor];
      v42 = [v41 userStore];
      v43 = [(IDSRegistration *)v9 userUniqueIdentifier];
      v15 = [v42 userWithUniqueIdentifier:v43];

      v44 = +[IDSDaemon sharedInstance];
      v45 = [v44 registrationConductor];
      v46 = [v45 userStore];
      [v46 forceRemoveUser:v15 silently:0];

      goto LABEL_86;
    }

    if (a5 <= 37)
    {
      if (a5 > 35)
      {
        if (a5 != 36)
        {
          goto LABEL_38;
        }
      }

      else if (a5 != 31)
      {
        if (a5 != 35)
        {
          goto LABEL_88;
        }

        v15 = +[IMRGLog registration];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_86;
        }

        *buf = 0;
        v16 = " => User has disabled SMS Authentication, disabling the account";
        goto LABEL_81;
      }
    }

    else
    {
      if ((a5 - 47) < 3)
      {
        v15 = +[IMRGLog registration];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v16 = " => User has KT enabled, but the account key needs a refresh.";
LABEL_81:
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
          goto LABEL_86;
        }

        goto LABEL_86;
      }

      if (a5 == 39)
      {
        v15 = +[IMRGLog registration];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v16 = " => User has disabled SMS Registration, disabling the account";
          goto LABEL_81;
        }

LABEL_86:

        goto LABEL_87;
      }

      if (a5 != 38)
      {
        goto LABEL_88;
      }
    }

    v29 = +[IMRGLog warning];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1009267E0();
    }

    [(IDSRegistration *)v9 removeFromKeychain];
    if ([(IDSRegistration *)v9 registrationType]!= 2)
    {
      goto LABEL_87;
    }

    v30 = +[IMRGLog registration];
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_99:
}

- (void)registrationController:(id)a3 deregistrationWillStart:(id)a4
{
  if (self->_registrationInfo == a4)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_8;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1009269DC(self);
      }

LABEL_8:

      return;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100926944(self);
      }

      goto LABEL_8;
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }
}

- (void)registrationController:(id)a3 deregistrationSucceeded:(id)a4
{
  if (self->_registrationInfo == a4)
  {
    if ([(IDSDAccount *)self isRegistrationActive])
    {
      if ([(IDSDAccount *)self isAdHocAccount])
      {
        v5 = +[IMRGLog warning];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100926B0C(self);
        }
      }

      else if ([(IDSDAccount *)self accountType]== 2)
      {
        v5 = +[IMRGLog warning];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_100926A74(self);
        }
      }

      else
      {
        [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
        v5 = +[IMRGLog registration];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          registrationInfo = self->_registrationInfo;
          v7 = [(IDSDAccount *)self uniqueID];
          v8 = 138412546;
          v9 = registrationInfo;
          v10 = 2112;
          v11 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deregistration succeeded for %@ - %@", &v8, 0x16u);
        }
      }
    }

    else
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }
    }
  }
}

- (void)registrationControllerNeedsNewRegistration:(id)a3
{
  if ([(IDSRegistration *)self->_registrationInfo isDisabled])
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      registrationInfo = self->_registrationInfo;
      v8 = 138412290;
      v9 = registrationInfo;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring re-identification request, registration is disabled: %@", &v8, 0xCu);
    }
  }

  else if ([(IDSRegistration *)self->_registrationInfo registrationType])
  {
    if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration controller requested new SMS registration -- noting that we should re-query handles", &v8, 2u);
      }

      *(self + 80) |= 4u;
    }
  }

  else
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Registration controller requested new SMS registration -- starting from scratch", &v8, 2u);
    }

    [(IDSDAccount *)self _reregisterAndReidentify:1];
  }
}

- (void)center:(id)a3 startedAuthenticating:(id)a4
{
  v5 = a4;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100926C3C(self);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100926BA4(self);
    }

    goto LABEL_7;
  }

  if (self->_registrationInfo == v5)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started authenticating for info: %@", &v8, 0xCu);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }

LABEL_8:
}

- (void)center:(id)a3 succeededAuthentication:(id)a4
{
  v5 = a4;
  if (self->_registrationInfo == v5)
  {
    if ([(IDSDAccount *)self isRegistrationActive])
    {
      if ([(IDSDAccount *)self isAdHocAccount])
      {
        v6 = +[IMRGLog warning];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100926D6C(self);
        }
      }

      else if ([(IDSDAccount *)self accountType]== 2)
      {
        v6 = +[IMRGLog warning];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100926CD4(self);
        }
      }

      else
      {
        v7 = +[IMRGLog registration];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v5;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Succeeded authentication for info: %@", &v14, 0xCu);
        }

        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(IDSRegistration *)v5 profileID];
          v14 = 138412290;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating profileID: %@", &v14, 0xCu);
        }

        v6 = objc_alloc_init(NSMutableDictionary);
        v10 = [(IDSRegistration *)v5 profileID];
        if (v10)
        {
          CFDictionarySetValue(v6, kIDSServiceDefaultsAuthorizationIDKey, v10);
        }

        v11 = [(IDSRegistration *)v5 authenticationToken];
        v12 = [(IDSDAccount *)self loginID];
        v13 = IMCanonicalFormForEmail();
        IMSetKeychainAuthToken();

        [(IDSDAccount *)self writeAccountDefaults:v6];
        [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
      }
    }

    else
    {
      v6 = +[IMRGLog warning];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }
    }
  }
}

- (void)center:(id)a3 failedAuthentication:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (self->_registrationInfo == v9)
  {
    if ([(IDSDAccount *)self isRegistrationActive])
    {
      if ([(IDSDAccount *)self isAdHocAccount])
      {
        v11 = +[IMRGLog warning];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100926F20(self);
        }
      }

      else if ([(IDSDAccount *)self accountType]== 2)
      {
        v11 = +[IMRGLog warning];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100926E88(self);
        }
      }

      else
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = +[IMRGLog warning];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_100926E04();
        }

        if ([(IDSRegistration *)v9 registrationType]== 1 && (v13 = [(IDSRegistration *)v9 registrationStatus], a5 == 17) && v13 == 8)
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Auth failed but we're registered, ignoring...", buf, 2u);
          }
        }

        else
        {
          v15 = +[IMRGLog registration];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing profileID", v19, 2u);
          }

          v16 = +[NSNull null];
          if (v16)
          {
            CFDictionarySetValue(v11, kIDSServiceDefaultsAuthorizationIDKey, v16);
          }

          v17 = [(IDSDAccount *)self serviceType];
          v18 = [(IDSDAccount *)self loginID];
          IMRemoveKeychainAuthToken();

          [(IDSDAccount *)self writeAccountDefaults:v11];
          if ([v10 count])
          {
            [(IDSDAccount *)self setRegistrationStatus:[(IDSDAccount *)self registrationStatus] error:[(IDSDAccount *)self registrationError] alertInfo:v10];
          }
        }
      }
    }

    else
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }
    }
  }
}

- (void)center:(id)a3 succeededCurrentEmailsRequest:(id)a4 emailInfo:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self->_registrationInfo == v7)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      v9 = +[IMRGLog warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_8;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v9 = +[IMRGLog warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100927050(self);
      }

LABEL_8:

      goto LABEL_9;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      v9 = +[IMRGLog warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100926FB8(self);
      }

      goto LABEL_8;
    }

    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Succeeded Validated Email Query info: %@    Emails: %@  (Session: %@)", &v12, 0x20u);
    }

    if ([(IDSDAccount *)self accountType]== 1)
    {
      v11 = [v8 __imArrayByApplyingBlock:&stru_100BDEF98];
      [(IDSDAccount *)self _updateVettedAliases:v11 emailInfo:v8 addToCurrentHandlesIfNeeded:0];
    }

    [(IDSDAccount *)self _updatePseudonymsFromEmailInfo:v8];
  }

LABEL_9:
}

- (void)center:(id)a3 succeededRegionValidation:(id)a4 regionID:(id)a5 phoneNumber:(id)a6 extraContext:(id)a7 verified:(BOOL)a8
{
  v8 = a8;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (self->_registrationInfo == a4)
  {
    if ([(IDSDAccount *)self isRegistrationActive])
    {
      if ([(IDSDAccount *)self isAdHocAccount])
      {
        v16 = +[IMRGLog warning];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100927180(self);
        }
      }

      else if ([(IDSDAccount *)self accountType]== 2)
      {
        v16 = +[IMRGLog warning];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1009270E8(self);
        }
      }

      else
      {
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = @"NO";
          *v26 = 138413058;
          *&v26[4] = v13;
          if (v8)
          {
            v18 = @"YES";
          }

          *&v26[12] = 2112;
          *&v26[14] = v14;
          v27 = 2112;
          v28 = v15;
          v29 = 2112;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Succeeded region validation with region ID: %@  phoneNumber: %@  context: %@  verified: %@", v26, 0x2Au);
        }

        v19 = objc_alloc_init(NSMutableDictionary);
        v16 = v19;
        if (v13)
        {
          CFDictionarySetValue(v19, kIDSServiceDefaultsProfileRegionIDKey, v13);
        }

        if (v14)
        {
          CFDictionarySetValue(v16, kIDSServiceDefaultsProfileBaseNumberKey, v14);
        }

        if (v15)
        {
          CFDictionarySetValue(v16, kIDSServiceDefaultsProfileServerContextKey, v15);
        }

        if (v8)
        {
          v20 = 3;
        }

        else
        {
          v20 = 1;
        }

        v21 = [NSNumber numberWithInt:v20, *v26];
        if (v21)
        {
          CFDictionarySetValue(v16, kIDSServiceDefaultsProfileValdationStatusKey, v21);
        }

        v22 = [NSNumber numberWithInt:0xFFFFFFFFLL];
        if (v22)
        {
          CFDictionarySetValue(v16, kIDSServiceDefaultsProfileValdationErrorCodeKey, v22);
        }

        v23 = [NSDictionary dictionaryWithObject:v16 forKey:kIDSServiceDefaultsProfileKey];
        [(IDSDAccount *)self writeAccountDefaults:v23];

        [(IDSRegistration *)self->_registrationInfo setRegionID:v13];
        [(IDSRegistration *)self->_registrationInfo setRegionBasePhoneNumber:v14];
        [(IDSRegistration *)self->_registrationInfo setRegionServerContext:v15];
        if ([(IDSDAccount *)self isDeviceRegistered])
        {
          [(IDSRegistration *)self->_registrationInfo saveToKeychain];
        }

        if ([(IDSDAccount *)self isDeviceRegistered]|| [(IDSDAccount *)self isDeviceAuthenticated])
        {
          [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
        }

        v24 = +[IMRGLog registration];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          registrationInfo = self->_registrationInfo;
          *v26 = 138412290;
          *&v26[4] = registrationInfo;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Resulting registration info: %@", v26, 0xCu);
        }
      }
    }

    else
    {
      v16 = +[IMRGLog warning];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }
    }
  }
}

- (void)center:(id)a3 failedRegionValidation:(id)a4 error:(int64_t)a5 info:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (self->_registrationInfo == v9)
  {
    if ([(IDSDAccount *)self isRegistrationActive])
    {
      if ([(IDSDAccount *)self isAdHocAccount])
      {
        v11 = +[IMRGLog warning];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1009272B0(self);
        }
      }

      else
      {
        v12 = [(IDSDAccount *)self accountType];
        v13 = +[IMRGLog warning];
        v11 = v13;
        if (v12 == 2)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100927218(self);
          }
        }

        else
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            v17 = sub_100016528(a5);
            v18 = 138412802;
            v19 = v9;
            v20 = 2112;
            v21 = v17;
            v22 = 2112;
            v23 = v10;
            _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed region validation for registration info: %@      error: %@   info: %@", &v18, 0x20u);
          }

          v11 = objc_alloc_init(NSMutableDictionary);
          v14 = [NSNumber numberWithInt:0xFFFFFFFFLL];
          if (v14)
          {
            CFDictionarySetValue(v11, kIDSServiceDefaultsProfileValdationStatusKey, v14);
          }

          v15 = [NSNumber numberWithInt:2];
          if (v15)
          {
            CFDictionarySetValue(v11, kIDSServiceDefaultsProfileValdationErrorCodeKey, v15);
          }

          [(IDSRegistration *)self->_registrationInfo setRegionID:0];
          [(IDSRegistration *)self->_registrationInfo setRegionBasePhoneNumber:0];
          [(IDSRegistration *)self->_registrationInfo setRegionServerContext:0];
          if ([(IDSDAccount *)self isDeviceRegistered])
          {
            [(IDSRegistration *)self->_registrationInfo saveToKeychain];
          }

          v16 = [NSDictionary dictionaryWithObject:v11 forKey:kIDSServiceDefaultsProfileKey];
          [(IDSDAccount *)self writeAccountDefaults:v16];

          if ([v10 count])
          {
            [(IDSDAccount *)self setRegistrationStatus:[(IDSDAccount *)self registrationStatus] error:[(IDSDAccount *)self registrationError] alertInfo:v10];
          }
        }
      }
    }

    else
    {
      v11 = +[IMRGLog warning];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }
    }
  }
}

- (int64_t)_validationStatusForAlias:(id)a3
{
  v4 = a3;
  v5 = [(IDSDAccount *)self vettedAliases];
  v6 = [v5 containsObject:v4];

  if (v6 & 1) != 0 || ([v4 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    v7 = 3;
  }

  else if ([v4 length])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = kIDSServiceDefaultsAliasKey;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 objectForKey:v13];
          v17 = [v16 isEqualToString:v4];

          if (v17)
          {
            v18 = [v15 objectForKey:kIDSServiceDefaultsAliasStatusKey];
            v7 = [v18 intValue];

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_16:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setValidationStatus:(int64_t)a3 error:(int)a4 forAlias:(id)a5 info:(id)a6 addToCurrentHandlesIfNeeded:(BOOL)a7 forceAdd:(BOOL)a8 aliasProperties:(id)a9
{
  v40 = a5;
  v15 = a6;
  v16 = a9;
  if ([v40 length])
  {
    v39 = v15;
    v17 = [v40 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];
    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = a4;
    }

    v37 = v18;
    if (v17)
    {
      v19 = 3;
    }

    else
    {
      v19 = a3;
    }

    v38 = self;
    v20 = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v21 = [v20 mutableCopy];

    if (![v21 count])
    {
      goto LABEL_14;
    }

    v22 = 0;
    v23 = kIDSServiceDefaultsAliasKey;
    while (1)
    {
      v24 = [v21 objectAtIndex:v22];
      v25 = [v24 objectForKey:v23];
      v26 = [v25 isEqualToString:v40];

      if (v26)
      {
        break;
      }

      if (++v22 >= [v21 count])
      {
        goto LABEL_14;
      }
    }

    if (v22 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [v21 objectAtIndex:v22];
      Mutable = [v29 mutableCopy];

      v28 = 0;
      if (Mutable)
      {
LABEL_22:
        if (!v21)
        {
          v21 = objc_alloc_init(NSMutableArray);
        }

        v31 = [(IDSDAccount *)v38 invisibleAliases];
        v32 = [v31 containsObject:v40];

        v33 = [NSNumber numberWithInteger:v19];
        [(__CFDictionary *)Mutable setObject:v33 forKey:kIDSServiceDefaultsAliasStatusKey];

        [(__CFDictionary *)Mutable setObject:v40 forKey:kIDSServiceDefaultsAliasKey];
        v34 = [NSNumber numberWithBool:v32 ^ 1];
        [(__CFDictionary *)Mutable setObject:v34 forKey:kIDSServiceDefaultsAliasIsUserVisibleKey];

        if (v16)
        {
          [(__CFDictionary *)Mutable addEntriesFromDictionary:v16];
        }

        if (v19 != -1 || v37 == -1)
        {
          [(__CFDictionary *)Mutable removeObjectForKey:kIDSServiceDefaultsAliasValidationErrorCodeKey];
        }

        else
        {
          v35 = [NSNumber numberWithInt:?];
          [(__CFDictionary *)Mutable setObject:v35 forKey:kIDSServiceDefaultsAliasValidationErrorCodeKey];
        }

        if (v28)
        {
          [v21 addObject:Mutable];
          [(IDSDAccount *)v38 markAsSelectedAlias:v40];
        }

        else
        {
          [v21 replaceObjectAtIndex:v22 withObject:Mutable];
        }

        v15 = v39;
        v36 = [NSDictionary dictionaryWithObjectsAndKeys:v21, kIDSServiceDefaultsAliasesKey, v39, kIDSServiceDefaultsAliasValidationAlertInfoKey, 0];
        [(IDSDAccount *)v38 writeAccountDefaults:v36];

        goto LABEL_34;
      }
    }

    else
    {
LABEL_14:
      v27 = v19 == 3 && a7;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v28 = 1;
      if (!v27 && !a8)
      {
        v15 = v39;
LABEL_34:

        goto LABEL_35;
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_22;
  }

LABEL_35:
}

- (void)_removeAliases:(id)a3 withReason:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IDSDAccount *)self uniqueID];
    *buf = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Remove aliases: %@   for: %@", buf, 0x16u);
  }

  v9 = [v6 __imArrayByApplyingBlock:&stru_100BDEFD8];

  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request to remove aliases: %@", buf, 0xCu);
  }

  if ([v9 count])
  {
    v11 = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v12 = [v11 mutableCopy];

    v13 = [v12 count];
    if (v13 - 1 >= 0)
    {
      v14 = v13;
      v34 = 0;
      v15 = kIDSServiceDefaultsAliasKey;
      v36 = v4;
      v33 = v9;
      v35 = kIDSServiceDefaultsAliasKey;
      while (1)
      {
        v16 = [v12 objectAtIndex:--v14, v33];
        v17 = [v16 objectForKey:v15];
        if (([v9 containsObject:v17] & 1) == 0)
        {
          if (![v17 _appearsToBePhoneNumber])
          {
            goto LABEL_39;
          }

          v18 = [@"+" stringByAppendingString:v17];
          v19 = [v9 containsObject:v18];

          if (!v19)
          {
            goto LABEL_39;
          }
        }

        [v12 removeObjectAtIndex:v14];
        if (v4 == 2)
        {
          [(IDSDAccount *)self markAsUnvettedAlias:v17];
        }

        else
        {
          [(IDSDAccount *)self markAsUnselectedAlias:v17 withReason:v4];
        }

        if ((*(self + 81) & 2) == 0)
        {
          goto LABEL_39;
        }

        v20 = [(IDSRegistration *)self->_registrationInfo candidateEmails];
        v21 = [v20 containsObject:v17];

        if (v21)
        {
          [(IDSRegistration *)self->_registrationInfo removeCandidateEmail:v17];
          v22 = +[IMRGLog registration];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v17;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing candidate email: %@", buf, 0xCu);
          }

          v34 = 1;
        }

        else
        {
          v22 = +[IMRGLog registration];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v17;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Email was candidate, just removing: %@", buf, 0xCu);
          }
        }

        v23 = [(IDSRegistration *)self->_registrationInfo confirmedEmails];
        v24 = [v23 containsObject:v17];

        v25 = +[IMRGLog registration];
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (!v24)
        {
          break;
        }

        if (v26)
        {
          *buf = 138412290;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing confirmed email: %@", buf, 0xCu);
        }

        if ([(IDSDAccount *)self isDeviceRegistered])
        {
          v25 = [v17 _bestGuessURI];
          v27 = [(IDSRegistration *)self->_registrationInfo uris];
          v28 = [v27 mutableCopy];

          v29 = [v28 containsObject:v25];
          v30 = +[IMRGLog registration];
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (v29)
          {
            if (v31)
            {
              *buf = 138412290;
              v38 = v17;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Alias is registered, needs re-register for: %@", buf, 0xCu);
            }

            [v28 removeObject:v25];
            [(IDSRegistration *)self->_registrationInfo setUris:v28];
            v34 = 1;
          }

          else
          {
            if (v31)
            {
              *buf = 138412290;
              v38 = v17;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Alias wasn't registered, moving along: %@", buf, 0xCu);
            }
          }

          v9 = v33;
          v15 = v35;

LABEL_38:
          v4 = v36;
          goto LABEL_39;
        }

        v4 = v36;
        v15 = v35;
LABEL_39:

        if (v14 <= 0)
        {
          if (v12)
          {
            goto LABEL_41;
          }

          goto LABEL_42;
        }
      }

      if (v26)
      {
        *buf = 138412290;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Email was unconfirmed, just removing: %@", buf, 0xCu);
      }

      v15 = v35;
      goto LABEL_38;
    }

    v34 = 0;
    if (v12)
    {
LABEL_41:
      v32 = [NSDictionary dictionaryWithObject:v12 forKey:kIDSServiceDefaultsAliasesKey];
      [(IDSDAccount *)self writeAccountDefaults:v32];
    }

LABEL_42:
    if (v34)
    {
      [(IDSDAccount *)self _reregister];
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Empty aliases, ignoring", buf, 2u);
    }
  }
}

- (void)removeAliases:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client request to remove aliases: %@", &v6, 0xCu);
  }

  [(IDSDAccount *)self _removeAliases:v4 withReason:4];
}

- (void)_addAliases:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Add aliases: %@", buf, 0xCu);
  }

  if ([v4 count])
  {
    v6 = +[IDSRegistrationController registeredPhoneNumbers];
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to add aliases: %@", buf, 0xCu);
    }

    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " => Found my phone numbers: %@", buf, 0xCu);
    }

    v9 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = IMLoggingStringForArray();
      *buf = 138412290;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " => Current aliases: %@", buf, 0xCu);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1004FB10C;
    v33[3] = &unk_100BDD408;
    v28 = v6;
    v34 = v28;
    v27 = v9;
    v35 = v27;
    v12 = [v4 __imArrayByApplyingBlock:v33];

    v13 = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = objc_alloc_init(NSMutableArray);
    }

    v26 = v14;
    v15 = [NSDictionary dictionaryWithObject:v14 forKey:kIDSServiceDefaultsAliasesKey];
    [(IDSDAccount *)self writeAccountDefaults:v15];

    v16 = [(IDSDAccount *)self vettedAliases];
    v17 = +[IMRGLog registration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " => Vetted aliases: %@", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v12;
    v18 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v4);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = +[IMRGLog registration];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, " => Adding alias: %@  (and as candidate)", buf, 0xCu);
          }

          [(IDSRegistration *)self->_registrationInfo addCandidateEmail:v22];
          if ([v16 containsObject:v22])
          {
            v24 = 3;
          }

          else
          {
            v24 = 0;
          }

          [(IDSDAccount *)self _setValidationStatus:v24 error:0xFFFFFFFFLL forAlias:v22 info:0 addToCurrentHandlesIfNeeded:1 forceAdd:1];
        }

        v19 = [v4 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v19);
    }

    if ([v4 count])
    {
      [(IDSDAccount *)self _reregister];
    }

    v25 = v28;
  }

  else
  {
    v25 = +[IMRGLog registration];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Empty alias, ignoring", buf, 2u);
    }
  }
}

- (void)addAliases:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSDAccount *)self uniqueID];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client request to add aliases: %@  account: %@", &v7, 0x16u);
  }

  [(IDSDAccount *)self _addAliases:v4];
}

- (void)_validateAliases:(id)a3 validateAlreadyValid:(BOOL)a4
{
  v5 = a3;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1009273E0(self);
    }

LABEL_7:
    v7 = v5;
    goto LABEL_8;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = +[IMRGLog warning];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100927348(self);
    }

    goto LABEL_7;
  }

  v8 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
  v9 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1004FB9AC;
  v41[3] = &unk_100BD9528;
  v6 = v8;
  v42 = v6;
  v7 = [v5 __imArrayByApplyingBlock:v41];

  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = IMLoggingStringForArray();
    *buf = 138412290;
    v44 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request to validate aliases: %@", buf, 0xCu);
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = IMLoggingStringForArray();
    *buf = 138412290;
    v44 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Current aliases: %@", buf, 0xCu);
  }

  if ([v7 count])
  {
    v32 = v9;
    v33 = v6;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v31 = v7;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [(IDSDAccount *)self _validationStatusForAlias:v19];
          v21 = +[IMRGLog registration];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = @"NO";
            if (v20 == 3)
            {
              v22 = @"YES";
            }

            v44 = v19;
            v45 = 2112;
            v46 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is already validated %@", buf, 0x16u);
          }

          if (v20 != 3)
          {
            [(IDSDAccount *)self _setValidationStatus:1 error:0xFFFFFFFFLL forAlias:v19 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v16);
    }

    if ([(IDSDAccount *)self isDeviceAuthenticated])
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1004FBA54;
      v36[3] = &unk_100BDF000;
      v36[4] = self;
      v23 = [v14 __imArrayByFilteringWithBlock:v36];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1004FBB38;
      v34[3] = &unk_100BDF028;
      v34[4] = self;
      v9 = v32;
      v35 = v32;
      v24 = [v14 __imArrayByFilteringWithBlock:v34];
      if ([v23 count] || objc_msgSend(v24, "count"))
      {
        v25 = [(IDSDAccount *)self systemMonitor];
        v26 = [v25 isUnderFirstDataProtectionLock];

        v6 = v33;
        if (v26)
        {
          v27 = +[IMRGLog registration];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v24;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "We're under first lock, not registering aliases: %@", buf, 0xCu);
          }
        }

        else if ([v24 count])
        {
          [(IDSDAccount *)self _registerAccount];
        }
      }

      else
      {
        v30 = +[IMRGLog registration];
        v6 = v33;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Alias all already validated, registered, returning", buf, 2u);
        }
      }
    }

    else
    {
      v29 = +[IMRGLog registration];
      v9 = v32;
      v6 = v33;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v14;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Request to validate aliases: %@, but device is not authenticated", buf, 0xCu);
      }
    }

    v7 = v31;
  }

  else
  {
    v28 = +[IMRGLog registration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Empty aliases, ignoring", buf, 2u);
    }
  }

LABEL_8:
}

- (void)_validateAliases:(id)a3
{
  v4 = a3;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if (![(IDSDAccount *)self isAdHocAccount])
  {
    if ([(IDSDAccount *)self accountType]== 2)
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100927478(self);
      }

      goto LABEL_7;
    }

    dateOfLastHandlesCheck = self->_dateOfLastHandlesCheck;
    if (dateOfLastHandlesCheck)
    {
      [(NSDate *)dateOfLastHandlesCheck timeIntervalSinceNow];
      if (fabs(v7) < 60.0)
      {
        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_dateOfLastHandlesCheck;
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "We've recently queried the vetted handles on the account, we'll use the local vetting status (%@)", &v12, 0xCu);
        }

        v10 = 0;
        goto LABEL_20;
      }

      v11 = self->_dateOfLastHandlesCheck;
    }

    else
    {
      v11 = 0;
    }

    self->_dateOfLastHandlesCheck = 0;

    v10 = 1;
LABEL_20:
    [(IDSDAccount *)self _validateAliases:v4 validateAlreadyValid:v10];
    goto LABEL_8;
  }

  v5 = +[IMRGLog warning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100927510(self);
  }

LABEL_7:

LABEL_8:
}

- (void)validateAliases:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSDAccount *)self uniqueID];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client request to validate: %@  account: %@", &v8, 0x16u);
  }

  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100927640(self);
      }
    }

    else
    {
      if ([(IDSDAccount *)self accountType]!= 2)
      {
        [(IDSDAccount *)self _validateAliases:v4];
        goto LABEL_10;
      }

      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1009275A8(self);
      }
    }
  }

  else
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }
  }

LABEL_10:
}

- (void)_unvalidateAliases:(id)a3
{
  v4 = a3;
  if (![(IDSDAccount *)self isRegistrationActive])
  {
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }

    goto LABEL_7;
  }

  if (![(IDSDAccount *)self isAdHocAccount])
  {
    if ([(IDSDAccount *)self accountType]== 2)
    {
      v5 = +[IMRGLog warning];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1009276D8(self);
      }

      goto LABEL_7;
    }

    if ([(IDSDAccount *)self accountType]== 1)
    {
      v7 = [(IDSDAccount *)self loginID];
      v8 = [v7 lowercaseString];
    }

    else
    {
      v8 = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1004FC3A8;
    v17[3] = &unk_100BD9528;
    v5 = v8;
    v18 = v5;
    v6 = [v4 __imArrayByApplyingBlock:v17];

    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request to unlink aliases: %@", buf, 0xCu);
    }

    if ([v6 count])
    {
      if ([(IDSDAccount *)self isDeviceAuthenticated])
      {
        v10 = [(IDSDAccount *)self vettedAliases];
        [(IDSDAccount *)self _removeAliases:v6 withReason:2];
        if ([v6 count])
        {
          v11 = +[IMRGLog registration];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v6;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating vetted handles to remove: %@", buf, 0xCu);
          }

          v12 = [v10 mutableCopy];
          if (!v12)
          {
            v12 = objc_alloc_init(NSMutableArray);
          }

          [v12 removeObjectsInArray:v6];
          v13 = +[IMRGLog registration];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " => Final: %@", buf, 0xCu);
          }

          [(IDSDAccount *)self _updateVettedAliases:v12 emailInfo:0 addToCurrentHandlesIfNeeded:0];
        }

        goto LABEL_32;
      }

      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        v14 = "Request to unvalidate aliases: %@, but device is not authenticated";
        v15 = v10;
        v16 = 12;
        goto LABEL_31;
      }
    }

    else
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Empty aliases, ignoring";
        v15 = v10;
        v16 = 2;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

LABEL_32:

    goto LABEL_8;
  }

  v5 = +[IMRGLog warning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100927770(self);
  }

LABEL_7:
  v6 = v4;
LABEL_8:
}

- (void)unvalidateAliases:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSDAccount *)self uniqueID];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client request to unvalidate: %@  account: %@", &v8, 0x16u);
  }

  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1009278A0(self);
      }
    }

    else
    {
      if ([(IDSDAccount *)self accountType]!= 2)
      {
        [(IDSDAccount *)self _unvalidateAliases:v4];
        goto LABEL_10;
      }

      v7 = +[IMRGLog warning];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100927808(self);
      }
    }
  }

  else
  {
    v7 = +[IMRGLog warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }
  }

LABEL_10:
}

- (void)deactivateAndPurgeIdentify
{
  v3 = +[IMRGLog warning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_100927938();
  }

  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v4 = +[IMRGLog warning];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100927A6C(self);
      }
    }

    else
    {
      v5 = [(IDSDAccount *)self accountType];
      v6 = +[IMRGLog warning];
      v4 = v6;
      if (v5 == 2)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1009279D4(self);
        }
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          sub_10092796C();
        }

        [(IDSDAccount *)self _unregisterAccount];
        v7 = +[IMRGLog warning];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_1009279A0();
        }

        v4 = +[IDSRegistrationKeyManager sharedInstance];
        [v4 purgeMessageProtectionIdentity];
      }
    }
  }

  else
  {
    v4 = +[IMRGLog warning];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }
  }
}

- (void)validateCredentialsWithDeliveryCompletionBlock:(id)a3
{
  v4 = a3;
  v6 = [(IDSDAccount *)self registrationCenter];
  v5 = [(IDSDAccount *)self registration];
  [v6 sendValidateCredential:v5 withDeliveryCompletionBlock:v4];
}

- (void)refreshVettedAliases
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client request to refresh valid aliases", buf, 2u);
  }

  if ([(IDSDAccount *)self isDeviceAuthenticated])
  {
    v4 = [(IDSDAccount *)self registrationCenter];
    [v4 queryValidatedEmailsForRegistration:self->_registrationInfo allowPasswordPrompt:1 completionBlock:0];
  }

  else
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to refresh valid aliases, but device is not authenticated", v5, 2u);
    }
  }
}

- (void)resetErrorState
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client requested to reset error state.", v4, 2u);
  }

  [(IDSDAccount *)self setRegistrationStatus:[(IDSDAccount *)self registrationStatus] error:-1 alertInfo:0];
}

- (unint64_t)_handleAndConvertFeatureToggleError:(int64_t)a3
{
  if (a3 == 20000)
  {
    return 5;
  }

  if (a3 != 6005)
  {
    return 6;
  }

  if (![(IDSDAccount *)self accountType])
  {
    v4 = +[IDSRegistrationReasonTracker sharedInstance];
    v5 = [(IDSDAccount *)self userUniqueIdentifier];
    [v4 setPNRReason:11 forUserUniqueIdentifier:v5];
  }

  v6 = [(IDSDAccount *)self primaryAccount];
  v7 = v6;
  if (!v6)
  {
    v6 = self;
  }

  [v6 reIdentify];

  return 6;
}

- (void)retrieveFeatureToggleStateForOptions:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSDAccount *)self registrationCenter];
  v9 = [v7 featureID];

  v10 = [(IDSDAccount *)self primaryRegistration];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004FCB20;
  v12[3] = &unk_100BDF050;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 retrieveFeatureToggleStateForFeatureID:v9 registration:v10 completionBlock:v12];
}

- (void)updateFeatureToggleStateWithOptions:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSDAccount *)self registrationCenter];
  v9 = [v7 state];
  v10 = [v7 featureID];

  v11 = [(IDSDAccount *)self primaryRegistration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004FCD74;
  v13[3] = &unk_100BDF050;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v8 updateFeatureToggleState:v9 forFeatureID:v10 registration:v11 completionBlock:v13];
}

- (void)_handlePseudonymProvisionError:(int64_t)a3
{
  if (a3 == 6005)
  {
    if (![(IDSDAccount *)self accountType])
    {
      v5 = +[IDSRegistrationReasonTracker sharedInstance];
      v6 = [(IDSDAccount *)self userUniqueIdentifier];
      [v5 setPNRReason:11 forUserUniqueIdentifier:v6];
    }

    v7 = [(IDSDAccount *)self primaryAccount];
    v8 = v7;
    if (!v7)
    {
      v7 = self;
    }

    [v7 reIdentify];
  }
}

- (BOOL)provisionPseudonymForURI:(id)a3 properties:(id)a4 requestProperties:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v14 = [v11 allowedServices];
    v15 = [(IDSDAccount *)self primaryAccount];
    v16 = [v15 service];
    v17 = [v16 identifier];
    v18 = [v14 containsObject:v17];

    if ((v18 & 1) == 0)
    {
      v19 = [v11 allowedServices];
      v20 = [(IDSDAccount *)self primaryAccount];
      v21 = [v20 service];
      v22 = [v21 identifier];
      v23 = [v19 arrayByAddingObject:v22];

      v24 = [v11 withUpdatedAllowedServices:v23];

      v11 = v24;
    }

    v25 = [(IDSDAccount *)self primaryAccount];
    v26 = [v25 provisionPseudonymForURI:v10 properties:v11 requestProperties:v13 completionBlock:v12];
  }

  else
  {
    v27 = [(IDSDAccount *)self registrationCenter];
    v28 = [(IDSDAccount *)self registration];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1004FD120;
    v30[3] = &unk_100BDF078;
    v30[4] = self;
    v33 = v12;
    v31 = v10;
    v11 = v11;
    v32 = v11;
    v26 = [v27 provisionPseudonymFor:v28 withURI:v31 properties:v11 requestProperties:v13 completionBlock:v30];
  }

  return v26;
}

- (BOOL)renewPseudonym:(id)a3 forUpdatedExpiryEpoch:(double)a4 requestProperties:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v13 = [(IDSDAccount *)self primaryAccount];
    v14 = [v13 renewPseudonym:v10 forUpdatedExpiryEpoch:v12 requestProperties:v11 completionBlock:a4];
  }

  else
  {
    v15 = [(IDSDAccount *)self registrationCenter];
    v16 = [(IDSDAccount *)self registration];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004FD494;
    v18[3] = &unk_100BDF0A0;
    v18[4] = self;
    v20 = v11;
    v19 = v10;
    v14 = [v15 renewPseudonym:v19 forRegistration:v16 forUpdatedExpiryEpoch:v12 requestProperties:v18 completionBlock:a4];
  }

  return v14;
}

- (BOOL)revokePseudonym:(id)a3 requestProperties:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v11 = [(IDSDAccount *)self primaryAccount];
    v12 = [v11 revokePseudonym:v8 requestProperties:v10 completionBlock:v9];
  }

  else
  {
    v13 = [(IDSDAccount *)self registrationCenter];
    v14 = [(IDSDAccount *)self registration];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1004FD7B0;
    v16[3] = &unk_100BDF0A0;
    v16[4] = self;
    v18 = v9;
    v17 = v8;
    v12 = [v13 revokePseudonym:v17 forRegistration:v14 requestProperties:v10 completionBlock:v16];
  }

  return v12;
}

- (void)_addPseudonyms:(id)a3
{
  v4 = a3;
  v37 = self;
  v38 = objc_autoreleasePoolPush();
  v5 = [(IDSDAccount *)self accountInfo];
  v36 = kIDSServiceDefaultsPseudonymsKey;
  v6 = [v5 objectForKey:?];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSMutableDictionary dictionary];
  }

  v10 = v9;

  v43 = objc_alloc_init(NSMutableSet);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v44 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v44)
  {
    v42 = *v48;
    key = kIDSServiceDefaultsURIKey;
    v40 = kIDSServiceDefaultsPropertiesKey;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v13 = [v12 maskedURI];
        v14 = [v13 prefixedURI];
        v15 = v10;
        v16 = [v10 objectForKey:v14];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1004FDED0;
        v46[3] = &unk_100BDF0C8;
        v46[4] = v12;
        v17 = [v16 __imArrayByFilteringWithBlock:v46];
        v18 = [v17 mutableCopy];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = +[NSMutableArray array];
        }

        v21 = v20;

        v22 = objc_alloc_init(NSMutableDictionary);
        v23 = [v12 URI];
        v24 = [v23 prefixedURI];

        if (v24)
        {
          CFDictionarySetValue(v22, key, v24);
          v10 = v15;
        }

        else
        {
          v10 = v15;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v54 = key;
            v55 = 2080;
            v56 = "pseudonymInfo";
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
          }
        }

        v25 = [v12 properties];
        v26 = [v25 dictionaryRepresentation];

        if (v26)
        {
          CFDictionarySetValue(v22, v40, v26);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v54 = v40;
          v55 = 2080;
          v56 = "pseudonymInfo";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
        }

        [v21 addObject:v22];
        v27 = [v12 maskedURI];
        v28 = [v27 prefixedURI];
        [v10 setObject:v21 forKey:v28];

        v29 = [v12 properties];
        v30 = [v29 allowedServices];
        v31 = [v30 mutableCopy];
        [v43 addObjectsFromArray:v31];

        objc_autoreleasePoolPop(context);
      }

      v44 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v44);
  }

  v32 = [(IDSDAccount *)v37 service];
  v33 = [v32 identifier];
  [v43 removeObject:v33];

  v51 = v36;
  v52 = v10;
  v34 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v35 = [v43 allObjects];
  [(IDSDAccount *)v37 _writeAccountDefaults:v34 force:1 interestedSubservices:v35];

  objc_autoreleasePoolPop(v38);
}

- (void)_addPseudonym:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [(IDSDAccount *)self _addPseudonyms:v5, v6];
}

- (void)_removePseudonym:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v6 count:1];

  [(IDSDAccount *)self _removePseudonyms:v5, v6];
}

- (void)_removePseudonyms:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(IDSDAccount *)self accountInfo];
  v7 = kIDSServiceDefaultsPseudonymsKey;
  v8 = [v6 objectForKey:kIDSServiceDefaultsPseudonymsKey];

  v31 = v8;
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSMutableDictionary dictionary];
  }

  v32 = v11;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v4;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
  obj = v12;
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v27 = v7;
  v28 = v5;
  LOBYTE(v15) = 0;
  v30 = *v35;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v35 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v34 + 1) + 8 * i);
      v18 = objc_autoreleasePoolPush();
      v19 = [v17 maskedURI];
      v20 = [v19 prefixedURI];
      v21 = [v31 objectForKey:v20];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1004FE3E0;
      v33[3] = &unk_100BDF0C8;
      v33[4] = v17;
      v22 = [v21 __imArrayByFilteringWithBlock:v33];
      v23 = [v22 count];
      v24 = [v17 maskedURI];
      v25 = [v24 prefixedURI];
      if (v23)
      {
        [v32 setObject:v22 forKey:v25];
      }

      else
      {
        [v32 removeObjectForKey:v25];
      }

      if (v15)
      {
        v15 = 1;
      }

      else
      {
        v26 = [v22 count];
        v15 = v26 != [v21 count];
      }

      objc_autoreleasePoolPop(v18);
    }

    v14 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  }

  while (v14);

  v5 = v28;
  if (v15)
  {
    v38 = v27;
    v39 = v32;
    v12 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [(IDSDAccount *)self _writeAccountDefaults:v12 force:1];
LABEL_19:
  }

  objc_autoreleasePoolPop(v5);
}

- (id)pseudonymForPseudonymURIString:(id)a3
{
  v4 = a3;
  if ([v4 _appearsToBePseudonymID])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(IDSDAccount *)self pseudonyms];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 URI];
          v11 = [v10 prefixedURI];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)pseudonymURIMap
{
  v29 = objc_alloc_init(NSMutableDictionary);
  v27 = objc_autoreleasePoolPush();
  v39 = self;
  v3 = [(IDSDAccount *)self accountInfo];
  v4 = [v3 objectForKey:kIDSServiceDefaultsPseudonymsKey];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v30)
  {
    v28 = *v45;
    v38 = kIDSServiceDefaultsPropertiesKey;
    v36 = kIDSServiceDefaultsURIKey;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v5;
        v6 = *(*(&v44 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = [obj objectForKeyedSubscript:v6];
        v35 = [IDSURI URIWithPrefixedURI:v6];
        v34 = +[NSMutableArray array];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v37 = v7;
        v8 = [v37 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v41;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v41 != v10)
              {
                objc_enumerationMutation(v37);
              }

              v12 = *(*(&v40 + 1) + 8 * i);
              v13 = objc_autoreleasePoolPush();
              v14 = [IDSPseudonymProperties alloc];
              v15 = [v12 objectForKeyedSubscript:v38];
              v16 = [v14 initWithDictionaryRepresentation:v15];

              v17 = [v16 allowedServices];
              v18 = [(IDSDAccount *)v39 service];
              v19 = [v18 identifier];
              v20 = [v17 containsObject:v19];

              if (v20)
              {
                v21 = [v12 objectForKeyedSubscript:v36];
                v22 = [IDSURI URIWithPrefixedURI:v21];

                if (v22 && v16)
                {
                  v23 = [[IDSPseudonym alloc] initWithURI:v22 maskedURI:v35 properties:v16];
                  [v34 addObject:v23];
                }
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [v37 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v9);
        }

        v24 = [v34 copy];
        [v29 setObject:v24 forKeyedSubscript:v35];

        objc_autoreleasePoolPop(context);
        v5 = v33 + 1;
      }

      while ((v33 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v30);
  }

  objc_autoreleasePoolPop(v27);
  v25 = [v29 copy];

  return v25;
}

- (BOOL)updateKTOptInStatus:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (+[IMUserDefaults keyTransparencyDropOptInMessageBeforeSending]&& CUTIsInternalInstall())
  {
    v7 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dropping Opt In/Out Message before sending to server because user default is set.", buf, 2u);
    }

    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [(IDSServiceProperties *)self->_service identifier];
    v11 = [v10 isEqualToString:@"com.apple.madrid"];

    if (v11)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = [(IDSDAccount *)self vettedAliases];
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [[IDSURI alloc] initWithPrefixedURI:*(*(&v26 + 1) + 8 * i)];
            [v8 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v14);
      }
    }

    v18 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8004 userInfo:0];
    v19 = [[IDSKTOptInResult alloc] initWithSuccess:0 optedInOutURIs:v8 serverSMTByURI:v9 error:v18];
    v6[2](v6, v19);

    v20 = 0;
  }

  else
  {
    v21 = [(IDSDAccount *)self registrationCenter];
    v22 = [(IDSDAccount *)self registration];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1004FECCC;
    v24[3] = &unk_100BDF0F0;
    v24[4] = self;
    v25 = v6;
    v20 = [v21 updateKTOptInStatusForRegistration:v22 withOptInStatus:v4 withCompletion:v24];
  }

  return v20;
}

- (BOOL)updateKTOptInStatusWithRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[IMUserDefaults keyTransparencyDropOptInMessageBeforeSending]&& CUTIsInternalInstall())
  {
    v8 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dropping Opt In/Out Message before sending to server because user default is set.", buf, 2u);
    }

    v9 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = [(IDSServiceProperties *)self->_service identifier];
    v12 = [v11 isEqualToString:@"com.apple.madrid"];

    if (v12)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [(IDSDAccount *)self vettedAliases];
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [[IDSURI alloc] initWithPrefixedURI:*(*(&v27 + 1) + 8 * i)];
            [v9 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }
    }

    v19 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8004 userInfo:0];
    v20 = [[IDSKTOptInResult alloc] initWithSuccess:0 optedInOutURIs:v9 serverSMTByURI:v10 error:v19];
    v7[2](v7, v20);

    v21 = 0;
  }

  else
  {
    v22 = [(IDSDAccount *)self registrationCenter];
    v23 = [(IDSDAccount *)self registration];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1004FF5EC;
    v25[3] = &unk_100BDF0F0;
    v25[4] = self;
    v26 = v7;
    v21 = [v22 updateKTOptInStatusForRegistration:v23 withOptInOutRequest:v6 withCompletion:v25];
  }

  return v21;
}

- (void)_handleKTOptInStatusUpdateError:(int64_t)a3
{
  if (a3 == 6005)
  {
    v5 = [(IDSDAccount *)self primaryAccount];
    v6 = v5;
    if (!v5)
    {
      v5 = self;
    }

    [v5 reIdentify];
  }
}

- (void)askPeersToClearCacheWithURIs:(id)a3 fromURI:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 132 to peers to clear their cache { fromURI: %@ service: %@ peerURIs: %@ }", buf, 0x20u);
  }

  v12 = objc_alloc_init(IDSSendParameters);
  v13 = [[IDSSendReason alloc] initWithReason:10 subreason:6 pathID:40];
  v14 = [IDSSendReasonContainer createWithReason:v13];
  [v12 setSendReasonContainer:v14];

  if ([v8 count])
  {
    v15 = +[NSDictionary dictionary];
    [v9 prefixedURI];
    v28 = v12;
    v16 = v13;
    v17 = v9;
    v18 = v10;
    v20 = v19 = self;
    v21 = [v20 _stripFZIDPrefix];
    v22 = [NSSet setWithArray:v8];
    v23 = [IDSDestination destinationWithDestinations:v22];
    LOWORD(v27) = 0;
    LOWORD(v26) = 0;
    LOWORD(v25) = 0;
    v24 = v19;
    v10 = v18;
    v9 = v17;
    v13 = v16;
    v12 = v28;
    [IDSDAccount sendMessage:v24 params:"sendMessage:params:bulkedPayload:fromID:toDestinations:useDictAsTopLevel:dataToEncrypt:encryptPayload:wantsResponse:expirationDate:command:wantsDeliveryStatus:wantsCertifiedDelivery:deliveryStatusContext:messageUUID:priority:localDelivery:disallowRefresh:willSendBlock:completionBlock:" bulkedPayload:v15 fromID:v28 toDestinations:0 useDictAsTopLevel:v21 dataToEncrypt:v23 encryptPayload:1 wantsResponse:0 expirationDate:v25 command:0 wantsDeliveryStatus:&off_100C3C8C8 wantsCertifiedDelivery:v26 deliveryStatusContext:0 messageUUID:0 priority:300 localDelivery:v27 disallowRefresh:0 willSendBlock:&stru_100BDF130 completionBlock:?];
  }

  else
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No peers to send to { fromURI: %@ service: %@ }", buf, 0x16u);
    }
  }
}

- (void)validateProfile
{
  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if ([(IDSDAccount *)self isAdHocAccount])
    {
      v3 = +[IMRGLog warning];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100927B9C(self);
      }
    }

    else if ([(IDSDAccount *)self accountType]== 2)
    {
      v3 = +[IMRGLog warning];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_100927B04(self);
      }
    }

    else
    {
      v4 = [(IDSDAccount *)self accountInfo];
      v5 = kIDSServiceDefaultsProfileKey;
      v3 = [v4 objectForKey:kIDSServiceDefaultsProfileKey];

      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(IDSDAccount *)self uniqueID];
        v19 = 138412546;
        v20 = v3;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client request to validate profile info: %@   account: %@", &v19, 0x16u);
      }

      v8 = kIDSServiceDefaultsProfileRegionIDKey;
      v9 = [v3 objectForKey:kIDSServiceDefaultsProfileRegionIDKey];
      v10 = kIDSServiceDefaultsProfileBaseNumberKey;
      v11 = [v3 objectForKey:kIDSServiceDefaultsProfileBaseNumberKey];
      v12 = +[IDSAppleIDRegistrationCenter sharedInstance];
      v13 = [v12 validateRegion:v9 phoneNumber:v11 forRegistration:self->_registrationInfo];

      if (v13)
      {
        v14 = objc_alloc_init(NSMutableDictionary);
        v15 = v14;
        if (v9)
        {
          CFDictionarySetValue(v14, v8, v9);
        }

        if (v11)
        {
          CFDictionarySetValue(v15, v10, v11);
        }

        v16 = [NSNumber numberWithInt:2];
        if (v16)
        {
          CFDictionarySetValue(v15, kIDSServiceDefaultsProfileValdationStatusKey, v16);
        }

        v17 = [NSNumber numberWithInt:0xFFFFFFFFLL];
        if (v17)
        {
          CFDictionarySetValue(v15, kIDSServiceDefaultsProfileValdationErrorCodeKey, v17);
        }

        v18 = [NSDictionary dictionaryWithObject:v15 forKey:v5];
        [(IDSDAccount *)self writeAccountDefaults:v18];
      }
    }
  }

  else
  {
    v3 = +[IMRGLog warning];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1009250B0(self);
    }
  }
}

- (void)_refreshRegistration
{
  v3 = objc_alloc_init(IMMessageContext);
  [v3 setShouldBoost:0];
  v4 = objc_autoreleasePoolPush();
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1005004E8;
  v10 = &unk_100BDD470;
  v5 = v3;
  v11 = v5;
  v12 = self;
  [(IDSDAccount *)self _broadcastAccountMessageBlock:&v7];
  v6 = [IDSDaemon sharedInstance:v7];
  [v6 updateTopics];

  objc_autoreleasePoolPop(v4);
}

- (void)markAsUnvettedAlias:(id)a3
{
  v4 = a3;
  if ([(IDSDAccount *)self currentAliasState:?]== 3)
  {
    [(IDSDAccount *)self _setUserIntentState:4 forAlias:v4 withReason:1];
  }

  else
  {
    [(IDSDAccount *)self _stopTrackingUserIntentOfAlias:v4];
  }
}

- (void)markAsVettedAlias:(id)a3
{
  v5 = a3;
  if ([(IDSDAccount *)self currentAliasState:v5]== 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [(IDSDAccount *)self _setUserIntentState:v4 forAlias:v5 withReason:1];
}

- (unsigned)currentAliasState:(id)a3
{
  v3 = [(IDSDAccount *)self _userIntentDictForAlias:a3];
  v4 = [v3 objectForKey:kIDSServiceDefaultsAliasIntentStateKey];
  v5 = [v4 intValue];

  return v5;
}

- (unsigned)unselectReasonForAlias:(id)a3
{
  v3 = [(IDSDAccount *)self _userIntentDictForAlias:a3];
  v4 = [v3 objectForKey:kIDSServiceDefaultsAliasIntentStateKey];
  v5 = [v4 intValue];

  if (v5 == 2)
  {
    v6 = [v3 objectForKey:kIDSServiceDefaultsAliasIntentInfoKey];
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)_userIntentDictForAlias:(id)a3
{
  v4 = a3;
  v5 = [(IDSDAccount *)self _allUserIntentWithDefaultReason:0];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v7 = [v6 objectForKey:kIDSServiceDefaultsAliasIntentStateKey];
  v8 = [v7 intValue];

  if (v8 != 4)
  {
    v15 = v6;
    goto LABEL_16;
  }

  v9 = [v6 objectForKey:kIDSServiceDefaultsAliasIntentTimestampKey];
  if (v9)
  {
    v10 = +[NSDate date];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;
    [(IDSDAccount *)self _maxSelectedButVettedGracePeriod];
    if (v12 >= 0.0 && v12 < v13)
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(IDSDAccount *)self service];
        v18 = [v17 identifier];
        v19 = [(IDSDAccount *)self loginID];
        v21 = 138413314;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Grace period is still valid -- returing state {service: %@, loginID: %@, alias: %@, now: %@, then: %@}", &v21, 0x34u);
      }

      v15 = v6;
      goto LABEL_15;
    }
  }

  [(IDSDAccount *)self _stopTrackingUserIntentOfAlias:v4];
  v15 = 0;
LABEL_15:

LABEL_16:

  return v15;
}

- (void)_setUserIntentState:(unsigned __int8)a3 forAlias:(id)a4 withReason:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [(IDSDAccount *)self service];
  v10 = [v9 shouldAutoRegisterAllHandles];

  if (v10 & 1) != 0 || ([v8 isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    goto LABEL_12;
  }

  v11 = [(IDSDAccount *)self _allUserIntentWithDefaultReason:0];
  v12 = [v11 mutableCopy];

  if (v6 == 4)
  {
    v40[0] = kIDSServiceDefaultsAliasIntentStateKey;
    v13 = [NSNumber numberWithUnsignedChar:4];
    v41[0] = v13;
    v40[1] = kIDSServiceDefaultsAliasIntentTimestampKey;
    v14 = +[NSDate date];
    v41[1] = v14;
    v15 = v41;
    v16 = v40;
LABEL_8:
    v17 = [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:2];

    goto LABEL_9;
  }

  if (v5 != 1)
  {
    v38[0] = kIDSServiceDefaultsAliasIntentStateKey;
    v13 = [NSNumber numberWithUnsignedChar:v6];
    v39[0] = v13;
    v38[1] = kIDSServiceDefaultsAliasIntentInfoKey;
    v14 = [NSNumber numberWithUnsignedChar:v5];
    v39[1] = v14;
    v15 = v39;
    v16 = v38;
    goto LABEL_8;
  }

  v36 = kIDSServiceDefaultsAliasIntentStateKey;
  v13 = [NSNumber numberWithUnsignedChar:v6];
  v37 = v13;
  v17 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
LABEL_9:

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(IDSDAccount *)self service];
    v20 = [v19 identifier];
    v21 = [(IDSDAccount *)self loginID];
    v22 = [v12 objectForKey:v8];
    *buf = 138413314;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v22;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating user intent state {service: %@, loginID: %@, alias: %@, from: %@, to: %@}", buf, 0x34u);
  }

  [v12 setObject:v17 forKey:v8];
  v24 = kIDSServiceDefaultsAliasIntentKey;
  v25 = v12;
  v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(IDSDAccount *)self writeAccountDefaults:v23];

LABEL_12:
}

- (void)_stopTrackingUserIntentOfAlias:(id)a3
{
  v4 = a3;
  v5 = [(IDSDAccount *)self service];
  v6 = [v5 shouldAutoRegisterAllHandles];

  if ((v6 & 1) == 0)
  {
    v7 = [(IDSDAccount *)self _allUserIntentWithDefaultReason:0];
    v8 = [v7 mutableCopy];

    [v8 removeObjectForKey:v4];
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IDSDAccount *)self service];
      v11 = [v10 identifier];
      v12 = [(IDSDAccount *)self loginID];
      *buf = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping user intent tracking {service: %@, loginID: %@, alias: %@}", buf, 0x20u);
    }

    v14 = kIDSServiceDefaultsAliasIntentKey;
    v15 = v8;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v13];
  }
}

- (id)_allUserIntentWithDefaultReason:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = [(IDSDAccount *)self service];
  v6 = [v5 shouldAutoRegisterAllHandles];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(IDSDAccount *)v4 accountInfo];
    v9 = kIDSServiceDefaultsAliasIntentKey;
    v7 = [v8 objectForKey:kIDSServiceDefaultsAliasIntentKey];

    if (!v7)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = kIDSServiceDefaultsAliasIntentStateKey;
      v12 = &_dispatch_main_q_ptr;
      v36 = v9;
      if (v3)
      {
        v54[0] = kIDSServiceDefaultsAliasIntentStateKey;
        v54[1] = kIDSServiceDefaultsAliasIntentInfoKey;
        v55[0] = &off_100C3C8E0;
        v55[1] = &off_100C3C8F8;
        v13 = v55;
        v14 = v54;
        v15 = 2;
      }

      else
      {
        v52 = kIDSServiceDefaultsAliasIntentStateKey;
        v53 = &off_100C3C8E0;
        v13 = &v53;
        v14 = &v52;
        v15 = 1;
      }

      v16 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [(IDSDAccount *)v4 vettedAliases];
      v18 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v43;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [v10 setObject:v16 forKey:*(*(&v42 + 1) + 8 * i)];
          }

          v19 = [v17 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v19);
      }

      v35 = v16;

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = v4;
      v22 = [(IDSDAccount *)v4 _unprefixedURIStringsFromAccountInfo];
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        v26 = kIDSServiceDefaultsSentinelAlias;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v38 + 1) + 8 * j);
            if (([v28 isEqualToIgnoringCase:v26] & 1) == 0)
            {
              v48 = v11;
              v49 = &off_100C3C910;
              [(dispatch_queue_s *)v12[25] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
              v29 = v11;
              v31 = v30 = v12;
              [v10 setObject:v31 forKey:v28];

              v12 = v30;
              v11 = v29;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v50 count:16];
        }

        while (v24);
      }

      v7 = [v10 copy];
      v46 = v36;
      v47 = v7;
      v32 = [(dispatch_queue_s *)v12[25] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v4 = v37;
      [(IDSDAccount *)v37 writeAccountDefaults:v32];
    }

    v33 = +[IMRGLog GDR];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100927C34(v4, v33);
    }
  }

  return v7;
}

- (double)_maxSelectedButVettedGracePeriod
{
  v2 = +[IDSServerBag sharedInstance];
  v3 = [v2 objectForKey:@"max-selected-tracking-grace-period"];

  v4 = 86400.0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      v6 = v5;
      v7 = +[IMRGLog registration];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 < 0.0 || v6 > 604800.0)
      {
        v4 = 86400.0;
        if (v8)
        {
          v10 = 134217984;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Server bag overrided grace period outside acceptable range -- ignoring {gracePeriod: %f}", &v10, 0xCu);
        }
      }

      else
      {
        if (v8)
        {
          v10 = 134217984;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Server bag overrided default max selected grace period {gracePeriod: %f}", &v10, 0xCu);
        }

        v4 = v6;
      }
    }
  }

  return v4;
}

- (void)reportSpamWithMessages:(id)a3 toURI:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSRegistrationController sharedInstance];
  [v8 reportSpamWithMessages:v7 toURI:v6 registration:self->_registrationInfo];
}

- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 toURI:(id)a8
{
  v9 = a6;
  v10 = a5;
  v14 = a8;
  v15 = a7;
  v16 = a4;
  v17 = a3;
  v18 = +[IDSRegistrationController sharedInstance];
  [v18 reportiMessageUnknownSender:v17 messageID:v16 isBlackholed:v10 isJunked:v9 messageServerTimestamp:v15 toURI:v14 registration:self->_registrationInfo];
}

- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(IDSDAccount *)self registrationCenter];
  [v13 reportAction:a3 ofTempURI:v12 fromURI:v11 registration:self->_registrationInfo withCompletion:v10];
}

- (void)reportMessage:(id)a3 toURI:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[IDSRegistrationController sharedInstance];
  v8 = [(IDSDAccount *)self primaryRegistration];
  [v9 reportMessage:v7 toURI:v6 registration:v8];
}

- (void)reportClientEvent:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[IDSRegistrationController sharedInstance];
  v8 = [(IDSDAccount *)self primaryRegistration];
  [v9 reportClientEvent:v7 registration:v8 completion:v6];
}

- (id)serviceType
{
  v2 = [(IDSDAccount *)self primaryServiceName];
  v3 = _IDSRegistrationServiceTypeForString();

  return v3;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System did leave first unlock, checking pending items", buf, 2u);
  }

  if ((*(self + 80) & 0x40) != 0)
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "   We had a pending handle request, kicking off", v13, 2u);
    }

    *(self + 80) &= ~0x40u;
    if ((*(self + 80) & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((*(self + 80) & 0x20) != 0)
  {
LABEL_9:
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "   We had a dependent reg request, kicking off", v12, 2u);
    }

    *(self + 80) &= ~0x20u;
LABEL_12:
    [(IDSDAccount *)self _updateHandles:1];
    [(IDSDAccount *)self _issueDependentCheck];
  }

  v6 = *(self + 80);
  if ((v6 & 0x80000000) != 0)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "   We had a pending re-identify request, kicking off", v11, 2u);
    }

    *(self + 80) &= ~0x80u;
    v7 = self + 81;
  }

  else
  {
    v7 = self + 81;
    if ((*(self + 81) & 1) == 0)
    {
      return;
    }

    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "   We had a pending re-register request, kicking off", v10, 2u);
    }

    *(self + 80) &= ~0x80u;
  }

  *v7 &= ~1u;
  [(IDSDAccount *)self _reregisterAndReidentify:(v6 >> 7) & 1];
}

- (void)addRegistrationListener:(id)a3
{
  v4 = a3;
  registrationListeners = self->_registrationListeners;
  v8 = v4;
  if (!registrationListeners)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_registrationListeners;
    self->_registrationListeners = v6;

    v4 = v8;
    registrationListeners = self->_registrationListeners;
  }

  [(NSHashTable *)registrationListeners addObject:v4];
}

- (void)removeRegistrationListener:(id)a3
{
  [(NSHashTable *)self->_registrationListeners removeObject:a3];
  if (![(NSHashTable *)self->_registrationListeners count])
  {
    registrationListeners = self->_registrationListeners;
    self->_registrationListeners = 0;
  }
}

- (void)_notifyRegistrationListenersAccountDidUpdateRegisteredDevices
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_registrationListeners;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [(IDSDAccount *)self registeredDevices];
          [v8 account:self didUpdateRegisteredDevices:v9];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)sendSenderKeyMessageToDestinations:(id)a3 fromURI:(id)a4 guid:(id)a5 messageData:(id)a6 sendReasonPathID:(int64_t)a7 completionBlock:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v15;
    v46 = 2048;
    v47 = [v16 length];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to send 133 to destinations: %@ fromURI: %@ GUID: %@ messageData size: %ld", buf, 0x2Au);
  }

  v19 = v13;
  v33 = v13;
  v20 = objc_alloc_init(IDSSendParameters);
  v35 = [[IDSSendReason alloc] initWithReason:9 subreason:3 pathID:a7];
  v21 = [IDSSendReasonContainer createWithReason:v35];
  [v20 setSendReasonContainer:v21];

  v22 = +[NSDictionary dictionary];
  v23 = [v14 prefixedURI];
  [v23 _stripFZIDPrefix];
  v24 = v34 = v14;
  v25 = [IDSDestination destinationWithDestinations:v19];
  IDSGetUUIDData();
  v27 = v26 = v16;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10050201C;
  v37[3] = &unk_100BD8D78;
  v38 = v15;
  v39 = v17;
  v28 = v17;
  v29 = v15;
  LOWORD(v32) = 0;
  LOWORD(v31) = 256;
  LOWORD(v30) = 256;
  [IDSDAccount sendMessage:"sendMessage:params:bulkedPayload:fromID:toDestinations:useDictAsTopLevel:dataToEncrypt:encryptPayload:wantsResponse:expirationDate:command:wantsDeliveryStatus:wantsCertifiedDelivery:deliveryStatusContext:messageUUID:priority:localDelivery:disallowRefresh:willSendBlock:completionBlock:" params:v22 bulkedPayload:v20 fromID:0 toDestinations:v24 useDictAsTopLevel:v25 dataToEncrypt:1 encryptPayload:v26 wantsResponse:v30 expirationDate:0 command:&off_100C3C928 wantsDeliveryStatus:v31 wantsCertifiedDelivery:0 deliveryStatusContext:v27 messageUUID:300 priority:v32 localDelivery:0 disallowRefresh:v37 willSendBlock:? completionBlock:?];
}

+ (void)_splitDestinations:(id)a3 intoLocalDestinations:(id *)a4 remoteDestinations:(id *)a5 threadContext:(id)a6 sendParameters:(id)a7
{
  *&v101 = a5;
  *(&v101 + 1) = a4;
  v102 = a3;
  v9 = a6;
  v115 = a7;
  v107 = v9;
  v114 = [v9 dependentRegistrations];
  v122 = [v9 defaultPairedDependentRegistrations];
  v105 = [v9 appleIDPrimaryDependentRegistrations];
  v118 = [v9 serviceIdentifier];
  v104 = [v9 accountDescription];
  v106 = [v9 serviceAllowLocalDelivery];
  v103 = [v9 serviceAllowWiProxDelivery];
  if ([v9 serviceAllowLiveMessageDelivery])
  {
    v10 = [v9 serviceIdentifier];
    if (sub_1005DB1BC(v10))
    {
      v109 = 0;
    }

    else
    {
      v109 = sub_1005DB274() ^ 1;
    }
  }

  else
  {
    v109 = 0;
  }

  if (v101 == 0)
  {
    v92 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v145 = v102;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_ERROR, "No output arrays specified for _splitDestinations %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  else
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v145 = a1;
      v146 = 2112;
      v147 = v102;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ splitting destinations %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v93 = a1;
      v97 = v102;
      _IDSLogV();
    }

    v111 = objc_alloc_init(NSMutableDictionary);
    v112 = objc_alloc_init(NSMutableArray);
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v102;
    v121 = [obj countByEnumeratingWithState:&v140 objects:v153 count:16];
    if (v121)
    {
      v120 = *v141;
      v123 = IDSDefaultPairedDevice;
      v117 = IDSDevicePropertyPushToken;
      v116 = IDSDevicePropertyIdentities;
      v126 = IDSDevicePropertyPrivateDeviceData;
      v127 = IDSDevicePropertyIdentifierOverride;
      v125 = IDSPrivateDeviceDataUniqueID;
      v113 = IDSDeviceDefaultPairedDeviceUniqueID;
      v110 = IDSDevicePairedDeviceID;
      do
      {
        v124 = 0;
        do
        {
          if (*v141 != v120)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v140 + 1) + 8 * v124);
          v13 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v145 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - looking up device for dest %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v93 = v12;
            _IDSLogV();
          }

          v14 = [v12 isEqualToString:{v123, v93, v97, v99, v100}];
          if (v14)
          {
            v15 = v122;
            if (!v122)
            {
              v43 = [NSDictionary dictionaryWithObjectsAndKeys:@"bt-id", v113, v110, 0];
              [v111 setObject:v43 forKey:v123];

              goto LABEL_187;
            }

            v16 = v15;
            v17 = [v15 objectForKey:v117];
            v18 = [v16 objectForKey:v116];
            v19 = [v18 __imArrayByApplyingBlock:&stru_100BE15C0];

            _IDSPrefersPhoneNumbersForServiceIdentifier();
            v20 = _IDSCopyCallerID();
            v21 = [v20 _URIFromFZIDType:{objc_msgSend(v20, "_FZBestGuessFZIDType")}];
            v22 = _IDSCopyIDForTokenWithURI();

            v23 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v145 = v22;
              v146 = 2112;
              v147 = v122;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Resolved destination %@ from default paired device constant device %@.", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v94 = v22;
              v97 = v16;
              _IDSLogV();
            }
          }

          else
          {
            v22 = v12;
          }

          if ([v22 hasPrefix:{@"device:", v94}])
          {
            v24 = [v22 _stripFZIDPrefix];
            v25 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v145 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(Class) Destination device uniqueID: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v95 = v24;
              _IDSLogV();
            }

            v26 = v122;
            if (v122)
            {
              v27 = v26;
              v28 = [v26 _stringForKey:v127];
              v29 = [v27 objectForKey:v126];
              v30 = [v29 _stringForKey:v125];

              v31 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v145 = v28;
                v146 = 2112;
                v147 = v30;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "(Class) Default paired device uniqueID override %@   uniqueID %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v95 = v28;
                v97 = v30;
                _IDSLogV();
              }

              if (([v24 isEqualToIgnoringCase:{v28, v95}] & 1) == 0 && !objc_msgSend(v24, "isEqualToIgnoringCase:", v30) || objc_msgSend(v115, "sessionForceInternetInvitation"))
              {

                goto LABEL_48;
              }

              LOBYTE(v14) = 1;
LABEL_78:

              v44 = [v27 objectForKey:v117];
              v45 = [v27 objectForKey:v116];
              v46 = [v45 __imArrayByApplyingBlock:&stru_100BE15E0];

              _IDSPrefersPhoneNumbersForServiceIdentifier();
              v47 = _IDSCopyCallerID();
              v48 = [v47 _URIFromFZIDType:{objc_msgSend(v47, "_FZBestGuessFZIDType")}];
              v49 = _IDSCopyIDForTokenWithURI();

              v50 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v145 = v49;
                v146 = 2112;
                v147 = v27;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "(Class) Resolved destination %@ from default paired device constant device %@.", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v95 = v49;
                v97 = v27;
                _IDSLogV();
              }

              v28 = v27;
              v22 = v49;
            }

            else
            {
LABEL_48:
              v32 = v114;
              v136 = 0u;
              v137 = 0u;
              v138 = 0u;
              v139 = 0u;
              v28 = v32;
              v33 = [v28 countByEnumeratingWithState:&v136 objects:v152 count:16];
              if (v33)
              {
                v34 = *v137;
LABEL_50:
                v35 = 0;
                while (1)
                {
                  if (*v137 != v34)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v36 = *(*(&v136 + 1) + 8 * v35);
                  v37 = [v36 _stringForKey:{v127, v95}];
                  v38 = [v36 objectForKey:v126];
                  v39 = [v38 _stringForKey:v125];

                  v40 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v145 = v37;
                    v146 = 2112;
                    v147 = v39;
                    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "(Class) Device uniqueID override %@   uniqueID %@", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v96 = v37;
                    v97 = v39;
                    _IDSLogV();
                  }

                  if (([v37 isEqualToIgnoringCase:{v24, v96}] & 1) != 0 || objc_msgSend(v39, "isEqualToIgnoringCase:", v24))
                  {
                    break;
                  }

                  if (v33 == ++v35)
                  {
                    v33 = [v28 countByEnumeratingWithState:&v136 objects:v152 count:16];
                    if (v33)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_62;
                  }
                }

                v27 = v36;
                v41 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v145 = v27;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "(Class) Found matching device %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v95 = v27;
                  _IDSLogV();
                }

                if (v27)
                {
                  LOBYTE(v14) = 0;
                  goto LABEL_78;
                }
              }

              else
              {
LABEL_62:
              }

              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v145 = v24;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(Class) Didn't find matching device for uniqueID %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v95 = v24;
                _IDSLogV();
              }

              LOBYTE(v14) = 0;
            }
          }

          if (![v22 hasPrefix:{@"token:", v95}])
          {
            goto LABEL_172;
          }

          v135 = 0;
          v51 = [v22 _stripPotentialTokenURIWithToken:&v135];
          v52 = v135;
          v53 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v145 = v52;
            v146 = 2112;
            v147 = v51;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - token %@ and uri %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v93 = v52;
            v97 = v51;
            _IDSLogV();
          }

          if (!v52 || !v51)
          {
            v56 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v145 = v22;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Malformed destination %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              v93 = v22;
              _IDSLogTransport();
            }

            goto LABEL_186;
          }

          v134 = 0;
          if ([v51 localizedCaseInsensitiveContainsString:@"__localURI__"])
          {
            v54 = v113;
            LOBYTE(v14) = 1;
            v55 = v54;
          }

          else
          {
            v57 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = [v107 serviceIdentifier];
              v59 = IDSLoggableDescriptionForHandleOnService();
              v60 = [v107 serviceIdentifier];
              v61 = IDSLoggableDescriptionForTokenOnService();
              *buf = 138412546;
              v145 = v59;
              v146 = 2112;
              v147 = v61;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Finding device matching URI %@ and token %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v62 = [v107 serviceIdentifier];
              v63 = IDSLoggableDescriptionForHandleOnService();
              v64 = [v107 serviceIdentifier];
              IDSLoggableDescriptionForTokenOnService();
              v97 = v93 = v63;
              _IDSLogV();
            }

            v132 = 0;
            v133 = 0;
            [a1 dependentRegistration:v114 findDeviceUniqueID:&v133 btID:&v132 forURI:v51 token:v52 supportsLiveDelivery:{&v134, v93}];
            v55 = v133;
            v54 = v132;
            v65 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v145 = v55;
              v146 = 2112;
              v147 = v54;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Found deviceID %@ and btID %@ after first try", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v93 = v55;
              v97 = v54;
              _IDSLogV();
            }
          }

          if (v55)
          {
            v66 = v54;
          }

          else
          {
            v67 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v145 = v104;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Did not find deviceID using account %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v93 = v104;
              _IDSLogV();
            }

            v130 = v54;
            v131 = 0;
            [a1 dependentRegistration:v105 findDeviceUniqueID:&v131 btID:&v130 forURI:v51 token:v52 supportsLiveDelivery:{&v134, v93}];
            v55 = v131;
            v66 = v130;

            v68 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v145 = v55;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Found deviceID %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v93 = v55;
              _IDSLogV();
            }
          }

          v69 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v145 = v55;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - found device id %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v93 = v55;
            _IDSLogV();
          }

          v70 = _os_feature_enabled_impl();
          if (v55)
          {
            v71 = v70;
          }

          else
          {
            v71 = 0;
          }

          if (v71 == 1 && ([v115 liveMessageDelivery] & v109) == 1 && v134 == 1)
          {
            v72 = +[IDSUTunDeliveryController sharedInstance];
            v73 = [v72 copyPeerWithID:v55];

            if (([v73 isCloudConnected] & 1) == 0)
            {
              [v115 setLiveMessageDelivery:0];
              v74 = im_primary_queue();
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1005DB3B0;
              block[3] = &unk_100BD6ED0;
              v129 = v73;
              dispatch_async(v74, block);

              v75 = +[IDSUTunController sharedInstance];
              [v75 startGlobalLinkForDevice:v55];

              v76 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v145 = v55;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Using push instead of Live Delivery while GL warms for device id %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v93 = v55;
                _IDSLogV();
              }
            }
          }

          if (qword_100CBF2C0 != -1)
          {
            sub_10092C54C();
          }

          if (![v115 liveMessageDelivery])
          {
            goto LABEL_157;
          }

          v77 = v109;
          if (!v55)
          {
            v77 = 0;
          }

          if (v77 == 1 && v66)
          {
            if ((v134 & 1) == 0)
            {
              v78 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v145 = v55;
                v146 = 2112;
                v147 = v51;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Device does not support live delivery, falling back to push {deviceID: %@, strippedURI: %@}", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v93 = v55;
                v97 = v51;
                _IDSLogV();
              }

LABEL_165:
              if (byte_100CBF2B8 == 1)
              {
                v81 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "  Local IDS is disabled... not sending locally", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }
              }

LABEL_172:
              v82 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v145 = v22;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - no local device for URI %@, adding to remote", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v93 = v22;
                _IDSLogV();
              }

              if (v22)
              {
                v83 = v14;
              }

              else
              {
                v83 = 1;
              }

              if (v83)
              {
                v84 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "(Class) Dest became nil while trying to split destinations.", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  _IDSWarnV();
                  _IDSLogV();
                  _IDSLogTransport();
                }
              }

              else
              {
                [v112 addObject:v22];
              }

              goto LABEL_186;
            }
          }

          else
          {
LABEL_157:
            if (!v106 || (byte_100CBF2B8 & 1) != 0 || !v55 || !v66)
            {
              goto LABEL_165;
            }

            if ((([v55 isEqualToString:v113] | v103) & 1) == 0)
            {
              v80 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                v145 = v22;
                v146 = 2112;
                v147 = v55;
                v148 = 2112;
                v149 = v66;
                v150 = 2112;
                v151 = @"NO";
                _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Not considering %@ for local. DeviceID is %@  (btID: %@)  and we're not already scanning/advertising. Service allows wiprox? %@", buf, 0x2Au);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v99 = v66;
                v100 = @"NO";
                v93 = v22;
                v97 = v55;
                _IDSLogV();
              }

              goto LABEL_165;
            }
          }

          v79 = [NSDictionary dictionaryWithObjectsAndKeys:v66, @"bt-id", v55, v110, 0];
          [v111 setObject:v79 forKey:v22];

LABEL_186:
          v12 = v22;
LABEL_187:

          v124 = v124 + 1;
        }

        while (v124 != v121);
        v121 = [obj countByEnumeratingWithState:&v140 objects:v153 count:16];
      }

      while (v121);
    }

    v85 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      v86 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v111 count]);
      v87 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v112 count]);
      *buf = 138412546;
      v145 = v86;
      v146 = 2112;
      v147 = v87;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEBUG, "(Class) Split out local destinations (%@) remote destinations (%@)", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v88 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v111 count]);
      v98 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v112 count]);
      _IDSLogV();
    }

    if (*(&v101 + 1))
    {
      v89 = v111;
      **(&v101 + 1) = v111;
    }

    v90 = v112;
    if (v101)
    {
      v91 = v112;
      v90 = v112;
      *v101 = v112;
    }
  }
}

+ (void)_sendLocallyWithSendParameters:(id)a3 service:(id)a4 uriToLocalDestination:(id)a5 data:(id)a6 protobuf:(id)a7 threadContext:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10
{
  v15 = a3;
  v117 = a4;
  v120 = a5;
  v123 = a6;
  v119 = a7;
  v16 = a8;
  v116 = a9;
  v107 = a10;
  v124 = v16;
  v17 = [v16 subService];
  if ([v17 length])
  {
    [v124 subService];
  }

  else
  {
    [v124 servicePushTopic];
  }
  v18 = ;

  v19 = [v15 resourcePath];

  v20 = [v15 dataToEncrypt];
  v21 = [v20 length];
  v22 = [v123 length];
  v23 = [v119 data];
  v24 = [v23 length];

  if (v19)
  {
    [v15 setCommand:&off_100C3CD48];
    v25 = 0;
  }

  else
  {
    v25 = &v21[v22 + v24];
  }

  v121 = v18;
  v26 = [v15 metricReportIdentifier];

  v118 = v121;
  if (v26)
  {
    v27 = [NSString alloc];
    v28 = [v15 metricReportIdentifier];
    v118 = [v27 initWithFormat:@"%@-%@", v121, v28];
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v15 messageUUID];
    v31 = JWUUIDPushObjectToString();
    *buf = 138412546;
    *&buf[4] = v31;
    *&buf[12] = 2112;
    *&buf[14] = v121;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "OUTGOING-LOCAL_SEND:%@ SERVICE:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v32 = [v15 messageUUID];
    v80 = JWUUIDPushObjectToString();
    v83 = v121;
    _IDSLogV();
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v15 messageUUID];
    *&buf[12] = 2048;
    v35 = @"YES";
    *buf = 138413314;
    *&buf[4] = v34;
    if (!v19)
    {
      v35 = @"NO";
    }

    *&buf[14] = v25;
    *&buf[22] = 2112;
    v155 = v35;
    *v156 = 2112;
    *&v156[2] = v121;
    *&v156[10] = 2112;
    *&v156[12] = v120;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Sending message ID (%@) with data length %lu (resource: %@)  [Topic: %@  Local Device IDs: %@]", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v36 = v19 == 0;
    v37 = [v15 messageUUID];
    v38 = v37;
    v39 = @"YES";
    if (v36)
    {
      v39 = @"NO";
    }

    v87 = v121;
    v90 = v120;
    v83 = v25;
    v85 = v39;
    v80 = v37;
    _IDSLogV();
  }

  if (![v124 accountType] || (_IDSCopyMyPhoneNumbers(), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "fromID"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "_stripFZIDPrefix"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v40, "containsObject:", v42), v42, v41, v40, v43))
  {
    ct_green_tea_logger_create_static();
    v44 = getCTGreenTeaOsLogHandle();
    v45 = v44;
    if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
    }
  }

  v46 = [v120 allValues];
  v47 = [v46 __imArrayByApplyingBlock:&stru_100BE1620];
  v105 = [NSMutableSet setWithArray:v47];

  v104 = +[NSMutableSet set];
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v145[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v155 = sub_10000AA74;
  *v156 = sub_10000BCAC;
  *&v156[8] = 0;
  v48 = [v124 serviceAdHocType];
  v49 = v48 == 5 || v48 == 2;
  if (v48 == 2 || v48 == 5 || ([v15 localDelivery] & 1) != 0 || objc_msgSend(v15, "requireLocalWiFi"))
  {
    v50 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      if ([v15 localDelivery])
      {
        v51 = @"YES";
      }

      else
      {
        v51 = @"NO";
      }

      if (v49)
      {
        v52 = @"YES";
      }

      else
      {
        v52 = @"NO";
      }

      v53 = [v15 requireLocalWiFi];
      v54 = [v15 messageUUID];
      v55 = v54;
      if (v53)
      {
        v56 = @"YES";
      }

      else
      {
        v56 = @"NO";
      }

      *v146 = 138413058;
      v147 = v51;
      v148 = 2112;
      v149 = v52;
      v150 = 2112;
      v151 = v56;
      v152 = 2112;
      v153 = v54;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback forcedLocal %@  localType %@ requireLocalWiFi %@ message %@", v146, 0x2Au);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || (![v15 localDelivery] ? (v57 = @"NO") : (v57 = @"YES"), !v49 ? (v58 = @"NO") : (v58 = @"YES"), (v59 = objc_msgSend(v15, "requireLocalWiFi"), objc_msgSend(v15, "messageUUID"), v60 = objc_claimAutoreleasedReturnValue(), v61 = v60, !v59) ? (v62 = @"NO") : (v62 = @"YES"), v86 = v62, v88 = v60, v81 = v57, v84 = v58, _IDSLogTransport(), v61, !_IDSShouldLog()))
    {
      v68 = 0;
      goto LABEL_67;
    }

    if ([v15 localDelivery])
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    v64 = [v15 requireLocalWiFi];
    v65 = [v15 messageUUID];
    v66 = v65;
    if (v64)
    {
      v67 = @"YES";
    }

    else
    {
      v67 = @"NO";
    }

    v86 = v67;
    v88 = v65;
    v81 = v63;
    v84 = v58;
    _IDSLogV();
    v68 = 0;
  }

  else
  {
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_1005DC264;
    v133[3] = &unk_100BE1670;
    v134 = v15;
    v141 = v107;
    v142 = buf;
    v135 = v104;
    v136 = v105;
    v143 = v145;
    v137 = v118;
    v144 = v25;
    v138 = v117;
    v139 = v123;
    v140 = v119;
    v68 = objc_retainBlock(v133);

    v66 = v134;
  }

LABEL_67:
  v69 = [v15 dataToEncrypt];

  if (v69)
  {
    if (v123)
    {
      v70 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *v146 = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Attempt to send both DataToEncrypt and Data, dropping data", v146, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    v71 = [v15 dataToEncrypt];

    v123 = v71;
  }

  v115 = +[IDSUTunDeliveryController sharedInstance];
  v114 = [v15 resourcePath];
  v113 = [v15 resourceMetadata];
  v103 = [v15 priority];
  v102 = [v124 dataProtectionClass];
  v101 = [v15 nonWaking];
  v100 = [v15 nonCloudWaking];
  v99 = [v15 requireBluetooth];
  v98 = [v15 requireLocalWiFi];
  v112 = [v15 queueOneIdentifier];
  v111 = [v15 expirationDate];
  v97 = [v15 enforceRemoteTimeouts];
  v96 = [v15 expectsPeerResponse];
  v95 = [v15 wantsAppAck];
  v94 = [v15 compressPayload];
  v93 = [v15 compressed];
  v110 = [v15 peerResponseIdentifier];
  v109 = [v15 identifier];
  v72 = [v15 command];
  v73 = [v15 fromID];
  v74 = [v15 localDestinationDeviceUUID];
  v75 = [v15 bypassDuet];
  v76 = [v15 duetIdentifiersOverride];
  v77 = [v15 messageType];
  v78 = [v77 longLongValue];
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = sub_1005DD2A4;
  v125[3] = &unk_100BE1698;
  v92 = v15;
  v126 = v92;
  v79 = v121;
  v127 = v79;
  v106 = v105;
  v128 = v106;
  v122 = v104;
  v129 = v122;
  v131 = buf;
  v132 = v145;
  v108 = v107;
  v130 = v108;
  LOBYTE(v91) = v75;
  BYTE4(v89) = v93;
  BYTE3(v89) = v94;
  BYTE2(v89) = v95;
  BYTE1(v89) = v96;
  LOBYTE(v89) = v97;
  HIBYTE(v82) = v98;
  BYTE6(v82) = v99;
  BYTE5(v82) = v100;
  BYTE4(v82) = v101;
  LODWORD(v82) = v102;
  [v115 sendData:v123 service:v117 protobuf:v119 resourcePath:v114 resourceMetadata:v113 priority:v103 dataProtectionClass:v82 nonWaking:v112 nonCloudWaking:v111 requireBluetooth:v89 requireLocalWiFi:v110 queueOneIdentifier:v109 expirationDate:v79 enforceRemoteTimeouts:v118 expectsPeerResponse:v72 wantsAppAck:v73 compressPayload:v120 compressed:v74 peerResponseIdentifier:v91 messageID:v76 topic:v78 awdTopic:v68 command:v116 fromID:v125 uriToDeviceID:? localDeviceDestinationDeviceUUID:? bypassDuet:? duetIdentifiersOverride:? messageType:? fallbackBlock:? progressBlock:? completionBlock:?];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v145, 8);
}

+ (void)sendMessageWithSendParameters:(id)a3 service:(id)a4 threadContext:(id)a5 willSendBlock:(id)a6 progressBlock:(id)a7 completionBlock:(id)a8
{
  v13 = a3;
  v203 = a4;
  v14 = a5;
  v204 = a6;
  v201 = a7;
  v214 = a8;
  v199 = [v14 accountType];
  v216 = v14;
  v215 = [v14 serviceIdentifier];
  v202 = [v14 accountDisplayName];
  v15 = [v14 dependentRegistrations];
  v16 = [v14 appleIDPrimaryDependentRegistrations];
  v17 = [v14 primaryRegistrationDSHandle];
  v18 = [v14 primaryRegistrationURIs];
  [v14 serviceIsDSBased];
  v206 = [v14 aliasStrings];
  v209 = [v14 servicePushTopic];
  v19 = [v14 shouldIncludeDefaultDevice];
  v20 = [v14 serviceWantsReflectedSend];
  v194 = [v14 serviceAllowProxyDelivery];
  v21 = [v14 serviceUseiMessageCallerID];
  v22 = [v13 command];
  if (([v22 integerValue] != 130) & v20) != 1 || (objc_msgSend(v13, "isProxiedOutgoingMessage"))
  {

LABEL_4:
    v195 = 0;
    goto LABEL_5;
  }

  if (!v19)
  {
    goto LABEL_4;
  }

  v30 = [v13 destinations];
  v31 = [v30 destinationURIs];
  v32 = [v31 mutableCopy];

  v33 = IDSDefaultPairedDevice;
  [v32 addObject:v33];
  v34 = [IDSDestination destinationWithStrings:v32];
  [v13 setDestinations:v34];

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [v13 destinations];
    *buf = 138412290;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Adding local device as a destination for this message, Destinations For This Message Are Now %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v155 = [v13 destinations];
    _IDSLogV();
  }

  v195 = 1;
LABEL_5:
  if (v199 == 2)
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending via account that's type Local -- forcing local delivery.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    [v13 setLocalDelivery:{1, v155}];
  }

  v24 = [v13 destinations];
  v25 = [v24 destinationURIs];
  v26 = [v25 allObjects];
  v258[0] = _NSConcreteStackBlock;
  v258[1] = 3221225472;
  v258[2] = sub_1005DFAC4;
  v258[3] = &unk_100BE16C0;
  v263 = a1;
  v196 = v15;
  v259 = v196;
  v197 = v16;
  v260 = v197;
  v205 = v17;
  v261 = v205;
  v198 = v18;
  v262 = v198;
  v211 = [v26 __imArrayByApplyingBlock:v258];

  if (v21)
  {
    v27 = [v13 originalfromID];
    v28 = [v27 length] == 0;

    if (v28)
    {
      v37 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v202;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Service would like to use iMessage callerID for messages, Attempting to use %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v156 = v202;
        _IDSLogV();
      }

      v38 = [v202 _stripFZIDPrefix];
      v39 = [v205 _stripFZIDPrefix];
      v40 = [v216 pseudonyms];
      v41 = _IDSCopyCallerIDWithPseudonyms();
      [v13 setFromID:v41];
    }

    else
    {
      v29 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Service would like to use iMessage callerID for messages however they specified their own FromID, so we will attempt to use that", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v42 = [v13 fromID];
  v43 = v42 == 0;

  if (v43)
  {
    v44 = [v205 _stripFZIDPrefix];
    _IDSPrefersPhoneNumbersForServiceIdentifier();
    v45 = _IDSCopyCallerID();
    [v13 setFromID:v45];
  }

  v46 = +[IDSPeerIDManager sharedInstance];
  v47 = [v211 firstObject];
  v48 = [IDSURI URIWithPrefixedURI:v47 withServiceLoggingHint:v215];
  v49 = [v13 fromID];
  v50 = [v49 _bestGuessURI];
  v51 = [IDSURI URIWithPrefixedURI:v50 withServiceLoggingHint:v215];
  v210 = [v46 senderCorrelationIdentifierForURI:v48 fromURI:v51 service:v215];

  if (v210)
  {
    [v13 setDestinationCorrelationIdentifier:v210];
  }

  v52 = [v13 data];
  v53 = [v13 protobuf];

  if (v53)
  {
    v54 = [IDSProtobuf alloc];
    v55 = [v13 protobuf];
    v213 = [v54 initWithDictionary:v55];
  }

  else
  {
    v213 = 0;
  }

  v56 = [v13 message];

  if (v56)
  {
    v57 = [v13 message];
    v58 = [v57 objectForKey:IDSMessageResourceTransferURLKey];
    if (v58)
    {

      v59 = [v57 objectForKeyedSubscript:IDSMessageResourceTransferMetadataKey];
      v60 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v58;
        *&buf[12] = 2112;
        *&buf[14] = v59;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Sending Resource at path %@ with metadata %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v156 = v58;
        v158 = v59;
        _IDSLogV();
      }

      [v13 setResourcePath:{v58, v156, v158}];
      [v13 setResourceMetadata:v59];
      v52 = 0;
    }

    else
    {
      v59 = JWEncodeDictionary();

      v52 = v59;
    }
  }

  if (!v52)
  {
    v65 = v213;
    if (!v213)
    {
      v208 = 0;
      goto LABEL_84;
    }

    v66 = [v213 data];
    v67 = [v66 length];

    if ([v13 compressPayload])
    {
      v68 = [v213 data];
      v208 = [v68 _FTCopyOptionallyGzippedData];

      v69 = [v208 length];
      if (v67 > v69)
      {
        v70 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *&buf[4] = v67;
          *&buf[8] = 1024;
          *&buf[10] = v69;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Compressed protobuf data from: %u  to: %u", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v156 = v67;
          v158 = v69;
          _IDSLogV();
        }

        v71 = [v213 data];
        [v213 setUncompressedData:v71];

        [v213 setData:v208];
        v52 = 0;
        v64 = 1;
        goto LABEL_83;
      }
    }

    else
    {
      v69 = 0;
      v208 = 0;
    }

    v73 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v67;
      *&buf[8] = 1024;
      *&buf[10] = v69;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "Use uncompressed protobuf data (original: %u compressed: %u)", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v156 = v67;
      v158 = v69;
      _IDSLogV();
    }

    v64 = 0;
    v52 = 0;
    goto LABEL_83;
  }

  v61 = [v52 length];
  if (![v13 compressPayload])
  {
    v62 = 0;
    v208 = 0;
    goto LABEL_69;
  }

  v208 = [v52 _FTCopyOptionallyGzippedData];
  v62 = [v208 length];
  if (v61 <= v62)
  {
LABEL_69:
    v72 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v61;
      *&buf[8] = 1024;
      *&buf[10] = v62;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "Use uncompressed message data (original: %u compressed: %u)", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v156 = v61;
      v158 = v62;
      _IDSLogV();
    }

    v64 = 0;
    goto LABEL_83;
  }

  v63 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = v61;
    *&buf[8] = 1024;
    *&buf[10] = v62;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Compressed message data from: %u  to: %u", buf, 0xEu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v156 = v61;
    v158 = v62;
    _IDSLogV();
  }

  v208 = v208;

  v64 = 1;
  v52 = v208;
LABEL_83:
  [v13 setCompressed:{v64, v156, v158}];
  v65 = v52;
LABEL_84:
  v200 = v65;
  v74 = [v65 length];
  v75 = [v213 data];
  v76 = [v75 length];

  v77 = [v13 message];

  v212 = v74 + v76;
  if (v77)
  {
    v78 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      v185 = [v13 bulkedPayload];
      v188 = [v13 fromID];
      v191 = [v13 destinations];
      v79 = @"YES";
      if ([v13 useDictAsTopLevel])
      {
        v80 = @"YES";
      }

      else
      {
        v80 = @"NO";
      }

      v181 = v80;
      if ([v13 encryptPayload])
      {
        v81 = @"YES";
      }

      else
      {
        v81 = @"NO";
      }

      v177 = v81;
      if ([v13 wantsResponse])
      {
        v82 = @"YES";
      }

      else
      {
        v82 = @"NO";
      }

      v175 = v82;
      [v13 timeout];
      v84 = v83;
      v85 = [v13 command];
      if ([v13 wantsDeliveryStatus])
      {
        v86 = @"YES";
      }

      else
      {
        v86 = @"NO";
      }

      if ([v13 wantsCertifiedDelivery])
      {
        v87 = @"YES";
      }

      else
      {
        v87 = @"NO";
      }

      v88 = [v13 deliveryStatusContext];
      v89 = [v13 messageUUID];
      if ([v13 priority] == 300)
      {
        v90 = @"URGENT";
      }

      else if ([v13 priority] == 200)
      {
        v90 = @"Default";
      }

      else
      {
        v90 = @"Sync";
      }

      if (![v13 localDelivery])
      {
        v79 = @"NO";
      }

      v104 = objc_retainBlock(v214);
      *buf = 138415874;
      *&buf[4] = v185;
      *&buf[12] = 2112;
      *&buf[14] = v188;
      *&buf[22] = 2112;
      v265 = v191;
      *v266 = 2112;
      *&v266[2] = v181;
      *&v266[10] = 2112;
      *&v266[12] = v177;
      v267 = 2112;
      v268 = v175;
      v269 = 2048;
      v270 = v84;
      v271 = 2112;
      v272 = v85;
      v273 = 2112;
      v274 = v86;
      v275 = 2112;
      v276 = v87;
      v277 = 2112;
      v278 = v88;
      v279 = 2112;
      v280 = v89;
      v281 = 2112;
      v282 = v90;
      v283 = 2112;
      v284 = v79;
      v285 = 2048;
      v286 = v104;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "sendMessage <<Redacted>>  bulkedPayload %@ fromID %@   toDestinations %@   useDictAsTopLevel %@  encryptPayload %@  wantsResponse %@  timeout %f  command %@ wantsDeliveryStatus %@ wantsCertifiedDelivery %@ deliveryStatusContext %@ messageUUID %@  priority %@ localDelivery %@  completionBlock %p", buf, 0x98u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v193 = [v13 bulkedPayload];
      v187 = [v13 fromID];
      v190 = [v13 destinations];
      v105 = @"YES";
      if ([v13 useDictAsTopLevel])
      {
        v106 = @"YES";
      }

      else
      {
        v106 = @"NO";
      }

      v183 = v106;
      if ([v13 encryptPayload])
      {
        v107 = @"YES";
      }

      else
      {
        v107 = @"NO";
      }

      v179 = v107;
      if ([v13 wantsResponse])
      {
        v108 = @"YES";
      }

      else
      {
        v108 = @"NO";
      }

      [v13 timeout];
      v110 = v109;
      v111 = [v13 command];
      if ([v13 wantsDeliveryStatus])
      {
        v112 = @"YES";
      }

      else
      {
        v112 = @"NO";
      }

      if ([v13 wantsCertifiedDelivery])
      {
        v113 = @"YES";
      }

      else
      {
        v113 = @"NO";
      }

      v114 = [v13 deliveryStatusContext];
      v115 = [v13 messageUUID];
      if ([v13 priority] == 300)
      {
        v116 = @"URGENT";
      }

      else if ([v13 priority] == 200)
      {
        v116 = @"Default";
      }

      else
      {
        v116 = @"Sync";
      }

      if (![v13 localDelivery])
      {
        v105 = @"NO";
      }

      v127 = objc_retainBlock(v214);
      v172 = v105;
      v173 = v127;
      v170 = v115;
      v171 = v116;
      v168 = v113;
      v169 = v114;
      v166 = v111;
      v167 = v112;
      v165 = v110;
      v163 = v179;
      v164 = v108;
      v160 = v190;
      v162 = v183;
      v156 = v193;
      v158 = v187;
      _IDSLogV();
LABEL_183:
    }
  }

  else
  {
    v91 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v186 = [v13 bulkedPayload];
      v189 = [v13 fromID];
      v192 = [v13 destinations];
      v92 = @"YES";
      if ([v13 useDictAsTopLevel])
      {
        v93 = @"YES";
      }

      else
      {
        v93 = @"NO";
      }

      v182 = v93;
      if ([v13 encryptPayload])
      {
        v94 = @"YES";
      }

      else
      {
        v94 = @"NO";
      }

      v178 = v94;
      if ([v13 wantsResponse])
      {
        v95 = @"YES";
      }

      else
      {
        v95 = @"NO";
      }

      v176 = v95;
      [v13 timeout];
      v97 = v96;
      v98 = [v13 command];
      if ([v13 wantsDeliveryStatus])
      {
        v99 = @"YES";
      }

      else
      {
        v99 = @"NO";
      }

      if ([v13 wantsCertifiedDelivery])
      {
        v100 = @"YES";
      }

      else
      {
        v100 = @"NO";
      }

      v101 = [v13 deliveryStatusContext];
      v102 = [v13 messageUUID];
      if ([v13 priority] == 300)
      {
        v103 = @"URGENT";
      }

      else if ([v13 priority] == 200)
      {
        v103 = @"Default";
      }

      else
      {
        v103 = @"Sync";
      }

      if (![v13 localDelivery])
      {
        v92 = @"NO";
      }

      v117 = objc_retainBlock(v214);
      *buf = 134221826;
      *&buf[4] = v212;
      *&buf[12] = 2112;
      *&buf[14] = v186;
      *&buf[22] = 2112;
      v265 = v189;
      *v266 = 2112;
      *&v266[2] = v192;
      *&v266[10] = 2112;
      *&v266[12] = v182;
      v267 = 2112;
      v268 = v178;
      v269 = 2112;
      v270 = v176;
      v271 = 2048;
      v272 = v97;
      v273 = 2112;
      v274 = v98;
      v275 = 2112;
      v276 = v99;
      v277 = 2112;
      v278 = v100;
      v279 = 2112;
      v280 = v101;
      v281 = 2112;
      v282 = v102;
      v283 = 2112;
      v284 = v103;
      v285 = 2112;
      v286 = v92;
      v287 = 2048;
      v288 = v117;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "sendMessage of size %lu  bulkedPayload %@ fromID %@   toDestinations %@   useDictAsTopLevel %@  encryptPayload %@  wantsResponse %@  timeout %f  command %@ wantsDeliveryStatus %@ wantsCertifiedDelivery %@ deliveryStatusContext %@ messageUUID %@  priority %@ localDelivery %@  completionBlock %p", buf, 0xA2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v193 = [v13 bulkedPayload];
      v187 = [v13 fromID];
      v190 = [v13 destinations];
      v118 = @"YES";
      if ([v13 useDictAsTopLevel])
      {
        v119 = @"YES";
      }

      else
      {
        v119 = @"NO";
      }

      v184 = v119;
      if ([v13 encryptPayload])
      {
        v120 = @"YES";
      }

      else
      {
        v120 = @"NO";
      }

      v180 = v120;
      if ([v13 wantsResponse])
      {
        v121 = @"YES";
      }

      else
      {
        v121 = @"NO";
      }

      [v13 timeout];
      v123 = v122;
      v111 = [v13 command];
      if ([v13 wantsDeliveryStatus])
      {
        v124 = @"YES";
      }

      else
      {
        v124 = @"NO";
      }

      if ([v13 wantsCertifiedDelivery])
      {
        v125 = @"YES";
      }

      else
      {
        v125 = @"NO";
      }

      v114 = [v13 deliveryStatusContext];
      v115 = [v13 messageUUID];
      if ([v13 priority] == 300)
      {
        v126 = @"URGENT";
      }

      else if ([v13 priority] == 200)
      {
        v126 = @"Default";
      }

      else
      {
        v126 = @"Sync";
      }

      if (![v13 localDelivery])
      {
        v118 = @"NO";
      }

      v127 = objc_retainBlock(v214);
      v173 = v118;
      v174 = v127;
      v171 = v115;
      v172 = v126;
      v169 = v125;
      v170 = v114;
      v167 = v111;
      v168 = v124;
      v166 = v123;
      v164 = v180;
      v165 = v121;
      v162 = v190;
      v163 = v184;
      v158 = v193;
      v160 = v187;
      v156 = v212;
      _IDSLogV();
      goto LABEL_183;
    }
  }

  v128 = [v13 bypassSizeCheck];
  if (v212 <= 0x500000)
  {
    v129 = 1;
  }

  else
  {
    v129 = v128;
  }

  if ((v129 & 1) == 0)
  {
    v139 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = v212;
      *&buf[12] = 2112;
      *&buf[14] = v209;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    if (v214)
    {
      goto LABEL_205;
    }

    goto LABEL_251;
  }

  if (([v13 bypassSizeCheck] & 1) != 0 || objc_msgSend(v13, "priority") != 300 || v212 <= 0x100000)
  {
    v257 = 0;
    v256 = 0;
    [a1 _splitDestinations:v211 intoLocalDestinations:&v257 remoteDestinations:&v256 threadContext:v216 sendParameters:v13];
    v130 = v257;
    v131 = v256;
    v132 = [v130 allKeys];
    v254[0] = _NSConcreteStackBlock;
    v254[1] = 3221225472;
    v254[2] = sub_1005DFE50;
    v254[3] = &unk_100BD7530;
    v133 = v203;
    v255 = v133;
    v134 = [v132 __imArrayByApplyingBlock:v254];

    v135 = [v13 resourcePath];
    if (v135)
    {
      v136 = [v131 count] == 0;

      if (!v136)
      {
        v137 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Attempt to send a file transfer over IDS to a remote destination over File Transfer API. Setting Command", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          _IDSLogV();
        }

        [v13 setCommand:&off_100C3CD48];
      }
    }

    if ([v13 localDelivery] && !((objc_msgSend(v131, "count") == 0) | v194 & 1))
    {
      v142 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v211;
        *&buf[22] = 2112;
        v265 = v131;
        _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "Account %@ was asked to send to %@ with forced local delivery but there are unaddressible remote destinations %@ - failing message.", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v159 = v211;
        v161 = v131;
        v157 = a1;
        _IDSLogTransport();
      }

      v138 = 0;
    }

    else
    {
      v138 = 1;
    }

    if ([v131 count] || objc_msgSend(v130, "count"))
    {
      if (v138)
      {
        v253[0] = 0;
        v253[1] = v253;
        v253[2] = 0x2020000000;
        v253[3] = 0;
        v249 = 0;
        v250 = &v249;
        v251 = 0x2020000000;
        v252 = [v130 count] == 0;
        v247[0] = 0;
        v247[1] = v247;
        v247[2] = 0x2020000000;
        v143 = v204;
        v248 = [v131 count] == 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v265 = sub_10000AA74;
        *v266 = sub_10000BCAC;
        *&v266[8] = 0;
        if (v195)
        {
          v144 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *v246 = 0;
            _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Setting localLastCall to YES for this proxied outgoing message so that the completion does not rely on the local reflection", v246, 2u);
          }

          v143 = v204;
          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          *(v250 + 24) = 1;
        }

        if ([v130 count])
        {
          v145 = [v13 copy];
          v146 = v145;
          if (v195)
          {
            [v145 setTimeout:IDSMaxMessageTimeout];
          }

          [v146 setFinalDestinationURIs:v134];
          v238[0] = _NSConcreteStackBlock;
          v238[1] = 3221225472;
          v238[2] = sub_1005DFECC;
          v238[3] = &unk_100BE16E8;
          v245 = v195;
          v241 = &v249;
          v242 = buf;
          v243 = v253;
          v239 = v13;
          v240 = v214;
          v244 = v247;
          [IDSDAccount _sendLocallyWithSendParameters:v146 service:v133 uriToLocalDestination:v130 data:v200 protobuf:v213 threadContext:v216 progressBlock:v201 completionBlock:v238];

          v143 = v204;
        }

        if (v143)
        {
          v234[0] = _NSConcreteStackBlock;
          v234[1] = 3221225472;
          v234[2] = sub_1005E0218;
          v234[3] = &unk_100BE1710;
          v235 = v130;
          v236 = v134;
          v237 = v143;
          v147 = objc_retainBlock(v234);
        }

        else
        {
          v147 = 0;
        }

        if ([v131 count])
        {
          v217[0] = _NSConcreteStackBlock;
          v217[1] = 3221225472;
          v217[2] = sub_1005E0348;
          v217[3] = &unk_100BE17E0;
          v232 = v199;
          v233 = v194;
          v218 = v13;
          v231 = a1;
          v219 = v133;
          v220 = v216;
          v224 = v201;
          v225 = v214;
          v221 = v131;
          v222 = v200;
          v223 = v213;
          v226 = v147;
          v227 = v247;
          v228 = buf;
          v229 = v253;
          v230 = &v249;
          v148 = objc_retainBlock(v217);
          v149 = im_primary_queue();
          dispatch_async(v149, v148);
        }

        else
        {
          v150 = [v130 count];
          if (v204 && v150)
          {
            (*(v204 + 2))(v204, v134, 0, 0);
          }
        }

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(v247, 8);
        _Block_object_dispose(&v249, 8);
        _Block_object_dispose(v253, 8);
LABEL_249:

        goto LABEL_250;
      }
    }

    else
    {
      v151 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v211;
        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_ERROR, "Account %@ was asked to send to %@ but we were unable to resolve any actual destinations - failing message.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    v152 = [NSError alloc];
    v153 = [v152 initWithDomain:IDSSendErrorDomain code:1 userInfo:0];
    if (v214)
    {
      v154 = [[IDSDeliveryContext alloc] initWithResponseCode:1 error:v153 lastCall:1];
      (*(v214 + 2))(v214, v154);
    }

    goto LABEL_249;
  }

  v141 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    *&buf[4] = v212;
    *&buf[12] = 2112;
    *&buf[14] = v209;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send as urgent", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  if (v214)
  {
LABEL_205:
    v140 = [NSError alloc];
    v130 = [v140 initWithDomain:IDSSendErrorDomain code:8 userInfo:0];
    v131 = [[IDSDeliveryContext alloc] initWithResponseCode:8 error:v130 lastCall:1];
    (*(v214 + 2))(v214, v131);
LABEL_250:
  }

LABEL_251:
}

- (int64_t)maxRemoteMessagingPayloadSize
{
  v3 = +[IDSDeliveryController sharedInstance];
  v4 = [(IDSDAccount *)self service];
  v5 = [v3 effectiveMaxPayloadSizeIfCanUseLargePayload:{objc_msgSend(v4, "canUseLargePayload")}];

  return v5;
}

- (void)_sendMessageWithSendParametersOnMainThread:(id)a3 filteredDestinations:(id)a4 data:(id)a5 compressedData:(id)a6 protobufToSend:(id)a7 willSendBlock:(id)a8 completionBlock:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v56 = a8;
  v57 = a9;
  v55 = v18;
  if ([(IDSDAccount *)self shouldProcessOutgoingMessage:v15 filteredDestinations:v16 data:v17 compressedData:v18 protobufToSend:v19])
  {
    v20 = [v15 command];
    if ([v20 integerValue] != 130)
    {
      v21 = [v15 command];
      if ([v21 integerValue] != 120)
      {
        v22 = [(IDSDAccount *)self service];
        if ([v22 wantsLocalReflectedSend] && !objc_msgSend(v15, "isProxiedOutgoingMessage"))
        {
          v23 = [(IDSDAccount *)self shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:v15];

          if (v23)
          {
            v41 = [v16 mutableCopy];
            v42 = IDSDefaultPairedDevice;
            [v41 addObject:v42];
            v43 = v41;

            v44 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *v90 = 138412290;
              *&v90[4] = v43;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Adding local device as a destination for this message, Destinations For This Message Are Now %@", v90, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v49 = v43;
              _IDSLogV();
            }

            v23 = 1;
            v16 = v43;
          }

LABEL_9:
          v88 = 0;
          v89 = 0;
          v87 = 0;
          [(IDSDAccount *)self _splitDestinations:v16 intoLocalDestinations:&v89 remoteDestinations:&v88 rapportDestinations:&v87 sendParameters:v15, v49];
          v24 = v89;
          v25 = v88;
          v54 = v87;
          v26 = [v24 allKeys];
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_1005E1BAC;
          v86[3] = &unk_100BD7530;
          v86[4] = self;
          v53 = [v26 __imArrayByApplyingBlock:v86];

          if ([v15 localDelivery] && objc_msgSend(v25, "count") && (-[IDSDAccount service](self, "service"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "shouldAllowProxyDelivery"), v27, (v28 & 1) == 0))
          {
            v40 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *v90 = 138412802;
              *&v90[4] = self;
              *&v90[12] = 2112;
              *&v90[14] = v16;
              *&v90[22] = 2112;
              v91 = v25;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Account %@ was asked to send to %@ with forced local delivery but there are unaddressible remote destinations %@ - failing message.", v90, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              v51 = v16;
              v52 = v25;
              v50 = self;
              _IDSLogTransport();
            }

            v29 = 0;
          }

          else
          {
            v29 = 1;
          }

          if ([v25 count] || objc_msgSend(v24, "count") || objc_msgSend(v54, "count"))
          {
            if (v29)
            {
              v85[0] = 0;
              v85[1] = v85;
              v85[2] = 0x2020000000;
              v85[3] = 0;
              v81 = 0;
              v82 = &v81;
              v83 = 0x2020000000;
              v84 = [v24 count] == 0;
              v79[0] = 0;
              v79[1] = v79;
              v79[2] = 0x2020000000;
              v80 = [v25 count] == 0;
              *v90 = 0;
              *&v90[8] = v90;
              *&v90[16] = 0x3032000000;
              v91 = sub_10000AA74;
              v92 = sub_10000BCAC;
              v93 = 0;
              if (v23)
              {
                v30 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting localLastCall to YES for this proxied outgoing message so that the completion does not rely on the local reflection", buf, 2u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  _IDSLogV();
                }

                *(v82 + 24) = 1;
              }

              if ([v24 count])
              {
                v31 = [v15 copy];
                v32 = v31;
                if (v23)
                {
                  [v31 setTimeout:IDSMaxMessageTimeout];
                }

                [v32 setFinalDestinationURIs:v53];
                v70[0] = _NSConcreteStackBlock;
                v70[1] = 3221225472;
                v70[2] = sub_1005E1C38;
                v70[3] = &unk_100BE1808;
                v76 = v23;
                v77 = [v25 count] == 0;
                v73 = v90;
                v74 = v85;
                v72 = &v81;
                v70[4] = self;
                v71 = v57;
                v75 = v79;
                [(IDSDAccount *)self _sendLocallyWithSendParameters:v32 uriToLocalDestination:v24 data:v17 protobuf:v19 completionBlock:v70];
              }

              if ([v54 count])
              {
                v33 = [v54 __imArrayByApplyingBlock:&stru_100BE1828];
                if (v56)
                {
                  (*(v56 + 2))(v56, v33, 0, 0);
                }

                v34 = [v15 copy];
                [v34 setFinalDestinationURIs:v33];
                v68[0] = _NSConcreteStackBlock;
                v68[1] = 3221225472;
                v68[2] = sub_1005E1FA8;
                v68[3] = &unk_100BDB638;
                v69 = v57;
                [(IDSDAccount *)self _rapportSendWithSendParameters:v34 completionBlock:v68];
              }

              v35 = v56;
              if (v56)
              {
                v64[0] = _NSConcreteStackBlock;
                v64[1] = 3221225472;
                v64[2] = sub_1005E1FB8;
                v64[3] = &unk_100BE1710;
                v65 = v24;
                v66 = v53;
                v67 = v56;
                v35 = objc_retainBlock(v64);
              }

              if ([v25 count])
              {
                v36 = [v15 copy];
                v37 = [v25 __imArrayByApplyingBlock:&stru_100BE1848];
                [v36 setFinalDestinationURIs:v37];

                v58[0] = _NSConcreteStackBlock;
                v58[1] = 3221225472;
                v58[2] = sub_1005E20F8;
                v58[3] = &unk_100BE1870;
                v58[4] = self;
                v60 = v79;
                v61 = v90;
                v62 = v85;
                v59 = v57;
                v63 = &v81;
                [(IDSDAccount *)self _sendRemotelyWithSendParameters:v36 data:v17 protobuf:v19 willSendBlock:v35 completionBlock:v58];
              }

              else
              {
                v39 = [v24 count];
                if (v56 && v39)
                {
                  (*(v56 + 2))(v56, v53, 0, 0);
                }
              }

              _Block_object_dispose(v90, 8);
              _Block_object_dispose(v79, 8);
              _Block_object_dispose(&v81, 8);
              _Block_object_dispose(v85, 8);
LABEL_64:

              goto LABEL_65;
            }
          }

          else
          {
            v45 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *v90 = 138412546;
              *&v90[4] = self;
              *&v90[12] = 2112;
              *&v90[14] = v16;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Account %@ was asked to send to %@ but we were unable to resolve any actual destinations - failing message.", v90, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              _IDSLogTransport();
            }
          }

          v46 = [NSError alloc];
          v47 = [v46 initWithDomain:IDSSendErrorDomain code:1 userInfo:0];
          if (v57)
          {
            v48 = [[IDSDeliveryContext alloc] initWithResponseCode:1 error:v47 lastCall:1];
            (*(v57 + 2))(v57, v48);
          }

          goto LABEL_64;
        }
      }
    }

    v23 = 0;
    goto LABEL_9;
  }

  v38 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Skipping processing of outgoing message", v90, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_65:
}

- (void)sendServerMessage:(id)a3 command:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSDAccount *)self service];
  v12 = [v11 pushTopic];

  v13 = [[IDSServerMessage alloc] initWithPayload:v8 command:v9];
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending server message: %@   command: %@   account: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = v9;
    v20 = self;
    v18 = v8;
    _IDSLogV();
  }

  v15 = [IDSDeliveryController sharedInstance:v18];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005E2750;
  v21[3] = &unk_100BD8D78;
  v22 = v12;
  v23 = v10;
  v16 = v10;
  v17 = v12;
  [v15 sendIDSMessage:v13 service:0 topic:v17 completionBlock:v21];
}

- (void)_splitDestinations:(id)a3 intoLocalDestinations:(id *)a4 remoteDestinations:(id *)a5 rapportDestinations:(id *)a6 sendParameters:(id)a7
{
  v122 = a3;
  v131 = a7;
  v119 = a4;
  if (!a4 && !a5 && !a6)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v159 = v122;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No output arrays specified for _splitDestinations %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    goto LABEL_222;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v159 = self;
    v160 = 2112;
    v161 = v122;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ splitting destinations %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v111 = self;
    v115 = v122;
    _IDSLogV();
  }

  v124 = objc_alloc_init(NSMutableDictionary);
  v125 = objc_alloc_init(NSMutableArray);
  v127 = objc_alloc_init(NSMutableArray);
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v122;
  v134 = [(IDSDAccount *)obj countByEnumeratingWithState:&v154 objects:v167 count:16];
  if (v134)
  {
    v133 = *v155;
    v135 = IDSDefaultPairedDevice;
    v129 = IDSDevicePropertyPushToken;
    v128 = IDSDevicePropertyIdentities;
    v140 = IDSDevicePropertyPrivateDeviceData;
    v141 = IDSDevicePropertyIdentifierOverride;
    v139 = IDSPrivateDeviceDataUniqueID;
    v126 = IDSDeviceDefaultPairedDeviceUniqueID;
    v123 = IDSDevicePairedDeviceID;
    do
    {
      v137 = 0;
      do
      {
        if (*v155 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v154 + 1) + 8 * v137);
        v12 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v159 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - looking up device for dest %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v111 = v11;
          _IDSLogV();
        }

        LODWORD(v13) = [(IDSDAccount *)v11 isEqualToString:v135, v111, v115, v117, v118];
        if (v13)
        {
          v14 = [(IDSDAccount *)self defaultPairedDependentRegistration];
          v15 = v14;
          if (!v14)
          {
            v44 = [NSDictionary dictionaryWithObjectsAndKeys:@"bt-id", v126, @"device-id", 0];
            [v124 setObject:v44 forKey:v135];

            goto LABEL_190;
          }

          v16 = [(IDSDAccount *)v14 objectForKey:v129];
          v17 = [(IDSDAccount *)v15 objectForKey:v128];
          v18 = [v17 __imArrayByApplyingBlock:&stru_100BE1890];

          v19 = [(IDSDAccount *)self service];
          v20 = [v19 identifier];
          _IDSPrefersPhoneNumbersForServiceIdentifier();

          v21 = _IDSCopyCallerID();
          v22 = [v21 _URIFromFZIDType:{objc_msgSend(v21, "_FZBestGuessFZIDType")}];
          v23 = _IDSCopyIDForTokenWithURI();

          v24 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v159 = v23;
            v160 = 2112;
            v161 = v15;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Resolved destination %@ from default paired device constant device %@.", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v112 = v23;
            v115 = v15;
            _IDSLogV();
          }
        }

        else
        {
          v23 = v11;
        }

        if ([(IDSDAccount *)v23 hasPrefix:@"device:", v112])
        {
          v25 = [(IDSDAccount *)v23 _stripFZIDPrefix];
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v159 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(Instance) Destination device uniqueID: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v113 = v25;
            _IDSLogV();
          }

          v27 = [(IDSDAccount *)self service];
          v28 = -[IDSDAccount defaultPairedDependentRegistrationIncludingTinker:](self, "defaultPairedDependentRegistrationIncludingTinker:", [v27 wantsTinkerDevices]);

          if (v28)
          {
            v29 = [(IDSDAccount *)v28 _stringForKey:v141];
            v30 = [(IDSDAccount *)v28 objectForKey:v140];
            v13 = [v30 _stringForKey:v139];

            v31 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v159 = v29;
              v160 = 2112;
              v161 = v13;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "(Instance) Default paired device uniqueID override %@   uniqueID %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v113 = v29;
              v115 = v13;
              _IDSLogV();
            }

            if ((-[IDSDAccount isEqualToIgnoringCase:](v25, "isEqualToIgnoringCase:", v29, v113) & 1) == 0 && !-[IDSDAccount isEqualToIgnoringCase:](v25, "isEqualToIgnoringCase:", v13) || [v131 sessionForceInternetInvitation])
            {

              goto LABEL_48;
            }

            LOBYTE(v13) = 1;
LABEL_78:

            v45 = [(IDSDAccount *)v28 objectForKey:v129];
            v46 = [(IDSDAccount *)v28 objectForKey:v128];
            v47 = [v46 __imArrayByApplyingBlock:&stru_100BE18B0];

            v48 = [(IDSDAccount *)self service];
            v49 = [v48 identifier];
            _IDSPrefersPhoneNumbersForServiceIdentifier();

            v50 = _IDSCopyCallerID();
            v51 = [v50 _URIFromFZIDType:{objc_msgSend(v50, "_FZBestGuessFZIDType")}];
            v52 = _IDSCopyIDForTokenWithURI();

            v53 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v159 = v52;
              v160 = 2112;
              v161 = v28;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "(Instance) Resolved destination %@ from default paired device constant device %@.", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v113 = v52;
              v115 = v28;
              _IDSLogV();
            }

            v29 = v28;
            v23 = v52;
          }

          else
          {
LABEL_48:
            v32 = [(IDSDAccount *)self service];
            v33 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [v32 wantsTinkerDevices]);

            v153 = 0u;
            v151 = 0u;
            v152 = 0u;
            v150 = 0u;
            v29 = v33;
            v34 = [(IDSDAccount *)v29 countByEnumeratingWithState:&v150 objects:v166 count:16];
            if (v34)
            {
              v35 = *v151;
LABEL_50:
              v36 = 0;
              while (1)
              {
                if (*v151 != v35)
                {
                  objc_enumerationMutation(v29);
                }

                v37 = *(*(&v150 + 1) + 8 * v36);
                v38 = [v37 _stringForKey:v141];
                v39 = [v37 objectForKey:v140];
                v40 = [v39 _stringForKey:v139];

                v41 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v159 = v38;
                  v160 = 2112;
                  v161 = v40;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "(Instance) Device uniqueID override %@   uniqueID %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                {
                  v113 = v38;
                  v115 = v40;
                  _IDSLogV();
                }

                if (([(IDSDAccount *)v38 isEqualToIgnoringCase:v25, v113]& 1) != 0 || [(IDSDAccount *)v40 isEqualToIgnoringCase:v25])
                {
                  break;
                }

                if (v34 == ++v36)
                {
                  v34 = [(IDSDAccount *)v29 countByEnumeratingWithState:&v150 objects:v166 count:16];
                  if (v34)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_62;
                }
              }

              v28 = v37;
              v42 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v159 = v28;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(Instance) Found matching device %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v113 = v28;
                _IDSLogV();
              }

              if (v28)
              {
                LOBYTE(v13) = 0;
                goto LABEL_78;
              }
            }

            else
            {
LABEL_62:
            }

            v43 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v159 = v25;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "(Instance) Didn't find matching device for uniqueID %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v113 = v25;
              _IDSLogV();
            }

            LOBYTE(v13) = 0;
          }
        }

        if ([(IDSDAccount *)v23 hasPrefix:@"guest-device:", v113])
        {
          [v127 addObject:v23];
          LOBYTE(v13) = 1;
        }

        if (![(IDSDAccount *)v23 hasPrefix:@"token:"])
        {
          goto LABEL_175;
        }

        v149 = 0;
        v54 = [(IDSDAccount *)v23 _stripPotentialTokenURIWithToken:&v149];
        v136 = v149;
        v55 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v159 = v136;
          v160 = 2112;
          v161 = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - token %@ and uri %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v111 = v136;
          v115 = v54;
          _IDSLogV();
        }

        if (!v136 || !v54)
        {
          v57 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v159 = v23;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Malformed destination %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            v111 = v23;
            _IDSLogTransport();
          }

          goto LABEL_189;
        }

        v148 = 0;
        if ([(IDSDAccount *)v54 localizedCaseInsensitiveContainsString:@"__localURI__"])
        {
          v56 = v126;
          LOBYTE(v13) = 1;
          v132 = v56;
        }

        else
        {
          v58 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = IDSLoggableDescriptionForHandleOnService();
            v60 = IDSLoggableDescriptionForTokenOnService();
            *buf = 138412546;
            v159 = v59;
            v160 = 2112;
            v161 = v60;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Finding device matching URI %@ and token %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v61 = IDSLoggableDescriptionForHandleOnService();
            IDSLoggableDescriptionForTokenOnService();
            v115 = v111 = v61;
            _IDSLogV();
          }

          v146 = 0;
          v147 = 0;
          [(IDSDAccount *)self findDeviceUniqueID:&v147 btID:&v146 forURI:v54 token:v136 supportsLiveDelivery:&v148, v111];
          v56 = v147;
          v132 = v146;
          v62 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v159 = v56;
            v160 = 2112;
            v161 = v132;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Found deviceID %@ and btID %@ after first try", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v111 = v56;
            v115 = v132;
            _IDSLogV();
          }
        }

        if (!v56)
        {
          v63 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [(IDSDAccount *)self smallDescription];
            *buf = 138412290;
            v159 = v64;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Did not find deviceID using account %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v111 = [(IDSDAccount *)self smallDescription];
            _IDSLogV();
          }

          v65 = +[IDSDAccountController sharedInstance];
          v66 = [(IDSDAccount *)self service];
          v67 = [v65 appleIDAccountOnService:v66];

          v144 = v132;
          v145 = 0;
          [v67 findDeviceUniqueID:&v145 btID:&v144 forURI:v54 token:v136 supportsLiveDelivery:&v148];
          v56 = v145;
          v68 = v144;

          v69 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v70 = [v67 smallDescription];
            *buf = 138412546;
            v159 = v56;
            v160 = 2112;
            v161 = v70;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Found deviceID %@ using primary %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            [v67 smallDescription];
            v115 = v111 = v56;
            _IDSLogV();
          }

          v132 = v68;
        }

        v71 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v159 = v56;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - found device id %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v111 = v56;
          _IDSLogV();
        }

        v72 = [(IDSDAccount *)self service];
        if ([v72 shouldAllowLiveMessageDelivery])
        {
          v73 = [(IDSDAccount *)self service];
          v74 = [v73 identifier];
          if (sub_1005DB1BC(v74))
          {
            v75 = 0;
          }

          else
          {
            v75 = sub_1005DB274() ^ 1;
          }
        }

        else
        {
          v75 = 0;
        }

        v76 = _os_feature_enabled_impl();
        if (v56)
        {
          v77 = v76;
        }

        else
        {
          v77 = 0;
        }

        if (v77 == 1 && ([v131 liveMessageDelivery] & v75) == 1 && v148 == 1)
        {
          v78 = [(IDSDAccount *)self utunDeliveryController];
          v79 = [v78 copyPeerWithID:v56];

          if (([v79 isCloudConnected] & 1) == 0)
          {
            [v131 setLiveMessageDelivery:0];
            v80 = im_primary_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1005E4978;
            block[3] = &unk_100BD6ED0;
            v143 = v79;
            dispatch_async(v80, block);

            v81 = +[IDSUTunController sharedInstance];
            [v81 startGlobalLinkForDevice:v56];

            v82 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v159 = v56;
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Using push instead of Live Delivery while GL warms for device id %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v114 = v56;
              _IDSLogV();
            }
          }
        }

        if (qword_100CBF2D0 != -1)
        {
          sub_10092C574();
        }

        v83 = [v131 sessionID];
        if ([v131 liveMessageDelivery] && (v56 ? (v84 = v75) : (v84 = 0), v84 == 1 && v132))
        {
          if (v148 != 1)
          {
            v94 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v159 = v56;
              v160 = 2112;
              v161 = v54;
              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Device does not support live delivery, falling back to push {deviceID: %@, strippedURI: %@}", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v111 = v56;
              v115 = v54;
              _IDSLogV();
            }

            goto LABEL_168;
          }

          v85 = [NSDictionary dictionaryWithObjectsAndKeys:v132, @"bt-id", v56, v123, 0];
        }

        else
        {
          v86 = [(IDSDAccount *)self service];
          if (![v86 allowLocalDelivery] || (byte_100CBF2C8 & 1) != 0 || !v56)
          {

LABEL_168:
            if (byte_100CBF2C8 == 1)
            {
              v90 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "  Local IDS is disabled... not sending locally", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                _IDSLogV();
              }
            }

LABEL_175:
            v91 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v159 = v23;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - no local device for URI %@, adding to remote", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v111 = v23;
              _IDSLogV();
            }

            if (v23)
            {
              v92 = v13;
            }

            else
            {
              v92 = 1;
            }

            if (v92)
            {
              v93 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "(Instance) Dest became nil while trying to split destinations.", buf, 2u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV();
                _IDSLogTransport();
              }
            }

            else
            {
              [v125 addObject:v23];
            }

            goto LABEL_189;
          }

          if (!v132)
          {
            goto LABEL_168;
          }

          v87 = [(IDSDAccount *)v56 isEqualToString:v126];
          v88 = [(IDSDAccount *)self service];
          v89 = [v88 allowWiProxDelivery];

          if (!((v87 | v89) & 1 | (v83 != 0)))
          {
            v95 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = [(IDSDAccount *)self service];
              v97 = [v96 allowWiProxDelivery];
              *buf = 138413058;
              v98 = @"NO";
              if (v97)
              {
                v98 = @"YES";
              }

              v159 = v23;
              v160 = 2112;
              v161 = v56;
              v162 = 2112;
              v163 = v132;
              v164 = 2112;
              v165 = v98;
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Not considering %@ for local. DeviceID is %@  (btID: %@)  and we're not already scanning/advertising. Service allows wiprox? %@", buf, 0x2Au);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v99 = [(IDSDAccount *)self service];
              if ([v99 allowWiProxDelivery])
              {
                v100 = @"YES";
              }

              else
              {
                v100 = @"NO";
              }

              v117 = v132;
              v118 = v100;
              v111 = v23;
              v115 = v56;
              _IDSLogV();
            }

            goto LABEL_168;
          }

          if (v83)
          {
            [NSDictionary dictionaryWithObjectsAndKeys:v132, @"bt-id", v56, v123, v83, @"session-id", 0];
          }

          else
          {
            [NSDictionary dictionaryWithObjectsAndKeys:v132, @"bt-id", v56, v123, 0];
          }
          v85 = ;
        }

        v101 = v85;
        [v124 setObject:v85 forKey:v23];

LABEL_189:
        v11 = v23;
LABEL_190:

        v137 = v137 + 1;
      }

      while (v137 != v134);
      v102 = [(IDSDAccount *)obj countByEnumeratingWithState:&v154 objects:v167 count:16];
      v134 = v102;
    }

    while (v102);
  }

  v103 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    v104 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v124 count]);
    v105 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v125 count]);
    *buf = 138412546;
    v159 = v104;
    v160 = 2112;
    v161 = v105;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "(Instance) Split out local destinations (%@) remote destinations (%@)", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v106 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v124 count]);
    v116 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v125 count]);
    _IDSLogV();
  }

  if (v119)
  {
    v107 = v124;
    *v119 = v124;
  }

  if (a5)
  {
    v108 = v125;
    *a5 = v125;
  }

  v109 = v127;
  if (a6)
  {
    v110 = v127;
    v109 = v127;
    *a6 = v127;
  }

LABEL_222:
}

- (void)_sendLocallyWithSendParameters:(id)a3 uriToLocalDestination:(id)a4 data:(id)a5 protobuf:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v109 = a5;
  v103 = a6;
  v96 = a7;
  im_assert_primary_base_queue();
  v105 = self;
  v104 = [(IDSDAccount *)self service];
  v92 = [v104 dataProtectionClass];
  v14 = [v104 pushTopic];
  v15 = [v12 resourcePath];

  v16 = [v12 dataToEncrypt];
  v17 = [v16 length];
  v18 = [v109 length];
  v19 = [v103 data];
  v20 = [v19 length];

  if (v15)
  {
    [v12 setCommand:&off_100C3CD48];
    v21 = 0;
  }

  else
  {
    v21 = &v17[v18 + v20];
  }

  v107 = v14;
  v22 = [v12 metricReportIdentifier];

  v102 = v107;
  if (v22)
  {
    v23 = [NSString alloc];
    v24 = [v12 metricReportIdentifier];
    v102 = [v23 initWithFormat:@"%@-%@", v107, v24];
  }

  v25 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v12 messageUUID];
    *&buf[12] = 2048;
    v27 = @"YES";
    *buf = 138413314;
    *&buf[4] = v26;
    if (!v15)
    {
      v27 = @"NO";
    }

    *&buf[14] = v21;
    *&buf[22] = 2112;
    v140 = v27;
    *v141 = 2112;
    *&v141[2] = v107;
    *&v141[10] = 2112;
    *&v141[12] = v13;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Sending message ID (%@) with data length %lu (resource: %@)  [Topic: %@  Local Device IDs: %@]", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v28 = v15 == 0;
    v29 = [v12 messageUUID];
    v30 = v29;
    v31 = @"YES";
    if (v28)
    {
      v31 = @"NO";
    }

    v75 = v107;
    v77 = v13;
    v71 = v21;
    v73 = v31;
    v68 = v29;
    _IDSLogV();
  }

  if (!-[IDSDAccount accountType](v105, "accountType", v68, v71, v73, v75, v77) || (_IDSCopyMyPhoneNumbers(), v32 = objc_claimAutoreleasedReturnValue(), [v12 fromID], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "_stripFZIDPrefix"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v32, "containsObject:", v34), v34, v33, v32, v35))
  {
    ct_green_tea_logger_create_static();
    v36 = getCTGreenTeaOsLogHandle();
    v37 = v36;
    if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
    }
  }

  v38 = [v13 allValues];
  v39 = [v38 __imArrayByApplyingBlock:&stru_100BE18F0];
  v94 = [NSMutableSet setWithArray:v39];

  v93 = +[NSMutableSet set];
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x2020000000;
  v132[3] = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v140 = sub_10000AA74;
  *v141 = sub_10000BCAC;
  *&v141[8] = 0;
  if (([v12 localDelivery] & 1) != 0 || objc_msgSend(v12, "requireLocalWiFi"))
  {
    v40 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      if ([v12 localDelivery])
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      v42 = [v12 requireLocalWiFi];
      v43 = [v12 messageUUID];
      v44 = v43;
      if (v42)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      *v133 = 138412802;
      v134 = v41;
      v135 = 2112;
      v136 = v45;
      v137 = 2112;
      v138 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback forcedLocal %@ requireLocalWiFi %@ message %@", v133, 0x20u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || (![v12 localDelivery] ? (v46 = @"NO") : (v46 = @"YES"), (v47 = objc_msgSend(v12, "requireLocalWiFi"), objc_msgSend(v12, "messageUUID"), v48 = objc_claimAutoreleasedReturnValue(), v49 = v48, !v47) ? (v50 = @"NO") : (v50 = @"YES"), v72 = v50, v74 = v48, v69 = v46, _IDSLogTransport(), v49, !_IDSShouldLog()))
    {
      v56 = 0;
      goto LABEL_50;
    }

    if ([v12 localDelivery])
    {
      v51 = @"YES";
    }

    else
    {
      v51 = @"NO";
    }

    v52 = [v12 requireLocalWiFi];
    v53 = [v12 messageUUID];
    v54 = v53;
    if (v52)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    v72 = v55;
    v74 = v53;
    v69 = v51;
    _IDSLogV();
    v56 = 0;
  }

  else
  {
    v119[0] = _NSConcreteStackBlock;
    v119[1] = 3221225472;
    v119[2] = sub_1005E56E0;
    v119[3] = &unk_100BE1918;
    v129 = buf;
    v120 = v93;
    v121 = v94;
    v122 = v12;
    v123 = v105;
    v130 = v132;
    v124 = v102;
    v131 = v21;
    v125 = v104;
    v128 = v96;
    v126 = v109;
    v127 = v103;
    v56 = objc_retainBlock(v119);

    v54 = v120;
  }

LABEL_50:
  v57 = [v12 dataToEncrypt];

  if (v57)
  {
    if (v109)
    {
      v58 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *v133 = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Attempt to send both DataToEncrypt and Data, dropping data", v133, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }

    v59 = [v12 dataToEncrypt];

    v109 = v59;
  }

  v60 = [(IDSDAccount *)v105 utunDeliveryController];
  v61 = [v12 resourcePath];
  v62 = [v12 resourceMetadata];
  v91 = [v12 priority];
  v90 = [v12 nonWaking];
  v89 = [v12 nonCloudWaking];
  v88 = [v12 requireBluetooth];
  v87 = [v12 requireLocalWiFi];
  v63 = [v12 queueOneIdentifier];
  v64 = [v12 expirationDate];
  v86 = [v12 enforceRemoteTimeouts];
  v85 = [v12 expectsPeerResponse];
  v84 = [v12 wantsAppAck];
  v83 = [v12 compressPayload];
  v82 = [v12 compressed];
  v65 = [v12 peerResponseIdentifier];
  v66 = [v12 identifier];
  v101 = [v12 command];
  v100 = [v12 fromID];
  v99 = [v12 localDestinationDeviceUUID];
  v81 = [v12 bypassDuet];
  v97 = [v12 duetIdentifiersOverride];
  v98 = [v12 messageType];
  v80 = [v98 longLongValue];
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_1005E6548;
  v110[3] = &unk_100BE1940;
  v79 = v12;
  v111 = v79;
  v67 = v107;
  v112 = v67;
  v95 = v94;
  v113 = v95;
  v108 = v93;
  v114 = v108;
  v115 = v105;
  v117 = buf;
  v118 = v132;
  v106 = v96;
  v116 = v106;
  LOBYTE(v78) = v81;
  BYTE4(v76) = v82;
  BYTE3(v76) = v83;
  BYTE2(v76) = v84;
  BYTE1(v76) = v85;
  LOBYTE(v76) = v86;
  HIBYTE(v70) = v87;
  BYTE6(v70) = v88;
  BYTE5(v70) = v89;
  BYTE4(v70) = v90;
  LODWORD(v70) = v92;
  [v60 sendData:v109 service:v104 protobuf:v103 resourcePath:v61 resourceMetadata:v62 priority:v91 dataProtectionClass:v70 nonWaking:v63 nonCloudWaking:v64 requireBluetooth:v76 requireLocalWiFi:v65 queueOneIdentifier:v66 expirationDate:v67 enforceRemoteTimeouts:v102 expectsPeerResponse:v101 wantsAppAck:v100 compressPayload:v13 compressed:v99 peerResponseIdentifier:v78 messageID:v97 topic:v80 awdTopic:v56 command:0 fromID:v110 uriToDeviceID:? localDeviceDestinationDeviceUUID:? bypassDuet:? duetIdentifiersOverride:? messageType:? fallbackBlock:? progressBlock:? completionBlock:?];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v132, 8);
}

- (void)_sendRemotelyWithSendParameters:(id)a3 data:(id)a4 protobuf:(id)a5 willSendBlock:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v238 = a4;
  v237 = a5;
  v240 = a6;
  v241 = a7;
  v244 = [(IDSDAccount *)self service];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v268 = _os_activity_create(&_mh_execute_header, "IDSAccount send remotely", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v268, &state);
  v239 = [v244 dataUsageBundleID];
  v13 = [v244 identifier];
  v243 = [NSString stringWithFormat:@"service-disable-%@", v13];

  if (v243)
  {
    v14 = [IDSServerBag sharedInstanceForBagType:1];
    v15 = [v14 objectForKey:v243];

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v236 = v16;
  if ([v16 intValue] < 1)
  {
    v18 = [v12 fromID];
    v19 = v18 == 0;

    if (v19)
    {
      v34 = [NSError alloc];
      v233 = [v34 initWithDomain:IDSSendErrorDomain code:7 userInfo:0];
      v35 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = [v12 destinations];
        v37 = [v12 fromID];
        *buf = 138412546;
        *v270 = v36;
        *&v270[8] = 2112;
        v271 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failing message to: %@   from: %@    invalid caller ID", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v38 = [v12 destinations];
        v184 = [v12 fromID];
        _IDSWarnV();

        v39 = [v12 destinations];
        v185 = [v12 fromID];
        _IDSLogV();

        v40 = [v12 destinations];
        v186 = [v12 fromID];
        _IDSLogTransport();
      }

      if (!v241)
      {
        goto LABEL_245;
      }

      v41 = [[IDSDeliveryContext alloc] initWithResponseCode:7 error:v233 lastCall:1];
      v241[2](v241, v41);
LABEL_244:

LABEL_245:
      goto LABEL_246;
    }

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 messageUUID];
      v22 = JWUUIDPushObjectToString();
      v23 = [v244 identifier];
      *buf = 138412546;
      *v270 = v22;
      *&v270[8] = 2112;
      v271 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "OUTGOING-REMOTE_SEND:%@ SERVICE:%@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = [v12 messageUUID];
      v25 = JWUUIDPushObjectToString();
      [v244 identifier];
      v182 = v176 = v25;
      _IDSLogV();
    }

    if (!-[IDSDAccount accountType](self, "accountType", v176, v182) || (_IDSCopyMyPhoneNumbers(), v26 = objc_claimAutoreleasedReturnValue(), [v12 fromID], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "_stripFZIDPrefix"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v26, "containsObject:", v28), v28, v27, v26, v29))
    {
      ct_green_tea_logger_create_static();
      v30 = getCTGreenTeaOsLogHandle();
      v31 = v30;
      if (v30)
      {
        v32 = v30;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Transmitting phone number", buf, 2u);
        }
      }
    }

    v233 = [v12 destinations];
    theDict = objc_alloc_init(NSMutableDictionary);
    v33 = [v12 command];
    if (v33)
    {
      CFDictionarySetValue(theDict, IDSCommandKey, v33);
    }

    else
    {
      v42 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092C59C();
      }
    }

    v43 = [v12 commandContext];
    if (v43)
    {
      CFDictionarySetValue(theDict, IDSCommandContextKey, v43);
    }

    v44 = [v12 queueOneIdentifier];
    if (v44)
    {
      CFDictionarySetValue(theDict, IDSStorageQueueOneIdentifier, v44);
    }

    v45 = [v12 command];
    if ([v45 integerValue] != 227)
    {
      v46 = [v12 command];
      if ([v46 integerValue] != 243)
      {
        v47 = [v12 command];
        if ([v47 integerValue] != 242)
        {
          v88 = [v12 command];
          v89 = [v88 integerValue] == 250;

          if (!v89)
          {
            goto LABEL_78;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    if ([v12 priority] == 300 && (objc_msgSend(v12, "wantsResponse") & 1) == 0 && (objc_msgSend(v12, "fireAndForget") & 1) == 0)
    {
      v48 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Urgent priority messages should require a response for reliability", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      [v12 setWantsResponse:1];
    }

    v49 = [v12 expirationDate];
    v50 = v49;
    if (v49)
    {
      [v49 timeIntervalSinceNow];
      if (v51 < 5.0)
      {
        [v12 setFireAndForget:1];
      }
    }

    if ([v12 wantsResponse] && objc_msgSend(v12, "fireAndForget"))
    {
      v52 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "Messages that want a response should not be fireAndForget", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      [v12 setFireAndForget:0];
    }

    if (([v12 wantsResponse] & 1) == 0)
    {
      v53 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Disabling IDS-level ack for this message", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v54 = [NSNumber numberWithInteger:0];
      if (v54)
      {
        CFDictionarySetValue(theDict, @"ack", v54);
      }

      else
      {
        v55 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10092C628();
        }
      }
    }

LABEL_78:
    v56 = [v12 messageUUID];
    v57 = v56 == 0;

    if (v57)
    {
      v58 = +[NSString stringGUID];
      v59 = IDSGetUUIDData();
      [v12 setMessageUUID:v59];
    }

    if ([v12 wantsDeliveryStatus])
    {
      CFDictionarySetValue(theDict, IDSWantsDeliveryStatusKey, &__kCFBooleanTrue);
      v60 = [v12 deliveryStatusContext];
      if (v60)
      {
        CFDictionarySetValue(theDict, IDSDeliveryStatusContextKey, v60);
      }
    }

    if ([v12 wantsCertifiedDelivery])
    {
      v61 = [NSNumber numberWithInteger:_IDSCertifiedDeliveryVersion()];
      if (v61)
      {
        CFDictionarySetValue(theDict, IDSCertifiedDeliveryVersionKey, v61);
      }

      else
      {
        v62 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10092C6B0();
        }
      }
    }

    if ([v12 expectsPeerResponse])
    {
      CFDictionarySetValue(theDict, IDSExpectsPeerResponseKey, &__kCFBooleanTrue);
    }

    v63 = [v12 peerResponseIdentifier];

    if (v63)
    {
      v64 = [v12 peerResponseIdentifier];
      v65 = IDSGetUUIDData();

      if (v65)
      {
        CFDictionarySetValue(theDict, IDSPeerResponseIdentifierKey, v65);
      }
    }

    if ([v12 wantsAppAck])
    {
      CFDictionarySetValue(theDict, IDSWantsAppAckKey, &__kCFBooleanTrue);
    }

    v66 = [v12 originalTimestamp];

    if (v66)
    {
      v67 = [v12 originalTimestamp];
      if (v67)
      {
        CFDictionarySetValue(theDict, IDSOriginalTimestampKey, v67);
      }
    }

    if ([v12 isUPlusOne])
    {
      v68 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isUPlusOne]);
      if (v68)
      {
        CFDictionarySetValue(theDict, IDSIsUPlusOneKey, v68);
      }
    }

    v69 = [v12 isInitiator];

    if (v69)
    {
      v70 = [v12 isInitiator];
      if (v70)
      {
        CFDictionarySetValue(theDict, IDSGroupSessionIsInitiatorKey, v70);
      }
    }

    v71 = [v12 quickRelayUserType];

    if (v71)
    {
      v72 = [v12 quickRelayUserType];
      if (v72)
      {
        CFDictionarySetValue(theDict, IDSQuickRelayUserTypeKey, v72);
      }
    }

    v73 = [v12 groupSessionUUID];

    if (v73)
    {
      v74 = [v12 groupSessionUUID];
      if (v74)
      {
        CFDictionarySetValue(theDict, IDSQuickRelayGroupSessionUUID, v74);
      }
    }

    v75 = [v12 dedupeTimestamp];

    if (v75)
    {
      v76 = [v12 dedupeTimestamp];
      if (v76)
      {
        CFDictionarySetValue(theDict, IDSQuickRelayDedupeTimestamp, v76);
      }
    }

    if ([v12 useDictAsTopLevel])
    {
      v77 = [v12 message];
      v265[0] = _NSConcreteStackBlock;
      v265[1] = 3221225472;
      v265[2] = sub_1005E9368;
      v265[3] = &unk_100BD95F8;
      v266 = theDict;
      [v77 enumerateKeysAndObjectsUsingBlock:v265];

      v227 = 0;
      v78 = v266;
    }

    else
    {
      v79 = [v12 bulkedPayload];

      if (v79)
      {
        v80 = [v12 message];
        v81 = [v80 count];

        [v12 bulkedPayload];
        if (v81)
          v82 = {;
          v83 = [v82 mutableCopy];

          v84 = [v12 message];
          [v83 addObject:v84];

          v78 = v83;
        }

        else
          v78 = {;
        }

        v90 = JWEncodeArray();
        v91 = [v90 length];
        if ([v12 compressPayload])
        {
          v227 = [v90 _FTCopyOptionallyGzippedData];
          v92 = [v227 length];
          if (v91 > v92)
          {
            v93 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v270 = v91;
              *&v270[4] = 1024;
              *&v270[6] = v92;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Compressed IDS bulked payload data from:%u  to:%u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v177 = v91;
              v183 = v92;
              _IDSLogV();
            }

            v227 = v227;

            v90 = v227;
          }
        }

        else
        {
          v227 = 0;
        }

        if (([v12 encryptPayload] & 1) != 0 || (objc_msgSend(v12, "dataToEncrypt"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v94 == 0, v94, !v95))
        {
          v96 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Cannot use encryption with bulked payloads!", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            _IDSLogTransport();
          }
        }

        v97 = v90;
        if (v97)
        {
          CFDictionarySetValue(theDict, IDSBulkedPayloadKey, v97);
        }

        CFDictionarySetValue(theDict, IDSIsBulkedPayloadKey, &__kCFBooleanTrue);
      }

      else
      {
        v78 = v238;
        v85 = [v12 protobuf];

        if (v85)
        {
          if ([v12 compressed])
          {
            v86 = [v237 dictionaryRepresentationWithUncompressedData];
            v87 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "Local protobuf data is compresed, use uncompressed protobuf data for remote delivery", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              _IDSLogV();
            }
          }

          else
          {
            v86 = [v237 dictionaryRepresentation];
          }

          v98 = JWEncodeDictionary();

          v99 = [v98 length];
          if ([v12 compressPayload])
          {
            v227 = [v98 _FTCopyOptionallyGzippedData];
            v100 = [v227 length];
            if (v99 > v100)
            {
              v101 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *v270 = v99;
                *&v270[4] = 1024;
                *&v270[6] = v100;
                _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Compressed protobuf serialized data from: %u  to: %u", buf, 0xEu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v177 = v99;
                v183 = v100;
                _IDSLogV();
              }

              v227 = v227;

              v98 = v227;
            }
          }

          else
          {
            v227 = 0;
          }

          v78 = v98;
        }

        else
        {
          v227 = 0;
        }

        if ([v12 encryptPayload])
        {
          v102 = [v12 dataToEncrypt];

          if (v102)
          {
            v103 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "Using incompatible combination of wantsEncryptedPayload and dataToEncrypt!", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              _IDSLogTransport();
            }
          }

          v104 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEBUG, "Setting IDS payload to be encrypted.", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          [v12 setDataToEncrypt:v78];
        }

        else
        {
          v105 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v106 = [v78 length];
            *buf = 67109120;
            *v270 = v106;
            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Setting IDS payload with size: %u", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v177 = [v78 length];
            _IDSLogV();
          }

          v78 = v78;
          if (v78)
          {
            CFDictionarySetValue(theDict, IDSPayloadKey, v78);
          }
        }
      }
    }

    if ([v12 homeKitPayload])
    {
      v231 = [v12 fromID];
    }

    else
    {
      v107 = [v12 fromID];
      v231 = [v107 _bestGuessURI];
    }

    v232 = [(IDSDAccount *)self _registrationCert];
    v108 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      registrationInfo = self->_registrationInfo;
      v110 = [(IDSRegistration *)registrationInfo uris];
      *buf = 138412802;
      *v270 = registrationInfo;
      *&v270[8] = 2112;
      v271 = v110;
      v272 = 2112;
      v273 = v232;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEBUG, "Registration %@   URIs %@  callerCert %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v111 = self->_registrationInfo;
      v183 = [(IDSRegistration *)v111 uris];
      v190 = v232;
      v178 = v111;
      _IDSLogV();
    }

    v112 = [(IDSDAccount *)self service:v178];
    v234 = [v112 pushTopic];

    v113 = [(IDSDAccount *)self service];
    v230 = [v113 identifier];

    v114 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = [v12 command];
      *buf = 138412290;
      *v270 = v115;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "!setState command=%@", buf, 0xCu);
    }

    v116 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      v117 = [v12 destinations];
      *buf = 138412290;
      *v270 = v117;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "!setState destinations=%@", buf, 0xCu);
    }

    v118 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v119 = [v12 command];
      v120 = [v12 messageUUID];
      v121 = JWUUIDPushObjectToString();
      v122 = [v12 destinations];
      v123 = [v12 destinations];
      *buf = 138413314;
      *v270 = v119;
      *&v270[8] = 2112;
      v271 = v121;
      v272 = 2112;
      v273 = v122;
      v274 = 2112;
      v275 = v123;
      v276 = 2112;
      v277 = v234;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Sending message (c = %@) %@ to filteredDestinations %@ (originally %@) for topic %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v124 = [v12 command];
      v125 = [v12 messageUUID];
      v126 = JWUUIDPushObjectToString();
      v127 = [v12 destinations];
      v193 = [v12 destinations];
      v195 = v234;
      v187 = v126;
      v191 = v127;
      v179 = v124;
      _IDSLogV();
    }

    v128 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      v129 = [v12 messageUUID];
      v130 = JWUUIDPushObjectToString();
      v131 = [v12 finalDestinationURIs];
      v132 = IMLoggingStringForArray();
      *buf = 138412802;
      *v270 = v130;
      *&v270[8] = 2112;
      v271 = v132;
      v272 = 2112;
      v273 = v234;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Sending message ID (%@) using push to %@ for topic %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v133 = [v12 messageUUID];
        v134 = JWUUIDPushObjectToString();
        v135 = [v12 finalDestinationURIs];
        v187 = IMLoggingStringForArray();
        v191 = v234;
        v179 = v134;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v136 = [v12 messageUUID];
          v137 = JWUUIDPushObjectToString();
          v138 = [v12 finalDestinationURIs];
          v187 = IMLoggingStringForArray();
          v191 = v234;
          v179 = v137;
          _IDSLogV();
        }
      }
    }

    if (v240)
    {
      v263[0] = _NSConcreteStackBlock;
      v263[1] = 3221225472;
      v263[2] = sub_1005E9374;
      v263[3] = &unk_100BD8D50;
      v264 = v240;
      v229 = objc_retainBlock(v263);
    }

    else
    {
      v229 = 0;
    }

    v139 = [v12 interestingRegistrationProperties];
    if (v139 || ([v12 requireAllRegistrationProperties], (v139 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v174 = [v12 requireLackOfRegistrationProperties];
      v175 = v174 == 0;

      if (v175)
      {
        v235 = 0;
LABEL_224:
        if (v241)
        {
          v261[0] = _NSConcreteStackBlock;
          v261[1] = 3221225472;
          v261[2] = sub_1005E9384;
          v261[3] = &unk_100BE1968;
          v262 = v241;
          v228 = objc_retainBlock(v261);
        }

        else
        {
          v228 = 0;
        }

        v149 = [v12 resourcePath];

        if (v149)
        {
          v150 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "Attempt to send a file transfer over IDS to a remote destination over File Transfer API. Only MMCS transfer is avaible at this time, uploading file", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          CFDictionarySetValue(theDict, IDSCommandKey, &off_100C3CD48);
          v151 = [IDSDaemon _IMTransferServiceController]_0();
          v152 = [v12 resourcePath];
          v153 = +[NSString stringGUID];
          v249[0] = _NSConcreteStackBlock;
          v249[1] = 3221225472;
          v249[2] = sub_1005E94A0;
          v249[3] = &unk_100BE1990;
          v250 = v12;
          v251 = theDict;
          v252 = v230;
          v253 = self;
          v254 = v231;
          v255 = v232;
          v256 = v234;
          v257 = v235;
          v258 = v228;
          v259 = v229;
          v260 = v241;
          [v151 sendFilePath:v152 topic:v252 userInfo:0 transferID:v153 sourceAppID:v239 encryptFile:1 progressBlock:0 completionBlock:v249];

          v154 = v250;
        }

        else
        {
          if ([IDSRegistrationCacheStateTransportPolicy shouldQueryUpdateOfParams:v12])
          {
            v155 = +[IDSDaemon sharedInstance];
            v156 = [v155 queryUpdateNotifier];
            v157 = [[IDSURI alloc] initWithPrefixedURI:v231];
            v158 = [v156 devicesHashForURI:v157 andService:v244];

            if (v158)
            {
              v159 = v158;
              CFDictionarySetValue(theDict, @"qH", v159);

              v160 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
              {
                v161 = [v159 debugDescription];
                *buf = 138412802;
                *v270 = v161;
                *&v270[8] = 2112;
                v271 = v231;
                v272 = 2112;
                v273 = v244;
                _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "Added query update hash {hash: %@, fromURI: %@, service: %@}", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                [v159 debugDescription];
                v181 = HIDWORD(v189) = HIDWORD(v231);
                _IDSLogV();
              }
            }
          }

          v213 = voucher_copy();
          v223 = +[IDSDeliveryController sharedInstance];
          v226 = [v12 messageUUID];
          v222 = JWUUIDPushObjectToString();
          v221 = [v12 dataToEncrypt];
          v220 = [v12 encryptionAttributes];
          v212 = [v12 wantsResponse];
          v219 = [v12 expirationDate];
          v211 = [v12 enforceRemoteTimeouts];
          v225 = [(IDSDAccount *)self service];
          v210 = [v225 canUseLargePayload];
          v224 = [(IDSDAccount *)self service];
          v209 = [v224 sendOnePerToken];
          v162 = [(IDSDAccount *)self service];
          v208 = [v162 allowPartialSendsToSucceed];
          v207 = [v12 priority];
          v206 = [v12 fireAndForget];
          v163 = [v12 fromShortHandle];
          v164 = [v12 finalDestinationURIs];
          v165 = [v12 accessToken];
          v205 = [v12 fakeMessage];
          v204 = [v12 alwaysSkipSelf];
          v203 = [v12 alwaysIncludeSelf];
          v202 = [v12 forceQuery];
          v166 = [v12 pushPriority];
          v201 = [v12 ignoreMaxRetryCount];
          v200 = [v12 disallowRefresh];
          v167 = [v12 originalTimestamp];
          v168 = [v12 prioritizedTokenList];
          v199 = [v12 wantsFirewallDonation];
          v218 = [v12 deliveryMinimumTimeDelay];
          v217 = [v12 deliveryMinimumTime];
          v216 = [v12 sendMode];
          v215 = [v12 keyTransparencyURIVerificationMap];
          v214 = [v12 sendReasonContainer];
          v169 = [v12 sendMetric];
          v170 = v166;
          v171 = v165;
          v172 = v164;
          v173 = v162;
          v245[0] = _NSConcreteStackBlock;
          v245[1] = 3221225472;
          v245[2] = sub_1005E9EF8;
          v245[3] = &unk_100BDE220;
          v246 = v12;
          v154 = v213;
          v247 = v154;
          v248 = v241;
          LOBYTE(v198) = v199;
          BYTE1(v197) = v200;
          LOBYTE(v197) = v201;
          BYTE2(v196) = v203;
          BYTE1(v196) = v204;
          LOBYTE(v196) = v205;
          LOBYTE(v194) = v206;
          BYTE3(v189) = v208;
          BYTE2(v189) = v209;
          BYTE1(v189) = v210;
          LOBYTE(v189) = v211;
          [v223 sendMessageDictionary:theDict messageID:v222 dataToEncrypt:v221 withEncryptedAttributes:v220 onService:v230 wantsResponse:v212 expirationDate:v219 enforceRemoteTimeouts:v189 canUseLargePayload:v207 sendOnePerToken:v194 allowPartialSendsToSucceed:v231 priority:v163 fireAndForget:v232 fromID:v172 fromShortHandle:v171 fromIdentity:v234 toURIs:v235 accessToken:v196 topic:v202 registrationProperties:v170 fakeMessage:v197 alwaysSkipSelf:v167 alwaysIncludeSelf:v168 forceQuery:v198 pushPriority:v233 ignoreMaxRetryCount:v218 disallowRefresh:v217 originalTimestamp:v216 prioritizedTokenList:v215 wantsFirewallDonation:v214 destinationObject:v169 deliveryMinimumTimeDelay:v228 deliveryMinimumTime:v229 sendMode:v245 KTURIVerificationMap:? sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];
        }

        v41 = theDict;
        goto LABEL_244;
      }
    }

    v235 = objc_alloc_init(IDSRegistrationProperties);
    v140 = [v12 requireAllRegistrationProperties];
    [(IDSRegistrationProperties *)v235 setRequireAll:v140];

    v141 = [v12 requireLackOfRegistrationProperties];
    [(IDSRegistrationProperties *)v235 setLackAll:v141];

    if (v240)
    {
      v142 = [v12 interestingRegistrationProperties];
      [(IDSRegistrationProperties *)v235 setInteresting:v142];
    }

    v143 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      v144 = [(IDSRegistrationProperties *)v235 requireAll];
      v145 = [(IDSRegistrationProperties *)v235 lackAll];
      v146 = [(IDSRegistrationProperties *)v235 interesting];
      *buf = 138412802;
      *v270 = v144;
      *&v270[8] = 2112;
      v271 = v145;
      v272 = 2112;
      v273 = v146;
      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "This send requires %@, a lack of %@, and is interested in %@ registration properties", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v147 = [(IDSRegistrationProperties *)v235 requireAll];
      v148 = [(IDSRegistrationProperties *)v235 lackAll];
      [(IDSRegistrationProperties *)v235 interesting];
      v192 = v188 = v148;
      v180 = v147;
      _IDSLogV();
    }

    goto LABEL_224;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v270 = v244;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Server has disabled service: %@, dropping this on the floor", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  IMLogBacktrace();
LABEL_246:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_rapportSendWithSendParameters:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 protobuf];
  if (v8)
  {
  }

  else
  {
    v9 = [v6 data];

    if (!v9)
    {
      v12 = [v6 message];
      v13 = [v6 identifier];
      v14 = [(IDSDAccount *)self service];
      v15 = [v14 pushTopic];

      v16 = [v6 command];
      v17 = [v6 finalDestinationURIs];
      v18 = [v17 __imArrayByApplyingBlock:&stru_100BE19B0];

      v19 = +[IDSRapportDeliveryController sharedInstance];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1005EA43C;
      v20[3] = &unk_100BDB638;
      v21 = v7;
      [v19 sendMessage:v12 messageID:v13 topic:v15 command:v16 destinationIDs:v18 completionBlock:v20];

      goto LABEL_7;
    }
  }

  v10 = IDSSendErrorDomain;
  v22 = NSDebugDescriptionErrorKey;
  v23 = @"IDS doesn't support sending protobuf or data to rapport destinations";
  v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v12 = [NSError errorWithDomain:v10 code:23 userInfo:v11];

  v13 = [[IDSDeliveryContext alloc] initWithResponseCode:23 error:v12 lastCall:1];
  if (v7)
  {
    (*(v7 + 2))(v7, v13);
  }

LABEL_7:
}

- (void)sendMessageWithSendParameters:(id)a3 willSendBlock:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v230 = a4;
  v232 = a5;
  im_assert_primary_base_queue();
  v233 = self;
  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if ([(IDSDAccount *)self accountType]== 2)
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending via account that's type Local -- forcing local delivery.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      [v8 setLocalDelivery:1];
    }

    v10 = [v8 destinations];
    v11 = [v10 destinationURIs];
    v12 = [v11 allObjects];
    v234[0] = _NSConcreteStackBlock;
    v234[1] = 3221225472;
    v234[2] = sub_1005EC5A4;
    v234[3] = &unk_100BD7530;
    v234[4] = self;
    v226 = [v12 __imArrayByApplyingBlock:v234];

    v13 = [(IDSDAccount *)self service];
    LODWORD(v11) = [v13 useiMessageCallerID];

    if (!v11)
    {
LABEL_33:
      v37 = [v8 fromID];
      v38 = v37 == 0;

      if (v38)
      {
        v39 = [(IDSDAccount *)v233 primaryRegistration];
        v40 = [v39 dsHandle];
        v41 = [v40 _stripFZIDPrefix];

        v42 = [(IDSDAccount *)v233 service];
        [v42 shouldRegisterUsingDSHandle];

        v43 = [(IDSDAccount *)v233 service];
        v44 = [v43 identifier];
        _IDSPrefersPhoneNumbersForServiceIdentifier();

        v45 = [(IDSDAccount *)v233 unprefixedURIStringsFromRegistration];
        v46 = _IDSCopyCallerID();
        [v8 setFromID:v46];
      }

      v231 = [v8 data];
      v47 = [v8 protobuf];

      if (v47)
      {
        v48 = [IDSProtobuf alloc];
        v49 = [v8 protobuf];
        v229 = [v48 initWithDictionary:v49];
      }

      else
      {
        v229 = 0;
      }

      v50 = [v8 message];

      if (v50)
      {
        v51 = [v8 message];
        v52 = [v51 objectForKey:IDSMessageResourceTransferURLKey];
        if (v52)
        {

          v53 = [v51 objectForKeyedSubscript:IDSMessageResourceTransferMetadataKey];
          v54 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v236 = v52;
            *&v236[8] = 2112;
            v237 = v53;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Sending Resource at path %@ with metadata %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v142 = v52;
            v146 = v53;
            _IDSLogV();
          }

          [v8 setResourcePath:{v52, v142, v146}];
          [v8 setResourceMetadata:v53];
          v231 = 0;
        }

        else
        {
          v53 = JWEncodeDictionary();

          v231 = v53;
        }
      }

      if (!v231)
      {
        if (!v229)
        {
          v227 = 0;
          v231 = 0;
          v66 = [0 length];
          goto LABEL_82;
        }

        v59 = [v229 data];
        v60 = [v59 length];

        if ([v8 compressPayload])
        {
          v61 = [v229 data];
          v227 = [v61 _FTCopyOptionallyGzippedData];

          v62 = [v227 length];
          if (v60 > v62)
          {
            v63 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109376;
              *v236 = v60;
              *&v236[4] = 1024;
              *&v236[6] = v62;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEBUG, "Compressed protobuf data from: %u  to: %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v142 = v60;
              v146 = v62;
              _IDSLogV();
            }

            v64 = [v229 data];
            [v229 setUncompressedData:v64];

            [v229 setData:v227];
            v231 = 0;
            v58 = 1;
            goto LABEL_81;
          }
        }

        else
        {
          v62 = 0;
          v227 = 0;
        }

        v67 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *v236 = v60;
          *&v236[4] = 1024;
          *&v236[6] = v62;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "Use uncompressed protobuf data (original: %u compressed: %u)", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v142 = v60;
          v146 = v62;
          _IDSLogV();
        }

        v58 = 0;
        v231 = 0;
        goto LABEL_81;
      }

      v55 = [v231 length];
      if ([v8 compressPayload])
      {
        v227 = [v231 _FTCopyOptionallyGzippedData];
        v56 = [v227 length];
        if (v55 > v56)
        {
          v57 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *v236 = v55;
            *&v236[4] = 1024;
            *&v236[6] = v56;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEBUG, "Compressed message data from: %u  to: %u", buf, 0xEu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v142 = v55;
            v146 = v56;
            _IDSLogV();
          }

          v227 = v227;

          v58 = 1;
          v231 = v227;
LABEL_81:
          [v8 setCompressed:{v58, v142, v146}];
          v66 = [v231 length];
LABEL_82:
          v68 = v66;
          v69 = [v229 data];
          v70 = [v69 length];

          v71 = [v8 message];

          v228 = v68 + v70;
          if (!v71)
          {
            v74 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v217 = [v8 bulkedPayload];
              v220 = [v8 fromID];
              loga = [v8 destinations];
              v75 = @"NO";
              if ([v8 useDictAsTopLevel])
              {
                v76 = @"YES";
              }

              else
              {
                v76 = @"NO";
              }

              v214 = v76;
              if ([v8 encryptPayload])
              {
                v77 = @"YES";
              }

              else
              {
                v77 = @"NO";
              }

              v212 = v77;
              if ([v8 wantsResponse])
              {
                v78 = @"YES";
              }

              else
              {
                v78 = @"NO";
              }

              v209 = v78;
              [v8 timeout];
              v80 = v79;
              v81 = [v8 command];
              if ([v8 wantsDeliveryStatus])
              {
                v82 = @"YES";
              }

              else
              {
                v82 = @"NO";
              }

              if ([v8 wantsCertifiedDelivery])
              {
                v83 = @"YES";
              }

              else
              {
                v83 = @"NO";
              }

              v84 = [v8 deliveryStatusContext];
              v85 = [v8 messageUUID];
              if ([v8 priority] == 300)
              {
                v86 = @"URGENT";
              }

              else if ([v8 priority] == 200)
              {
                v86 = @"Default";
              }

              else
              {
                v86 = @"Sync";
              }

              if ([v8 localDelivery])
              {
                v75 = @"YES";
              }

              v87 = objc_retainBlock(v232);
              *buf = 134221826;
              *v236 = v228;
              *&v236[8] = 2112;
              v237 = v217;
              v238 = 2112;
              v239 = v220;
              v240 = 2112;
              v241 = loga;
              v242 = 2112;
              v243 = v214;
              v244 = 2112;
              v245 = v212;
              v246 = 2112;
              v247 = v209;
              v248 = 2048;
              v249 = v80;
              v250 = 2112;
              v251 = v81;
              v252 = 2112;
              v253 = v82;
              v254 = 2112;
              v255 = v83;
              v256 = 2112;
              v257 = v84;
              v258 = 2112;
              v259 = v85;
              v260 = 2112;
              v261 = v86;
              v262 = 2112;
              v263 = v75;
              v264 = 2048;
              v265 = v87;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "sendMessage of size %lu  bulkedPayload %@ fromID %@   toDestinations %@   useDictAsTopLevel %@  encryptPayload %@  wantsResponse %@  timeout %f  command %@ wantsDeliveryStatus %@ wantsCertifiedDelivery %@ deliveryStatusContext %@ messageUUID %@  priority %@ localDelivery %@  completionBlock %p", buf, 0xA2u);
            }

            if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
            {
LABEL_202:
              v125 = [v8 bypassSizeCheck];
              if (v228 <= 0x500000)
              {
                v126 = 1;
              }

              else
              {
                v126 = v125;
              }

              if (v126)
              {
                if (([v8 bypassSizeCheck] & 1) != 0 || objc_msgSend(v8, "priority") != 300 || v228 <= 0x100000)
                {
                  [(IDSDAccount *)v233 _sendMessageWithSendParametersOnMainThread:v8 filteredDestinations:v226 data:v231 compressedData:v227 protobufToSend:v229 willSendBlock:v230 completionBlock:v232];
LABEL_214:

                  goto LABEL_215;
                }

                v136 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                {
                  v137 = [(IDSDAccount *)v233 service];
                  v138 = [v137 pushTopic];
                  *buf = 134218242;
                  *v236 = v228;
                  *&v236[8] = 2112;
                  v237 = v138;
                  _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send as urgent", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  v139 = [(IDSDAccount *)v233 service];
                  v150 = [v139 pushTopic];
                  _IDSWarnV();

                  v140 = [(IDSDAccount *)v233 service:v228];
                  v151 = [v140 pushTopic];
                  _IDSLogV();

                  v141 = [(IDSDAccount *)v233 service:v228];
                  v152 = [v141 pushTopic];
                  _IDSLogTransport();
                }

                if (!v232)
                {
                  goto LABEL_214;
                }
              }

              else
              {
                v127 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  v128 = [(IDSDAccount *)v233 service];
                  v129 = [v128 pushTopic];
                  *buf = 134218242;
                  *v236 = v228;
                  *&v236[8] = 2112;
                  v237 = v129;
                  _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send.", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  v130 = [(IDSDAccount *)v233 service];
                  v147 = [v130 pushTopic];
                  _IDSWarnV();

                  v131 = [(IDSDAccount *)v233 service:v228];
                  v148 = [v131 pushTopic];
                  _IDSLogV();

                  v132 = [(IDSDAccount *)v233 service:v228];
                  v149 = [v132 pushTopic];
                  _IDSLogTransport();
                }

                if (!v232)
                {
                  goto LABEL_214;
                }
              }

              v133 = [NSError alloc];
              v134 = [v133 initWithDomain:IDSSendErrorDomain code:8 userInfo:0];
              v135 = [[IDSDeliveryContext alloc] initWithResponseCode:8 error:v134 lastCall:1];
              (*(v232 + 2))(v232, v135);

              goto LABEL_214;
            }

            logb = [v8 bulkedPayload];
            v213 = [v8 fromID];
            v221 = [v8 destinations];
            v88 = @"NO";
            if ([v8 useDictAsTopLevel])
            {
              v89 = @"YES";
            }

            else
            {
              v89 = @"NO";
            }

            if ([v8 encryptPayload])
            {
              v90 = @"YES";
            }

            else
            {
              v90 = @"NO";
            }

            if ([v8 wantsResponse])
            {
              v91 = @"YES";
            }

            else
            {
              v91 = @"NO";
            }

            [v8 timeout];
            v93 = v92;
            v210 = [v8 command];
            if ([v8 wantsDeliveryStatus])
            {
              v94 = @"YES";
            }

            else
            {
              v94 = @"NO";
            }

            if ([v8 wantsCertifiedDelivery])
            {
              v95 = @"YES";
            }

            else
            {
              v95 = @"NO";
            }

            v218 = [v8 deliveryStatusContext];
            v207 = [v8 messageUUID];
            if ([v8 priority] == 300)
            {
              v96 = @"URGENT";
            }

            else if ([v8 priority] == 200)
            {
              v96 = @"Default";
            }

            else
            {
              v96 = @"Sync";
            }

            if ([v8 localDelivery])
            {
              v88 = @"YES";
            }

            v216 = objc_retainBlock(v232);
            v165 = v88;
            v166 = v216;
            v163 = v207;
            v164 = v96;
            v161 = v95;
            v162 = v218;
            v159 = v210;
            v160 = v94;
            v158 = v93;
            v156 = v90;
            v157 = v91;
            v154 = v221;
            v155 = v89;
            v146 = logb;
            v153 = v213;
            v142 = v228;
            _IDSLogV();
LABEL_201:

            goto LABEL_202;
          }

          log = OSLogHandleForIDSCategory();
          if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
LABEL_160:

            if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
            {
              goto LABEL_202;
            }

            logb = [v8 message];
            v213 = [logb objectForKey:@"c"];
            v110 = objc_opt_class();
            v221 = [v8 message];
            v210 = sub_10001BA3C(v110, v221, @"fID");
            v111 = objc_opt_class();
            v218 = [v8 message];
            v207 = sub_10001BA3C(v111, v218, @"fT");
            v216 = [v8 message];
            v203 = [(__CFString *)v216 objectForKey:@"g"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v201 = [v8 message];
              v199 = [v201 objectForKey:@"g"];
              v197 = [NSData _IDSDataFromBase64String:v199];
            }

            else
            {
              v201 = [v8 message];
              v199 = [v201 objectForKey:@"g"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v175 = 0;
                v197 = 0;
                goto LABEL_174;
              }

              v173 = [v8 message];
              v197 = [v173 objectForKey:@"g"];
            }

            v175 = isKindOfClass ^ 1;
LABEL_174:
            v191 = JWUUIDPushObjectToString();
            v195 = [v8 message];
            v189 = [v195 objectForKey:@"t"];
            v112 = objc_opt_class();
            v193 = [v8 message];
            v183 = sub_10001BA3C(v112, v193, @"tID");
            v187 = [v8 bulkedPayload];
            v181 = [v8 fromID];
            v185 = [v8 destinations];
            v113 = @"YES";
            if ([v8 useDictAsTopLevel])
            {
              v114 = @"YES";
            }

            else
            {
              v114 = @"NO";
            }

            v179 = v114;
            if ([v8 encryptPayload])
            {
              v115 = @"YES";
            }

            else
            {
              v115 = @"NO";
            }

            v177 = v115;
            if ([v8 wantsResponse])
            {
              v116 = @"YES";
            }

            else
            {
              v116 = @"NO";
            }

            [v8 timeout];
            v118 = v117;
            v119 = [v8 command];
            if ([v8 wantsDeliveryStatus])
            {
              v120 = @"YES";
            }

            else
            {
              v120 = @"NO";
            }

            if ([v8 wantsCertifiedDelivery])
            {
              v121 = @"YES";
            }

            else
            {
              v121 = @"NO";
            }

            v122 = [v8 deliveryStatusContext];
            v123 = [v8 messageUUID];
            if ([v8 priority] == 300)
            {
              v124 = @"URGENT";
            }

            else if ([v8 priority] == 200)
            {
              v124 = @"Default";
            }

            else
            {
              v124 = @"Sync";
            }

            if (![v8 localDelivery])
            {
              v113 = @"NO";
            }

            v170 = v113;
            v171 = objc_retainBlock(v232);
            v168 = v123;
            v169 = v124;
            v166 = v121;
            v167 = v122;
            v164 = v119;
            v165 = v120;
            v163 = v118;
            v161 = v177;
            v162 = v116;
            v159 = v185;
            v160 = v179;
            v157 = v187;
            v158 = v181;
            v155 = v189;
            v156 = v183;
            v153 = v207;
            v154 = v191;
            v142 = v213;
            v146 = v210;
            _IDSLogV();

            if (v175)
            {
            }

            if (isKindOfClass)
            {
            }

            goto LABEL_201;
          }

          v194 = [v8 message];
          v211 = [v194 objectForKey:@"c"];
          v72 = objc_opt_class();
          v192 = [v8 message];
          v208 = sub_10001BA3C(v72, v192, @"fID");
          v73 = objc_opt_class();
          v190 = [v8 message];
          v206 = sub_10001BA3C(v73, v190, @"fT");
          v188 = [v8 message];
          v186 = [v188 objectForKey:@"g"];
          objc_opt_class();
          v196 = objc_opt_isKindOfClass();
          if (v196)
          {
            v184 = [v8 message];
            v182 = [v184 objectForKey:@"g"];
            v180 = [NSData _IDSDataFromBase64String:v182];
          }

          else
          {
            v184 = [v8 message];
            v182 = [v184 objectForKey:@"g"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              LODWORD(v173) = 0;
              v180 = 0;
              goto LABEL_133;
            }

            v172 = [v8 message];
            v180 = [v172 objectForKey:@"g"];
          }

          LODWORD(v173) = v196 ^ 1;
LABEL_133:
          v198 = JWUUIDPushObjectToString();
          v178 = [v8 message];
          v200 = [v178 objectForKey:@"t"];
          v97 = objc_opt_class();
          v176 = [v8 message];
          v204 = sub_10001BA3C(v97, v176, @"tID");
          v215 = [v8 bulkedPayload];
          v219 = [v8 fromID];
          v222 = [v8 destinations];
          v98 = @"YES";
          if ([v8 useDictAsTopLevel])
          {
            v99 = @"YES";
          }

          else
          {
            v99 = @"NO";
          }

          v174 = v99;
          if ([v8 encryptPayload])
          {
            v100 = @"YES";
          }

          else
          {
            v100 = @"NO";
          }

          if ([v8 wantsResponse])
          {
            v101 = @"YES";
          }

          else
          {
            v101 = @"NO";
          }

          [v8 timeout];
          v103 = v102;
          v202 = [v8 command];
          if ([v8 wantsDeliveryStatus])
          {
            v104 = @"YES";
          }

          else
          {
            v104 = @"NO";
          }

          if ([v8 wantsCertifiedDelivery])
          {
            v105 = @"YES";
          }

          else
          {
            v105 = @"NO";
          }

          v106 = [v8 deliveryStatusContext];
          v107 = [v8 messageUUID];
          if ([v8 priority] == 300)
          {
            v108 = @"URGENT";
          }

          else if ([v8 priority] == 200)
          {
            v108 = @"Default";
          }

          else
          {
            v108 = @"Sync";
          }

          if (![v8 localDelivery])
          {
            v98 = @"NO";
          }

          v109 = objc_retainBlock(v232);
          *buf = 138417410;
          *v236 = v211;
          *&v236[8] = 2112;
          v237 = v208;
          v238 = 2112;
          v239 = v206;
          v240 = 2112;
          v241 = v198;
          v242 = 2112;
          v243 = v200;
          v244 = 2112;
          v245 = v204;
          v246 = 2112;
          v247 = v215;
          v248 = 2112;
          v249 = v219;
          v250 = 2112;
          v251 = v222;
          v252 = 2112;
          v253 = v174;
          v254 = 2112;
          v255 = v100;
          v256 = 2112;
          v257 = v101;
          v258 = 2048;
          v259 = v103;
          v260 = 2112;
          v261 = v202;
          v262 = 2112;
          v263 = v104;
          v264 = 2112;
          v265 = v105;
          v266 = 2112;
          v267 = v106;
          v268 = 2112;
          v269 = v107;
          v270 = 2112;
          v271 = v108;
          v272 = 2112;
          v273 = v98;
          v274 = 2048;
          v275 = v109;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "sendMessage { c = %@   fID = %@   fT = %@   g = %@   t = %@   tID = %@ } bulkedPayload %@ fromID %@   toDestinations %@   useDictAsTopLevel %@  encryptPayload %@  wantsResponse %@  timeout %f  command %@ wantsDeliveryStatus %@ wantsCertifiedDelivery %@ deliveryStatusContext %@ messageUUID %@  priority %@ localDelivery %@  completionBlock %p", buf, 0xD4u);

          if (v173)
          {
          }

          if (v196)
          {
          }

          goto LABEL_160;
        }
      }

      else
      {
        v56 = 0;
        v227 = 0;
      }

      v65 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v236 = v55;
        *&v236[4] = 1024;
        *&v236[6] = v56;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "Use uncompressed message data (original: %u compressed: %u)", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v142 = v55;
        v146 = v56;
        _IDSLogV();
      }

      v58 = 0;
      goto LABEL_81;
    }

    v14 = [v8 originalfromID];
    v15 = [v14 length] == 0;

    if (v15)
    {
      v31 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Service would like to use iMessage callerID for messages", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v32 = [(IDSDAccount *)self displayName];
      v19 = [v32 _stripFZIDPrefix];

      v33 = [(IDSDAccount *)self primaryRegistration];
      v34 = [v33 dsHandle];
      v24 = [v34 _stripFZIDPrefix];

      v35 = [(IDSDAccount *)self service];
      [v35 shouldRegisterUsingDSHandle];

      v25 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
      v26 = [(IDSDAccount *)self pseudonyms];
      v27 = _IDSCopyCallerIDWithPseudonyms();
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Service would like to use iMessage callerID for messages but provided their own FromID, attempting to use that instead", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v17 = [(IDSDAccount *)self primaryRegistration];
      v18 = [v17 dsHandle];
      v19 = [v18 _stripFZIDPrefix];

      v20 = [(IDSDAccount *)self service];
      [v20 shouldRegisterUsingDSHandle];

      v21 = [v8 fromID];
      v22 = [(IDSDAccount *)self pseudonymForPseudonymURIString:v21];
      v23 = v22 == 0;

      if (!v23)
      {
        goto LABEL_32;
      }

      v24 = [v8 fromID];
      v25 = [(IDSDAccount *)v233 unprefixedURIStringsFromRegistration];
      v26 = [(IDSDAccount *)v233 pseudonyms];
      v27 = _IDSCopyCallerIDWithPseudonyms();
    }

    v36 = v27;
    [v8 setFromID:v27];

LABEL_32:
    goto LABEL_33;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = [(IDSDAccount *)self uniqueID];
    *buf = 138412290;
    *v236 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    v143 = [(IDSDAccount *)self uniqueID];
    _IDSWarnV();

    v144 = [(IDSDAccount *)self uniqueID];
    _IDSLogV();

    v145 = [(IDSDAccount *)self uniqueID];
    _IDSLogTransport();
  }

  if (v232)
  {
    v30 = [[IDSDeliveryContext alloc] initWithResponseCode:9 error:0 lastCall:1];
    (*(v232 + 2))(v232, v30);
  }

LABEL_215:
}

- (void)sendMessage:(id)a3 params:(id)a4 bulkedPayload:(id)a5 fromID:(id)a6 toDestinations:(id)a7 useDictAsTopLevel:(BOOL)a8 dataToEncrypt:(id)a9 encryptPayload:(BOOL)a10 wantsResponse:(BOOL)a11 expirationDate:(id)a12 command:(id)a13 wantsDeliveryStatus:(BOOL)a14 wantsCertifiedDelivery:(BOOL)a15 deliveryStatusContext:(id)a16 messageUUID:(id)a17 priority:(int64_t)a18 localDelivery:(BOOL)a19 disallowRefresh:(BOOL)a20 willSendBlock:(id)a21 completionBlock:(id)a22
{
  v41 = a8;
  v42 = a3;
  v27 = a4;
  v28 = a5;
  v43 = a6;
  v44 = a7;
  v29 = a9;
  v45 = a12;
  v30 = a13;
  v31 = a16;
  v32 = a17;
  v33 = a21;
  v46 = a22;
  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if (!v27)
    {
      v27 = objc_alloc_init(IDSSendParameters);
    }

    [v27 setMessage:v42];
    [v27 setBulkedPayload:v28];
    [v27 setFromID:v43];
    [v27 setDestinations:v44];
    [v27 setUseDictAsTopLevel:v41];
    [v27 setDataToEncrypt:v29];
    [v27 setEncryptPayload:a10];
    [v27 setWantsResponse:a11];
    if (v45)
    {
      [v45 timeIntervalSinceNow];
      [v27 setTimeout:?];
    }

    [v27 setCommand:v30];
    [v27 setWantsDeliveryStatus:a14];
    [v27 setWantsCertifiedDelivery:a15];
    [v27 setDeliveryStatusContext:v31];
    [v27 setMessageUUID:v32];
    [v27 setPriority:a18];
    [v27 setLocalDelivery:a19];
    [v27 setDisallowRefresh:a20];
    [(IDSDAccount *)self sendMessageWithSendParameters:v27 willSendBlock:v33 completionBlock:v46];
    v34 = v46;
  }

  else
  {
    v35 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v48 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v38 = [(IDSDAccount *)self uniqueID];
      _IDSWarnV();

      v39 = [(IDSDAccount *)self uniqueID];
      _IDSLogV();

      v40 = [(IDSDAccount *)self uniqueID];
      _IDSLogTransport();
    }

    if (v46)
    {
      v37 = [[IDSDeliveryContext alloc] initWithResponseCode:9 error:0 lastCall:1];
      (*(v46 + 2))(v46, v37);
    }

    v34 = v46;
  }
}

- (void)decryptMessageData:(id)a3 guid:(id)a4 localURI:(id)a5 remoteURI:(id)a6 pushToken:(id)a7 groupID:(id)a8 command:(id)a9 encryptionType:(int64_t)a10 isLiveRetry:(BOOL)a11 replayKey:(id)a12 incomingMetric:(id)a13 completionBlock:(id)a14
{
  v59 = a3;
  v55 = a4;
  v20 = a5;
  v60 = a6;
  v61 = a7;
  v53 = a8;
  v58 = a9;
  v56 = a12;
  v57 = a13;
  v21 = a14;
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v59 length];
    v24 = objc_retainBlock(v21);
    *buf = 134219266;
    v63 = v23;
    v64 = 2112;
    v65 = v20;
    v66 = 2112;
    v67 = v60;
    v68 = 2112;
    v69 = v61;
    v70 = 2048;
    v71 = a10;
    v72 = 2048;
    v73 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "decryptMessageData length: %lu   myURI %@   fromURI %@   token %@   encryptionType %ld   completionBlock %p", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = [v59 length];
    v51 = a10;
    v52 = objc_retainBlock(v21);
    v48 = v60;
    v49 = v61;
    v43 = v25;
    v47 = v20;
    _IDSLogV();
  }

  if ([(IDSDAccount *)self isRegistrationActive:v43])
  {
    if (!v20)
    {
      v26 = [(IDSDAccount *)self loginID];
      v27 = [v26 _bestGuessURI];
      v20 = [IDSURI URIWithPrefixedURI:v27];
    }

    v28 = [(IDSDAccount *)self primaryRegistration];
    v29 = [v28 registrationCert];

    v30 = a10 - 1;
    if (a10 - 1) < 6 && ((0x39u >> v30))
    {
      v54 = qword_1009ABFB8[v30];
      v31 = [IDSCryptionContext alloc];
      v32 = +[IDSPushHandler sharedInstance];
      v33 = [v32 pushToken];
      v34 = [IDSPushToken pushTokenWithData:v33];
      v35 = [(IDSDAccount *)self service];
      v36 = [v35 identifier];
      v37 = [(IDSCryptionContext *)v31 initWithGuid:v55 sendingURI:v60 sendingPushToken:v61 receivingURI:v20 receivingPushToken:v34 service:v36];

      [(IDSCryptionContext *)v37 setMessageType:[(IDSDAccount *)self messageTypeForCommand:v58]];
      [(IDSCryptionContext *)v37 setIncomingMetric:v57];
      [(IDSCryptionContext *)v37 setCommand:v58];
      v38 = +[IDSEncryptionController sharedInstance];
      v39 = [(IDSDAccount *)self service];
      v40 = [v39 identifier];
      LOBYTE(v50) = 0;
      [(IDSDecryptionMetadata *)v38 publicKeyDecryptData:v59 decryptionContext:v37 identity:v29 service:v40 priority:300 isRetry:a11 replayKey:v56 publicKeyType:v54 completionBlock:v21 avoidMainQueue:v50];
    }

    else
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [NSNumber numberWithInteger:a10];
        *buf = 138412290;
        v63 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Invalid encryption type -- failing {encryptionType: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v45 = [NSNumber numberWithInteger:a10];
        _IDSWarnV();

        v46 = [NSNumber numberWithInteger:a10, v45];
        _IDSLogV();

        v44 = [NSNumber numberWithInteger:a10, v46];
        _IDSLogTransport();
      }

      v37 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:16 userInfo:0, v44];
      v38 = [[IDSDecryptionMetadata alloc] initWithEncryptionType:a10];
      (*(v21 + 2))(v21, 0, 0, 0, 0, v37, v38);
    }
  }

  else
  {
    v29 = +[IMRGLog warning];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10092C7C4(self, v29);
    }
  }
}

- (BOOL)shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)a3
{
  v4 = a3;
  v5 = [v4 fromID];
  im_assert_primary_base_queue();
  v6 = [(IDSDAccount *)self pairingManager];
  v7 = [v6 isPaired];

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [(IDSDAccount *)self pairingManager];
  v9 = [v8 isCurrentDeviceTinkerConfiguredWatch];

  if (v9)
  {
    goto LABEL_15;
  }

  v10 = [(IDSDAccount *)self pairingManager];
  v11 = [v10 activePairedDeviceHasPairingType:1];

  if (v11)
  {
    goto LABEL_15;
  }

  v12 = [(IDSDAccount *)self service];
  v13 = [v12 shouldAllowProxyDelivery];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [(IDSDAccount *)self service];
  v15 = [v14 identifier];
  v16 = IDSServiceNameiMessage;
  if (![v15 isEqualToString:IDSServiceNameiMessage])
  {
    goto LABEL_12;
  }

  v17 = [v4 command];
  if (![v17 isEqualToNumber:&off_100C3CD78] || (objc_msgSend(v4, "deliveryMinimumTime"), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_12:
    goto LABEL_13;
  }

  v19 = [v4 queueOneIdentifier];

  if (v19)
  {
    v20 = [(IDSDAccount *)self pairingManager];
    v21 = [v20 pairedDeviceSupportsSendLaterMessages];

    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  v22 = [(IDSDAccount *)self service];
  v23 = [v22 identifier];
  if ([v23 isEqualToString:v16])
  {
    v24 = [v4 command];
    v25 = [v24 isEqualToNumber:&off_100C3CD90];

    if (v25)
    {
LABEL_15:
      v26 = 0;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v28 = [(IDSDAccount *)self accountController];
  v29 = [(IDSDAccount *)self service];
  v48 = [v28 accountsOnService:v29];

  if ([v48 count] == 1)
  {
    v30 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Only 1 account exists on this service, We will need to proxy this and include the default paired device as a destination", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v26 = 1;
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v48;
    v46 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v46)
    {
      v44 = *v55;
      v43 = IDSDevicePropertyIdentities;
      v31 = IDSDevicePropertyIdentitiesURI;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v49 = [*(*(&v54 + 1) + 8 * i) defaultPairedDependentRegistration];
          if (v49)
          {
            v32 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = v49;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Found Default paired device %@ ", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v41 = v49;
              _IDSLogV();
            }

            v33 = [v49 objectForKey:{v43, v41}];
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v34 = v33;
            v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
            if (v35)
            {
              v36 = *v51;
              while (2)
              {
                for (j = 0; j != v35; j = j + 1)
                {
                  if (*v51 != v36)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v38 = [*(*(&v50 + 1) + 8 * j) _stringForKey:{v31, v41}];
                  v39 = OSLogHandleForIDSCategory();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v59 = v38;
                    v60 = 2112;
                    v61 = v5;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Comparing %@  To %@ ", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v41 = v38;
                    v42 = v5;
                    _IDSLogV();
                  }

                  if (_FTAreIDsEquivalent())
                  {
                    v40 = OSLogHandleForIDSCategory();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "These ID's are the same, We will not be proxying this message", buf, 2u);
                    }

                    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                    {
                      _IDSLogV();
                    }

                    v26 = 0;
                    goto LABEL_60;
                  }
                }

                v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
                if (v35)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
        v26 = 1;
      }

      while (v46);
    }

    else
    {
      v26 = 1;
    }

LABEL_60:
  }

LABEL_16:
  return v26;
}

@end