@interface IDSDAccount
+ (BOOL)dependentRegistration:(id)registration hasDependentRegistrationWithURI:(id)i token:(id)token;
+ (void)_sendLocallyWithSendParameters:(id)parameters service:(id)service uriToLocalDestination:(id)destination data:(id)data protobuf:(id)protobuf threadContext:(id)context progressBlock:(id)block completionBlock:(id)self0;
+ (void)_splitDestinations:(id)destinations intoLocalDestinations:(id *)localDestinations remoteDestinations:(id *)remoteDestinations threadContext:(id)context sendParameters:(id)parameters;
+ (void)dependentRegistration:(id)registration findDeviceUniqueID:(id *)d btID:(id *)iD forURI:(id)i token:(id)token supportsLiveDelivery:(BOOL *)delivery;
+ (void)sendMessageWithSendParameters:(id)parameters service:(id)service threadContext:(id)context willSendBlock:(id)block progressBlock:(id)progressBlock completionBlock:(id)completionBlock;
- (BOOL)_hasBudgetForForcedGDR;
- (BOOL)_isPasswordPromptPermissibleDuringAuthentication;
- (BOOL)_issueForcedDependentCheckIfPossible;
- (BOOL)_migrateRegistrationIfNeeded;
- (BOOL)_rebuildRegistrationInfo:(BOOL)info;
- (BOOL)_stopRegistrationAgent;
- (BOOL)forEachAdhocAccount:(id)account;
- (BOOL)hasAliasURI:(id)i;
- (BOOL)hasDependentRegistrationWithURI:(id)i token:(id)token;
- (BOOL)hasEverRegistered;
- (BOOL)hasVettedAliasURI:(id)i;
- (BOOL)isAdHocAccount;
- (BOOL)isDeviceAuthenticated;
- (BOOL)isDeviceRegistered;
- (BOOL)isEnabled;
- (BOOL)isTemporary;
- (BOOL)isUsableForSending;
- (BOOL)isUserDisabled;
- (BOOL)provisionPseudonymForURI:(id)i properties:(id)properties requestProperties:(id)requestProperties completionBlock:(id)block;
- (BOOL)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties completionBlock:(id)block;
- (BOOL)revokePseudonym:(id)pseudonym requestProperties:(id)properties completionBlock:(id)block;
- (BOOL)shouldAutoRegisterAllHandles;
- (BOOL)shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)params;
- (BOOL)shouldRegisterUsingDSHandle;
- (BOOL)updateKTOptInStatus:(BOOL)status withCompletion:(id)completion;
- (BOOL)updateKTOptInStatusWithRequest:(id)request withCompletion:(id)completion;
- (IDSDAccount)initWithDictionary:(id)dictionary service:(id)service uniqueID:(id)d;
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
- (id)_allUserIntentWithDefaultReason:(BOOL)reason;
- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)device includingCurrentDevice:(BOOL)currentDevice includingTinker:(BOOL)tinker;
- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)device includingTinker:(BOOL)tinker;
- (id)_fromIDFromDevice:(id)device withCBUUID:(id)d uniqueID:(id)iD;
- (id)_initWithLoginID:(id)d service:(id)service uniqueID:(id)iD accountType:(int)type accountConfig:(id)config primaryAccount:(id)account isAdHocAccount:(BOOL)hocAccount;
- (id)_performedForcedGDRDatePeriod;
- (id)_registrationCert;
- (id)_unprefixedURIStringsFromAccountInfo;
- (id)_uriDictionariesFromAccountInfo;
- (id)_userIntentDictForAlias:(id)alias;
- (id)accountAndAdHocAccounts;
- (id)adHocAccounts;
- (id)defaultPairedDependentRegistrationIncludingTinker:(BOOL)tinker;
- (id)dependentRegistrationMatchingUUID:(id)d includingTinker:(BOOL)tinker;
- (id)fromIDForCBUUID:(id)d deviceID:(id)iD;
- (id)invisibleAliases;
- (id)newSendMessageContext;
- (id)primaryAccount;
- (id)primaryAccountUniqueID;
- (id)primaryServiceName;
- (id)pseudonymForPseudonymURIString:(id)string;
- (id)senderKeyDistributionManager;
- (id)serviceType;
- (id)smallDescription;
- (id)vettedAliases;
- (int)_currentForcedGDRCount;
- (int)_neededRegistrationType;
- (int)accountType;
- (int)registrationErrorReason;
- (int)registrationStatus;
- (int64_t)_validationStatusForAlias:(id)alias;
- (int64_t)lastRegistrationFailureError;
- (int64_t)maxRemoteMessagingPayloadSize;
- (int64_t)registrationError;
- (unint64_t)_handleAndConvertFeatureToggleError:(int64_t)error;
- (unsigned)currentAliasState:(id)state;
- (unsigned)unselectReasonForAlias:(id)alias;
- (void)_addAliases:(id)aliases;
- (void)_addPseudonym:(id)pseudonym;
- (void)_addPseudonyms:(id)pseudonyms;
- (void)_authenticateAccount;
- (void)_broadcastAccountInfoChanged;
- (void)_broadcastAccountMessageBlock:(id)block;
- (void)_checkRegistration;
- (void)_cleanupAccount;
- (void)_clearForcedGDRCount;
- (void)_clearForcedGDRDate;
- (void)_clearGDRState;
- (void)_deregisterDeviceCenterNotifications;
- (void)_flushTokensForRegisteredURIs:(id)is;
- (void)_handleKTOptInStatusUpdateError:(int64_t)error;
- (void)_handlePseudonymProvisionError:(int64_t)error;
- (void)_identityGenerated:(id)generated;
- (void)_identityRebuilt:(id)rebuilt;
- (void)_incrementForcedGDRCount;
- (void)_issueCriticalDependentCheck;
- (void)_issueDependentCheck;
- (void)_keychainMigrationComplete:(id)complete;
- (void)_needsEncryptionIdentityRoll:(id)roll;
- (void)_notifyClientDelegatesWithBlock:(id)block;
- (void)_notifyDelegatesAddedLocalDevice:(id)device;
- (void)_notifyListenersAndSetDependentRegistrations:(id)registrations onRegistrationInfo:(id)info;
- (void)_notifyListenersWithChanges:(id)changes;
- (void)_notifyRegistrationListenersAccountDidUpdateRegisteredDevices;
- (void)_parseHandlesInfo:(id)info currentAliases:(id)aliases currentVettedAliases:(id)vettedAliases;
- (void)_processReceivedDependentRegistration:(id)registration oldDependentRegistrations:(id)registrations;
- (void)_rapportSendWithSendParameters:(id)parameters completionBlock:(id)block;
- (void)_reAuthenticate;
- (void)_refreshRegistration;
- (void)_registerAccount;
- (void)_registerForDeviceCenterNotifications;
- (void)_registrationAbilityChanged:(id)changed;
- (void)_removeAliases:(id)aliases withReason:(unsigned __int8)reason;
- (void)_removeAllPseudonyms;
- (void)_removeAuthenticationCredentialsIncludingAuthToken:(BOOL)token;
- (void)_removePseudonym:(id)pseudonym;
- (void)_removePseudonyms:(id)pseudonyms;
- (void)_reregisterAndReProvision;
- (void)_reregisterAndReidentify:(BOOL)reidentify;
- (void)_resetVariables;
- (void)_retryRegister;
- (void)_saveAndNotifyGDRUpdate;
- (void)_sendLocallyWithSendParameters:(id)parameters uriToLocalDestination:(id)destination data:(id)data protobuf:(id)protobuf completionBlock:(id)block;
- (void)_sendMessageWithSendParametersOnMainThread:(id)thread filteredDestinations:(id)destinations data:(id)data compressedData:(id)compressedData protobufToSend:(id)send willSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)_sendRemotelyWithSendParameters:(id)parameters data:(id)data protobuf:(id)protobuf willSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)_setUserIntentState:(unsigned __int8)state forAlias:(id)alias withReason:(unsigned __int8)reason;
- (void)_setValidationStatus:(int64_t)status error:(int)error forAlias:(id)alias info:(id)info addToCurrentHandlesIfNeeded:(BOOL)needed forceAdd:(BOOL)add aliasProperties:(id)properties;
- (void)_setupAccount;
- (void)_splitDestinations:(id)destinations intoLocalDestinations:(id *)localDestinations remoteDestinations:(id *)remoteDestinations rapportDestinations:(id *)rapportDestinations sendParameters:(id)parameters;
- (void)_stopTrackingUserIntentOfAlias:(id)alias;
- (void)_unregisterAccount;
- (void)_unvalidateAliases:(id)aliases;
- (void)_updateAccountWithAccountInfo:(id)info;
- (void)_updateCallerIDToTemporaryPhone;
- (void)_updateHandles:(BOOL)handles;
- (void)_updatePerformedForcedGDRDate;
- (void)_updatePhoneNumberCallerID;
- (void)_updatePseudonymsFromEmailInfo:(id)info;
- (void)_updateRegistrationStatusWithError:(int64_t)error info:(id)info;
- (void)_updateSessionsForAllRegisteredURIsWithSendReasonPathID:(int64_t)d;
- (void)_updateSessionsWithRegisteredURIs:(id)is retryIfNotRegistered:(BOOL)registered sendReasonPathID:(int64_t)d;
- (void)_updateVettedAliases:(id)aliases emailInfo:(id)info addToCurrentHandlesIfNeeded:(BOOL)needed;
- (void)_validateAliases:(id)aliases;
- (void)_validateAliases:(id)aliases validateAlreadyValid:(BOOL)valid;
- (void)_writeAccountDefaults:(id)defaults force:(BOOL)force interestedSubservices:(id)subservices;
- (void)activateRegistration;
- (void)addAliases:(id)aliases;
- (void)addRegistrationListener:(id)listener;
- (void)askPeersToClearCacheWithURIs:(id)is fromURI:(id)i forService:(id)service;
- (void)authenticateAccount;
- (void)center:(id)center failedAuthentication:(id)authentication error:(int64_t)error info:(id)info;
- (void)center:(id)center failedRegionValidation:(id)validation error:(int64_t)error info:(id)info;
- (void)center:(id)center startedAuthenticating:(id)authenticating;
- (void)center:(id)center succeededAuthentication:(id)authentication;
- (void)center:(id)center succeededCurrentEmailsRequest:(id)request emailInfo:(id)info;
- (void)center:(id)center succeededIdentification:(id)identification phoneNumber:(id)number token:(id)token;
- (void)center:(id)center succeededRegionValidation:(id)validation regionID:(id)d phoneNumber:(id)number extraContext:(id)context verified:(BOOL)verified;
- (void)clearDisplayName;
- (void)deactivateAndPurgeIdentify;
- (void)deactivateRegistration;
- (void)dealloc;
- (void)decryptMessageData:(id)data guid:(id)guid localURI:(id)i remoteURI:(id)rI pushToken:(id)token groupID:(id)d command:(id)command encryptionType:(int64_t)self0 isLiveRetry:(BOOL)self1 replayKey:(id)self2 incomingMetric:(id)self3 completionBlock:(id)self4;
- (void)didAddPairedDevice:(id)device;
- (void)didRemovePairedDevice:(id)device;
- (void)didUpdatePairedDevice:(id)device;
- (void)didUpdateProtocolForPairedDevice:(id)device;
- (void)findDeviceUniqueID:(id *)d btID:(id *)iD forURI:(id)i token:(id)token supportsLiveDelivery:(BOOL *)delivery;
- (void)gdrReAuthenticateIfNecessary;
- (void)handler:(id)handler flushCacheForURIs:(id)is;
- (void)handler:(id)handler profile:(id)profile deviceUpdated:(id)updated service:(id)service;
- (void)handler:(id)handler profileHandlesUpdated:(id)updated status:(id)status allowGDR:(id)r;
- (void)handler:(id)handler pushTokenChanged:(id)changed;
- (void)handler:(id)handler reloadBag:(id)bag;
- (void)markAsUnvettedAlias:(id)alias;
- (void)markAsVettedAlias:(id)alias;
- (void)passwordUpdated;
- (void)refreshAdHocServiceNames;
- (void)refreshVettedAliases;
- (void)registerAccount;
- (void)registrationController:(id)controller deregistrationSucceeded:(id)succeeded;
- (void)registrationController:(id)controller deregistrationWillStart:(id)start;
- (void)registrationController:(id)controller registrationFailed:(id)failed error:(int64_t)error info:(id)info;
- (void)registrationController:(id)controller registrationSucceeded:(id)succeeded;
- (void)registrationController:(id)controller registrationUpdated:(id)updated;
- (void)registrationController:(id)controller registrationWillStart:(id)start;
- (void)registrationControllerNeedsNewRegistration:(id)registration;
- (void)removeAliases:(id)aliases;
- (void)removeRegistrationListener:(id)listener;
- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion;
- (void)reportClientEvent:(id)event completionBlock:(id)block;
- (void)reportMessage:(id)message toURI:(id)i;
- (void)reportSpamWithMessages:(id)messages toURI:(id)i;
- (void)reportiMessageUnknownSender:(id)sender messageID:(id)d isBlackholed:(BOOL)blackholed isJunked:(BOOL)junked messageServerTimestamp:(id)timestamp toURI:(id)i;
- (void)resetErrorState;
- (void)retrieveFeatureToggleStateForOptions:(id)options completionBlock:(id)block;
- (void)sendMessage:(id)message params:(id)params bulkedPayload:(id)payload fromID:(id)d toDestinations:(id)destinations useDictAsTopLevel:(BOOL)level dataToEncrypt:(id)encrypt encryptPayload:(BOOL)self0 wantsResponse:(BOOL)self1 expirationDate:(id)self2 command:(id)self3 wantsDeliveryStatus:(BOOL)self4 wantsCertifiedDelivery:(BOOL)self5 deliveryStatusContext:(id)self6 messageUUID:(id)self7 priority:(int64_t)self8 localDelivery:(BOOL)self9 disallowRefresh:(BOOL)refresh willSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)sendMessageWithSendParameters:(id)parameters willSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)sendSenderKeyMessageToDestinations:(id)destinations fromURI:(id)i guid:(id)guid messageData:(id)data sendReasonPathID:(int64_t)d completionBlock:(id)block;
- (void)sendServerMessage:(id)message command:(id)command completionBlock:(id)block;
- (void)setDisplayName:(id)name;
- (void)setExpirationDate:(id)date;
- (void)setGameCenterData:(id)data;
- (void)setIsBeingRemoved:(BOOL)removed;
- (void)setIsTemporary:(BOOL)temporary;
- (void)setIsUserDisabled:(BOOL)disabled;
- (void)setLoginID:(id)d;
- (void)setObject:(id)object forKey:(id)key;
- (void)setPendingDependentCheck:(BOOL)check;
- (void)setRegistrationStatus:(int)status error:(int64_t)error alertInfo:(id)info;
- (void)setUserUniqueIdentifier:(id)identifier;
- (void)setupAccountWithCompletionBlock:(id)block;
- (void)systemDidFinishMigration;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)systemDidStartBackup;
- (void)systemRestoreStateDidChange;
- (void)unregisterAccount;
- (void)unvalidateAliases:(id)aliases;
- (void)updateAuthorizationCredentials:(id)credentials token:(id)token;
- (void)updateFeatureToggleStateWithOptions:(id)options completionBlock:(id)block;
- (void)validateAliases:(id)aliases;
- (void)validateCredentialsWithDeliveryCompletionBlock:(id)block;
- (void)validateProfile;
@end

@implementation IDSDAccount

- (NSDictionary)accountSetupInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  accountInfo = [(IDSDAccount *)self accountInfo];
  if ([accountInfo count])
  {
    [v3 addEntriesFromDictionary:accountInfo];
  }

  uniqueID = [(IDSDAccount *)self uniqueID];
  [v3 setObject:uniqueID forKey:kIDSServiceDefaultsUniqueIDKey];

  service = [(IDSDAccount *)self service];
  identifier = [service identifier];
  [v3 setObject:identifier forKey:kIDSServiceDefaultsServiceNameKey];

  prefixedURIStringsFromRegistration = [(IDSDAccount *)self prefixedURIStringsFromRegistration];
  if (prefixedURIStringsFromRegistration)
  {
    [v3 setObject:prefixedURIStringsFromRegistration forKey:kIDSServiceDefaultsRegisteredURIs];
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
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)accountType
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsAccountTypeKey];
  intValue = [v2 intValue];

  return intValue;
}

- (IDSRegistration)primaryRegistration
{
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v3 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsPrimaryAccountKey];
    v4 = +[IDSDAccountController sharedInstance];
    v5 = [v4 accountWithUniqueID:v3];

    registration = [v5 registration];
  }

  else
  {
    registration = [(IDSDAccount *)self registration];
  }

  return registration;
}

- (BOOL)isAdHocAccount
{
  accountInfo = [(IDSDAccount *)self accountInfo];
  v3 = [accountInfo objectForKey:kIDSServiceDefaultsPrimaryServiceNameKey];
  v4 = [v3 length] != 0;

  return v4;
}

- (NSArray)prefixedURIStringsFromRegistration
{
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  uris = [primaryRegistration uris];

  return uris;
}

- (NSString)description
{
  context = objc_autoreleasePoolPush();
  service = [(IDSDAccount *)self service];
  loginID = [(IDSDAccount *)self loginID];
  uniqueID = [(IDSDAccount *)self uniqueID];
  [(IDSDAccount *)self accountType];
  v6 = _StringForIDSAccountType();
  registration = [(IDSDAccount *)self registration];
  if ([(IDSDAccount *)self isRegistered])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = sub_100016528([(IDSDAccount *)self registrationError]);
  linkedAccounts = [(IDSDAccount *)self linkedAccounts];
  v11 = [linkedAccounts arrayByApplyingSelector:"uniqueID"];
  v12 = [NSString stringWithFormat:@"IDSDAccount: %p [Service: %@ Login: %@ UniqueID: %@ Account Type: %@ Registration: %@  Registered: %@  Registration Error: %@  Linked Accounts: %@]", self, service, loginID, uniqueID, v6, registration, v8, v9, v11];

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
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (NSArray)linkedAccounts
{
  v3 = +[IDSDServiceController sharedInstance];
  selfCopy = self;
  service = [(IDSDAccount *)self service];
  v5 = [v3 linkedServicesForService:service];

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
        v11 = selfCopy;
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
              accountType = [(IDSDAccount *)v11 accountType];
              if (accountType == 2)
              {
                if ([v15 accountType] == 2)
                {
                  goto LABEL_33;
                }
              }

              else if (accountType == 1)
              {
                v20 = v9;
                accountType2 = [v15 accountType];
                v22 = accountType2 == 1;
                loginID = [v15 loginID];
                lowercaseString = [loginID lowercaseString];
                loginID2 = [(IDSDAccount *)v11 loginID];
                lowercaseString2 = [loginID2 lowercaseString];
                if (IMAreObjectsLogicallySame())
                {
                  v9 = v20;
                }

                else
                {
                  loginID3 = [v15 loginID];
                  if ([loginID3 length])
                  {
                    v22 = 0;
                  }

                  else
                  {
                    loginID4 = [(IDSDAccount *)selfCopy loginID];
                    v28 = [loginID4 length];
                    v22 = accountType2 == 1 && v28 == 0;
                  }

                  v9 = v20;

                  v11 = selfCopy;
                }

                v13 = v37;

                v12 = v39;
                if (v22)
                {
LABEL_33:
                  [v40 addObject:v15];
                }
              }

              else if (!accountType && ![v15 accountType])
              {
                userUniqueIdentifier = [v15 userUniqueIdentifier];
                userUniqueIdentifier2 = [(IDSDAccount *)v11 userUniqueIdentifier];
                v19 = [userUniqueIdentifier isEqualToString:userUniqueIdentifier2];

                v11 = selfCopy;
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
    service = [(IDSDAccount *)self service];
    identifier = [service identifier];

    v3 = identifier;
  }

  return v3;
}

- (NSArray)pseudonyms
{
  v32 = objc_alloc_init(NSMutableArray);
  v26 = objc_autoreleasePoolPush();
  selfCopy = self;
  accountInfo = [(IDSDAccount *)self accountInfo];
  v4 = [accountInfo objectForKey:kIDSServiceDefaultsPseudonymsKey];

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

              allowedServices = [v16 allowedServices];
              service = [(IDSDAccount *)selfCopy service];
              identifier = [service identifier];
              v20 = [allowedServices containsObject:identifier];

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
  service = [(IDSDAccount *)self service];
  identifier = [service identifier];
  [(IDSDAccountSendMessageContext *)v3 setServiceIdentifier:identifier];

  pushTopic = [service pushTopic];
  [(IDSDAccountSendMessageContext *)v3 setServicePushTopic:pushTopic];

  duetIdentifiers = [service duetIdentifiers];
  [(IDSDAccountSendMessageContext *)v3 setServiceDuetIdentifiers:duetIdentifiers];

  -[IDSDAccountSendMessageContext setServiceAdHocType:](v3, "setServiceAdHocType:", [service adHocServiceType]);
  -[IDSDAccountSendMessageContext setServiceIsDSBased:](v3, "setServiceIsDSBased:", [service shouldRegisterUsingDSHandle]);
  -[IDSDAccountSendMessageContext setServiceAllowProxyDelivery:](v3, "setServiceAllowProxyDelivery:", [service shouldAllowProxyDelivery]);
  -[IDSDAccountSendMessageContext setServiceAllowLocalDelivery:](v3, "setServiceAllowLocalDelivery:", [service allowLocalDelivery]);
  -[IDSDAccountSendMessageContext setServiceAllowWiProxDelivery:](v3, "setServiceAllowWiProxDelivery:", [service allowWiProxDelivery]);
  -[IDSDAccountSendMessageContext setServiceAllowLiveMessageDelivery:](v3, "setServiceAllowLiveMessageDelivery:", [service shouldAllowLiveMessageDelivery]);
  -[IDSDAccountSendMessageContext setServiceUseiMessageCallerID:](v3, "setServiceUseiMessageCallerID:", [service useiMessageCallerID]);
  -[IDSDAccountSendMessageContext setServiceWantsReflectedSend:](v3, "setServiceWantsReflectedSend:", [service wantsLocalReflectedSend]);
  -[IDSDAccountSendMessageContext setServiceWantsTinkerDevices:](v3, "setServiceWantsTinkerDevices:", [service wantsTinkerDevices]);
  -[IDSDAccountSendMessageContext setSilentlyFailMessagesOnSwitch:](v3, "setSilentlyFailMessagesOnSwitch:", [service shouldSilentlyFailMessagesOnSwitch]);
  -[IDSDAccountSendMessageContext setShouldProtectTrafficUsingClassA:](v3, "setShouldProtectTrafficUsingClassA:", [service shouldProtectTrafficUsingClassA]);
  -[IDSDAccountSendMessageContext setShouldAllowCloudDelivery:](v3, "setShouldAllowCloudDelivery:", [service shouldAllowCloudDelivery]);
  [(IDSDAccountSendMessageContext *)v3 setAccountType:[(IDSDAccount *)self accountType]];
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  dsHandle = [primaryRegistration dsHandle];
  [(IDSDAccountSendMessageContext *)v3 setPrimaryRegistrationDSHandle:dsHandle];

  displayName = [(IDSDAccount *)self displayName];
  [(IDSDAccountSendMessageContext *)v3 setAccountDisplayName:displayName];

  primaryRegistration2 = [(IDSDAccount *)self primaryRegistration];
  uris = [primaryRegistration2 uris];
  [(IDSDAccountSendMessageContext *)v3 setPrimaryRegistrationURIs:uris];

  [(IDSDAccountSendMessageContext *)v3 setIsRegistrationActive:[(IDSDAccount *)self isRegistrationActive]];
  v13 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [service wantsTinkerDevices]);
  [(IDSDAccountSendMessageContext *)v3 setDependentRegistrations:v13];

  v14 = -[IDSDAccount defaultPairedDependentRegistrationIncludingTinker:](self, "defaultPairedDependentRegistrationIncludingTinker:", [service wantsTinkerDevices]);
  [(IDSDAccountSendMessageContext *)v3 setDefaultPairedDependentRegistrations:v14];

  v15 = +[IDSDAccountController sharedInstance];
  v16 = [v15 appleIDAccountOnService:service];
  dependentRegistrations = [v16 dependentRegistrations];
  [(IDSDAccountSendMessageContext *)v3 setAppleIDPrimaryDependentRegistrations:dependentRegistrations];

  unprefixedURIStringsFromRegistration = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  [(IDSDAccountSendMessageContext *)v3 setAliasStrings:unprefixedURIStringsFromRegistration];

  pseudonyms = [(IDSDAccount *)self pseudonyms];
  [(IDSDAccountSendMessageContext *)v3 setPseudonyms:pseudonyms];

  smallDescription = [(IDSDAccount *)self smallDescription];
  [(IDSDAccountSendMessageContext *)v3 setAccountDescription:smallDescription];

  service2 = [(IDSDAccount *)self service];
  -[IDSDAccountSendMessageContext setDataProtectionClass:](v3, "setDataProtectionClass:", [service2 dataProtectionClass]);

  return v3;
}

- (NSArray)unprefixedURIStringsFromRegistration
{
  if ([(IDSDAccount *)self accountType]== 2)
  {
    registration = [(IDSDAccount *)self registration];
    uris = [registration uris];
    v5 = [uris count];

    if (v5)
    {
      prefixedURIStringsFromRegistration = [(IDSDAccount *)self prefixedURIStringsFromRegistration];
    }

    else
    {
      prefixedURIStringsFromRegistration = 0;
    }
  }

  else
  {
    primaryRegistration = [(IDSDAccount *)self primaryRegistration];
    prefixedURIStringsFromRegistration = [primaryRegistration uris];
  }

  v8 = [prefixedURIStringsFromRegistration __imArrayByApplyingBlock:&stru_100BDD448];

  return v8;
}

- (id)smallDescription
{
  v3 = objc_autoreleasePoolPush();
  service = [(IDSDAccount *)self service];
  identifier = [service identifier];
  loginID = [(IDSDAccount *)self loginID];
  [(IDSDAccount *)self accountType];
  v7 = _StringForIDSAccountType();
  uniqueID = [(IDSDAccount *)self uniqueID];
  isRegistered = [(IDSDAccount *)self isRegistered];
  v10 = @"NO";
  if (isRegistered)
  {
    v10 = @"YES";
  }

  v11 = [NSString stringWithFormat:@"<%@:%@:%@:%@:%@>", identifier, loginID, v7, uniqueID, v10];

  objc_autoreleasePoolPop(v3);

  return v11;
}

- (IDSDAccount)superAccount
{
  service = [(IDSDAccount *)self service];
  superService = [service superService];

  if (![superService length])
  {
    firstObject = 0;
    goto LABEL_15;
  }

  v5 = +[IDSDServiceController sharedInstance];
  v6 = [v5 serviceWithPushTopic:superService];

  accountType = [(IDSDAccount *)self accountType];
  if (accountType)
  {
    if (accountType == 1)
    {
      v8 = +[IDSDAccountController sharedInstance];
      firstObject2 = [v8 appleIDAccountOnService:v6];
    }

    else
    {
      if (accountType != 2)
      {
        firstObject = 0;
        goto LABEL_14;
      }

      v8 = +[IDSDAccountController sharedInstance];
      firstObject2 = [v8 localAccountOnService:v6];
    }

    goto LABEL_8;
  }

  v11 = +[IDSDAccountController sharedInstance];
  v8 = [v11 accountsOnService:v6 withType:0];

  if (![v8 count])
  {
    firstObject = 0;
    goto LABEL_9;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10048AA98;
  v14[3] = &unk_100BDCF30;
  v14[4] = self;
  v12 = [v8 __imArrayByFilteringWithBlock:v14];
  firstObject = [v12 firstObject];

  if (!firstObject)
  {
    firstObject2 = [v8 firstObject];
LABEL_8:
    firstObject = firstObject2;
  }

LABEL_9:

LABEL_14:
LABEL_15:

  return firstObject;
}

- (id)_registrationCert
{
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  registrationCert = [primaryRegistration registrationCert];

  return registrationCert;
}

- (BOOL)isDeviceRegistered
{
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  if ([primaryRegistration registrationStatus] == 8)
  {
    primaryRegistration2 = [(IDSDAccount *)self primaryRegistration];
    registrationCert = [primaryRegistration2 registrationCert];
    v6 = registrationCert != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDeviceAuthenticated
{
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  v3 = [primaryRegistration registrationStatus] > 5;

  return v3;
}

- (id)_unprefixedURIStringsFromAccountInfo
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _uriDictionariesFromAccountInfo = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
  v5 = [_uriDictionariesFromAccountInfo countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_uriDictionariesFromAccountInfo);
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

      v6 = [_uriDictionariesFromAccountInfo countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_uriDictionariesFromAccountInfo
{
  accountInfo = [(IDSDAccount *)self accountInfo];
  v3 = [accountInfo objectForKey:kIDSServiceDefaultsAliasesKey];
  v4 = [v3 __imArrayByApplyingBlock:&stru_100BDEFB8];

  return v4;
}

- (id)vettedAliases
{
  accountInfo = [(IDSDAccount *)self accountInfo];
  v3 = [accountInfo objectForKey:kIDSServiceDefaultsVettedAliasesKey];

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
  idsUserID = [(IDSRegistration *)self->_registrationInfo idsUserID];
  [v6 resetExpiryForUser:idsUserID];
}

- (void)_issueDependentCheck
{
  if (self->_registrationInfo && ![(IDSDAccount *)self isAdHocAccount])
  {
    systemMonitor = [(IDSDAccount *)self systemMonitor];
    isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

    if (isUnderFirstDataProtectionLock)
    {
      v5 = +[IMRGLog GDR];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v18 = uniqueID;
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
        uniqueID = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v18 = uniqueID;
        v7 = "Not issuing dependancy check, we're not through buddy yet for: %@";
        goto LABEL_9;
      }

LABEL_10:

      *(self + 80) |= 0x20u;
      return;
    }

    if ((*(self + 80) & 8) != 0)
    {
      registrationCenter = +[IMRGLog GDR];
      if (os_log_type_enabled(registrationCenter, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID2 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v18 = uniqueID2;
        _os_log_impl(&_mh_execute_header, registrationCenter, OS_LOG_TYPE_DEFAULT, "Not issuing dependancy check, we're in progress now for: %@", buf, 0xCu);
      }
    }

    else
    {
      *(self + 80) |= 8u;
      v8 = +[IMRGLog GDR];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [(IDSDAccount *)self uniqueID];
        service = [(IDSDAccount *)self service];
        queryService = [service queryService];
        *buf = 138412546;
        v18 = uniqueID3;
        v19 = 2112;
        v20 = queryService;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Issued dependent registration check for account: %@   service: %@", buf, 0x16u);
      }

      registrationCenter = [(IDSDAccount *)self registrationCenter];
      gdrCenter = [registrationCenter gdrCenter];
      registrationInfo = self->_registrationInfo;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000246DC;
      v16[3] = &unk_100BDEF50;
      v16[4] = self;
      [gdrCenter getDependentRegistrations:registrationInfo completionBlock:v16];
    }
  }
}

- (BOOL)shouldRegisterUsingDSHandle
{
  service = [(IDSDAccount *)self service];
  shouldRegisterUsingDSHandle = [service shouldRegisterUsingDSHandle];

  return shouldRegisterUsingDSHandle;
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
  adHocAccounts = [(IDSDAccount *)self adHocAccounts];
  [v3 addObjectsFromArray:adHocAccounts];

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
  accountInfo = [(IDSDAccount *)self accountInfo];
  v3 = [accountInfo objectForKey:kIDSServiceDefaultsInvisibleAliasesKey];

  return v3;
}

- (id)primaryAccount
{
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    v3 = +[IDSDAccountController sharedInstance];
    primaryAccountUniqueID = [(IDSDAccount *)self primaryAccountUniqueID];
    v5 = [v3 accountWithUniqueID:primaryAccountUniqueID];
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
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  dsHandle = [primaryRegistration dsHandle];

  return dsHandle;
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
  service = [(IDSDAccount *)self service];
  pushTopic = [service pushTopic];
  v8 = [v5 broadcasterForTopic:pushTopic ignoreServiceListener:1 messageContext:v4];

  uniqueID = [(IDSDAccount *)self uniqueID];
  accountSetupInfo = [(IDSDAccount *)self accountSetupInfo];
  [v8 account:uniqueID accountInfoChanged:accountSetupInfo];

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
  service = [(IDSDAccount *)self service];
  identifier = [service identifier];

  v3 = [identifier isEqualToIgnoringCase:@"com.apple.madrid"];
  v4 = [identifier isEqualToIgnoringCase:@"com.apple.ess"];
  v5 = [identifier isEqualToIgnoringCase:@"com.apple.private.ac"];
  v6 = [identifier isEqualToIgnoringCase:@"com.apple.private.alloy.facetime.multi"];
  v7 = +[IDSRegistrationController systemSupportsPhoneNumberRegistration];
  accountType = [(IDSDAccount *)self accountType];
  v9 = accountType == 1;
  if (accountType == 1)
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
  selfCopy = self;
  v70 = v15;
  v89 = v70;
  v93 = v9;
  v65 = v14;
  v90 = v65;
  v17 = [v16 __imArrayByApplyingBlock:v86];

  unprefixedURIStringsFromRegistration = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  v19 = [unprefixedURIStringsFromRegistration __imArrayByApplyingBlock:&stru_100BDD2B0];
  __imSetFromArray = [v19 __imSetFromArray];

  v20 = [v17 __imArrayByApplyingBlock:&stru_100BDD2D0];
  __imSetFromArray2 = [v20 __imSetFromArray];

  if (__imSetFromArray2 && ([__imSetFromArray2 isEqualToSet:__imSetFromArray] & 1) != 0 || (-[IDSDAccount registration](self, "registration"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
  {
    v72 = 0;
    v38 = v17;
  }

  else
  {
    v23 = [__imSetFromArray mutableCopy];
    [v23 minusSet:__imSetFromArray2];
    v64 = [__imSetFromArray2 mutableCopy];
    [v64 minusSet:__imSetFromArray];
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
      smallDescription = [(IDSDAccount *)self smallDescription];
      v36 = [obj count];
      v37 = [v64 count];
      *buf = 138413314;
      v110 = smallDescription;
      v111 = 1024;
      v112 = v36;
      v113 = 1024;
      v114 = v37;
      v115 = 2112;
      v116 = __imSetFromArray;
      v117 = 2112;
      v118 = __imSetFromArray2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Alias set does not match during cleanup {self: %@, registeredButNotStored.count: %d, storedButNotRegistered.count: %d, aliasStrings: %@, aliasesSet: %@}", buf, 0x2Cu);
    }

    v38 = v25;
  }

  if ((v69 & (v68 | v67 | v5 | v66)) == 0)
  {
    v46 = 0;
LABEL_31:
    selfCopy3 = self;
    goto LABEL_33;
  }

  selfCopy3 = self;
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
    lowercaseString = [kIDSServiceDefaultsSentinelAlias lowercaseString];
    v108[0] = lowercaseString;
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
  v48 = [(NSMutableDictionary *)selfCopy3->_accountInfo objectForKey:kIDSServiceDefaultsRegisteredURIs];

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

        registration = [(IDSDAccount *)self registration];
        [registration setVettedEmails:v51];
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

  pseudonyms = [(IDSDAccount *)self pseudonyms];
  v60 = [pseudonyms __imArrayByFilteringWithBlock:&stru_100BDD310];

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

  registrationError = [(IDSDAccount *)self registrationError];
  registrationErrorReason = [(IDSDAccount *)self registrationErrorReason];
  if (registrationError == -1)
  {
    v15 = registrationErrorReason;
    if (registrationErrorReason != -1)
    {
      v16 = sub_1004503A8(registrationErrorReason);
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

- (IDSDAccount)initWithDictionary:(id)dictionary service:(id)service uniqueID:(id)d
{
  dictionaryCopy = dictionary;
  serviceCopy = service;
  dCopy = d;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v38 = dictionaryCopy;
    v39 = 2112;
    v40 = serviceCopy;
    v41 = 2112;
    v42 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "IDSDAccount initWithDictionary %@ service %@ uniqueID %@", buf, 0x20u);
  }

  v36.receiver = self;
  v36.super_class = IDSDAccount;
  v12 = [(IDSDAccount *)&v36 init];
  if (!v12)
  {
    goto LABEL_20;
  }

  if (dCopy)
  {
    if (serviceCopy)
    {
      v13 = [dictionaryCopy objectForKey:kIDSServiceDefaultsAccountTypeKey];
      intValue = [v13 intValue];

      if (IDSIsValidAccountType())
      {
        objc_storeStrong(&v12->_uniqueID, d);
        v15 = [dictionaryCopy mutableCopy];
        accountInfo = v12->_accountInfo;
        v12->_accountInfo = v15;

        if (!v12->_accountInfo)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v18 = v12->_accountInfo;
          v12->_accountInfo = Mutable;
        }

        objc_storeStrong(&v12->_service, service);
        v19 = kIDSServiceDefaultsAliasesKey;
        v20 = [dictionaryCopy objectForKey:kIDSServiceDefaultsAliasesKey];
        v30 = _NSConcreteStackBlock;
        v31 = 3221225472;
        v32 = sub_1004870D0;
        v33 = &unk_100BDD408;
        v21 = v12;
        v34 = v21;
        v35 = dictionaryCopy;
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
        pushTopic = [serviceCopy pushTopic];
        [(NSMutableDictionary *)v27 setObject:pushTopic forKey:kIDSServiceDefaultsPushTopicKey];

        [(NSMutableDictionary *)v12->_accountInfo removeObjectForKey:@"AuthToken"];
        [(IDSDAccount *)v21 _setupAccount];

LABEL_20:
        v26 = v12;
        goto LABEL_21;
      }

      v25 = +[IMRGLog warning];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_100920A18(intValue, v25);
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

- (id)_initWithLoginID:(id)d service:(id)service uniqueID:(id)iD accountType:(int)type accountConfig:(id)config primaryAccount:(id)account isAdHocAccount:(BOOL)hocAccount
{
  v11 = *&type;
  dCopy = d;
  serviceCopy = service;
  iDCopy = iD;
  configCopy = config;
  accountCopy = account;
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v39 = dCopy;
    v40 = 2112;
    v41 = serviceCopy;
    v42 = 2112;
    v43 = iDCopy;
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

  if (!iDCopy)
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

  if (!serviceCopy)
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100920A90();
    }

    goto LABEL_32;
  }

  if (!hocAccount)
  {
    if (![serviceCopy adHocServiceType])
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

  if (![accountCopy length])
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

  [serviceCopy adHocServiceType];
LABEL_20:
  if ([configCopy count])
  {
    v23 = [[NSMutableDictionary alloc] initWithDictionary:configCopy];
    accountInfo = v20->_accountInfo;
    v20->_accountInfo = v23;
  }

  if (!v20->_accountInfo)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v26 = v20->_accountInfo;
    v20->_accountInfo = Mutable;
  }

  objc_storeStrong(&v20->_service, service);
  objc_storeStrong(&v20->_uniqueID, iD);
  if ([dCopy length])
  {
    [(IDSDAccount *)v20 setObject:dCopy forKey:kIDSServiceDefaultsLoginAsKey];
  }

  identifier = [serviceCopy identifier];
  [(IDSDAccount *)v20 setObject:identifier forKey:kIDSServiceDefaultsServiceNameKey];

  pushTopic = [serviceCopy pushTopic];
  [(IDSDAccount *)v20 setObject:pushTopic forKey:kIDSServiceDefaultsPushTopicKey];

  v29 = [NSNumber numberWithInt:v11];
  [(IDSDAccount *)v20 setObject:v29 forKey:kIDSServiceDefaultsAccountTypeKey];

  if (hocAccount)
  {
    v30 = +[IDSDAccountController sharedInstance];
    v31 = [v30 accountWithUniqueID:accountCopy];

    service = [v31 service];
    identifier2 = [service identifier];
    [(IDSDAccount *)v20 setObject:identifier2 forKey:kIDSServiceDefaultsPrimaryServiceNameKey];

    [(IDSDAccount *)v20 setObject:accountCopy forKey:kIDSServiceDefaultsPrimaryAccountKey];
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
  uniqueID = [(IDSDAccount *)self uniqueID];
  [v5 removeCompletionBlockForToken:uniqueID];

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

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = keyCopy;
  if (objectCopy && keyCopy)
  {
    [(NSMutableDictionary *)self->_accountInfo setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = objectCopy;
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

- (void)setUserUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    v6 = kIDSServiceDefaultsUserUniqueIdentifier;
    identifierCopy = identifier;
    identifierCopy2 = identifier;
    v5 = [NSDictionary dictionaryWithObjects:&identifierCopy forKeys:&v6 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v5];

    [(IDSRegistration *)self->_registrationInfo setUserUniqueIdentifier:identifierCopy2];
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

- (void)setGameCenterData:(id)data
{
  dataCopy = data;
  contactsAssociationID = [dataCopy contactsAssociationID];

  if (contactsAssociationID)
  {
    contactsAssociationID2 = [dataCopy contactsAssociationID];
    [(IDSDAccount *)self setObject:contactsAssociationID2 forKey:IDSGameCenterContactsAssociationID];
  }

  else
  {
    [(NSMutableDictionary *)self->_accountInfo removeObjectForKey:IDSGameCenterContactsAssociationID];
  }

  contactsSharingState = [dataCopy contactsSharingState];
  [(IDSDAccount *)self setObject:contactsSharingState forKey:IDSGameCenterContactsSharingState];

  contactsLastUpdatedDate = [dataCopy contactsLastUpdatedDate];

  if (contactsLastUpdatedDate)
  {
    contactsLastUpdatedDate2 = [dataCopy contactsLastUpdatedDate];
    [(IDSDAccount *)self setObject:contactsLastUpdatedDate2 forKey:IDSGameCenterContactsLastUpdatedDate];
  }

  else
  {
    [(NSMutableDictionary *)self->_accountInfo removeObjectForKey:IDSGameCenterContactsLastUpdatedDate];
  }
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  if ([(IDSDAccount *)nameCopy length])
  {
    displayName = [(IDSDAccount *)self displayName];
    v6 = [displayName isEqualToIgnoringCase:nameCopy];

    if ((v6 & 1) == 0)
    {
      aliases = [(IDSDAccount *)self aliases];
      v8 = [aliases containsObject:nameCopy];

      v9 = +[IMRGLog registration];
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          displayName2 = [(IDSDAccount *)self displayName];
          *buf = 138412802;
          selfCopy = self;
          v17 = 2112;
          v18 = displayName2;
          v19 = 2112;
          v20 = nameCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Display name changed for account: %@    %@ => %@", buf, 0x20u);
        }

        v13 = kIDSServiceDefaultsDisplayNameKey;
        v14 = nameCopy;
        v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
        [(IDSDAccount *)self writeAccountDefaults:v9];
      }

      else if (v10)
      {
        aliases2 = [(IDSDAccount *)self aliases];
        *buf = 138412546;
        selfCopy = nameCopy;
        v17 = 2112;
        v18 = aliases2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Requested display name: %@ is not part of valid account aliases: %@, ignoring!", buf, 0x16u);
      }
    }
  }
}

- (void)clearDisplayName
{
  displayName = [(IDSDAccount *)self displayName];

  if (displayName)
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      displayName2 = [(IDSDAccount *)self displayName];
      *buf = 138412290;
      v10 = displayName2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to clear Display Name on Account, Removing Display name %@", buf, 0xCu);
    }

    v7 = kIDSServiceDefaultsDisplayNameKey;
    v8 = &stru_100C06028;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v6];
  }
}

- (void)setIsUserDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  if (IMShouldLog())
  {
    v5 = !disabledCopy;
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
      uniqueID = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v13 = uniqueID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Account with uniqueID %@ was disabled by user", buf, 0xCu);
    }
  }

  kIDSServiceDefaultsUserDisabled = [NSNumber numberWithBool:disabledCopy, kIDSServiceDefaultsUserDisabled];
  v11 = kIDSServiceDefaultsUserDisabled;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(IDSDAccount *)self writeAccountDefaults:v9];
}

- (BOOL)isUserDisabled
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsUserDisabled];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setLoginID:(id)d
{
  dCopy = d;
  v5 = kIDSServiceDefaultsLoginAsKey;
  v6 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsLoginAsKey];
  if (([dCopy isEqualToIgnoringCase:v6] & 1) == 0)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = dCopy;
      v15 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting loginID on account { oldLoginID: %@, newLoginID: %@, self: %@ }", &v11, 0x20u);
    }

    lowercaseString = [dCopy lowercaseString];
    [(IDSDAccount *)self setObject:lowercaseString forKey:v5];

    registration = [(IDSDAccount *)self registration];
    [registration setMainID:dCopy];

    registration2 = [(IDSDAccount *)self registration];
    [registration2 setVettedEmails:0];

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
    intValue = [v3 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

- (BOOL)isTemporary
{
  v2 = [(NSMutableDictionary *)self->_accountInfo objectForKey:kIDSServiceDefaultsIsTemporary];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsTemporary:(BOOL)temporary
{
  if (temporary)
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

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  expirationDate = [(IDSDAccount *)self expirationDate];
  if (dateCopy)
  {
    v21 = kIDSServiceDefaultsExpirationDate;
    v22 = dateCopy;
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

  isTemporary = [(IDSDAccount *)self isTemporary];
  if (dateCopy && isTemporary && !expirationDate)
  {
    v9 = +[IDSDaemon sharedInstance];
    service = [(IDSDAccount *)self service];
    pushTopic = [service pushTopic];
    v12 = [v9 broadcasterForTopic:pushTopic ignoreServiceListener:1 messageContext:0];

    accountSetupInfo = [(IDSDAccount *)self accountSetupInfo];
    [v12 accountAdded:accountSetupInfo];

    v14 = +[IDSDAccountController sharedInstance];
    uniqueID = [(IDSDAccount *)self uniqueID];
    LODWORD(pushTopic) = [v14 isEnabledAccount:uniqueID];

    if (pushTopic)
    {
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      service2 = [(IDSDAccount *)self service];
      pushTopic2 = [service2 pushTopic];
      [v12 accountEnabled:uniqueID2 onService:pushTopic2];
    }
  }
}

- (BOOL)shouldAutoRegisterAllHandles
{
  service = [(IDSDAccount *)self service];
  shouldAutoRegisterAllHandles = [service shouldAutoRegisterAllHandles];

  return shouldAutoRegisterAllHandles;
}

- (BOOL)isEnabled
{
  v3 = +[IDSDAccountController sharedInstance];
  uniqueID = [(IDSDAccount *)self uniqueID];
  v5 = [v3 isEnabledAccount:uniqueID];

  return v5;
}

- (void)setupAccountWithCompletionBlock:(id)block
{
  v4 = [block copy];
  v5 = +[IDSDAccountController sharedInstance];
  uniqueID = [(IDSDAccount *)self uniqueID];
  [v5 enableAccountWithUniqueID:uniqueID];

  registrationStatus = [(IDSDAccount *)self registrationStatus];
  v8 = registrationStatus;
  if (registrationStatus == 5 || registrationStatus == -1)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v23 = 67109378;
      LODWORD(v24[0]) = v8;
      WORD2(v24[0]) = 2112;
      *(v24 + 6) = uniqueID2;
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

  accountInfo = [(IDSDAccount *)self accountInfo];
  v18 = [accountInfo objectForKey:kIDSServiceDefaultsAliasesKey];
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

- (BOOL)hasAliasURI:(id)i
{
  if (!i)
  {
    return 0;
  }

  iCopy = i;
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  uris = [primaryRegistration uris];
  v7 = [uris containsObject:iCopy];

  return v7;
}

- (BOOL)hasVettedAliasURI:(id)i
{
  if (!i)
  {
    return 0;
  }

  iCopy = i;
  vettedAliases = [(IDSDAccount *)self vettedAliases];
  v6 = [vettedAliases containsObject:iCopy];

  return v6;
}

- (BOOL)hasEverRegistered
{
  accountInfo = [(IDSDAccount *)self accountInfo];
  v3 = [accountInfo objectForKey:kIDSServiceDefaultsHasEverRegistered];
  v4 = [v3 intValue] > 0;

  return v4;
}

- (BOOL)isUsableForSending
{
  v3 = +[IDSDAccountController sharedInstance];
  uniqueID = [(IDSDAccount *)self uniqueID];
  v5 = [v3 isEnabledAccount:uniqueID];

  if (!v5)
  {
    goto LABEL_13;
  }

  if ([(IDSDAccount *)self accountType]== 2)
  {
    v6 = 1;
    return v6 & 1;
  }

  accountType = [(IDSDAccount *)self accountType];
  if (accountType == 1)
  {
    if ([(IDSDAccount *)self isRegistered])
    {
      aliases = [(IDSDAccount *)self aliases];
      if ([aliases count])
      {
        if ([aliases count] == 1)
        {
          lastObject = [aliases lastObject];
          v11 = [lastObject isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];

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

  if (accountType)
  {
LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  return [(IDSDAccount *)self isRegistered];
}

+ (void)dependentRegistration:(id)registration findDeviceUniqueID:(id *)d btID:(id *)iD forURI:(id)i token:(id)token supportsLiveDelivery:(BOOL *)delivery
{
  registrationCopy = registration;
  iCopy = i;
  tokenCopy = token;
  if (registrationCopy)
  {
    lowercaseString = [iCopy lowercaseString];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v15 = registrationCopy;
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
      v50 = tokenCopy;
      v51 = registrationCopy;
      iDCopy = iD;
      deliveryCopy = delivery;
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
            v24 = [v22 isEqualToData:tokenCopy];
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
              v28 = lowercaseString;
              v30 = v64;
              dCopy2 = d;
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
                    lowercaseString2 = [v34 lowercaseString];

                    if (lowercaseString2 && [lowercaseString2 isEqualToString:v28])
                    {
                      v36 = [v25 objectForKey:v63];
                      bOOLValue = [v36 BOOLValue];

                      if (bOOLValue)
                      {
                        tokenCopy = v50;
                        if (dCopy2)
                        {
                          *dCopy2 = IDSDeviceDefaultPairedDeviceUniqueID;
                        }

                        registrationCopy = v51;
                        if (iDCopy)
                        {
                          *iDCopy = IDSDeviceDefaultPairedDeviceUniqueID;
                        }

                        v15 = v49;
                        goto LABEL_35;
                      }

                      v38 = [v25 objectForKey:v59];
                      v39 = [v25 _dictionaryForKey:v58];
                      v40 = [v38 _stringForKey:v57];
                      v41 = [v25 objectForKey:v56];
                      if (dCopy2)
                      {
                        v42 = v40;
                        *dCopy2 = v40;
                      }

                      if (iDCopy)
                      {
                        v43 = v41;
                        *iDCopy = v41;
                      }

                      if (deliveryCopy)
                      {
                        v44 = [v39 _numberForKey:v54];
                        *deliveryCopy = [v44 BOOLValue];

                        v28 = lowercaseString;
                      }

                      v30 = v64;
                      dCopy2 = d;
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

              tokenCopy = v50;
              registrationCopy = v51;
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

    iCopy = lowercaseString;
  }
}

- (void)findDeviceUniqueID:(id *)d btID:(id *)iD forURI:(id)i token:(id)token supportsLiveDelivery:(BOOL *)delivery
{
  iCopy = i;
  tokenCopy = token;
  v14 = tokenCopy;
  if (iCopy && tokenCopy)
  {
    service = [(IDSDAccount *)self service];
    v16 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [service wantsTinkerDevices]);

    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      selfCopy2 = self;
      v21 = 2112;
      v22 = iCopy;
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

    [objc_opt_class() dependentRegistration:v16 findDeviceUniqueID:d btID:iD forURI:iCopy token:v14 supportsLiveDelivery:delivery];
  }

  else
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy2 = self;
      v21 = 2112;
      v22 = iCopy;
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

+ (BOOL)dependentRegistration:(id)registration hasDependentRegistrationWithURI:(id)i token:(id)token
{
  registrationCopy = registration;
  iCopy = i;
  tokenCopy = token;
  v10 = tokenCopy;
  if (iCopy && tokenCopy)
  {
    v36 = tokenCopy;
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      selfCopy3 = self;
      v51 = 2112;
      v52 = iCopy;
      v53 = 2112;
      v54 = v10;
      v55 = 2112;
      v56 = registrationCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ Asked to look up existence of device with uri %@ and token %@ in our dependent registrations %@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v30 = v10;
      v31 = registrationCopy;
      selfCopy2 = self;
      v29 = iCopy;
      _IDSLogV();
    }

    lowercaseString = [iCopy lowercaseString];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = registrationCopy;
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
                  lowercaseString2 = [v23 lowercaseString];

                  if (lowercaseString2 && ([lowercaseString2 isEqualToString:lowercaseString] & 1) != 0)
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
    iCopy = lowercaseString;
    v10 = v36;
  }

  else
  {
    v26 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v51 = 2112;
      v52 = iCopy;
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

- (BOOL)hasDependentRegistrationWithURI:(id)i token:(id)token
{
  iCopy = i;
  tokenCopy = token;
  service = [(IDSDAccount *)self service];
  v9 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [service wantsTinkerDevices]);

  if ([objc_opt_class() dependentRegistration:v9 hasDependentRegistrationWithURI:iCopy token:tokenCopy])
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
    service2 = [(IDSDAccount *)self service];
    v13 = [v11 appleIDAccountOnService:service2];
    v10 = [v13 hasDependentRegistrationWithURI:iCopy token:tokenCopy];
  }

  return v10;
}

- (id)fromIDForCBUUID:(id)d deviceID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  shouldAllowLiveMessageDelivery = [(IDSServiceProperties *)self->_service shouldAllowLiveMessageDelivery];
  v47 = iDCopy;
  if (iDCopy)
  {
    v9 = shouldAllowLiveMessageDelivery;
  }

  else
  {
    v9 = 0;
  }

  v57 = dCopy;
  if (dCopy || v9)
  {
    v52 = v9;
    service = [(IDSDAccount *)self service];
    v12 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [service wantsTinkerDevices]);

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v65 = 2112;
      v66 = dCopy;
      v67 = 2112;
      v68 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Asked to look up fromID for CBUUID %@ in %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v45 = dCopy;
      v46 = v12;
      selfCopy2 = self;
      _IDSLogV();
    }

    if (dCopy)
    {
      v14 = +[IDSUTunDeliveryController sharedInstance];
      v56 = [v14 lockedContinuityPeerID:dCopy];

      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = v56;
        v65 = 2112;
        v66 = dCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found locked peer %@ for cbUUID %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        selfCopy2 = v56;
        v45 = dCopy;
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
            selfCopy = v56;
            v65 = 2112;
            v66 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found locked peer %@ for sessionID %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = v56;
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
            selfCopy = 0;
            v65 = 2112;
            v66 = v57;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Couldn't find locked peer %@ for cbUUID %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = 0;
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
          v25 = [v24 objectForKey:{v50, selfCopy2, v45, v46}];
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
              selfCopy = v29;
              v65 = 2112;
              v66 = v26;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "CBUUID matched, but uniqueID mismatched. Setting fallback device. { cbuuid: %@, uniqueID: %@ }", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              selfCopy2 = v29;
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

    shouldAllowLiveMessageDelivery2 = [(IDSServiceProperties *)self->_service shouldAllowLiveMessageDelivery];
    if (v55)
    {
      v38 = shouldAllowLiveMessageDelivery2;
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
        serviceName = [(IDSServiceProperties *)self->_service serviceName];
        *buf = 138412802;
        selfCopy = v57;
        v65 = 2112;
        v66 = v56;
        v67 = 2112;
        v68 = serviceName;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Did not find any device in dependentRegistrations that matches lockedPeerID. Service supports live delivery, so falling back to device that matches just cbuuid { cbuuid: %@, lockedPeerID: %@, service: %@ }", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [(IDSServiceProperties *)self->_service serviceName];
        v46 = v45 = v56;
        selfCopy2 = v57;
        _IDSLogV();
      }

      v10 = [(IDSDAccount *)self _fromIDFromDevice:v55 withCBUUID:v54 uniqueID:v53, selfCopy2, v45, v46];
    }

    else
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [obj count];
        *buf = 138412802;
        selfCopy = v57;
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

- (id)_fromIDFromDevice:(id)device withCBUUID:(id)d uniqueID:(id)iD
{
  deviceCopy = device;
  dCopy = d;
  iDCopy = iD;
  if ([(IDSServiceProperties *)self->_service adHocServiceType]== 2)
  {
    v11 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [deviceCopy _stringForKey:IDSDevicePropertyIdentifierOverride];
      *buf = 138412802;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
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
        [deviceCopy _stringForKey:IDSDevicePropertyIdentifierOverride];
        v26 = v25 = iDCopy;
        v24 = dCopy;
        _IDSLogV();
      }
    }

    else
    {
      v14 = IDSDevicePropertyIdentifierOverride;
    }

    v15 = [deviceCopy _stringForKey:{v14, v24, v25, v26}];
    v22 = _IDSCopyIDForDeviceUniqueID();
  }

  else
  {
    v15 = [deviceCopy _dataForKey:IDSDevicePropertyPushToken];
    service = [(IDSDAccount *)self service];
    identifier = [service identifier];
    _IDSPrefersPhoneNumbersForServiceIdentifier();

    unprefixedURIStringsFromRegistration = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
    v19 = _IDSCopyCallerIDWithSelfMessagingHint();
    _bestGuessURIFromCanicalizedID = [v19 _bestGuessURIFromCanicalizedID];

    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
      v31 = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = _bestGuessURIFromCanicalizedID;
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

- (id)defaultPairedDependentRegistrationIncludingTinker:(BOOL)tinker
{
  v4 = [(IDSDAccount *)self _dependentRegistrationsForDefaultPairedDevice:1 includingTinker:tinker];
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ Asked to look up default paired device dependent registration in %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
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
        v12 = [v11 objectForKey:{v9, selfCopy2, v18, v19}];
        bOOLValue = [v12 BOOLValue];

        if (bOOLValue)
        {
          v15 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            selfCopy3 = self;
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

- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)device includingTinker:(BOOL)tinker
{
  tinkerCopy = tinker;
  deviceCopy = device;
  v7 = objc_autoreleasePoolPush();
  v8 = [(IDSDAccount *)self _dependentRegistrationsForDefaultPairedDevice:deviceCopy includingCurrentDevice:0 includingTinker:tinkerCopy];
  objc_autoreleasePoolPop(v7);

  return v8;
}

- (id)_dependentRegistrationsForDefaultPairedDevice:(BOOL)device includingCurrentDevice:(BOOL)currentDevice includingTinker:(BOOL)tinker
{
  deviceCopy = device;
  v118 = objc_autoreleasePoolPush();
  selfCopy = self;
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  dependentRegistrations = [primaryRegistration dependentRegistrations];

  v153 = objc_alloc_init(NSMutableArray);
  v10 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v10 pairedDeviceUniqueID];

  v12 = +[IDSPairingManager sharedInstance];
  v13 = v12;
  tinkerCopy = tinker;
  if (tinker)
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
  uniqueIDToCbuuidsOfPairingDevicesDictionary = [v15 uniqueIDToCbuuidsOfPairingDevicesDictionary];

  context = objc_autoreleasePoolPush();
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = dependentRegistrations;
  v16 = [obj countByEnumeratingWithState:&v165 objects:v175 count:16];
  v132 = pairedDeviceUniqueID;
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
  currentDeviceCopy = currentDevice;
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
      primaryServiceName = [(IDSDAccount *)selfCopy primaryServiceName];
      v23 = [primaryServiceName isEqualToIgnoringCase:v21];

      if (v23)
      {
        v151 = [v20 objectForKey:v144];
        if (!currentDevice)
        {
          primaryRegistration2 = [(IDSDAccount *)selfCopy primaryRegistration];
          pushToken = [primaryRegistration2 pushToken];
          v26 = [v151 isEqualToData:pushToken];

          if (v26)
          {
            goto LABEL_67;
          }
        }

        service = [(IDSDAccount *)selfCopy service];
        identifier = [service identifier];

        service2 = [(IDSDAccount *)selfCopy service];
        adHocServiceType = [service2 adHocServiceType];

        if (adHocServiceType)
        {
          if (adHocServiceType != 5)
          {
            v31 = [v20 objectForKey:v136];
            v32 = [v31 containsObject:identifier];

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
          v34 = [v33 isEqualToIgnoringCase:pairedDeviceUniqueID];
        }

        else
        {
          v34 = 0;
        }

        if (((!deviceCopy | v34) & 1) == 0)
        {
LABEL_65:

          goto LABEL_66;
        }

        v35 = [v20 mutableCopy];
        v36 = identifier;
        value = v36;
        if (v36)
        {
          CFDictionarySetValue(v35, key, v36);
          v36 = value;
        }

        v138 = identifier;

        if (adHocServiceType && adHocServiceType != 5)
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

        v41 = [uniqueIDToCbuuidsOfPairingDevicesDictionary objectForKey:v39];
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
          if (deviceCopy & v34)
          {

            goto LABEL_73;
          }

          currentDevice = currentDeviceCopy;
          pairedDeviceUniqueID = v132;
          identifier = v138;
          goto LABEL_65;
        }

        v44 = +[IDSPairingManager sharedInstance];
        pairedDevicePairingProtocolVersion = [v44 pairedDevicePairingProtocolVersion];

        if (pairedDevicePairingProtocolVersion)
        {
          v46 = [NSNumber numberWithUnsignedInt:pairedDevicePairingProtocolVersion];
          if (v46)
          {
            CFDictionarySetValue(v35, v122, v46);
          }
        }

        v47 = +[IDSPairingManager sharedInstance];
        pairedDeviceMinCompatibilityVersion = [v47 pairedDeviceMinCompatibilityVersion];

        if (pairedDeviceMinCompatibilityVersion)
        {
          v49 = [NSNumber numberWithUnsignedInt:pairedDeviceMinCompatibilityVersion];
          if (v49)
          {
            CFDictionarySetValue(v35, v121, v49);
          }
        }

        v50 = +[IDSPairingManager sharedInstance];
        pairedDeviceMaxCompatibilityVersion = [v50 pairedDeviceMaxCompatibilityVersion];

        if (pairedDeviceMaxCompatibilityVersion)
        {
          v52 = [NSNumber numberWithUnsignedInt:pairedDeviceMaxCompatibilityVersion];
          if (v52)
          {
            CFDictionarySetValue(v35, v120, v52);
          }
        }

        v53 = +[IDSPairingManager sharedInstance];
        pairedDeviceServiceMinCompatibilityVersion = [v53 pairedDeviceServiceMinCompatibilityVersion];

        if (pairedDeviceServiceMinCompatibilityVersion)
        {
          v55 = [NSNumber numberWithUnsignedInt:pairedDeviceServiceMinCompatibilityVersion];
          if (v55)
          {
            CFDictionarySetValue(v35, v119, v55);
          }
        }

        v56 = +[IDSPairingManager sharedInstance];
        pairedDeviceUUIDString = [v56 pairedDeviceUUIDString];

        if (pairedDeviceUUIDString)
        {
          CFDictionarySetValue(v35, v123, pairedDeviceUUIDString);
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
            pairedDevicePrivateData = [v61 pairedDevicePrivateData];
            [(__CFDictionary *)v60 addEntriesFromDictionary:pairedDevicePrivateData];

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
  if (tinkerCopy)
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
      pairedDevice = [v71 pairedDevice];
      v73 = [v70 initWithDictionary:pairedDevice];

      service3 = [(IDSDAccount *)selfCopy service];
      identifier2 = [service3 identifier];

      if (identifier2)
      {
        CFDictionarySetValue(v73, IDSDevicePropertyService, identifier2);
      }

      if (v73)
      {
        v76 = +[IDSPairingManager sharedInstance];
        pairedDeviceUniqueID2 = [v76 pairedDeviceUniqueID];

        [v153 addObject:v73];
        [v137 removeObject:pairedDeviceUniqueID2];
      }
    }
  }

  if (!deviceCopy)
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
          dictionaryRepresentation = [v87 dictionaryRepresentation];
          v89 = [v85 initWithDictionary:dictionaryRepresentation];

          service4 = [(IDSDAccount *)selfCopy service];
          identifier3 = [service4 identifier];

          if (identifier3)
          {
            CFDictionarySetValue(v89, v82, identifier3);
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

  allValues = [v92 allValues];
  [v148 addObjectsFromArray:allValues];

  v114 = v148;
  objc_autoreleasePoolPop(v118);

  return v114;
}

- (NSArray)registeredDevices
{
  dependentRegistrations = [(IDSDAccount *)self dependentRegistrations];
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = dependentRegistrations;
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

- (id)dependentRegistrationMatchingUUID:(id)d includingTinker:(BOOL)tinker
{
  tinkerCopy = tinker;
  dCopy = d;
  [(IDSDAccount *)self dependentRegistrationsIncludingTinker:tinkerCopy];
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

        if ([v14 isEqualToIgnoringCase:dCopy])
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
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)_broadcastAccountMessageBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    accountAndAdHocAccounts = [(IDSDAccount *)self accountAndAdHocAccounts];
    v6 = [accountAndAdHocAccounts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(accountAndAdHocAccounts);
          }

          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [accountAndAdHocAccounts countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyListenersWithChanges:(id)changes
{
  changesCopy = changes;
  if (changesCopy)
  {
    v5 = objc_alloc_init(IMMessageContext);
    [v5 setShouldBoost:0];
    v6 = [changesCopy objectForKey:kIDSServiceDefaultsRegistrationInfoKey];
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

    v7 = [changesCopy objectForKey:kIDSServiceDefaultsAliasesKey];
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

    v8 = [changesCopy objectForKey:kIDSServiceDefaultsVettedAliasesKey];
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

    v9 = [changesCopy objectForKey:kIDSServiceDefaultsProfileKey];
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

    v10 = [changesCopy objectForKey:{kIDSServiceDefaultsLoginAsKey, v7}];
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

    v11 = [changesCopy objectForKey:kIDSServiceDefaultsDisplayNameKey];
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

    v12 = [changesCopy objectForKey:kIDSServiceDefaultsPseudonymsKey];
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

- (void)_writeAccountDefaults:(id)defaults force:(BOOL)force interestedSubservices:(id)subservices
{
  forceCopy = force;
  defaultsCopy = defaults;
  subservicesCopy = subservices;
  if ((*(self + 80) & 2) != 0 && !forceCopy || (*(self + 81) & 8) != 0)
  {
    v19 = +[IMRGLog accountUpdate];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (*(self + 80) >> 1) & 1;
      v21 = (*(self + 81) >> 3) & 1;
      *buf = 136315650;
      selfCopy = "[IDSDAccount _writeAccountDefaults:force:interestedSubservices:]";
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
    allKeys = [defaultsCopy allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v12)
    {
      v13 = v12;
      v39 = forceCopy;
      v40 = subservicesCopy;
      v14 = *v50;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v16 = *(*(&v49 + 1) + 8 * i);
          v17 = [defaultsCopy objectForKey:v16];
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
                selfCopy = self;
                v56 = 2112;
                *v57 = defaultsCopy;
                *&v57[8] = 2112;
                v58 = @"YES";
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ - write account defaults: %@  (has changes: %@)", buf, 0x20u);
              }
            }

            [(IDSDAccount *)self _notifyListenersWithChanges:defaultsCopy];
            v23 = [defaultsCopy mutableCopy];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            allKeys2 = [defaultsCopy allKeys];
            v25 = [allKeys2 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
                    objc_enumerationMutation(allKeys2);
                  }

                  v29 = *(*(&v45 + 1) + 8 * j);
                  v30 = [defaultsCopy objectForKey:v29];
                  if ([v30 isNull] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v30, "length"))
                  {
                    [v23 removeObjectForKey:v29];
                    [(NSMutableDictionary *)self->_accountInfo removeObjectForKey:v29];
                  }
                }

                v26 = [allKeys2 countByEnumeratingWithState:&v45 objects:v53 count:16];
              }

              while (v26);
            }

            subservicesCopy = v40;
            if ([(IDSDAccount *)self isAdHocAccount])
            {
              service = [(IDSDAccount *)self service];
              identifier = [service identifier];

              primaryServiceName = [(IDSDAccount *)self primaryServiceName];
              service2 = [(IDSDAccount *)self service];
              pushTopic = [service2 pushTopic];

              primaryAccount = [(IDSDAccount *)self primaryAccount];
              uniqueID = [primaryAccount uniqueID];

              if (identifier)
              {
                [v23 setObject:identifier forKey:kIDSServiceDefaultsServiceNameKey];
              }

              if (primaryServiceName)
              {
                [v23 setObject:primaryServiceName forKey:kIDSServiceDefaultsPrimaryServiceNameKey];
              }

              if (pushTopic)
              {
                [v23 setObject:pushTopic forKey:kIDSServiceDefaultsPushTopicKey];
              }

              if (uniqueID)
              {
                [v23 setObject:uniqueID forKey:kIDSServiceDefaultsPrimaryAccountKey];
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
            v43 = defaultsCopy;
            v44 = v39;
            [(IDSDAccount *)self forEachAdhocAccount:v41];

            objc_autoreleasePoolPop(context);
            allKeys = +[IDSDAccountController sharedInstance];
            [allKeys delayedSaveSettings];
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

        v13 = [allKeys countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      subservicesCopy = v40;
    }

LABEL_65:

    objc_autoreleasePoolPop(v10);
  }
}

- (void)_updateAccountWithAccountInfo:(id)info
{
  infoCopy = info;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v40 = 2112;
    v41 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ - update account with defaults: %@", buf, 0x16u);
  }

  selfCopy2 = self;
  if ([(IDSDAccount *)selfCopy2 accountType]!= 2 && [(IDSDAccount *)selfCopy2 isAdHocAccount])
  {
    primaryAccount = [(IDSDAccount *)selfCopy2 primaryAccount];

    selfCopy2 = primaryAccount;
  }

  v8 = [infoCopy objectForKey:kIDSServiceDefaultsAliasesKey];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [NSSet alloc];
      registration = [(IDSDAccount *)selfCopy2 registration];
      candidateEmails = [registration candidateEmails];
      v12 = [v9 initWithArray:candidateEmails];

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
        selfCopy = v30;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Current   aliases: %@", buf, 0xCu);
      }

      v22 = +[IMRGLog accountUpdate];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v29;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Aliases to remove: %@", buf, 0xCu);
      }

      v23 = +[IMRGLog accountUpdate];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Aliases to    add: %@", buf, 0xCu);
      }

      allObjects = [(IDSDAccount *)v29 allObjects];
      [(IDSDAccount *)selfCopy2 _removeAliases:allObjects withReason:6];

      allObjects2 = [(IDSDAccount *)v29 allObjects];
      [(IDSDAccount *)selfCopy2 removeAliases:allObjects2];

      allObjects3 = [(IDSDAccount *)v13 allObjects];
      [(IDSDAccount *)selfCopy2 addAliases:allObjects3];
    }
  }

  [(IDSDAccount *)selfCopy2 _writeAccountDefaults:infoCopy force:0];
  linkedAccounts = [(IDSDAccount *)selfCopy2 linkedAccounts];
  if ([linkedAccounts count])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10048D88C;
    v31[3] = &unk_100BDB090;
    v32 = [[NSMutableDictionary alloc] initWithDictionary:infoCopy];
    v28 = v32;
    [linkedAccounts __imForEach:v31];
  }
}

- (BOOL)forEachAdhocAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSDServiceController sharedInstance];
  service = [(IDSDAccount *)self service];
  identifier = [service identifier];
  v8 = [v5 adHocServicesForIdentifier:identifier];

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
      v49 = accountCopy;
      selfCopy = self;
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
                isTraditionalLocalSetupEnabled = [v19 isTraditionalLocalSetupEnabled];

                if (!isTraditionalLocalSetupEnabled)
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
                accountType = [(IDSDAccount *)self accountType];
                if (accountType == 2)
                {
                  if ([v27 accountType] != 2)
                  {
                    goto LABEL_33;
                  }
                }

                else if (accountType == 1)
                {
                  if ([v27 accountType] != 1)
                  {
                    goto LABEL_33;
                  }

                  loginID = [v27 loginID];
                  lowercaseString = [loginID lowercaseString];
                  loginID2 = [(IDSDAccount *)self loginID];
                  lowercaseString2 = [loginID2 lowercaseString];
                  if (IMAreObjectsLogicallySame())
                  {

                    v22 = v51;
                  }

                  else
                  {
                    loginID3 = [v27 loginID];
                    if ([loginID3 length])
                    {

                      accountCopy = v49;
                      v22 = v51;
                      goto LABEL_33;
                    }

                    loginID4 = [(IDSDAccount *)self loginID];
                    v48 = [loginID4 length];

                    self = selfCopy;
                    accountCopy = v49;
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
                  if (accountType)
                  {
                    goto LABEL_33;
                  }

                  if ([v27 accountType])
                  {
                    goto LABEL_33;
                  }

                  userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
                  userUniqueIdentifier2 = [v27 userUniqueIdentifier];
                  v31 = [userUniqueIdentifier isEqualToString:userUniqueIdentifier2];

                  self = selfCopy;
                  if ((v31 & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }

                break;
              }

              accountCopy[2](accountCopy, v27);
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
  service = [(IDSDAccount *)self service];
  loginID = [(IDSDAccount *)self loginID];
  uniqueID = [(IDSDAccount *)self uniqueID];
  [(IDSDAccount *)self accountType];
  v18 = _StringForIDSAccountType();
  vettedAliases = [(IDSDAccount *)self vettedAliases];
  v25 = [IDSLogFormatter descriptionForArray:vettedAliases options:0];
  unprefixedURIStringsFromRegistration = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  v17 = [IDSLogFormatter descriptionForArray:unprefixedURIStringsFromRegistration options:0];
  registration = [(IDSDAccount *)self registration];
  v3 = [registration debugDescription];
  isRegistered = [(IDSDAccount *)self isRegistered];
  v5 = @"NO";
  if (isRegistered)
  {
    v5 = @"YES";
  }

  v16 = v5;
  v15 = sub_100016528([(IDSDAccount *)self registrationError]);
  v14 = sub_100016528([(IDSDAccount *)self lastRegistrationFailureError]);
  lastRegistrationFailureDate = [(IDSDAccount *)self lastRegistrationFailureDate];
  lastRegistrationSuccessDate = [(IDSDAccount *)self lastRegistrationSuccessDate];
  userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
  linkedAccounts = [(IDSDAccount *)self linkedAccounts];
  v9 = [linkedAccounts arrayByApplyingSelector:"uniqueID"];
  v10 = [IDSLogFormatter descriptionForArray:v9 options:0];
  v11 = [NSString stringWithFormat:@"IDSDAccount: %p [Service: %@ Login: %@ UniqueID: %@ Account Type: %@ Vetted Aliases: %@ Aliases: %@ Registration: %@  Registered: %@  Registration Error: %@  Last Registration Failure Error: %@  Last Registration Failure Date: %@  Last Registration Success Date: %@  User Unique ID: %@ Linked Accounts: %@]", self, service, loginID, uniqueID, v18, v25, v17, v3, v16, v15, v14, lastRegistrationFailureDate, lastRegistrationSuccessDate, userUniqueIdentifier, v10];

  objc_autoreleasePoolPop(v24);

  return v11;
}

- (void)_notifyClientDelegatesWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v12 = blockCopy;
    v5 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(IMMessageContext);
    v7 = +[IDSDaemon sharedInstance];
    service = [(IDSDAccount *)self service];
    pushTopic = [service pushTopic];
    v10 = [v7 broadcasterForTopic:pushTopic ignoreServiceListener:1 messageContext:v6];

    v11 = objc_autoreleasePoolPush();
    v12[2](v12, v10);
    objc_autoreleasePoolPop(v11);

    objc_autoreleasePoolPop(v5);
    blockCopy = v12;
  }
}

- (void)_notifyDelegatesAddedLocalDevice:(id)device
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10048E318;
  v5[3] = &unk_100BDD498;
  deviceCopy = device;
  selfCopy = self;
  v4 = deviceCopy;
  [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v5];
}

- (void)didAddPairedDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v4 integerValue];

  if (!integerValue)
  {
    [(IDSDAccount *)self _notifyDelegatesAddedLocalDevice:deviceCopy];
  }
}

- (void)didRemovePairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v5 integerValue];

  if (!integerValue)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10048E690;
    v7[3] = &unk_100BDD498;
    v7[4] = self;
    v8 = deviceCopy;
    [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v7];
  }
}

- (void)didUpdatePairedDevice:(id)device
{
  v4 = [device objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v4 integerValue];

  if (!integerValue)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10048E918;
    v6[3] = &unk_100BDB090;
    v6[4] = self;
    [(IDSDAccount *)self _notifyClientDelegatesWithBlock:v6];
  }
}

- (void)didUpdateProtocolForPairedDevice:(id)device
{
  v4 = [device objectForKey:IDSDevicePropertyPairingType];
  integerValue = [v4 integerValue];

  if (!integerValue)
  {
    service = [(IDSDAccount *)self service];
    pushTopic = [service pushTopic];
    if ([pushTopic isEqualToIgnoringCase:@"com.apple.private.alloy.bluetoothregistry"])
    {
    }

    else
    {
      service2 = [(IDSDAccount *)self service];
      pushTopic2 = [service2 pushTopic];
      v10 = [pushTopic2 isEqualToIgnoringCase:@"com.apple.private.alloy.bluetoothregistryclassc"];

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

- (void)setPendingDependentCheck:(BOOL)check
{
  if (check)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(self + 80) = *(self + 80) & 0xDF | v3;
}

- (void)setIsBeingRemoved:(BOOL)removed
{
  if (removed)
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
  senderKeyDistributionManager = [v2 senderKeyDistributionManager];

  return senderKeyDistributionManager;
}

- (int)_currentForcedGDRCount
{
  userDefaults = [(IDSDAccount *)self userDefaults];
  v3 = [userDefaults appValueForKey:@"performedGDROverrides"];
  intValue = [v3 intValue];

  return intValue;
}

- (void)_incrementForcedGDRCount
{
  _currentForcedGDRCount = [(IDSDAccount *)self _currentForcedGDRCount];
  userDefaults = [(IDSDAccount *)self userDefaults];
  v4 = [NSNumber numberWithInt:_currentForcedGDRCount + 1];
  [userDefaults setAppValue:v4 forKey:@"performedGDROverrides"];
}

- (void)_clearForcedGDRCount
{
  userDefaults = [(IDSDAccount *)self userDefaults];
  [userDefaults removeAppValueForKey:@"performedGDROverrides"];
}

- (void)_clearForcedGDRDate
{
  userDefaults = [(IDSDAccount *)self userDefaults];
  [userDefaults removeAppValueForKey:@"last24PeriodGDRPerformed"];
}

- (id)_performedForcedGDRDatePeriod
{
  userDefaults = [(IDSDAccount *)self userDefaults];
  v3 = [userDefaults appValueForKey:@"last24PeriodGDRPerformed"];
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
  _performedForcedGDRDatePeriod = [(IDSDAccount *)self _performedForcedGDRDatePeriod];
  v5 = [_performedForcedGDRDatePeriod earlierDate:v3];

  if (v5 == _performedForcedGDRDatePeriod)
  {
    userDefaults = [(IDSDAccount *)self userDefaults];
    [v8 timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithDouble:?];
    [userDefaults setAppValue:v7 forKey:@"last24PeriodGDRPerformed"];
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
      intValue = [v8 intValue];
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = intValue;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Server Bag provided us with %d max forced GDRs", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v17 = intValue;
        _IDSLogV();
      }

      v7 = intValue;
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
    _performedForcedGDRDatePeriod = [(IDSDAccount *)self _performedForcedGDRDatePeriod];
    v7 = +[NSDate date];
    v13 = [v7 dateByAddingTimeInterval:-86400.0];

    v14 = [_performedForcedGDRDatePeriod earlierDate:v13];
    LODWORD(v7) = v14 == _performedForcedGDRDatePeriod;

    if (v7)
    {
      [(IDSDAccount *)self _clearForcedGDRCount];
      [(IDSDAccount *)self _clearForcedGDRDate];
      _performedForcedGDRDatePeriod2 = [(IDSDAccount *)self _performedForcedGDRDatePeriod];
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
    phoneNumber = [(IDSRegistration *)self->_registrationInfo phoneNumber];
    if ([phoneNumber length])
    {
      v5 = IMSingleObjectArray();
      [(IDSDAccount *)self _updateVettedAliases:v5 emailInfo:0 addToCurrentHandlesIfNeeded:1];

      v6 = [NSDictionary dictionaryWithObject:phoneNumber forKey:kIDSServiceDefaultsLoginAsKey];
      [(IDSDAccount *)self writeAccountDefaults:v6];

      v7 = [NSDictionary dictionaryWithObject:phoneNumber forKey:kIDSServiceDefaultsDisplayNameKey];
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

    if ([phoneNumber length] && -[IDSDAccount _validationStatusForAlias:](self, "_validationStatusForAlias:", phoneNumber) != 3)
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

      [(IDSDAccount *)self _setValidationStatus:3 error:0xFFFFFFFFLL forAlias:phoneNumber info:0 addToCurrentHandlesIfNeeded:1 forceAdd:0];
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
  identifier = [(IDSServiceProperties *)self->_service identifier];
  v4 = [identifier isEqualToString:@"com.apple.madrid"];

  if (v4)
  {
    v5 = @"iMessage";
  }

  else
  {
    identifier2 = [(IDSServiceProperties *)self->_service identifier];
    v7 = [identifier2 isEqualToString:@"com.apple.ess"];

    if (!v7)
    {
      return;
    }

    v5 = @"FaceTime";
  }

  v8 = IMPreferredAccountMap();
  v9 = [v8 objectForKey:v5];
  v10 = [v9 objectForKey:@"guid"];

  accountController = [(IDSDAccount *)self accountController];
  v12 = [accountController appleIDAccountOnService:self->_service];
  uniqueID = [v12 uniqueID];

  if (!v10 || ([v10 isEqualToString:uniqueID] & 1) == 0)
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v17 = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = uniqueID2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating preferred account to Home Number {service: %@, oldID: %@, newID: %@}", &v17, 0x20u);
    }

    uniqueID3 = [(IDSDAccount *)self uniqueID];
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

- (BOOL)_rebuildRegistrationInfo:(BOOL)info
{
  infoCopy = info;
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
      systemMonitor = [(IDSDAccount *)self systemMonitor];
      isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

      if (isUnderFirstDataProtectionLock)
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

    _neededRegistrationType = [(IDSDAccount *)self _neededRegistrationType];
    if (_neededRegistrationType == [(IDSRegistration *)self->_registrationInfo registrationType])
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
            loginID = [(IDSDAccount *)self loginID];
            email = [(IDSRegistration *)self->_registrationInfo email];
            v14 = [loginID isEqualToIgnoringCase:email];

            if ((v14 & 1) == 0)
            {
              v20 = +[IMRGLog registration];
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_34;
              }

              loginID2 = [(IDSDAccount *)self loginID];
              email2 = [(IDSRegistration *)self->_registrationInfo email];
              *buf = 138412546;
              *v236 = loginID2;
              *&v236[8] = 2112;
              v237 = email2;
              v214 = "Emails are different, we need to rebuild  (%@ vs %@)";
              goto LABEL_219;
            }
          }

          if (!self->_registrationInfo)
          {
            return 0;
          }

          pushToken = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
          if (!pushToken)
          {
            return 0;
          }

          v16 = pushToken;
          pushToken2 = [(IDSRegistration *)self->_registrationInfo pushToken];
          pushToken3 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
          v19 = [pushToken2 isEqual:pushToken3];

          if (v19)
          {
            return 0;
          }

          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            loginID2 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
            email2 = [(IDSRegistration *)self->_registrationInfo pushToken];
            *buf = 138412546;
            *v236 = loginID2;
            *&v236[8] = 2112;
            v237 = email2;
            v214 = "Push tokens are different, we need to rebuild  (%@ vs %@)";
LABEL_219:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v214, buf, 0x16u);
          }

LABEL_34:

          if (!infoCopy)
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

          _neededRegistrationType2 = [(IDSDAccount *)self _neededRegistrationType];
          v36 = _neededRegistrationType2;
          if (_neededRegistrationType2)
          {
            if (_neededRegistrationType2 == 2)
            {
              userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
            }

            else
            {
              v37 = 0;
              if (_neededRegistrationType2 != 1)
              {
                goto LABEL_48;
              }

              userUniqueIdentifier = [(IDSDAccount *)self loginID];
            }

            v37 = userUniqueIdentifier;
          }

          else
          {
            userUniqueIdentifier2 = [(IDSDAccount *)self userUniqueIdentifier];
            v40 = userUniqueIdentifier2;
            v41 = @"phone-number-registration";
            if (userUniqueIdentifier2)
            {
              v41 = userUniqueIdentifier2;
            }

            v37 = v41;
          }

LABEL_48:

          v42 = +[IDSRegistrationKeychainManager sharedInstance];
          serviceType = [(IDSDAccount *)self serviceType];
          v44 = [v42 registrationWithServiceType:serviceType registrationType:v36 value:v37];
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

            regionID = [(IDSRegistration *)v46 regionID];
            v48 = &_dispatch_main_q_ptr;
            if ([regionID length])
            {
              regionBasePhoneNumber = [(IDSRegistration *)self->_registrationInfo regionBasePhoneNumber];
              regionServerContext = [(IDSRegistration *)self->_registrationInfo regionServerContext];
              v51 = [NSNumber numberWithInt:3];
              v52 = [NSNumber numberWithInt:0xFFFFFFFFLL];
              v53 = +[IMRGLog registration];
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = regionID;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Found pre-existing regionID %@", buf, 0xCu);
              }

              v54 = +[IMRGLog registration];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = regionBasePhoneNumber;
                _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Found pre-existing base phone number %@", buf, 0xCu);
              }

              v55 = +[IMRGLog registration];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = regionServerContext;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found pre-existing region context %@", buf, 0xCu);
              }

              v56 = objc_alloc_init(NSMutableDictionary);
              v57 = regionID;
              if (v57)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileRegionIDKey, v57);
              }

              v58 = regionBasePhoneNumber;
              v48 = &_dispatch_main_q_ptr;
              if (v58)
              {
                CFDictionarySetValue(v56, kIDSServiceDefaultsProfileBaseNumberKey, v58);
              }

              v59 = regionServerContext;
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

            vettedEmails = [(IDSRegistration *)self->_registrationInfo vettedEmails];
            v233[0] = _NSConcreteStackBlock;
            v233[1] = 3221225472;
            v233[2] = sub_1004EB1A0;
            v233[3] = &unk_100BD9528;
            v233[4] = self;
            serviceType2 = [vettedEmails __imArrayByApplyingBlock:v233];

            vettedAliases = [(IDSDAccount *)self vettedAliases];
            v66 = [vettedAliases count];

            if (v66)
            {
              v67 = self->_registrationInfo;
              vettedAliases2 = [(IDSDAccount *)self vettedAliases];
              [(IDSRegistration *)v67 setVettedEmails:vettedAliases2];
            }

            if ([serviceType2 count])
            {
              v69 = +[IMRGLog registration];
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v236 = serviceType2;
                _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Found pre-existing confirmedEmails emails %@", buf, 0xCu);
              }

              v70 = [(dispatch_queue_s *)v48[25] dictionaryWithObject:serviceType2 forKey:kIDSServiceDefaultsVettedAliasesKey];
              [(IDSDAccount *)self _writeAccountDefaults:v70 force:1];
            }
          }

          else
          {
            regionID = +[IMRGLog registration];
            if (!os_log_type_enabled(regionID, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_77;
            }

            serviceType2 = [(IDSDAccount *)self serviceType];
            *buf = 138412546;
            *v236 = serviceType2;
            *&v236[8] = 2112;
            v237 = v37;
            _os_log_impl(&_mh_execute_header, regionID, OS_LOG_TYPE_DEFAULT, "Didn't find a registration in the keychain for %@ %@", buf, 0x16u);
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
              userUniqueIdentifier3 = [(IDSRegistration *)v173 userUniqueIdentifier];

              v175 = self->_registrationInfo;
              if (!userUniqueIdentifier3)
              {
                userUniqueIdentifier4 = [(IDSDAccount *)self userUniqueIdentifier];
                [(IDSRegistration *)v175 setUserUniqueIdentifier:userUniqueIdentifier4];

                v175 = self->_registrationInfo;
              }

LABEL_166:
              uris = [(IDSRegistration *)v175 uris];
              if ([uris count] || -[IDSRegistration shouldRegisterUsingDSHandle](self->_registrationInfo, "shouldRegisterUsingDSHandle"))
              {
              }

              else
              {
                registrationStatus = [(IDSRegistration *)self->_registrationInfo registrationStatus];

                if (registrationStatus == 8)
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

              registrationCert = [(IDSRegistration *)self->_registrationInfo registrationCert];
              if (registrationCert)
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

              accountInfo = [(IDSDAccount *)self accountInfo];
              v181 = kIDSServiceDefaultsAuthorizationIDKey;
              v182 = [accountInfo objectForKey:kIDSServiceDefaultsAuthorizationIDKey];

              profileID = [(IDSRegistration *)self->_registrationInfo profileID];
              if (![v182 length] && objc_msgSend(profileID, "length"))
              {
                v184 = +[IMRGLog registration];
                if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v236 = profileID;
                  _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "Setting profileID %@ onto account", buf, 0xCu);
                }

                v185 = objc_alloc_init(NSMutableDictionary);
                v186 = profileID;
                if (v186)
                {
                  CFDictionarySetValue(v185, v181, v186);
                }

                [(IDSDAccount *)self writeAccountDefaults:v185];
              }

              v216 = profileID;
              registrationError = [(IDSDAccount *)self registrationError];
              if ([(IDSDAccount *)self shouldRegisterUsingDSHandle])
              {
                dsHandle = [(IDSRegistration *)self->_registrationInfo dsHandle];
                v189 = [dsHandle length] == 0;
              }

              else
              {
                v189 = 0;
              }

              if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
              {
                profileID2 = [(IDSRegistration *)self->_registrationInfo profileID];
                if (![profileID2 length])
                {
                  v189 = 1;
                }
              }

              v218 = v182;
              if ((registrationError - 33) > 1)
              {
                if (!v189)
                {
LABEL_197:
                  [(IDSDAccount *)self refreshAdHocServiceNames];
                  v198 = +[IMRGLog registration];
                  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
                  {
                    _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
                    v200 = IMLoggingStringForArray();
                    uniqueID = [(IDSDAccount *)self uniqueID];
                    *buf = 138412546;
                    *v236 = v200;
                    *&v236[8] = 2112;
                    v237 = uniqueID;
                    _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, "Current aliases: %@   for: %@", buf, 0x16u);
                  }

                  v222 = 0u;
                  v223 = 0u;
                  v220 = 0u;
                  v221 = 0u;
                  _unprefixedURIStringsFromAccountInfo2 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
                  v203 = [_unprefixedURIStringsFromAccountInfo2 countByEnumeratingWithState:&v220 objects:v234 count:16];
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
                          objc_enumerationMutation(_unprefixedURIStringsFromAccountInfo2);
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

                      v204 = [_unprefixedURIStringsFromAccountInfo2 countByEnumeratingWithState:&v220 objects:v234 count:16];
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
                profileID3 = [(IDSRegistration *)self->_registrationInfo profileID];
                email3 = [(IDSRegistration *)self->_registrationInfo email];
                lowercaseString = [email3 lowercaseString];
                serviceType3 = [(IDSRegistration *)self->_registrationInfo serviceType];
                v224[0] = _NSConcreteStackBlock;
                v224[1] = 3221225472;
                v224[2] = sub_1004EB208;
                v224[3] = &unk_100BDEE48;
                v224[4] = self;
                [v191 fetchAuthTokenForProfileID:profileID3 username:lowercaseString service:serviceType3 outRequestID:0 completionBlock:v224];
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

          sharedInstance = [p_superclass + 469 sharedInstance];
          [sharedInstance removeRegistrationInfo:self->_registrationInfo];

          v79 = objc_alloc_init(IDSRegistration);
          v80 = self->_registrationInfo;
          self->_registrationInfo = v79;

          serviceType4 = [(IDSDAccount *)self serviceType];
          [(IDSRegistration *)self->_registrationInfo setServiceType:serviceType4];
          v82 = self->_registrationInfo;
          v83 = _IDSRegistrationServiceIdentifierFromServiceType();
          [(IDSRegistration *)v82 setServiceIdentifier:v83];

          [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
          [(IDSRegistration *)self->_registrationInfo setRegistrationType:v36];
          v84 = self->_registrationInfo;
          pushToken4 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
          [(IDSRegistration *)v84 setPushToken:pushToken4];

          [(IDSRegistration *)self->_registrationInfo setShouldAutoRegisterAllHandles:[(IDSDAccount *)self shouldAutoRegisterAllHandles]];
          [(IDSRegistration *)self->_registrationInfo setShouldRegisterUsingDSHandle:[(IDSDAccount *)self shouldRegisterUsingDSHandle]];
          v86 = self->_registrationInfo;
          userUniqueIdentifier5 = [(IDSDAccount *)self userUniqueIdentifier];
          [(IDSRegistration *)v86 setUserUniqueIdentifier:userUniqueIdentifier5];

          if (v36 == 1)
          {
            v88 = self->_registrationInfo;
            loginID3 = [(IDSDAccount *)self loginID];
            [(IDSRegistration *)v88 setEmail:loginID3];
          }

          accountInfo2 = [(IDSDAccount *)self accountInfo];
          v91 = [accountInfo2 objectForKey:kIDSServiceDefaultsAuthorizationIDKey];

          v217 = v91;
          if ([v91 length])
          {
            profileID4 = [(IDSRegistration *)self->_registrationInfo profileID];
            if ([profileID4 length])
            {
              profileID5 = [(IDSRegistration *)self->_registrationInfo profileID];
              v94 = [v91 isEqualToString:profileID5];

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
          v215 = serviceType4;
          idsUserID = [(IDSRegistration *)self->_registrationInfo idsUserID];
          if ([idsUserID length])
          {
            idsUserID2 = [(IDSRegistration *)self->_registrationInfo idsUserID];
            v98 = [idsUserID2 _FZIDType] == 1;
          }

          else
          {
            v98 = 0;
          }

          if (v36 == 1 && !v98)
          {
            profileID6 = [(IDSRegistration *)self->_registrationInfo profileID];
            v100 = [profileID6 length];

            if (!v100)
            {
              goto LABEL_130;
            }

            v231 = 0u;
            v232 = 0u;
            v229 = 0u;
            v230 = 0u;
            v101 = +[IDSRegistrationKeychainManager sharedInstance];
            registrations = [v101 registrations];

            v103 = [registrations countByEnumeratingWithState:&v229 objects:v241 count:16];
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
                    objc_enumerationMutation(registrations);
                  }

                  v107 = *(*(&v229 + 1) + 8 * j);
                  registrationCert2 = [v107 registrationCert];
                  if (registrationCert2 && [v107 registrationType] == 1)
                  {
                    profileID7 = [v107 profileID];
                    profileID8 = [(IDSRegistration *)self->_registrationInfo profileID];
                    v111 = [profileID7 isEqualToIgnoringCase:profileID8];

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
                      isC2KEquipment = [v114 isC2KEquipment];

                      v116 = self->_registrationInfo;
                      idsUserID3 = [v107 idsUserID];
                      [(IDSRegistration *)v116 setIdsUserID:idsUserID3];

                      v118 = self->_registrationInfo;
                      v119 = [NSNumber numberWithBool:isC2KEquipment];
                      [(IDSRegistration *)v118 setIsCDMA:v119];

                      v120 = self->_registrationInfo;
                      v121 = +[IDSRegistrationKeyManager sharedInstance];
                      keyPairSignature = [v121 keyPairSignature];
                      [(IDSRegistration *)v120 setKeyPairSignature:keyPairSignature];

                      goto LABEL_117;
                    }
                  }

                  else
                  {
                  }
                }

                v104 = [registrations countByEnumeratingWithState:&v229 objects:v241 count:16];
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
              loginID4 = [(IDSDAccount *)self loginID];
              [(IDSRegistration *)v155 setMainID:loginID4];

              v157 = self->_registrationInfo;
              loginID5 = [(IDSDAccount *)self loginID];
              v159 = [loginID5 _IDFromFZIDType:0];
              [(IDSRegistration *)v157 setIdsUserID:v159];

              accountController = [(IDSDAccount *)self accountController];
              serviceController = [(IDSDAccount *)self serviceController];
              iCloudService = [serviceController iCloudService];
              v163 = [accountController appleIDAccountOnService:iCloudService];
              loginID6 = [v163 loginID];

              [(IDSRegistration *)self->_registrationInfo setEmail:loginID6];
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

              loginID6 = [(IDSRegistration *)self->_registrationInfo userUniqueIdentifier];
              mainID = [(IDSRegistration *)self->_registrationInfo mainID];
              if (loginID6)
              {
                v125 = +[IDSRegistrationKeychainManager sharedInstance];
                v126 = [v125 smsSignatureForID:loginID6];

                v127 = +[FTDeviceSupport sharedInstance];
                isC2KEquipment2 = [v127 isC2KEquipment];

                v129 = +[IDSRegistrationKeyManager sharedInstance];
                keyPairSignature2 = [v129 keyPairSignature];

                v131 = +[IMRGLog registration];
                if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = @"NO";
                  *buf = 138412802;
                  *v236 = mainID;
                  *&v236[8] = 2112;
                  if (isC2KEquipment2)
                  {
                    v132 = @"YES";
                  }

                  v237 = v132;
                  v238 = 2112;
                  v239 = keyPairSignature2;
                  _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Setting idsUserID , mainID, isCDMA, and keyPairSignature on phone number registration {mainID: %@, isC2K: %@, keyPairSignature: %@}", buf, 0x20u);
                }

                if (mainID)
                {
                  v133 = self->_registrationInfo;
                  v134 = [mainID _IDFromFZIDType:0];
                  [(IDSRegistration *)v133 setIdsUserID:v134];
                }

                v135 = self->_registrationInfo;
                v136 = [NSNumber numberWithBool:isC2KEquipment2];
                [(IDSRegistration *)v135 setIsCDMA:v136];

                [(IDSRegistration *)self->_registrationInfo setKeyPairSignature:keyPairSignature2];
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
          _unprefixedURIStringsFromAccountInfo3 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
          v140 = [_unprefixedURIStringsFromAccountInfo3 countByEnumeratingWithState:&v225 objects:v240 count:16];
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
                  objc_enumerationMutation(_unprefixedURIStringsFromAccountInfo3);
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

              v141 = [_unprefixedURIStringsFromAccountInfo3 countByEnumeratingWithState:&v225 objects:v240 count:16];
            }

            while (v141);
          }

          accountInfo3 = [(IDSDAccount *)self accountInfo];
          loginID6 = [accountInfo3 objectForKey:kIDSServiceDefaultsProfileKey];

          v149 = +[IMRGLog registration];
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v236 = loginID6;
            _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Existing region profile: %@", buf, 0xCu);
          }

          if ([loginID6 count])
          {
            v150 = [loginID6 objectForKey:kIDSServiceDefaultsProfileValdationStatusKey];
            intValue = [v150 intValue];

            if (intValue == 3)
            {
              v152 = +[IMRGLog registration];
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "We have a profile, and it's validated!", buf, 2u);
              }

              regionID2 = [(IDSRegistration *)self->_registrationInfo regionID];
              v154 = [regionID2 length];

              if (!v154)
              {
                v164 = +[IMRGLog registration];
                if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "No region ID, we'll use our profile's", buf, 2u);
                }

                v165 = self->_registrationInfo;
                v166 = [loginID6 objectForKey:kIDSServiceDefaultsProfileRegionIDKey];
                [(IDSRegistration *)v165 setRegionID:v166];

                v167 = self->_registrationInfo;
                v168 = [loginID6 objectForKey:kIDSServiceDefaultsProfileBaseNumberKey];
                [(IDSRegistration *)v167 setRegionBasePhoneNumber:v168];

                v169 = self->_registrationInfo;
                v170 = [loginID6 objectForKey:kIDSServiceDefaultsProfileServerContextKey];
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

      registrationType = [(IDSRegistration *)self->_registrationInfo registrationType];
      *buf = 67109120;
      *v236 = registrationType;
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

      _neededRegistrationType3 = [(IDSDAccount *)self _neededRegistrationType];
      registrationType2 = [(IDSRegistration *)self->_registrationInfo registrationType];
      *buf = 67109376;
      *v236 = _neededRegistrationType3;
      *&v236[4] = 1024;
      *&v236[6] = registrationType2;
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
  accountController = [(IDSDAccount *)self accountController];
  isLocalSetupEnabled = [accountController isLocalSetupEnabled];

  accountController2 = [(IDSDAccount *)self accountController];
  isTraditionalLocalSetupEnabled = [accountController2 isTraditionalLocalSetupEnabled];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = +[IDSDServiceController sharedInstance];
  service = [(IDSDAccount *)self service];
  identifier = [service identifier];
  v10 = [v7 adHocServicesForIdentifier:identifier];

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
        adHocServiceType = [v16 adHocServiceType];
        if (adHocServiceType)
        {
          v18 = adHocServiceType == 5;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = adHocServiceType;
          if ((adHocServiceType != 2) | isLocalSetupEnabled & 1)
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
              accountType = [(IDSDAccount *)self accountType];
              if (v19 == 2 && accountType == 0)
              {
                goto LABEL_11;
              }
            }

            if ([v16 disabledOnTinkerWatch] && (+[IDSPairingManager sharedInstance](IDSPairingManager, "sharedInstance"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isCurrentDeviceTinkerConfiguredWatch"), v22, v23))
            {
              identifier2 = +[IMRGLog registration];
              if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v29;
                v36 = v16;
                _os_log_impl(&_mh_execute_header, identifier2, OS_LOG_TYPE_DEFAULT, "Ignoring tinker disabled service {service: %@}", buf, 0xCu);
              }
            }

            else
            {
              if (!(isTraditionalLocalSetupEnabled & 1 | (([v16 enabledOnlyWhenPaired] & 1) == 0)))
              {
                goto LABEL_11;
              }

              identifier2 = [v16 identifier];
              [v30 addObject:identifier2];
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

- (void)_registrationAbilityChanged:(id)changed
{
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDAccount *)self uniqueID];
    v8 = 138412290;
    v9 = uniqueID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device Controller says I should maybe try to re-register now: %@", &v8, 0xCu);
  }

  [(IDSDAccount *)self _rebuildRegistrationInfo:1];
  if (![(IDSDAccount *)self isDeviceRegistered])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v8 = 138412290;
      v9 = uniqueID2;
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

- (void)_identityRebuilt:(id)rebuilt
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100924E9C();
  }

  [(IDSDAccount *)self reregister];
}

- (void)_identityGenerated:(id)generated
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "***** Notified that a new identity was generated -- re-registering { account: %@ }", &v5, 0xCu);
  }

  [(IDSDAccount *)self reregister];
}

- (void)_needsEncryptionIdentityRoll:(id)roll
{
  v4 = +[IMRGLog warning];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100924F04();
  }

  [(IDSDAccount *)self reregister];
}

- (void)_keychainMigrationComplete:(id)complete
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

    isDeviceRegistered = [(IDSDAccount *)self isDeviceRegistered];
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
      if (isDeviceRegistered)
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
            selfCopy = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "****** NOT Forcing Registration, we were active, but unregistered, however there's nothing to register: %@ ******", &v16, 0xCu);
          }

          goto LABEL_22;
        }

        registrationInfo = self->_registrationInfo;
      }

      registrationCert = [(IDSRegistration *)registrationInfo registrationCert];
      *(self + 80) = *(self + 80) & 0xFB | (4 * (registrationCert != 0));

      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "****** Forcing Registration, we were active, but unregistered: %@ ******", &v16, 0xCu);
      }
    }

    [(IDSDAccount *)self _registerAccount];
    goto LABEL_22;
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    smallDescription = [(IDSDAccount *)self smallDescription];
    v16 = 138412290;
    selfCopy = smallDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Account %@ is disabled, ignoring...", &v16, 0xCu);
  }
}

- (void)_updatePseudonymsFromEmailInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  [(IDSDAccount *)self _removeAllPseudonyms];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = infoCopy;
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
        if (-[IDSDAccount accountType](selfCopy, "accountType") != 1 || ![v49 _appearsToBePhoneNumber] || (+[IDSRegistrationController registeredPhoneNumbers](IDSRegistrationController, "registeredPhoneNumbers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v49), v9, (v10 & 1) == 0))
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
                _stripFZIDPrefix = [v49 _stripFZIDPrefix];
                v17 = [v15 initWithUnprefixedURI:_stripFZIDPrefix];

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

                service = [(IDSDAccount *)selfCopy service];
                identifier = [service identifier];
                v33 = [v23 containsObject:identifier];

                if (v33 && v53 && v55 && [v23 count])
                {
                  v34 = [IDSPseudonymProperties alloc];
                  [v55 doubleValue];
                  v36 = v35;
                  allObjects = [v23 allObjects];
                  v38 = [v34 initWithFeatureID:v53 scopeID:v52 expiryEpoch:allObjects allowedServices:v36];

                  v39 = [[IDSPseudonym alloc] initWithURI:v14 maskedURI:v17 properties:v38];
                  [v46 addObject:v39];
                }

                objc_autoreleasePoolPop(context);
              }

              v50 = [v51 countByEnumeratingWithState:&v60 objects:v69 count:16];
            }

            while (v50);
          }

          [(IDSDAccount *)selfCopy _addPseudonyms:v46];
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

- (void)_updateVettedAliases:(id)aliases emailInfo:(id)info addToCurrentHandlesIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  aliasesCopy = aliases;
  infoCopy = info;
  _uriDictionariesFromAccountInfo = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
  vettedAliases = [(IDSDAccount *)self vettedAliases];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1004ECBBC;
  v49[3] = &unk_100BDEE70;
  v49[4] = self;
  v12 = aliasesCopy;
  v50 = v12;
  v13 = [_uriDictionariesFromAccountInfo __imArrayByApplyingBlock:v49];
  if (v12 && vettedAliases && [v12 isEqualToArray:vettedAliases] && !objc_msgSend(v13, "count"))
  {
    v33 = v12;
  }

  else
  {
    v41 = _uriDictionariesFromAccountInfo;
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [(IDSDAccount *)self uniqueID];
      *buf = 138412802;
      v57 = v12;
      v58 = 2112;
      v59 = vettedAliases;
      v60 = 2112;
      v61 = uniqueID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating vetted aliases to: %@     current: %@   ID: %@", buf, 0x20u);
    }

    v16 = [IDSHandleListUpdatedMetric alloc];
    service = [(IDSDAccount *)self service];
    serviceName = [service serviceName];
    v19 = [v16 initWithService:serviceName];

    v20 = +[IDSCoreAnalyticsLogger defaultLogger];
    v39 = v19;
    [v20 logMetric:v19];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = vettedAliases;
    v21 = vettedAliases;
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
        if ([infoCopy count] <= v27)
        {
          v32 = 0;
        }

        else
        {
          v29 = [infoCopy objectAtIndexedSubscript:v27];
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

        [(IDSDAccount *)self _setValidationStatus:3 error:0xFFFFFFFFLL forAlias:v28 info:0 addToCurrentHandlesIfNeeded:neededCopy forceAdd:0 aliasProperties:v32];

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
    vettedAliases = v40;
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

    _uriDictionariesFromAccountInfo = v41;
  }
}

- (void)_checkRegistration
{
  if (self->_registrationInfo)
  {
    v3 = +[IDSRegistrationKeyManager sharedInstance];
    requiresKeychainMigration = [v3 requiresKeychainMigration];

    v5 = &uuid_unparse_upper_ptr;
    if (requiresKeychainMigration)
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_10092507C();
      }

      goto LABEL_59;
    }

    serviceType = [(IDSRegistration *)self->_registrationInfo serviceType];
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
    applicationVersion = [(IDSRegistration *)self->_registrationInfo applicationVersion];
    iDSVersion = [(IDSRegistration *)self->_registrationInfo IDSVersion];
    identityVersion = [(IDSRegistration *)self->_registrationInfo identityVersion];
    keyPairSignature = [(IDSRegistration *)self->_registrationInfo keyPairSignature];
    if (!keyPairSignature)
    {
      v12 = +[IDSRegistrationKeyManager sharedInstance];
      isMigratedKeyPairSignature = [v12 isMigratedKeyPairSignature];

      if (isMigratedKeyPairSignature)
      {
        registrationInfo = self->_registrationInfo;
        v15 = +[IDSRegistrationKeyManager sharedInstance];
        keyPairSignature2 = [v15 keyPairSignature];
        [(IDSRegistration *)registrationInfo setKeyPairSignature:keyPairSignature2];

        v5 = &uuid_unparse_upper_ptr;
        keyPairSignature = [(IDSRegistration *)self->_registrationInfo keyPairSignature];
        [(IDSRegistration *)self->_registrationInfo saveToKeychain];
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_100924F6C();
        }
      }

      else
      {
        keyPairSignature = 0;
      }
    }

    if (!(applicationVersion | iDSVersion))
    {
      v18 = +[IMRGLog registration];
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

LABEL_41:
        LOBYTE(registrationCert) = 1;
        goto LABEL_42;
      }

      *buf = 0;
      v19 = "Registration protocols are empty, this is probably a new install, we'll force a register";
      goto LABEL_20;
    }

    if (iDSVersion)
    {
      v22 = _IDSIDProtocolVersionNumber();
      v23 = [iDSVersion isEqualToNumber:v22];

      if (v23)
      {
        v24 = _IDSIdentityVersionNumber();
        v25 = [identityVersion isEqualToNumber:v24];

        if (v25)
        {
          if (applicationVersion)
          {
            v5 = &uuid_unparse_upper_ptr;
            if ([applicationVersion isEqualToNumber:v6])
            {
              if (!keyPairSignature || (+[IDSRegistrationKeyManager sharedInstance](IDSRegistrationKeyManager, "sharedInstance"), v26 = objc_claimAutoreleasedReturnValue(), [v26 keyPairSignature], v27 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(keyPairSignature, "isEqualToString:", v27), v27, v5 = &uuid_unparse_upper_ptr, v26, (v44 & 1) == 0))
              {
                registration = [v5[504] registration];
                if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = +[IDSRegistrationKeyManager sharedInstance];
                  keyPairSignature3 = [v41 keyPairSignature];
                  *buf = 138412546;
                  v49 = keyPairSignature;
                  v50 = 2112;
                  v51 = keyPairSignature3;
                  _os_log_impl(&_mh_execute_header, registration, OS_LOG_TYPE_DEFAULT, "Registration key pair signatures are different (%@ -> %@), clearing cert - forcing redentification", buf, 0x16u);

                  v5 = &uuid_unparse_upper_ptr;
                }

                [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
                goto LABEL_41;
              }

              v28 = +[IDSRegistrationKeyManager sharedInstance];
              service = [(IDSDAccount *)self service];
              applicationKeyIndex = [service applicationKeyIndex];
              service2 = [(IDSDAccount *)self service];
              v46 = [v28 needsPublicDataUpdatedForKeyIndex:applicationKeyIndex ktRegistrationKeyIndex:{objc_msgSend(service2, "ktRegistrationDataIndex")}];

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
                registrationCert = [(IDSRegistration *)self->_registrationInfo registrationCert];
                if (!registrationCert)
                {
LABEL_75:
                  v5 = &uuid_unparse_upper_ptr;
LABEL_42:
                  if (IMGetCachedDomainBoolForKey())
                  {
                    warning = [v5[504] warning];
                    if (os_log_type_enabled(warning, OS_LOG_TYPE_FAULT))
                    {
                      sub_100925014();
                    }

                    v35 = +[IDSRegistrationReasonTracker sharedInstance];
                    userUniqueIdentifier = [(IDSRegistration *)self->_registrationInfo userUniqueIdentifier];
                    [v35 setPNRReason:7 forUserUniqueIdentifier:userUniqueIdentifier];

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
                      if ((registrationCert & 1) == 0)
                      {
LABEL_58:

LABEL_59:
                        return;
                      }

LABEL_55:
                      warning2 = [v5[504] warning];
                      if (os_log_type_enabled(warning2, OS_LOG_TYPE_FAULT))
                      {
                        sub_100925048();
                      }

                      [(IDSDAccount *)self _registerAccount];
                      *(self + 80) |= 4u;
                      goto LABEL_58;
                    }

                    warning3 = [v5[504] warning];
                    if (os_log_type_enabled(warning3, OS_LOG_TYPE_FAULT))
                    {
                      sub_100924FE0();
                    }
                  }

                  IMSetDomainBoolForKey();
                  goto LABEL_55;
                }

                authenticationCert = [(IDSRegistration *)self->_registrationInfo authenticationCert];

                if (!authenticationCert)
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

              LOBYTE(registrationCert) = 0;
              goto LABEL_75;
            }

            v18 = +[IMRGLog registration];
            if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_40;
            }

            *buf = 138412546;
            v49 = applicationVersion;
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
        v49 = identityVersion;
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
        v49 = iDSVersion;
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

- (void)setRegistrationStatus:(int)status error:(int64_t)error alertInfo:(id)info
{
  v6 = *&status;
  infoCopy = info;
  v9 = sub_1004503CC(error);
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

  v13 = [NSNumber numberWithInteger:error];
  if (v13)
  {
    CFDictionarySetValue(v10, kIDSServiceDefaultsRegistrationInfoInternalErrorCodeKey, v13);
  }

  if (infoCopy)
  {
    CFDictionarySetValue(v10, kIDSServiceDefaultsRegistrationInfoAlertInfoKey, infoCopy);
  }

  v14 = [NSDictionary dictionaryWithObject:v10 forKey:kIDSServiceDefaultsRegistrationInfoKey];
  [(IDSDAccount *)self _writeAccountDefaults:v14 force:1];

  if (v6 == 5 || v6 == -1)
  {
    errorCopy = error;
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

      v23 = [NSNumber numberWithInteger:errorCopy];
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

- (void)_updateRegistrationStatusWithError:(int64_t)error info:(id)info
{
  infoCopy = info;
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

    phoneNumber = [(IDSRegistration *)self->_registrationInfo phoneNumber];
    v9 = IMSingleObjectArray();
    [(IDSDAccount *)self _updateVettedAliases:v9 emailInfo:0 addToCurrentHandlesIfNeeded:1];

    goto LABEL_11;
  }

  phoneNumber = [(IDSDAccount *)self aliases];
  if (![phoneNumber count] && !-[IDSDAccount shouldAutoRegisterAllHandles](self, "shouldAutoRegisterAllHandles") && !-[IDSDAccount shouldRegisterUsingDSHandle](self, "shouldRegisterUsingDSHandle"))
  {

    goto LABEL_72;
  }

  dsHandle = [(IDSDAccount *)self dsHandle];
  if (!dsHandle)
  {
    shouldRegisterUsingDSHandle = [(IDSDAccount *)self shouldRegisterUsingDSHandle];

    if (!shouldRegisterUsingDSHandle)
    {
      goto LABEL_12;
    }

LABEL_72:
    v61 = +[IMRGLog registration];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      aliases = [(IDSDAccount *)self aliases];
      dsHandle2 = [(IDSDAccount *)self dsHandle];
      *buf = 138412546;
      selfCopy = aliases;
      v68 = 2112;
      v69 = dsHandle2;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "We were registered but we have no aliases %@ or dsHandle %@", buf, 0x16u);
    }

    authenticationToken = [(IDSRegistration *)self->_registrationInfo authenticationToken];

    if (authenticationToken)
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
  requiresKeychainMigration = [v10 requiresKeychainMigration];

  if (requiresKeychainMigration)
  {
    goto LABEL_20;
  }

  v12 = +[IDSRegistrationKeyManager sharedInstance];
  if ([v12 identityPrivateKey])
  {
    v13 = +[IDSRegistrationKeyManager sharedInstance];
    identityPublicKey = [v13 identityPublicKey];

    if (identityPublicKey)
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "We were registered, but we're missing our private/public identity keys... will reregister: %@", buf, 0xCu);
  }

  im_dispatch_after_primary_queue();
LABEL_20:
  registrationStatus = [(IDSRegistration *)self->_registrationInfo registrationStatus];
  if (registrationStatus <= 2)
  {
    if (registrationStatus > 0)
    {
      if (registrationStatus == 1)
      {
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [(IDSDAccount *)self uniqueID];
          registrationStatus2 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          selfCopy = uniqueID;
          v68 = 1024;
          LODWORD(v69) = registrationStatus2;
          v20 = "Setting account: %@ to authenticating  (Reg status: %d) (Waiting for restore)";
          goto LABEL_55;
        }
      }

      else
      {
        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [(IDSDAccount *)self uniqueID];
          registrationStatus3 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          selfCopy = uniqueID;
          v68 = 1024;
          LODWORD(v69) = registrationStatus3;
          v20 = "Setting account: %@ to authenticating  (Reg status: %d) (Waiting for push token)";
          goto LABEL_55;
        }
      }

      goto LABEL_56;
    }

    if (registrationStatus == -1)
    {
      v33 = +[IMRGLog registration];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID2 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        selfCopy = uniqueID2;
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

      [(IDSDAccount *)self setRegistrationStatus:0xFFFFFFFFLL error:error alertInfo:infoCopy];
    }

    else if (!registrationStatus)
    {
      v21 = +[IMRGLog registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        selfCopy = uniqueID3;
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
        error = -1;
      }

      [(IDSDAccount *)self setRegistrationStatus:1 error:error alertInfo:infoCopy];
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
      service = [(IDSDAccount *)self service];
      identifier = [service identifier];
      v60 = [identifier isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"];

      if (v60)
      {
        accountController = [(IDSDAccount *)self accountController];
        [accountController updateDevicePropertiesWithDevices:0];
        goto LABEL_58;
      }
    }
  }

  else if (registrationStatus > 5)
  {
    switch(registrationStatus)
    {
      case 6:
        v45 = +[IMRGLog registration];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID4 = [(IDSDAccount *)self uniqueID];
          registrationStatus4 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          selfCopy = uniqueID4;
          v68 = 1024;
          LODWORD(v69) = registrationStatus4;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to authenticated  (Reg status: %d)", buf, 0x12u);
        }

        selfCopy3 = self;
        v41 = 3;
        goto LABEL_57;
      case 7:
        v48 = +[IMRGLog registration];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID5 = [(IDSDAccount *)self uniqueID];
          registrationStatus5 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
          *buf = 138412546;
          selfCopy = uniqueID5;
          v68 = 1024;
          LODWORD(v69) = registrationStatus5;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to registering  (Reg status: %d)", buf, 0x12u);
        }

        [(IDSDAccount *)self setRegistrationStatus:4 error:-1 alertInfo:infoCopy];
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
          uniqueID6 = [(IDSDAccount *)self uniqueID];
          *buf = 138412290;
          selfCopy = uniqueID6;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Setting account: %@ to registered", buf, 0xCu);
        }

        [(IDSDAccount *)self setRegistrationStatus:5 error:-1 alertInfo:infoCopy];
        [(IDSDAccount *)self _updatePhoneNumberCallerID];
        v26 = +[IDSHeartbeatCenter sharedInstance];
        [v26 addRegistrationInfo:self->_registrationInfo];

        v27 = +[IDSRegistrationController sharedInstance];
        [v27 startTrackingRegistration:self->_registrationInfo];

        v28 = +[IDSDeviceHeartbeatCenter sharedInstance];
        [v28 accountsChanged];

        if (![(IDSDAccount *)self accountType])
        {
          accountController = [(IDSDAccount *)self accountController];
          service2 = [(IDSDAccount *)self service];
          v31 = [accountController appleIDAccountOnService:service2];
          [v31 _cleanupAccount];

LABEL_58:
        }

        break;
    }
  }

  else
  {
    if ((registrationStatus - 3) < 2)
    {
      v17 = +[IMRGLog registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        uniqueID = [(IDSDAccount *)self uniqueID];
        registrationStatus6 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
        *buf = 138412546;
        selfCopy = uniqueID;
        v68 = 1024;
        LODWORD(v69) = registrationStatus6;
        v20 = "Setting account: %@ to authenticating  (Reg status: %d)";
LABEL_55:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
      }

LABEL_56:

      selfCopy3 = self;
      v41 = 2;
LABEL_57:
      [(IDSDAccount *)selfCopy3 setRegistrationStatus:v41 error:-1 alertInfo:infoCopy];
      v42 = +[IDSHeartbeatCenter sharedInstance];
      [v42 removeRegistrationInfo:self->_registrationInfo];

      v43 = +[IDSRegistrationController sharedInstance];
      [v43 stopTrackingRegistration:self->_registrationInfo];

      accountController = +[IDSDeviceHeartbeatCenter sharedInstance];
      [accountController accountsChanged];
      goto LABEL_58;
    }

    if (registrationStatus == 5)
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
  accountController2 = [(IDSDAccount *)self accountController];
  [accountController2 authKitAccountUpdate:self->_registrationInfo];
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

    service = [(IDSDAccount *)self service];
    identifier = [service identifier];
    v10 = [identifier isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"];

    if (v10)
    {
      accountController = [(IDSDAccount *)self accountController];
      [accountController updateDevicePropertiesWithDevices:0];
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

  isAdHocAccount = [(IDSDAccount *)self isAdHocAccount];
  v5 = +[IMRGLog registration];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isAdHocAccount)
  {
    if (v6)
    {
      primaryAccount = [(IDSDAccount *)self primaryAccount];
      v9 = 138412290;
      selfCopy = primaryAccount;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", &v9, 0xCu);
    }

    primaryAccount2 = [(IDSDAccount *)self primaryAccount];
    [primaryAccount2 _reregisterAndReProvision];
  }

  else
  {
    if (v6)
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Re-registering and re-provisioning: %@", &v9, 0xCu);
    }

    [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
    [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
    [(IDSRegistration *)self->_registrationInfo setUris:0];
    [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    [(IDSDAccount *)self _registerAccount];
  }
}

- (void)_removeAuthenticationCredentialsIncludingAuthToken:(BOOL)token
{
  tokenCopy = token;
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
      primaryAccount = [(IDSDAccount *)self primaryAccount];
      v14 = 138412290;
      v15 = primaryAccount;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", &v14, 0xCu);
    }

    primaryAccount2 = [(IDSDAccount *)self primaryAccount];
    [primaryAccount2 _removeAuthenticationCredentials];
  }

  else
  {
    systemMonitor = [(IDSDAccount *)self systemMonitor];
    isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

    if (isUnderFirstDataProtectionLock)
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
      if (tokenCopy)
      {
        [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:0];
      }

      [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    }
  }
}

- (void)_reregisterAndReidentify:(BOOL)reidentify
{
  reidentifyCopy = reidentify;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = _os_activity_create(&_mh_execute_header, "Daemon reregister/reidentify account", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  if (reidentifyCopy)
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
      primaryAccount = [(IDSDAccount *)self primaryAccount];
      *buf = 138412290;
      v19 = primaryAccount;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", buf, 0xCu);
    }

    primaryAccount2 = [(IDSDAccount *)self primaryAccount];
    [primaryAccount2 _reregisterAndReidentify:reidentifyCopy];
  }

  else
  {
    systemMonitor = [(IDSDAccount *)self systemMonitor];
    isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

    if (isUnderFirstDataProtectionLock)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, deferring request", buf, 2u);
      }

      if (reidentifyCopy)
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
      if (reidentifyCopy)
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System started backup: %@", &v4, 0xCu);
  }
}

- (void)systemRestoreStateDidChange
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "System restore state changed: %@", &v6, 0xCu);
  }

  [(IDSDAccount *)self _rebuildRegistrationInfo:1];
  [(IDSDAccount *)self _reregister];
  if ((*(self + 80) & 0x20) != 0)
  {
    v4 = +[IMRGLog GDR];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [(IDSDAccount *)self uniqueID];
      v6 = 138412290;
      selfCopy = uniqueID;
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
    systemMonitor = [(IDSDAccount *)self systemMonitor];
    [systemMonitor addListener:self];

    v5 = +[IDSRegistrationController sharedInstance];
    [v5 addListener:self];

    v6 = +[IDSSMSRegistrationCenter sharedInstance];
    [v6 addListener:self];

    v7 = +[IDSAppleIDRegistrationCenter sharedInstance];
    [v7 addListener:self];

    registrationCenter = [(IDSDAccount *)self registrationCenter];
    [registrationCenter addListener:self];

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
      uniqueID = [(IDSDAccount *)self uniqueID];
      loginID = [(IDSDAccount *)self loginID];
      service = [(IDSDAccount *)self service];
      identifier = [service identifier];
      if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
      {
        v19 = @"AppleID";
      }

      else
      {
        v19 = @"Phone Number";
      }

      v20 = +[FTDeviceSupport sharedInstance];
      deviceInformationString = [v20 deviceInformationString];
      registrationInfo = self->_registrationInfo;
      *buf = 138413570;
      selfCopy = uniqueID;
      v49 = 2112;
      v50 = loginID;
      v51 = 2112;
      v52 = identifier;
      v53 = 2112;
      v54 = v19;
      v55 = 2112;
      v56 = deviceInformationString;
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

      accountController = [(IDSDAccount *)self accountController];
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      [(IDSDAccount *)accountController disableAccountWithUniqueID:uniqueID2];
      goto LABEL_51;
    }

    *(self + 81) |= 2u;
    [(IDSRegistration *)self->_registrationInfo setIsDisabled:0];
    v23 = +[IDSRegistrationController sharedInstance];
    [v23 startTrackingActiveRegistration:self->_registrationInfo];

    v24 = +[IDSServerBag sharedInstance];
    bagURL = [v24 bagURL];

    if (bagURL)
    {
      accountController = [bagURL host];
      uniqueID2 = [bagURL port];
      v28 = [NSDictionary dictionaryWithObjectsAndKeys:accountController, kIDSServiceDefaultsServerHostKey, uniqueID2, kIDSServiceDefaultsServerPortKey, 0];
      [(IDSDAccount *)self _writeAccountDefaults:v28 force:1];
      v29 = +[IMRGLog registration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy = accountController;
        v49 = 2112;
        v50 = uniqueID2;
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

      uniqueID2 = 0;
      accountController = 0;
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

    isDeviceRegistered = [(IDSDAccount *)self isDeviceRegistered];
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
      if (isDeviceRegistered)
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
            selfCopy = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "****** NOT Forcing Registration, we were active, but unregistered, however there's nothing to register: %@ ******", buf, 0xCu);
          }

          goto LABEL_50;
        }

        v39 = self->_registrationInfo;
      }

      registrationCert = [(IDSRegistration *)v39 registrationCert];
      *(self + 80) = *(self + 80) & 0xFB | (4 * (registrationCert != 0));

      v41 = +[IMRGLog registration];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = self;
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
      uniqueID = [(IDSDAccount *)self uniqueID];
      loginID = [(IDSDAccount *)self loginID];
      service = [(IDSDAccount *)self service];
      identifier = [service identifier];
      if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
      {
        v7 = @"AppleID";
      }

      else
      {
        v7 = @"Phone Number";
      }

      v8 = +[FTDeviceSupport sharedInstance];
      deviceInformationString = [v8 deviceInformationString];
      registrationInfo = self->_registrationInfo;
      *buf = 138413570;
      v34 = uniqueID;
      v35 = 2112;
      v36 = loginID;
      v37 = 2112;
      v38 = identifier;
      v39 = 2112;
      v40 = v7;
      v41 = 2112;
      v42 = deviceInformationString;
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

    registrationCenter = [(IDSDAccount *)self registrationCenter];
    [registrationCenter removeListener:self];

    systemMonitor = [(IDSDAccount *)self systemMonitor];
    [systemMonitor removeListener:self];

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
    deviceInformationString = [v4 deviceInformationString];
    v14 = 138412546;
    v15 = deviceInformationString;
    v16 = 2112;
    selfCopy = self;
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
      pushToken = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];

      v6 = +[IMRGLog registration];
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (pushToken)
      {
        if (v8)
        {
          registrationInfo = self->_registrationInfo;
          v14 = 138412290;
          v15 = registrationInfo;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting auth for: %@", &v14, 0xCu);
        }

        v10 = self->_registrationInfo;
        pushToken2 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
        [(IDSRegistration *)v10 setPushToken:pushToken2];

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
        pushToken3 = [(IDSRegistration *)self->_registrationInfo pushToken];
        pushToken4 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
        v14 = 138412546;
        v15 = pushToken3;
        v16 = 2112;
        selfCopy = pushToken4;
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
  service = [(IDSDAccount *)self service];
  serviceController = [(IDSDAccount *)self serviceController];
  iTunesService = [serviceController iTunesService];

  if (service != iTunesService)
  {
    return 1;
  }

  v7 = +[FTDeviceSupport sharedInstance];
  deviceType = [v7 deviceType];

  if ((deviceType & 0xFFFFFFFFFFFFFFFELL) == 6)
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
    deviceInformationString = [v4 deviceInformationString];
    v7 = 138412290;
    v8 = deviceInformationString;
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
      uniqueID = [(IDSDAccount *)self uniqueID];
      v7 = 138412290;
      v8 = uniqueID;
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

  migrationContext = [(IDSRegistration *)self->_registrationInfo migrationContext];

  if (!migrationContext)
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

  loginID = [(IDSDAccount *)self loginID];
  _FZBestGuessFZIDType = [loginID _FZBestGuessFZIDType];

  v8 = _FZBestGuessFZIDType != 0;
  if (_FZBestGuessFZIDType)
  {
    v9 = self->_registrationInfo;
    loginID2 = [(IDSDAccount *)self loginID];
    [(IDSRegistration *)v9 setEmail:loginID2];

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_registrationInfo;
      loginID3 = [(IDSDAccount *)self loginID];
      *buf = 138412546;
      v45 = v12;
      v46 = 2112;
      v47 = loginID3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rebuilding aliases for: %@ (%@)", buf, 0x16u);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
    v15 = [_unprefixedURIStringsFromAccountInfo countByEnumeratingWithState:&v39 objects:v43 count:16];
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
            objc_enumerationMutation(_unprefixedURIStringsFromAccountInfo);
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

        v16 = [_unprefixedURIStringsFromAccountInfo countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v16);
    }

    accountInfo = [(IDSDAccount *)self accountInfo];
    v24 = [accountInfo objectForKey:kIDSServiceDefaultsProfileKey];

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
      intValue = [v26 intValue];

      if (intValue == 3)
      {
        v28 = +[IMRGLog registration];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "We have a profile, and it's validated!", buf, 2u);
        }

        regionID = [(IDSRegistration *)self->_registrationInfo regionID];
        v30 = [regionID length];

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
    deviceInformationString = [v4 deviceInformationString];
    *buf = 138412546;
    v44 = deviceInformationString;
    v45 = 2112;
    selfCopy = self;
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
      primaryAccount = [(IDSDAccount *)self primaryAccount];
      *buf = 138412290;
      v44 = primaryAccount;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Forwarding to Primary: %@", buf, 0xCu);
    }

    primaryAccount2 = [(IDSDAccount *)self primaryAccount];
    [primaryAccount2 _registerAccount];
  }

  else if ([IDSRegistrationController canStartRegistrationForAccountType:[(IDSDAccount *)self accountType]])
  {
    v10 = +[IDSRestoreMonitor sharedInstance];
    [v10 removeTarget:self];

    [(IDSDAccount *)self _migrateRegistrationIfNeeded];
    pushToken = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
    LOBYTE(v10) = pushToken == 0;

    if (v10)
    {
      v21 = +[IMRGLog pushToken];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        pushToken2 = [(IDSRegistration *)self->_registrationInfo pushToken];
        pushToken3 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
        v24 = IMGetEnvironmentName();
        *buf = 138412802;
        v44 = pushToken2;
        v45 = 2112;
        selfCopy = pushToken3;
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
      pushToken4 = [(IDSRegistrationPushHandler *)self->_pushHandler pushToken];
      [(IDSRegistration *)registrationInfo setPushToken:pushToken4];

      if ([(IDSRegistration *)self->_registrationInfo registrationStatus]<= 5)
      {
        [(IDSRegistration *)self->_registrationInfo setVettedEmails:0];
      }

      [(IDSRegistration *)self->_registrationInfo setNeedsMigration:0];
      systemMonitor = [(IDSDAccount *)self systemMonitor];
      isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

      if (isUnderFirstDataProtectionLock)
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
        _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
        v26 = [_unprefixedURIStringsFromAccountInfo countByEnumeratingWithState:&v37 objects:v49 count:16];
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
                objc_enumerationMutation(_unprefixedURIStringsFromAccountInfo);
              }

              v30 = *(*(&v37 + 1) + 8 * i);
              if ([(IDSDAccount *)self _validationStatusForAlias:v30, v36]== 3)
              {
                candidateEmails = [(IDSRegistration *)self->_registrationInfo candidateEmails];
                if ([candidateEmails containsObject:v30])
                {
                }

                else
                {
                  confirmedEmails = [(IDSRegistration *)self->_registrationInfo confirmedEmails];
                  v33 = [confirmedEmails containsObject:v30];

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

            v26 = [_unprefixedURIStringsFromAccountInfo countByEnumeratingWithState:&v37 objects:v49 count:16];
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
    uniqueID = [(IDSDAccount *)self uniqueID];
    v5 = +[FTDeviceSupport sharedInstance];
    deviceInformationString = [v5 deviceInformationString];
    v8 = 138412546;
    v9 = uniqueID;
    v10 = 2112;
    v11 = deviceInformationString;
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
    uniqueID = [(IDSDAccount *)self uniqueID];
    v5 = +[FTDeviceSupport sharedInstance];
    deviceInformationString = [v5 deviceInformationString];
    *buf = 138412546;
    v13 = uniqueID;
    v14 = 2112;
    v15 = deviceInformationString;
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
    deviceInformationString = [v4 deviceInformationString];
    v7 = 138412290;
    v8 = deviceInformationString;
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

      registrationStatus = [(IDSRegistration *)self->_registrationInfo registrationStatus];
      [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
      [(IDSRegistration *)self->_registrationInfo setRegistrationStatus:0];
      [(IDSRegistration *)self->_registrationInfo setUris:0];
      [(IDSRegistration *)self->_registrationInfo setRegistrationCert:0];
      if (registrationStatus == 6)
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

- (void)updateAuthorizationCredentials:(id)credentials token:(id)token
{
  credentialsCopy = credentials;
  tokenCopy = token;
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
      v15 = credentialsCopy;
      v16 = 2112;
      v17 = tokenCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client updating auth ID: %@  token: %@", &v14, 0x16u);
    }

    [(IDSRegistration *)self->_registrationInfo setProfileID:credentialsCopy];
    [(IDSRegistration *)self->_registrationInfo setAuthenticationToken:tokenCopy];
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "... Saving", &v14, 2u);
    }

    [(IDSRegistration *)self->_registrationInfo saveToKeychain];
    v11 = objc_alloc_init(NSMutableDictionary);
    v8 = v11;
    if (credentialsCopy)
    {
      CFDictionarySetValue(v11, kIDSServiceDefaultsAuthorizationIDKey, credentialsCopy);
    }

    loginID = [(IDSDAccount *)self loginID];
    v13 = IMCanonicalFormForEmail();
    IMSetKeychainAuthToken();

    [(IDSDAccount *)self writeAccountDefaults:v8];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)handler:(id)handler pushTokenChanged:(id)changed
{
  changedCopy = changed;
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

  if (!changedCopy)
  {
    goto LABEL_8;
  }

  pushToken = [(IDSRegistration *)self->_registrationInfo pushToken];
  if (pushToken)
  {
    v8 = pushToken;
    pushToken2 = [(IDSRegistration *)self->_registrationInfo pushToken];
    v10 = [pushToken2 isEqualToData:changedCopy];

    if (v10)
    {
      v6 = +[IMRGLog pushToken];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        pushToken3 = [(IDSRegistration *)self->_registrationInfo pushToken];
        v20 = 138412546;
        v21 = changedCopy;
        v22 = 2112;
        v23 = pushToken3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Informed of push token change to: %@, but no need to reregister (from: %@)", &v20, 0x16u);
      }

      goto LABEL_7;
    }
  }

  v12 = +[IMRGLog pushToken];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    pushToken4 = [(IDSRegistration *)self->_registrationInfo pushToken];
    v20 = 138412546;
    v21 = changedCopy;
    v22 = 2112;
    v23 = pushToken4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Informed of push token change to: %@, reregistering (from: %@)", &v20, 0x16u);
  }

  peerIDManager = [(IDSDAccount *)self peerIDManager];
  [peerIDManager clearCacheAndPersistImmediately:0];

  [(IDSDAccount *)self _refreshRegistration];
  registration = [(IDSDAccount *)self registration];
  registrationType = [registration registrationType];

  if (!registrationType)
  {
    v17 = +[IDSRegistrationReasonTracker sharedInstance];
    userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
    [v17 setPNRReason:12 forUserUniqueIdentifier:userUniqueIdentifier];

    v19 = +[IDSPACStateTracker sharedInstance];
    [v19 notePhoneAuthCertLost:4];
  }

  [(IDSRegistration *)self->_registrationInfo setAuthenticationCert:0];
  [(IDSRegistration *)self->_registrationInfo setPushToken:changedCopy];
  [(IDSDAccount *)self _registerAccount];
LABEL_8:
}

- (void)handler:(id)handler reloadBag:(id)bag
{
  bagCopy = bag;
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
    v24 = bagCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received reload bag push for: %@", &v23, 0xCu);
  }

  if (![bagCopy length] || (_IDSRegistrationServiceTypeForString(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", IDSRegistrationServiceTypeiMessage), v8, v9))
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

  if (![bagCopy length] || (_IDSRegistrationServiceTypeForString(), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", IDSRegistrationServiceTypeFaceTime), v12, v13))
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

  if (![bagCopy length] || (_IDSRegistrationServiceTypeForString(), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", IDSRegistrationServiceTypeCalling), v16, v17))
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

  if (![bagCopy length] || (_IDSRegistrationServiceTypeForString(), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", IDSRegistrationServiceTypeMultiway), v20, v21))
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

- (void)_parseHandlesInfo:(id)info currentAliases:(id)aliases currentVettedAliases:(id)vettedAliases
{
  infoCopy = info;
  aliasesCopy = aliases;
  vettedAliasesCopy = vettedAliases;
  v79 = +[IDSRegistrationController registeredPhoneNumbers];
  v75 = objc_alloc_init(NSMutableArray);
  v76 = objc_alloc_init(NSMutableArray);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = infoCopy;
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
      _stripFZIDPrefix = [v12 _stripFZIDPrefix];

      v14 = [v11 objectForKey:@"device-name"];
      v15 = [v11 objectForKey:@"is-user-visible"];
      v16 = [v11 objectForKey:@"status"];
      intValue = [v16 intValue];

      if (intValue <= 5050)
      {
        if (intValue == 5036)
        {

          [(IDSDAccount *)self _setValidationStatus:1 error:5 forAlias:0 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
          goto LABEL_23;
        }

        if (intValue == 5038)
        {
LABEL_13:

          [(IDSDAccount *)self _setValidationStatus:1 error:4 forAlias:0 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
          goto LABEL_23;
        }

LABEL_22:
        [(IDSDAccount *)self _setValidationStatus:1 error:0 forAlias:_stripFZIDPrefix info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];

        goto LABEL_23;
      }

      if (intValue != 5051)
      {
        if (intValue == 5055)
        {
          goto LABEL_13;
        }

        if (intValue == 5052)
        {

          [(IDSDAccount *)self _setValidationStatus:2 error:0xFFFFFFFFLL forAlias:0 info:0 addToCurrentHandlesIfNeeded:0 forceAdd:0];
LABEL_23:
          _stripFZIDPrefix = 0;
LABEL_24:
          v18 = +[IMRGLog registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            uniqueID = [(IDSDAccount *)self uniqueID];
            *buf = 138412546;
            *&buf[4] = uniqueID;
            *&buf[12] = 2112;
            *&buf[14] = _stripFZIDPrefix;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not adding registered phone alias to appleID account {uniqueID: %@, phoneAlias: %@}", buf, 0x16u);
          }

          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (!_stripFZIDPrefix || ([v79 containsObject:_stripFZIDPrefix] & 1) != 0)
      {
        goto LABEL_24;
      }

      v18 = objc_alloc_init(NSMutableDictionary);
      CFDictionarySetValue(v18, @"uri", _stripFZIDPrefix);
      if (v14)
      {
        CFDictionarySetValue(v18, @"device-name", v14);
      }

      if (v15)
      {
        CFDictionarySetValue(v18, @"is-user-visible", v15);
      }

      [v75 addObject:v18];
      [v76 addObject:_stripFZIDPrefix];
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
  v72 = [vettedAliasesCopy __imArrayByApplyingBlock:&stru_100BDEEB0];
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1004F389C;
  v92[3] = &unk_100BDEED8;
  v92[4] = self;
  v95 = buf;
  v69 = vettedAliasesCopy;
  v93 = v69;
  v70 = aliasesCopy;
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

  service = [(IDSDAccount *)self service];
  shouldShowUsageNotifications = [service shouldShowUsageNotifications];

  if (!shouldShowUsageNotifications)
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
          serviceType = [(IDSDAccount *)self serviceType];
          v37 = _StringForIDSRegistrationServiceType();

          v42 = +[IMRGLog registration];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            mainID = [(IDSRegistration *)self->_registrationInfo mainID];
            *v101 = 138413058;
            v102 = v33;
            v103 = 2112;
            v104 = v34;
            v105 = 2112;
            v106 = mainID;
            v107 = 2112;
            v108 = v37;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "** Adding notification for %@  on device %@  on apple ID: %@ for service: %@", v101, 0x2Au);
          }

          [(IDSDAccount *)self markAsVettedAlias:v33];
          appleIDNotificationCenter = [(IDSDAccount *)self appleIDNotificationCenter];
          uniqueID2 = [(IDSDAccount *)self uniqueID];
          mainID2 = [(IDSRegistration *)self->_registrationInfo mainID];
          serviceType2 = [(IDSDAccount *)self serviceType];
          v87[0] = _NSConcreteStackBlock;
          v87[1] = 3221225472;
          v87[2] = sub_1004F3938;
          v87[3] = &unk_100BDEF00;
          v87[4] = self;
          [appleIDNotificationCenter addAvailableNotificationForSession:uniqueID2 appleID:mainID2 alias:v33 deviceName:v34 serviceType:serviceType2 completionBlock:v87];
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
      vettedAliases = [(IDSDAccount *)self vettedAliases];
      *v101 = 138412290;
      v102 = vettedAliases;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "    Vetted: %@", v101, 0xCu);
    }

    v51 = +[IMRGLog registration];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
      *v101 = 138412290;
      v102 = _unprefixedURIStringsFromAccountInfo;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "   Current: %@", v101, 0xCu);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    vettedAliases2 = [(IDSDAccount *)self vettedAliases];
    v54 = [vettedAliases2 countByEnumeratingWithState:&v83 objects:v100 count:16];
    if (v54)
    {
      v55 = *v84;
      do
      {
        for (j = 0; j != v54; j = j + 1)
        {
          if (*v84 != v55)
          {
            objc_enumerationMutation(vettedAliases2);
          }

          v57 = *(*(&v83 + 1) + 8 * j);
          v58 = +[IMRGLog registration];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *v101 = 138412290;
            v102 = v57;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "      Checking: %@", v101, 0xCu);
          }

          _unprefixedURIStringsFromAccountInfo2 = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
          v60 = [_unprefixedURIStringsFromAccountInfo2 containsObject:v57];

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

        v54 = [vettedAliases2 countByEnumeratingWithState:&v83 objects:v100 count:16];
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

- (void)_updateHandles:(BOOL)handles
{
  handlesCopy = handles;
  if (![(IDSDAccount *)self isDeviceAuthenticated])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v30 = uniqueID;
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
      uniqueID = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v30 = uniqueID;
      v7 = " => Not updating handles, this is not an apple ID or phone based account for: %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  systemMonitor = [(IDSDAccount *)self systemMonitor];
  isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
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
        uniqueID2 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v30 = uniqueID2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Kicking off handle gathering for: %@", buf, 0xCu);
      }

      *(self + 80) |= 0x10u;
      _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
      v16 = [_unprefixedURIStringsFromAccountInfo copy];

      vettedAliases = [(IDSDAccount *)self vettedAliases];
      v18 = [vettedAliases copy];

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
        uniqueID3 = [(IDSDAccount *)self uniqueID];
        *buf = 138412290;
        v30 = uniqueID3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "  * Sending handle update request for: %@", buf, 0xCu);
      }

      registrationCenter = [(IDSDAccount *)self registrationCenter];
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
      [registrationCenter queryValidatedEmailsForRegistration:registrationInfo allowPasswordPrompt:handlesCopy completionBlock:v26];
    }
  }
}

- (void)handler:(id)handler profile:(id)profile deviceUpdated:(id)updated service:(id)service
{
  profileCopy = profile;
  updatedCopy = updated;
  serviceCopy = service;
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
    uniqueID = [(IDSDAccount *)self uniqueID];
    v39 = 138413058;
    v40 = profileCopy;
    v41 = 2112;
    v42 = updatedCopy;
    v43 = 2112;
    v44 = serviceCopy;
    v45 = 2112;
    v46 = uniqueID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received device updated push for profile: %@   token: %@   service: %@  for: %@", &v39, 0x2Au);
  }

  registrationCenter = [(IDSDAccount *)self registrationCenter];
  dateLastRegistered = [registrationCenter dateLastRegistered];
  if (dateLastRegistered)
  {
    v17 = dateLastRegistered;
    registrationCenter2 = [(IDSDAccount *)self registrationCenter];
    dateLastRegistered2 = [registrationCenter2 dateLastRegistered];
    [dateLastRegistered2 timeIntervalSinceNow];
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
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = uniqueID2;
      v25 = "System not setup, ignoring devices updated push for: %@";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v39, 0xCu);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  systemMonitor = [(IDSDAccount *)self systemMonitor];
  isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v23 = +[IMRGLog GDR];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = uniqueID2;
      v25 = "Device is still under first data protection lock, ignoring for: %@";
      goto LABEL_26;
    }

LABEL_27:

    *(self + 80) |= 0x20u;
    goto LABEL_8;
  }

  if (![profileCopy length])
  {
    v12 = +[IMRGLog GDR];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID3 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = uniqueID3;
      v31 = "  Empty user ID, ignoring for: %@";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v31, &v39, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  profileID = [(IDSRegistration *)self->_registrationInfo profileID];
  if ([profileCopy isEqualToIgnoringCase:profileID])
  {
    v29 = [(IDSRegistration *)self->_registrationInfo registrationType]!= 2;
  }

  else
  {
    v29 = 0;
  }

  userID = [(IDSRegistration *)self->_registrationInfo userID];
  v33 = [profileCopy isEqualToIgnoringCase:userID];

  if (!v29 && (v33 & 1) == 0)
  {
    v12 = +[IMRGLog GDR];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID3 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = uniqueID3;
      v31 = "  Unknown profile ID ID, not proceeding for: %@";
      goto LABEL_50;
    }

    goto LABEL_7;
  }

  if (updatedCopy)
  {
    pushToken = [(IDSRegistration *)self->_registrationInfo pushToken];
    v35 = [updatedCopy isEqualToData:pushToken];

    if (v35)
    {
      v12 = +[IMRGLog GDR];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [(IDSDAccount *)self uniqueID];
        v39 = 138412290;
        v40 = uniqueID3;
        v31 = " => Ignoring a device update from myself for: %@";
        goto LABEL_50;
      }

      goto LABEL_7;
    }
  }

  isDeviceRegistered = [(IDSDAccount *)self isDeviceRegistered];
  v12 = +[IMRGLog GDR];
  v37 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((isDeviceRegistered & 1) == 0)
  {
    if (v37)
    {
      uniqueID3 = [(IDSDAccount *)self uniqueID];
      v39 = 138412290;
      v40 = uniqueID3;
      v31 = " => Ignoring, we're not registered for: %@";
      goto LABEL_50;
    }

    goto LABEL_7;
  }

  if (v37)
  {
    uniqueID4 = [(IDSDAccount *)self uniqueID];
    v39 = 138412290;
    v40 = uniqueID4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " => Kicking off device and handles gathering for: %@", &v39, 0xCu);
  }

  if ([(IDSRegistration *)self->_registrationInfo registrationType]== 1)
  {
    [(IDSDAccount *)self _updateHandles:1];
  }

  [(IDSDAccount *)self _issueCriticalDependentCheck];
LABEL_8:
}

- (void)handler:(id)handler profileHandlesUpdated:(id)updated status:(id)status allowGDR:(id)r
{
  updatedCopy = updated;
  statusCopy = status;
  rCopy = r;
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
    uniqueID = [(IDSDAccount *)self uniqueID];
    v34 = 138413058;
    v35 = updatedCopy;
    v36 = 2112;
    v37 = rCopy;
    v38 = 2112;
    v39 = statusCopy;
    v40 = 2112;
    v41 = uniqueID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received handles updated push for profile: %@ allowGDR: %@   status: %@   for: %@", &v34, 0x2Au);
  }

  registrationCenter = [(IDSDAccount *)self registrationCenter];
  dateLastRegistered = [registrationCenter dateLastRegistered];
  if (dateLastRegistered)
  {
    v17 = dateLastRegistered;
    registrationCenter2 = [(IDSDAccount *)self registrationCenter];
    dateLastRegistered2 = [registrationCenter2 dateLastRegistered];
    [dateLastRegistered2 timeIntervalSinceNow];
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

    uniqueID2 = [(IDSDAccount *)self uniqueID];
    v34 = 138412290;
    v35 = uniqueID2;
    v24 = "System not setup, ignoring handles update push for: %@";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v24, &v34, 0xCu);

    goto LABEL_7;
  }

  systemMonitor = [(IDSDAccount *)self systemMonitor];
  isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v27 = +[IMRGLog registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID3 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = uniqueID3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Device is still under first data protection lock, ignoring for: %@", &v34, 0xCu);
    }

    *(self + 80) |= 0x40u;
  }

  else
  {
    if (![updatedCopy length])
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = uniqueID2;
      v24 = "  Empty user ID, ignoring for: %@";
      goto LABEL_23;
    }

    if (-[IDSDAccount accountType](self, "accountType") || [updatedCopy _FZIDType])
    {
      v29 = 0;
    }

    else
    {
      loginID = [(IDSDAccount *)self loginID];
      _stripFZIDPrefix = [updatedCopy _stripFZIDPrefix];
      v29 = [loginID isEqualToIgnoringCase:_stripFZIDPrefix];
    }

    profileID = [(IDSRegistration *)self->_registrationInfo profileID];
    v31 = [updatedCopy isEqualToIgnoringCase:profileID];

    if ((v31 & 1) == 0 && (v29 & 1) == 0)
    {
      v12 = +[IMRGLog registration];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = uniqueID2;
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

      uniqueID2 = [(IDSDAccount *)self uniqueID];
      v34 = 138412290;
      v35 = uniqueID2;
      v24 = "  Not an appleID registration, not perfoming GDR for : %@";
      goto LABEL_23;
    }

    if (!rCopy || [rCopy BOOLValue])
    {
      [(IDSDAccount *)self _issueCriticalDependentCheck];
    }
  }

LABEL_8:
}

- (void)handler:(id)handler flushCacheForURIs:(id)is
{
  isCopy = is;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = isCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received flush cache push for uris: %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = isCopy;
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
        vettedAliases = [(IDSDAccount *)self vettedAliases];
        v9 = [vettedAliases countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(vettedAliases);
              }

              v13 = *(*(&v23 + 1) + 8 * v12);
              v14 = +[IDSDaemon sharedInstance];
              queryUpdateNotifier = [v14 queryUpdateNotifier];
              v16 = [[IDSURI alloc] initWithPrefixedURI:v13];
              v17 = [[IDSURI alloc] initWithPrefixedURI:v7];
              [queryUpdateNotifier handleRegistrationUpdateForHash:0 localURI:v16 remoteURI:v17 service:self->_service guid:0 forceUpdate:1];

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [vettedAliases countByEnumeratingWithState:&v23 objects:v31 count:16];
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

  dependentRegistrationResponseCode = [(IDSRegistration *)self->_registrationInfo dependentRegistrationResponseCode];
  integerValue = [dependentRegistrationResponseCode integerValue];

  dependentRegistrationAuthRetries = [(IDSRegistration *)self->_registrationInfo dependentRegistrationAuthRetries];
  unsignedIntValue = [dependentRegistrationAuthRetries unsignedIntValue];

  if ([(IDSDAccount *)self isRegistered])
  {
    registrationCert = [(IDSRegistration *)self->_registrationInfo registrationCert];
    if (registrationCert)
    {
      authenticationCert = [(IDSRegistration *)self->_registrationInfo authenticationCert];
      v9 = authenticationCert == 0;
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

  registrationCenter = [(IDSDAccount *)self registrationCenter];
  gdrCenter = [registrationCenter gdrCenter];
  if ([gdrCenter shouldReAuthenticateForGDRResultCode:integerValue retries:unsignedIntValue])
  {

LABEL_12:
    v12 = +[IMRGLog GDR];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      smallDescription = [(IDSDAccount *)self smallDescription];
      v23 = 134218498;
      v24 = integerValue;
      v25 = 1024;
      LODWORD(v26[0]) = unsignedIntValue;
      WORD2(v26[0]) = 2112;
      *(v26 + 6) = smallDescription;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Should retry (resultCode %ld) (retries %d) (%@)", &v23, 0x1Cu);
    }

    registrationInfo = self->_registrationInfo;
    v15 = [NSNumber numberWithUnsignedInt:(unsignedIntValue + 1)];
    [(IDSRegistration *)registrationInfo setDependentRegistrationAuthRetries:v15];

    registration = [(IDSDAccount *)self registration];
    LODWORD(registrationInfo) = [registration registrationType];

    if (!registrationInfo)
    {
      v17 = +[IDSRegistrationReasonTracker sharedInstance];
      userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
      [v17 setPNRReason:8 forUserUniqueIdentifier:userUniqueIdentifier];
    }

    [(IDSDAccount *)self _reAuthenticate];
    return;
  }

  if (integerValue == 1 && v9)
  {
    goto LABEL_12;
  }

  v19 = +[IMRGLog GDR];
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (integerValue == 6006)
  {
    if (v20)
    {
      smallDescription2 = [(IDSDAccount *)self smallDescription];
      v23 = 134218242;
      v24 = 6006;
      v25 = 2112;
      v26[0] = smallDescription2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Should reregister then retry (resultCode %ld) (%@)", &v23, 0x16u);
    }

    [(IDSDAccount *)self reregister];
  }

  else
  {
    if (v20)
    {
      smallDescription3 = [(IDSDAccount *)self smallDescription];
      v23 = 134218498;
      v24 = integerValue;
      v25 = 1024;
      LODWORD(v26[0]) = unsignedIntValue;
      WORD2(v26[0]) = 2112;
      *(v26 + 6) = smallDescription3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Should not retry (resultCode %ld) (retries %d) (%@)", &v23, 0x1Cu);
    }
  }
}

- (void)_notifyListenersAndSetDependentRegistrations:(id)registrations onRegistrationInfo:(id)info
{
  selfCopy = self;
  registrationsCopy = registrations;
  infoCopy = info;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = registrationsCopy;
  v7 = [registrationsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        v14 = [v13 objectForKey:{v11, selfCopy}];
        serviceIdentifier = [infoCopy serviceIdentifier];
        v16 = [v14 isEqualToString:serviceIdentifier];

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

  [infoCopy setDependentRegistrations:{v9, selfCopy}];
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
  selfCopy = self;
  v4 = v3;
  [(IDSDAccount *)self _broadcastAccountMessageBlock:v5];
}

- (BOOL)_issueForcedDependentCheckIfPossible
{
  if ((*(self + 80) & 8) != 0)
  {
    LOBYTE(_hasBudgetForForcedGDR) = 1;
  }

  else
  {
    _hasBudgetForForcedGDR = [(IDSDAccount *)self _hasBudgetForForcedGDR];
    if (_hasBudgetForForcedGDR)
    {
      [(IDSDAccount *)self _issueCriticalDependentCheck];
      LOBYTE(_hasBudgetForForcedGDR) = 1;
    }
  }

  return _hasBudgetForForcedGDR;
}

- (void)_processReceivedDependentRegistration:(id)registration oldDependentRegistrations:(id)registrations
{
  registrationCopy = registration;
  registrationsCopy = registrations;
  v8 = IDSDevicePropertyService;
  v9 = [registrationCopy objectForKey:IDSDevicePropertyService];
  v10 = IDSDevicePropertyPushToken;
  v11 = [registrationCopy objectForKey:IDSDevicePropertyPushToken];
  v64 = [registrationCopy objectForKey:IDSDevicePropertyName];
  v63 = [registrationCopy objectForKey:IDSDevicePropertyHardwareVersion];
  v65 = v9;
  v62 = _IDSRegistrationServiceTypeForString();
  v52 = registrationCopy;
  v58 = [registrationCopy objectForKey:IDSDevicePropertyClientData];
  v53 = registrationsCopy;
  if (registrationsCopy)
  {
    pushToken = [(IDSRegistration *)self->_registrationInfo pushToken];
    v13 = [v11 isEqualToData:pushToken];

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

              _IDsFromURIs = obj;
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
        _IDsFromURIs = [v24 _IDsFromURIs];

        if ([_IDsFromURIs count])
        {
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v26 = _IDsFromURIs;
          v61 = [v26 countByEnumeratingWithState:&v70 objects:v87 count:16];
          if (v61)
          {
            obja = _IDsFromURIs;
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

                serviceController = [(IDSDAccount *)self serviceController];
                v32 = [serviceController serviceWithIdentifier:v65];

                accountController = [(IDSDAccount *)self accountController];
                v34 = [accountController accountsOnService:v32];

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
                      accountType = [v40 accountType];
                      if (accountType == [(IDSDAccount *)self accountType])
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

                        appleIDNotificationCenter = [(IDSDAccount *)self appleIDNotificationCenter];
                        uniqueID = [(IDSDAccount *)self uniqueID];
                        mainID = [(IDSRegistration *)self->_registrationInfo mainID];
                        if ([v29 length])
                        {
                          [appleIDNotificationCenter addUsageNotificationForSession:uniqueID appleID:mainID alias:v29 deviceName:v64 hardwareVersion:v63 deviceCapabilities:v42 serviceType:v62];
                        }

                        else
                        {
                          v49 = +[IDSRegistrationController registeredPhoneNumbers];
                          anyObject = [v49 anyObject];
                          [appleIDNotificationCenter addUsageNotificationForSession:uniqueID appleID:mainID alias:anyObject deviceName:v64 hardwareVersion:v63 deviceCapabilities:v42 serviceType:v62];

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
                  serviceName = [v32 serviceName];
                  *buf = 138412546;
                  v80 = serviceName;
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
            _IDsFromURIs = obja;
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

- (void)_flushTokensForRegisteredURIs:(id)is
{
  isCopy = is;
  v4 = +[IMRGLog GDR];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = isCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Flushing cache for: %@", buf, 0xCu);
  }

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1004F63A4;
  v73[3] = &unk_100BD7530;
  v73[4] = self;
  v5 = [isCopy __imArrayByApplyingBlock:v73];
  v45 = v5;
  if (_os_feature_enabled_impl())
  {
    v42 = isCopy;
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
          dsHandle = [(IDSDAccount *)self dsHandle];
          if (dsHandle)
          {
            service = [(IDSDAccount *)self service];
            identifier = [service identifier];
            v15 = [IDSURI URIWithPrefixedURI:dsHandle withServiceLoggingHint:identifier];
            [v47 addObject:v15];
          }

          service2 = [v11 service];
          queryService = [service2 queryService];
          [v6 addObject:queryService];
        }

        v8 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v8);
    }

    peerIDManager = [(IDSDAccount *)self peerIDManager];
    accountAndAdHocAccounts = v47;
    allObjects = [v47 allObjects];
    allObjects2 = [v6 allObjects];
    [peerIDManager forgetPeerTokensForURIs:allObjects services:allObjects2 reason:13];

    isCopy = v42;
    v5 = v45;
  }

  else
  {
    accountAndAdHocAccounts = [(IDSDAccount *)self accountAndAdHocAccounts];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v46 = [accountAndAdHocAccounts countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v46)
    {
      v43 = isCopy;
      v44 = *v66;
      selfCopy2 = self;
      v48 = accountAndAdHocAccounts;
      do
      {
        v23 = 0;
        do
        {
          if (*v66 != v44)
          {
            objc_enumerationMutation(accountAndAdHocAccounts);
          }

          v24 = *(*(&v65 + 1) + 8 * v23);
          dsHandle2 = [(IDSDAccount *)selfCopy2 dsHandle];
          v49 = dsHandle2;
          v50 = v23;
          if (dsHandle2)
          {
            v26 = dsHandle2;
            service3 = [(IDSDAccount *)selfCopy2 service];
            identifier2 = [service3 identifier];
            v29 = [IDSURI URIWithPrefixedURI:v26 withServiceLoggingHint:identifier2];
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
                      peerIDManager2 = [(IDSDAccount *)self peerIDManager];
                      service4 = [v24 service];
                      queryService2 = [service4 queryService];
                      [peerIDManager2 forgetPeerTokensForURI:v38 fromURI:v32 service:queryService2 reason:13];
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
          selfCopy2 = self;
          accountAndAdHocAccounts = v48;
        }

        while ((v50 + 1) != v46);
        v46 = [v48 countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v46);
      isCopy = v43;
    }
  }
}

- (void)_updateSessionsForAllRegisteredURIsWithSendReasonPathID:(int64_t)d
{
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  uris = [primaryRegistration uris];
  [(IDSDAccount *)self _updateSessionsWithRegisteredURIs:uris sendReasonPathID:d];
}

- (void)_updateSessionsWithRegisteredURIs:(id)is retryIfNotRegistered:(BOOL)registered sendReasonPathID:(int64_t)d
{
  registeredCopy = registered;
  isCopy = is;
  registration = [(IDSDAccount *)self registration];
  registrationStatus = [registration registrationStatus];

  if (registrationStatus > 7)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1004F6B34;
    v47[3] = &unk_100BD7530;
    v47[4] = self;
    v17 = [isCopy __imArrayByApplyingBlock:v47];
    v42 = objc_alloc_init(IDSSendParameters);
    v39 = [[IDSSendReason alloc] initWithReason:10 subreason:4 pathID:d];
    v18 = [IDSSendReasonContainer createWithReason:v39];
    [v42 setSendReasonContainer:v18];

    v19 = +[IMRGLog GDR];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      service = [(IDSDAccount *)self service];
      queryService = [service queryService];
      *buf = 138412546;
      v53 = isCopy;
      v54 = 2112;
      v55 = queryService;
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
          peerIDManager = [(IDSDAccount *)self peerIDManager];
          service2 = [(IDSDAccount *)self service];
          queryService2 = [service2 queryService];
          v29 = [peerIDManager activeURIsFromURI:v25 service:queryService2];

          LOBYTE(queryService2) = [(__CFString *)v29 count]== 0;
          v30 = +[IMRGLog GDR];
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (queryService2)
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
            unprefixedURI = [v25 unprefixedURI];
            v33 = [NSSet setWithArray:v29];
            v34 = [IDSDestination destinationWithDestinations:v33];
            v35 = [NSDate dateWithTimeIntervalSinceNow:30.0];
            LOWORD(v38) = 256;
            LOWORD(v37) = 0;
            LOWORD(v36) = 0;
            [IDSDAccount sendMessage:"sendMessage:params:bulkedPayload:fromID:toDestinations:useDictAsTopLevel:dataToEncrypt:encryptPayload:wantsResponse:expirationDate:command:wantsDeliveryStatus:wantsCertifiedDelivery:deliveryStatusContext:messageUUID:priority:localDelivery:disallowRefresh:willSendBlock:completionBlock:" params:v30 bulkedPayload:v42 fromID:0 toDestinations:unprefixedURI useDictAsTopLevel:v34 dataToEncrypt:1 encryptPayload:0 wantsResponse:v36 expirationDate:v35 command:&off_100C3C8B0 wantsDeliveryStatus:v37 wantsCertifiedDelivery:0 deliveryStatusContext:0 messageUUID:300 priority:v38 localDelivery:0 disallowRefresh:0 willSendBlock:? completionBlock:?];
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
      registrationStatus2 = [(IDSRegistration *)self->_registrationInfo registrationStatus];
      if (registeredCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      service3 = [(IDSDAccount *)self service];
      queryService3 = [service3 queryService];
      *buf = 134218754;
      v53 = registrationStatus2;
      v54 = 2112;
      v55 = v12;
      v56 = 2112;
      v57 = isCopy;
      v58 = 2112;
      v59 = queryService3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not registered. Waiting to send the 130 { registrationStatus: %ld, retry: %@, registeredURIs: %@, service: %@ }", buf, 0x2Au);
    }

    if (registeredCopy)
    {
      objc_initWeak(buf, self);
      _unregistered130RetryInterval = [(IDSDAccount *)self _unregistered130RetryInterval];
      v16 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1004F6ADC;
      block[3] = &unk_100BDEF78;
      objc_copyWeak(v50, buf);
      v49 = isCopy;
      v50[1] = d;
      dispatch_after(_unregistered130RetryInterval, v16, block);

      objc_destroyWeak(v50);
      objc_destroyWeak(buf);
    }
  }
}

- (void)center:(id)center succeededIdentification:(id)identification phoneNumber:(id)number token:(id)token
{
  identificationCopy = identification;
  numberCopy = number;
  tokenCopy = token;
  if (![(IDSRegistration *)self->_registrationInfo registrationType])
  {
    userUniqueIdentifier = [identificationCopy userUniqueIdentifier];
    userUniqueIdentifier2 = [(IDSDAccount *)self userUniqueIdentifier];
    v14 = [userUniqueIdentifier isEqualToString:userUniqueIdentifier2];

    if (v14)
    {
      v15 = +[IMRGLog registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412802;
        v18 = identificationCopy;
        v19 = 2112;
        v20 = numberCopy;
        v21 = 2112;
        v22 = tokenCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Succeeded SMS identification with info: %@    number: %@  token: %@", &v17, 0x20u);
      }

      [(IDSRegistration *)self->_registrationInfo setPhoneNumber:numberCopy];
      [(IDSRegistration *)self->_registrationInfo setMainID:numberCopy];
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = numberCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating caller ID to phone number: %@", &v17, 0xCu);
      }

      [(IDSDAccount *)self _updatePhoneNumberCallerID];
    }
  }
}

- (void)registrationController:(id)controller registrationWillStart:(id)start
{
  startCopy = start;
  if (self->_registrationInfo == startCopy)
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
      v9 = startCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting registration for: %@", &v8, 0xCu);
    }

    if ([(IDSRegistration *)startCopy registrationStatus]== -1)
    {
      [(IDSRegistration *)startCopy setRegistrationStatus:3];
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }

LABEL_9:
}

- (void)registrationController:(id)controller registrationUpdated:(id)updated
{
  updatedCopy = updated;
  if (self->_registrationInfo == updatedCopy)
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
      v9 = updatedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating registration for: %@", &v8, 0xCu);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }

LABEL_9:
}

- (void)registrationController:(id)controller registrationSucceeded:(id)succeeded
{
  controllerCopy = controller;
  succeededCopy = succeeded;
  if (self->_registrationInfo == succeededCopy)
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
    trackedRegistrations = [v9 trackedRegistrations];
    [trackedRegistrations containsObjectIdenticalTo:succeededCopy];

    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100926438();
    }

    [(IDSDAccount *)self _refreshRegistration];
    registrationType = [(IDSRegistration *)self->_registrationInfo registrationType];
    registrationInfo = self->_registrationInfo;
    if (registrationType)
    {
      if ([(IDSRegistration *)registrationInfo registrationType]== 2 && ![(IDSDAccount *)self hasEverRegistered])
      {
        [(IDSDAccount *)self _updateCallerIDToTemporaryPhone];
      }
    }

    else
    {
      phoneNumber = [(IDSRegistration *)registrationInfo phoneNumber];
      if (phoneNumber)
      {
        v15 = [NSDictionary dictionaryWithObject:phoneNumber forKey:kIDSServiceDefaultsLoginAsKey];
        [(IDSDAccount *)self writeAccountDefaults:v15];
      }
    }

    serviceIdentifier = [(IDSRegistration *)succeededCopy serviceIdentifier];
    v17 = IDSIsGameCenterRegistrationServiceType();

    if (v17)
    {
      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        contextInfo = [(IDSRegistration *)succeededCopy contextInfo];
        *buf = 138412290;
        v102 = contextInfo;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Getting GameCenter Data from registration with contextInfo: %@", buf, 0xCu);
      }

      contextInfo2 = [(IDSRegistration *)succeededCopy contextInfo];
      v21 = [contextInfo2 objectForKey:IDSGameCenterContactsLastUpdatedDate];

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
      contextInfo3 = [(IDSRegistration *)succeededCopy contextInfo];
      v25 = [contextInfo3 objectForKey:IDSGameCenterContactsAssociationID];
      contextInfo4 = [(IDSRegistration *)succeededCopy contextInfo];
      v27 = [contextInfo4 objectForKey:IDSGameCenterContactsSharingState];
      v28 = [v23 initWithAssociationID:v25 sharingState:v27 lastUpdatedDate:v22];

      [(IDSDAccount *)self setGameCenterData:v28];
    }

    [(IDSRegistration *)succeededCopy saveToKeychain];
    vettedAliases = [(IDSDAccount *)self vettedAliases];
    v30 = +[IMRGLog registration];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = succeededCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Saved: %@", buf, 0xCu);
    }

    v31 = +[IMRGLog registration];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = vettedAliases;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "vettedAliases: %@", buf, 0xCu);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
    v32 = +[IMRGLog registration];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v102 = succeededCopy;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Checking to see if I should confirm aliases for: %@", buf, 0xCu);
    }

    v79 = succeededCopy;
    v80 = controllerCopy;

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    aliases = [(IDSDAccount *)self aliases];
    v34 = [aliases countByEnumeratingWithState:&v93 objects:v100 count:16];
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
            objc_enumerationMutation(aliases);
          }

          v39 = *(*(&v93 + 1) + 8 * i);
          if (([(IDSRegistration *)vettedAliases containsObject:v39]& 1) == 0 && [(IDSDAccount *)self validationStatusForAlias:v39]<= 1)
          {
            if (!v36)
            {
              v36 = objc_alloc_init(NSMutableSet);
            }

            [(IDSRegistration *)v36 addObject:v39];
          }
        }

        v35 = [aliases countByEnumeratingWithState:&v93 objects:v100 count:16];
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
      uris = [(IDSRegistration *)self->_registrationInfo uris];
      v50 = [uris countByEnumeratingWithState:&v85 objects:v98 count:16];
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
              objc_enumerationMutation(uris);
            }

            _stripFZIDPrefix = [*(*(&v85 + 1) + 8 * k) _stripFZIDPrefix];
            if ([_stripFZIDPrefix length])
            {
              if (!v52)
              {
                v52 = objc_alloc_init(NSMutableArray);
              }

              [v52 addObject:_stripFZIDPrefix];
              aliases2 = [(IDSDAccount *)self aliases];
              v57 = [aliases2 containsObject:_stripFZIDPrefix];

              if ((v57 & 1) == 0)
              {
                v58 = IMSingleObjectArray();
                [(IDSDAccount *)self _addAliases:v58];
              }

              [(IDSDAccount *)self _setValidationStatus:3 error:0xFFFFFFFFLL forAlias:_stripFZIDPrefix info:0 addToCurrentHandlesIfNeeded:1 forceAdd:0];
            }
          }

          v51 = [uris countByEnumeratingWithState:&v85 objects:v98 count:16];
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

      aliases3 = [(IDSDAccount *)self aliases];
      if ([aliases3 count])
      {
        v61 = [NSMutableSet setWithArray:aliases3];
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

    succeededCopy = v79;
    controllerCopy = v80;
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

    accountInfo = [(IDSDAccount *)self accountInfo];
    v72 = kIDSServiceDefaultsAuthorizationIDKey;
    v8 = [accountInfo objectForKey:kIDSServiceDefaultsAuthorizationIDKey];

    profileID = [(IDSRegistration *)self->_registrationInfo profileID];
    if (![v8 length]&& [(IDSRegistration *)profileID length])
    {
      v74 = +[IMRGLog registration];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v102 = profileID;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Finished registering without profileID, setting profileID %@ onto account", buf, 0xCu);
      }

      v75 = objc_alloc_init(NSMutableDictionary);
      v76 = v75;
      if (profileID)
      {
        CFDictionarySetValue(v75, v72, profileID);
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

- (void)registrationController:(id)controller registrationFailed:(id)failed error:(int64_t)error info:(id)info
{
  failedCopy = failed;
  infoCopy = info;
  if (self->_registrationInfo == failedCopy)
  {
    if (![(IDSDAccount *)self isRegistrationActive])
    {
      selfCopy = +[IMRGLog warning];
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
      {
        sub_1009250B0(self);
      }

      goto LABEL_98;
    }

    if ([(IDSDAccount *)self isAdHocAccount])
    {
      selfCopy = +[IMRGLog warning];
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
      {
        sub_1009268AC(self);
      }

      goto LABEL_98;
    }

    if ([(IDSDAccount *)self accountType]== 2)
    {
      selfCopy = +[IMRGLog warning];
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
      {
        sub_100926814(self);
      }

      goto LABEL_98;
    }

    selfCopy = self;
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100926604();
    }

    [(IDSDAccount *)selfCopy _updateRegistrationStatusWithError:error info:infoCopy];
    v13 = +[IMRGLog warning];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100926684(error);
    }

    v14 = 0;
    if (error <= 30)
    {
      if (error <= 9)
      {
        if ((error - 3) >= 2)
        {
          if (error == 1)
          {
            v14 = 1;
          }

          else if (error != 5)
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

      if (error > 28)
      {
        if (error == 29)
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

      if ((error - 10) >= 2)
      {
        if (error != 12)
        {
          goto LABEL_88;
        }

LABEL_76:
        v39 = +[IMRGLog warning];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          sub_1009267AC();
        }

        [(IDSRegistration *)failedCopy removeFromKeychain];
        goto LABEL_88;
      }

LABEL_38:
      [(IDSRegistration *)failedCopy removeFromKeychain];
      if (![(IDSRegistration *)failedCopy registrationType])
      {
        [(IDSRegistration *)failedCopy setMainID:0];
        [(IDSRegistration *)failedCopy setAuthenticationToken:0];
        [(IDSRegistration *)failedCopy setAuthenticationCert:0];
        v34 = +[IDSPACStateTracker sharedInstance];
        [v34 notePhoneAuthCertLost:5];

        v35 = +[IMRGLog registration];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          errorCopy = failedCopy;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, " => Will retry SMS Registration: %@", buf, 0xCu);
        }

        v36 = +[IMRGLog registration];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          errorCopy = failedCopy;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, " => Resetting status to waiting for auth response: %@", buf, 0xCu);
        }

        [(IDSRegistration *)failedCopy setRegistrationStatus:4];
        [(IDSDAccount *)selfCopy _updateRegistrationStatusWithError:-1 info:0];
        v37 = +[IDSRegistrationReasonTracker sharedInstance];
        userUniqueIdentifier = [(IDSRegistration *)failedCopy userUniqueIdentifier];
        [v37 setPNRReason:6 forUserUniqueIdentifier:userUniqueIdentifier];

        v21 = +[IDSSMSRegistrationCenter sharedInstance];
        [v21 sendRegistration:failedCopy];
        goto LABEL_97;
      }

      if ([(IDSRegistration *)failedCopy registrationType]== 1)
      {
        retries = [(IDSRegistration *)failedCopy retries];
        v18 = +[IMRGLog registration];
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (retries <= 2)
        {
          v56 = infoCopy;
          v57 = selfCopy;
          if (v19)
          {
            *buf = 138412290;
            errorCopy = failedCopy;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " => Will retry Authentication: %@", buf, 0xCu);
          }

          [(IDSRegistration *)failedCopy setRetries:[(IDSRegistration *)failedCopy retries]+ 1];
          [(IDSRegistration *)failedCopy setRegistrationCert:0];
          [(IDSRegistration *)failedCopy setAuthenticationToken:0];
          confirmedEmails = [(IDSRegistration *)failedCopy confirmedEmails];
          [(IDSRegistration *)failedCopy setUris:0];
          [(IDSRegistration *)failedCopy saveToKeychain];
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v21 = confirmedEmails;
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
                  errorCopy = v26;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Added confirmed emails: %@", buf, 0xCu);
                }

                [(IDSRegistration *)failedCopy addCandidateEmail:v26];
              }

              v23 = [v21 countByEnumeratingWithState:&v62 objects:v66 count:16];
            }

            while (v23);
          }

          authenticationToken = [(IDSRegistration *)failedCopy authenticationToken];

          if (!authenticationToken)
          {
            [(IDSRegistration *)failedCopy setRegistrationStatus:3];
            selfCopy = v57;
            [(IDSDAccount *)v57 _updateRegistrationStatusWithError:-1 info:0];
            v55 = +[IDSAppleIDRegistrationCenter sharedInstance];
            [v55 authenticateRegistration:failedCopy forceNewToken:1];

            goto LABEL_104;
          }

          selfCopy = v57;
          if ([(IDSRegistration *)failedCopy registrationStatus]>= 6)
          {
            sub_100450550(failedCopy);
LABEL_104:
            infoCopy = v56;
LABEL_97:

LABEL_98:
            goto LABEL_99;
          }

          v14 = 0;
          infoCopy = v56;
LABEL_88:
          [(IDSDAccount *)selfCopy _stopRegistrationAgent];
          v47 = objc_alloc_init(IMMessageContext);
          [v47 setShouldBoost:0];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1004F88F8;
          v58[3] = &unk_100BDB450;
          v21 = v47;
          v59 = v21;
          v60 = selfCopy;
          v61 = v14;
          [(IDSDAccount *)selfCopy _broadcastAccountMessageBlock:v58];
          v48 = +[IMRGLog warning];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = @"NO";
            if (v14)
            {
              v49 = @"YES";
            }

            *buf = 138412546;
            errorCopy = v49;
            v69 = 2112;
            v70 = failedCopy;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Needs deletion: %@ (%@)", buf, 0x16u);
          }

          accountController = [(IDSDAccount *)selfCopy accountController];
          uniqueID = [(IDSDAccount *)selfCopy uniqueID];
          [accountController disablePrimaryAccountWithUniqueID:uniqueID];

          if (v14)
          {
            v52 = +[IMRGLog warning];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              uniqueID2 = [(IDSDAccount *)selfCopy uniqueID];
              *buf = 138412290;
              errorCopy = uniqueID2;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Deleting account ID: %@", buf, 0xCu);
            }

            accountController2 = [(IDSDAccount *)selfCopy accountController];
            [accountController2 removeAccount:selfCopy];
          }

          goto LABEL_97;
        }

        if (v19)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " => Not retrying, max retries hit", buf, 2u);
        }

        [(IDSRegistration *)failedCopy setRetries:0];
LABEL_87:
        v14 = 0;
        goto LABEL_88;
      }

      if ([(IDSRegistration *)failedCopy registrationType]!= 2)
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
      errorCopy = error;
      v69 = 2112;
      v70 = failedCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, " => Nuking Home Number user {error: %ld, registration: %@}", buf, 0x16u);
LABEL_85:

      v40 = +[IDSDaemon sharedInstance];
      registrationConductor = [v40 registrationConductor];
      userStore = [registrationConductor userStore];
      userUniqueIdentifier2 = [(IDSRegistration *)failedCopy userUniqueIdentifier];
      v15 = [userStore userWithUniqueIdentifier:userUniqueIdentifier2];

      v44 = +[IDSDaemon sharedInstance];
      registrationConductor2 = [v44 registrationConductor];
      userStore2 = [registrationConductor2 userStore];
      [userStore2 forceRemoveUser:v15 silently:0];

      goto LABEL_86;
    }

    if (error <= 37)
    {
      if (error > 35)
      {
        if (error != 36)
        {
          goto LABEL_38;
        }
      }

      else if (error != 31)
      {
        if (error != 35)
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
      if ((error - 47) < 3)
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

      if (error == 39)
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

      if (error != 38)
      {
        goto LABEL_88;
      }
    }

    v29 = +[IMRGLog warning];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1009267E0();
    }

    [(IDSRegistration *)failedCopy removeFromKeychain];
    if ([(IDSRegistration *)failedCopy registrationType]!= 2)
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

- (void)registrationController:(id)controller deregistrationWillStart:(id)start
{
  if (self->_registrationInfo == start)
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

- (void)registrationController:(id)controller deregistrationSucceeded:(id)succeeded
{
  if (self->_registrationInfo == succeeded)
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
          uniqueID = [(IDSDAccount *)self uniqueID];
          v8 = 138412546;
          v9 = registrationInfo;
          v10 = 2112;
          v11 = uniqueID;
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

- (void)registrationControllerNeedsNewRegistration:(id)registration
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

- (void)center:(id)center startedAuthenticating:(id)authenticating
{
  authenticatingCopy = authenticating;
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

  if (self->_registrationInfo == authenticatingCopy)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = authenticatingCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started authenticating for info: %@", &v8, 0xCu);
    }

    [(IDSDAccount *)self _updateRegistrationStatusWithError:-1 info:0];
  }

LABEL_8:
}

- (void)center:(id)center succeededAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  if (self->_registrationInfo == authenticationCopy)
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
          v15 = authenticationCopy;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Succeeded authentication for info: %@", &v14, 0xCu);
        }

        v8 = +[IMRGLog registration];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          profileID = [(IDSRegistration *)authenticationCopy profileID];
          v14 = 138412290;
          v15 = profileID;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating profileID: %@", &v14, 0xCu);
        }

        v6 = objc_alloc_init(NSMutableDictionary);
        profileID2 = [(IDSRegistration *)authenticationCopy profileID];
        if (profileID2)
        {
          CFDictionarySetValue(v6, kIDSServiceDefaultsAuthorizationIDKey, profileID2);
        }

        authenticationToken = [(IDSRegistration *)authenticationCopy authenticationToken];
        loginID = [(IDSDAccount *)self loginID];
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

- (void)center:(id)center failedAuthentication:(id)authentication error:(int64_t)error info:(id)info
{
  authenticationCopy = authentication;
  infoCopy = info;
  if (self->_registrationInfo == authenticationCopy)
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

        if ([(IDSRegistration *)authenticationCopy registrationType]== 1 && (v13 = [(IDSRegistration *)authenticationCopy registrationStatus], error == 17) && v13 == 8)
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

          serviceType = [(IDSDAccount *)self serviceType];
          loginID = [(IDSDAccount *)self loginID];
          IMRemoveKeychainAuthToken();

          [(IDSDAccount *)self writeAccountDefaults:v11];
          if ([infoCopy count])
          {
            [(IDSDAccount *)self setRegistrationStatus:[(IDSDAccount *)self registrationStatus] error:[(IDSDAccount *)self registrationError] alertInfo:infoCopy];
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

- (void)center:(id)center succeededCurrentEmailsRequest:(id)request emailInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  if (self->_registrationInfo == requestCopy)
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
      v13 = requestCopy;
      v14 = 2112;
      v15 = infoCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Succeeded Validated Email Query info: %@    Emails: %@  (Session: %@)", &v12, 0x20u);
    }

    if ([(IDSDAccount *)self accountType]== 1)
    {
      v11 = [infoCopy __imArrayByApplyingBlock:&stru_100BDEF98];
      [(IDSDAccount *)self _updateVettedAliases:v11 emailInfo:infoCopy addToCurrentHandlesIfNeeded:0];
    }

    [(IDSDAccount *)self _updatePseudonymsFromEmailInfo:infoCopy];
  }

LABEL_9:
}

- (void)center:(id)center succeededRegionValidation:(id)validation regionID:(id)d phoneNumber:(id)number extraContext:(id)context verified:(BOOL)verified
{
  verifiedCopy = verified;
  dCopy = d;
  numberCopy = number;
  contextCopy = context;
  if (self->_registrationInfo == validation)
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
          *&v26[4] = dCopy;
          if (verifiedCopy)
          {
            v18 = @"YES";
          }

          *&v26[12] = 2112;
          *&v26[14] = numberCopy;
          v27 = 2112;
          v28 = contextCopy;
          v29 = 2112;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Succeeded region validation with region ID: %@  phoneNumber: %@  context: %@  verified: %@", v26, 0x2Au);
        }

        v19 = objc_alloc_init(NSMutableDictionary);
        v16 = v19;
        if (dCopy)
        {
          CFDictionarySetValue(v19, kIDSServiceDefaultsProfileRegionIDKey, dCopy);
        }

        if (numberCopy)
        {
          CFDictionarySetValue(v16, kIDSServiceDefaultsProfileBaseNumberKey, numberCopy);
        }

        if (contextCopy)
        {
          CFDictionarySetValue(v16, kIDSServiceDefaultsProfileServerContextKey, contextCopy);
        }

        if (verifiedCopy)
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

        [(IDSRegistration *)self->_registrationInfo setRegionID:dCopy];
        [(IDSRegistration *)self->_registrationInfo setRegionBasePhoneNumber:numberCopy];
        [(IDSRegistration *)self->_registrationInfo setRegionServerContext:contextCopy];
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

- (void)center:(id)center failedRegionValidation:(id)validation error:(int64_t)error info:(id)info
{
  validationCopy = validation;
  infoCopy = info;
  if (self->_registrationInfo == validationCopy)
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
        accountType = [(IDSDAccount *)self accountType];
        v13 = +[IMRGLog warning];
        v11 = v13;
        if (accountType == 2)
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
            v17 = sub_100016528(error);
            v18 = 138412802;
            v19 = validationCopy;
            v20 = 2112;
            v21 = v17;
            v22 = 2112;
            v23 = infoCopy;
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

          if ([infoCopy count])
          {
            [(IDSDAccount *)self setRegistrationStatus:[(IDSDAccount *)self registrationStatus] error:[(IDSDAccount *)self registrationError] alertInfo:infoCopy];
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

- (int64_t)_validationStatusForAlias:(id)alias
{
  aliasCopy = alias;
  vettedAliases = [(IDSDAccount *)self vettedAliases];
  v6 = [vettedAliases containsObject:aliasCopy];

  if (v6 & 1) != 0 || ([aliasCopy isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    intValue = 3;
  }

  else if ([aliasCopy length])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    _uriDictionariesFromAccountInfo = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v10 = [_uriDictionariesFromAccountInfo countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(_uriDictionariesFromAccountInfo);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 objectForKey:v13];
          v17 = [v16 isEqualToString:aliasCopy];

          if (v17)
          {
            v18 = [v15 objectForKey:kIDSServiceDefaultsAliasStatusKey];
            intValue = [v18 intValue];

            goto LABEL_16;
          }
        }

        v11 = [_uriDictionariesFromAccountInfo countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    intValue = 0;
LABEL_16:
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)_setValidationStatus:(int64_t)status error:(int)error forAlias:(id)alias info:(id)info addToCurrentHandlesIfNeeded:(BOOL)needed forceAdd:(BOOL)add aliasProperties:(id)properties
{
  aliasCopy = alias;
  infoCopy = info;
  propertiesCopy = properties;
  if ([aliasCopy length])
  {
    v39 = infoCopy;
    v17 = [aliasCopy isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias];
    if (v17)
    {
      errorCopy = -1;
    }

    else
    {
      errorCopy = error;
    }

    v37 = errorCopy;
    if (v17)
    {
      statusCopy = 3;
    }

    else
    {
      statusCopy = status;
    }

    selfCopy = self;
    _uriDictionariesFromAccountInfo = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v21 = [_uriDictionariesFromAccountInfo mutableCopy];

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
      v26 = [v25 isEqualToString:aliasCopy];

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

        invisibleAliases = [(IDSDAccount *)selfCopy invisibleAliases];
        v32 = [invisibleAliases containsObject:aliasCopy];

        v33 = [NSNumber numberWithInteger:statusCopy];
        [(__CFDictionary *)Mutable setObject:v33 forKey:kIDSServiceDefaultsAliasStatusKey];

        [(__CFDictionary *)Mutable setObject:aliasCopy forKey:kIDSServiceDefaultsAliasKey];
        v34 = [NSNumber numberWithBool:v32 ^ 1];
        [(__CFDictionary *)Mutable setObject:v34 forKey:kIDSServiceDefaultsAliasIsUserVisibleKey];

        if (propertiesCopy)
        {
          [(__CFDictionary *)Mutable addEntriesFromDictionary:propertiesCopy];
        }

        if (statusCopy != -1 || v37 == -1)
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
          [(IDSDAccount *)selfCopy markAsSelectedAlias:aliasCopy];
        }

        else
        {
          [v21 replaceObjectAtIndex:v22 withObject:Mutable];
        }

        infoCopy = v39;
        v36 = [NSDictionary dictionaryWithObjectsAndKeys:v21, kIDSServiceDefaultsAliasesKey, v39, kIDSServiceDefaultsAliasValidationAlertInfoKey, 0];
        [(IDSDAccount *)selfCopy writeAccountDefaults:v36];

        goto LABEL_34;
      }
    }

    else
    {
LABEL_14:
      v27 = statusCopy == 3 && needed;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v28 = 1;
      if (!v27 && !add)
      {
        infoCopy = v39;
LABEL_34:

        goto LABEL_35;
      }
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_22;
  }

LABEL_35:
}

- (void)_removeAliases:(id)aliases withReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  aliasesCopy = aliases;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDAccount *)self uniqueID];
    *buf = 138412546;
    v38 = aliasesCopy;
    v39 = 2112;
    v40 = uniqueID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " => Remove aliases: %@   for: %@", buf, 0x16u);
  }

  v9 = [aliasesCopy __imArrayByApplyingBlock:&stru_100BDEFD8];

  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Request to remove aliases: %@", buf, 0xCu);
  }

  if ([v9 count])
  {
    _uriDictionariesFromAccountInfo = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v12 = [_uriDictionariesFromAccountInfo mutableCopy];

    v13 = [v12 count];
    if (v13 - 1 >= 0)
    {
      v14 = v13;
      v34 = 0;
      v15 = kIDSServiceDefaultsAliasKey;
      v36 = reasonCopy;
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
        if (reasonCopy == 2)
        {
          [(IDSDAccount *)self markAsUnvettedAlias:v17];
        }

        else
        {
          [(IDSDAccount *)self markAsUnselectedAlias:v17 withReason:reasonCopy];
        }

        if ((*(self + 81) & 2) == 0)
        {
          goto LABEL_39;
        }

        candidateEmails = [(IDSRegistration *)self->_registrationInfo candidateEmails];
        v21 = [candidateEmails containsObject:v17];

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

        confirmedEmails = [(IDSRegistration *)self->_registrationInfo confirmedEmails];
        v24 = [confirmedEmails containsObject:v17];

        _bestGuessURI = +[IMRGLog registration];
        v26 = os_log_type_enabled(_bestGuessURI, OS_LOG_TYPE_DEFAULT);
        if (!v24)
        {
          break;
        }

        if (v26)
        {
          *buf = 138412290;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, _bestGuessURI, OS_LOG_TYPE_DEFAULT, "Removing confirmed email: %@", buf, 0xCu);
        }

        if ([(IDSDAccount *)self isDeviceRegistered])
        {
          _bestGuessURI = [v17 _bestGuessURI];
          uris = [(IDSRegistration *)self->_registrationInfo uris];
          v28 = [uris mutableCopy];

          v29 = [v28 containsObject:_bestGuessURI];
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

            [v28 removeObject:_bestGuessURI];
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
          reasonCopy = v36;
          goto LABEL_39;
        }

        reasonCopy = v36;
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
        _os_log_impl(&_mh_execute_header, _bestGuessURI, OS_LOG_TYPE_DEFAULT, "Email was unconfirmed, just removing: %@", buf, 0xCu);
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

- (void)removeAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = aliasesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client request to remove aliases: %@", &v6, 0xCu);
  }

  [(IDSDAccount *)self _removeAliases:aliasesCopy withReason:4];
}

- (void)_addAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = aliasesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Add aliases: %@", buf, 0xCu);
  }

  if ([aliasesCopy count])
  {
    v6 = +[IDSRegistrationController registeredPhoneNumbers];
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = aliasesCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to add aliases: %@", buf, 0xCu);
    }

    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " => Found my phone numbers: %@", buf, 0xCu);
    }

    _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
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
    v27 = _unprefixedURIStringsFromAccountInfo;
    v35 = v27;
    v12 = [aliasesCopy __imArrayByApplyingBlock:v33];

    _uriDictionariesFromAccountInfo = [(IDSDAccount *)self _uriDictionariesFromAccountInfo];
    v14 = [_uriDictionariesFromAccountInfo mutableCopy];

    if (!v14)
    {
      v14 = objc_alloc_init(NSMutableArray);
    }

    v26 = v14;
    v15 = [NSDictionary dictionaryWithObject:v14 forKey:kIDSServiceDefaultsAliasesKey];
    [(IDSDAccount *)self writeAccountDefaults:v15];

    vettedAliases = [(IDSDAccount *)self vettedAliases];
    v17 = +[IMRGLog registration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = vettedAliases;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " => Vetted aliases: %@", buf, 0xCu);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    aliasesCopy = v12;
    v18 = [aliasesCopy countByEnumeratingWithState:&v29 objects:v36 count:16];
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
            objc_enumerationMutation(aliasesCopy);
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
          if ([vettedAliases containsObject:v22])
          {
            v24 = 3;
          }

          else
          {
            v24 = 0;
          }

          [(IDSDAccount *)self _setValidationStatus:v24 error:0xFFFFFFFFLL forAlias:v22 info:0 addToCurrentHandlesIfNeeded:1 forceAdd:1];
        }

        v19 = [aliasesCopy countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v19);
    }

    if ([aliasesCopy count])
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

- (void)addAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDAccount *)self uniqueID];
    v7 = 138412546;
    v8 = aliasesCopy;
    v9 = 2112;
    v10 = uniqueID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client request to add aliases: %@  account: %@", &v7, 0x16u);
  }

  [(IDSDAccount *)self _addAliases:aliasesCopy];
}

- (void)_validateAliases:(id)aliases validateAlreadyValid:(BOOL)valid
{
  aliasesCopy = aliases;
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
    v7 = aliasesCopy;
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

  _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)self _unprefixedURIStringsFromAccountInfo];
  unprefixedURIStringsFromRegistration = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1004FB9AC;
  v41[3] = &unk_100BD9528;
  v6 = _unprefixedURIStringsFromAccountInfo;
  v42 = v6;
  v7 = [aliasesCopy __imArrayByApplyingBlock:v41];

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
    v32 = unprefixedURIStringsFromRegistration;
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
      unprefixedURIStringsFromRegistration = v32;
      v35 = v32;
      v24 = [v14 __imArrayByFilteringWithBlock:v34];
      if ([v23 count] || objc_msgSend(v24, "count"))
      {
        systemMonitor = [(IDSDAccount *)self systemMonitor];
        isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

        v6 = v33;
        if (isUnderFirstDataProtectionLock)
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
      unprefixedURIStringsFromRegistration = v32;
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

- (void)_validateAliases:(id)aliases
{
  aliasesCopy = aliases;
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
    [(IDSDAccount *)self _validateAliases:aliasesCopy validateAlreadyValid:v10];
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

- (void)validateAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDAccount *)self uniqueID];
    v8 = 138412546;
    v9 = aliasesCopy;
    v10 = 2112;
    v11 = uniqueID;
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
        [(IDSDAccount *)self _validateAliases:aliasesCopy];
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

- (void)_unvalidateAliases:(id)aliases
{
  aliasesCopy = aliases;
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
      loginID = [(IDSDAccount *)self loginID];
      lowercaseString = [loginID lowercaseString];
    }

    else
    {
      lowercaseString = 0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1004FC3A8;
    v17[3] = &unk_100BD9528;
    v5 = lowercaseString;
    v18 = v5;
    v6 = [aliasesCopy __imArrayByApplyingBlock:v17];

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
        vettedAliases = [(IDSDAccount *)self vettedAliases];
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

          v12 = [vettedAliases mutableCopy];
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

      vettedAliases = +[IMRGLog registration];
      if (os_log_type_enabled(vettedAliases, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v6;
        v14 = "Request to unvalidate aliases: %@, but device is not authenticated";
        v15 = vettedAliases;
        v16 = 12;
        goto LABEL_31;
      }
    }

    else
    {
      vettedAliases = +[IMRGLog registration];
      if (os_log_type_enabled(vettedAliases, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "Empty aliases, ignoring";
        v15 = vettedAliases;
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
  v6 = aliasesCopy;
LABEL_8:
}

- (void)unvalidateAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = [(IDSDAccount *)self uniqueID];
    v8 = 138412546;
    v9 = aliasesCopy;
    v10 = 2112;
    v11 = uniqueID;
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
        [(IDSDAccount *)self _unvalidateAliases:aliasesCopy];
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
      accountType = [(IDSDAccount *)self accountType];
      v6 = +[IMRGLog warning];
      v4 = v6;
      if (accountType == 2)
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

- (void)validateCredentialsWithDeliveryCompletionBlock:(id)block
{
  blockCopy = block;
  registrationCenter = [(IDSDAccount *)self registrationCenter];
  registration = [(IDSDAccount *)self registration];
  [registrationCenter sendValidateCredential:registration withDeliveryCompletionBlock:blockCopy];
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
    registrationCenter = [(IDSDAccount *)self registrationCenter];
    [registrationCenter queryValidatedEmailsForRegistration:self->_registrationInfo allowPasswordPrompt:1 completionBlock:0];
  }

  else
  {
    registrationCenter = +[IMRGLog registration];
    if (os_log_type_enabled(registrationCenter, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, registrationCenter, OS_LOG_TYPE_DEFAULT, "Request to refresh valid aliases, but device is not authenticated", v5, 2u);
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

- (unint64_t)_handleAndConvertFeatureToggleError:(int64_t)error
{
  if (error == 20000)
  {
    return 5;
  }

  if (error != 6005)
  {
    return 6;
  }

  if (![(IDSDAccount *)self accountType])
  {
    v4 = +[IDSRegistrationReasonTracker sharedInstance];
    userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
    [v4 setPNRReason:11 forUserUniqueIdentifier:userUniqueIdentifier];
  }

  selfCopy = [(IDSDAccount *)self primaryAccount];
  v7 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy reIdentify];

  return 6;
}

- (void)retrieveFeatureToggleStateForOptions:(id)options completionBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  registrationCenter = [(IDSDAccount *)self registrationCenter];
  featureID = [optionsCopy featureID];

  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1004FCB20;
  v12[3] = &unk_100BDF050;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  [registrationCenter retrieveFeatureToggleStateForFeatureID:featureID registration:primaryRegistration completionBlock:v12];
}

- (void)updateFeatureToggleStateWithOptions:(id)options completionBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  registrationCenter = [(IDSDAccount *)self registrationCenter];
  state = [optionsCopy state];
  featureID = [optionsCopy featureID];

  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004FCD74;
  v13[3] = &unk_100BDF050;
  v13[4] = self;
  v14 = blockCopy;
  v12 = blockCopy;
  [registrationCenter updateFeatureToggleState:state forFeatureID:featureID registration:primaryRegistration completionBlock:v13];
}

- (void)_handlePseudonymProvisionError:(int64_t)error
{
  if (error == 6005)
  {
    if (![(IDSDAccount *)self accountType])
    {
      v5 = +[IDSRegistrationReasonTracker sharedInstance];
      userUniqueIdentifier = [(IDSDAccount *)self userUniqueIdentifier];
      [v5 setPNRReason:11 forUserUniqueIdentifier:userUniqueIdentifier];
    }

    selfCopy = [(IDSDAccount *)self primaryAccount];
    v8 = selfCopy;
    if (!selfCopy)
    {
      selfCopy = self;
    }

    [selfCopy reIdentify];
  }
}

- (BOOL)provisionPseudonymForURI:(id)i properties:(id)properties requestProperties:(id)requestProperties completionBlock:(id)block
{
  iCopy = i;
  propertiesCopy = properties;
  blockCopy = block;
  requestPropertiesCopy = requestProperties;
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    allowedServices = [propertiesCopy allowedServices];
    primaryAccount = [(IDSDAccount *)self primaryAccount];
    service = [primaryAccount service];
    identifier = [service identifier];
    v18 = [allowedServices containsObject:identifier];

    if ((v18 & 1) == 0)
    {
      allowedServices2 = [propertiesCopy allowedServices];
      primaryAccount2 = [(IDSDAccount *)self primaryAccount];
      service2 = [primaryAccount2 service];
      identifier2 = [service2 identifier];
      v23 = [allowedServices2 arrayByAddingObject:identifier2];

      v24 = [propertiesCopy withUpdatedAllowedServices:v23];

      propertiesCopy = v24;
    }

    primaryAccount3 = [(IDSDAccount *)self primaryAccount];
    v26 = [primaryAccount3 provisionPseudonymForURI:iCopy properties:propertiesCopy requestProperties:requestPropertiesCopy completionBlock:blockCopy];
  }

  else
  {
    registrationCenter = [(IDSDAccount *)self registrationCenter];
    registration = [(IDSDAccount *)self registration];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1004FD120;
    v30[3] = &unk_100BDF078;
    v30[4] = self;
    v33 = blockCopy;
    v31 = iCopy;
    propertiesCopy = propertiesCopy;
    v32 = propertiesCopy;
    v26 = [registrationCenter provisionPseudonymFor:registration withURI:v31 properties:propertiesCopy requestProperties:requestPropertiesCopy completionBlock:v30];
  }

  return v26;
}

- (BOOL)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties completionBlock:(id)block
{
  pseudonymCopy = pseudonym;
  blockCopy = block;
  propertiesCopy = properties;
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    primaryAccount = [(IDSDAccount *)self primaryAccount];
    v14 = [primaryAccount renewPseudonym:pseudonymCopy forUpdatedExpiryEpoch:propertiesCopy requestProperties:blockCopy completionBlock:epoch];
  }

  else
  {
    registrationCenter = [(IDSDAccount *)self registrationCenter];
    registration = [(IDSDAccount *)self registration];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004FD494;
    v18[3] = &unk_100BDF0A0;
    v18[4] = self;
    v20 = blockCopy;
    v19 = pseudonymCopy;
    v14 = [registrationCenter renewPseudonym:v19 forRegistration:registration forUpdatedExpiryEpoch:propertiesCopy requestProperties:v18 completionBlock:epoch];
  }

  return v14;
}

- (BOOL)revokePseudonym:(id)pseudonym requestProperties:(id)properties completionBlock:(id)block
{
  pseudonymCopy = pseudonym;
  blockCopy = block;
  propertiesCopy = properties;
  if ([(IDSDAccount *)self isAdHocAccount])
  {
    primaryAccount = [(IDSDAccount *)self primaryAccount];
    v12 = [primaryAccount revokePseudonym:pseudonymCopy requestProperties:propertiesCopy completionBlock:blockCopy];
  }

  else
  {
    registrationCenter = [(IDSDAccount *)self registrationCenter];
    registration = [(IDSDAccount *)self registration];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1004FD7B0;
    v16[3] = &unk_100BDF0A0;
    v16[4] = self;
    v18 = blockCopy;
    v17 = pseudonymCopy;
    v12 = [registrationCenter revokePseudonym:v17 forRegistration:registration requestProperties:propertiesCopy completionBlock:v16];
  }

  return v12;
}

- (void)_addPseudonyms:(id)pseudonyms
{
  pseudonymsCopy = pseudonyms;
  selfCopy = self;
  v38 = objc_autoreleasePoolPush();
  accountInfo = [(IDSDAccount *)self accountInfo];
  v36 = kIDSServiceDefaultsPseudonymsKey;
  v6 = [accountInfo objectForKey:?];
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
  obj = pseudonymsCopy;
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
        maskedURI = [v12 maskedURI];
        prefixedURI = [maskedURI prefixedURI];
        v15 = v10;
        v16 = [v10 objectForKey:prefixedURI];
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
        prefixedURI2 = [v23 prefixedURI];

        if (prefixedURI2)
        {
          CFDictionarySetValue(v22, key, prefixedURI2);
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

        properties = [v12 properties];
        dictionaryRepresentation = [properties dictionaryRepresentation];

        if (dictionaryRepresentation)
        {
          CFDictionarySetValue(v22, v40, dictionaryRepresentation);
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
        maskedURI2 = [v12 maskedURI];
        prefixedURI3 = [maskedURI2 prefixedURI];
        [v10 setObject:v21 forKey:prefixedURI3];

        properties2 = [v12 properties];
        allowedServices = [properties2 allowedServices];
        v31 = [allowedServices mutableCopy];
        [v43 addObjectsFromArray:v31];

        objc_autoreleasePoolPop(context);
      }

      v44 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v44);
  }

  service = [(IDSDAccount *)selfCopy service];
  identifier = [service identifier];
  [v43 removeObject:identifier];

  v51 = v36;
  v52 = v10;
  v34 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  allObjects = [v43 allObjects];
  [(IDSDAccount *)selfCopy _writeAccountDefaults:v34 force:1 interestedSubservices:allObjects];

  objc_autoreleasePoolPop(v38);
}

- (void)_addPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  pseudonymCopy2 = pseudonym;
  v5 = [NSArray arrayWithObjects:&pseudonymCopy count:1];

  [(IDSDAccount *)self _addPseudonyms:v5, pseudonymCopy];
}

- (void)_removePseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  pseudonymCopy2 = pseudonym;
  v5 = [NSArray arrayWithObjects:&pseudonymCopy count:1];

  [(IDSDAccount *)self _removePseudonyms:v5, pseudonymCopy];
}

- (void)_removePseudonyms:(id)pseudonyms
{
  pseudonymsCopy = pseudonyms;
  v5 = objc_autoreleasePoolPush();
  accountInfo = [(IDSDAccount *)self accountInfo];
  v7 = kIDSServiceDefaultsPseudonymsKey;
  v8 = [accountInfo objectForKey:kIDSServiceDefaultsPseudonymsKey];

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
  v12 = pseudonymsCopy;
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
      maskedURI = [v17 maskedURI];
      prefixedURI = [maskedURI prefixedURI];
      v21 = [v31 objectForKey:prefixedURI];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1004FE3E0;
      v33[3] = &unk_100BDF0C8;
      v33[4] = v17;
      v22 = [v21 __imArrayByFilteringWithBlock:v33];
      v23 = [v22 count];
      maskedURI2 = [v17 maskedURI];
      prefixedURI2 = [maskedURI2 prefixedURI];
      if (v23)
      {
        [v32 setObject:v22 forKey:prefixedURI2];
      }

      else
      {
        [v32 removeObjectForKey:prefixedURI2];
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

- (id)pseudonymForPseudonymURIString:(id)string
{
  stringCopy = string;
  if ([stringCopy _appearsToBePseudonymID])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    pseudonyms = [(IDSDAccount *)self pseudonyms];
    v6 = [pseudonyms countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(pseudonyms);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 URI];
          prefixedURI = [v10 prefixedURI];
          v12 = [prefixedURI isEqualToString:stringCopy];

          if (v12)
          {
            v6 = v9;
            goto LABEL_13;
          }
        }

        v6 = [pseudonyms countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  selfCopy = self;
  accountInfo = [(IDSDAccount *)self accountInfo];
  v4 = [accountInfo objectForKey:kIDSServiceDefaultsPseudonymsKey];

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

              allowedServices = [v16 allowedServices];
              service = [(IDSDAccount *)selfCopy service];
              identifier = [service identifier];
              v20 = [allowedServices containsObject:identifier];

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

- (BOOL)updateKTOptInStatus:(BOOL)status withCompletion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
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
    identifier = [(IDSServiceProperties *)self->_service identifier];
    v11 = [identifier isEqualToString:@"com.apple.madrid"];

    if (v11)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      vettedAliases = [(IDSDAccount *)self vettedAliases];
      v13 = [vettedAliases countByEnumeratingWithState:&v26 objects:v31 count:16];
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
              objc_enumerationMutation(vettedAliases);
            }

            v17 = [[IDSURI alloc] initWithPrefixedURI:*(*(&v26 + 1) + 8 * i)];
            [v8 addObject:v17];
          }

          v14 = [vettedAliases countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v14);
      }
    }

    v18 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8004 userInfo:0];
    v19 = [[IDSKTOptInResult alloc] initWithSuccess:0 optedInOutURIs:v8 serverSMTByURI:v9 error:v18];
    completionCopy[2](completionCopy, v19);

    v20 = 0;
  }

  else
  {
    registrationCenter = [(IDSDAccount *)self registrationCenter];
    registration = [(IDSDAccount *)self registration];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1004FECCC;
    v24[3] = &unk_100BDF0F0;
    v24[4] = self;
    v25 = completionCopy;
    v20 = [registrationCenter updateKTOptInStatusForRegistration:registration withOptInStatus:statusCopy withCompletion:v24];
  }

  return v20;
}

- (BOOL)updateKTOptInStatusWithRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
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
    identifier = [(IDSServiceProperties *)self->_service identifier];
    v12 = [identifier isEqualToString:@"com.apple.madrid"];

    if (v12)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      vettedAliases = [(IDSDAccount *)self vettedAliases];
      v14 = [vettedAliases countByEnumeratingWithState:&v27 objects:v32 count:16];
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
              objc_enumerationMutation(vettedAliases);
            }

            v18 = [[IDSURI alloc] initWithPrefixedURI:*(*(&v27 + 1) + 8 * i)];
            [v9 addObject:v18];
          }

          v15 = [vettedAliases countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }
    }

    v19 = [NSError errorWithDomain:@"IDSKeyTransparencyVerifierErrorDomain" code:-8004 userInfo:0];
    v20 = [[IDSKTOptInResult alloc] initWithSuccess:0 optedInOutURIs:v9 serverSMTByURI:v10 error:v19];
    completionCopy[2](completionCopy, v20);

    v21 = 0;
  }

  else
  {
    registrationCenter = [(IDSDAccount *)self registrationCenter];
    registration = [(IDSDAccount *)self registration];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1004FF5EC;
    v25[3] = &unk_100BDF0F0;
    v25[4] = self;
    v26 = completionCopy;
    v21 = [registrationCenter updateKTOptInStatusForRegistration:registration withOptInOutRequest:requestCopy withCompletion:v25];
  }

  return v21;
}

- (void)_handleKTOptInStatusUpdateError:(int64_t)error
{
  if (error == 6005)
  {
    selfCopy = [(IDSDAccount *)self primaryAccount];
    v6 = selfCopy;
    if (!selfCopy)
    {
      selfCopy = self;
    }

    [selfCopy reIdentify];
  }
}

- (void)askPeersToClearCacheWithURIs:(id)is fromURI:(id)i forService:(id)service
{
  isCopy = is;
  iCopy = i;
  serviceCopy = service;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v30 = iCopy;
    v31 = 2112;
    v32 = serviceCopy;
    v33 = 2112;
    v34 = isCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 132 to peers to clear their cache { fromURI: %@ service: %@ peerURIs: %@ }", buf, 0x20u);
  }

  v12 = objc_alloc_init(IDSSendParameters);
  v13 = [[IDSSendReason alloc] initWithReason:10 subreason:6 pathID:40];
  v14 = [IDSSendReasonContainer createWithReason:v13];
  [v12 setSendReasonContainer:v14];

  if ([isCopy count])
  {
    v15 = +[NSDictionary dictionary];
    [iCopy prefixedURI];
    v28 = v12;
    v16 = v13;
    v17 = iCopy;
    v18 = serviceCopy;
    v20 = v19 = self;
    _stripFZIDPrefix = [v20 _stripFZIDPrefix];
    v22 = [NSSet setWithArray:isCopy];
    v23 = [IDSDestination destinationWithDestinations:v22];
    LOWORD(v27) = 0;
    LOWORD(v26) = 0;
    LOWORD(v25) = 0;
    v24 = v19;
    serviceCopy = v18;
    iCopy = v17;
    v13 = v16;
    v12 = v28;
    [IDSDAccount sendMessage:v24 params:"sendMessage:params:bulkedPayload:fromID:toDestinations:useDictAsTopLevel:dataToEncrypt:encryptPayload:wantsResponse:expirationDate:command:wantsDeliveryStatus:wantsCertifiedDelivery:deliveryStatusContext:messageUUID:priority:localDelivery:disallowRefresh:willSendBlock:completionBlock:" bulkedPayload:v15 fromID:v28 toDestinations:0 useDictAsTopLevel:_stripFZIDPrefix dataToEncrypt:v23 encryptPayload:1 wantsResponse:0 expirationDate:v25 command:0 wantsDeliveryStatus:&off_100C3C8C8 wantsCertifiedDelivery:v26 deliveryStatusContext:0 messageUUID:0 priority:300 localDelivery:v27 disallowRefresh:0 willSendBlock:&stru_100BDF130 completionBlock:?];
  }

  else
  {
    v15 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = iCopy;
      v31 = 2112;
      v32 = serviceCopy;
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
      accountInfo = [(IDSDAccount *)self accountInfo];
      v5 = kIDSServiceDefaultsProfileKey;
      v3 = [accountInfo objectForKey:kIDSServiceDefaultsProfileKey];

      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [(IDSDAccount *)self uniqueID];
        v19 = 138412546;
        v20 = v3;
        v21 = 2112;
        v22 = uniqueID;
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
  selfCopy = self;
  [(IDSDAccount *)self _broadcastAccountMessageBlock:&v7];
  v6 = [IDSDaemon sharedInstance:v7];
  [v6 updateTopics];

  objc_autoreleasePoolPop(v4);
}

- (void)markAsUnvettedAlias:(id)alias
{
  aliasCopy = alias;
  if ([(IDSDAccount *)self currentAliasState:?]== 3)
  {
    [(IDSDAccount *)self _setUserIntentState:4 forAlias:aliasCopy withReason:1];
  }

  else
  {
    [(IDSDAccount *)self _stopTrackingUserIntentOfAlias:aliasCopy];
  }
}

- (void)markAsVettedAlias:(id)alias
{
  aliasCopy = alias;
  if ([(IDSDAccount *)self currentAliasState:aliasCopy]== 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  [(IDSDAccount *)self _setUserIntentState:v4 forAlias:aliasCopy withReason:1];
}

- (unsigned)currentAliasState:(id)state
{
  v3 = [(IDSDAccount *)self _userIntentDictForAlias:state];
  v4 = [v3 objectForKey:kIDSServiceDefaultsAliasIntentStateKey];
  intValue = [v4 intValue];

  return intValue;
}

- (unsigned)unselectReasonForAlias:(id)alias
{
  v3 = [(IDSDAccount *)self _userIntentDictForAlias:alias];
  v4 = [v3 objectForKey:kIDSServiceDefaultsAliasIntentStateKey];
  intValue = [v4 intValue];

  if (intValue == 2)
  {
    v6 = [v3 objectForKey:kIDSServiceDefaultsAliasIntentInfoKey];
    intValue2 = [v6 intValue];
  }

  else
  {
    intValue2 = 1;
  }

  return intValue2;
}

- (id)_userIntentDictForAlias:(id)alias
{
  aliasCopy = alias;
  v5 = [(IDSDAccount *)self _allUserIntentWithDefaultReason:0];
  v6 = [v5 objectForKey:aliasCopy];

  if (!v6)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v7 = [v6 objectForKey:kIDSServiceDefaultsAliasIntentStateKey];
  intValue = [v7 intValue];

  if (intValue != 4)
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
        service = [(IDSDAccount *)self service];
        identifier = [service identifier];
        loginID = [(IDSDAccount *)self loginID];
        v21 = 138413314;
        v22 = identifier;
        v23 = 2112;
        v24 = loginID;
        v25 = 2112;
        v26 = aliasCopy;
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

  [(IDSDAccount *)self _stopTrackingUserIntentOfAlias:aliasCopy];
  v15 = 0;
LABEL_15:

LABEL_16:

  return v15;
}

- (void)_setUserIntentState:(unsigned __int8)state forAlias:(id)alias withReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  stateCopy = state;
  aliasCopy = alias;
  service = [(IDSDAccount *)self service];
  shouldAutoRegisterAllHandles = [service shouldAutoRegisterAllHandles];

  if (shouldAutoRegisterAllHandles & 1) != 0 || ([aliasCopy isEqualToIgnoringCase:kIDSServiceDefaultsSentinelAlias])
  {
    goto LABEL_12;
  }

  v11 = [(IDSDAccount *)self _allUserIntentWithDefaultReason:0];
  v12 = [v11 mutableCopy];

  if (stateCopy == 4)
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

  if (reasonCopy != 1)
  {
    v38[0] = kIDSServiceDefaultsAliasIntentStateKey;
    v13 = [NSNumber numberWithUnsignedChar:stateCopy];
    v39[0] = v13;
    v38[1] = kIDSServiceDefaultsAliasIntentInfoKey;
    v14 = [NSNumber numberWithUnsignedChar:reasonCopy];
    v39[1] = v14;
    v15 = v39;
    v16 = v38;
    goto LABEL_8;
  }

  v36 = kIDSServiceDefaultsAliasIntentStateKey;
  v13 = [NSNumber numberWithUnsignedChar:stateCopy];
  v37 = v13;
  v17 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
LABEL_9:

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    service2 = [(IDSDAccount *)self service];
    identifier = [service2 identifier];
    loginID = [(IDSDAccount *)self loginID];
    v22 = [v12 objectForKey:aliasCopy];
    *buf = 138413314;
    v27 = identifier;
    v28 = 2112;
    v29 = loginID;
    v30 = 2112;
    v31 = aliasCopy;
    v32 = 2112;
    v33 = v22;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating user intent state {service: %@, loginID: %@, alias: %@, from: %@, to: %@}", buf, 0x34u);
  }

  [v12 setObject:v17 forKey:aliasCopy];
  v24 = kIDSServiceDefaultsAliasIntentKey;
  v25 = v12;
  v23 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(IDSDAccount *)self writeAccountDefaults:v23];

LABEL_12:
}

- (void)_stopTrackingUserIntentOfAlias:(id)alias
{
  aliasCopy = alias;
  service = [(IDSDAccount *)self service];
  shouldAutoRegisterAllHandles = [service shouldAutoRegisterAllHandles];

  if ((shouldAutoRegisterAllHandles & 1) == 0)
  {
    v7 = [(IDSDAccount *)self _allUserIntentWithDefaultReason:0];
    v8 = [v7 mutableCopy];

    [v8 removeObjectForKey:aliasCopy];
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      service2 = [(IDSDAccount *)self service];
      identifier = [service2 identifier];
      loginID = [(IDSDAccount *)self loginID];
      *buf = 138412802;
      v17 = identifier;
      v18 = 2112;
      v19 = loginID;
      v20 = 2112;
      v21 = aliasCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping user intent tracking {service: %@, loginID: %@, alias: %@}", buf, 0x20u);
    }

    v14 = kIDSServiceDefaultsAliasIntentKey;
    v15 = v8;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(IDSDAccount *)self writeAccountDefaults:v13];
  }
}

- (id)_allUserIntentWithDefaultReason:(BOOL)reason
{
  reasonCopy = reason;
  selfCopy = self;
  service = [(IDSDAccount *)self service];
  shouldAutoRegisterAllHandles = [service shouldAutoRegisterAllHandles];

  if (shouldAutoRegisterAllHandles)
  {
    v7 = 0;
  }

  else
  {
    accountInfo = [(IDSDAccount *)selfCopy accountInfo];
    v9 = kIDSServiceDefaultsAliasIntentKey;
    v7 = [accountInfo objectForKey:kIDSServiceDefaultsAliasIntentKey];

    if (!v7)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      v11 = kIDSServiceDefaultsAliasIntentStateKey;
      v12 = &_dispatch_main_q_ptr;
      v36 = v9;
      if (reasonCopy)
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
      vettedAliases = [(IDSDAccount *)selfCopy vettedAliases];
      v18 = [vettedAliases countByEnumeratingWithState:&v42 objects:v51 count:16];
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
              objc_enumerationMutation(vettedAliases);
            }

            [v10 setObject:v16 forKey:*(*(&v42 + 1) + 8 * i)];
          }

          v19 = [vettedAliases countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v19);
      }

      v35 = v16;

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = selfCopy;
      _unprefixedURIStringsFromAccountInfo = [(IDSDAccount *)selfCopy _unprefixedURIStringsFromAccountInfo];
      v23 = [_unprefixedURIStringsFromAccountInfo countByEnumeratingWithState:&v38 objects:v50 count:16];
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
              objc_enumerationMutation(_unprefixedURIStringsFromAccountInfo);
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

          v24 = [_unprefixedURIStringsFromAccountInfo countByEnumeratingWithState:&v38 objects:v50 count:16];
        }

        while (v24);
      }

      v7 = [v10 copy];
      v46 = v36;
      v47 = v7;
      v32 = [(dispatch_queue_s *)v12[25] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      selfCopy = v37;
      [(IDSDAccount *)v37 writeAccountDefaults:v32];
    }

    v33 = +[IMRGLog GDR];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100927C34(selfCopy, v33);
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

- (void)reportSpamWithMessages:(id)messages toURI:(id)i
{
  iCopy = i;
  messagesCopy = messages;
  v8 = +[IDSRegistrationController sharedInstance];
  [v8 reportSpamWithMessages:messagesCopy toURI:iCopy registration:self->_registrationInfo];
}

- (void)reportiMessageUnknownSender:(id)sender messageID:(id)d isBlackholed:(BOOL)blackholed isJunked:(BOOL)junked messageServerTimestamp:(id)timestamp toURI:(id)i
{
  junkedCopy = junked;
  blackholedCopy = blackholed;
  iCopy = i;
  timestampCopy = timestamp;
  dCopy = d;
  senderCopy = sender;
  v18 = +[IDSRegistrationController sharedInstance];
  [v18 reportiMessageUnknownSender:senderCopy messageID:dCopy isBlackholed:blackholedCopy isJunked:junkedCopy messageServerTimestamp:timestampCopy toURI:iCopy registration:self->_registrationInfo];
}

- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion
{
  completionCopy = completion;
  rICopy = rI;
  iCopy = i;
  registrationCenter = [(IDSDAccount *)self registrationCenter];
  [registrationCenter reportAction:action ofTempURI:iCopy fromURI:rICopy registration:self->_registrationInfo withCompletion:completionCopy];
}

- (void)reportMessage:(id)message toURI:(id)i
{
  iCopy = i;
  messageCopy = message;
  v9 = +[IDSRegistrationController sharedInstance];
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  [v9 reportMessage:messageCopy toURI:iCopy registration:primaryRegistration];
}

- (void)reportClientEvent:(id)event completionBlock:(id)block
{
  blockCopy = block;
  eventCopy = event;
  v9 = +[IDSRegistrationController sharedInstance];
  primaryRegistration = [(IDSDAccount *)self primaryRegistration];
  [v9 reportClientEvent:eventCopy registration:primaryRegistration completion:blockCopy];
}

- (id)serviceType
{
  primaryServiceName = [(IDSDAccount *)self primaryServiceName];
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

- (void)addRegistrationListener:(id)listener
{
  listenerCopy = listener;
  registrationListeners = self->_registrationListeners;
  v8 = listenerCopy;
  if (!registrationListeners)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_registrationListeners;
    self->_registrationListeners = v6;

    listenerCopy = v8;
    registrationListeners = self->_registrationListeners;
  }

  [(NSHashTable *)registrationListeners addObject:listenerCopy];
}

- (void)removeRegistrationListener:(id)listener
{
  [(NSHashTable *)self->_registrationListeners removeObject:listener];
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
          registeredDevices = [(IDSDAccount *)self registeredDevices];
          [v8 account:self didUpdateRegisteredDevices:registeredDevices];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)sendSenderKeyMessageToDestinations:(id)destinations fromURI:(id)i guid:(id)guid messageData:(id)data sendReasonPathID:(int64_t)d completionBlock:(id)block
{
  destinationsCopy = destinations;
  iCopy = i;
  guidCopy = guid;
  dataCopy = data;
  blockCopy = block;
  v18 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v41 = destinationsCopy;
    v42 = 2112;
    v43 = iCopy;
    v44 = 2112;
    v45 = guidCopy;
    v46 = 2048;
    v47 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to send 133 to destinations: %@ fromURI: %@ GUID: %@ messageData size: %ld", buf, 0x2Au);
  }

  v19 = destinationsCopy;
  v33 = destinationsCopy;
  v20 = objc_alloc_init(IDSSendParameters);
  v35 = [[IDSSendReason alloc] initWithReason:9 subreason:3 pathID:d];
  v21 = [IDSSendReasonContainer createWithReason:v35];
  [v20 setSendReasonContainer:v21];

  v22 = +[NSDictionary dictionary];
  prefixedURI = [iCopy prefixedURI];
  [prefixedURI _stripFZIDPrefix];
  v24 = v34 = iCopy;
  v25 = [IDSDestination destinationWithDestinations:v19];
  IDSGetUUIDData();
  v27 = v26 = dataCopy;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10050201C;
  v37[3] = &unk_100BD8D78;
  v38 = guidCopy;
  v39 = blockCopy;
  v28 = blockCopy;
  v29 = guidCopy;
  LOWORD(v32) = 0;
  LOWORD(v31) = 256;
  LOWORD(v30) = 256;
  [IDSDAccount sendMessage:"sendMessage:params:bulkedPayload:fromID:toDestinations:useDictAsTopLevel:dataToEncrypt:encryptPayload:wantsResponse:expirationDate:command:wantsDeliveryStatus:wantsCertifiedDelivery:deliveryStatusContext:messageUUID:priority:localDelivery:disallowRefresh:willSendBlock:completionBlock:" params:v22 bulkedPayload:v20 fromID:0 toDestinations:v24 useDictAsTopLevel:v25 dataToEncrypt:1 encryptPayload:v26 wantsResponse:v30 expirationDate:0 command:&off_100C3C928 wantsDeliveryStatus:v31 wantsCertifiedDelivery:0 deliveryStatusContext:v27 messageUUID:300 priority:v32 localDelivery:0 disallowRefresh:v37 willSendBlock:? completionBlock:?];
}

+ (void)_splitDestinations:(id)destinations intoLocalDestinations:(id *)localDestinations remoteDestinations:(id *)remoteDestinations threadContext:(id)context sendParameters:(id)parameters
{
  *&v101 = remoteDestinations;
  *(&v101 + 1) = localDestinations;
  destinationsCopy = destinations;
  contextCopy = context;
  parametersCopy = parameters;
  v107 = contextCopy;
  dependentRegistrations = [contextCopy dependentRegistrations];
  defaultPairedDependentRegistrations = [contextCopy defaultPairedDependentRegistrations];
  appleIDPrimaryDependentRegistrations = [contextCopy appleIDPrimaryDependentRegistrations];
  serviceIdentifier = [contextCopy serviceIdentifier];
  accountDescription = [contextCopy accountDescription];
  serviceAllowLocalDelivery = [contextCopy serviceAllowLocalDelivery];
  serviceAllowWiProxDelivery = [contextCopy serviceAllowWiProxDelivery];
  if ([contextCopy serviceAllowLiveMessageDelivery])
  {
    serviceIdentifier2 = [contextCopy serviceIdentifier];
    if (sub_1005DB1BC(serviceIdentifier2))
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
      selfCopy = destinationsCopy;
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
      selfCopy = self;
      v146 = 2112;
      v147 = destinationsCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ splitting destinations %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      selfCopy2 = self;
      v97 = destinationsCopy;
      _IDSLogV();
    }

    v111 = objc_alloc_init(NSMutableDictionary);
    v112 = objc_alloc_init(NSMutableArray);
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = destinationsCopy;
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
            selfCopy = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - looking up device for dest %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = v12;
            _IDSLogV();
          }

          v14 = [v12 isEqualToString:{v123, selfCopy2, v97, v99, v100}];
          if (v14)
          {
            v15 = defaultPairedDependentRegistrations;
            if (!defaultPairedDependentRegistrations)
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
              selfCopy = v22;
              v146 = 2112;
              v147 = defaultPairedDependentRegistrations;
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
            _stripFZIDPrefix = [v22 _stripFZIDPrefix];
            v25 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy = _stripFZIDPrefix;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(Class) Destination device uniqueID: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v95 = _stripFZIDPrefix;
              _IDSLogV();
            }

            v26 = defaultPairedDependentRegistrations;
            if (defaultPairedDependentRegistrations)
            {
              v27 = v26;
              v28 = [v26 _stringForKey:v127];
              v29 = [v27 objectForKey:v126];
              v30 = [v29 _stringForKey:v125];

              v31 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                selfCopy = v28;
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

              if (([_stripFZIDPrefix isEqualToIgnoringCase:{v28, v95}] & 1) == 0 && !objc_msgSend(_stripFZIDPrefix, "isEqualToIgnoringCase:", v30) || objc_msgSend(parametersCopy, "sessionForceInternetInvitation"))
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
                selfCopy = v49;
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
              v32 = dependentRegistrations;
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
                    selfCopy = v37;
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

                  if (([v37 isEqualToIgnoringCase:{_stripFZIDPrefix, v96}] & 1) != 0 || objc_msgSend(v39, "isEqualToIgnoringCase:", _stripFZIDPrefix))
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
                  selfCopy = v27;
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
                selfCopy = _stripFZIDPrefix;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "(Class) Didn't find matching device for uniqueID %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                v95 = _stripFZIDPrefix;
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
            selfCopy = v52;
            v146 = 2112;
            v147 = v51;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - token %@ and uri %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = v52;
            v97 = v51;
            _IDSLogV();
          }

          if (!v52 || !v51)
          {
            v56 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy = v22;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Malformed destination %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              selfCopy2 = v22;
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
              serviceIdentifier3 = [v107 serviceIdentifier];
              v59 = IDSLoggableDescriptionForHandleOnService();
              serviceIdentifier4 = [v107 serviceIdentifier];
              v61 = IDSLoggableDescriptionForTokenOnService();
              *buf = 138412546;
              selfCopy = v59;
              v146 = 2112;
              v147 = v61;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Finding device matching URI %@ and token %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              serviceIdentifier5 = [v107 serviceIdentifier];
              v63 = IDSLoggableDescriptionForHandleOnService();
              serviceIdentifier6 = [v107 serviceIdentifier];
              IDSLoggableDescriptionForTokenOnService();
              v97 = selfCopy2 = v63;
              _IDSLogV();
            }

            v132 = 0;
            v133 = 0;
            [self dependentRegistration:dependentRegistrations findDeviceUniqueID:&v133 btID:&v132 forURI:v51 token:v52 supportsLiveDelivery:{&v134, selfCopy2}];
            v55 = v133;
            v54 = v132;
            v65 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy = v55;
              v146 = 2112;
              v147 = v54;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Found deviceID %@ and btID %@ after first try", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              selfCopy2 = v55;
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
              selfCopy = accountDescription;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Did not find deviceID using account %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              selfCopy2 = accountDescription;
              _IDSLogV();
            }

            v130 = v54;
            v131 = 0;
            [self dependentRegistration:appleIDPrimaryDependentRegistrations findDeviceUniqueID:&v131 btID:&v130 forURI:v51 token:v52 supportsLiveDelivery:{&v134, selfCopy2}];
            v55 = v131;
            v66 = v130;

            v68 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy = v55;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Found deviceID %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              selfCopy2 = v55;
              _IDSLogV();
            }
          }

          v69 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            selfCopy = v55;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - found device id %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = v55;
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

          if (v71 == 1 && ([parametersCopy liveMessageDelivery] & v109) == 1 && v134 == 1)
          {
            v72 = +[IDSUTunDeliveryController sharedInstance];
            v73 = [v72 copyPeerWithID:v55];

            if (([v73 isCloudConnected] & 1) == 0)
            {
              [parametersCopy setLiveMessageDelivery:0];
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
                selfCopy = v55;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Using push instead of Live Delivery while GL warms for device id %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                selfCopy2 = v55;
                _IDSLogV();
              }
            }
          }

          if (qword_100CBF2C0 != -1)
          {
            sub_10092C54C();
          }

          if (![parametersCopy liveMessageDelivery])
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
                selfCopy = v55;
                v146 = 2112;
                v147 = v51;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Device does not support live delivery, falling back to push {deviceID: %@, strippedURI: %@}", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                selfCopy2 = v55;
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
                selfCopy = v22;
                _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - no local device for URI %@, adding to remote", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                selfCopy2 = v22;
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
            if (!serviceAllowLocalDelivery || (byte_100CBF2B8 & 1) != 0 || !v55 || !v66)
            {
              goto LABEL_165;
            }

            if ((([v55 isEqualToString:v113] | serviceAllowWiProxDelivery) & 1) == 0)
            {
              v80 = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                selfCopy = v22;
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
                selfCopy2 = v22;
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
      selfCopy = v86;
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

+ (void)_sendLocallyWithSendParameters:(id)parameters service:(id)service uriToLocalDestination:(id)destination data:(id)data protobuf:(id)protobuf threadContext:(id)context progressBlock:(id)block completionBlock:(id)self0
{
  parametersCopy = parameters;
  serviceCopy = service;
  destinationCopy = destination;
  dataCopy = data;
  protobufCopy = protobuf;
  contextCopy = context;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v124 = contextCopy;
  subService = [contextCopy subService];
  if ([subService length])
  {
    [v124 subService];
  }

  else
  {
    [v124 servicePushTopic];
  }
  v18 = ;

  resourcePath = [parametersCopy resourcePath];

  dataToEncrypt = [parametersCopy dataToEncrypt];
  v21 = [dataToEncrypt length];
  v22 = [dataCopy length];
  data = [protobufCopy data];
  v24 = [data length];

  if (resourcePath)
  {
    [parametersCopy setCommand:&off_100C3CD48];
    v25 = 0;
  }

  else
  {
    v25 = &v21[v22 + v24];
  }

  v121 = v18;
  metricReportIdentifier = [parametersCopy metricReportIdentifier];

  v118 = v121;
  if (metricReportIdentifier)
  {
    v27 = [NSString alloc];
    metricReportIdentifier2 = [parametersCopy metricReportIdentifier];
    v118 = [v27 initWithFormat:@"%@-%@", v121, metricReportIdentifier2];
  }

  v29 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    messageUUID = [parametersCopy messageUUID];
    v31 = JWUUIDPushObjectToString();
    *buf = 138412546;
    *&buf[4] = v31;
    *&buf[12] = 2112;
    *&buf[14] = v121;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "OUTGOING-LOCAL_SEND:%@ SERVICE:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    messageUUID2 = [parametersCopy messageUUID];
    v80 = JWUUIDPushObjectToString();
    v83 = v121;
    _IDSLogV();
  }

  v33 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    messageUUID3 = [parametersCopy messageUUID];
    *&buf[12] = 2048;
    v35 = @"YES";
    *buf = 138413314;
    *&buf[4] = messageUUID3;
    if (!resourcePath)
    {
      v35 = @"NO";
    }

    *&buf[14] = v25;
    *&buf[22] = 2112;
    v155 = v35;
    *v156 = 2112;
    *&v156[2] = v121;
    *&v156[10] = 2112;
    *&v156[12] = destinationCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Sending message ID (%@) with data length %lu (resource: %@)  [Topic: %@  Local Device IDs: %@]", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v36 = resourcePath == 0;
    messageUUID4 = [parametersCopy messageUUID];
    v38 = messageUUID4;
    v39 = @"YES";
    if (v36)
    {
      v39 = @"NO";
    }

    v87 = v121;
    v90 = destinationCopy;
    v83 = v25;
    v85 = v39;
    v80 = messageUUID4;
    _IDSLogV();
  }

  if (![v124 accountType] || (_IDSCopyMyPhoneNumbers(), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(parametersCopy, "fromID"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "_stripFZIDPrefix"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v40, "containsObject:", v42), v42, v41, v40, v43))
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

  allValues = [destinationCopy allValues];
  v47 = [allValues __imArrayByApplyingBlock:&stru_100BE1620];
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
  serviceAdHocType = [v124 serviceAdHocType];
  v49 = serviceAdHocType == 5 || serviceAdHocType == 2;
  if (serviceAdHocType == 2 || serviceAdHocType == 5 || ([parametersCopy localDelivery] & 1) != 0 || objc_msgSend(parametersCopy, "requireLocalWiFi"))
  {
    v50 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      if ([parametersCopy localDelivery])
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

      requireLocalWiFi = [parametersCopy requireLocalWiFi];
      messageUUID5 = [parametersCopy messageUUID];
      v55 = messageUUID5;
      if (requireLocalWiFi)
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
      v153 = messageUUID5;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback forcedLocal %@  localType %@ requireLocalWiFi %@ message %@", v146, 0x2Au);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || (![parametersCopy localDelivery] ? (v57 = @"NO") : (v57 = @"YES"), !v49 ? (v58 = @"NO") : (v58 = @"YES"), (v59 = objc_msgSend(parametersCopy, "requireLocalWiFi"), objc_msgSend(parametersCopy, "messageUUID"), v60 = objc_claimAutoreleasedReturnValue(), v61 = v60, !v59) ? (v62 = @"NO") : (v62 = @"YES"), v86 = v62, v88 = v60, v81 = v57, v84 = v58, _IDSLogTransport(), v61, !_IDSShouldLog()))
    {
      v68 = 0;
      goto LABEL_67;
    }

    if ([parametersCopy localDelivery])
    {
      v63 = @"YES";
    }

    else
    {
      v63 = @"NO";
    }

    requireLocalWiFi2 = [parametersCopy requireLocalWiFi];
    messageUUID6 = [parametersCopy messageUUID];
    v66 = messageUUID6;
    if (requireLocalWiFi2)
    {
      v67 = @"YES";
    }

    else
    {
      v67 = @"NO";
    }

    v86 = v67;
    v88 = messageUUID6;
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
    v134 = parametersCopy;
    v141 = completionBlockCopy;
    v142 = buf;
    v135 = v104;
    v136 = v105;
    v143 = v145;
    v137 = v118;
    v144 = v25;
    v138 = serviceCopy;
    v139 = dataCopy;
    v140 = protobufCopy;
    v68 = objc_retainBlock(v133);

    v66 = v134;
  }

LABEL_67:
  dataToEncrypt2 = [parametersCopy dataToEncrypt];

  if (dataToEncrypt2)
  {
    if (dataCopy)
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

    dataToEncrypt3 = [parametersCopy dataToEncrypt];

    dataCopy = dataToEncrypt3;
  }

  v115 = +[IDSUTunDeliveryController sharedInstance];
  resourcePath2 = [parametersCopy resourcePath];
  resourceMetadata = [parametersCopy resourceMetadata];
  priority = [parametersCopy priority];
  dataProtectionClass = [v124 dataProtectionClass];
  nonWaking = [parametersCopy nonWaking];
  nonCloudWaking = [parametersCopy nonCloudWaking];
  requireBluetooth = [parametersCopy requireBluetooth];
  requireLocalWiFi3 = [parametersCopy requireLocalWiFi];
  queueOneIdentifier = [parametersCopy queueOneIdentifier];
  expirationDate = [parametersCopy expirationDate];
  enforceRemoteTimeouts = [parametersCopy enforceRemoteTimeouts];
  expectsPeerResponse = [parametersCopy expectsPeerResponse];
  wantsAppAck = [parametersCopy wantsAppAck];
  compressPayload = [parametersCopy compressPayload];
  compressed = [parametersCopy compressed];
  peerResponseIdentifier = [parametersCopy peerResponseIdentifier];
  identifier = [parametersCopy identifier];
  command = [parametersCopy command];
  fromID = [parametersCopy fromID];
  localDestinationDeviceUUID = [parametersCopy localDestinationDeviceUUID];
  bypassDuet = [parametersCopy bypassDuet];
  duetIdentifiersOverride = [parametersCopy duetIdentifiersOverride];
  messageType = [parametersCopy messageType];
  longLongValue = [messageType longLongValue];
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = sub_1005DD2A4;
  v125[3] = &unk_100BE1698;
  v92 = parametersCopy;
  v126 = v92;
  v79 = v121;
  v127 = v79;
  v106 = v105;
  v128 = v106;
  v122 = v104;
  v129 = v122;
  v131 = buf;
  v132 = v145;
  v108 = completionBlockCopy;
  v130 = v108;
  LOBYTE(v91) = bypassDuet;
  BYTE4(v89) = compressed;
  BYTE3(v89) = compressPayload;
  BYTE2(v89) = wantsAppAck;
  BYTE1(v89) = expectsPeerResponse;
  LOBYTE(v89) = enforceRemoteTimeouts;
  HIBYTE(v82) = requireLocalWiFi3;
  BYTE6(v82) = requireBluetooth;
  BYTE5(v82) = nonCloudWaking;
  BYTE4(v82) = nonWaking;
  LODWORD(v82) = dataProtectionClass;
  [v115 sendData:dataCopy service:serviceCopy protobuf:protobufCopy resourcePath:resourcePath2 resourceMetadata:resourceMetadata priority:priority dataProtectionClass:v82 nonWaking:queueOneIdentifier nonCloudWaking:expirationDate requireBluetooth:v89 requireLocalWiFi:peerResponseIdentifier queueOneIdentifier:identifier expirationDate:v79 enforceRemoteTimeouts:v118 expectsPeerResponse:command wantsAppAck:fromID compressPayload:destinationCopy compressed:localDestinationDeviceUUID peerResponseIdentifier:v91 messageID:duetIdentifiersOverride topic:longLongValue awdTopic:v68 command:blockCopy fromID:v125 uriToDeviceID:? localDeviceDestinationDeviceUUID:? bypassDuet:? duetIdentifiersOverride:? messageType:? fallbackBlock:? progressBlock:? completionBlock:?];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v145, 8);
}

+ (void)sendMessageWithSendParameters:(id)parameters service:(id)service threadContext:(id)context willSendBlock:(id)block progressBlock:(id)progressBlock completionBlock:(id)completionBlock
{
  parametersCopy = parameters;
  serviceCopy = service;
  contextCopy = context;
  blockCopy = block;
  progressBlockCopy = progressBlock;
  completionBlockCopy = completionBlock;
  accountType = [contextCopy accountType];
  v216 = contextCopy;
  serviceIdentifier = [contextCopy serviceIdentifier];
  accountDisplayName = [contextCopy accountDisplayName];
  dependentRegistrations = [contextCopy dependentRegistrations];
  appleIDPrimaryDependentRegistrations = [contextCopy appleIDPrimaryDependentRegistrations];
  primaryRegistrationDSHandle = [contextCopy primaryRegistrationDSHandle];
  primaryRegistrationURIs = [contextCopy primaryRegistrationURIs];
  [contextCopy serviceIsDSBased];
  aliasStrings = [contextCopy aliasStrings];
  servicePushTopic = [contextCopy servicePushTopic];
  shouldIncludeDefaultDevice = [contextCopy shouldIncludeDefaultDevice];
  serviceWantsReflectedSend = [contextCopy serviceWantsReflectedSend];
  serviceAllowProxyDelivery = [contextCopy serviceAllowProxyDelivery];
  serviceUseiMessageCallerID = [contextCopy serviceUseiMessageCallerID];
  command = [parametersCopy command];
  if (([command integerValue] != 130) & serviceWantsReflectedSend) != 1 || (objc_msgSend(parametersCopy, "isProxiedOutgoingMessage"))
  {

LABEL_4:
    v195 = 0;
    goto LABEL_5;
  }

  if (!shouldIncludeDefaultDevice)
  {
    goto LABEL_4;
  }

  destinations = [parametersCopy destinations];
  destinationURIs = [destinations destinationURIs];
  v32 = [destinationURIs mutableCopy];

  v33 = IDSDefaultPairedDevice;
  [v32 addObject:v33];
  v34 = [IDSDestination destinationWithStrings:v32];
  [parametersCopy setDestinations:v34];

  v35 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    destinations2 = [parametersCopy destinations];
    *buf = 138412290;
    *&buf[4] = destinations2;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Adding local device as a destination for this message, Destinations For This Message Are Now %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    destinations3 = [parametersCopy destinations];
    _IDSLogV();
  }

  v195 = 1;
LABEL_5:
  if (accountType == 2)
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

    [parametersCopy setLocalDelivery:{1, destinations3}];
  }

  destinations4 = [parametersCopy destinations];
  destinationURIs2 = [destinations4 destinationURIs];
  allObjects = [destinationURIs2 allObjects];
  v258[0] = _NSConcreteStackBlock;
  v258[1] = 3221225472;
  v258[2] = sub_1005DFAC4;
  v258[3] = &unk_100BE16C0;
  selfCopy = self;
  v196 = dependentRegistrations;
  v259 = v196;
  v197 = appleIDPrimaryDependentRegistrations;
  v260 = v197;
  v205 = primaryRegistrationDSHandle;
  v261 = v205;
  v198 = primaryRegistrationURIs;
  v262 = v198;
  v211 = [allObjects __imArrayByApplyingBlock:v258];

  if (serviceUseiMessageCallerID)
  {
    originalfromID = [parametersCopy originalfromID];
    v28 = [originalfromID length] == 0;

    if (v28)
    {
      v37 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = accountDisplayName;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Service would like to use iMessage callerID for messages, Attempting to use %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v156 = accountDisplayName;
        _IDSLogV();
      }

      _stripFZIDPrefix = [accountDisplayName _stripFZIDPrefix];
      _stripFZIDPrefix2 = [v205 _stripFZIDPrefix];
      pseudonyms = [v216 pseudonyms];
      v41 = _IDSCopyCallerIDWithPseudonyms();
      [parametersCopy setFromID:v41];
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

  fromID = [parametersCopy fromID];
  v43 = fromID == 0;

  if (v43)
  {
    _stripFZIDPrefix3 = [v205 _stripFZIDPrefix];
    _IDSPrefersPhoneNumbersForServiceIdentifier();
    v45 = _IDSCopyCallerID();
    [parametersCopy setFromID:v45];
  }

  v46 = +[IDSPeerIDManager sharedInstance];
  firstObject = [v211 firstObject];
  v48 = [IDSURI URIWithPrefixedURI:firstObject withServiceLoggingHint:serviceIdentifier];
  fromID2 = [parametersCopy fromID];
  _bestGuessURI = [fromID2 _bestGuessURI];
  v51 = [IDSURI URIWithPrefixedURI:_bestGuessURI withServiceLoggingHint:serviceIdentifier];
  v210 = [v46 senderCorrelationIdentifierForURI:v48 fromURI:v51 service:serviceIdentifier];

  if (v210)
  {
    [parametersCopy setDestinationCorrelationIdentifier:v210];
  }

  data = [parametersCopy data];
  protobuf = [parametersCopy protobuf];

  if (protobuf)
  {
    v54 = [IDSProtobuf alloc];
    protobuf2 = [parametersCopy protobuf];
    v213 = [v54 initWithDictionary:protobuf2];
  }

  else
  {
    v213 = 0;
  }

  message = [parametersCopy message];

  if (message)
  {
    message2 = [parametersCopy message];
    v58 = [message2 objectForKey:IDSMessageResourceTransferURLKey];
    if (v58)
    {

      v59 = [message2 objectForKeyedSubscript:IDSMessageResourceTransferMetadataKey];
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

      [parametersCopy setResourcePath:{v58, v156, v158}];
      [parametersCopy setResourceMetadata:v59];
      data = 0;
    }

    else
    {
      v59 = JWEncodeDictionary();

      data = v59;
    }
  }

  if (!data)
  {
    v65 = v213;
    if (!v213)
    {
      _FTCopyOptionallyGzippedData = 0;
      goto LABEL_84;
    }

    data2 = [v213 data];
    v67 = [data2 length];

    if ([parametersCopy compressPayload])
    {
      data3 = [v213 data];
      _FTCopyOptionallyGzippedData = [data3 _FTCopyOptionallyGzippedData];

      v69 = [_FTCopyOptionallyGzippedData length];
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

        data4 = [v213 data];
        [v213 setUncompressedData:data4];

        [v213 setData:_FTCopyOptionallyGzippedData];
        data = 0;
        v64 = 1;
        goto LABEL_83;
      }
    }

    else
    {
      v69 = 0;
      _FTCopyOptionallyGzippedData = 0;
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
    data = 0;
    goto LABEL_83;
  }

  v61 = [data length];
  if (![parametersCopy compressPayload])
  {
    v62 = 0;
    _FTCopyOptionallyGzippedData = 0;
    goto LABEL_69;
  }

  _FTCopyOptionallyGzippedData = [data _FTCopyOptionallyGzippedData];
  v62 = [_FTCopyOptionallyGzippedData length];
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

  _FTCopyOptionallyGzippedData = _FTCopyOptionallyGzippedData;

  v64 = 1;
  data = _FTCopyOptionallyGzippedData;
LABEL_83:
  [parametersCopy setCompressed:{v64, v156, v158}];
  v65 = data;
LABEL_84:
  v200 = v65;
  v74 = [v65 length];
  data5 = [v213 data];
  v76 = [data5 length];

  message3 = [parametersCopy message];

  v212 = v74 + v76;
  if (message3)
  {
    v78 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      bulkedPayload = [parametersCopy bulkedPayload];
      fromID3 = [parametersCopy fromID];
      destinations5 = [parametersCopy destinations];
      v79 = @"YES";
      if ([parametersCopy useDictAsTopLevel])
      {
        v80 = @"YES";
      }

      else
      {
        v80 = @"NO";
      }

      v181 = v80;
      if ([parametersCopy encryptPayload])
      {
        v81 = @"YES";
      }

      else
      {
        v81 = @"NO";
      }

      v177 = v81;
      if ([parametersCopy wantsResponse])
      {
        v82 = @"YES";
      }

      else
      {
        v82 = @"NO";
      }

      v175 = v82;
      [parametersCopy timeout];
      v84 = v83;
      command2 = [parametersCopy command];
      if ([parametersCopy wantsDeliveryStatus])
      {
        v86 = @"YES";
      }

      else
      {
        v86 = @"NO";
      }

      if ([parametersCopy wantsCertifiedDelivery])
      {
        v87 = @"YES";
      }

      else
      {
        v87 = @"NO";
      }

      deliveryStatusContext = [parametersCopy deliveryStatusContext];
      messageUUID = [parametersCopy messageUUID];
      if ([parametersCopy priority] == 300)
      {
        v90 = @"URGENT";
      }

      else if ([parametersCopy priority] == 200)
      {
        v90 = @"Default";
      }

      else
      {
        v90 = @"Sync";
      }

      if (![parametersCopy localDelivery])
      {
        v79 = @"NO";
      }

      v104 = objc_retainBlock(completionBlockCopy);
      *buf = 138415874;
      *&buf[4] = bulkedPayload;
      *&buf[12] = 2112;
      *&buf[14] = fromID3;
      *&buf[22] = 2112;
      v265 = destinations5;
      *v266 = 2112;
      *&v266[2] = v181;
      *&v266[10] = 2112;
      *&v266[12] = v177;
      v267 = 2112;
      v268 = v175;
      v269 = 2048;
      v270 = v84;
      v271 = 2112;
      v272 = command2;
      v273 = 2112;
      v274 = v86;
      v275 = 2112;
      v276 = v87;
      v277 = 2112;
      v278 = deliveryStatusContext;
      v279 = 2112;
      v280 = messageUUID;
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
      bulkedPayload2 = [parametersCopy bulkedPayload];
      fromID4 = [parametersCopy fromID];
      destinations6 = [parametersCopy destinations];
      v105 = @"YES";
      if ([parametersCopy useDictAsTopLevel])
      {
        v106 = @"YES";
      }

      else
      {
        v106 = @"NO";
      }

      v183 = v106;
      if ([parametersCopy encryptPayload])
      {
        v107 = @"YES";
      }

      else
      {
        v107 = @"NO";
      }

      v179 = v107;
      if ([parametersCopy wantsResponse])
      {
        v108 = @"YES";
      }

      else
      {
        v108 = @"NO";
      }

      [parametersCopy timeout];
      v110 = v109;
      command3 = [parametersCopy command];
      if ([parametersCopy wantsDeliveryStatus])
      {
        v112 = @"YES";
      }

      else
      {
        v112 = @"NO";
      }

      if ([parametersCopy wantsCertifiedDelivery])
      {
        v113 = @"YES";
      }

      else
      {
        v113 = @"NO";
      }

      deliveryStatusContext2 = [parametersCopy deliveryStatusContext];
      messageUUID2 = [parametersCopy messageUUID];
      if ([parametersCopy priority] == 300)
      {
        v116 = @"URGENT";
      }

      else if ([parametersCopy priority] == 200)
      {
        v116 = @"Default";
      }

      else
      {
        v116 = @"Sync";
      }

      if (![parametersCopy localDelivery])
      {
        v105 = @"NO";
      }

      v127 = objc_retainBlock(completionBlockCopy);
      v172 = v105;
      v173 = v127;
      v170 = messageUUID2;
      v171 = v116;
      v168 = v113;
      v169 = deliveryStatusContext2;
      v166 = command3;
      v167 = v112;
      v165 = v110;
      v163 = v179;
      v164 = v108;
      v160 = destinations6;
      v162 = v183;
      v156 = bulkedPayload2;
      v158 = fromID4;
      _IDSLogV();
LABEL_183:
    }
  }

  else
  {
    v91 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      bulkedPayload3 = [parametersCopy bulkedPayload];
      fromID5 = [parametersCopy fromID];
      destinations7 = [parametersCopy destinations];
      v92 = @"YES";
      if ([parametersCopy useDictAsTopLevel])
      {
        v93 = @"YES";
      }

      else
      {
        v93 = @"NO";
      }

      v182 = v93;
      if ([parametersCopy encryptPayload])
      {
        v94 = @"YES";
      }

      else
      {
        v94 = @"NO";
      }

      v178 = v94;
      if ([parametersCopy wantsResponse])
      {
        v95 = @"YES";
      }

      else
      {
        v95 = @"NO";
      }

      v176 = v95;
      [parametersCopy timeout];
      v97 = v96;
      command4 = [parametersCopy command];
      if ([parametersCopy wantsDeliveryStatus])
      {
        v99 = @"YES";
      }

      else
      {
        v99 = @"NO";
      }

      if ([parametersCopy wantsCertifiedDelivery])
      {
        v100 = @"YES";
      }

      else
      {
        v100 = @"NO";
      }

      deliveryStatusContext3 = [parametersCopy deliveryStatusContext];
      messageUUID3 = [parametersCopy messageUUID];
      if ([parametersCopy priority] == 300)
      {
        v103 = @"URGENT";
      }

      else if ([parametersCopy priority] == 200)
      {
        v103 = @"Default";
      }

      else
      {
        v103 = @"Sync";
      }

      if (![parametersCopy localDelivery])
      {
        v92 = @"NO";
      }

      v117 = objc_retainBlock(completionBlockCopy);
      *buf = 134221826;
      *&buf[4] = v212;
      *&buf[12] = 2112;
      *&buf[14] = bulkedPayload3;
      *&buf[22] = 2112;
      v265 = fromID5;
      *v266 = 2112;
      *&v266[2] = destinations7;
      *&v266[10] = 2112;
      *&v266[12] = v182;
      v267 = 2112;
      v268 = v178;
      v269 = 2112;
      v270 = v176;
      v271 = 2048;
      v272 = v97;
      v273 = 2112;
      v274 = command4;
      v275 = 2112;
      v276 = v99;
      v277 = 2112;
      v278 = v100;
      v279 = 2112;
      v280 = deliveryStatusContext3;
      v281 = 2112;
      v282 = messageUUID3;
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
      bulkedPayload2 = [parametersCopy bulkedPayload];
      fromID4 = [parametersCopy fromID];
      destinations6 = [parametersCopy destinations];
      v118 = @"YES";
      if ([parametersCopy useDictAsTopLevel])
      {
        v119 = @"YES";
      }

      else
      {
        v119 = @"NO";
      }

      v184 = v119;
      if ([parametersCopy encryptPayload])
      {
        v120 = @"YES";
      }

      else
      {
        v120 = @"NO";
      }

      v180 = v120;
      if ([parametersCopy wantsResponse])
      {
        v121 = @"YES";
      }

      else
      {
        v121 = @"NO";
      }

      [parametersCopy timeout];
      v123 = v122;
      command3 = [parametersCopy command];
      if ([parametersCopy wantsDeliveryStatus])
      {
        v124 = @"YES";
      }

      else
      {
        v124 = @"NO";
      }

      if ([parametersCopy wantsCertifiedDelivery])
      {
        v125 = @"YES";
      }

      else
      {
        v125 = @"NO";
      }

      deliveryStatusContext2 = [parametersCopy deliveryStatusContext];
      messageUUID2 = [parametersCopy messageUUID];
      if ([parametersCopy priority] == 300)
      {
        v126 = @"URGENT";
      }

      else if ([parametersCopy priority] == 200)
      {
        v126 = @"Default";
      }

      else
      {
        v126 = @"Sync";
      }

      if (![parametersCopy localDelivery])
      {
        v118 = @"NO";
      }

      v127 = objc_retainBlock(completionBlockCopy);
      v173 = v118;
      v174 = v127;
      v171 = messageUUID2;
      v172 = v126;
      v169 = v125;
      v170 = deliveryStatusContext2;
      v167 = command3;
      v168 = v124;
      v166 = v123;
      v164 = v180;
      v165 = v121;
      v162 = destinations6;
      v163 = v184;
      v158 = bulkedPayload2;
      v160 = fromID4;
      v156 = v212;
      _IDSLogV();
      goto LABEL_183;
    }
  }

  bypassSizeCheck = [parametersCopy bypassSizeCheck];
  if (v212 <= 0x500000)
  {
    v129 = 1;
  }

  else
  {
    v129 = bypassSizeCheck;
  }

  if ((v129 & 1) == 0)
  {
    v139 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *&buf[4] = v212;
      *&buf[12] = 2112;
      *&buf[14] = servicePushTopic;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    if (completionBlockCopy)
    {
      goto LABEL_205;
    }

    goto LABEL_251;
  }

  if (([parametersCopy bypassSizeCheck] & 1) != 0 || objc_msgSend(parametersCopy, "priority") != 300 || v212 <= 0x100000)
  {
    v257 = 0;
    v256 = 0;
    [self _splitDestinations:v211 intoLocalDestinations:&v257 remoteDestinations:&v256 threadContext:v216 sendParameters:parametersCopy];
    v130 = v257;
    v131 = v256;
    allKeys = [v130 allKeys];
    v254[0] = _NSConcreteStackBlock;
    v254[1] = 3221225472;
    v254[2] = sub_1005DFE50;
    v254[3] = &unk_100BD7530;
    v133 = serviceCopy;
    v255 = v133;
    v134 = [allKeys __imArrayByApplyingBlock:v254];

    resourcePath = [parametersCopy resourcePath];
    if (resourcePath)
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

        [parametersCopy setCommand:&off_100C3CD48];
      }
    }

    if ([parametersCopy localDelivery] && !((objc_msgSend(v131, "count") == 0) | serviceAllowProxyDelivery & 1))
    {
      v142 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = self;
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
        selfCopy2 = self;
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
        v143 = blockCopy;
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

          v143 = blockCopy;
          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          *(v250 + 24) = 1;
        }

        if ([v130 count])
        {
          v145 = [parametersCopy copy];
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
          v239 = parametersCopy;
          v240 = completionBlockCopy;
          v244 = v247;
          [IDSDAccount _sendLocallyWithSendParameters:v146 service:v133 uriToLocalDestination:v130 data:v200 protobuf:v213 threadContext:v216 progressBlock:progressBlockCopy completionBlock:v238];

          v143 = blockCopy;
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
          v232 = accountType;
          v233 = serviceAllowProxyDelivery;
          v218 = parametersCopy;
          selfCopy3 = self;
          v219 = v133;
          v220 = v216;
          v224 = progressBlockCopy;
          v225 = completionBlockCopy;
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
          if (blockCopy && v150)
          {
            (*(blockCopy + 2))(blockCopy, v134, 0, 0);
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
        *&buf[4] = self;
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
    if (completionBlockCopy)
    {
      v154 = [[IDSDeliveryContext alloc] initWithResponseCode:1 error:v153 lastCall:1];
      (*(completionBlockCopy + 2))(completionBlockCopy, v154);
    }

    goto LABEL_249;
  }

  v141 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    *&buf[4] = v212;
    *&buf[12] = 2112;
    *&buf[14] = servicePushTopic;
    _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send as urgent", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  if (completionBlockCopy)
  {
LABEL_205:
    v140 = [NSError alloc];
    v130 = [v140 initWithDomain:IDSSendErrorDomain code:8 userInfo:0];
    v131 = [[IDSDeliveryContext alloc] initWithResponseCode:8 error:v130 lastCall:1];
    (*(completionBlockCopy + 2))(completionBlockCopy, v131);
LABEL_250:
  }

LABEL_251:
}

- (int64_t)maxRemoteMessagingPayloadSize
{
  v3 = +[IDSDeliveryController sharedInstance];
  service = [(IDSDAccount *)self service];
  v5 = [v3 effectiveMaxPayloadSizeIfCanUseLargePayload:{objc_msgSend(service, "canUseLargePayload")}];

  return v5;
}

- (void)_sendMessageWithSendParametersOnMainThread:(id)thread filteredDestinations:(id)destinations data:(id)data compressedData:(id)compressedData protobufToSend:(id)send willSendBlock:(id)block completionBlock:(id)completionBlock
{
  threadCopy = thread;
  destinationsCopy = destinations;
  dataCopy = data;
  compressedDataCopy = compressedData;
  sendCopy = send;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v55 = compressedDataCopy;
  if ([(IDSDAccount *)self shouldProcessOutgoingMessage:threadCopy filteredDestinations:destinationsCopy data:dataCopy compressedData:compressedDataCopy protobufToSend:sendCopy])
  {
    command = [threadCopy command];
    if ([command integerValue] != 130)
    {
      command2 = [threadCopy command];
      if ([command2 integerValue] != 120)
      {
        service = [(IDSDAccount *)self service];
        if ([service wantsLocalReflectedSend] && !objc_msgSend(threadCopy, "isProxiedOutgoingMessage"))
        {
          v23 = [(IDSDAccount *)self shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:threadCopy];

          if (v23)
          {
            v41 = [destinationsCopy mutableCopy];
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
            destinationsCopy = v43;
          }

LABEL_9:
          v88 = 0;
          v89 = 0;
          v87 = 0;
          [(IDSDAccount *)self _splitDestinations:destinationsCopy intoLocalDestinations:&v89 remoteDestinations:&v88 rapportDestinations:&v87 sendParameters:threadCopy, v49];
          v24 = v89;
          v25 = v88;
          v54 = v87;
          allKeys = [v24 allKeys];
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_1005E1BAC;
          v86[3] = &unk_100BD7530;
          v86[4] = self;
          v53 = [allKeys __imArrayByApplyingBlock:v86];

          if ([threadCopy localDelivery] && objc_msgSend(v25, "count") && (-[IDSDAccount service](self, "service"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "shouldAllowProxyDelivery"), v27, (v28 & 1) == 0))
          {
            v40 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *v90 = 138412802;
              *&v90[4] = self;
              *&v90[12] = 2112;
              *&v90[14] = destinationsCopy;
              *&v90[22] = 2112;
              v91 = v25;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Account %@ was asked to send to %@ with forced local delivery but there are unaddressible remote destinations %@ - failing message.", v90, 0x20u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              v51 = destinationsCopy;
              v52 = v25;
              selfCopy = self;
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
                v31 = [threadCopy copy];
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
                v71 = completionBlockCopy;
                v75 = v79;
                [(IDSDAccount *)self _sendLocallyWithSendParameters:v32 uriToLocalDestination:v24 data:dataCopy protobuf:sendCopy completionBlock:v70];
              }

              if ([v54 count])
              {
                v33 = [v54 __imArrayByApplyingBlock:&stru_100BE1828];
                if (blockCopy)
                {
                  (*(blockCopy + 2))(blockCopy, v33, 0, 0);
                }

                v34 = [threadCopy copy];
                [v34 setFinalDestinationURIs:v33];
                v68[0] = _NSConcreteStackBlock;
                v68[1] = 3221225472;
                v68[2] = sub_1005E1FA8;
                v68[3] = &unk_100BDB638;
                v69 = completionBlockCopy;
                [(IDSDAccount *)self _rapportSendWithSendParameters:v34 completionBlock:v68];
              }

              v35 = blockCopy;
              if (blockCopy)
              {
                v64[0] = _NSConcreteStackBlock;
                v64[1] = 3221225472;
                v64[2] = sub_1005E1FB8;
                v64[3] = &unk_100BE1710;
                v65 = v24;
                v66 = v53;
                v67 = blockCopy;
                v35 = objc_retainBlock(v64);
              }

              if ([v25 count])
              {
                v36 = [threadCopy copy];
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
                v59 = completionBlockCopy;
                v63 = &v81;
                [(IDSDAccount *)self _sendRemotelyWithSendParameters:v36 data:dataCopy protobuf:sendCopy willSendBlock:v35 completionBlock:v58];
              }

              else
              {
                v39 = [v24 count];
                if (blockCopy && v39)
                {
                  (*(blockCopy + 2))(blockCopy, v53, 0, 0);
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
              *&v90[14] = destinationsCopy;
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
          if (completionBlockCopy)
          {
            v48 = [[IDSDeliveryContext alloc] initWithResponseCode:1 error:v47 lastCall:1];
            (*(completionBlockCopy + 2))(completionBlockCopy, v48);
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

- (void)sendServerMessage:(id)message command:(id)command completionBlock:(id)block
{
  messageCopy = message;
  commandCopy = command;
  blockCopy = block;
  service = [(IDSDAccount *)self service];
  pushTopic = [service pushTopic];

  v13 = [[IDSServerMessage alloc] initWithPayload:messageCopy command:commandCopy];
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = messageCopy;
    v26 = 2112;
    v27 = commandCopy;
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending server message: %@   command: %@   account: %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = commandCopy;
    selfCopy2 = self;
    v18 = messageCopy;
    _IDSLogV();
  }

  v15 = [IDSDeliveryController sharedInstance:v18];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005E2750;
  v21[3] = &unk_100BD8D78;
  v22 = pushTopic;
  v23 = blockCopy;
  v16 = blockCopy;
  v17 = pushTopic;
  [v15 sendIDSMessage:v13 service:0 topic:v17 completionBlock:v21];
}

- (void)_splitDestinations:(id)destinations intoLocalDestinations:(id *)localDestinations remoteDestinations:(id *)remoteDestinations rapportDestinations:(id *)rapportDestinations sendParameters:(id)parameters
{
  destinationsCopy = destinations;
  parametersCopy = parameters;
  localDestinationsCopy = localDestinations;
  if (!localDestinations && !remoteDestinations && !rapportDestinations)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = destinationsCopy;
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
    selfCopy = self;
    v160 = 2112;
    v161 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ splitting destinations %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    selfCopy2 = self;
    v115 = destinationsCopy;
    _IDSLogV();
  }

  v124 = objc_alloc_init(NSMutableDictionary);
  v125 = objc_alloc_init(NSMutableArray);
  v127 = objc_alloc_init(NSMutableArray);
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = destinationsCopy;
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
          selfCopy = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - looking up device for dest %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          selfCopy2 = v11;
          _IDSLogV();
        }

        LODWORD(v13) = [(IDSDAccount *)v11 isEqualToString:v135, selfCopy2, v115, v117, v118];
        if (v13)
        {
          defaultPairedDependentRegistration = [(IDSDAccount *)self defaultPairedDependentRegistration];
          v15 = defaultPairedDependentRegistration;
          if (!defaultPairedDependentRegistration)
          {
            v44 = [NSDictionary dictionaryWithObjectsAndKeys:@"bt-id", v126, @"device-id", 0];
            [v124 setObject:v44 forKey:v135];

            goto LABEL_190;
          }

          v16 = [(IDSDAccount *)defaultPairedDependentRegistration objectForKey:v129];
          v17 = [(IDSDAccount *)v15 objectForKey:v128];
          v18 = [v17 __imArrayByApplyingBlock:&stru_100BE1890];

          service = [(IDSDAccount *)self service];
          identifier = [service identifier];
          _IDSPrefersPhoneNumbersForServiceIdentifier();

          v21 = _IDSCopyCallerID();
          v22 = [v21 _URIFromFZIDType:{objc_msgSend(v21, "_FZBestGuessFZIDType")}];
          v23 = _IDSCopyIDForTokenWithURI();

          v24 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            selfCopy = v23;
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
          _stripFZIDPrefix = [(IDSDAccount *)v23 _stripFZIDPrefix];
          v26 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            selfCopy = _stripFZIDPrefix;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "(Instance) Destination device uniqueID: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v113 = _stripFZIDPrefix;
            _IDSLogV();
          }

          service2 = [(IDSDAccount *)self service];
          v28 = -[IDSDAccount defaultPairedDependentRegistrationIncludingTinker:](self, "defaultPairedDependentRegistrationIncludingTinker:", [service2 wantsTinkerDevices]);

          if (v28)
          {
            v29 = [(IDSDAccount *)v28 _stringForKey:v141];
            v30 = [(IDSDAccount *)v28 objectForKey:v140];
            v13 = [v30 _stringForKey:v139];

            v31 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy = v29;
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

            if ((-[IDSDAccount isEqualToIgnoringCase:](_stripFZIDPrefix, "isEqualToIgnoringCase:", v29, v113) & 1) == 0 && !-[IDSDAccount isEqualToIgnoringCase:](_stripFZIDPrefix, "isEqualToIgnoringCase:", v13) || [parametersCopy sessionForceInternetInvitation])
            {

              goto LABEL_48;
            }

            LOBYTE(v13) = 1;
LABEL_78:

            v45 = [(IDSDAccount *)v28 objectForKey:v129];
            v46 = [(IDSDAccount *)v28 objectForKey:v128];
            v47 = [v46 __imArrayByApplyingBlock:&stru_100BE18B0];

            service3 = [(IDSDAccount *)self service];
            identifier2 = [service3 identifier];
            _IDSPrefersPhoneNumbersForServiceIdentifier();

            v50 = _IDSCopyCallerID();
            v51 = [v50 _URIFromFZIDType:{objc_msgSend(v50, "_FZBestGuessFZIDType")}];
            v52 = _IDSCopyIDForTokenWithURI();

            v53 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              selfCopy = v52;
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
            service4 = [(IDSDAccount *)self service];
            v33 = -[IDSDAccount dependentRegistrationsIncludingTinker:](self, "dependentRegistrationsIncludingTinker:", [service4 wantsTinkerDevices]);

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
                  selfCopy = v38;
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

                if (([(IDSDAccount *)v38 isEqualToIgnoringCase:_stripFZIDPrefix, v113]& 1) != 0 || [(IDSDAccount *)v40 isEqualToIgnoringCase:_stripFZIDPrefix])
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
                selfCopy = v28;
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
              selfCopy = _stripFZIDPrefix;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "(Instance) Didn't find matching device for uniqueID %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v113 = _stripFZIDPrefix;
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
          selfCopy = v136;
          v160 = 2112;
          v161 = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - token %@ and uri %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          selfCopy2 = v136;
          v115 = v54;
          _IDSLogV();
        }

        if (!v136 || !v54)
        {
          v57 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            selfCopy = v23;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Malformed destination %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            _IDSWarnV();
            _IDSLogV();
            selfCopy2 = v23;
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
            selfCopy = v59;
            v160 = 2112;
            v161 = v60;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Finding device matching URI %@ and token %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v61 = IDSLoggableDescriptionForHandleOnService();
            IDSLoggableDescriptionForTokenOnService();
            v115 = selfCopy2 = v61;
            _IDSLogV();
          }

          v146 = 0;
          v147 = 0;
          [(IDSDAccount *)self findDeviceUniqueID:&v147 btID:&v146 forURI:v54 token:v136 supportsLiveDelivery:&v148, selfCopy2];
          v56 = v147;
          v132 = v146;
          v62 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            selfCopy = v56;
            v160 = 2112;
            v161 = v132;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Found deviceID %@ and btID %@ after first try", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = v56;
            v115 = v132;
            _IDSLogV();
          }
        }

        if (!v56)
        {
          v63 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            smallDescription = [(IDSDAccount *)self smallDescription];
            *buf = 138412290;
            selfCopy = smallDescription;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Did not find deviceID using account %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            selfCopy2 = [(IDSDAccount *)self smallDescription];
            _IDSLogV();
          }

          v65 = +[IDSDAccountController sharedInstance];
          service5 = [(IDSDAccount *)self service];
          v67 = [v65 appleIDAccountOnService:service5];

          v144 = v132;
          v145 = 0;
          [v67 findDeviceUniqueID:&v145 btID:&v144 forURI:v54 token:v136 supportsLiveDelivery:&v148];
          v56 = v145;
          v68 = v144;

          v69 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            smallDescription2 = [v67 smallDescription];
            *buf = 138412546;
            selfCopy = v56;
            v160 = 2112;
            v161 = smallDescription2;
            _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Found deviceID %@ using primary %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            [v67 smallDescription];
            v115 = selfCopy2 = v56;
            _IDSLogV();
          }

          v132 = v68;
        }

        v71 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          selfCopy = v56;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - found device id %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          selfCopy2 = v56;
          _IDSLogV();
        }

        service6 = [(IDSDAccount *)self service];
        if ([service6 shouldAllowLiveMessageDelivery])
        {
          service7 = [(IDSDAccount *)self service];
          identifier3 = [service7 identifier];
          if (sub_1005DB1BC(identifier3))
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

        if (v77 == 1 && ([parametersCopy liveMessageDelivery] & v75) == 1 && v148 == 1)
        {
          utunDeliveryController = [(IDSDAccount *)self utunDeliveryController];
          v79 = [utunDeliveryController copyPeerWithID:v56];

          if (([v79 isCloudConnected] & 1) == 0)
          {
            [parametersCopy setLiveMessageDelivery:0];
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
              selfCopy = v56;
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

        sessionID = [parametersCopy sessionID];
        if ([parametersCopy liveMessageDelivery] && (v56 ? (v84 = v75) : (v84 = 0), v84 == 1 && v132))
        {
          if (v148 != 1)
          {
            v94 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              selfCopy = v56;
              v160 = 2112;
              v161 = v54;
              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Device does not support live delivery, falling back to push {deviceID: %@, strippedURI: %@}", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              selfCopy2 = v56;
              v115 = v54;
              _IDSLogV();
            }

            goto LABEL_168;
          }

          v85 = [NSDictionary dictionaryWithObjectsAndKeys:v132, @"bt-id", v56, v123, 0];
        }

        else
        {
          service8 = [(IDSDAccount *)self service];
          if (![service8 allowLocalDelivery] || (byte_100CBF2C8 & 1) != 0 || !v56)
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
              selfCopy = v23;
              _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "Splitting out local destinations - no local device for URI %@, adding to remote", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              selfCopy2 = v23;
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
          service9 = [(IDSDAccount *)self service];
          allowWiProxDelivery = [service9 allowWiProxDelivery];

          if (!((v87 | allowWiProxDelivery) & 1 | (sessionID != 0)))
          {
            v95 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              service10 = [(IDSDAccount *)self service];
              allowWiProxDelivery2 = [service10 allowWiProxDelivery];
              *buf = 138413058;
              v98 = @"NO";
              if (allowWiProxDelivery2)
              {
                v98 = @"YES";
              }

              selfCopy = v23;
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
              service11 = [(IDSDAccount *)self service];
              if ([service11 allowWiProxDelivery])
              {
                v100 = @"YES";
              }

              else
              {
                v100 = @"NO";
              }

              v117 = v132;
              v118 = v100;
              selfCopy2 = v23;
              v115 = v56;
              _IDSLogV();
            }

            goto LABEL_168;
          }

          if (sessionID)
          {
            [NSDictionary dictionaryWithObjectsAndKeys:v132, @"bt-id", v56, v123, sessionID, @"session-id", 0];
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
    selfCopy = v104;
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

  if (localDestinationsCopy)
  {
    v107 = v124;
    *localDestinationsCopy = v124;
  }

  if (remoteDestinations)
  {
    v108 = v125;
    *remoteDestinations = v125;
  }

  v109 = v127;
  if (rapportDestinations)
  {
    v110 = v127;
    v109 = v127;
    *rapportDestinations = v127;
  }

LABEL_222:
}

- (void)_sendLocallyWithSendParameters:(id)parameters uriToLocalDestination:(id)destination data:(id)data protobuf:(id)protobuf completionBlock:(id)block
{
  parametersCopy = parameters;
  destinationCopy = destination;
  dataCopy = data;
  protobufCopy = protobuf;
  blockCopy = block;
  im_assert_primary_base_queue();
  selfCopy = self;
  service = [(IDSDAccount *)self service];
  dataProtectionClass = [service dataProtectionClass];
  pushTopic = [service pushTopic];
  resourcePath = [parametersCopy resourcePath];

  dataToEncrypt = [parametersCopy dataToEncrypt];
  v17 = [dataToEncrypt length];
  v18 = [dataCopy length];
  data = [protobufCopy data];
  v20 = [data length];

  if (resourcePath)
  {
    [parametersCopy setCommand:&off_100C3CD48];
    v21 = 0;
  }

  else
  {
    v21 = &v17[v18 + v20];
  }

  v107 = pushTopic;
  metricReportIdentifier = [parametersCopy metricReportIdentifier];

  v102 = v107;
  if (metricReportIdentifier)
  {
    v23 = [NSString alloc];
    metricReportIdentifier2 = [parametersCopy metricReportIdentifier];
    v102 = [v23 initWithFormat:@"%@-%@", v107, metricReportIdentifier2];
  }

  v25 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    messageUUID = [parametersCopy messageUUID];
    *&buf[12] = 2048;
    v27 = @"YES";
    *buf = 138413314;
    *&buf[4] = messageUUID;
    if (!resourcePath)
    {
      v27 = @"NO";
    }

    *&buf[14] = v21;
    *&buf[22] = 2112;
    v140 = v27;
    *v141 = 2112;
    *&v141[2] = v107;
    *&v141[10] = 2112;
    *&v141[12] = destinationCopy;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Sending message ID (%@) with data length %lu (resource: %@)  [Topic: %@  Local Device IDs: %@]", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v28 = resourcePath == 0;
    messageUUID2 = [parametersCopy messageUUID];
    v30 = messageUUID2;
    v31 = @"YES";
    if (v28)
    {
      v31 = @"NO";
    }

    v75 = v107;
    v77 = destinationCopy;
    v71 = v21;
    v73 = v31;
    v68 = messageUUID2;
    _IDSLogV();
  }

  if (!-[IDSDAccount accountType](selfCopy, "accountType", v68, v71, v73, v75, v77) || (_IDSCopyMyPhoneNumbers(), v32 = objc_claimAutoreleasedReturnValue(), [parametersCopy fromID], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "_stripFZIDPrefix"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v32, "containsObject:", v34), v34, v33, v32, v35))
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

  allValues = [destinationCopy allValues];
  v39 = [allValues __imArrayByApplyingBlock:&stru_100BE18F0];
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
  if (([parametersCopy localDelivery] & 1) != 0 || objc_msgSend(parametersCopy, "requireLocalWiFi"))
  {
    v40 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      if ([parametersCopy localDelivery])
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      requireLocalWiFi = [parametersCopy requireLocalWiFi];
      messageUUID3 = [parametersCopy messageUUID];
      v44 = messageUUID3;
      if (requireLocalWiFi)
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
      v138 = messageUUID3;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Ignoring request to fallback forcedLocal %@ requireLocalWiFi %@ message %@", v133, 0x20u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || (![parametersCopy localDelivery] ? (v46 = @"NO") : (v46 = @"YES"), (v47 = objc_msgSend(parametersCopy, "requireLocalWiFi"), objc_msgSend(parametersCopy, "messageUUID"), v48 = objc_claimAutoreleasedReturnValue(), v49 = v48, !v47) ? (v50 = @"NO") : (v50 = @"YES"), v72 = v50, v74 = v48, v69 = v46, _IDSLogTransport(), v49, !_IDSShouldLog()))
    {
      v56 = 0;
      goto LABEL_50;
    }

    if ([parametersCopy localDelivery])
    {
      v51 = @"YES";
    }

    else
    {
      v51 = @"NO";
    }

    requireLocalWiFi2 = [parametersCopy requireLocalWiFi];
    messageUUID4 = [parametersCopy messageUUID];
    v54 = messageUUID4;
    if (requireLocalWiFi2)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    v72 = v55;
    v74 = messageUUID4;
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
    v122 = parametersCopy;
    v123 = selfCopy;
    v130 = v132;
    v124 = v102;
    v131 = v21;
    v125 = service;
    v128 = blockCopy;
    v126 = dataCopy;
    v127 = protobufCopy;
    v56 = objc_retainBlock(v119);

    v54 = v120;
  }

LABEL_50:
  dataToEncrypt2 = [parametersCopy dataToEncrypt];

  if (dataToEncrypt2)
  {
    if (dataCopy)
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

    dataToEncrypt3 = [parametersCopy dataToEncrypt];

    dataCopy = dataToEncrypt3;
  }

  utunDeliveryController = [(IDSDAccount *)selfCopy utunDeliveryController];
  resourcePath2 = [parametersCopy resourcePath];
  resourceMetadata = [parametersCopy resourceMetadata];
  priority = [parametersCopy priority];
  nonWaking = [parametersCopy nonWaking];
  nonCloudWaking = [parametersCopy nonCloudWaking];
  requireBluetooth = [parametersCopy requireBluetooth];
  requireLocalWiFi3 = [parametersCopy requireLocalWiFi];
  queueOneIdentifier = [parametersCopy queueOneIdentifier];
  expirationDate = [parametersCopy expirationDate];
  enforceRemoteTimeouts = [parametersCopy enforceRemoteTimeouts];
  expectsPeerResponse = [parametersCopy expectsPeerResponse];
  wantsAppAck = [parametersCopy wantsAppAck];
  compressPayload = [parametersCopy compressPayload];
  compressed = [parametersCopy compressed];
  peerResponseIdentifier = [parametersCopy peerResponseIdentifier];
  identifier = [parametersCopy identifier];
  command = [parametersCopy command];
  fromID = [parametersCopy fromID];
  localDestinationDeviceUUID = [parametersCopy localDestinationDeviceUUID];
  bypassDuet = [parametersCopy bypassDuet];
  duetIdentifiersOverride = [parametersCopy duetIdentifiersOverride];
  messageType = [parametersCopy messageType];
  longLongValue = [messageType longLongValue];
  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_1005E6548;
  v110[3] = &unk_100BE1940;
  v79 = parametersCopy;
  v111 = v79;
  v67 = v107;
  v112 = v67;
  v95 = v94;
  v113 = v95;
  v108 = v93;
  v114 = v108;
  v115 = selfCopy;
  v117 = buf;
  v118 = v132;
  v106 = blockCopy;
  v116 = v106;
  LOBYTE(v78) = bypassDuet;
  BYTE4(v76) = compressed;
  BYTE3(v76) = compressPayload;
  BYTE2(v76) = wantsAppAck;
  BYTE1(v76) = expectsPeerResponse;
  LOBYTE(v76) = enforceRemoteTimeouts;
  HIBYTE(v70) = requireLocalWiFi3;
  BYTE6(v70) = requireBluetooth;
  BYTE5(v70) = nonCloudWaking;
  BYTE4(v70) = nonWaking;
  LODWORD(v70) = dataProtectionClass;
  [utunDeliveryController sendData:dataCopy service:service protobuf:protobufCopy resourcePath:resourcePath2 resourceMetadata:resourceMetadata priority:priority dataProtectionClass:v70 nonWaking:queueOneIdentifier nonCloudWaking:expirationDate requireBluetooth:v76 requireLocalWiFi:peerResponseIdentifier queueOneIdentifier:identifier expirationDate:v67 enforceRemoteTimeouts:v102 expectsPeerResponse:command wantsAppAck:fromID compressPayload:destinationCopy compressed:localDestinationDeviceUUID peerResponseIdentifier:v78 messageID:duetIdentifiersOverride topic:longLongValue awdTopic:v56 command:0 fromID:v110 uriToDeviceID:? localDeviceDestinationDeviceUUID:? bypassDuet:? duetIdentifiersOverride:? messageType:? fallbackBlock:? progressBlock:? completionBlock:?];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v132, 8);
}

- (void)_sendRemotelyWithSendParameters:(id)parameters data:(id)data protobuf:(id)protobuf willSendBlock:(id)block completionBlock:(id)completionBlock
{
  parametersCopy = parameters;
  dataCopy = data;
  protobufCopy = protobuf;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  service = [(IDSDAccount *)self service];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v268 = _os_activity_create(&_mh_execute_header, "IDSAccount send remotely", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v268, &state);
  dataUsageBundleID = [service dataUsageBundleID];
  identifier = [service identifier];
  v243 = [NSString stringWithFormat:@"service-disable-%@", identifier];

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
    fromID = [parametersCopy fromID];
    v19 = fromID == 0;

    if (v19)
    {
      v34 = [NSError alloc];
      destinations5 = [v34 initWithDomain:IDSSendErrorDomain code:7 userInfo:0];
      v35 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        destinations = [parametersCopy destinations];
        fromID2 = [parametersCopy fromID];
        *buf = 138412546;
        *v270 = destinations;
        *&v270[8] = 2112;
        v271 = fromID2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Failing message to: %@   from: %@    invalid caller ID", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        destinations2 = [parametersCopy destinations];
        fromID3 = [parametersCopy fromID];
        _IDSWarnV();

        destinations3 = [parametersCopy destinations];
        fromID4 = [parametersCopy fromID];
        _IDSLogV();

        destinations4 = [parametersCopy destinations];
        fromID5 = [parametersCopy fromID];
        _IDSLogTransport();
      }

      if (!completionBlockCopy)
      {
        goto LABEL_245;
      }

      v41 = [[IDSDeliveryContext alloc] initWithResponseCode:7 error:destinations5 lastCall:1];
      completionBlockCopy[2](completionBlockCopy, v41);
LABEL_244:

LABEL_245:
      goto LABEL_246;
    }

    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      messageUUID = [parametersCopy messageUUID];
      v22 = JWUUIDPushObjectToString();
      identifier2 = [service identifier];
      *buf = 138412546;
      *v270 = v22;
      *&v270[8] = 2112;
      v271 = identifier2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "OUTGOING-REMOTE_SEND:%@ SERVICE:%@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      messageUUID2 = [parametersCopy messageUUID];
      v25 = JWUUIDPushObjectToString();
      [service identifier];
      v182 = v176 = v25;
      _IDSLogV();
    }

    if (!-[IDSDAccount accountType](self, "accountType", v176, v182) || (_IDSCopyMyPhoneNumbers(), v26 = objc_claimAutoreleasedReturnValue(), [parametersCopy fromID], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "_stripFZIDPrefix"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v26, "containsObject:", v28), v28, v27, v26, v29))
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

    destinations5 = [parametersCopy destinations];
    theDict = objc_alloc_init(NSMutableDictionary);
    command = [parametersCopy command];
    if (command)
    {
      CFDictionarySetValue(theDict, IDSCommandKey, command);
    }

    else
    {
      v42 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092C59C();
      }
    }

    commandContext = [parametersCopy commandContext];
    if (commandContext)
    {
      CFDictionarySetValue(theDict, IDSCommandContextKey, commandContext);
    }

    queueOneIdentifier = [parametersCopy queueOneIdentifier];
    if (queueOneIdentifier)
    {
      CFDictionarySetValue(theDict, IDSStorageQueueOneIdentifier, queueOneIdentifier);
    }

    command2 = [parametersCopy command];
    if ([command2 integerValue] != 227)
    {
      command3 = [parametersCopy command];
      if ([command3 integerValue] != 243)
      {
        command4 = [parametersCopy command];
        if ([command4 integerValue] != 242)
        {
          command5 = [parametersCopy command];
          v89 = [command5 integerValue] == 250;

          if (!v89)
          {
            goto LABEL_78;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    if ([parametersCopy priority] == 300 && (objc_msgSend(parametersCopy, "wantsResponse") & 1) == 0 && (objc_msgSend(parametersCopy, "fireAndForget") & 1) == 0)
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

      [parametersCopy setWantsResponse:1];
    }

    expirationDate = [parametersCopy expirationDate];
    v50 = expirationDate;
    if (expirationDate)
    {
      [expirationDate timeIntervalSinceNow];
      if (v51 < 5.0)
      {
        [parametersCopy setFireAndForget:1];
      }
    }

    if ([parametersCopy wantsResponse] && objc_msgSend(parametersCopy, "fireAndForget"))
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

      [parametersCopy setFireAndForget:0];
    }

    if (([parametersCopy wantsResponse] & 1) == 0)
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
    messageUUID3 = [parametersCopy messageUUID];
    v57 = messageUUID3 == 0;

    if (v57)
    {
      v58 = +[NSString stringGUID];
      v59 = IDSGetUUIDData();
      [parametersCopy setMessageUUID:v59];
    }

    if ([parametersCopy wantsDeliveryStatus])
    {
      CFDictionarySetValue(theDict, IDSWantsDeliveryStatusKey, &__kCFBooleanTrue);
      deliveryStatusContext = [parametersCopy deliveryStatusContext];
      if (deliveryStatusContext)
      {
        CFDictionarySetValue(theDict, IDSDeliveryStatusContextKey, deliveryStatusContext);
      }
    }

    if ([parametersCopy wantsCertifiedDelivery])
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

    if ([parametersCopy expectsPeerResponse])
    {
      CFDictionarySetValue(theDict, IDSExpectsPeerResponseKey, &__kCFBooleanTrue);
    }

    peerResponseIdentifier = [parametersCopy peerResponseIdentifier];

    if (peerResponseIdentifier)
    {
      peerResponseIdentifier2 = [parametersCopy peerResponseIdentifier];
      v65 = IDSGetUUIDData();

      if (v65)
      {
        CFDictionarySetValue(theDict, IDSPeerResponseIdentifierKey, v65);
      }
    }

    if ([parametersCopy wantsAppAck])
    {
      CFDictionarySetValue(theDict, IDSWantsAppAckKey, &__kCFBooleanTrue);
    }

    originalTimestamp = [parametersCopy originalTimestamp];

    if (originalTimestamp)
    {
      originalTimestamp2 = [parametersCopy originalTimestamp];
      if (originalTimestamp2)
      {
        CFDictionarySetValue(theDict, IDSOriginalTimestampKey, originalTimestamp2);
      }
    }

    if ([parametersCopy isUPlusOne])
    {
      v68 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [parametersCopy isUPlusOne]);
      if (v68)
      {
        CFDictionarySetValue(theDict, IDSIsUPlusOneKey, v68);
      }
    }

    isInitiator = [parametersCopy isInitiator];

    if (isInitiator)
    {
      isInitiator2 = [parametersCopy isInitiator];
      if (isInitiator2)
      {
        CFDictionarySetValue(theDict, IDSGroupSessionIsInitiatorKey, isInitiator2);
      }
    }

    quickRelayUserType = [parametersCopy quickRelayUserType];

    if (quickRelayUserType)
    {
      quickRelayUserType2 = [parametersCopy quickRelayUserType];
      if (quickRelayUserType2)
      {
        CFDictionarySetValue(theDict, IDSQuickRelayUserTypeKey, quickRelayUserType2);
      }
    }

    groupSessionUUID = [parametersCopy groupSessionUUID];

    if (groupSessionUUID)
    {
      groupSessionUUID2 = [parametersCopy groupSessionUUID];
      if (groupSessionUUID2)
      {
        CFDictionarySetValue(theDict, IDSQuickRelayGroupSessionUUID, groupSessionUUID2);
      }
    }

    dedupeTimestamp = [parametersCopy dedupeTimestamp];

    if (dedupeTimestamp)
    {
      dedupeTimestamp2 = [parametersCopy dedupeTimestamp];
      if (dedupeTimestamp2)
      {
        CFDictionarySetValue(theDict, IDSQuickRelayDedupeTimestamp, dedupeTimestamp2);
      }
    }

    if ([parametersCopy useDictAsTopLevel])
    {
      message = [parametersCopy message];
      v265[0] = _NSConcreteStackBlock;
      v265[1] = 3221225472;
      v265[2] = sub_1005E9368;
      v265[3] = &unk_100BD95F8;
      v266 = theDict;
      [message enumerateKeysAndObjectsUsingBlock:v265];

      _FTCopyOptionallyGzippedData = 0;
      v78 = v266;
    }

    else
    {
      bulkedPayload = [parametersCopy bulkedPayload];

      if (bulkedPayload)
      {
        message2 = [parametersCopy message];
        v81 = [message2 count];

        [parametersCopy bulkedPayload];
        if (v81)
          v82 = {;
          v83 = [v82 mutableCopy];

          message3 = [parametersCopy message];
          [v83 addObject:message3];

          v78 = v83;
        }

        else
          v78 = {;
        }

        v90 = JWEncodeArray();
        v91 = [v90 length];
        if ([parametersCopy compressPayload])
        {
          _FTCopyOptionallyGzippedData = [v90 _FTCopyOptionallyGzippedData];
          v92 = [_FTCopyOptionallyGzippedData length];
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
              uris2 = v92;
              _IDSLogV();
            }

            _FTCopyOptionallyGzippedData = _FTCopyOptionallyGzippedData;

            v90 = _FTCopyOptionallyGzippedData;
          }
        }

        else
        {
          _FTCopyOptionallyGzippedData = 0;
        }

        if (([parametersCopy encryptPayload] & 1) != 0 || (objc_msgSend(parametersCopy, "dataToEncrypt"), v94 = objc_claimAutoreleasedReturnValue(), v95 = v94 == 0, v94, !v95))
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
        v78 = dataCopy;
        protobuf = [parametersCopy protobuf];

        if (protobuf)
        {
          if ([parametersCopy compressed])
          {
            dictionaryRepresentationWithUncompressedData = [protobufCopy dictionaryRepresentationWithUncompressedData];
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
            dictionaryRepresentationWithUncompressedData = [protobufCopy dictionaryRepresentation];
          }

          v98 = JWEncodeDictionary();

          v99 = [v98 length];
          if ([parametersCopy compressPayload])
          {
            _FTCopyOptionallyGzippedData = [v98 _FTCopyOptionallyGzippedData];
            v100 = [_FTCopyOptionallyGzippedData length];
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
                uris2 = v100;
                _IDSLogV();
              }

              _FTCopyOptionallyGzippedData = _FTCopyOptionallyGzippedData;

              v98 = _FTCopyOptionallyGzippedData;
            }
          }

          else
          {
            _FTCopyOptionallyGzippedData = 0;
          }

          v78 = v98;
        }

        else
        {
          _FTCopyOptionallyGzippedData = 0;
        }

        if ([parametersCopy encryptPayload])
        {
          dataToEncrypt = [parametersCopy dataToEncrypt];

          if (dataToEncrypt)
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

          [parametersCopy setDataToEncrypt:v78];
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

    if ([parametersCopy homeKitPayload])
    {
      fromID6 = [parametersCopy fromID];
    }

    else
    {
      fromID7 = [parametersCopy fromID];
      fromID6 = [fromID7 _bestGuessURI];
    }

    _registrationCert = [(IDSDAccount *)self _registrationCert];
    v108 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
    {
      registrationInfo = self->_registrationInfo;
      uris = [(IDSRegistration *)registrationInfo uris];
      *buf = 138412802;
      *v270 = registrationInfo;
      *&v270[8] = 2112;
      v271 = uris;
      v272 = 2112;
      v273 = _registrationCert;
      _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEBUG, "Registration %@   URIs %@  callerCert %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v111 = self->_registrationInfo;
      uris2 = [(IDSRegistration *)v111 uris];
      v190 = _registrationCert;
      v178 = v111;
      _IDSLogV();
    }

    v112 = [(IDSDAccount *)self service:v178];
    pushTopic = [v112 pushTopic];

    service2 = [(IDSDAccount *)self service];
    identifier3 = [service2 identifier];

    v114 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      command6 = [parametersCopy command];
      *buf = 138412290;
      *v270 = command6;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "!setState command=%@", buf, 0xCu);
    }

    v116 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      destinations6 = [parametersCopy destinations];
      *buf = 138412290;
      *v270 = destinations6;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "!setState destinations=%@", buf, 0xCu);
    }

    v118 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      command7 = [parametersCopy command];
      messageUUID4 = [parametersCopy messageUUID];
      v121 = JWUUIDPushObjectToString();
      destinations7 = [parametersCopy destinations];
      destinations8 = [parametersCopy destinations];
      *buf = 138413314;
      *v270 = command7;
      *&v270[8] = 2112;
      v271 = v121;
      v272 = 2112;
      v273 = destinations7;
      v274 = 2112;
      v275 = destinations8;
      v276 = 2112;
      v277 = pushTopic;
      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Sending message (c = %@) %@ to filteredDestinations %@ (originally %@) for topic %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      command8 = [parametersCopy command];
      messageUUID5 = [parametersCopy messageUUID];
      v126 = JWUUIDPushObjectToString();
      destinations9 = [parametersCopy destinations];
      destinations10 = [parametersCopy destinations];
      v195 = pushTopic;
      v187 = v126;
      v191 = destinations9;
      v179 = command8;
      _IDSLogV();
    }

    v128 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      messageUUID6 = [parametersCopy messageUUID];
      v130 = JWUUIDPushObjectToString();
      finalDestinationURIs = [parametersCopy finalDestinationURIs];
      v132 = IMLoggingStringForArray();
      *buf = 138412802;
      *v270 = v130;
      *&v270[8] = 2112;
      v271 = v132;
      v272 = 2112;
      v273 = pushTopic;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "Sending message ID (%@) using push to %@ for topic %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        messageUUID7 = [parametersCopy messageUUID];
        v134 = JWUUIDPushObjectToString();
        finalDestinationURIs2 = [parametersCopy finalDestinationURIs];
        v187 = IMLoggingStringForArray();
        v191 = pushTopic;
        v179 = v134;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          messageUUID8 = [parametersCopy messageUUID];
          v137 = JWUUIDPushObjectToString();
          finalDestinationURIs3 = [parametersCopy finalDestinationURIs];
          v187 = IMLoggingStringForArray();
          v191 = pushTopic;
          v179 = v137;
          _IDSLogV();
        }
      }
    }

    if (blockCopy)
    {
      v263[0] = _NSConcreteStackBlock;
      v263[1] = 3221225472;
      v263[2] = sub_1005E9374;
      v263[3] = &unk_100BD8D50;
      v264 = blockCopy;
      v229 = objc_retainBlock(v263);
    }

    else
    {
      v229 = 0;
    }

    interestingRegistrationProperties = [parametersCopy interestingRegistrationProperties];
    if (interestingRegistrationProperties || ([parametersCopy requireAllRegistrationProperties], (interestingRegistrationProperties = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      requireLackOfRegistrationProperties = [parametersCopy requireLackOfRegistrationProperties];
      v175 = requireLackOfRegistrationProperties == 0;

      if (v175)
      {
        v235 = 0;
LABEL_224:
        if (completionBlockCopy)
        {
          v261[0] = _NSConcreteStackBlock;
          v261[1] = 3221225472;
          v261[2] = sub_1005E9384;
          v261[3] = &unk_100BE1968;
          v262 = completionBlockCopy;
          v228 = objc_retainBlock(v261);
        }

        else
        {
          v228 = 0;
        }

        resourcePath = [parametersCopy resourcePath];

        if (resourcePath)
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
          resourcePath2 = [parametersCopy resourcePath];
          v153 = +[NSString stringGUID];
          v249[0] = _NSConcreteStackBlock;
          v249[1] = 3221225472;
          v249[2] = sub_1005E94A0;
          v249[3] = &unk_100BE1990;
          v250 = parametersCopy;
          v251 = theDict;
          v252 = identifier3;
          selfCopy = self;
          v254 = fromID6;
          v255 = _registrationCert;
          v256 = pushTopic;
          v257 = v235;
          v258 = v228;
          v259 = v229;
          v260 = completionBlockCopy;
          [v151 sendFilePath:resourcePath2 topic:v252 userInfo:0 transferID:v153 sourceAppID:dataUsageBundleID encryptFile:1 progressBlock:0 completionBlock:v249];

          v154 = v250;
        }

        else
        {
          if ([IDSRegistrationCacheStateTransportPolicy shouldQueryUpdateOfParams:parametersCopy])
          {
            v155 = +[IDSDaemon sharedInstance];
            queryUpdateNotifier = [v155 queryUpdateNotifier];
            v157 = [[IDSURI alloc] initWithPrefixedURI:fromID6];
            v158 = [queryUpdateNotifier devicesHashForURI:v157 andService:service];

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
                v271 = fromID6;
                v272 = 2112;
                v273 = service;
                _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "Added query update hash {hash: %@, fromURI: %@, service: %@}", buf, 0x20u);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
              {
                [v159 debugDescription];
                v181 = HIDWORD(v189) = HIDWORD(fromID6);
                _IDSLogV();
              }
            }
          }

          v213 = voucher_copy();
          v223 = +[IDSDeliveryController sharedInstance];
          messageUUID9 = [parametersCopy messageUUID];
          v222 = JWUUIDPushObjectToString();
          dataToEncrypt2 = [parametersCopy dataToEncrypt];
          encryptionAttributes = [parametersCopy encryptionAttributes];
          wantsResponse = [parametersCopy wantsResponse];
          expirationDate2 = [parametersCopy expirationDate];
          enforceRemoteTimeouts = [parametersCopy enforceRemoteTimeouts];
          service3 = [(IDSDAccount *)self service];
          canUseLargePayload = [service3 canUseLargePayload];
          service4 = [(IDSDAccount *)self service];
          sendOnePerToken = [service4 sendOnePerToken];
          service5 = [(IDSDAccount *)self service];
          allowPartialSendsToSucceed = [service5 allowPartialSendsToSucceed];
          priority = [parametersCopy priority];
          fireAndForget = [parametersCopy fireAndForget];
          fromShortHandle = [parametersCopy fromShortHandle];
          finalDestinationURIs4 = [parametersCopy finalDestinationURIs];
          accessToken = [parametersCopy accessToken];
          fakeMessage = [parametersCopy fakeMessage];
          alwaysSkipSelf = [parametersCopy alwaysSkipSelf];
          alwaysIncludeSelf = [parametersCopy alwaysIncludeSelf];
          forceQuery = [parametersCopy forceQuery];
          pushPriority = [parametersCopy pushPriority];
          ignoreMaxRetryCount = [parametersCopy ignoreMaxRetryCount];
          disallowRefresh = [parametersCopy disallowRefresh];
          originalTimestamp3 = [parametersCopy originalTimestamp];
          prioritizedTokenList = [parametersCopy prioritizedTokenList];
          wantsFirewallDonation = [parametersCopy wantsFirewallDonation];
          deliveryMinimumTimeDelay = [parametersCopy deliveryMinimumTimeDelay];
          deliveryMinimumTime = [parametersCopy deliveryMinimumTime];
          sendMode = [parametersCopy sendMode];
          keyTransparencyURIVerificationMap = [parametersCopy keyTransparencyURIVerificationMap];
          sendReasonContainer = [parametersCopy sendReasonContainer];
          sendMetric = [parametersCopy sendMetric];
          v170 = pushPriority;
          v171 = accessToken;
          v172 = finalDestinationURIs4;
          v173 = service5;
          v245[0] = _NSConcreteStackBlock;
          v245[1] = 3221225472;
          v245[2] = sub_1005E9EF8;
          v245[3] = &unk_100BDE220;
          v246 = parametersCopy;
          v154 = v213;
          v247 = v154;
          v248 = completionBlockCopy;
          LOBYTE(v198) = wantsFirewallDonation;
          BYTE1(v197) = disallowRefresh;
          LOBYTE(v197) = ignoreMaxRetryCount;
          BYTE2(v196) = alwaysIncludeSelf;
          BYTE1(v196) = alwaysSkipSelf;
          LOBYTE(v196) = fakeMessage;
          LOBYTE(v194) = fireAndForget;
          BYTE3(v189) = allowPartialSendsToSucceed;
          BYTE2(v189) = sendOnePerToken;
          BYTE1(v189) = canUseLargePayload;
          LOBYTE(v189) = enforceRemoteTimeouts;
          [v223 sendMessageDictionary:theDict messageID:v222 dataToEncrypt:dataToEncrypt2 withEncryptedAttributes:encryptionAttributes onService:identifier3 wantsResponse:wantsResponse expirationDate:expirationDate2 enforceRemoteTimeouts:v189 canUseLargePayload:priority sendOnePerToken:v194 allowPartialSendsToSucceed:fromID6 priority:fromShortHandle fireAndForget:_registrationCert fromID:v172 fromShortHandle:v171 fromIdentity:pushTopic toURIs:v235 accessToken:v196 topic:forceQuery registrationProperties:v170 fakeMessage:v197 alwaysSkipSelf:originalTimestamp3 alwaysIncludeSelf:prioritizedTokenList forceQuery:v198 pushPriority:destinations5 ignoreMaxRetryCount:deliveryMinimumTimeDelay disallowRefresh:deliveryMinimumTime originalTimestamp:sendMode prioritizedTokenList:keyTransparencyURIVerificationMap wantsFirewallDonation:sendReasonContainer destinationObject:sendMetric deliveryMinimumTimeDelay:v228 deliveryMinimumTime:v229 sendMode:v245 KTURIVerificationMap:? sendReasonContainer:? sendMetric:? ackBlock:? willSendBlock:? sendCompletionBlock:?];
        }

        v41 = theDict;
        goto LABEL_244;
      }
    }

    v235 = objc_alloc_init(IDSRegistrationProperties);
    requireAllRegistrationProperties = [parametersCopy requireAllRegistrationProperties];
    [(IDSRegistrationProperties *)v235 setRequireAll:requireAllRegistrationProperties];

    requireLackOfRegistrationProperties2 = [parametersCopy requireLackOfRegistrationProperties];
    [(IDSRegistrationProperties *)v235 setLackAll:requireLackOfRegistrationProperties2];

    if (blockCopy)
    {
      interestingRegistrationProperties2 = [parametersCopy interestingRegistrationProperties];
      [(IDSRegistrationProperties *)v235 setInteresting:interestingRegistrationProperties2];
    }

    v143 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
    {
      requireAll = [(IDSRegistrationProperties *)v235 requireAll];
      lackAll = [(IDSRegistrationProperties *)v235 lackAll];
      interesting = [(IDSRegistrationProperties *)v235 interesting];
      *buf = 138412802;
      *v270 = requireAll;
      *&v270[8] = 2112;
      v271 = lackAll;
      v272 = 2112;
      v273 = interesting;
      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "This send requires %@, a lack of %@, and is interested in %@ registration properties", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      requireAll2 = [(IDSRegistrationProperties *)v235 requireAll];
      lackAll2 = [(IDSRegistrationProperties *)v235 lackAll];
      [(IDSRegistrationProperties *)v235 interesting];
      v192 = v188 = lackAll2;
      v180 = requireAll2;
      _IDSLogV();
    }

    goto LABEL_224;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v270 = service;
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

- (void)_rapportSendWithSendParameters:(id)parameters completionBlock:(id)block
{
  parametersCopy = parameters;
  blockCopy = block;
  protobuf = [parametersCopy protobuf];
  if (protobuf)
  {
  }

  else
  {
    data = [parametersCopy data];

    if (!data)
    {
      message = [parametersCopy message];
      identifier = [parametersCopy identifier];
      service = [(IDSDAccount *)self service];
      pushTopic = [service pushTopic];

      command = [parametersCopy command];
      finalDestinationURIs = [parametersCopy finalDestinationURIs];
      v18 = [finalDestinationURIs __imArrayByApplyingBlock:&stru_100BE19B0];

      v19 = +[IDSRapportDeliveryController sharedInstance];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1005EA43C;
      v20[3] = &unk_100BDB638;
      v21 = blockCopy;
      [v19 sendMessage:message messageID:identifier topic:pushTopic command:command destinationIDs:v18 completionBlock:v20];

      goto LABEL_7;
    }
  }

  v10 = IDSSendErrorDomain;
  v22 = NSDebugDescriptionErrorKey;
  v23 = @"IDS doesn't support sending protobuf or data to rapport destinations";
  v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  message = [NSError errorWithDomain:v10 code:23 userInfo:v11];

  identifier = [[IDSDeliveryContext alloc] initWithResponseCode:23 error:message lastCall:1];
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, identifier);
  }

LABEL_7:
}

- (void)sendMessageWithSendParameters:(id)parameters willSendBlock:(id)block completionBlock:(id)completionBlock
{
  parametersCopy = parameters;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_base_queue();
  selfCopy = self;
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

      [parametersCopy setLocalDelivery:1];
    }

    destinations = [parametersCopy destinations];
    destinationURIs = [destinations destinationURIs];
    allObjects = [destinationURIs allObjects];
    v234[0] = _NSConcreteStackBlock;
    v234[1] = 3221225472;
    v234[2] = sub_1005EC5A4;
    v234[3] = &unk_100BD7530;
    v234[4] = self;
    v226 = [allObjects __imArrayByApplyingBlock:v234];

    service = [(IDSDAccount *)self service];
    LODWORD(destinationURIs) = [service useiMessageCallerID];

    if (!destinationURIs)
    {
LABEL_33:
      fromID = [parametersCopy fromID];
      v38 = fromID == 0;

      if (v38)
      {
        primaryRegistration = [(IDSDAccount *)selfCopy primaryRegistration];
        dsHandle = [primaryRegistration dsHandle];
        _stripFZIDPrefix = [dsHandle _stripFZIDPrefix];

        service2 = [(IDSDAccount *)selfCopy service];
        [service2 shouldRegisterUsingDSHandle];

        service3 = [(IDSDAccount *)selfCopy service];
        identifier = [service3 identifier];
        _IDSPrefersPhoneNumbersForServiceIdentifier();

        unprefixedURIStringsFromRegistration = [(IDSDAccount *)selfCopy unprefixedURIStringsFromRegistration];
        v46 = _IDSCopyCallerID();
        [parametersCopy setFromID:v46];
      }

      data = [parametersCopy data];
      protobuf = [parametersCopy protobuf];

      if (protobuf)
      {
        v48 = [IDSProtobuf alloc];
        protobuf2 = [parametersCopy protobuf];
        v229 = [v48 initWithDictionary:protobuf2];
      }

      else
      {
        v229 = 0;
      }

      message = [parametersCopy message];

      if (message)
      {
        message2 = [parametersCopy message];
        v52 = [message2 objectForKey:IDSMessageResourceTransferURLKey];
        if (v52)
        {

          v53 = [message2 objectForKeyedSubscript:IDSMessageResourceTransferMetadataKey];
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

          [parametersCopy setResourcePath:{v52, v142, v146}];
          [parametersCopy setResourceMetadata:v53];
          data = 0;
        }

        else
        {
          v53 = JWEncodeDictionary();

          data = v53;
        }
      }

      if (!data)
      {
        if (!v229)
        {
          _FTCopyOptionallyGzippedData = 0;
          data = 0;
          v66 = [0 length];
          goto LABEL_82;
        }

        data2 = [v229 data];
        v60 = [data2 length];

        if ([parametersCopy compressPayload])
        {
          data3 = [v229 data];
          _FTCopyOptionallyGzippedData = [data3 _FTCopyOptionallyGzippedData];

          v62 = [_FTCopyOptionallyGzippedData length];
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

            data4 = [v229 data];
            [v229 setUncompressedData:data4];

            [v229 setData:_FTCopyOptionallyGzippedData];
            data = 0;
            v58 = 1;
            goto LABEL_81;
          }
        }

        else
        {
          v62 = 0;
          _FTCopyOptionallyGzippedData = 0;
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
        data = 0;
        goto LABEL_81;
      }

      v55 = [data length];
      if ([parametersCopy compressPayload])
      {
        _FTCopyOptionallyGzippedData = [data _FTCopyOptionallyGzippedData];
        v56 = [_FTCopyOptionallyGzippedData length];
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

          _FTCopyOptionallyGzippedData = _FTCopyOptionallyGzippedData;

          v58 = 1;
          data = _FTCopyOptionallyGzippedData;
LABEL_81:
          [parametersCopy setCompressed:{v58, v142, v146}];
          v66 = [data length];
LABEL_82:
          v68 = v66;
          data5 = [v229 data];
          v70 = [data5 length];

          message3 = [parametersCopy message];

          v228 = v68 + v70;
          if (!message3)
          {
            v74 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              bulkedPayload = [parametersCopy bulkedPayload];
              fromID2 = [parametersCopy fromID];
              loga = [parametersCopy destinations];
              v75 = @"NO";
              if ([parametersCopy useDictAsTopLevel])
              {
                v76 = @"YES";
              }

              else
              {
                v76 = @"NO";
              }

              v214 = v76;
              if ([parametersCopy encryptPayload])
              {
                v77 = @"YES";
              }

              else
              {
                v77 = @"NO";
              }

              v212 = v77;
              if ([parametersCopy wantsResponse])
              {
                v78 = @"YES";
              }

              else
              {
                v78 = @"NO";
              }

              v209 = v78;
              [parametersCopy timeout];
              v80 = v79;
              command = [parametersCopy command];
              if ([parametersCopy wantsDeliveryStatus])
              {
                v82 = @"YES";
              }

              else
              {
                v82 = @"NO";
              }

              if ([parametersCopy wantsCertifiedDelivery])
              {
                v83 = @"YES";
              }

              else
              {
                v83 = @"NO";
              }

              deliveryStatusContext = [parametersCopy deliveryStatusContext];
              messageUUID = [parametersCopy messageUUID];
              if ([parametersCopy priority] == 300)
              {
                v86 = @"URGENT";
              }

              else if ([parametersCopy priority] == 200)
              {
                v86 = @"Default";
              }

              else
              {
                v86 = @"Sync";
              }

              if ([parametersCopy localDelivery])
              {
                v75 = @"YES";
              }

              v87 = objc_retainBlock(completionBlockCopy);
              *buf = 134221826;
              *v236 = v228;
              *&v236[8] = 2112;
              v237 = bulkedPayload;
              v238 = 2112;
              v239 = fromID2;
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
              v251 = command;
              v252 = 2112;
              v253 = v82;
              v254 = 2112;
              v255 = v83;
              v256 = 2112;
              v257 = deliveryStatusContext;
              v258 = 2112;
              v259 = messageUUID;
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
              bypassSizeCheck = [parametersCopy bypassSizeCheck];
              if (v228 <= 0x500000)
              {
                v126 = 1;
              }

              else
              {
                v126 = bypassSizeCheck;
              }

              if (v126)
              {
                if (([parametersCopy bypassSizeCheck] & 1) != 0 || objc_msgSend(parametersCopy, "priority") != 300 || v228 <= 0x100000)
                {
                  [(IDSDAccount *)selfCopy _sendMessageWithSendParametersOnMainThread:parametersCopy filteredDestinations:v226 data:data compressedData:_FTCopyOptionallyGzippedData protobufToSend:v229 willSendBlock:blockCopy completionBlock:completionBlockCopy];
LABEL_214:

                  goto LABEL_215;
                }

                v136 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
                {
                  service4 = [(IDSDAccount *)selfCopy service];
                  pushTopic = [service4 pushTopic];
                  *buf = 134218242;
                  *v236 = v228;
                  *&v236[8] = 2112;
                  v237 = pushTopic;
                  _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send as urgent", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  service5 = [(IDSDAccount *)selfCopy service];
                  pushTopic2 = [service5 pushTopic];
                  _IDSWarnV();

                  v140 = [(IDSDAccount *)selfCopy service:v228];
                  pushTopic3 = [v140 pushTopic];
                  _IDSLogV();

                  v141 = [(IDSDAccount *)selfCopy service:v228];
                  pushTopic4 = [v141 pushTopic];
                  _IDSLogTransport();
                }

                if (!completionBlockCopy)
                {
                  goto LABEL_214;
                }
              }

              else
              {
                v127 = OSLogHandleForIDSCategory();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  service6 = [(IDSDAccount *)selfCopy service];
                  pushTopic5 = [service6 pushTopic];
                  *buf = 134218242;
                  *v236 = v228;
                  *&v236[8] = 2112;
                  v237 = pushTopic5;
                  _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Payload length %lu for topic %@ is too big to send.", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  service7 = [(IDSDAccount *)selfCopy service];
                  pushTopic6 = [service7 pushTopic];
                  _IDSWarnV();

                  v131 = [(IDSDAccount *)selfCopy service:v228];
                  pushTopic7 = [v131 pushTopic];
                  _IDSLogV();

                  v132 = [(IDSDAccount *)selfCopy service:v228];
                  pushTopic8 = [v132 pushTopic];
                  _IDSLogTransport();
                }

                if (!completionBlockCopy)
                {
                  goto LABEL_214;
                }
              }

              v133 = [NSError alloc];
              v134 = [v133 initWithDomain:IDSSendErrorDomain code:8 userInfo:0];
              v135 = [[IDSDeliveryContext alloc] initWithResponseCode:8 error:v134 lastCall:1];
              (*(completionBlockCopy + 2))(completionBlockCopy, v135);

              goto LABEL_214;
            }

            logb = [parametersCopy bulkedPayload];
            fromID3 = [parametersCopy fromID];
            destinations2 = [parametersCopy destinations];
            v88 = @"NO";
            if ([parametersCopy useDictAsTopLevel])
            {
              v89 = @"YES";
            }

            else
            {
              v89 = @"NO";
            }

            if ([parametersCopy encryptPayload])
            {
              v90 = @"YES";
            }

            else
            {
              v90 = @"NO";
            }

            if ([parametersCopy wantsResponse])
            {
              v91 = @"YES";
            }

            else
            {
              v91 = @"NO";
            }

            [parametersCopy timeout];
            v93 = v92;
            command2 = [parametersCopy command];
            if ([parametersCopy wantsDeliveryStatus])
            {
              v94 = @"YES";
            }

            else
            {
              v94 = @"NO";
            }

            if ([parametersCopy wantsCertifiedDelivery])
            {
              v95 = @"YES";
            }

            else
            {
              v95 = @"NO";
            }

            deliveryStatusContext2 = [parametersCopy deliveryStatusContext];
            messageUUID2 = [parametersCopy messageUUID];
            if ([parametersCopy priority] == 300)
            {
              v96 = @"URGENT";
            }

            else if ([parametersCopy priority] == 200)
            {
              v96 = @"Default";
            }

            else
            {
              v96 = @"Sync";
            }

            if ([parametersCopy localDelivery])
            {
              v88 = @"YES";
            }

            message4 = objc_retainBlock(completionBlockCopy);
            v165 = v88;
            v166 = message4;
            v163 = messageUUID2;
            v164 = v96;
            v161 = v95;
            v162 = deliveryStatusContext2;
            v159 = command2;
            v160 = v94;
            v158 = v93;
            v156 = v90;
            v157 = v91;
            v154 = destinations2;
            v155 = v89;
            v146 = logb;
            v153 = fromID3;
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

            logb = [parametersCopy message];
            fromID3 = [logb objectForKey:@"c"];
            v110 = objc_opt_class();
            destinations2 = [parametersCopy message];
            command2 = sub_10001BA3C(v110, destinations2, @"fID");
            v111 = objc_opt_class();
            deliveryStatusContext2 = [parametersCopy message];
            messageUUID2 = sub_10001BA3C(v111, deliveryStatusContext2, @"fT");
            message4 = [parametersCopy message];
            v203 = [(__CFString *)message4 objectForKey:@"g"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              message5 = [parametersCopy message];
              v199 = [message5 objectForKey:@"g"];
              v197 = [NSData _IDSDataFromBase64String:v199];
            }

            else
            {
              message5 = [parametersCopy message];
              v199 = [message5 objectForKey:@"g"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v175 = 0;
                v197 = 0;
                goto LABEL_174;
              }

              message6 = [parametersCopy message];
              v197 = [message6 objectForKey:@"g"];
            }

            v175 = isKindOfClass ^ 1;
LABEL_174:
            v191 = JWUUIDPushObjectToString();
            message7 = [parametersCopy message];
            v189 = [message7 objectForKey:@"t"];
            v112 = objc_opt_class();
            message8 = [parametersCopy message];
            v183 = sub_10001BA3C(v112, message8, @"tID");
            bulkedPayload2 = [parametersCopy bulkedPayload];
            fromID4 = [parametersCopy fromID];
            destinations3 = [parametersCopy destinations];
            v113 = @"YES";
            if ([parametersCopy useDictAsTopLevel])
            {
              v114 = @"YES";
            }

            else
            {
              v114 = @"NO";
            }

            v179 = v114;
            if ([parametersCopy encryptPayload])
            {
              v115 = @"YES";
            }

            else
            {
              v115 = @"NO";
            }

            v177 = v115;
            if ([parametersCopy wantsResponse])
            {
              v116 = @"YES";
            }

            else
            {
              v116 = @"NO";
            }

            [parametersCopy timeout];
            v118 = v117;
            command3 = [parametersCopy command];
            if ([parametersCopy wantsDeliveryStatus])
            {
              v120 = @"YES";
            }

            else
            {
              v120 = @"NO";
            }

            if ([parametersCopy wantsCertifiedDelivery])
            {
              v121 = @"YES";
            }

            else
            {
              v121 = @"NO";
            }

            deliveryStatusContext3 = [parametersCopy deliveryStatusContext];
            messageUUID3 = [parametersCopy messageUUID];
            if ([parametersCopy priority] == 300)
            {
              v124 = @"URGENT";
            }

            else if ([parametersCopy priority] == 200)
            {
              v124 = @"Default";
            }

            else
            {
              v124 = @"Sync";
            }

            if (![parametersCopy localDelivery])
            {
              v113 = @"NO";
            }

            v170 = v113;
            v171 = objc_retainBlock(completionBlockCopy);
            v168 = messageUUID3;
            v169 = v124;
            v166 = v121;
            v167 = deliveryStatusContext3;
            v164 = command3;
            v165 = v120;
            v163 = v118;
            v161 = v177;
            v162 = v116;
            v159 = destinations3;
            v160 = v179;
            v157 = bulkedPayload2;
            v158 = fromID4;
            v155 = v189;
            v156 = v183;
            v153 = messageUUID2;
            v154 = v191;
            v142 = fromID3;
            v146 = command2;
            _IDSLogV();

            if (v175)
            {
            }

            if (isKindOfClass)
            {
            }

            goto LABEL_201;
          }

          message9 = [parametersCopy message];
          v211 = [message9 objectForKey:@"c"];
          v72 = objc_opt_class();
          message10 = [parametersCopy message];
          v208 = sub_10001BA3C(v72, message10, @"fID");
          v73 = objc_opt_class();
          message11 = [parametersCopy message];
          v206 = sub_10001BA3C(v73, message11, @"fT");
          message12 = [parametersCopy message];
          v186 = [message12 objectForKey:@"g"];
          objc_opt_class();
          v196 = objc_opt_isKindOfClass();
          if (v196)
          {
            message13 = [parametersCopy message];
            v182 = [message13 objectForKey:@"g"];
            v180 = [NSData _IDSDataFromBase64String:v182];
          }

          else
          {
            message13 = [parametersCopy message];
            v182 = [message13 objectForKey:@"g"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              LODWORD(message6) = 0;
              v180 = 0;
              goto LABEL_133;
            }

            message14 = [parametersCopy message];
            v180 = [message14 objectForKey:@"g"];
          }

          LODWORD(message6) = v196 ^ 1;
LABEL_133:
          v198 = JWUUIDPushObjectToString();
          message15 = [parametersCopy message];
          v200 = [message15 objectForKey:@"t"];
          v97 = objc_opt_class();
          message16 = [parametersCopy message];
          v204 = sub_10001BA3C(v97, message16, @"tID");
          bulkedPayload3 = [parametersCopy bulkedPayload];
          fromID5 = [parametersCopy fromID];
          destinations4 = [parametersCopy destinations];
          v98 = @"YES";
          if ([parametersCopy useDictAsTopLevel])
          {
            v99 = @"YES";
          }

          else
          {
            v99 = @"NO";
          }

          v174 = v99;
          if ([parametersCopy encryptPayload])
          {
            v100 = @"YES";
          }

          else
          {
            v100 = @"NO";
          }

          if ([parametersCopy wantsResponse])
          {
            v101 = @"YES";
          }

          else
          {
            v101 = @"NO";
          }

          [parametersCopy timeout];
          v103 = v102;
          command4 = [parametersCopy command];
          if ([parametersCopy wantsDeliveryStatus])
          {
            v104 = @"YES";
          }

          else
          {
            v104 = @"NO";
          }

          if ([parametersCopy wantsCertifiedDelivery])
          {
            v105 = @"YES";
          }

          else
          {
            v105 = @"NO";
          }

          deliveryStatusContext4 = [parametersCopy deliveryStatusContext];
          messageUUID4 = [parametersCopy messageUUID];
          if ([parametersCopy priority] == 300)
          {
            v108 = @"URGENT";
          }

          else if ([parametersCopy priority] == 200)
          {
            v108 = @"Default";
          }

          else
          {
            v108 = @"Sync";
          }

          if (![parametersCopy localDelivery])
          {
            v98 = @"NO";
          }

          v109 = objc_retainBlock(completionBlockCopy);
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
          v247 = bulkedPayload3;
          v248 = 2112;
          v249 = fromID5;
          v250 = 2112;
          v251 = destinations4;
          v252 = 2112;
          v253 = v174;
          v254 = 2112;
          v255 = v100;
          v256 = 2112;
          v257 = v101;
          v258 = 2048;
          v259 = v103;
          v260 = 2112;
          v261 = command4;
          v262 = 2112;
          v263 = v104;
          v264 = 2112;
          v265 = v105;
          v266 = 2112;
          v267 = deliveryStatusContext4;
          v268 = 2112;
          v269 = messageUUID4;
          v270 = 2112;
          v271 = v108;
          v272 = 2112;
          v273 = v98;
          v274 = 2048;
          v275 = v109;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "sendMessage { c = %@   fID = %@   fT = %@   g = %@   t = %@   tID = %@ } bulkedPayload %@ fromID %@   toDestinations %@   useDictAsTopLevel %@  encryptPayload %@  wantsResponse %@  timeout %f  command %@ wantsDeliveryStatus %@ wantsCertifiedDelivery %@ deliveryStatusContext %@ messageUUID %@  priority %@ localDelivery %@  completionBlock %p", buf, 0xD4u);

          if (message6)
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
        _FTCopyOptionallyGzippedData = 0;
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

    originalfromID = [parametersCopy originalfromID];
    v15 = [originalfromID length] == 0;

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

      displayName = [(IDSDAccount *)self displayName];
      _stripFZIDPrefix2 = [displayName _stripFZIDPrefix];

      primaryRegistration2 = [(IDSDAccount *)self primaryRegistration];
      dsHandle2 = [primaryRegistration2 dsHandle];
      _stripFZIDPrefix3 = [dsHandle2 _stripFZIDPrefix];

      service8 = [(IDSDAccount *)self service];
      [service8 shouldRegisterUsingDSHandle];

      unprefixedURIStringsFromRegistration2 = [(IDSDAccount *)self unprefixedURIStringsFromRegistration];
      pseudonyms = [(IDSDAccount *)self pseudonyms];
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

      primaryRegistration3 = [(IDSDAccount *)self primaryRegistration];
      dsHandle3 = [primaryRegistration3 dsHandle];
      _stripFZIDPrefix2 = [dsHandle3 _stripFZIDPrefix];

      service9 = [(IDSDAccount *)self service];
      [service9 shouldRegisterUsingDSHandle];

      fromID6 = [parametersCopy fromID];
      v22 = [(IDSDAccount *)self pseudonymForPseudonymURIString:fromID6];
      v23 = v22 == 0;

      if (!v23)
      {
        goto LABEL_32;
      }

      _stripFZIDPrefix3 = [parametersCopy fromID];
      unprefixedURIStringsFromRegistration2 = [(IDSDAccount *)selfCopy unprefixedURIStringsFromRegistration];
      pseudonyms = [(IDSDAccount *)selfCopy pseudonyms];
      v27 = _IDSCopyCallerIDWithPseudonyms();
    }

    v36 = v27;
    [parametersCopy setFromID:v27];

LABEL_32:
    goto LABEL_33;
  }

  v28 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    uniqueID = [(IDSDAccount *)self uniqueID];
    *buf = 138412290;
    *v236 = uniqueID;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    uniqueID2 = [(IDSDAccount *)self uniqueID];
    _IDSWarnV();

    uniqueID3 = [(IDSDAccount *)self uniqueID];
    _IDSLogV();

    uniqueID4 = [(IDSDAccount *)self uniqueID];
    _IDSLogTransport();
  }

  if (completionBlockCopy)
  {
    v30 = [[IDSDeliveryContext alloc] initWithResponseCode:9 error:0 lastCall:1];
    (*(completionBlockCopy + 2))(completionBlockCopy, v30);
  }

LABEL_215:
}

- (void)sendMessage:(id)message params:(id)params bulkedPayload:(id)payload fromID:(id)d toDestinations:(id)destinations useDictAsTopLevel:(BOOL)level dataToEncrypt:(id)encrypt encryptPayload:(BOOL)self0 wantsResponse:(BOOL)self1 expirationDate:(id)self2 command:(id)self3 wantsDeliveryStatus:(BOOL)self4 wantsCertifiedDelivery:(BOOL)self5 deliveryStatusContext:(id)self6 messageUUID:(id)self7 priority:(int64_t)self8 localDelivery:(BOOL)self9 disallowRefresh:(BOOL)refresh willSendBlock:(id)block completionBlock:(id)completionBlock
{
  levelCopy = level;
  messageCopy = message;
  paramsCopy = params;
  payloadCopy = payload;
  dCopy = d;
  destinationsCopy = destinations;
  encryptCopy = encrypt;
  dateCopy = date;
  commandCopy = command;
  contextCopy = context;
  iDCopy = iD;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if ([(IDSDAccount *)self isRegistrationActive])
  {
    if (!paramsCopy)
    {
      paramsCopy = objc_alloc_init(IDSSendParameters);
    }

    [paramsCopy setMessage:messageCopy];
    [paramsCopy setBulkedPayload:payloadCopy];
    [paramsCopy setFromID:dCopy];
    [paramsCopy setDestinations:destinationsCopy];
    [paramsCopy setUseDictAsTopLevel:levelCopy];
    [paramsCopy setDataToEncrypt:encryptCopy];
    [paramsCopy setEncryptPayload:encryptPayload];
    [paramsCopy setWantsResponse:response];
    if (dateCopy)
    {
      [dateCopy timeIntervalSinceNow];
      [paramsCopy setTimeout:?];
    }

    [paramsCopy setCommand:commandCopy];
    [paramsCopy setWantsDeliveryStatus:status];
    [paramsCopy setWantsCertifiedDelivery:delivery];
    [paramsCopy setDeliveryStatusContext:contextCopy];
    [paramsCopy setMessageUUID:iDCopy];
    [paramsCopy setPriority:priority];
    [paramsCopy setLocalDelivery:localDelivery];
    [paramsCopy setDisallowRefresh:refresh];
    [(IDSDAccount *)self sendMessageWithSendParameters:paramsCopy willSendBlock:blockCopy completionBlock:completionBlockCopy];
    v34 = completionBlockCopy;
  }

  else
  {
    v35 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      uniqueID = [(IDSDAccount *)self uniqueID];
      *buf = 138412290;
      v48 = uniqueID;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Registration is not active on account %@, ignoring...", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      uniqueID2 = [(IDSDAccount *)self uniqueID];
      _IDSWarnV();

      uniqueID3 = [(IDSDAccount *)self uniqueID];
      _IDSLogV();

      uniqueID4 = [(IDSDAccount *)self uniqueID];
      _IDSLogTransport();
    }

    if (completionBlockCopy)
    {
      v37 = [[IDSDeliveryContext alloc] initWithResponseCode:9 error:0 lastCall:1];
      (*(completionBlockCopy + 2))(completionBlockCopy, v37);
    }

    v34 = completionBlockCopy;
  }
}

- (void)decryptMessageData:(id)data guid:(id)guid localURI:(id)i remoteURI:(id)rI pushToken:(id)token groupID:(id)d command:(id)command encryptionType:(int64_t)self0 isLiveRetry:(BOOL)self1 replayKey:(id)self2 incomingMetric:(id)self3 completionBlock:(id)self4
{
  dataCopy = data;
  guidCopy = guid;
  iCopy = i;
  rICopy = rI;
  tokenCopy = token;
  dCopy = d;
  commandCopy = command;
  keyCopy = key;
  metricCopy = metric;
  blockCopy = block;
  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [dataCopy length];
    v24 = objc_retainBlock(blockCopy);
    *buf = 134219266;
    v63 = v23;
    v64 = 2112;
    v65 = iCopy;
    v66 = 2112;
    v67 = rICopy;
    v68 = 2112;
    v69 = tokenCopy;
    v70 = 2048;
    typeCopy = type;
    v72 = 2048;
    v73 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "decryptMessageData length: %lu   myURI %@   fromURI %@   token %@   encryptionType %ld   completionBlock %p", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = [dataCopy length];
    typeCopy2 = type;
    v52 = objc_retainBlock(blockCopy);
    v48 = rICopy;
    v49 = tokenCopy;
    v43 = v25;
    v47 = iCopy;
    _IDSLogV();
  }

  if ([(IDSDAccount *)self isRegistrationActive:v43])
  {
    if (!iCopy)
    {
      loginID = [(IDSDAccount *)self loginID];
      _bestGuessURI = [loginID _bestGuessURI];
      iCopy = [IDSURI URIWithPrefixedURI:_bestGuessURI];
    }

    primaryRegistration = [(IDSDAccount *)self primaryRegistration];
    registrationCert = [primaryRegistration registrationCert];

    v30 = type - 1;
    if (type - 1) < 6 && ((0x39u >> v30))
    {
      v54 = qword_1009ABFB8[v30];
      v31 = [IDSCryptionContext alloc];
      v32 = +[IDSPushHandler sharedInstance];
      pushToken = [v32 pushToken];
      v34 = [IDSPushToken pushTokenWithData:pushToken];
      service = [(IDSDAccount *)self service];
      identifier = [service identifier];
      v37 = [(IDSCryptionContext *)v31 initWithGuid:guidCopy sendingURI:rICopy sendingPushToken:tokenCopy receivingURI:iCopy receivingPushToken:v34 service:identifier];

      [(IDSCryptionContext *)v37 setMessageType:[(IDSDAccount *)self messageTypeForCommand:commandCopy]];
      [(IDSCryptionContext *)v37 setIncomingMetric:metricCopy];
      [(IDSCryptionContext *)v37 setCommand:commandCopy];
      v38 = +[IDSEncryptionController sharedInstance];
      service2 = [(IDSDAccount *)self service];
      identifier2 = [service2 identifier];
      LOBYTE(v50) = 0;
      [(IDSDecryptionMetadata *)v38 publicKeyDecryptData:dataCopy decryptionContext:v37 identity:registrationCert service:identifier2 priority:300 isRetry:retry replayKey:keyCopy publicKeyType:v54 completionBlock:blockCopy avoidMainQueue:v50];
    }

    else
    {
      v41 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = [NSNumber numberWithInteger:type];
        *buf = 138412290;
        v63 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Invalid encryption type -- failing {encryptionType: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        v45 = [NSNumber numberWithInteger:type];
        _IDSWarnV();

        v46 = [NSNumber numberWithInteger:type, v45];
        _IDSLogV();

        v44 = [NSNumber numberWithInteger:type, v46];
        _IDSLogTransport();
      }

      v37 = [NSError errorWithDomain:IDSDecryptionErrorDomain code:16 userInfo:0, v44];
      v38 = [[IDSDecryptionMetadata alloc] initWithEncryptionType:type];
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, v37, v38);
    }
  }

  else
  {
    registrationCert = +[IMRGLog warning];
    if (os_log_type_enabled(registrationCert, OS_LOG_TYPE_ERROR))
    {
      sub_10092C7C4(self, registrationCert);
    }
  }
}

- (BOOL)shouldIncludeDefaultDeviceAsDestinationForMessageWithParams:(id)params
{
  paramsCopy = params;
  fromID = [paramsCopy fromID];
  im_assert_primary_base_queue();
  pairingManager = [(IDSDAccount *)self pairingManager];
  isPaired = [pairingManager isPaired];

  if (!isPaired)
  {
    goto LABEL_15;
  }

  pairingManager2 = [(IDSDAccount *)self pairingManager];
  isCurrentDeviceTinkerConfiguredWatch = [pairingManager2 isCurrentDeviceTinkerConfiguredWatch];

  if (isCurrentDeviceTinkerConfiguredWatch)
  {
    goto LABEL_15;
  }

  pairingManager3 = [(IDSDAccount *)self pairingManager];
  v11 = [pairingManager3 activePairedDeviceHasPairingType:1];

  if (v11)
  {
    goto LABEL_15;
  }

  service = [(IDSDAccount *)self service];
  shouldAllowProxyDelivery = [service shouldAllowProxyDelivery];

  if (!shouldAllowProxyDelivery)
  {
    goto LABEL_15;
  }

  service2 = [(IDSDAccount *)self service];
  identifier = [service2 identifier];
  v16 = IDSServiceNameiMessage;
  if (![identifier isEqualToString:IDSServiceNameiMessage])
  {
    goto LABEL_12;
  }

  command = [paramsCopy command];
  if (![command isEqualToNumber:&off_100C3CD78] || (objc_msgSend(paramsCopy, "deliveryMinimumTime"), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_12:
    goto LABEL_13;
  }

  queueOneIdentifier = [paramsCopy queueOneIdentifier];

  if (queueOneIdentifier)
  {
    pairingManager4 = [(IDSDAccount *)self pairingManager];
    pairedDeviceSupportsSendLaterMessages = [pairingManager4 pairedDeviceSupportsSendLaterMessages];

    if ((pairedDeviceSupportsSendLaterMessages & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  service3 = [(IDSDAccount *)self service];
  identifier2 = [service3 identifier];
  if ([identifier2 isEqualToString:v16])
  {
    command2 = [paramsCopy command];
    v25 = [command2 isEqualToNumber:&off_100C3CD90];

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

  accountController = [(IDSDAccount *)self accountController];
  service4 = [(IDSDAccount *)self service];
  v48 = [accountController accountsOnService:service4];

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

          defaultPairedDependentRegistration = [*(*(&v54 + 1) + 8 * i) defaultPairedDependentRegistration];
          if (defaultPairedDependentRegistration)
          {
            v32 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v59 = defaultPairedDependentRegistration;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Found Default paired device %@ ", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v41 = defaultPairedDependentRegistration;
              _IDSLogV();
            }

            v33 = [defaultPairedDependentRegistration objectForKey:{v43, v41}];
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
                    v61 = fromID;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Comparing %@  To %@ ", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
                  {
                    v41 = v38;
                    v42 = fromID;
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