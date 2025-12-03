@interface _IDSService
+ (id)deviceForFromID:(id)d fromDevices:(id)devices;
- (BOOL)_canAccount:(id)account sendWithFromID:(id)d;
- (BOOL)canSend;
- (BOOL)canSendMessageWithAccount:(id)account toDestination:(id)destination;
- (BOOL)cancelIdentifier:(id)identifier error:(id *)error;
- (BOOL)cancelMessageWithOptions:(id)options destination:(id)destination identifier:(id *)identifier error:(id *)error;
- (BOOL)cancelMessageWithOptions:(id)options destinations:(id)destinations identifier:(id *)identifier error:(id *)error;
- (BOOL)cancelMessageWithOptions:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)cancelOpportunisticDataWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)getProgressUpdateForIdentifier:(id)identifier error:(id *)error;
- (BOOL)isPretendingToBeFull;
- (BOOL)needsLaunchOnNearbyDevicesChanged;
- (BOOL)noteMetricOfType:(int64_t)type context:(id)context;
- (BOOL)reportSpamMessage:(id)message;
- (BOOL)sendAccessoryData:(id)data toAccessoryID:(id)d accessToken:(id)token options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendAheadGroup:(id)group priority:(int64_t)priority options:(id)options identifier:(id *)identifier completion:(id)completion;
- (BOOL)sendBatchMessageProcessedContext:(id)context;
- (BOOL)sendCertifiedDeliveryReceipt:(id)receipt;
- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendData:(id)data priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitation:(id)invitation fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitationUpdate:(id)update fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendOpportunisticData:(id)data options:(id)options identifier:(id)identifier error:(id *)error;
- (BOOL)sendProtobuf:(id)protobuf fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)self0;
- (BOOL)sendServerMessage:(id)message command:(id)command fromAccount:(id)account;
- (BOOL)setWakingPushPriority:(int64_t)priority error:(id *)error;
- (BOOL)updateSubServices:(id)services forDevice:(id)device;
- (IDSAccount)iCloudAccount;
- (IDSServiceProperties)serviceProperties;
- (NSArray)URIs;
- (NSArray)devices;
- (NSDictionary)pseudonymURIMap;
- (NSSet)accounts;
- (NSSet)internalAccounts;
- (NSString)serviceDomain;
- (_IDSService)initWithService:(id)service commands:(id)commands manuallyAckMessages:(BOOL)messages delegateContext:(id)context;
- (id)_accountWithURI:(id)i orPseudonym:(id)pseudonym;
- (id)_acknowledgementBlockWithDelegateIdentifier:(id)identifier;
- (id)_activeDeviceForUniqueID:(id)d;
- (id)_filteredAccountsFrom:(id)from;
- (id)_init;
- (id)_initWithDelegateContext:(id)context;
- (id)_payloadFromDecryptedData:(id)data;
- (id)_preferredURIForAccount:(id)account;
- (id)_sendingAccountForAccount:(id)account destination:(id)destination fromID:(id)d;
- (id)daemonListener;
- (id)datagramChannelForSessionDestination:(id)destination options:(id)options error:(id *)error;
- (id)datagramChannelForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)datagramConnectionForSessionDestination:(id)destination error:(id *)error;
- (id)datagramConnectionForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)deviceForFromID:(id)d;
- (id)deviceForUniqueID:(id)d;
- (id)devicesForBTUUID:(id)d;
- (id)firstRoutableInternetDestinationForSelf;
- (id)groupContextController:(id)controller accountsForAlises:(id)alises;
- (id)linkedDeviceForFromID:(id)d withRelationship:(int64_t)relationship;
- (id)linkedDevicesWithRelationship:(int64_t)relationship;
- (id)pseudonymForPseudonymURI:(id)i;
- (id)pseudonymPropertiesWithFeatureID:(id)d scopeID:(id)iD expiryDurationInSeconds:(double)seconds;
- (id)pseudonymsForMaskedURI:(id)i;
- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties;
- (id)streamConnectionForSessionDestination:(id)destination error:(id *)error;
- (id)streamConnectionForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)uriForFromID:(id)d;
- (int64_t)_messageTypeForCommand:(id)command;
- (int64_t)maxEffectivePayloadSize;
- (unint64_t)registrationRestrictionReason;
- (void)OTRTestCallback:(id)callback time:(double)time error:(id)error;
- (void)_callDelegatesForDevicesChanged;
- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group;
- (void)_callIsActiveChanged;
- (void)_callLinkedDevicesChanged;
- (void)_calloutPseudonymsDidUpdate;
- (void)_enforceSandboxPolicy;
- (void)_handlePretendingToBeFullWithIdentifier:(id *)identifier;
- (void)_loadCachedLinkedDevices;
- (void)_logConnectionMap;
- (void)_processAccountSet:(id)set;
- (void)_reloadCachedLinkedDevices;
- (void)_sendMissingMessageMetric:(id)metric;
- (void)_setupNewConnectionForAccount:(id)account;
- (void)_tearDownConnectionForUniqueID:(id)d;
- (void)_updateLinkedDevicesWithDevicesInfo:(id)info;
- (void)account:(id)account pseudonymsChanged:(id)changed;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)accountController:(id)controller accountDisabled:(id)disabled;
- (void)accountController:(id)controller accountEnabled:(id)enabled;
- (void)accountController:(id)controller accountRemoved:(id)removed;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)connection:(id)connection account:(id)account inviteDroppedForSessionID:(id)d fromID:(id)iD context:(id)context error:(id)error;
- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update;
- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context;
- (void)connection:(id)connection account:(id)account sessionInviteReceived:(id)received fromID:(id)d transportType:(id)type options:(id)options context:(id)context messageContext:(id)self0;
- (void)connection:(id)connection connectedDevicesChanged:(id)changed;
- (void)connection:(id)connection devicesChanged:(id)changed;
- (void)connection:(id)connection didCancelMessageWithSuccess:(BOOL)success error:(id)error identifier:(id)identifier;
- (void)connection:(id)connection didFlushCacheForKTPeerURI:(id)i;
- (void)connection:(id)connection didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid;
- (void)connection:(id)connection didHintCheckingTransportLogWithReason:(int64_t)reason;
- (void)connection:(id)connection didSendOpportunisticDataWithIdentifier:(id)identifier toIDs:(id)ds;
- (void)connection:(id)connection identifier:(id)identifier alternateCallbackID:(id)d willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations;
- (void)connection:(id)connection identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)connection:(id)connection identifier:(id)identifier fromURI:(id)i hasBeenDeliveredWithContext:(id)context;
- (void)connection:(id)connection incomingAccessoryData:(id)data fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingAccessoryReportMessage:(id)message accessoryID:(id)d controllerID:(id)iD context:(id)context;
- (void)connection:(id)connection incomingBatchMessage:(id)message;
- (void)connection:(id)connection incomingData:(id)data fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingEngramMessage:(id)message fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingGroupData:(id)data fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingInvitation:(id)invitation fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingInvitationUpdate:(id)update fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingMessage:(id)message fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingOpportunisticData:(id)data withIdentifier:(id)identifier fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingPendingMessageFromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingPendingResourceWithMetadata:(id)metadata guid:(id)guid fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingProtobuf:(id)protobuf fromURI:(id)i context:(id)context;
- (void)connection:(id)connection incomingTopLevelMessage:(id)message fromURI:(id)i messageContext:(id)context;
- (void)connection:(id)connection isActiveChanged:(BOOL)changed;
- (void)connection:(id)connection messageIdentifier:(id)identifier alternateCallbackID:(id)d updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call messageContext:(id)context;
- (void)connection:(id)connection nearbyDevicesChanged:(id)changed;
- (void)daemonConnected;
- (void)daemonDisconnected;
- (void)dealloc;
- (void)didSwitchActivePairedDevice:(id)device forService:(id)service wasHandled:(BOOL *)handled;
- (void)finishedProvisioningPseudonym:(id)pseudonym success:(BOOL)success error:(id)error forRequestUUID:(id)d;
- (void)finishedRenewingPseudonym:(id)pseudonym success:(BOOL)success error:(id)error requestUUID:(id)d;
- (void)finishedReportingRequestUUID:(id)d withError:(id)error;
- (void)finishedRevokingPseudonymWithSuccess:(BOOL)success error:(id)error requestUUID:(id)d;
- (void)finishedSigningForRequest:(id)request signedData:(id)data error:(id)error;
- (void)finishedVerifyingBatchedSignedDataForRequest:(id)request results:(id)results error:(id)error;
- (void)finishedVerifyingSignedDataForRequest:(id)request success:(BOOL)success error:(id)error;
- (void)groupContextController:(id)controller didCreateGroup:(id)group;
- (void)performGroupTask:(id)task;
- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties completion:(id)completion;
- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion;
- (void)resendSubServicesToDaemonForCurrentDevice;
- (void)revokePseudonym:(id)pseudonym requestProperties:(id)properties completion:(id)completion;
- (void)scheduleTransactionLogTask:(id)task;
- (void)sendAckForMessageWithContext:(id)context;
- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendServerMessage:(id)message options:(id)options completion:(id)completion;
- (void)sendServiceUpdateMessage:(id)message options:(id)options completion:(id)completion;
- (void)service:(id)service linkedDevicesUpdated:(id)updated;
- (void)service:(id)service restrictionReasonChanged:(unint64_t)changed;
- (void)service:(id)service tinkerDeviceAdded:(id)added;
- (void)service:(id)service tinkerDeviceRemoved:(id)removed;
- (void)service:(id)service tinkerDeviceUpdated:(id)updated;
- (void)setLinkPreferences:(id)preferences;
- (void)setPretendingToBeFull:(BOOL)full;
- (void)setWantsPseudonymUpdates:(BOOL)updates;
- (void)signData:(id)data withAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
- (void)startOTRTest:(int64_t)test;
- (void)testCloudQRConnection;
- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
@end

@implementation _IDSService

- (NSArray)devices
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A680();
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(_IDSService *)self accounts];
  v44 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v44)
  {
    v43 = *v62;
    v46 = v7;
    v47 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v8;
        v9 = *(*(&v61 + 1) + 8 * v8);
        _internal = [v9 _internal];
        lastGDRDate = [_internal lastGDRDate];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        _internal2 = [v9 _internal];
        devices = [_internal2 devices];

        v49 = devices;
        v51 = [devices countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v51)
        {
          v50 = *v58;
          v48 = lastGDRDate;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v58 != v50)
              {
                objc_enumerationMutation(v49);
              }

              v15 = *(*(&v57 + 1) + 8 * i);
              _internal3 = [v15 _internal];
              uniqueIDOverride = [_internal3 uniqueIDOverride];

              if (![uniqueIDOverride length])
              {
                _internal4 = [v15 _internal];
                uniqueID = [_internal4 uniqueID];

                uniqueIDOverride = uniqueID;
              }

              if ([uniqueIDOverride length])
              {
                v20 = [v6 objectForKey:uniqueIDOverride];
                v21 = [v7 objectForKey:uniqueIDOverride];
              }

              else
              {
                v21 = 0;
                v20 = 0;
              }

              if ([uniqueIDOverride length])
              {
                pushToken = 0;
              }

              else
              {
                _internal5 = [v15 _internal];
                pushToken = [_internal5 pushToken];

                if ([pushToken length])
                {
                  v24 = [v6 objectForKey:pushToken];

                  v25 = [v7 objectForKey:pushToken];

                  v21 = v25;
                  v20 = v24;
                }
              }

              if (!v20)
              {
                goto LABEL_27;
              }

              v52 = v21;
              v26 = [lastGDRDate laterDate:v21];
              v27 = [v26 isEqualToDate:lastGDRDate];

              if (v27)
              {

                v21 = v52;
LABEL_27:
                if ([uniqueIDOverride length])
                {
                  if (v15)
                  {
                    CFDictionarySetValue(v6, uniqueIDOverride, v15);
                  }

                  if (lastGDRDate)
                  {
                    v28 = v7;
                    v29 = uniqueIDOverride;
                    goto LABEL_45;
                  }
                }

                else if ([pushToken length])
                {
                  if (v15)
                  {
                    CFDictionarySetValue(v6, pushToken, v15);
                  }

                  if (lastGDRDate)
                  {
                    v28 = v7;
                    v29 = pushToken;
LABEL_45:
                    CFDictionarySetValue(v28, v29, lastGDRDate);
                  }
                }

                v20 = 0;
                goto LABEL_47;
              }

              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              _internal6 = [v15 _internal];
              identities = [_internal6 identities];

              v32 = [identities countByEnumeratingWithState:&v53 objects:v65 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = *v54;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v54 != v34)
                    {
                      objc_enumerationMutation(identities);
                    }

                    v36 = *(*(&v53 + 1) + 8 * j);
                    _internal7 = [v20 _internal];
                    [_internal7 _addIdentity:v36];
                  }

                  v33 = [identities countByEnumeratingWithState:&v53 objects:v65 count:16];
                }

                while (v33);
              }

              v7 = v46;
              v6 = v47;
              lastGDRDate = v48;
              v21 = v52;
LABEL_47:
            }

            v51 = [v49 countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v51);
        }

        v8 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v44);
  }

  allValues = [v6 allValues];
  v39 = [allValues copy];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (NSSet)accounts
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A540();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  accounts = [_internal accounts];

  v8 = [(_IDSService *)self _filteredAccountsFrom:accounts];

  return v8;
}

- (void)_enforceSandboxPolicy
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Enforcing sandbox policy...", &v14, 2u);
  }

  getpid();
  v4 = CUTProcessNameForPid();
  v5 = v4;
  if (self->_clientIsSandboxed)
  {
    v6 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = serviceName;
      v8 = "%@ (initializing service %@) is sandboxed";
LABEL_11:
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, v8, &v14, 0x16u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = qword_1ED5DDF48;
  v10 = v4;
  if (v9 != -1)
  {
    sub_195B3C7F8();
  }

  v11 = [qword_1ED5DDF50 containsObject:v10];

  v12 = +[IDSLogging _IDSService];
  v6 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = serviceName;
      v8 = "%@ (initializing service %@) is not sandboxed but is in the sandbox allowlist.  Not enforcing sandbox policy.";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_17;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C820(v10, self);
  }

  if (!isRunningTests())
  {
    abort();
  }

  throwsIDSAbortException();
LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_logConnectionMap
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38804();
    }
  }

  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Connection map:", v7, 2u);
  }

  [(NSMutableDictionary *)self->_uniqueIDToConnection enumerateKeysAndObjectsUsingBlock:&unk_1F09E6B00];
}

- (id)daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  listener = [v2 listener];

  return listener;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = _os_activity_create(&dword_1959FF000, "Framework init with service commands", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
    *buf = 134218242;
    selfCopy = self;
    v12 = 2112;
    v13 = serviceName;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "_IDSService - deallocing {self: %p, serviceName: %@}", buf, 0x16u);
  }

  daemonListener = [(_IDSService *)self daemonListener];
  [daemonListener removeHandler:self];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v7.receiver = self;
  v7.super_class = _IDSService;
  [(_IDSService *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)daemonDisconnected
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_completionBlocksByRequestID;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7), v11];
        second = [v8 second];

        if (second)
        {
          second[2](second);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_completionBlocksByRequestID removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_loadCachedLinkedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A860();
    }
  }

  if (!self->_linkedDevicesLoaded)
  {
    v6 = +[IDSDaemonController sharedInstance];
    [v6 blockUntilConnected];

    accounts = [(_IDSService *)self accounts];
    anyObject = [accounts anyObject];
    serviceName = [anyObject serviceName];

    daemonListener = [(_IDSService *)self daemonListener];
    v11 = [daemonListener linkedDevicesForService:serviceName];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v11];
    self->_linkedDevicesLoaded = 1;
  }
}

- (IDSAccount)iCloudAccount
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A400();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  accounts = [_internal accounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = accounts;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        _internal2 = [v12 _internal];
        accountType = [_internal2 accountType];

        if (accountType == 1)
        {
          v9 = v12;
          goto LABEL_15;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (IDSServiceProperties)serviceProperties
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A720();
    }
  }

  serviceProperties = self->_serviceProperties;

  return serviceProperties;
}

- (void)daemonConnected
{
  v10 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = _os_activity_create(&dword_1959FF000, "Framework Daemon Connected", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B38490();
    }
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AB4B54;
  v7[3] = &unk_1E7441CD8;
  v7[4] = self;
  [(_IDSService *)self _callDelegatesWithBlock:v7];
  if (self->_subServices)
  {
    [(_IDSService *)self resendSubServicesToDaemonForCurrentDevice];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_callIsActiveChanged
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38A84();
    }
  }

  accounts = [(_IDSService *)self accounts];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = accounts;
  v9 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v11)
        {
          objc_enumerationMutation(v8);
        }

        _internal = [*(*(&v39 + 1) + 8 * i) _internal];
        uniqueID = [_internal uniqueID];
        [v7 addObject:uniqueID];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    lastIsActiveSet = self->_lastIsActiveSet;
    *buf = 138412546;
    v45 = lastIsActiveSet;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "activeAccountsChanged, oldSet: %@  newSet: %@", buf, 0x16u);
  }

  p_lastIsActiveSet = &self->_lastIsActiveSet;
  v17 = self->_lastIsActiveSet;
  if (v17 && ([(NSMutableSet *)v17 isEqual:v7]& 1) == 0)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = sub_195AB7D50;
    v36[3] = &unk_1E7441E18;
    v37 = v8;
    selfCopy = self;
    [(_IDSService *)self _callDelegatesWithBlock:v36];
  }

  v19 = *p_lastIsActiveSet;
  objc_storeStrong(&self->_lastIsActiveSet, v7);
  v20 = [(NSMutableSet *)*p_lastIsActiveSet count];
  if (v20 != [(NSMutableSet *)v19 count]|| *p_lastIsActiveSet && v19 && ([(NSMutableSet *)*p_lastIsActiveSet isEqualToSet:v19]& 1) == 0)
  {
    _internal2 = [(IDSAccountController *)self->_accountController _internal];
    accounts2 = [_internal2 accounts];

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = accounts2;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          _internal3 = [*(*(&v32 + 1) + 8 * j) _internal];
          [v23 addObject:_internal3];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v26);
    }

    if (sub_195A0CBF4(v23))
    {
      iDSService = [MEMORY[0x1E69A6138] IDSService];
      if (os_log_type_enabled(iDSService, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, iDSService, OS_LOG_TYPE_DEFAULT, "*** dropping devicesChanged callback! -- accountsChanged", buf, 2u);
      }
    }

    else
    {
      [(_IDSService *)self _callDelegatesForDevicesChanged];
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_callDelegatesForDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B398C0();
    }
  }

  devices = [(_IDSService *)self devices];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A0E018;
  v8[3] = &unk_1E7441E18;
  v8[4] = self;
  v9 = devices;
  v7 = devices;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
}

- (id)_initWithDelegateContext:(id)context
{
  contextCopy = context;
  _init = [(_IDSService *)self _init];
  if (_init)
  {
    v6 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    v7 = _init[5];
    _init[5] = v6;
  }

  return _init;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _IDSService;
  return [(_IDSService *)&v3 init];
}

- (_IDSService)initWithService:(id)service commands:(id)commands manuallyAckMessages:(BOOL)messages delegateContext:(id)context
{
  messagesCopy = messages;
  v57 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  commandsCopy = commands;
  contextCopy = context;
  if (!_IDSRunningInDaemon())
  {
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v48 = _os_activity_create(&dword_1959FF000, "Framework init with service, commands", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v48, &state);
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x1E696AF00] callStackSymbols];
        objc_claimAutoreleasedReturnValue();
        sub_195B381FC();
      }
    }

    v46.receiver = self;
    v46.super_class = _IDSService;
    self = [(_IDSService *)&v46 init];
    if (!self)
    {
      goto LABEL_22;
    }

    v18 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      *buf = 134218754;
      selfCopy = self;
      if (messagesCopy)
      {
        v19 = @"YES";
      }

      v51 = 2112;
      v52 = serviceCopy;
      v53 = 2112;
      v54 = commandsCopy;
      v55 = 2112;
      v56 = v19;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "_IDSService - initing {self: %p, service: %@, commands: %@, manualAck: %@}", buf, 0x2Au);
    }

    v20 = [objc_alloc(MEMORY[0x1E69A5408]) initWithServiceIdentifier:serviceCopy];
    serviceProperties = self->_serviceProperties;
    self->_serviceProperties = v20;

    if (!self->_serviceProperties)
    {
      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_195B3824C();
      }

      selfCopy2 = 0;
      goto LABEL_26;
    }

    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    if ([mEMORY[0x1E69A60F0] isInternalInstall] && (_os_feature_enabled_impl() & 1) == 0)
    {
      v45 = [serviceCopy containsString:@"com.apple.private.alloy.accessibility.local"];

      if ((v45 & 1) == 0)
      {
        getpid();
        self->_clientIsSandboxed = sandbox_check() != 0;
        [(_IDSService *)self _enforceSandboxPolicy];
        goto LABEL_19;
      }
    }

    else
    {
    }

    self->_clientIsSandboxed = 1;
LABEL_19:
    v23 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    delegateContext = self->_delegateContext;
    self->_delegateContext = v23;

    v25 = [commandsCopy copy];
    commands = self->_commands;
    self->_commands = v25;

    v27 = [[IDSAccountController alloc] _initWithService:serviceCopy];
    accountController = self->_accountController;
    self->_accountController = v27;

    _internal = [(IDSAccountController *)self->_accountController _internal];
    v30 = +[IDSInternalQueueController sharedInstance];
    queue = [v30 queue];
    [_internal addDelegate:self queue:queue];

    lastIsActiveSet = self->_lastIsActiveSet;
    self->_lastIsActiveSet = 0;

    v33 = [IDSGroupContextController alloc];
    v34 = +[IDSInternalQueueController sharedInstance];
    queue2 = [v34 queue];
    v36 = [(IDSGroupContextController *)v33 initWithServiceName:serviceCopy queue:queue2 delegate:self];
    groupContextController = self->_groupContextController;
    self->_groupContextController = v36;

    v38 = objc_alloc_init(IDSQuickSwitchAcknowledgementTracker);
    acknowledgementTracker = self->_acknowledgementTracker;
    self->_acknowledgementTracker = v38;

    self->_manuallyAckMessages = messagesCopy;
    mEMORY[0x1E69A60F0]2 = [MEMORY[0x1E69A60F0] sharedInstance];
    LOBYTE(v34) = [mEMORY[0x1E69A60F0]2 isNonUIInstall];

    if ((v34 & 1) == 0)
    {
      [(_IDSService *)self _processAccountSet:0];
    }

    daemonListener = [(_IDSService *)self daemonListener];
    [daemonListener addHandler:self];

LABEL_22:
    selfCopy2 = self;
LABEL_26:
    os_activity_scope_leave(&state);
    cut_arc_os_release();

    goto LABEL_27;
  }

  v13 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_195B382BC();
  }

  selfCopy2 = 0;
LABEL_27:

  v43 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38350();
    }
  }

  if (delegateCopy && queueCopy)
  {
    v11 = [(NSMapTable *)self->_delegateToInfo objectForKey:delegateCopy];

    if (!v11)
    {
      if (!self->_delegateToInfo)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        delegateToInfo = self->_delegateToInfo;
        self->_delegateToInfo = weakToStrongObjectsMapTable;
      }

      v14 = objc_alloc_init(MEMORY[0x1E69A5228]);
      [v14 setQueue:queueCopy];
      [(NSMapTable *)self->_delegateToInfo setObject:v14 forKey:delegateCopy];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195AB38C0;
    v17[3] = &unk_1E743E878;
    v17[4] = self;
    v15 = MEMORY[0x19A8BBEF0](v17);
    v16 = v15;
    if (v15)
    {
      (*(v15 + 16))(v15);
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  v16 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v5 = [(IDSQuickSwitchAcknowledgementTracker *)self->_acknowledgementTracker identifierForServiceDelegate:delegateCopy];
    if (v5)
    {
      [(_IDSService *)self _stopAwaitingQuickSwitchAcknowledgementFromDelegateWithIdentifier:v5];
    }

    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:delegateCopy];
    if (![(NSMapTable *)self->_delegateToInfo count])
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;
    }

    v7 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v10 = 134218498;
      selfCopy = self;
      v12 = 2112;
      v13 = serviceName;
      v14 = 2048;
      v15 = delegateCopy;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_IDSService - removed delegate {self: %p, serviceName %@, delegate: %p}", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group
{
  v67 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  callbackBlockCopy = callbackBlock;
  callbacksBlockCopy = callbacksBlock;
  groupCopy = group;
  groupCopy6 = groupCopy;
  v51 = callbackBlockCopy;
  if (callbackBlockCopy)
  {
    group = groupCopy;
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B383F0();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    context = objc_autoreleasePoolPush();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = self->_delegateToInfo;
    v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v63;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          v26 = [(NSMapTable *)self->_delegateToInfo objectForKey:v25];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && (!selector || (objc_opt_respondsToSelector() & 1) != 0))
          {
            [v18 addObject:v25];
            [v19 addObject:v27];
          }
        }

        v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v22);
    }

    objc_autoreleasePoolPop(context);
    groupCopy6 = group;
    if ([v18 count])
    {
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [v18 objectAtIndex:0];
        v32 = [v19 objectAtIndex:0];
        [v18 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v30);
        v33 = [v18 count];
        queue = [v32 queue];
        if (groupCopy6)
        {
          dispatch_group_enter(groupCopy6);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        queue2 = [v35 queue];

        if (queue == queue2)
        {
          if (selector)
          {
            groupCopy6 = group;
            if (blockCopy != 0 && (v29 & 1) != 0)
            {
              blockCopy[2](blockCopy, 1);
            }

            (v51)[2](v51, v31);
            if (callbacksBlockCopy && !v33)
            {
              callbacksBlockCopy[2](callbacksBlockCopy, 1);
            }
          }

          else
          {
            (v51)[2](v51, v31);
            groupCopy6 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!groupCopy6)
          {
            goto LABEL_42;
          }
        }

        else if (queue)
        {
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = sub_195AB4A98;
          v53[3] = &unk_1E7440E10;
          selectorCopy = selector;
          v60 = v29 & 1;
          v56 = blockCopy;
          v57 = v51;
          v54 = v31;
          v61 = v33 == 0;
          v58 = callbacksBlockCopy;
          v55 = v32;
          v37 = MEMORY[0x19A8BBEF0](v53);
          v38 = v37;
          if (queue == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          groupCopy6 = group;
          if (group)
          {
            dispatch_group_async(group, queue, v42);
          }

          else
          {
            dispatch_async(queue, v42);
          }

          if (!group)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v40 = objc_opt_self();
          v41 = objc_opt_self();
          groupCopy6 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(groupCopy6);
LABEL_42:

        v29 = 0;
      }

      while ([v18 count]);
    }

    v45 = objc_opt_self();
    v46 = objc_opt_self();
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)OTRTestCallback:(id)callback time:(double)time error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  errorCopy = error;
  v10 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v10 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B384E0();
    }
  }

  v13 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v23 = 2112;
    v24 = callbackCopy;
    v25 = 2048;
    timeCopy = time;
    v27 = 1024;
    v28 = errorCopy == 0;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%@: OTRTestCallback: token is %@, setupTime is %.6f, error==nil is %d", buf, 0x26u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AB4DAC;
  v17[3] = &unk_1E7441D00;
  v17[4] = self;
  v18 = callbackCopy;
  timeCopy2 = time;
  v19 = errorCopy;
  v14 = errorCopy;
  v15 = callbackCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection didCancelMessageWithSuccess:(BOOL)success error:(id)error identifier:(id)identifier
{
  successCopy = success;
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  identifierCopy = identifier;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38580();
    }
  }

  v14 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    *buf = 138413058;
    selfCopy = self;
    if (successCopy)
    {
      v15 = @"YES";
    }

    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = errorCopy;
    v29 = 2112;
    v30 = identifierCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@: didCancelMessageWithSuccess: %@ error: %@ identifier %@", buf, 0x2Au);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AB500C;
  v19[3] = &unk_1E7441D28;
  v22 = successCopy;
  v19[4] = self;
  v20 = errorCopy;
  v21 = identifierCopy;
  v16 = identifierCopy;
  v17 = errorCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)didSwitchActivePairedDevice:(id)device forService:(id)service wasHandled:(BOOL *)handled
{
  v117 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  serviceCopy = service;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38620();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];

  aCKTracker = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(aCKTracker, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = serviceName;
    *&buf[12] = 2112;
    *&buf[14] = serviceCopy;
    *&buf[22] = 2112;
    v114 = deviceCopy;
    _os_log_impl(&dword_1959FF000, aCKTracker, OS_LOG_TYPE_DEFAULT, "%@ Switched active paired device for service name %@. deviceUniqueID: %@", buf, 0x20u);
  }

  if ([serviceName isEqualToIgnoringCase:serviceCopy])
  {
    if (handled)
    {
      *handled = 1;
    }

    [(IDSQuickSwitchAcknowledgementTracker *)self->_acknowledgementTracker stopAwaitingAcknowledgementFromAllServiceDelegates];
    object = [self->_delegateContext object];
    v111[0] = 0;
    v111[1] = v111;
    v111[2] = 0x2020000000;
    v112 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v114 = sub_195A007B4;
    v115 = sub_195A03D80;
    v116 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = sub_195AB5A84;
    v104[3] = &unk_1E7441D50;
    v109 = buf;
    v110 = v111;
    v14 = serviceName;
    v105 = v14;
    v15 = object;
    v106 = v15;
    selfCopy = self;
    v108 = serviceCopy;
    v16 = MEMORY[0x19A8BBEF0](v104);
    v17 = dispatch_group_create();
    dispatch_group_enter(v17);
    v102[0] = 0;
    v102[1] = v102;
    v102[2] = 0x2020000000;
    v103 = 0;
    v100[0] = 0;
    v100[1] = v100;
    v100[2] = 0x3032000000;
    v100[3] = sub_195A007B4;
    v100[4] = sub_195A03D80;
    v101 = 0;
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = sub_195AB5C94;
    v93[3] = &unk_1E7441D78;
    v18 = v14;
    v94 = v18;
    v19 = v16;
    v97 = v19;
    v20 = deviceCopy;
    v98 = v102;
    v99 = v100;
    v95 = v20;
    selfCopy2 = self;
    v44 = MEMORY[0x19A8BBEF0](v93);
    v21 = [MEMORY[0x1E6995700] weakRefWithObject:self];
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = sub_195AB5E68;
    v88[3] = &unk_1E7441DA0;
    v88[4] = self;
    v43 = v21;
    v89 = v43;
    v22 = v18;
    v90 = v22;
    v92 = v100;
    v23 = v15;
    v91 = v23;
    v45 = MEMORY[0x19A8BBEF0](v88);
    [(_IDSService *)self _callDelegatesRespondingToSelector:sel_service_didSwitchActivePairedDevice_acknowledgementBlock_ withPreCallbacksBlock:v44 callbackBlock:v45 postCallbacksBlock:0 group:v17];
    v86[0] = 0;
    v86[1] = v86;
    v86[2] = 0x2020000000;
    v87 = 0;
    v84[0] = 0;
    v84[1] = v84;
    v84[2] = 0x3032000000;
    v84[3] = sub_195A007B4;
    v84[4] = sub_195A03D80;
    v85 = 0;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = sub_195AB5FBC;
    v77[3] = &unk_1E7441D78;
    v24 = v22;
    v78 = v24;
    v25 = v19;
    v81 = v25;
    v26 = v20;
    v79 = v26;
    v82 = v86;
    v83 = v84;
    v27 = v23;
    v80 = v27;
    v46 = MEMORY[0x19A8BBEF0](v77);
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = sub_195AB60C0;
    v73[3] = &unk_1E7441DC8;
    v28 = v24;
    v74 = v28;
    v76 = v84;
    v29 = v27;
    v75 = v29;
    v47 = MEMORY[0x19A8BBEF0](v73);
    [(_IDSService *)self _callDelegatesRespondingToSelector:sel_service_devicesChanged_ withPreCallbacksBlock:v46 callbackBlock:v47 postCallbacksBlock:0 group:v17];
    v71[0] = 0;
    v71[1] = v71;
    v71[2] = 0x2020000000;
    v72 = 0;
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = sub_195A007B4;
    v69[4] = sub_195A03D80;
    v70 = 0;
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = sub_195AB61BC;
    v62[3] = &unk_1E7441D78;
    v30 = v28;
    v63 = v30;
    v31 = v25;
    v66 = v31;
    v32 = v26;
    v64 = v32;
    v67 = v71;
    v68 = v69;
    v33 = v29;
    v65 = v33;
    v34 = MEMORY[0x19A8BBEF0](v62);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = sub_195AB62C4;
    v58[3] = &unk_1E7441DC8;
    v35 = v30;
    v59 = v35;
    v61 = v69;
    v36 = v33;
    v60 = v36;
    v37 = MEMORY[0x19A8BBEF0](v58);
    [(_IDSService *)self _callDelegatesRespondingToSelector:sel_service_linkedDevicesChanged_ withPreCallbacksBlock:v34 callbackBlock:v37 postCallbacksBlock:0 group:v17];
    v38 = +[IDSInternalQueueController sharedInstance];
    queue = [v38 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB63C0;
    block[3] = &unk_1E7441DF0;
    v52 = v35;
    v54 = v31;
    v53 = v32;
    v55 = v100;
    v56 = v84;
    v57 = buf;
    v40 = v31;
    dispatch_group_notify(v17, queue, block);

    dispatch_group_leave(v17);
    _Block_object_dispose(v69, 8);

    _Block_object_dispose(v71, 8);
    _Block_object_dispose(v84, 8);

    _Block_object_dispose(v86, 8);
    _Block_object_dispose(v100, 8);

    _Block_object_dispose(v102, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v111, 8);
  }

  else
  {
    aCKTracker2 = [MEMORY[0x1E69A6138] ACKTracker];
    if (os_log_type_enabled(aCKTracker2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = serviceCopy;
      *&buf[12] = 2112;
      *&buf[14] = serviceName;
      _os_log_impl(&dword_1959FF000, aCKTracker2, OS_LOG_TYPE_DEFAULT, "Ignoring didSwitch callback for %@, mine is %@", buf, 0x16u);
    }

    if (handled)
    {
      *handled = 0;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (id)_activeDeviceForUniqueID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B386C4();
    }
  }

  if (dCopy)
  {
    [(_IDSService *)self linkedDevicesWithRelationship:3];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          uniqueID = [v13 uniqueID];
          if ([uniqueID isEqualToIgnoringCase:dCopy])
          {

LABEL_19:
            v17 = v13;
            goto LABEL_20;
          }

          uniqueIDOverride = [v13 uniqueIDOverride];
          v16 = [uniqueIDOverride isEqualToIgnoringCase:dCopy];

          if (v16)
          {
            goto LABEL_19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v17 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_20:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_acknowledgementBlockWithDelegateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [MEMORY[0x1E6995700] weakRefWithObject:self];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195AB6794;
  v14 = &unk_1E743EA30;
  v15 = v5;
  v16 = identifierCopy;
  v6 = identifierCopy;
  v7 = v5;
  v8 = MEMORY[0x19A8BBEF0](&v11);
  v9 = [v8 copy];

  return v9;
}

- (void)_callLinkedDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38764();
    }
  }

  v6 = [(NSMutableArray *)self->_linkedDevices copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AB6940;
  v8[3] = &unk_1E7441E18;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
}

- (void)service:(id)service tinkerDeviceAdded:(id)added
{
  v21 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = serviceCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceAdded (linkedDevices count: %@)", &v17, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6A80];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service tinkerDeviceRemoved:(id)removed
{
  v21 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = serviceCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceRemoved (linkedDevices count: %@)", &v17, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AA0];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service tinkerDeviceUpdated:(id)updated
{
  v21 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = serviceCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceUpdated (linkedDevices count: %@)", &v17, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AC0];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service linkedDevicesUpdated:(id)updated
{
  v21 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accounts = [(_IDSService *)self accounts];
  anyObject = [accounts anyObject];
  serviceName = [anyObject serviceName];
  v9 = [serviceCopy isEqualToString:serviceName];

  if (v9)
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = serviceCopy;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Service received %@ linkedDevicesUpdated (linkedDevices count: %@)", &v17, 0x16u);
    }

    daemonListener = [(_IDSService *)self daemonListener];
    v13 = [daemonListener linkedDevicesForService:serviceCopy];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AE0];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service restrictionReasonChanged:(unint64_t)changed
{
  serviceCopy = service;
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  v9 = [serviceCopy isEqualToString:identifier];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195AB7270;
    v10[3] = &unk_1E7441E40;
    v10[4] = self;
    v10[5] = changed;
    [(_IDSService *)self _callDelegatesWithBlock:v10];
  }
}

- (void)_setupNewConnectionForAccount:(id)account
{
  v28 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v7 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B388A4();
      }
    }

    if (accountCopy)
    {
      _internal = [accountCopy _internal];
      uniqueID = [_internal uniqueID];

      v12 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
      if (v12)
      {
        v13 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          _internal2 = [v12 _internal];
          v26 = 138412290;
          v27 = _internal2;
          _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_INFO, "We have an existing connection for this unique ID: %@", &v26, 0xCu);
        }
      }

      else
      {
        v13 = [IDSConnection _connectionWithAccount:accountCopy commands:self->_commands indirectDelegateCallouts:1];
        uniqueIDToConnection = self->_uniqueIDToConnection;
        if (!uniqueIDToConnection)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v17 = self->_uniqueIDToConnection;
          self->_uniqueIDToConnection = Mutable;

          uniqueIDToConnection = self->_uniqueIDToConnection;
        }

        [(NSMutableDictionary *)uniqueIDToConnection setObject:v13 forKey:uniqueID];
        v18 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412290;
          v27 = uniqueID;
          _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Setting up new connection for %@", &v26, 0xCu);
        }

        [(_IDSService *)self _logConnectionMap];
        if (self->_everHadDelegate)
        {
          v19 = +[IDSLogging _IDSService];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            listenerCaps = self->_listenerCaps;
            v26 = 67109120;
            LODWORD(v27) = listenerCaps;
            _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_INFO, "Setting up new connection with caps %d", &v26, 8u);
          }

          _internal3 = [v13 _internal];
          [_internal3 setDelegateCapabilities:self->_listenerCaps];

          _internal4 = [v13 _internal];
          v23 = +[IDSInternalQueueController sharedInstance];
          queue = [v23 queue];
          [_internal4 addDelegate:self queue:queue];

          [(_IDSService *)self connection:v13 devicesChanged:0];
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownConnectionForUniqueID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38944();
    }
  }

  if (dCopy)
  {
    v8 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:dCopy];
    _internal = [v8 _internal];
    [_internal removeDelegate:self];

    [(NSMutableDictionary *)self->_uniqueIDToConnection removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_uniqueIDToConnection count])
    {
      uniqueIDToConnection = self->_uniqueIDToConnection;
      self->_uniqueIDToConnection = 0;
    }

    v11 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = dCopy;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Tearing down connection for %@", &v13, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_processAccountSet:(id)set
{
  v63 = *MEMORY[0x1E69E9840];
  setCopy = set;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v7 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B389E4();
      }
    }

    context = objc_autoreleasePoolPush();
    if (!setCopy || (v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:setCopy]) == 0)
    {
      _internal = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal accounts];
      if (accounts)
      {
        v13 = objc_alloc(MEMORY[0x1E695DFD8]);
        _internal2 = [(IDSAccountController *)self->_accountController _internal];
        accounts2 = [_internal2 accounts];
        v10 = [v13 initWithSet:accounts2];
      }

      else
      {
        v10 = 0;
      }
    }

    v45 = setCopy;
    v16 = MEMORY[0x1E695DFD8];
    allKeys = [(NSMutableDictionary *)self->_uniqueIDToConnection allKeys];
    v46 = [v16 setWithArray:allKeys];

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v57;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v56 + 1) + 8 * i);
          _internal3 = [v25 _internal];
          uniqueID = [_internal3 uniqueID];

          if (uniqueID)
          {
            [v19 addObject:uniqueID];
            [v18 setObject:v25 forKey:uniqueID];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v22);
    }

    v28 = [v46 mutableCopy];
    [v28 minusSet:v19];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v53;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [(_IDSService *)self _tearDownConnectionForUniqueID:*(*(&v52 + 1) + 8 * j)];
        }

        v31 = [v29 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v31);
    }

    if (![(NSMutableDictionary *)self->_uniqueIDToConnection count])
    {
      uniqueIDToConnection = self->_uniqueIDToConnection;
      self->_uniqueIDToConnection = 0;
    }

    v35 = [v19 mutableCopy];
    [v35 minusSet:v46];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v49;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v49 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [v18 objectForKey:*(*(&v48 + 1) + 8 * k)];
          [(_IDSService *)self _setupNewConnectionForAccount:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v38);
    }

    v42 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "Finished processing accounts set.", buf, 2u);
    }

    [(_IDSService *)self _logConnectionMap];
    objc_autoreleasePoolPop(context);
    setCopy = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  addedCopy = added;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38B24();
    }
  }

  if (addedCopy)
  {
    [(_IDSService *)self _setupNewConnectionForAccount:addedCopy];
    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)controller accountRemoved:(id)removed
{
  removedCopy = removed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38BC4();
    }
  }

  if (removedCopy)
  {
    _internal = [removedCopy _internal];
    uniqueID = [_internal uniqueID];
    [(_IDSService *)self _tearDownConnectionForUniqueID:uniqueID];

    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)controller accountEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38C64();
    }
  }

  if (enabledCopy)
  {
    [(_IDSService *)self _setupNewConnectionForAccount:enabledCopy];
    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)controller accountDisabled:(id)disabled
{
  disabledCopy = disabled;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38D04();
    }
  }

  if (disabledCopy)
  {
    _internal = [disabledCopy _internal];
    uniqueID = [_internal uniqueID];
    [(_IDSService *)self _tearDownConnectionForUniqueID:uniqueID];

    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)connection:(id)connection incomingOpportunisticData:(id)data withIdentifier:(id)identifier fromURI:(id)i context:(id)context
{
  v70 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  identifierCopy = identifier;
  iCopy = i;
  contextCopy = context;
  v17 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v17 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38DA4();
    }
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v22 = v19;
    v23 = iCopy;
    v24 = dataCopy;
    v25 = identifierCopy;
    v26 = connectionCopy;
    if ([contextCopy usedEngram])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v65 = outgoingResponseIdentifier;
    v66 = 2112;
    v67 = v27;
    connectionCopy = v26;
    identifierCopy = v25;
    dataCopy = v24;
    iCopy = v23;
    v19 = v22;
    v68 = 2048;
    v69 = v28;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "incomingOpportunisticData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195AB8568;
  v57[3] = &unk_1E7441E88;
  v32 = contextCopy;
  v58 = v32;
  selfCopy = self;
  v33 = account;
  v60 = v33;
  v34 = dataCopy;
  v61 = v34;
  v35 = identifierCopy;
  v62 = v35;
  v36 = iCopy;
  v63 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v57 group:v19];
  if (!self->_manuallyAckMessages)
  {
    v47 = v35;
    wantsAppAck = [v32 wantsAppAck];
    [v32 storageGuid];
    v38 = v48 = v34;
    outgoingResponseIdentifier2 = [v32 outgoingResponseIdentifier];
    +[IDSInternalQueueController sharedInstance];
    v46 = v33;
    v41 = v40 = connectionCopy;
    queue = [v41 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB8774;
    block[3] = &unk_1E7441038;
    v56 = wantsAppAck;
    v35 = v47;
    v50 = v32;
    selfCopy2 = self;
    v52 = outgoingResponseIdentifier2;
    v53 = v36;
    v54 = v40;
    v55 = v38;
    v43 = v38;
    v44 = outgoingResponseIdentifier2;
    dispatch_group_notify(v19, queue, block);

    connectionCopy = v40;
    v33 = v46;

    v34 = v48;
  }

  dispatch_group_leave(v19);

  v45 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingData:(id)data fromURI:(id)i context:(id)context
{
  v92 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v14 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38E44();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v17 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v19 = dataCopy;
    if ([contextCopy usedEngram])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v83 = outgoingResponseIdentifier;
    v84 = 2112;
    v85 = v20;
    dataCopy = v19;
    v86 = 2048;
    v87 = v21;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "incomingData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v22 = +[IDSTransportLog IDSService];
  v64 = connectionCopy;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    v24 = iCopy;
    v25 = [dataCopy length];
    _internal2 = [connectionCopy _internal];
    _internal3 = [connectionCopy _internal];
    account2 = [_internal3 account];
    _internal4 = [account2 _internal];
    [contextCopy outgoingResponseIdentifier];
    v30 = v60 = dataCopy;
    *buf = 134219010;
    v83 = v25;
    iCopy = v24;
    self = selfCopy;
    v84 = 2112;
    v85 = _internal2;
    v86 = 2112;
    v87 = _internal4;
    v88 = 2112;
    v89 = iCopy;
    v90 = 2112;
    v91 = v30;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingData of size %lu on connection %@ account %@ from ID %@ sender-side-identifier %@", buf, 0x34u);

    connectionCopy = v64;
    dataCopy = v60;
  }

  v31 = dispatch_group_create();
  dispatch_group_enter(v31);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_195AB8F80;
  v76[3] = &unk_1E7441EB0;
  v33 = contextCopy;
  v77 = v33;
  selfCopy2 = self;
  v34 = account;
  v79 = v34;
  v35 = dataCopy;
  v80 = v35;
  v36 = iCopy;
  v81 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v76 group:v31];
  if (!self->_manuallyAckMessages)
  {
    v59 = v36;
    v63 = v34;
    wantsAppAck = [v33 wantsAppAck];
    isDirectMessage = [v33 isDirectMessage];
    outgoingResponseIdentifier2 = [v33 outgoingResponseIdentifier];
    storageGuid = [v33 storageGuid];
    broadcastTime = [v33 broadcastTime];

    if (broadcastTime)
    {
      v41 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v43 = v42;
      broadcastTime2 = [v33 broadcastTime];
      [broadcastTime2 doubleValue];
      v55 = [v41 numberWithDouble:v43 - v45];
    }

    else
    {
      v55 = 0;
    }

    v61 = v35;
    v46 = +[IDSLogging _IDSService];
    v47 = wantsAppAck;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = @"NO";
      *buf = 138413058;
      v83 = v33;
      if (wantsAppAck)
      {
        v48 = @"YES";
      }

      v84 = 2112;
      v85 = v48;
      v86 = 2112;
      v87 = outgoingResponseIdentifier2;
      v88 = 2112;
      v89 = storageGuid;
      _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v49 = +[IDSInternalQueueController sharedInstance];
    [v49 queue];
    v51 = v50 = outgoingResponseIdentifier2;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB9188;
    block[3] = &unk_1E7441ED8;
    v66 = v33;
    v74 = v47;
    v75 = isDirectMessage;
    connectionCopy = v64;
    v67 = v64;
    v68 = outgoingResponseIdentifier2;
    selfCopy3 = self;
    v36 = v59;
    v70 = v59;
    v71 = storageGuid;
    v72 = v56;
    v35 = v61;
    v73 = v61;
    v58 = v56;
    v52 = storageGuid;
    v53 = v50;
    dispatch_group_notify(v31, v51, block);

    v34 = v63;
  }

  dispatch_group_leave(v31);

  v54 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingGroupData:(id)data fromURI:(id)i context:(id)context
{
  v77 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v14 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38EE4();
    }
  }

  v16 = +[IDSTransportLog IDSService];
  v54 = iCopy;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    if ([contextCopy usedEngram])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v68 = outgoingResponseIdentifier;
    v69 = 2112;
    v70 = v18;
    iCopy = v54;
    v71 = 2048;
    v72 = v19;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "incomingGroupData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v20 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [dataCopy length];
    _internal = [connectionCopy _internal];
    _internal2 = [connectionCopy _internal];
    account = [_internal2 account];
    [account _internal];
    selfCopy = self;
    v25 = dataCopy;
    v27 = v26 = connectionCopy;
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    *buf = 134219010;
    v68 = v21;
    iCopy = v54;
    v69 = 2112;
    v70 = _internal;
    v71 = 2112;
    v72 = v27;
    v73 = 2112;
    v74 = v54;
    v75 = 2112;
    v76 = outgoingResponseIdentifier2;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "incomingGroupData of size %lu on connection %@ account %@ from ID %@ sender-side-identifier %@", buf, 0x34u);

    connectionCopy = v26;
    dataCopy = v25;
    self = selfCopy;
  }

  v29 = dispatch_group_create();
  dispatch_group_enter(v29);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  v31 = +[IDSInternalQueueController sharedInstance];
  queue = [v31 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AB99F4;
  block[3] = &unk_1E743EA30;
  block[4] = self;
  v33 = dataCopy;
  v66 = v33;
  dispatch_group_async(v29, queue, block);

  if (!self->_manuallyAckMessages)
  {
    v53 = connectionCopy;
    wantsAppAck = [contextCopy wantsAppAck];
    outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
    storageGuid = [contextCopy storageGuid];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v38 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v40 = v39;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      v43 = [v38 numberWithDouble:v40 - v42];
    }

    else
    {
      v43 = 0;
    }

    v44 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = @"NO";
      *buf = 138413058;
      v68 = contextCopy;
      if (wantsAppAck)
      {
        v45 = @"YES";
      }

      v69 = 2112;
      v70 = v45;
      v71 = 2112;
      v72 = outgoingResponseIdentifier3;
      v73 = 2112;
      v74 = storageGuid;
      _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v46 = +[IDSInternalQueueController sharedInstance];
    queue2 = [v46 queue];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = sub_195AB9DAC;
    v55[3] = &unk_1E7441F28;
    v64 = wantsAppAck;
    v56 = contextCopy;
    selfCopy2 = self;
    v58 = outgoingResponseIdentifier3;
    v59 = v54;
    connectionCopy = v53;
    v60 = v53;
    v61 = storageGuid;
    v62 = v43;
    v63 = v33;
    v51 = v43;
    v48 = storageGuid;
    v49 = outgoingResponseIdentifier3;
    dispatch_group_notify(v29, queue2, v55);

    iCopy = v54;
  }

  dispatch_group_leave(v29);

  v50 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingAccessoryData:(id)data fromURI:(id)i context:(id)context
{
  v72 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dataCopy = data;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(data) = [v14 assertQueueIsCurrent];

  if (data)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B38F84();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_195ABA46C;
  v58[3] = &unk_1E7441EB0;
  v20 = contextCopy;
  v59 = v20;
  selfCopy = self;
  v21 = account;
  v61 = v21;
  v22 = dataCopy;
  v62 = v22;
  v23 = iCopy;
  v63 = v23;
  [(_IDSService *)self _callDelegatesWithBlock:v58 group:v18];
  if (!self->_manuallyAckMessages)
  {
    v44 = v23;
    v46 = v21;
    v47 = connectionCopy;
    wantsAppAck = [v20 wantsAppAck];
    outgoingResponseIdentifier = [v20 outgoingResponseIdentifier];
    storageGuid = [v20 storageGuid];
    broadcastTime = [v20 broadcastTime];

    if (broadcastTime)
    {
      v28 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v30 = v29;
      broadcastTime2 = [v20 broadcastTime];
      [broadcastTime2 doubleValue];
      v42 = [v28 numberWithDouble:v30 - v32];
    }

    else
    {
      v42 = 0;
    }

    v45 = v22;
    v33 = +[IDSLogging _IDSService];
    v34 = wantsAppAck;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v35 = @"NO";
      *buf = 138413058;
      v65 = v20;
      if (wantsAppAck)
      {
        v35 = @"YES";
      }

      v66 = 2112;
      v67 = v35;
      v68 = 2112;
      v69 = outgoingResponseIdentifier;
      v70 = 2112;
      v71 = storageGuid;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v36 = +[IDSInternalQueueController sharedInstance];
    [v36 queue];
    v38 = v37 = outgoingResponseIdentifier;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABA674;
    block[3] = &unk_1E7441F28;
    v57 = v34;
    v49 = v20;
    selfCopy2 = self;
    v51 = outgoingResponseIdentifier;
    v23 = v44;
    v52 = v44;
    connectionCopy = v47;
    v53 = v47;
    v54 = storageGuid;
    v55 = v42;
    v22 = v45;
    v56 = v45;
    v43 = v42;
    v39 = storageGuid;
    v40 = v37;
    dispatch_group_notify(v18, v38, block);

    v21 = v46;
  }

  dispatch_group_leave(v18);

  v41 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingAccessoryReportMessage:(id)message accessoryID:(id)d controllerID:(id)iD context:(id)context
{
  v72 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v17 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v17 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39024();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195ABACB8;
  v57[3] = &unk_1E7441E88;
  v23 = contextCopy;
  v58 = v23;
  selfCopy = self;
  v24 = account;
  v60 = v24;
  v25 = messageCopy;
  v61 = v25;
  v26 = iDCopy;
  v62 = v26;
  v27 = dCopy;
  v63 = v27;
  [(_IDSService *)self _callDelegatesWithBlock:v57 group:v22];
  [v23 setWantsManualAck:self->_manuallyAckMessages];
  [v23 setFromID:v27];
  if (!self->_manuallyAckMessages)
  {
    v45 = v25;
    v46 = connectionCopy;
    wantsAppAck = [v23 wantsAppAck];
    outgoingResponseIdentifier = [v23 outgoingResponseIdentifier];
    storageGuid = [v23 storageGuid];
    broadcastTime = [v23 broadcastTime];

    if (broadcastTime)
    {
      v31 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v33 = v32;
      broadcastTime2 = [v23 broadcastTime];
      [broadcastTime2 doubleValue];
      broadcastTime = [v31 numberWithDouble:v33 - v35];
    }

    v44 = v24;
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = @"NO";
      *buf = 138413058;
      v65 = v23;
      if (wantsAppAck)
      {
        v37 = @"YES";
      }

      v66 = 2112;
      v67 = v37;
      v68 = 2112;
      v69 = outgoingResponseIdentifier;
      v70 = 2112;
      v71 = storageGuid;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v38 = +[IDSInternalQueueController sharedInstance];
    queue = [v38 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABAE9C;
    block[3] = &unk_1E7441010;
    v56 = wantsAppAck;
    v49 = v23;
    selfCopy2 = self;
    v51 = outgoingResponseIdentifier;
    v52 = v27;
    v53 = v46;
    v54 = storageGuid;
    v55 = broadcastTime;
    v40 = broadcastTime;
    v41 = storageGuid;
    v42 = outgoingResponseIdentifier;
    dispatch_group_notify(v22, queue, block);

    connectionCopy = v46;
    v24 = v44;
    v25 = v45;
  }

  dispatch_group_leave(v22);

  v43 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingInvitation:(id)invitation fromURI:(id)i context:(id)context
{
  v57 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  invitationCopy = invitation;
  iCopy = i;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v12 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B390C4();
    }
  }

  v46 = connectionCopy;
  _internal = [connectionCopy _internal];
  account = [_internal account];

  v16 = objc_alloc(MEMORY[0x1E696AFB0]);
  v17 = objc_opt_class();
  v18 = sub_195ABB4FC(v17, invitationCopy, *MEMORY[0x1E69A49E0]);
  v19 = [v16 initWithUUIDString:v18];

  v20 = objc_opt_class();
  v21 = sub_195ABB4FC(v20, invitationCopy, *MEMORY[0x1E69A49A8]);
  v22 = *MEMORY[0x1E69A49C0];
  v23 = [invitationCopy objectForKey:*MEMORY[0x1E69A49C0]];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    v25 = objc_opt_class();
    v26 = sub_195ABB4FC(v25, invitationCopy, v22);
    [v26 doubleValue];
    v27 = [v24 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_class();
  v29 = sub_195ABB4FC(v28, invitationCopy, *MEMORY[0x1E69A49D8]);
  intValue = [v29 intValue];
  v31 = intValue;

  if (intValue <= 5 && ((1 << intValue) & 0x3A) != 0)
  {
    v32 = objc_opt_class();
    v33 = sub_195ABB4FC(v32, v21, *MEMORY[0x1E69A49B8]);
    [v33 intValue];

    v34 = [[IDSDictionaryInvitationContext alloc] initWithPayload:v21];
    v35 = [IDSReceivedInvitation alloc];
    prefixedURI = [iCopy prefixedURI];
    v37 = [(IDSReceivedInvitation *)v35 initWithfromID:prefixedURI state:v31 expirationDate:v27 uniqueID:v19 context:v34];

    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    [(IDSReceivedInvitation *)v37 setSenderMergeID:senderCorrelationIdentifier];

    toID = [contextCopy toID];
    [(IDSReceivedInvitation *)v37 setSelfHandle:toID];

    v40 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v37;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "incomingInvitation: created invitation object from incoming message : {%@}", buf, 0xCu);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_195ABB5B8;
    v48[3] = &unk_1E7441F50;
    v49 = contextCopy;
    selfCopy = self;
    v51 = account;
    v52 = v37;
    v41 = v37;
    [(_IDSService *)self _callDelegatesWithBlock:v48];

    v42 = v46;
  }

  else
  {
    v34 = +[IDSLogging _IDSService];
    v42 = v46;
    if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v19 UUIDString];
      *buf = 134218242;
      v54 = v31;
      v55 = 2112;
      v56 = uUIDString;
      _os_log_impl(&dword_1959FF000, &v34->super, OS_LOG_TYPE_DEFAULT, "Invalid state {%ld} received in incomingInvitation. Dropping invitation %@", buf, 0x16u);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingInvitationUpdate:(id)update fromURI:(id)i context:(id)context
{
  v58 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  updateCopy = update;
  iCopy = i;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v12 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B391E0();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v16 = objc_alloc(MEMORY[0x1E696AFB0]);
  v17 = objc_opt_class();
  v18 = sub_195ABB4FC(v17, updateCopy, *MEMORY[0x1E69A49E0]);
  v19 = [v16 initWithUUIDString:v18];

  v20 = objc_opt_class();
  v21 = sub_195ABB4FC(v20, updateCopy, *MEMORY[0x1E69A49A8]);
  v22 = *MEMORY[0x1E69A49C0];
  v23 = [updateCopy objectForKey:*MEMORY[0x1E69A49C0]];

  v47 = connectionCopy;
  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    v25 = objc_opt_class();
    v26 = sub_195ABB4FC(v25, updateCopy, v22);
    [v26 doubleValue];
    v27 = [v24 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_class();
  v29 = sub_195ABB4FC(v28, updateCopy, *MEMORY[0x1E69A49D8]);
  intValue = [v29 intValue];
  v31 = intValue;

  if (intValue <= 5 && ((1 << intValue) & 0x3A) != 0)
  {
    v32 = objc_opt_class();
    v33 = sub_195ABB4FC(v32, v21, *MEMORY[0x1E69A49B8]);
    [v33 intValue];

    v34 = MEMORY[0x1E69A5240];
    prefixedURI = [iCopy prefixedURI];
    v36 = [v34 destinationWithURI:prefixedURI];

    v37 = [[IDSDictionaryInvitationContext alloc] initWithPayload:v21];
    v38 = [[IDSSentInvitation alloc] initWithDestination:v36 state:v31 expirationDate:v27 uniqueID:v19 context:v37];
    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    [(IDSSentInvitation *)v38 setSenderMergeID:senderCorrelationIdentifier];

    toID = [contextCopy toID];
    [(IDSSentInvitation *)v38 setSelfHandle:toID];

    v41 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v38;
      _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "incomingInvitationUpdate: created invitation object from incoming message : {%@}", buf, 0xCu);
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_195ABBC50;
    v49[3] = &unk_1E7441F50;
    v50 = contextCopy;
    selfCopy = self;
    v52 = account;
    v53 = v38;
    v42 = v38;
    [(_IDSService *)self _callDelegatesWithBlock:v49];

    v43 = v47;
  }

  else
  {
    v36 = +[IDSLogging _IDSService];
    v43 = v47;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [v19 UUIDString];
      *buf = 134218242;
      v55 = v31;
      v56 = 2112;
      v57 = uUIDString;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Invalid state {%ld} received in incomingInvitationUpdate. Dropping invitation %@", buf, 0x16u);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingMessage:(id)message fromURI:(id)i context:(id)context
{
  v138 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  iCopy = i;
  contextCopy = context;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v10 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39280();
    }
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v126 = _os_activity_create(&dword_1959FF000, "Service recieved message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v126, &state);
  _internal = [connectionCopy _internal];
  account = [_internal account];

  prefixedURI = [iCopy prefixedURI];
  v79 = [(_IDSService *)self deviceForFromID:prefixedURI];

  v14 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    _internal2 = [connectionCopy _internal];
    _internal3 = [connectionCopy _internal];
    account2 = [_internal3 account];
    _internal4 = [account2 _internal];
    _internal5 = [v79 _internal];
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    *buf = 138413314;
    v129 = _internal2;
    v130 = 2112;
    v131 = _internal4;
    v132 = 2112;
    v133 = iCopy;
    v134 = 2112;
    v135 = _internal5;
    v136 = 2112;
    v137 = outgoingResponseIdentifier;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "incomingMessage on connection %@ account %@ from ID %@  from device: %@  sender-side-identifier: %@", buf, 0x34u);
  }

  v21 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    usedEngram = [contextCopy usedEngram];
    v24 = [(NSMapTable *)self->_delegateToInfo count];
    v25 = @"NO";
    *buf = 138412802;
    v129 = outgoingResponseIdentifier2;
    if (usedEngram)
    {
      v25 = @"YES";
    }

    v130 = 2112;
    v131 = v25;
    v132 = 2048;
    v133 = v24;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "incomingMessage on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v26 = dispatch_group_create();
  dispatch_group_enter(v26);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI2 = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI2];

  resourceTransferURLString = [contextCopy resourceTransferURLString];
  v29 = resourceTransferURLString;
  if (!resourceTransferURLString)
  {
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = sub_195ABCFFC;
    v100[3] = &unk_1E7441EB0;
    v33 = contextCopy;
    v101 = v33;
    selfCopy = self;
    v34 = account;
    v103 = v34;
    v35 = messageCopy;
    v104 = v35;
    v36 = iCopy;
    v105 = v36;
    [(_IDSService *)self _callDelegatesWithBlock:v100 group:v26];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = sub_195ABD200;
    v94[3] = &unk_1E7441EB0;
    v95 = v33;
    selfCopy2 = self;
    v97 = v34;
    v98 = v35;
    v99 = v36;
    [(_IDSService *)self _callDelegatesWithBlock:v94 group:v26];

    v37 = 0;
    v32 = v101;
    goto LABEL_34;
  }

  v30 = resourceTransferURLString;
  fileSystemRepresentation = [v29 fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:fileSystemRepresentation];
  }

  else
  {
    v32 = 0;
  }

  resourceTransferMetadata = [contextCopy resourceTransferMetadata];
  resourceTransferSandboxExtension = [contextCopy resourceTransferSandboxExtension];
  if (([v32 containsString:@"/Library/IdentityServices/files/"] & 1) != 0 || objc_msgSend(v32, "containsString:", @"/Library/IdentityServices/incomingfiles/"))
  {
    v40 = [v32 containsString:@".."];
    v41 = v32 ? v40 : 1;
    if ((v41 & 1) == 0)
    {
      if (resourceTransferSandboxExtension)
      {
        v43 = resourceTransferSandboxExtension;
        [resourceTransferSandboxExtension UTF8String];
        v44 = sandbox_extension_consume();
        if (v44 == -1)
        {
          v42 = +[IDSLogging _IDSService];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            v45 = __error();
            sub_195B39324(v45, v127, v42);
          }

          goto LABEL_24;
        }
      }

      else
      {
        v46 = +[IDSTransportLog IDSService];
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v129 = v32;
          _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "No sandbox extension for received resource [%@]", buf, 0xCu);
        }

        v44 = 0;
      }

      v75 = resourceTransferMetadata;
      v76 = v29;
      v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:v32];
      v48 = [IDSAutoCleanup alloc];
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = sub_195ABC9D4;
      v121[3] = &unk_1E7441F78;
      v49 = v47;
      v122 = v49;
      v123 = resourceTransferSandboxExtension;
      v124 = v44;
      v50 = [(IDSAutoCleanup *)v48 initWithBlock:v121];
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = sub_195ABCBD8;
      v114[3] = &unk_1E7441E88;
      v51 = contextCopy;
      v115 = v51;
      selfCopy3 = self;
      v52 = account;
      v117 = v52;
      v53 = v49;
      v118 = v53;
      v54 = iCopy;
      v119 = v54;
      v55 = v50;
      v120 = v55;
      [(_IDSService *)self _callDelegatesWithBlock:v114 group:v26];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = sub_195ABCDE8;
      v106[3] = &unk_1E7441FA0;
      v107 = v51;
      selfCopy4 = self;
      v109 = v52;
      v42 = v53;
      v110 = v42;
      v111 = v75;
      v112 = v54;
      v56 = v55;
      v113 = v56;
      [(_IDSService *)self _callDelegatesWithBlock:v106 group:v26];

      resourceTransferMetadata = v75;
      v29 = v76;

      v37 = 0;
      goto LABEL_33;
    }
  }

  v42 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
  {
    sub_195B39370();
  }

LABEL_24:
  v37 = 1;
LABEL_33:

LABEL_34:
  if (v37 & 1 | !self->_manuallyAckMessages)
  {
    wantsAppAck = [contextCopy wantsAppAck];
    isDirectMessage = [contextCopy isDirectMessage];
    outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
    v77 = v29;
    storageGuid = [contextCopy storageGuid];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v62 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v64 = v63;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      broadcastTime = [v62 numberWithDouble:v64 - v66];
    }

    v67 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = @"NO";
      *buf = 138413058;
      v129 = contextCopy;
      if (wantsAppAck)
      {
        v68 = @"YES";
      }

      v130 = 2112;
      v131 = v68;
      v132 = 2112;
      v133 = outgoingResponseIdentifier3;
      v134 = 2112;
      v135 = storageGuid;
      _os_log_impl(&dword_1959FF000, v67, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v69 = +[IDSInternalQueueController sharedInstance];
    queue = [v69 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABD408;
    block[3] = &unk_1E7440FE8;
    v92 = wantsAppAck;
    v93 = isDirectMessage;
    v85 = connectionCopy;
    v86 = outgoingResponseIdentifier3;
    v87 = contextCopy;
    selfCopy5 = self;
    v89 = iCopy;
    v90 = storageGuid;
    v91 = broadcastTime;
    v71 = broadcastTime;
    v72 = storageGuid;
    v73 = outgoingResponseIdentifier3;
    dispatch_group_notify(v26, queue, block);

    v29 = v77;
  }

  dispatch_group_leave(v26);

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v74 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingProtobuf:(id)protobuf fromURI:(id)i context:(id)context
{
  v97 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  protobufCopy = protobuf;
  iCopy = i;
  contextCopy = context;
  v11 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v11 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B393E4();
    }
  }

  v13 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    *buf = 138412546;
    *v92 = protobufCopy;
    *&v92[8] = 2112;
    *v93 = outgoingResponseIdentifier;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Incoming protobuf %@, routing to selector/delegate. sender-side-identifier %@", buf, 0x16u);
  }

  v15 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    if ([contextCopy usedEngram])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    *v92 = outgoingResponseIdentifier2;
    *&v92[8] = 2112;
    *v93 = v17;
    *&v93[8] = 2048;
    v94 = v18;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Incoming protobuf on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  context = objc_autoreleasePoolPush();
  v58 = [MEMORY[0x1E69A5388] keyRepresentationForType:objc_msgSend(protobufCopy isResponse:{"type"), objc_msgSend(protobufCopy, "isResponse")}];
  v56 = [(NSMutableDictionary *)self->_protobufSelectors objectForKey:v58];
  _internal = [connectionCopy _internal];
  account = [_internal account];

  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v90 = 0;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  [contextCopy setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [contextCopy setFromID:prefixedURI];

  if (v56)
  {
    pointerValue = [v56 pointerValue];
    v23 = NSStringFromSelector(pointerValue);
    v24 = v23;
    if (![(NSString *)v23 hasSuffix:@"service:account:fromID:context:"])
    {
      v24 = [(NSString *)v23 stringByAppendingString:@"service:account:fromID:context:"];
    }

    v25 = NSSelectorFromString(v24);
    v26 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      unsignedIntValue = [v58 unsignedIntValue];
      *buf = 138412802;
      *v92 = v23;
      *&v92[8] = 2112;
      *v93 = v24;
      *&v93[8] = 1024;
      LODWORD(v94) = unsignedIntValue;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Found selector %@ fullSelector %@ for key 0x%x", buf, 0x1Cu);
    }

    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = sub_195ABDF48;
    v80[3] = &unk_1E7441FC8;
    v87 = v25;
    v81 = protobufCopy;
    v82 = iCopy;
    v83 = account;
    selfCopy = self;
    v85 = contextCopy;
    v86 = v89;
    v88 = pointerValue;
    [(_IDSService *)self _callDelegatesWithBlock:v80 group:v20];
  }

  else
  {
    v28 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      unsignedIntValue2 = [v58 unsignedIntValue];
      type = [protobufCopy type];
      isResponse = [protobufCopy isResponse];
      v32 = @"NO";
      *buf = 67109634;
      *v92 = unsignedIntValue2;
      if (isResponse)
      {
        v32 = @"YES";
      }

      *&v92[4] = 1024;
      *&v92[6] = type;
      *v93 = 2112;
      *&v93[2] = v32;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "No selector for key 0x%x = type(%u) isResponse(%@), notifying delegates", buf, 0x18u);
    }

    messageSequenceNumber = [contextCopy messageSequenceNumber];
    [messageSequenceNumber unsignedIntegerValue];
    kdebug_trace();

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = sub_195ABE284;
    v73[3] = &unk_1E7441FF0;
    v74 = protobufCopy;
    selfCopy2 = self;
    v76 = account;
    v77 = iCopy;
    v78 = contextCopy;
    v79 = v89;
    [(_IDSService *)self _callDelegatesWithBlock:v73 group:v20];

    v23 = v74;
  }

  if (!self->_manuallyAckMessages)
  {
    wantsAppAck = [contextCopy wantsAppAck];
    isDirectMessage = [contextCopy isDirectMessage];
    outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
    v53 = isDirectMessage;
    storageGuid = [contextCopy storageGuid];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v39 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v41 = v40;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      v44 = [v39 numberWithDouble:v41 - v43];
    }

    else
    {
      v44 = 0;
    }

    v45 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = @"NO";
      *buf = 138413058;
      *v92 = contextCopy;
      if (wantsAppAck)
      {
        v46 = @"YES";
      }

      *&v92[8] = 2112;
      *v93 = v46;
      *&v93[8] = 2112;
      v94 = outgoingResponseIdentifier3;
      v95 = 2112;
      v96 = storageGuid;
      _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v47 = +[IDSInternalQueueController sharedInstance];
    queue = [v47 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABE44C;
    block[3] = &unk_1E7442018;
    v70 = v89;
    v62 = outgoingResponseIdentifier3;
    v71 = wantsAppAck;
    v72 = v53;
    v63 = connectionCopy;
    v64 = contextCopy;
    selfCopy3 = self;
    v66 = iCopy;
    v67 = storageGuid;
    v68 = v44;
    v69 = protobufCopy;
    v49 = v44;
    v50 = storageGuid;
    v51 = outgoingResponseIdentifier3;
    dispatch_group_notify(v20, queue, block);
  }

  dispatch_group_leave(v20);

  _Block_object_dispose(v89, 8);
  objc_autoreleasePoolPop(context);

  v52 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingTopLevelMessage:(id)message fromURI:(id)i messageContext:(id)context
{
  v68 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  messageCopy = message;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39500();
    }
  }

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v19 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v17;
    if ([contextCopy usedEngram])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v63 = outgoingResponseIdentifier;
    v64 = 2112;
    v65 = v21;
    v17 = v20;
    v66 = 2048;
    v67 = v22;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "incomingTopLevelMessage on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  serviceName = [(IDSServiceProperties *)self->_serviceProperties serviceName];
  if ([serviceName isEqualToString:@"com.apple.madrid"])
  {
    v24 = [(NSMapTable *)self->_delegateToInfo count];

    if (v24)
    {
      goto LABEL_16;
    }

    v25 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = outgoingResponseIdentifier;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "No delegates for incoming madrid message. Sending 115 for guid %@", buf, 0xCu);
    }

    v26 = objc_alloc(MEMORY[0x1E69A5338]);
    serviceName2 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
    serviceName = [v26 initWithReason:709 guid:outgoingResponseIdentifier service:serviceName2 additionalInformation:0];

    [(_IDSService *)self _sendMissingMessageMetric:serviceName];
  }

LABEL_16:
  v28 = contextCopy;
  [v28 setWantsManualAck:self->_manuallyAckMessages];
  prefixedURI = [iCopy prefixedURI];
  [v28 setFromID:prefixedURI];

  _internal = [connectionCopy _internal];
  account = [_internal account];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_195ABEB74;
  v55[3] = &unk_1E7441E88;
  v32 = v28;
  v56 = v32;
  selfCopy = self;
  v33 = account;
  v58 = v33;
  v34 = messageCopy;
  v59 = v34;
  v35 = iCopy;
  v60 = v35;
  v36 = outgoingResponseIdentifier;
  v61 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v55 group:v17];
  if (!self->_manuallyAckMessages)
  {
    [v32 storageGuid];
    v38 = v37 = connectionCopy;
    [v32 outgoingResponseIdentifier];
    v39 = v48 = v34;
    v40 = +[IDSInternalQueueController sharedInstance];
    [v40 queue];
    v47 = v35;
    v42 = v41 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABED58;
    block[3] = &unk_1E743EF38;
    v50 = v38;
    v51 = v39;
    selfCopy2 = self;
    v53 = v37;
    v54 = v32;
    v43 = v39;
    v44 = v38;
    connectionCopy = v37;
    v45 = v44;
    dispatch_group_notify(v41, v42, block);

    v17 = v41;
    v35 = v47;

    v34 = v48;
  }

  dispatch_group_leave(v17);

  v46 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection incomingBatchMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B395A0();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
  service = [messageCopy service];
  v15 = [pushTopic isEqualToString:service];

  if (v15)
  {
    messages = [messageCopy messages];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195ABF070;
    v20[3] = &unk_1E7442040;
    v20[4] = self;
    [messages enumerateObjectsUsingBlock:v20];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195ABF0C8;
    v17[3] = &unk_1E7442068;
    v17[4] = self;
    v18 = account;
    v19 = messageCopy;
    [(_IDSService *)self _callDelegatesWithBlock:v17];
  }
}

- (void)connection:(id)connection incomingPendingMessageFromURI:(id)i context:(id)context
{
  connectionCopy = connection;
  iCopy = i;
  contextCopy = context;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39640();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];

  originalCommand = [contextCopy originalCommand];
  v17 = [(_IDSService *)self _messageTypeForCommand:originalCommand];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195ABF998;
  v21[3] = &unk_1E7442090;
  v22 = contextCopy;
  selfCopy = self;
  v25 = iCopy;
  v26 = v17;
  v24 = account;
  v18 = iCopy;
  v19 = account;
  v20 = contextCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v21];
}

- (void)connection:(id)connection incomingPendingResourceWithMetadata:(id)metadata guid:(id)guid fromURI:(id)i context:(id)context
{
  metadataCopy = metadata;
  guidCopy = guid;
  iCopy = i;
  contextCopy = context;
  _internal = [connection _internal];
  account = [_internal account];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_195ABFD54;
  v32[3] = &unk_1E74420B8;
  v32[4] = self;
  v33 = guidCopy;
  v18 = guidCopy;
  v19 = MEMORY[0x19A8BBEF0](v32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195ABFDB8;
  v25[3] = &unk_1E74420E0;
  v26 = contextCopy;
  selfCopy = self;
  v28 = account;
  v29 = metadataCopy;
  v30 = iCopy;
  v31 = v19;
  v20 = v19;
  v21 = iCopy;
  v22 = metadataCopy;
  v23 = account;
  v24 = contextCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v25];
}

- (int64_t)_messageTypeForCommand:(id)command
{
  integerValue = [command integerValue];
  if (integerValue > 231)
  {
    if (integerValue > 242)
    {
      if (integerValue > 249)
      {
        if (integerValue == 250)
        {
          return 13;
        }

        if (integerValue == 251)
        {
          return 14;
        }
      }

      else
      {
        if (integerValue == 243)
        {
          return 3;
        }

        if (integerValue == 245)
        {
          return 4;
        }
      }
    }

    else if (integerValue > 238)
    {
      if (integerValue == 239)
      {
        return 11;
      }

      if (integerValue == 242)
      {
        return 2;
      }
    }

    else
    {
      if (integerValue == 232)
      {
        return 6;
      }

      if (integerValue == 235)
      {
        return 7;
      }
    }

    return 15;
  }

  if (integerValue > 208)
  {
    if ((integerValue - 210) < 2)
    {
      return 12;
    }

    if (integerValue == 209)
    {
      return 10;
    }

    if (integerValue == 227)
    {
      return 1;
    }

    return 15;
  }

  if (integerValue <= 205)
  {
    if (integerValue == 100)
    {
      return 0;
    }

    if (integerValue == 121)
    {
      return 5;
    }

    return 15;
  }

  if (integerValue == 206)
  {
    return 12;
  }

  if (integerValue == 207)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (id)_payloadFromDecryptedData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _FTOptionallyDecompressData = [dataCopy _FTOptionallyDecompressData];
      v4 = JWDecodeDictionary();
      if (![v4 count])
      {
        v6 = JWDecodeDictionary();

        v4 = v6;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)connection:(id)connection incomingEngramMessage:(id)message fromURI:(id)i context:(id)context
{
  connectionCopy = connection;
  messageCopy = message;
  iCopy = i;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B396E0();
    }
  }

  v17 = objc_alloc(MEMORY[0x1E699BB88]);
  engramGroupID = [contextCopy engramGroupID];
  v19 = [v17 initWithDataRepresentation:engramGroupID];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_195AC040C;
  v33[3] = &unk_1E7442108;
  v20 = messageCopy;
  v34 = v20;
  v35 = contextCopy;
  selfCopy = self;
  v37 = connectionCopy;
  v38 = iCopy;
  v21 = iCopy;
  v22 = connectionCopy;
  v23 = contextCopy;
  v24 = MEMORY[0x19A8BBEF0](v33);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_195AC07AC;
  v28[3] = &unk_1E7442180;
  v29 = v19;
  v30 = v20;
  selfCopy2 = self;
  v32 = v24;
  v25 = v24;
  v26 = v20;
  v27 = v19;
  [(_IDSService *)self performGroupTask:v28];
}

- (void)connection:(id)connection isActiveChanged:(BOOL)changed
{
  changedCopy = changed;
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39780();
    }
  }

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    _internal = [connectionCopy _internal];
    v12 = _internal;
    v13 = @"NO";
    if (changedCopy)
    {
      v13 = @"YES";
    }

    v15 = 138412546;
    v16 = _internal;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_INFO, "isActiveChanged on connection %@ isActive %@", &v15, 0x16u);
  }

  [(_IDSService *)self _callIsActiveChanged];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection devicesChanged:(id)changed
{
  v38 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39820();
    }
  }

  _internal = [connectionCopy _internal];
  account = [_internal account];
  _internal2 = [account _internal];

  devices = [(_IDSService *)self devices];
  iDSService_oversized = [MEMORY[0x1E69A6138] IDSService_oversized];
  if (os_log_type_enabled(iDSService_oversized, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [devices __imArrayByApplyingBlock:&unk_1F09E6B40];
    v17 = [devices count];
    v18 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138413314;
    v29 = connectionCopy;
    v30 = 2112;
    v31 = _internal2;
    v32 = 2112;
    v33 = v16;
    v34 = 2050;
    v35 = v17;
    v36 = 2048;
    v37 = v18;
    _os_log_impl(&dword_1959FF000, iDSService_oversized, OS_LOG_TYPE_DEFAULT, "devicesChanged on connection %@ account %@ all devices %@ num devices %{public}lu num delegates: %lu", buf, 0x34u);
  }

  if (_internal2 && ([MEMORY[0x1E695DFD8] setWithObject:_internal2], v19 = objc_claimAutoreleasedReturnValue(), v20 = sub_195A0CBF4(v19), v19, v20))
  {
    iDSService = [MEMORY[0x1E69A6138] IDSService];
    if (os_log_type_enabled(iDSService, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, iDSService, OS_LOG_TYPE_DEFAULT, "*** dropping devicesChanged callback!", buf, 2u);
    }
  }

  else
  {
    iDSService = [MEMORY[0x1E6995700] weakRefWithObject:self];
    if ([changedCopy count])
    {
      [(_IDSService *)self _callDelegatesForDevicesChanged];
    }

    else
    {
      v22 = dispatch_time(0, 60000000000);
      v23 = +[IDSInternalQueueController sharedInstance];
      queue = [v23 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AC15A0;
      block[3] = &unk_1E743E878;
      iDSService = iDSService;
      v27 = iDSService;
      dispatch_after(v22, queue, block);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39960();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AC16D8;
  v10[3] = &unk_1E7441E18;
  v10[4] = self;
  v11 = changedCopy;
  v9 = changedCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v10];
}

- (void)connection:(id)connection connectedDevicesChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39A00();
    }
  }

  iDSService_oversized = [MEMORY[0x1E69A6138] IDSService_oversized];
  if (os_log_type_enabled(iDSService_oversized, OS_LOG_TYPE_DEFAULT))
  {
    _internal = [connectionCopy _internal];
    account = [_internal account];
    _internal2 = [account _internal];
    *buf = 138413058;
    v20 = connectionCopy;
    v21 = 2112;
    v22 = _internal2;
    v23 = 2112;
    v24 = changedCopy;
    v25 = 2050;
    v26 = [changedCopy count];
    _os_log_impl(&dword_1959FF000, iDSService_oversized, OS_LOG_TYPE_DEFAULT, "connectedDevicesChanged on connection %@ account %@ devices %@ num devices %{public}lu", buf, 0x2Au);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AC1948;
  v17[3] = &unk_1E7441E18;
  v17[4] = self;
  v18 = changedCopy;
  v15 = changedCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection messageIdentifier:(id)identifier alternateCallbackID:(id)d updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call messageContext:(id)context
{
  LODWORD(v9) = call;
  v78 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  identifierCopy = identifier;
  dCopy = d;
  errorCopy = error;
  contextCopy = context;
  v18 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v18 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39AA0();
    }
  }

  bytesSent = [contextCopy bytesSent];

  v22 = +[IDSLogging _IDSService];
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (bytesSent)
  {
    if (v23)
    {
      v24 = v9 == 0;
      v45 = v9;
      v9 = connectionCopy;
      if (v24)
      {
        v25 = @"NO";
      }

      else
      {
        v25 = @"YES";
      }

      bytesSent2 = [contextCopy bytesSent];
      totalBytes = [contextCopy totalBytes];
      *buf = 138414082;
      selfCopy2 = self;
      v64 = 2112;
      v65 = identifierCopy;
      v66 = 2112;
      v67 = dCopy;
      v68 = 2048;
      codeCopy2 = code;
      v70 = 2112;
      v71 = errorCopy;
      v72 = 2112;
      v73 = v25;
      connectionCopy = v9;
      LOBYTE(v9) = v45;
      v74 = 2112;
      v75 = bytesSent2;
      v76 = 2112;
      v77 = totalBytes;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got messageIdentifier %@ callbackID %@ updatedWithResponseCode: %ld error %@ lastCall %@ sentBytes %@ totalBytes %@", buf, 0x52u);
    }
  }

  else if (v23)
  {
    v28 = @"NO";
    *buf = 138413570;
    selfCopy2 = self;
    v64 = 2112;
    if (v9)
    {
      v28 = @"YES";
    }

    v65 = identifierCopy;
    v66 = 2112;
    v67 = dCopy;
    v68 = 2048;
    codeCopy2 = code;
    v70 = 2112;
    v71 = errorCopy;
    v72 = 2112;
    v73 = v28;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got messageIdentifier %@ callbackID %@ updatedWithResponseCode: %ld error %@ lastCall %@", buf, 0x3Eu);
  }

  originalCommand = [contextCopy originalCommand];
  v30 = [originalCommand isEqualToNumber:&unk_1F0A299D8];

  if ((v30 & 1) == 0)
  {
    _internal = [connectionCopy _internal];
    account = [_internal account];

    if (!code && (v9 & 1) == 0)
    {
      bytesSent3 = [contextCopy bytesSent];
      if (bytesSent3)
      {
        v34 = bytesSent3;
        totalBytes2 = [contextCopy totalBytes];

        if (totalBytes2)
        {
          bytesSent4 = [contextCopy bytesSent];
          integerValue = [bytesSent4 integerValue];

          totalBytes3 = [contextCopy totalBytes];
          integerValue2 = [totalBytes3 integerValue];

          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = sub_195AC1EB0;
          v57[3] = &unk_1E74421A8;
          v57[4] = self;
          v58 = account;
          v39 = identifierCopy;
          v59 = v39;
          v60 = integerValue;
          v61 = integerValue2;
          [(_IDSService *)self _callDelegatesWithBlock:v57];
          uniqueIDToProgress = self->_uniqueIDToProgress;
          if (uniqueIDToProgress)
          {
            v41 = [(NSMutableDictionary *)uniqueIDToProgress objectForKeyedSubscript:v39];
            v42 = v41;
            if (v41)
            {
              [v41 setTotalUnitCount:integerValue2];
              [v42 setCompletedUnitCount:integerValue];
            }
          }
        }
      }
    }

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_195AC1F30;
    v49[3] = &unk_1E74421D0;
    v49[4] = self;
    v50 = account;
    v51 = identifierCopy;
    v52 = dCopy;
    codeCopy3 = code;
    v53 = errorCopy;
    v56 = v9;
    v54 = contextCopy;
    v43 = account;
    [(_IDSService *)self _callDelegatesWithBlock:v49];
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection identifier:(id)identifier alternateCallbackID:(id)d willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations
{
  v64 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  destinationsCopy = destinations;
  skippedDestinationsCopy = skippedDestinations;
  toDestinationsCopy = toDestinations;
  connectionCopy = connection;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(skippedDestinations) = [v20 assertQueueIsCurrent];

  if (skippedDestinations)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39B40();
    }
  }

  v22 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    serviceProperties = [(_IDSService *)self serviceProperties];
    identifier = [serviceProperties identifier];
    IDSLoggableDescriptionForHandlesOnService();
    v23 = v41 = connectionCopy;
    [(_IDSService *)self serviceProperties];
    v24 = v44 = destinationsCopy;
    [v24 identifier];
    v25 = toDestinationsCopy;
    v26 = dCopy;
    v28 = v27 = identifierCopy;
    v29 = IDSLoggableDescriptionForHandlesOnService();
    v43 = skippedDestinationsCopy;
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    *buf = 138413570;
    selfCopy = self;
    v54 = 2112;
    v55 = v27;
    v56 = 2112;
    v57 = v26;
    v58 = 2112;
    v59 = v23;
    v60 = 2112;
    v61 = v29;
    v62 = 2112;
    v63 = v30;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ callbackID %@ willSendToDestinations %@ skippedDests %@ regPropsToDests (count) %@", buf, 0x3Eu);

    skippedDestinationsCopy = v43;
    identifierCopy = v27;
    dCopy = v26;
    toDestinationsCopy = v25;

    destinationsCopy = v44;
    connectionCopy = v41;
  }

  _internal = [connectionCopy _internal];

  account = [_internal account];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_195AC237C;
  v45[3] = &unk_1E7441FA0;
  v45[4] = self;
  v46 = account;
  v47 = identifierCopy;
  v48 = dCopy;
  v49 = destinationsCopy;
  v50 = skippedDestinationsCopy;
  v51 = toDestinationsCopy;
  v33 = toDestinationsCopy;
  v34 = skippedDestinationsCopy;
  v35 = destinationsCopy;
  v36 = dCopy;
  v37 = identifierCopy;
  v38 = account;
  [(_IDSService *)self _callDelegatesWithBlock:v45];

  v39 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v54 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  connectionCopy = connection;
  v16 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v16 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39BE0();
    }
  }

  v19 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138413314;
    selfCopy = self;
    v46 = 2112;
    v47 = identifierCopy;
    v48 = 2112;
    v49 = v20;
    v50 = 2112;
    v51 = errorCopy;
    v52 = 2048;
    v53 = v21;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ didSendWithSuccess %@  error %@ num delegates: %lu", buf, 0x34u);
  }

  _internal = [connectionCopy _internal];

  account = [_internal account];

  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = sub_195AC26F0;
  v37 = &unk_1E74421F8;
  selfCopy2 = self;
  v24 = account;
  v39 = v24;
  v25 = identifierCopy;
  v40 = v25;
  v43 = successCopy;
  v26 = errorCopy;
  v41 = v26;
  v27 = contextCopy;
  v42 = v27;
  [(_IDSService *)self _callDelegatesWithBlock:&v34];
  if (v25)
  {
    v28 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v25, v34, v35, v36, v37, selfCopy2, v39, v40, v41];
    v29 = v28;
    if (v28)
    {
      first = [v28 first];
      (first)[2](first, v26);
    }

    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v25];
  }

  uniqueIDToProgress = self->_uniqueIDToProgress;
  if (uniqueIDToProgress)
  {
    [(NSMutableDictionary *)uniqueIDToProgress removeObjectForKey:v25];
    if (![(NSMutableDictionary *)self->_uniqueIDToProgress count])
    {
      v32 = self->_uniqueIDToProgress;
      self->_uniqueIDToProgress = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection identifier:(id)identifier fromURI:(id)i hasBeenDeliveredWithContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  iCopy = i;
  contextCopy = context;
  connectionCopy = connection;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39C80();
    }
  }

  v17 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v32 = 2112;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = contextCopy;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ hasBeenDeliveredWithContext %@", buf, 0x20u);
  }

  _internal = [connectionCopy _internal];

  account = [_internal account];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AC29E8;
  v25[3] = &unk_1E7441EB0;
  v25[4] = self;
  v26 = account;
  v27 = identifierCopy;
  v28 = contextCopy;
  v29 = iCopy;
  v20 = iCopy;
  v21 = contextCopy;
  v22 = identifierCopy;
  v23 = account;
  [(_IDSService *)self _callDelegatesWithBlock:v25];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection didFlushCacheForRemoteURI:(id)i fromURI:(id)rI guid:(id)guid
{
  v32 = *MEMORY[0x1E69E9840];
  iCopy = i;
  rICopy = rI;
  guidCopy = guid;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39D20();
    }
  }

  v15 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v26 = 2112;
    v27 = iCopy;
    v28 = 2112;
    v29 = rICopy;
    v30 = 2112;
    v31 = guidCopy;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "%@ didFlushCacheForRemoteURI %@ fromURI %@ guid %@", buf, 0x2Au);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AC2CB8;
  v20[3] = &unk_1E7441F50;
  v20[4] = self;
  v21 = iCopy;
  v22 = rICopy;
  v23 = guidCopy;
  v16 = guidCopy;
  v17 = rICopy;
  v18 = iCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection didFlushCacheForKTPeerURI:(id)i
{
  v18 = *MEMORY[0x1E69E9840];
  iCopy = i;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39DC0();
    }
  }

  v9 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = iCopy;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ didFlushCacheForKTPeerURI %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AC2EBC;
  v12[3] = &unk_1E7441E18;
  v12[4] = self;
  v13 = iCopy;
  v10 = iCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection account:(id)account sessionInviteReceived:(id)received fromID:(id)d transportType:(id)type options:(id)options context:(id)context messageContext:(id)self0
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  optionsCopy = options;
  contextCopy = context;
  messageContextCopy = messageContext;
  typeCopy = type;
  receivedCopy = received;
  v22 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v22 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39E60();
    }
  }

  v25 = +[_IDSSessionStore sharedInstance];
  v26 = [v25 sessionForAccount:accountCopy fromID:dCopy identifier:receivedCopy transportType:typeCopy];

  _internal = [v26 _internal];
  [_internal setBoostContext:messageContextCopy];

  v28 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = optionsCopy;
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "Sending up options to client: %@", buf, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_195AC31C4;
  v35[3] = &unk_1E7441E88;
  v35[4] = self;
  v36 = accountCopy;
  v37 = v26;
  v38 = dCopy;
  v39 = optionsCopy;
  v40 = contextCopy;
  v29 = contextCopy;
  v30 = optionsCopy;
  v31 = dCopy;
  v32 = v26;
  v33 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v35];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection account:(id)account inviteDroppedForSessionID:(id)d fromID:(id)iD context:(id)context error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  errorCopy = error;
  v18 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v18 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39F00();
    }
  }

  v21 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = dCopy;
    v36 = 2112;
    v37 = iDCopy;
    v38 = 2112;
    v39 = errorCopy;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Received invitation but dropped for sessionID %@ fromID %@ with %@", buf, 0x20u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_195AC34EC;
  v28[3] = &unk_1E7441E88;
  v28[4] = self;
  v29 = accountCopy;
  v30 = dCopy;
  v31 = iDCopy;
  v32 = contextCopy;
  v33 = errorCopy;
  v22 = errorCopy;
  v23 = contextCopy;
  v24 = iDCopy;
  v25 = dCopy;
  v26 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v28];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantUpdate:(id)update context:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  updateCopy = update;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B39FA0();
    }
  }

  v15 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v26 = 2112;
    v27 = updateCopy;
    v28 = 2112;
    v29 = contextCopy;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Received group session participant update {service: %@, update: %@, context: %@}", buf, 0x20u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AC3748;
  v20[3] = &unk_1E7441F50;
  v20[4] = self;
  v21 = accountCopy;
  v22 = updateCopy;
  v23 = contextCopy;
  v16 = contextCopy;
  v17 = updateCopy;
  v18 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)connection account:(id)account receivedGroupSessionParticipantDataUpdate:(id)update
{
  accountCopy = account;
  updateCopy = update;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A040();
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AC3924;
  v14[3] = &unk_1E7442068;
  v14[4] = self;
  v15 = accountCopy;
  v16 = updateCopy;
  v12 = updateCopy;
  v13 = accountCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v14];
}

- (void)connection:(id)connection didSendOpportunisticDataWithIdentifier:(id)identifier toIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dsCopy = ds;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A0E0();
    }
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v21 = 2112;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = dsCopy;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Recieved did send opportunistic data {service: %@, identifier: %@, toIDs: %@}", buf, 0x20u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AC3B58;
  v16[3] = &unk_1E7442068;
  v16[4] = self;
  v17 = identifierCopy;
  v18 = dsCopy;
  v13 = dsCopy;
  v14 = identifierCopy;
  [(_IDSService *)self _callDelegatesWithBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPretendingToBeFull
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A180();
    }
  }

  return self->_pretendingToBeFull;
}

- (void)setPretendingToBeFull:(BOOL)full
{
  fullCopy = full;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A220();
    }
  }

  if (self->_pretendingToBeFull != fullCopy)
  {
    self->_pretendingToBeFull = fullCopy;
    if (!fullCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_195AC3D44;
      v8[3] = &unk_1E7441CD8;
      v8[4] = self;
      [(_IDSService *)self _callDelegatesWithBlock:v8];
    }
  }
}

- (NSString)serviceDomain
{
  v2 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v2 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A2C0();
    }
  }

  return 0;
}

- (unint64_t)registrationRestrictionReason
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A360();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  listener = [v6 listener];
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  v10 = [listener restrictionReasonForService:identifier];

  return v10;
}

- (id)_filteredAccountsFrom:(id)from
{
  v48 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v4 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v4 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A4A0();
    }
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = fromCopy;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v36;
    v13 = 0x1E743D000uLL;
    *&v10 = 138413058;
    v31 = v10;
    v32 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        _internal = [v15 _internal];
        isTransientAllowlistedAccount = [_internal isTransientAllowlistedAccount];

        if (isTransientAllowlistedAccount || ([v15 _internal], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "canSend"), v18, v19))
        {
          [v7 addObject:v15];
        }

        else
        {
          _IDSService = [*(v13 + 1160) _IDSService];
          if (os_log_type_enabled(_IDSService, OS_LOG_TYPE_INFO))
          {
            _internal2 = [v15 _internal];
            v33 = _internal2;
            _internal3 = [v15 _internal];
            aliases = [_internal3 aliases];
            _internal4 = [v15 _internal];
            v24 = v7;
            if ([_internal4 isActive])
            {
              v25 = @"YES";
            }

            else
            {
              v25 = @"NO";
            }

            _internal5 = [v15 _internal];
            canSend = [_internal5 canSend];
            *buf = v31;
            v28 = @"NO";
            if (canSend)
            {
              v28 = @"YES";
            }

            v40 = _internal2;
            v41 = 2112;
            v42 = aliases;
            v43 = 2112;
            v44 = v25;
            v7 = v24;
            v45 = 2112;
            v46 = v28;
            _os_log_impl(&dword_1959FF000, _IDSService, OS_LOG_TYPE_INFO, "Filtering account %@ with aliases %@  isActive? %@  canSend? %@", buf, 0x2Au);

            v8 = v32;
            v13 = 0x1E743D000;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v11);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSSet)internalAccounts
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A5E0();
    }
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  internalAccounts = [_internal internalAccounts];

  v8 = [(_IDSService *)self _filteredAccountsFrom:internalAccounts];

  return v8;
}

- (BOOL)canSend
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A7C0();
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _internal = [(IDSAccountController *)self->_accountController _internal];
  accounts = [_internal accounts];

  v8 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(accounts);
        }

        _internal2 = [*(*(&v15 + 1) + 8 * i) _internal];
        canSend = [_internal2 canSend];

        if (canSend)
        {
          LOBYTE(v8) = 1;
          goto LABEL_15;
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)_reloadCachedLinkedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195AC44F8;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4 waitUntilDone:1];
}

- (void)_updateLinkedDevicesWithDevicesInfo:(id)info
{
  v31 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A900();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  linkedDevices = self->_linkedDevices;
  self->_linkedDevices = v8;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = infoCopy;
  v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [[IDSDevice alloc] _initWithDictionary:*(*(&v24 + 1) + 8 * i)];
        object = [self->_delegateContext object];
        [v14 _setService:object];

        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
        {
          _internal = [v14 _internal];
          compactDescription = [_internal compactDescription];
          *buf = 138412290;
          v29 = compactDescription;
          _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Adding linked IDSDevice %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_linkedDevices addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6B60];
    v21 = [v20 count];
    *buf = 67109120;
    LODWORD(v29) = v21;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "Linked devices updated with count %d", buf, 8u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)linkedDevicesWithRelationship:(int64_t)relationship
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A9A0();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (relationship)
  {
    devices = [(_IDSService *)self devices];
    [v8 addObjectsFromArray:devices];
  }

  accounts = [(_IDSService *)self accounts];
  v11 = [accounts count];

  if (v11)
  {
    [(_IDSService *)self _loadCachedLinkedDevices];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_linkedDevices;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          relationship = [v17 relationship];
          if (relationship != 1 && (relationship & relationship) != 0 && [v17 relationship] != 1)
          {
            [v8 addObject:v17];
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSArray)URIs
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(_IDSService *)self accounts];
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    v4 = *MEMORY[0x1E69A5630];
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        handles = [v6 handles];
        v8 = [handles countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(handles);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = [v12 URI];
              unprefixedURI = [v13 unprefixedURI];
              v15 = [unprefixedURI isEqualToIgnoringCase:v4];

              if ((v15 & 1) == 0)
              {
                v16 = [v12 URI];
                [v3 addObject:v16];
              }
            }

            v9 = [handles countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v9);
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  allObjects = [v3 allObjects];

  v18 = *MEMORY[0x1E69E9840];

  return allObjects;
}

- (int64_t)maxEffectivePayloadSize
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = +[IDSDaemonController sharedInstance];
  listener = [v4 listener];
  identifier = [(IDSServiceProperties *)self->_serviceProperties identifier];
  v7 = [listener maxEffectivePayloadSizeForService:identifier];

  return v7;
}

- (NSDictionary)pseudonymURIMap
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(_IDSService *)self accounts];
  v5 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        pseudonymURIMap = [*(*(&v13 + 1) + 8 * i) pseudonymURIMap];
        [v3 addEntriesFromDictionary:pseudonymURIMap];
      }

      v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)pseudonymForPseudonymURI:(id)i
{
  v32 = *MEMORY[0x1E69E9840];
  iCopy = i;
  if (iCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    accounts = [(_IDSService *)self accounts];
    v21 = [accounts countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v6 = *v27;
      v20 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(accounts);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          pseudonyms = [v8 pseudonyms];
          v10 = [pseudonyms countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(pseudonyms);
                }

                v14 = *(*(&v22 + 1) + 8 * j);
                v15 = [v14 URI];
                v16 = [v15 isEqualToURI:iCopy];

                if (v16)
                {
                  v17 = v14;

                  goto LABEL_21;
                }
              }

              v11 = [pseudonyms countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v6 = v20;
        }

        v17 = 0;
        v21 = [accounts countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)pseudonymsForMaskedURI:(id)i
{
  iCopy = i;
  pseudonymURIMap = [(_IDSService *)self pseudonymURIMap];
  v6 = [pseudonymURIMap objectForKey:iCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties
{
  propertiesCopy = properties;
  v7 = [(_IDSService *)self pseudonymsForMaskedURI:i];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AC5230;
  v14[3] = &unk_1E7442220;
  v15 = propertiesCopy;
  v8 = propertiesCopy;
  v9 = [v7 __imArrayByFilteringWithBlock:v14];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;

  return v11;
}

- (id)_accountWithURI:(id)i orPseudonym:(id)pseudonym
{
  v48 = *MEMORY[0x1E69E9840];
  iCopy = i;
  pseudonymCopy = pseudonym;
  if (iCopy | pseudonymCopy)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    accounts = [(_IDSService *)self accounts];
    v31 = [accounts countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v31)
    {
      v9 = *v42;
      v30 = *v42;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v32 = v11;
          if (iCopy)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            handles = [v11 handles];
            v13 = [handles countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v38;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v38 != v15)
                  {
                    objc_enumerationMutation(handles);
                  }

                  v17 = [*(*(&v37 + 1) + 8 * j) URI];
                  v18 = [v17 isEqualToURI:iCopy];

                  if (v18)
                  {
LABEL_33:
                    v26 = v32;

                    goto LABEL_34;
                  }
                }

                v14 = [handles countByEnumeratingWithState:&v37 objects:v46 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v11 = v32;
          }

          if (pseudonymCopy)
          {
            v29 = accounts;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            handles = [v11 pseudonyms];
            v19 = [handles countByEnumeratingWithState:&v33 objects:v45 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v34;
              while (2)
              {
                for (k = 0; k != v20; ++k)
                {
                  if (*v34 != v21)
                  {
                    objc_enumerationMutation(handles);
                  }

                  v23 = [*(*(&v33 + 1) + 8 * k) URI];
                  v24 = [pseudonymCopy URI];
                  v25 = [v23 isEqualToURI:v24];

                  if (v25)
                  {
                    accounts = v29;
                    goto LABEL_33;
                  }
                }

                v20 = [handles countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            accounts = v29;
          }

          v9 = v30;
        }

        v26 = 0;
        v31 = [accounts countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v31);
    }

    else
    {
      v26 = 0;
    }

LABEL_34:
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (void)setWantsPseudonymUpdates:(BOOL)updates
{
  if (self->_wantsPseudonymUpdates != updates)
  {
    self->_wantsPseudonymUpdates = updates;
    if (updates)
    {
      pseudonymURIMap = [(_IDSService *)self pseudonymURIMap];
      cachedPseudonymURIMap = self->_cachedPseudonymURIMap;
      self->_cachedPseudonymURIMap = pseudonymURIMap;

      v7 = objc_alloc(MEMORY[0x1E69956C8]);
      v13 = +[IDSInternalQueueController sharedInstance];
      queue = [v13 queue];
      v9 = [v7 initWithCapacity:1 queue:queue block:&unk_1F09E6B80];
      pseudonymUpdateTaskQueue = self->_pseudonymUpdateTaskQueue;
      self->_pseudonymUpdateTaskQueue = v9;

      v11 = v13;
    }

    else
    {
      v12 = self->_cachedPseudonymURIMap;
      self->_cachedPseudonymURIMap = 0;

      v11 = self->_pseudonymUpdateTaskQueue;
      self->_pseudonymUpdateTaskQueue = 0;
    }
  }
}

- (void)account:(id)account pseudonymsChanged:(id)changed
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if ([(_IDSService *)self wantsPseudonymUpdates])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    accounts = [(_IDSService *)self accounts];
    v7 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          _internal = [*(*(&v15 + 1) + 8 * v10) _internal];
          uniqueID = [_internal uniqueID];
          v13 = [uniqueID isEqualToString:accountCopy];

          if (v13)
          {

            [(CUTDeferredTaskQueue *)self->_pseudonymUpdateTaskQueue enqueueExecutionWithTarget:self afterDelay:1.0];
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_calloutPseudonymsDidUpdate
{
  if ([(_IDSService *)self wantsPseudonymUpdates])
  {
    v3 = self->_cachedPseudonymURIMap;
    pseudonymURIMap = [(_IDSService *)self pseudonymURIMap];
    v5 = IDSServiceCalculatedPseudonymChanges_0(v3, pseudonymURIMap);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195AC6444;
    v9[3] = &unk_1E7441E18;
    v9[4] = self;
    v10 = v5;
    v6 = v5;
    [(_IDSService *)self _callDelegatesWithBlock:v9];
    cachedPseudonymURIMap = self->_cachedPseudonymURIMap;
    self->_cachedPseudonymURIMap = pseudonymURIMap;
    v8 = pseudonymURIMap;
  }
}

- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AA40();
  }

  v11 = [(_IDSService *)self _sendingAccountForAccount:0];
  v12 = [(_IDSService *)self _preferredURIForAccount:v11];
  if (v12)
  {
    firstObject = v12;
LABEL_6:
    [(_IDSService *)self provisionPseudonymForURI:firstObject withProperties:propertiesCopy requestProperties:requestPropertiesCopy completion:completionCopy];
    goto LABEL_7;
  }

  uRIs = [(_IDSService *)self URIs];
  firstObject = [uRIs firstObject];

  if (firstObject)
  {
    goto LABEL_6;
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    accounts = [(_IDSService *)self accounts];
    v18 = 138412290;
    v19 = accounts;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "No URI found on any account -- returning nil {accounts: %@}", &v18, 0xCu);
  }

  firstObject = sub_195AC667C(400);
  completionCopy[2](completionCopy, 0, firstObject);
LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  iCopy = i;
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AAB4();
  }

  v14 = [(_IDSService *)self _accountWithURI:iCopy orPseudonym:0];
  if (v14)
  {
    v32 = requestPropertiesCopy;
    v33 = propertiesCopy;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_195AC6D6C;
    v34[3] = &unk_1E743E850;
    v15 = completionCopy;
    v35 = v15;
    v16 = MEMORY[0x19A8BBEF0](v34);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    if (!completionBlocksByRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v20 = self->_completionBlocksByRequestID;
      self->_completionBlocksByRequestID = Mutable;

      completionBlocksByRequestID = self->_completionBlocksByRequestID;
    }

    v21 = MEMORY[0x1E69A6128];
    v22 = MEMORY[0x19A8BBEF0](v15);
    v23 = MEMORY[0x19A8BBEF0](v16);
    v24 = [v21 pairWithFirst:v22 second:v23];
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v24 forKey:stringGUID];

    registration = [MEMORY[0x1E69A6138] registration];
    propertiesCopy = v33;
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v37 = iCopy;
      v38 = 2112;
      v39 = v33;
      v40 = 2112;
      v41 = stringGUID;
      v42 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI called {URI: %@, properties: %@, requestUUID: %@, self: %@}", buf, 0x2Au);
    }

    daemonController = [(_IDSService *)self daemonController];
    uniqueID = [v14 uniqueID];
    requestPropertiesCopy = v32;
    [daemonController provisionPseudonymForURI:iCopy onAccount:uniqueID withProperties:v33 requestProperties:v32 requestUUID:stringGUID];

    v28 = v35;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v37 = iCopy;
      v38 = 2112;
      v39 = accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched URI -- returning nil {URI: %@, accounts: %@}", buf, 0x16u);
    }

    v28 = sub_195AC667C(400);
    (*(completionCopy + 2))(completionCopy, 0, v28);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch requestProperties:(id)properties completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  propertiesCopy = properties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AB28();
  }

  v13 = [(_IDSService *)self _accountWithURI:0 orPseudonym:pseudonymCopy];
  if (v13)
  {
    v31 = propertiesCopy;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_195AC7120;
    v32[3] = &unk_1E743E850;
    v14 = completionCopy;
    v33 = v14;
    v15 = MEMORY[0x19A8BBEF0](v32);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    if (!completionBlocksByRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v19 = self->_completionBlocksByRequestID;
      self->_completionBlocksByRequestID = Mutable;

      completionBlocksByRequestID = self->_completionBlocksByRequestID;
    }

    v20 = MEMORY[0x1E69A6128];
    v21 = MEMORY[0x19A8BBEF0](v14);
    v22 = MEMORY[0x19A8BBEF0](v15);
    v23 = [v20 pairWithFirst:v21 second:v22];
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v23 forKey:stringGUID];

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v35 = pseudonymCopy;
      v36 = 2048;
      epochCopy = epoch;
      v38 = 2112;
      v39 = stringGUID;
      v40 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "renewPseudonym called {pseudonym: %@, expiry: %f, requestUUID: %@, self: %@}", buf, 0x2Au);
    }

    daemonController = [(_IDSService *)self daemonController];
    uniqueID = [v13 uniqueID];
    propertiesCopy = v31;
    [daemonController renewPseudonym:pseudonymCopy onAccount:uniqueID forUpdatedExpiryEpoch:v31 requestProperties:stringGUID requestUUID:epoch];

    v27 = v33;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v35 = pseudonymCopy;
      v36 = 2112;
      epochCopy = *&accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched pseudonym -- returning nil {pseudonym: %@, accounts: %@}", buf, 0x16u);
    }

    v27 = sub_195AC667C(400);
    (*(completionCopy + 2))(completionCopy, 0, v27);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)revokePseudonym:(id)pseudonym requestProperties:(id)properties completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  propertiesCopy = properties;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AB9C();
  }

  v11 = [(_IDSService *)self _accountWithURI:0 orPseudonym:pseudonymCopy];
  if (v11)
  {
    v29 = propertiesCopy;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_195AC74B8;
    v30[3] = &unk_1E743E850;
    v12 = completionCopy;
    v31 = v12;
    v13 = MEMORY[0x19A8BBEF0](v30);
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    if (!completionBlocksByRequestID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v17 = self->_completionBlocksByRequestID;
      self->_completionBlocksByRequestID = Mutable;

      completionBlocksByRequestID = self->_completionBlocksByRequestID;
    }

    v18 = MEMORY[0x1E69A6128];
    v19 = MEMORY[0x19A8BBEF0](v12);
    v20 = MEMORY[0x19A8BBEF0](v13);
    v21 = [v18 pairWithFirst:v19 second:v20];
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v21 forKey:stringGUID];

    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = pseudonymCopy;
      v34 = 2112;
      v35 = stringGUID;
      v36 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "revokePseudonym called {pseudonym: %@, requestUUID: %@, self: %@}", buf, 0x20u);
    }

    daemonController = [(_IDSService *)self daemonController];
    uniqueID = [v11 uniqueID];
    propertiesCopy = v29;
    [daemonController revokePseudonym:pseudonymCopy onAccount:uniqueID requestProperties:v29 requestUUID:stringGUID];

    v25 = v31;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v33 = pseudonymCopy;
      v34 = 2112;
      v35 = accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched pseudonym -- returning nil {pseudonym: %@, accounts: %@}", buf, 0x16u);
    }

    v25 = sub_195AC667C(400);
    (*(completionCopy + 2))(completionCopy, 0, v25);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)pseudonymPropertiesWithFeatureID:(id)d scopeID:(id)iD expiryDurationInSeconds:(double)seconds
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69A5398];
  iDCopy = iD;
  dCopy = d;
  v11 = [v8 alloc];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v14 = v13 + seconds;
  identifier = [(IDSServiceProperties *)self->_serviceProperties identifier];
  v20[0] = identifier;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [v11 initWithFeatureID:dCopy scopeID:iDCopy expiryEpoch:v16 allowedServices:v14];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)finishedProvisioningPseudonym:(id)pseudonym success:(BOOL)success error:(id)error forRequestUUID:(id)d
{
  successCopy = success;
  v37 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  dCopy = d;
  v12 = sub_195AC78FC(error);
  v13 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v13 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v28 = pseudonymCopy;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedProvisioningPseudonym called {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }

    v17 = +[IDSInternalQueueController sharedInstance];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195AC79FC;
    v21[3] = &unk_1E7442268;
    v22 = pseudonymCopy;
    v26 = successCopy;
    v23 = dCopy;
    v24 = v12;
    v25 = first;
    [v17 performBlock:v21];

    registration2 = v22;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v28 = pseudonymCopy;
      v29 = 2112;
      if (successCopy)
      {
        v19 = @"YES";
      }

      v30 = v19;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "finishedProvisioningPseudonym called but no block! {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)finishedRenewingPseudonym:(id)pseudonym success:(BOOL)success error:(id)error requestUUID:(id)d
{
  successCopy = success;
  v37 = *MEMORY[0x1E69E9840];
  pseudonymCopy = pseudonym;
  dCopy = d;
  v12 = sub_195AC78FC(error);
  v13 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v13 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v28 = pseudonymCopy;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedRenewingPseudonym called {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }

    v17 = +[IDSInternalQueueController sharedInstance];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195AC7DAC;
    v21[3] = &unk_1E7442268;
    v22 = pseudonymCopy;
    v26 = successCopy;
    v23 = dCopy;
    v24 = v12;
    v25 = first;
    [v17 performBlock:v21];

    registration2 = v22;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v28 = pseudonymCopy;
      v29 = 2112;
      if (successCopy)
      {
        v19 = @"YES";
      }

      v30 = v19;
      v31 = 2112;
      v32 = dCopy;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "finishedRenewingPseudonym called but no block! {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)finishedRevokingPseudonymWithSuccess:(BOOL)success error:(id)error requestUUID:(id)d
{
  successCopy = success;
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = sub_195AC78FC(error);
  v10 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v10 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      *buf = 138413058;
      if (successCopy)
      {
        v13 = @"YES";
      }

      v24 = v13;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedRevokingPseudonymWithSuccess called {success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AC8124;
    v18[3] = &unk_1E7441988;
    v22 = successCopy;
    v19 = dCopy;
    v20 = v9;
    v21 = first;
    [v14 performBlock:v18];

    registration2 = v19;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (successCopy)
      {
        v16 = @"YES";
      }

      v24 = v16;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "finishedRevokingPseudonymWithSuccess called but no block {success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x2Au);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)signData:(id)data withAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!dataCopy)
    {
LABEL_14:
      v33 = sub_195AC85F4(1u);
      completionCopy[2](completionCopy, 0, v33);

      goto LABEL_15;
    }
  }

  else
  {
    sub_195B3AC10();
    if (!dataCopy)
    {
      goto LABEL_14;
    }
  }

  if ((IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_14;
  }

  keyDiversifier = [optionsCopy keyDiversifier];
  diversifier = [keyDiversifier diversifier];
  v15 = diversifier != 0;

  keyDiversifier2 = [optionsCopy keyDiversifier];
  trackingPreventionSecret = [keyDiversifier2 trackingPreventionSecret];

  v18 = [optionsCopy keyType] != 1;
  if (v15 == (trackingPreventionSecret == 0) || ((v15 ^ v18) & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_14;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_195AC8C30;
  v42[3] = &unk_1E743E850;
  v19 = completionCopy;
  v43 = v19;
  v20 = MEMORY[0x19A8BBEF0](v42);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  v25 = MEMORY[0x1E69A6128];
  v26 = MEMORY[0x19A8BBEF0](v19);
  v35 = v20;
  v27 = MEMORY[0x19A8BBEF0](v20);
  v28 = [v25 pairWithFirst:v26 second:v27];
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v28 forKey:stringGUID];

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v45 = stringGUID;
    v46 = 2112;
    v47 = dataCopy;
    v48 = 2048;
    algorithmCopy = algorithm;
    v50 = 2112;
    v51 = optionsCopy;
    v52 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "signData called {requestID: %@, data: %@, algo: %ld, options: %@, self: %@}", buf, 0x34u);
  }

  daemonController = [(_IDSService *)self daemonController];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_195AC8C94;
  v36[3] = &unk_1E7442290;
  algorithmCopy2 = algorithm;
  v37 = dataCopy;
  selfCopy2 = self;
  v39 = optionsCopy;
  v40 = stringGUID;
  v31 = stringGUID;
  [daemonController forwardMethodWithReplyIsSync:0 block:v36];

LABEL_15:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  expectedDataCopy = expectedData;
  iCopy = i;
  optionsCopy = options;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3ACF4();
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    v36 = 1;
LABEL_18:
    v37 = sub_195AC85F4(v36);
    completionCopy[2](completionCopy, 0, v37);

    goto LABEL_19;
  }

  if (!dataCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!expectedDataCopy || !iCopy || (IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_17;
  }

  keyDiversifier = [optionsCopy keyDiversifier];
  diversifier = [keyDiversifier diversifier];
  v21 = diversifier != 0;

  keyDiversifier2 = [optionsCopy keyDiversifier];
  trackingPreventionSecret = [keyDiversifier2 trackingPreventionSecret];

  v24 = [optionsCopy keyType] != 1;
  if (v21 == (trackingPreventionSecret == 0) || ((v21 ^ v24) & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_17;
  }

  if (([iCopy isTokenURI] & 1) == 0)
  {
    v36 = 2;
    goto LABEL_18;
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_195AC9184;
  v51[3] = &unk_1E743E850;
  v25 = completionCopy;
  v52 = v25;
  v26 = MEMORY[0x19A8BBEF0](v51);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v29 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  v39 = MEMORY[0x1E69A6128];
  v40 = MEMORY[0x19A8BBEF0](v25);
  v42 = v26;
  v30 = MEMORY[0x19A8BBEF0](v26);
  v31 = [v39 pairWithFirst:v40 second:v30];
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v31 forKey:stringGUID];

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v54 = stringGUID;
    v55 = 2112;
    v56 = dataCopy;
    v57 = 2112;
    v58 = expectedDataCopy;
    v59 = 2112;
    v60 = iCopy;
    v61 = 2048;
    algorithmCopy = algorithm;
    v63 = 2112;
    v64 = optionsCopy;
    v65 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "verifySignedData called {requestID: %@, signedData: %@, data: %@, uri: %@, algo: %ld, options: %@, self: %@}", buf, 0x48u);
  }

  daemonController = [(_IDSService *)self daemonController];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_195AC91E8;
  v43[3] = &unk_1E74422B8;
  v44 = dataCopy;
  algorithmCopy2 = algorithm;
  v45 = expectedDataCopy;
  selfCopy2 = self;
  v47 = iCopy;
  v48 = optionsCopy;
  v49 = stringGUID;
  v34 = stringGUID;
  [daemonController forwardMethodWithReplyIsSync:0 block:v43];

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  payloadsCopy = payloads;
  optionsCopy = options;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3AD68();
    if (payloadsCopy)
    {
      goto LABEL_3;
    }

LABEL_24:
    v41 = sub_195AC85F4(1u);
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F8], v41);

    goto LABEL_25;
  }

  if (!payloadsCopy)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (![payloadsCopy count] || (IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_24;
  }

  keyDiversifier = [optionsCopy keyDiversifier];
  diversifier = [keyDiversifier diversifier];
  v15 = diversifier != 0;

  keyDiversifier2 = [optionsCopy keyDiversifier];
  trackingPreventionSecret = [keyDiversifier2 trackingPreventionSecret];

  v18 = [optionsCopy keyType] != 1;
  if (v15 == (trackingPreventionSecret == 0) || ((v15 ^ v18) & 1) == 0)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_24;
  }

  algorithmCopy = algorithm;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195AC9754;
  v57[3] = &unk_1E743E850;
  v19 = completionCopy;
  v58 = v19;
  v20 = MEMORY[0x19A8BBEF0](v57);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  selfCopy = self;
  v25 = MEMORY[0x1E69A6128];
  v26 = MEMORY[0x19A8BBEF0](v19);
  v44 = v20;
  v27 = MEMORY[0x19A8BBEF0](v20);
  v28 = [v25 pairWithFirst:v26 second:v27];
  v43 = stringGUID;
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v28 forKey:stringGUID];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = payloadsCopy;
  v31 = [v30 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v54;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(&v53 + 1) + 8 * i) requiringSecureCoding:1 error:0];
        if (v35)
        {
          [v29 addObject:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v32);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v60 = v43;
    v61 = 2048;
    v62 = algorithmCopy;
    v63 = 2112;
    v64 = optionsCopy;
    v65 = 2112;
    v66 = selfCopy;
    _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "verifySignedPayloads called {requestID: %@, algo: %ld, options: %@, self: %@}", buf, 0x2Au);
  }

  daemonController = [(_IDSService *)selfCopy daemonController];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_195AC97BC;
  v47[3] = &unk_1E7442290;
  v52 = algorithmCopy;
  v48 = v29;
  v49 = selfCopy;
  v50 = optionsCopy;
  v51 = v43;
  v38 = v43;
  v39 = v29;
  [daemonController forwardMethodWithReplyIsSync:0 block:v47];

LABEL_25:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)finishedSigningForRequest:(id)request signedData:(id)data error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  dataCopy = data;
  v10 = sub_195AC78FC(error);
  v11 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:requestCopy];
  first = [v11 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:requestCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v22 = requestCopy;
      v23 = 2112;
      v24 = dataCopy;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedSigningForRequest called {requestUUID: %@, signedData: %@, error: %@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195AC9AB8;
    v17[3] = &unk_1E743F1D8;
    v20 = first;
    v18 = dataCopy;
    v19 = v10;
    [v14 performBlock:v17];

    registration2 = v20;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v22 = requestCopy;
      v23 = 2112;
      v24 = dataCopy;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_ERROR, "finishedSigningForRequest called but no block! {requestUUID: %@, signedData: %@, error: %@, self: %@}", buf, 0x2Au);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finishedVerifyingSignedDataForRequest:(id)request success:(BOOL)success error:(id)error
{
  successCopy = success;
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = sub_195AC78FC(error);
  v10 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:requestCopy];
  first = [v10 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:requestCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      *buf = 138413058;
      v23 = requestCopy;
      if (successCopy)
      {
        v13 = @"YES";
      }

      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedVerifyingSignedDataForRequest called {requestUUID: %@, sucess: %@, error: %@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AC9D3C;
    v18[3] = &unk_1E743F160;
    v20 = first;
    v21 = successCopy;
    v19 = v9;
    [v14 performBlock:v18];

    registration2 = v20;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      v17 = @"NO";
      *buf = 138413058;
      v23 = requestCopy;
      v24 = 2112;
      if (successCopy)
      {
        v17 = @"YES";
      }

      v25 = v17;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_ERROR, "finishedVerifyingSignedDataForRequest called but no block! {requestUUID: %@, sucess: %@, error: %@, self: %@}", buf, 0x2Au);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finishedVerifyingBatchedSignedDataForRequest:(id)request results:(id)results error:(id)error
{
  v46 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultsCopy = results;
  v10 = sub_195AC78FC(error);
  v11 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:requestCopy];
  first = [v11 first];

  if (first)
  {
    v28 = first;
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:requestCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v41 = requestCopy;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedVerifyingSignedDataForRequest called {requestUUID: %@, error: %@, self: %@}", buf, 0x20u);
    }

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = resultsCopy;
    v14 = resultsCopy;
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * i);
          v20 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:v19];
          v21 = [v14 objectForKeyedSubscript:v19];
          if (v21)
          {
            v22 = [MEMORY[0x1E696ACD0] ids_secureUnarchiveObjectOfClass:objc_opt_class() withData:v21];
            v23 = v22;
            if (v20)
            {
              v24 = v22 == 0;
            }

            else
            {
              v24 = 1;
            }

            if (!v24)
            {
              [v30 setObject:v22 forKeyedSubscript:v20];
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
    }

    v25 = +[IDSInternalQueueController sharedInstance];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_195ACA0F4;
    v31[3] = &unk_1E743F1D8;
    first = v28;
    v34 = v28;
    v32 = v30;
    v33 = v10;
    registration2 = v30;
    [v25 performBlock:v31];

    resultsCopy = v29;
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = requestCopy;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      selfCopy2 = self;
      _os_log_error_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_ERROR, "finishedVerifyingSignedDataForRequest called but no block! {requestUUID: %@, error: %@, self: %@}", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  iCopy = i;
  rICopy = rI;
  completionCopy = completion;
  if (!completionCopy)
  {
    sub_195B3ADDC();
  }

  if ([iCopy FZIDType] == 4)
  {
    v13 = [(_IDSService *)self _accountWithURI:rICopy orPseudonym:0];
    v14 = v13;
    if (rICopy)
    {
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      prefixedURI = [0 prefixedURI];
      v16 = [(_IDSService *)self _sendingAccountForAccount:0 destination:0 fromID:prefixedURI];

      rICopy = [(_IDSService *)self _preferredURIForAccount:v16];
      v14 = v16;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    if (rICopy)
    {
      actionCopy = action;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_195ACA778;
      v36[3] = &unk_1E743E850;
      v17 = completionCopy;
      v37 = v17;
      v18 = MEMORY[0x19A8BBEF0](v36);
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      completionBlocksByRequestID = self->_completionBlocksByRequestID;
      if (!completionBlocksByRequestID)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v22 = self->_completionBlocksByRequestID;
        self->_completionBlocksByRequestID = Mutable;

        completionBlocksByRequestID = self->_completionBlocksByRequestID;
      }

      v23 = MEMORY[0x1E69A6128];
      v24 = MEMORY[0x19A8BBEF0](v17);
      v34 = v18;
      v25 = MEMORY[0x19A8BBEF0](v18);
      v26 = [v23 pairWithFirst:v24 second:v25];
      [(NSMutableDictionary *)completionBlocksByRequestID setObject:v26 forKey:stringGUID];

      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v39 = iCopy;
        v40 = 2112;
        v41 = rICopy;
        v42 = 2112;
        v43 = stringGUID;
        v44 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "reportApprovalOfURI called {tempURI: %@, fromURI: %@, requestID: %@, self: %@}", buf, 0x2Au);
      }

      daemonController = [(_IDSService *)self daemonController];
      uniqueID = [v14 uniqueID];
      [daemonController reportAction:actionCopy ofTempURI:iCopy fromURI:rICopy onAccount:uniqueID requestUUID:stringGUID];

      v30 = v37;
      goto LABEL_18;
    }

LABEL_15:
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      accounts = [(_IDSService *)self accounts];
      *buf = 138412546;
      v39 = rICopy;
      v40 = 2112;
      v41 = accounts;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "No account matched to report with -- returning nil {fromURI: %@, accounts: %@}", buf, 0x16u);
    }

    v30 = sub_195ACA530(400);
    (*(completionCopy + 2))(completionCopy, v30);
LABEL_18:

    goto LABEL_19;
  }

  v14 = sub_195ACA530(400);
  (*(completionCopy + 2))(completionCopy, v14);
LABEL_19:

  v33 = *MEMORY[0x1E69E9840];
}

- (void)finishedReportingRequestUUID:(id)d withError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = sub_195AC78FC(error);
  v8 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:dCopy];
  first = [v8 first];

  if (first)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:dCopy];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = dCopy;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "finishedReportingRequestUUID called {requestUUID: %@, error:%@, self: %@}", &v13, 0x20u);
    }

    (first)[2](first, v7);
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = dCopy;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "finishedReportingRequestUUID called but no block {requestUUID: %@, error:%@, self: %@}", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateSubServices:(id)services forDevice:(id)device
{
  v39 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  deviceCopy = device;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AE50();
    }
  }

  if (deviceCopy)
  {
    goto LABEL_17;
  }

  devices = [(_IDSService *)self devices];
  _copyForEnumerating = [devices _copyForEnumerating];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = _copyForEnumerating;
  deviceCopy = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (deviceCopy)
  {
    v14 = *v35;
    while (2)
    {
      for (i = 0; i != deviceCopy; i = (i + 1))
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        _internal = [v16 _internal];
        isActive = [_internal isActive];

        if (isActive)
        {
          deviceCopy = v16;
          goto LABEL_16;
        }
      }

      deviceCopy = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (deviceCopy)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  if (deviceCopy)
  {
LABEL_17:
    _internal2 = [deviceCopy _internal];
    uniqueIDOverride = [_internal2 uniqueIDOverride];

    if (![uniqueIDOverride length])
    {
      _internal3 = [deviceCopy _internal];
      uniqueID = [_internal3 uniqueID];

      uniqueIDOverride = uniqueID;
    }

    if ([uniqueIDOverride length])
    {
      v23 = [(NSMutableDictionary *)self->_subServices objectForKey:uniqueIDOverride];
      warning = v23;
      if (v23 != servicesCopy && ([v23 isEqualToArray:servicesCopy]& 1) == 0)
      {
        subServices = self->_subServices;
        if (!subServices)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v27 = self->_subServices;
          self->_subServices = Mutable;

          subServices = self->_subServices;
        }

        [(NSMutableDictionary *)subServices setObject:servicesCopy forKey:uniqueIDOverride];
        daemonController = [(_IDSService *)self daemonController];
        _internal4 = [(IDSAccountController *)self->_accountController _internal];
        serviceName = [_internal4 serviceName];
        [daemonController updateSubServices:servicesCopy forService:serviceName deviceUniqueID:uniqueIDOverride];

        v31 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      warning = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_195B3AEF0(deviceCopy);
      }
    }

    v31 = 0;
LABEL_28:

    goto LABEL_29;
  }

  deviceCopy = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(deviceCopy, OS_LOG_TYPE_ERROR))
  {
    sub_195B3AF7C();
  }

  v31 = 0;
LABEL_29:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)resendSubServicesToDaemonForCurrentDevice
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AFB0();
    }
  }

  warning = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
  {
    sub_195B3B050();
  }

  devices = [(_IDSService *)self devices];
  _copyForEnumerating = [devices _copyForEnumerating];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = _copyForEnumerating;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        _internal = [v13 _internal];
        isActive = [_internal isActive];

        if (isActive)
        {
          v10 = v13;
          goto LABEL_17;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (v10)
  {
    _internal2 = [v10 _internal];
    uniqueIDOverride = [_internal2 uniqueIDOverride];

    if (![uniqueIDOverride length])
    {
      _internal3 = [v10 _internal];
      uniqueID = [_internal3 uniqueID];

      uniqueIDOverride = uniqueID;
    }

    if ([uniqueIDOverride length])
    {
      warning2 = [(NSMutableDictionary *)self->_subServices objectForKey:uniqueIDOverride];
      daemonController = [(_IDSService *)self daemonController];
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      serviceName = [_internal4 serviceName];
      [daemonController updateSubServices:warning2 forService:serviceName deviceUniqueID:uniqueIDOverride];
    }

    else
    {
      warning2 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_195B3AEF0(v10);
      }
    }
  }

  else
  {
    uniqueIDOverride = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(uniqueIDOverride, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AF7C();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSendMessageWithAccount:(id)account toDestination:(id)destination
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  destinationCopy = destination;
  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = accountCopy;
    v32 = 2112;
    v33 = destinationCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Attempting To Send message from account %@ to destinations %@", buf, 0x16u);
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];

  if ([serviceName isEqualToIgnoringCase:@"com.apple.private.alloy.idscredentials"] & 1) != 0 || (objc_msgSend(serviceName, "isEqualToIgnoringCase:", @"com.apple.private.alloy.pbbridge"))
  {
    goto LABEL_22;
  }

  if (!self->_clientIsSandboxed)
  {
    warning = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B124();
    }
  }

  if ([accountCopy accountType] == 2)
  {
    destinationURIs = [destinationCopy destinationURIs];
    v13 = [destinationURIs count];

    if (v13 < 2)
    {
      destinationURIs2 = [destinationCopy destinationURIs];
      allObjects = [destinationURIs2 allObjects];
      __imFirstObject = [allObjects __imFirstObject];
      _stripFZIDPrefix = [__imFirstObject _stripFZIDPrefix];
      if ([_stripFZIDPrefix _appearsToBeEmail])
      {
      }

      else
      {
        destinationURIs3 = [destinationCopy destinationURIs];
        [destinationURIs3 allObjects];
        v20 = v29 = allObjects;
        [v20 __imFirstObject];
        v21 = v28 = destinationURIs2;
        _stripFZIDPrefix2 = [v21 _stripFZIDPrefix];
        _appearsToBePhoneNumber = [_stripFZIDPrefix2 _appearsToBePhoneNumber];

        if ((_appearsToBePhoneNumber & 1) == 0)
        {
          v23 = ![(_IDSService *)self _isDroppingMessages];
          goto LABEL_23;
        }
      }

      v14 = +[IDSLogging _IDSService];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 0;
      v15 = "Attempting to send to a remote destination from a local account, this is permited if proxy is permitted and will fail in the daemon if not";
      goto LABEL_20;
    }

    v14 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Attempting to send to more than 1 destination, this message will fail in the daemon if necessary";
LABEL_20:
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    }
  }

  else
  {
    v14 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "Attempting to send on a non local account, this message is allowed to progress";
      goto LABEL_20;
    }
  }

LABEL_21:

LABEL_22:
  LOBYTE(v23) = 1;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_preferredURIForAccount:(id)account
{
  v4 = MEMORY[0x1E69A5428];
  accountCopy = account;
  v6 = [v4 alloc];
  aliasStrings = [accountCopy aliasStrings];

  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  _IDSPrefersPhoneNumbersForServiceIdentifier();
  v10 = _IDSCopyCallerID();
  v11 = [v6 initWithUnprefixedURI:v10];

  return v11;
}

- (id)_sendingAccountForAccount:(id)account destination:(id)destination fromID:(id)d
{
  v99 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  destinationCopy = destination;
  dCopy = d;
  v11 = dCopy;
  if (accountCopy)
  {
    _internal = [accountCopy _internal];
    serviceName = [_internal serviceName];
    if ([serviceName isEqualToString:@"com.apple.madrid"])
    {
LABEL_11:

LABEL_12:
      v22 = accountCopy;
      goto LABEL_59;
    }

    _internal2 = [accountCopy _internal];
    serviceName2 = [_internal2 serviceName];
    if ([serviceName2 isEqualToString:@"com.apple.madrid.lite"])
    {
LABEL_10:

      goto LABEL_11;
    }

    _internal3 = [accountCopy _internal];
    serviceName3 = [_internal3 serviceName];
    if ([serviceName3 isEqualToString:@"com.apple.madrid.lite.relay"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v82 = serviceName3;
    v87 = _internal3;
    _internal4 = [accountCopy _internal];
    serviceName4 = [_internal4 serviceName];
    if ([serviceName4 isEqualToString:@"com.apple.private.alloy.biz"])
    {
LABEL_8:

      _internal3 = v87;
      serviceName3 = v82;
      goto LABEL_9;
    }

    v78 = serviceName4;
    v79 = _internal4;
    _internal5 = [accountCopy _internal];
    serviceName5 = [_internal5 serviceName];
    if ([serviceName5 isEqualToString:@"com.apple.private.alloy.sms"])
    {

      serviceName4 = v78;
      _internal4 = v79;
      goto LABEL_8;
    }

    v76 = serviceName5;
    v77 = _internal5;
    _internal6 = [accountCopy _internal];
    serviceName6 = [_internal6 serviceName];
    if ([serviceName6 isEqualToString:@"com.apple.private.alloy.facetime.multi"])
    {
      v64 = 1;
    }

    else
    {
      _internal7 = [accountCopy _internal];
      serviceName7 = [_internal7 serviceName];
      if ([serviceName7 isEqualToString:@"com.apple.private.alloy.facetime.audio"])
      {
        v64 = 1;
      }

      else
      {
        _internal8 = [accountCopy _internal];
        serviceName8 = [_internal8 serviceName];
        if ([serviceName8 isEqualToString:@"com.apple.private.alloy.facetime.video"])
        {
          v64 = 1;
        }

        else
        {
          _internal9 = [accountCopy _internal];
          serviceName9 = [_internal9 serviceName];
          if ([serviceName9 isEqualToString:@"com.apple.private.alloy.maps.eta"])
          {
            v64 = 1;
          }

          else
          {
            _internal10 = [accountCopy _internal];
            serviceName10 = [_internal10 serviceName];
            if ([serviceName10 isEqualToString:@"com.apple.private.alloy.nearby"])
            {
              v64 = 1;
            }

            else
            {
              _internal11 = [accountCopy _internal];
              [_internal11 serviceName];
              v65 = v86 = v11;
              v64 = [v65 isEqualToString:@"com.apple.private.alloy.willow"];

              v11 = v86;
            }
          }
        }
      }
    }

    if (v64)
    {
      goto LABEL_12;
    }

    v85 = v11;
    anyObject = accountCopy;
  }

  else
  {
    v85 = dCopy;
    accounts = [(_IDSService *)self accounts];
    anyObject = [accounts anyObject];
  }

  _internal12 = [(IDSAccountController *)self->_accountController _internal];
  accounts2 = [_internal12 accounts];
  allObjects = [accounts2 allObjects];
  v28 = [allObjects __imArrayByFilteringWithBlock:&unk_1F09E6BA0];
  v29 = [v28 sortedArrayUsingComparator:&unk_1F09E6BC0];

  iCloudAccount = [(_IDSService *)self iCloudAccount];
  v88 = iCloudAccount;
  if (destinationCopy && (v31 = iCloudAccount, [accountCopy accountType] != 2))
  {
    v80 = destinationCopy;
    v83 = v29;
    destinationURIs = [destinationCopy destinationURIs];
    v34 = [destinationURIs __imSetByApplyingBlock:&unk_1F09E6BE0];
    v35 = [v34 mutableCopy];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    handles = [v31 handles];
    v37 = [handles countByEnumeratingWithState:&v93 objects:v98 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v94;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v94 != v39)
          {
            objc_enumerationMutation(handles);
          }

          v41 = [*(*(&v93 + 1) + 8 * i) URI];
          unprefixedURI = [v41 unprefixedURI];
          [v35 removeObject:unprefixedURI];
        }

        v38 = [handles countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v38);
    }

    v32 = [v35 count] != 0;
    destinationCopy = v80;
    v29 = v83;
  }

  else
  {
    v32 = 0;
  }

  v43 = [v29 __imArrayByFilteringWithBlock:&unk_1F09E6C00];
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];
  v46 = _IDSPrefersPhoneNumbersForServiceIdentifier();

  if (v46 && [v43 count])
  {
    firstObject = [v43 firstObject];
    v11 = v85;
LABEL_38:
    v48 = v88;
    goto LABEL_39;
  }

  v11 = v85;
  v48 = v88;
  if (!v88 || v32 && ([v88 isUsableForOuterMessaging] & 1) == 0 && objc_msgSend(v43, "count"))
  {
    if (![v29 count])
    {
      goto LABEL_40;
    }

    v49 = v29;
    firstObject2 = [v43 firstObject];
    v51 = firstObject2;
    if (firstObject2)
    {
      firstObject3 = firstObject2;
    }

    else
    {
      firstObject3 = [v49 firstObject];
    }

    firstObject = firstObject3;

    anyObject = v51;
    v29 = v49;
    goto LABEL_38;
  }

  firstObject = v88;
LABEL_39:

  anyObject = firstObject;
LABEL_40:
  if (v11 && ![(_IDSService *)self _canAccount:anyObject sendWithFromID:v11])
  {
    if (anyObject == v48 || ![(_IDSService *)self _canAccount:v48 sendWithFromID:v11])
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v84 = v29;
      v53 = v29;
      v54 = [v53 countByEnumeratingWithState:&v89 objects:v97 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = v11;
        v81 = destinationCopy;
        v57 = *v90;
        while (2)
        {
          for (j = 0; j != v55; ++j)
          {
            if (*v90 != v57)
            {
              objc_enumerationMutation(v53);
            }

            v59 = *(*(&v89 + 1) + 8 * j);
            if (anyObject != v59 && [(_IDSService *)self _canAccount:*(*(&v89 + 1) + 8 * j) sendWithFromID:v56])
            {
              v60 = v59;

              anyObject = v60;
              goto LABEL_56;
            }
          }

          v55 = [v53 countByEnumeratingWithState:&v89 objects:v97 count:16];
          if (v55)
          {
            continue;
          }

          break;
        }

LABEL_56:
        destinationCopy = v81;
        v29 = v84;
        v11 = v56;
        v48 = v88;
      }
    }

    else
    {
      v53 = anyObject;
      anyObject = v48;
    }
  }

  v22 = anyObject;

LABEL_59:
  v61 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BOOL)_canAccount:(id)account sendWithFromID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  v7 = IDSCopyRawAddressForDestination(dCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  aliasStrings = [accountCopy aliasStrings];
  v9 = [aliasStrings countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(aliasStrings);
      }

      _stripFZIDPrefix = [*(*(&v27 + 1) + 8 * v12) _stripFZIDPrefix];
      v14 = [v7 isEqualToString:_stripFZIDPrefix];

      if (v14)
      {
        goto LABEL_19;
      }

      if (v10 == ++v12)
      {
        v10 = [aliasStrings countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (![dCopy _appearsToBePseudonymID])
  {
    LOBYTE(v15) = 0;
    goto LABEL_21;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  aliasStrings = [accountCopy pseudonyms];
  v15 = [aliasStrings countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = *v24;
LABEL_12:
    v17 = 0;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(aliasStrings);
      }

      v18 = [*(*(&v23 + 1) + 8 * v17) URI];
      prefixedURI = [v18 prefixedURI];
      v20 = [v7 isEqualToString:prefixedURI];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [aliasStrings countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v15)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    LOBYTE(v15) = 1;
  }

LABEL_20:

LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)sendOpportunisticData:(id)data options:(id)options identifier:(id)identifier error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  identifierCopy = identifier;
  v13 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v13 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B158();
    }
  }

  if (!identifierCopy)
  {
    identifierCopy = @"Default";
  }

  if (error)
  {
    *error = 0;
  }

  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
  v17 = [(_IDSService *)self _sendingAccountForAccount:0];
  uniqueID = [v17 uniqueID];

  opportunistic = [MEMORY[0x1E69A5270] opportunistic];
  if (os_log_type_enabled(opportunistic, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = identifierCopy;
    v27 = 2112;
    v28 = optionsCopy;
    v29 = 2048;
    v30 = [dataCopy length];
    _os_log_impl(&dword_1959FF000, opportunistic, OS_LOG_TYPE_DEFAULT, "Client request to send opportunistic data {identifier: %@, options: %@, dataLength: %llu}", &v25, 0x20u);
  }

  if (!dictionaryRepresentation)
  {
    dictionaryRepresentation = MEMORY[0x1E695E0F8];
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController sendOpportunisticData:dataCopy onService:serviceName usingAccountWithUniqueID:uniqueID withIdentifier:identifierCopy options:dictionaryRepresentation];

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)cancelOpportunisticDataWithIdentifier:(id)identifier error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
  }

  else
  {
    v7 = @"Default";
  }

  if (error)
  {
    *error = 0;
  }

  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];

  opportunistic = [MEMORY[0x1E69A5270] opportunistic];
  if (os_log_type_enabled(opportunistic, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = serviceName;
    _os_log_impl(&dword_1959FF000, opportunistic, OS_LOG_TYPE_DEFAULT, "Client request to cancel opportunistic data {identifier: %@, serviceName: %@}", &v14, 0x16u);
  }

  daemonController = [(_IDSService *)self daemonController];
  [daemonController cancelOpportunisticDataOnService:serviceName withIdentifier:v7];

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)sendEncryptedOffGridMessage:(id)message options:(id)options completion:(id)completion
{
  v102[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[IDSInternalQueueController sharedInstance];
  LODWORD(options) = [v8 assertQueueIsCurrent];

  if (options)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B1F8();
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  recipientURI = [messageCopy recipientURI];
  prefixedURI = [recipientURI prefixedURI];
  v13 = [v10 initWithObjects:{prefixedURI, 0}];

  senderURI = [messageCopy senderURI];
  prefixedURI2 = [senderURI prefixedURI];

  v16 = MEMORY[0x1E69A5240];
  if (prefixedURI2)
  {
    v17 = [v13 setByAddingObject:prefixedURI2];
    v77 = [v16 destinationWithDestinations:v17];
  }

  else
  {
    v77 = [MEMORY[0x1E69A5240] destinationWithDestinations:v13];
  }

  v18 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v77 fromID:prefixedURI2];
  _internal = [v18 _internal];
  uniqueID = [_internal uniqueID];

  identifier = [optionsCopy identifier];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  payload = [messageCopy payload];
  if (payload)
  {
    CFDictionarySetValue(v20, *MEMORY[0x1E69A4F78], payload);
  }

  theDict = v20;

  encryptionProperties = [messageCopy encryptionProperties];
  segmentNumber = [encryptionProperties segmentNumber];

  if (segmentNumber)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A4E18], segmentNumber);
  }

  encryptionProperties2 = [messageCopy encryptionProperties];
  totalSegments = [encryptionProperties2 totalSegments];

  if (totalSegments)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5190], totalSegments);
  }

  v71 = v13;

  originalUUID = [optionsCopy originalUUID];
  if (originalUUID)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A4F70], originalUUID);
  }

  v27 = MEMORY[0x1E695DF90];
  v72 = optionsCopy;
  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
  v29 = [v27 dictionaryWithDictionary:dictionaryRepresentation];

  CFDictionarySetValue(v29, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  if (prefixedURI2)
  {
    CFDictionarySetValue(v29, @"IDSSendMessageOptionFromID", prefixedURI2);
  }

  v30 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v29, @"IDSSendMessageOptionWantsResponse", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v29, @"IDSSendMessageOptionWantsDeliveryStatus", v30);
  v31 = MEMORY[0x1E695DFD8];
  v102[0] = *MEMORY[0x1E69A5088];
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:1];
  v33 = [v31 setWithArray:v32];

  if (v33)
  {
    CFDictionarySetValue(v29, @"IDSSendMessageOptionRequireAllRegistrationProperties", v33);
  }

  v34 = +[IDSLogging _IDSService];
  v74 = v18;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    payload2 = [messageCopy payload];
    v36 = [payload2 debugDescription];
    encryptionProperties3 = [messageCopy encryptionProperties];
    segmentNumber2 = [encryptionProperties3 segmentNumber];
    [messageCopy encryptionProperties];
    v40 = v39 = prefixedURI2;
    totalSegments2 = [v40 totalSegments];
    *buf = 138413314;
    v93 = identifier;
    v94 = 2112;
    v95 = v77;
    v96 = 2112;
    v97 = v36;
    v98 = 2112;
    v99 = segmentNumber2;
    v100 = 2112;
    v101 = totalSegments2;
    _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendMessageLite with identifier: %@ destination: %@ - Message {pn: %@, tp: %@, p: %@}", buf, 0x34u);

    prefixedURI2 = v39;
    v18 = v74;
  }

  if ([(_IDSService *)self canSendMessageWithAccount:v18 toDestination:v77])
  {
    if (uniqueID)
    {
      v42 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v42)
      {
        v43 = v42;
        _internal2 = [v42 _internal];
        v91 = identifier;
        v90 = 0;
        [_internal2 sendMessage:theDict toDestinations:v77 priority:300 options:v29 identifier:&v91 error:&v90];
        v45 = v91;

        v46 = v90;
        identifier = v45;
        goto LABEL_33;
      }
    }

    v48 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v18 _internal];
      *buf = 138412290;
      v93 = _internal3;
      _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "sendMessageLite - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v43 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *buf = 138412290;
      v93 = accounts;
      _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "sendMessageLite - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v43 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      _internal5 = [v18 _internal];
      *buf = 138412290;
      v93 = _internal5;
      _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "sendMessageLite - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v46 = 0;
LABEL_33:

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = sub_195ACCF0C;
  v86[3] = &unk_1E743F1D8;
  v52 = completionCopy;
  v89 = v52;
  v53 = messageCopy;
  v87 = v53;
  v54 = identifier;
  v88 = v54;
  v55 = MEMORY[0x19A8BBEF0](v86);
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = sub_195ACCF98;
  v82[3] = &unk_1E7442320;
  v56 = v52;
  v85 = v56;
  v57 = v53;
  v83 = v57;
  v58 = v54;
  v84 = v58;
  v59 = MEMORY[0x19A8BBEF0](v82);
  if (!self->_completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;
  }

  if (v58)
  {
    v62 = self->_completionBlocksByRequestID;
    v63 = prefixedURI2;
    v64 = MEMORY[0x1E69A6128];
    v79 = v46;
    v81 = v57;
    v65 = v29;
    v66 = MEMORY[0x19A8BBEF0](v59);
    v67 = MEMORY[0x19A8BBEF0](v55);
    v68 = [v64 pairWithFirst:v66 second:v67];
    [(NSMutableDictionary *)v62 setObject:v68 forKey:v58];

    prefixedURI2 = v63;
    v29 = v65;
    v46 = v79;
    v57 = v81;
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)sendServiceUpdateMessage:(id)message options:(id)options completion:(id)completion
{
  v85 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  optionsCopy = options;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(options) = [v10 assertQueueIsCurrent];

  if (options)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B298();
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  recipientURI = [messageCopy recipientURI];
  prefixedURI = [recipientURI prefixedURI];
  v15 = [v12 initWithObjects:{prefixedURI, 0}];

  senderURI = [messageCopy senderURI];
  prefixedURI2 = [senderURI prefixedURI];

  v18 = MEMORY[0x1E69A5240];
  if (prefixedURI2)
  {
    v19 = [v15 setByAddingObject:prefixedURI2];
    v20 = [v18 destinationWithDestinations:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E69A5240] destinationWithDestinations:v15];
  }

  v66 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v20 fromID:prefixedURI2];
  _internal = [v66 _internal];
  uniqueID = [_internal uniqueID];

  v22 = MEMORY[0x1E695DF90];
  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];

  v24 = [v22 dictionaryWithDictionary:dictionaryRepresentation];

  CFDictionarySetValue(v24, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  if (prefixedURI2)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionFromID", prefixedURI2);
  }

  v25 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v24, @"IDSSendMessageOptionSkipPayloadCheck", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionForceEncryptionOff", v25);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionWantsResponse", v25);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionWantsCertifiedDelivery", v25);
  v63 = v24;
  CFDictionarySetValue(v24, @"IDSSendMessageOptionCommand", &unk_1F0A299F0);
  v26 = +[IDSLogging _IDSService];
  v65 = v20;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    senderURI2 = [messageCopy senderURI];
    recipientURI2 = [messageCopy recipientURI];
    *buf = 138413058;
    v78 = v65;
    v79 = 2112;
    v80 = senderURI2;
    v81 = 2112;
    v82 = recipientURI2;
    v83 = 2048;
    preferredServiceType = [messageCopy preferredServiceType];
    _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage with destination: %@ - Message {senderURI: %@, recipientURI: %@, preferredServiceType: %ld}", buf, 0x2Au);

    v20 = v65;
  }

  if ([(_IDSService *)self canSendMessageWithAccount:v66 toDestination:v20])
  {
    if (uniqueID)
    {
      v29 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v29)
      {
        v30 = v29;
        _internal2 = [v29 _internal];
        v75 = 0;
        v76 = 0;
        [_internal2 sendMessage:0 toDestinations:v20 priority:300 options:v24 identifier:&v76 error:&v75];
        v32 = v76;
        v33 = v75;

        goto LABEL_23;
      }
    }

    v35 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v66 _internal];
      *buf = 138412290;
      v78 = _internal3;
      _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v30 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *buf = 138412290;
      v78 = accounts;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v30 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      _internal5 = [v66 _internal];
      *buf = 138412290;
      v78 = _internal5;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v32 = 0;
  v33 = 0;
LABEL_23:

  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = sub_195ACD720;
  v71[3] = &unk_1E743F1D8;
  v39 = completionCopy;
  v74 = v39;
  v40 = messageCopy;
  v72 = v40;
  v41 = v32;
  v73 = v41;
  v42 = MEMORY[0x19A8BBEF0](v71);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = sub_195ACD7AC;
  v67[3] = &unk_1E7442320;
  v43 = v39;
  v70 = v43;
  v44 = v40;
  v68 = v44;
  v45 = v41;
  v69 = v45;
  v46 = MEMORY[0x19A8BBEF0](v67);
  if (!self->_completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;
  }

  if (v45)
  {
    v49 = self->_completionBlocksByRequestID;
    v50 = MEMORY[0x1E69A6128];
    v60 = v43;
    v62 = v44;
    v51 = prefixedURI2;
    v52 = v15;
    v53 = MEMORY[0x19A8BBEF0](v46);
    v54 = MEMORY[0x19A8BBEF0](v42);
    v55 = v42;
    v56 = v33;
    v57 = v54;
    v58 = [v50 pairWithFirst:v53 second:v54];
    [(NSMutableDictionary *)v49 setObject:v58 forKey:v45];

    v33 = v56;
    v42 = v55;

    v15 = v52;
    prefixedURI2 = v51;
    v43 = v60;
    v44 = v62;
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)sendServerMessage:(id)message options:(id)options completion:(id)completion
{
  v91 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  optionsCopy = options;
  completionCopy = completion;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(options) = [v10 assertQueueIsCurrent];

  if (options)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B338();
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  recipientURI = [messageCopy recipientURI];
  prefixedURI = [recipientURI prefixedURI];
  v15 = [v12 initWithObjects:{prefixedURI, 0}];

  senderURI = [messageCopy senderURI];
  prefixedURI2 = [senderURI prefixedURI];

  v18 = MEMORY[0x1E69A5240];
  if (prefixedURI2)
  {
    v19 = [v15 setByAddingObject:prefixedURI2];
    v20 = [v18 destinationWithDestinations:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E69A5240] destinationWithDestinations:v15];
  }

  v72 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v20 fromID:prefixedURI2];
  _internal = [v72 _internal];
  uniqueID = [_internal uniqueID];

  v22 = MEMORY[0x1E695DF90];
  dictionaryRepresentation = [optionsCopy dictionaryRepresentation];
  v24 = [v22 dictionaryWithDictionary:dictionaryRepresentation];

  topLevelFields = [messageCopy topLevelFields];

  if (topLevelFields)
  {
    topLevelFields2 = [messageCopy topLevelFields];
    [v24 addEntriesFromDictionary:topLevelFields2];
  }

  if (prefixedURI2)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionFromID", prefixedURI2);
  }

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(optionsCopy, "command")}];
  if (v27)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionCommand", v27);
  }

  v28 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v24, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionSkipPayloadCheck", v28);
  CFDictionarySetValue(v24, @"IDSSendMessageOptionForceEncryptionOff", v28);
  v70 = v24;
  CFDictionarySetValue(v24, @"IDSSendMessageOptionWantsResponse", v28);
  v29 = +[IDSLogging _IDSService];
  v71 = v20;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    senderURI2 = [messageCopy senderURI];
    recipientURI2 = [messageCopy recipientURI];
    *buf = 138413058;
    v84 = v71;
    v85 = 2112;
    v86 = senderURI2;
    v87 = 2112;
    v88 = recipientURI2;
    v89 = 2048;
    command = [optionsCopy command];
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "sendServerMessage with destination: %@ - Message {senderURI: %@, recipientURI: %@, command: %ld}", buf, 0x2Au);

    v20 = v71;
  }

  v68 = prefixedURI2;
  if ([(_IDSService *)self canSendMessageWithAccount:v72 toDestination:v20])
  {
    if (uniqueID)
    {
      v32 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v32)
      {
        v33 = v32;
        _internal2 = [v32 _internal];
        v35 = v20;
        v36 = _internal2;
        v81 = 0;
        v82 = 0;
        [_internal2 sendMessage:0 toDestinations:v35 priority:300 options:v24 identifier:&v82 error:&v81];
        v37 = v82;
        v38 = v81;

        goto LABEL_27;
      }
    }

    v40 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v72 _internal];
      *buf = 138412290;
      v84 = _internal3;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "sendServerMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v33 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *buf = 138412290;
      v84 = accounts;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendServerMessage - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v33 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      _internal5 = [v72 _internal];
      *buf = 138412290;
      v84 = _internal5;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v37 = 0;
  v38 = 0;
LABEL_27:

  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_195ACDF8C;
  v77[3] = &unk_1E743F1D8;
  v44 = completionCopy;
  v80 = v44;
  v45 = messageCopy;
  v78 = v45;
  v46 = v37;
  v79 = v46;
  v47 = MEMORY[0x19A8BBEF0](v77);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = sub_195ACE018;
  v73[3] = &unk_1E7442320;
  v48 = v44;
  v76 = v48;
  v49 = v45;
  v74 = v49;
  v50 = v46;
  v75 = v50;
  v51 = MEMORY[0x19A8BBEF0](v73);
  if (!self->_completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    completionBlocksByRequestID = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;
  }

  if (v50)
  {
    v54 = self->_completionBlocksByRequestID;
    v55 = MEMORY[0x1E69A6128];
    v67 = v38;
    v56 = MEMORY[0x19A8BBEF0](v51);
    v57 = MEMORY[0x19A8BBEF0](v47);
    v65 = v47;
    v58 = v48;
    v59 = v49;
    v60 = v15;
    v61 = optionsCopy;
    v62 = v57;
    v63 = [v55 pairWithFirst:v56 second:v57];
    [(NSMutableDictionary *)v54 setObject:v63 forKey:v50];

    v24 = v70;
    optionsCopy = v61;
    v15 = v60;
    v49 = v59;
    v48 = v58;
    v47 = v65;

    v38 = v67;
  }

  v64 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  v19 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v19 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B3D8();
    }
  }

  if (!self->_pretendingToBeFull)
  {
    priorityCopy = priority;
    v51 = messageCopy;
    v52 = optionsCopy;
    v50 = destinationsCopy;
    [MEMORY[0x1E69A5240] destinationWithDestinations:destinationsCopy];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = v57 = 0u;
    destinationURIs = [v53 destinationURIs];
    v24 = [destinationURIs countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v55;
LABEL_9:
      v27 = 0;
      while (1)
      {
        if (*v55 != v26)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v28 = *(*(&v54 + 1) + 8 * v27);
        if (![v28 _FZIDType])
        {
          serviceProperties = [(_IDSService *)self serviceProperties];
          wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

          if ((wantsPhoneNumberAccount & 1) == 0)
          {
            break;
          }
        }

        if (v25 == ++v27)
        {
          v25 = [destinationURIs countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v25)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      v37 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        serviceProperties2 = [(_IDSService *)self serviceProperties];
        identifier = [serviceProperties2 identifier];
        *buf = 138412546;
        v65 = v28;
        v66 = 2112;
        v67 = identifier;
        _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to %@ on service %@ since phone number accounts are disabled", buf, 0x16u);
      }

      destinationsCopy = v50;
      optionsCopy = v52;
      if (error)
      {
        v62 = *MEMORY[0x1E696A578];
        v63 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        uniqueID = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:uniqueID];
        *error = v22 = 0;
        v31 = accountCopy;
        goto LABEL_38;
      }

      v22 = 0;
      goto LABEL_39;
    }

LABEL_16:

    destinationURIs = [v52 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v31 = [(_IDSService *)self _sendingAccountForAccount:accountCopy destination:v53 fromID:destinationURIs];

    _internal = [v31 _internal];
    uniqueID = [_internal uniqueID];

    if ([(_IDSService *)self canSendMessageWithAccount:v31 toDestination:v53])
    {
      if (uniqueID)
      {
        v34 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:uniqueID];
        if (v34)
        {
          v35 = v34;
          _internal2 = [v34 _internal];
          v22 = [_internal2 sendMessage:v51 toDestinations:v53 priority:priorityCopy options:v52 identifier:identifier error:error];

          optionsCopy = v52;
          destinationsCopy = v50;
LABEL_36:

LABEL_38:
          accountCopy = v31;
LABEL_39:

          messageCopy = v51;
          goto LABEL_40;
        }
      }

      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [v31 _internal];
        *buf = 138412290;
        v65 = _internal3;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendMessage - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v44 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        _internal4 = [(IDSAccountController *)self->_accountController _internal];
        accounts = [_internal4 accounts];
        *buf = 138412290;
        v65 = accounts;
        _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendMessage - All accounts %@", buf, 0xCu);
      }

      destinationsCopy = v50;
      if (error)
      {
        v60 = *MEMORY[0x1E696A578];
        v61 = @"Could not find valid account";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v35];
        *error = v22 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v40 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [v31 _internal];
        *buf = 138412290;
        v65 = _internal5;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
      }

      destinationsCopy = v50;
      if (error)
      {
        v58 = *MEMORY[0x1E696A578];
        v59 = @"Destination device is not active for this account";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v35];
        *error = v22 = 0;
LABEL_35:
        optionsCopy = v52;
        goto LABEL_36;
      }
    }

    v22 = 0;
    optionsCopy = v52;
    goto LABEL_38;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:identifier];
  v22 = 1;
LABEL_40:

  v47 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)cancelMessageWithOptions:(id)options identifier:(id *)identifier error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v9 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v9 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B478();
    }
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v13 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionQueueOneIdentifier"];

  if (v13)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v15 = stringGUID;
    if (identifier)
    {
      v16 = stringGUID;
      *identifier = v15;
    }

    pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    v18 = [(_IDSService *)self _sendingAccountForAccount:0];
    uniqueID = [v18 uniqueID];

    v20 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138413314;
      v26 = pushTopic;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = uniqueID;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "cancelMessageWithOptions { service: %@  fromID: %@  queueOneIdentifier: %@  guid: %@ accountUniqueID: %@ }", &v25, 0x34u);
    }

    daemonController = [(_IDSService *)self daemonController];
    [daemonController cancelMessageWithQueueOneIdentifier:v13 fromID:v12 service:pushTopic accountUniqueID:uniqueID messageIdentifier:v15];

    goto LABEL_13;
  }

  if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = @"Cannot cancel message without a queue one identifier.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *error = [v22 errorWithDomain:@"com.apple.identityservices.error" code:28 userInfo:v15];
LABEL_13:
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13 != 0;
}

- (BOOL)cancelMessageWithOptions:(id)options destination:(id)destination identifier:(id *)identifier error:(id *)error
{
  v10 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  v12 = [v10 setWithObject:destination];
  LOBYTE(error) = [(_IDSService *)self cancelMessageWithOptions:optionsCopy destinations:v12 identifier:identifier error:error];

  return error;
}

- (BOOL)cancelMessageWithOptions:(id)options destinations:(id)destinations identifier:(id *)identifier error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  destinationsCopy = destinations;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v12 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B518();
    }
  }

  if (_os_feature_enabled_impl())
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v16 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionQueueOneIdentifier"];
    if (v16)
    {
      if (destinationsCopy && [destinationsCopy count])
      {
        pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
        if (v15)
        {
          v18 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionAlwaysIncludeSelfKey"];

          v19 = MEMORY[0x1E69A5240];
          if (v18)
          {
            v20 = [destinationsCopy setByAddingObject:v15];
            v21 = [v19 destinationWithDestinations:v20];

            v22 = v21;
            goto LABEL_21;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69A5240];
        }

        v22 = [v19 destinationWithDestinations:destinationsCopy];
LABEL_21:
        v40 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v22 fromID:v15];
        _internal = [v40 _internal];
        uniqueID = [_internal uniqueID];

        v29 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v46 = pushTopic;
          v47 = 2112;
          v48 = v15;
          v49 = 2112;
          v50 = v16;
          v51 = 2112;
          v52 = v22;
          _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "cancelMessageWithOptions { service: %@  fromID: %@  queueOneIdentifier: %@  idsDestination: %@ }", buf, 0x2Au);
        }

        v41 = v22;

        v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
        v31 = MEMORY[0x1E695E118];
        CFDictionarySetValue(v30, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionSkipPayloadCheck", v31);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionForceEncryptionOff", v31);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionCommand", &unk_1F0A29A08);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionWantsResponse", v31);
        v32 = uniqueID;
        if (uniqueID && ([(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:uniqueID], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v34 = v33;
          _internal2 = [v33 _internal];
          v23 = [_internal2 sendMessage:0 toDestinations:v41 priority:300 options:v30 identifier:identifier error:error];
        }

        else
        {
          if (!error)
          {
            v23 = 0;
            v37 = v41;
            goto LABEL_30;
          }

          v36 = MEMORY[0x1E696ABC0];
          v43 = *MEMORY[0x1E696A578];
          v44 = @"Could not find valid account to cancel message.";
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [v36 errorWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v34];
          *error = v23 = 0;
        }

        v37 = v41;
        v32 = uniqueID;
LABEL_30:

        goto LABEL_31;
      }

      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v54 = @"Cannot cancel message without a destination.";
        v25 = MEMORY[0x1E695DF20];
        v26 = &v54;
        v27 = &v53;
LABEL_17:
        pushTopic = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
        [v24 errorWithDomain:@"com.apple.identityservices.error" code:28 userInfo:pushTopic];
        *error = v23 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    else if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v55 = *MEMORY[0x1E696A578];
      v56[0] = @"Cannot cancel message without a queue one identifier.";
      v25 = MEMORY[0x1E695DF20];
      v26 = v56;
      v27 = &v55;
      goto LABEL_17;
    }

    v23 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v23 = [(_IDSService *)self cancelMessageWithOptions:optionsCopy identifier:identifier error:error];
LABEL_33:

  v38 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)sendProtobuf:(id)protobuf fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v85 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v74 = _os_activity_create(&dword_1959FF000, "Framework Send Protobuf", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v74, &state);
  v15 = OSLogHandleForTransportCategory();
  selfCopy = self;
  v61 = accountCopy;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
    *buf = 138412290;
    v83 = v16;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState priority=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *identifier;
      *buf = 138412290;
      v83 = v18;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v19 = destinationsCopy;
  v20 = [v19 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v20)
  {
    v21 = *v70;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v70 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v69 + 1) + 8 * i);
        v24 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v23;
          _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "!setState destination=%@", buf, 0xCu);
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v20);
  }

  v25 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v25 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B5B8();
    }
  }

  if (!self->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:v19];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v64 = v66 = 0u;
    destinationURIs = [v64 destinationURIs];
    v30 = [destinationURIs countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v30)
    {
      v31 = *v66;
LABEL_24:
      v32 = 0;
      while (1)
      {
        if (*v66 != v31)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v33 = *(*(&v65 + 1) + 8 * v32);
        if (![v33 _FZIDType])
        {
          serviceProperties = [(_IDSService *)selfCopy serviceProperties];
          wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

          if ((wantsPhoneNumberAccount & 1) == 0)
          {
            break;
          }
        }

        if (v30 == ++v32)
        {
          v30 = [destinationURIs countByEnumeratingWithState:&v65 objects:v81 count:16];
          if (v30)
          {
            goto LABEL_24;
          }

          goto LABEL_31;
        }
      }

      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        serviceProperties2 = [(_IDSService *)selfCopy serviceProperties];
        identifier = [serviceProperties2 identifier];
        *v77 = 138412546;
        v78 = v33;
        v79 = 2112;
        v80 = identifier;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Unable to send message to %@ on service %@ since phone number accounts are disabled", v77, 0x16u);
      }

      if (error)
      {
        v75 = *MEMORY[0x1E696A578];
        v76 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        uniqueID = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:uniqueID];
        *error = v28 = 0;
        goto LABEL_52;
      }

      v28 = 0;
      goto LABEL_53;
    }

LABEL_31:

    destinationURIs = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v36 = [(_IDSService *)selfCopy _sendingAccountForAccount:v61 destination:v64 fromID:destinationURIs];

    _internal = [v36 _internal];
    uniqueID = [_internal uniqueID];

    if ([(_IDSService *)selfCopy canSendMessageWithAccount:v36 toDestination:v64])
    {
      if (uniqueID)
      {
        v39 = [(NSMutableDictionary *)selfCopy->_uniqueIDToConnection objectForKey:uniqueID];
        v40 = v39;
        if (v39)
        {
          _internal2 = [v39 _internal];
          v28 = [_internal2 sendProtobuf:protobufCopy toDestinations:v64 priority:priority options:optionsCopy identifier:identifier error:error];
          goto LABEL_51;
        }
      }

      v49 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [v36 _internal];
        *v77 = 138412290;
        v78 = _internal3;
        _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Could not find connection for account %@", v77, 0xCu);
      }

      [(_IDSService *)selfCopy _logConnectionMap];
      v51 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        _internal4 = [(IDSAccountController *)selfCopy->_accountController _internal];
        accounts = [_internal4 accounts];
        *v77 = 138412290;
        v78 = accounts;
        _os_log_impl(&dword_1959FF000, v51, OS_LOG_TYPE_DEFAULT, "sendProtobuf - All accounts %@", v77, 0xCu);
      }

      v54 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v54 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v48 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v40];
    }

    else
    {
      v45 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [v36 _internal];
        *v77 = 138412290;
        v78 = _internal5;
        _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Unable to send protobuf to this destination from this account %@", v77, 0xCu);
      }

      v47 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v47 initWithObjectsAndKeys:{@"Destination device is not active for this account", *MEMORY[0x1E696A578], 0}];
      v48 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v40];
    }

    _internal2 = v48;
    if (error)
    {
      v55 = v48;
      v28 = 0;
      *error = _internal2;
    }

    else
    {
      v28 = 0;
    }

LABEL_51:

    v61 = v36;
LABEL_52:

LABEL_53:
    goto LABEL_54;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:identifier];
  v28 = 1;
LABEL_54:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v56 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)_handlePretendingToBeFullWithIdentifier:(id *)identifier
{
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v6 = stringGUID;
  if (identifier)
  {
    v7 = stringGUID;
    *identifier = v6;
  }

  v8 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195ACF880;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 performBlock:v10];
}

- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v87 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v76 = _os_activity_create(&dword_1959FF000, "Framework Send Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v76, &state);
  v15 = OSLogHandleForTransportCategory();
  v64 = accountCopy;
  selfCopy = self;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    *buf = 138412290;
    v85 = serviceName;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState service=%@", buf, 0xCu);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
    *buf = 138412290;
    v85 = v18;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState priority=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *identifier;
      *buf = 138412290;
      v85 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v21 = destinationsCopy;
  v22 = [v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v22)
  {
    v23 = *v72;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v72 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v71 + 1) + 8 * i);
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v25;
          _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "!setState destination=%@", buf, 0xCu);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v22);
  }

  v27 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v27 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B608();
    }
  }

  if (!selfCopy->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:v21];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v66 = v68 = 0u;
    destinationURIs = [v66 destinationURIs];
    v32 = [destinationURIs countByEnumeratingWithState:&v67 objects:v83 count:16];
    if (v32)
    {
      v33 = *v68;
LABEL_26:
      v34 = 0;
      while (1)
      {
        if (*v68 != v33)
        {
          objc_enumerationMutation(destinationURIs);
        }

        v35 = *(*(&v67 + 1) + 8 * v34);
        if (![v35 _FZIDType])
        {
          serviceProperties = [(_IDSService *)selfCopy serviceProperties];
          wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

          if ((wantsPhoneNumberAccount & 1) == 0)
          {
            break;
          }
        }

        if (v32 == ++v34)
        {
          v32 = [destinationURIs countByEnumeratingWithState:&v67 objects:v83 count:16];
          if (v32)
          {
            goto LABEL_26;
          }

          goto LABEL_33;
        }
      }

      v44 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        serviceProperties2 = [(_IDSService *)selfCopy serviceProperties];
        identifier = [serviceProperties2 identifier];
        *v79 = 138412546;
        v80 = v35;
        v81 = 2112;
        v82 = identifier;
        _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendData - Unable to send message to %@ on service %@ since phone number accounts are disabled", v79, 0x16u);
      }

      if (error)
      {
        v77 = *MEMORY[0x1E696A578];
        v78 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        uniqueID = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:uniqueID];
        *error = v30 = 0;
        goto LABEL_54;
      }

      v30 = 0;
      goto LABEL_55;
    }

LABEL_33:

    destinationURIs = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v38 = [(_IDSService *)selfCopy _sendingAccountForAccount:v64 destination:v66 fromID:destinationURIs];

    _internal = [v38 _internal];
    uniqueID = [_internal uniqueID];

    if ([(_IDSService *)selfCopy canSendMessageWithAccount:v38 toDestination:v66])
    {
      if (uniqueID)
      {
        v41 = [(NSMutableDictionary *)selfCopy->_uniqueIDToConnection objectForKey:uniqueID];
        v42 = v41;
        if (v41)
        {
          _internal2 = [v41 _internal];
          v30 = [_internal2 sendData:dataCopy toDestinations:v66 priority:priority options:optionsCopy identifier:identifier error:error];
          goto LABEL_53;
        }
      }

      v51 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [v38 _internal];
        *v79 = 138412290;
        v80 = _internal3;
        _os_log_impl(&dword_1959FF000, v51, OS_LOG_TYPE_DEFAULT, "sendData - Could not find connection for account %@", v79, 0xCu);
      }

      [(_IDSService *)selfCopy _logConnectionMap];
      v53 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        _internal4 = [(IDSAccountController *)selfCopy->_accountController _internal];
        accounts = [_internal4 accounts];
        *v79 = 138412290;
        v80 = accounts;
        _os_log_impl(&dword_1959FF000, v53, OS_LOG_TYPE_DEFAULT, "sendData - All accounts %@", v79, 0xCu);
      }

      v56 = objc_alloc(MEMORY[0x1E695DF20]);
      v42 = [v56 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v50 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v42];
    }

    else
    {
      v47 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [v38 _internal];
        *v79 = 138412290;
        v80 = _internal5;
        _os_log_impl(&dword_1959FF000, v47, OS_LOG_TYPE_DEFAULT, "sendData - Unable to send data to this destination from this account %@", v79, 0xCu);
      }

      v49 = objc_alloc(MEMORY[0x1E695DF20]);
      v42 = [v49 initWithObjectsAndKeys:{@"Destination device is not active for this account", *MEMORY[0x1E696A578], 0}];
      v50 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v42];
    }

    _internal2 = v50;
    if (error)
    {
      v57 = v50;
      v30 = 0;
      *error = _internal2;
    }

    else
    {
      v30 = 0;
    }

LABEL_53:

    v64 = v38;
LABEL_54:

LABEL_55:
    goto LABEL_56;
  }

  [(_IDSService *)selfCopy _handlePretendingToBeFullWithIdentifier:identifier];
  v30 = 1;
LABEL_56:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v58 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)sendAccessoryData:(id)data toAccessoryID:(id)d accessToken:(id)token options:(id)options identifier:(id *)identifier error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  tokenCopy = token;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v48 = _os_activity_create(&dword_1959FF000, "Framework Send Accessory Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v48, &state);
  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = dCopy;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState accessoryID=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *identifier;
      *buf = 138412290;
      v52 = v17;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v18 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v18 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B658();
    }
  }

  v21 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Sending AccessoryData Now", v49, 2u);
  }

  v22 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v23 = [(_IDSService *)self _sendingAccountForAccount:0 destination:0 fromID:v22];
  v43 = v22;
  _internal = [v23 _internal];
  uniqueID = [_internal uniqueID];

  if (uniqueID)
  {
    v26 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
  }

  else
  {
    v26 = 0;
  }

  v27 = IDSCopyIDForAccessory();

  v28 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
  [v28 setObject:tokenCopy forKey:@"IDSSendMessageOptionAccessToken"];
  [v28 setObject:MEMORY[0x1E695E118] forKey:@"IDSSendMessageOptionHomeKitMessage"];
  [v28 setObject:MEMORY[0x1E695E118] forKey:@"IDSSendMessageOptionDisableAliasValidation"];
  v29 = v28;

  v30 = [MEMORY[0x1E695DFD8] setWithObject:v27];
  v31 = [MEMORY[0x1E69A5240] destinationWithDestinations:v30];
  if (v26)
  {
    _internal2 = [v26 _internal];
    v33 = [_internal2 sendData:dataCopy toDestinations:v31 priority:300 options:v29 identifier:identifier error:error];
  }

  else
  {
    v34 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v23 _internal];
      *v49 = 138412290;
      v50 = _internal3;
      _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendAccessoryData - Could not find connection for account %@", v49, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      *v49 = 138412290;
      v50 = accounts;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendAccessoryData - All accounts %@", v49, 0xCu);
    }

    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    _internal2 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
    v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:_internal2];
    if (error)
    {
      v40 = v40;
      *error = v40;
    }

    v33 = 0;
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v41 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)sendInvitation:(id)invitation fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  v14 = MEMORY[0x1E69A5240];
  v15 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  accountCopy = account;
  v18 = [v15 setWithObject:destination];
  v19 = [v14 destinationWithDestinations:v18];

  v20 = [optionsCopy mutableCopy];
  if ([invitationCopy state] != 1)
  {
    selfHandle = [invitationCopy selfHandle];

    if (selfHandle)
    {
      selfHandle2 = [invitationCopy selfHandle];
      _stripFZIDPrefix = [selfHandle2 _stripFZIDPrefix];
      _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

      [v20 setObject:_bestGuessURI forKey:@"IDSSendMessageOptionFromID"];
      v25 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = _bestGuessURI;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - overriding fromID to %@", buf, 0xCu);
      }
    }
  }

  v26 = [v20 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v27 = [(_IDSService *)self _sendingAccountForAccount:accountCopy destination:v19 fromID:v26];

  _internal = [v27 _internal];
  uniqueID = [_internal uniqueID];

  if (!uniqueID)
  {
    if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) != 0)
    {
LABEL_13:
      v34 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        _internal2 = [v27 _internal];
        *buf = 138412290;
        v49 = _internal2;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendInvitation - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v36 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [(IDSAccountController *)self->_accountController _internal];
        accounts = [_internal3 accounts];
        *buf = 138412290;
        v49 = accounts;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendInvitation - All accounts %@", buf, 0xCu);
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v30];
      _internal4 = v40;
      if (error)
      {
        v41 = v40;
        v33 = 0;
        *error = _internal4;
        goto LABEL_26;
      }

LABEL_25:
      v33 = 0;
      goto LABEL_26;
    }

    v30 = 0;
LABEL_20:
    v42 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendInvitation - Service is not enabled for Invitations", buf, 2u);
    }

    v43 = objc_alloc(MEMORY[0x1E695DF20]);
    _internal4 = [v43 initWithObjectsAndKeys:{@"Service is not enabled for Invitations", *MEMORY[0x1E696A578], 0}];
    v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:53 userInfo:_internal4];
    if (error)
    {
      v44 = v44;
      *error = v44;
    }

    goto LABEL_25;
  }

  v30 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
  if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v30)
  {
    goto LABEL_13;
  }

  v31 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = invitationCopy;
    v50 = 2112;
    v51 = v20;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "sendInvitation - Attempting to send invitation: %@ with options %@", buf, 0x16u);
  }

  _internal4 = [v30 _internal];
  v33 = [_internal4 sendInvitation:invitationCopy toDestination:v19 priority:300 options:v20 identifier:identifier error:error];
LABEL_26:

  v45 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)sendInvitationUpdate:(id)update fromAccount:(id)account toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  v14 = MEMORY[0x1E69A5240];
  v15 = MEMORY[0x1E695DFD8];
  optionsCopy = options;
  accountCopy = account;
  v18 = [v15 setWithObject:destination];
  v19 = [v14 destinationWithDestinations:v18];

  v20 = [optionsCopy mutableCopy];
  if ([updateCopy state] != 1)
  {
    selfHandle = [updateCopy selfHandle];

    if (selfHandle)
    {
      selfHandle2 = [updateCopy selfHandle];
      _stripFZIDPrefix = [selfHandle2 _stripFZIDPrefix];
      _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

      [v20 setObject:_bestGuessURI forKey:@"IDSSendMessageOptionFromID"];
      v25 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = _bestGuessURI;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - overriding fromID to %@", buf, 0xCu);
      }
    }
  }

  v26 = [v20 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v27 = [(_IDSService *)self _sendingAccountForAccount:accountCopy destination:v19 fromID:v26];

  _internal = [v27 _internal];
  uniqueID = [_internal uniqueID];

  if (!uniqueID)
  {
    if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) != 0)
    {
LABEL_13:
      v34 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        _internal2 = [v27 _internal];
        *buf = 138412290;
        v49 = _internal2;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v36 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        _internal3 = [(IDSAccountController *)self->_accountController _internal];
        accounts = [_internal3 accounts];
        *buf = 138412290;
        v49 = accounts;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - All accounts %@", buf, 0xCu);
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v30];
      _internal4 = v40;
      if (error)
      {
        v41 = v40;
        v33 = 0;
        *error = _internal4;
        goto LABEL_26;
      }

LABEL_25:
      v33 = 0;
      goto LABEL_26;
    }

    v30 = 0;
LABEL_20:
    v42 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Service is not enabled for Invitations", buf, 2u);
    }

    v43 = objc_alloc(MEMORY[0x1E695DF20]);
    _internal4 = [v43 initWithObjectsAndKeys:{@"Service is not enabled for Invitations", *MEMORY[0x1E696A578], 0}];
    v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:53 userInfo:_internal4];
    if (error)
    {
      v44 = v44;
      *error = v44;
    }

    goto LABEL_25;
  }

  v30 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
  if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v30)
  {
    goto LABEL_13;
  }

  v31 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v49 = updateCopy;
    v50 = 2112;
    v51 = v20;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Attempting to send invitation: %@ with options %@", buf, 0x16u);
  }

  _internal4 = [v30 _internal];
  v33 = [_internal4 sendInvitationUpdate:updateCopy toDestination:v19 priority:300 options:v20 identifier:identifier error:error];
LABEL_26:

  v45 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)setWakingPushPriority:(int64_t)priority error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    pushTopic = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    *buf = 134218242;
    priorityCopy = priority;
    v21 = 2112;
    v22 = pushTopic;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Setting waking priority %ld on topic %@", buf, 0x16u);
  }

  valid = _IDSIsValidWakingPushPriority();
  if (valid)
  {
    daemonController = [(_IDSService *)self daemonController];
    pushTopic2 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    [daemonController setWakingPushPriority:priority forTopic:pushTopic2];
  }

  else
  {
    v12 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B6A8();
    }

    v17 = *MEMORY[0x1E696A578];
    v18 = @"Invalid priority";
    daemonController = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:56 userInfo:daemonController];
    pushTopic2 = v13;
    if (error)
    {
      v14 = v13;
      *error = pushTopic2;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return valid;
}

- (BOOL)sendData:(id)data priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v7 = [IDSInternalQueueController sharedInstance:data];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B6DC();
    }
  }

  return 0;
}

- (BOOL)sendServerMessage:(id)message command:(id)command fromAccount:(id)account
{
  v29 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  commandCopy = command;
  accountCopy = account;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B77C();
    }
  }

  v14 = [(_IDSService *)self _sendingAccountForAccount:accountCopy];

  _internal = [v14 _internal];
  uniqueID = [_internal uniqueID];

  if (uniqueID && ([(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    _internal2 = [v17 _internal];
    v20 = [_internal2 sendServerMessage:messageCopy command:commandCopy];
  }

  else
  {
    v21 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      _internal3 = [v14 _internal];
      v27 = 138412290;
      v28 = _internal3;
      _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "sendServerMessage - Could not find connection for account %@", &v27, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v18 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      _internal4 = [(IDSAccountController *)self->_accountController _internal];
      accounts = [_internal4 accounts];
      v27 = 138412290;
      v28 = accounts;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "sendServerMessage - All accounts %@", &v27, 0xCu);
    }

    v20 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)cancelIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B81C();
    }
  }

  v10 = [identifierCopy length];
  if (v10)
  {
    if (error)
    {
      *error = 0;
    }

    daemonController = [(_IDSService *)self daemonController];
    _internal = [(IDSAccountController *)self->_accountController _internal];
    serviceName = [_internal serviceName];
    [daemonController cancelItemWithIdentifier:identifierCopy service:serviceName];
  }

  return v10 != 0;
}

- (BOOL)getProgressUpdateForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B8BC();
    }
  }

  v10 = [identifierCopy length];
  if (v10)
  {
    if (error)
    {
      *error = 0;
    }

    daemonController = [(_IDSService *)self daemonController];
    _internal = [(IDSAccountController *)self->_accountController _internal];
    serviceName = [_internal serviceName];
    [daemonController getProgressUpdateForIdentifier:identifierCopy service:serviceName];

    if (identifierCopy)
    {
      currentProgress = [MEMORY[0x1E696AE38] currentProgress];

      if (currentProgress)
      {
        if (!self->_uniqueIDToProgress)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          uniqueIDToProgress = self->_uniqueIDToProgress;
          self->_uniqueIDToProgress = Mutable;
        }

        v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
        [(NSMutableDictionary *)self->_uniqueIDToProgress setObject:v17 forKeyedSubscript:identifierCopy];
      }
    }
  }

  return v10 != 0;
}

- (id)uriForFromID:(id)d
{
  dCopy = d;
  v4 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v4 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B95C();
    }
  }

  if (dCopy && ([dCopy isEqualToString:*MEMORY[0x1E69A4B50]] & 1) == 0)
  {
    v7 = [dCopy _stripPotentialTokenURIWithToken:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceForFromID:(id)d fromDevices:(id)devices
{
  v66 = *MEMORY[0x1E69E9840];
  dCopy = d;
  devicesCopy = devices;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B9FC();
    }
  }

  if (dCopy)
  {
    if ([dCopy isEqualToString:*MEMORY[0x1E69A4B50]])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      _stripFZIDPrefix = devicesCopy;
      v11 = [_stripFZIDPrefix countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v54;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v54 != v13)
            {
              objc_enumerationMutation(_stripFZIDPrefix);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            _internal = [v15 _internal];
            isDefaultPairedDevice = [_internal isDefaultPairedDevice];

            if (isDefaultPairedDevice)
            {
              v29 = v15;
              goto LABEL_49;
            }
          }

          v12 = [_stripFZIDPrefix countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    if ([dCopy containsString:@"device:"])
    {
      v18 = dCopy;
      _stripFZIDPrefix = [dCopy _stripFZIDPrefix];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v19 = devicesCopy;
      v20 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v50;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v50 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v49 + 1) + 8 * j);
            uniqueIDOverride = [v24 uniqueIDOverride];
            v26 = [uniqueIDOverride isEqualToIgnoringCase:_stripFZIDPrefix];

            if (v26)
            {
              v29 = v24;

              dCopy = v18;
              goto LABEL_49;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v49 objects:v64 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      dCopy = v18;
    }

    v48 = 0;
    v27 = [dCopy _stripPotentialTokenURIWithToken:&v48];
    _stripFZIDPrefix = v48;
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v59 = dCopy;
      v60 = 2112;
      v61 = v27;
      v62 = 2112;
      v63 = _stripFZIDPrefix;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_INFO, "FromID %@, strippedURI %@, token %@", buf, 0x20u);
    }

    v29 = 0;
    if (_stripFZIDPrefix && v27)
    {
      v41 = dCopy;
      v42 = v27;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = devicesCopy;
      registration3 = devicesCopy;
      v31 = [registration3 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v45;
        while (2)
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v45 != v33)
            {
              objc_enumerationMutation(registration3);
            }

            v35 = *(*(&v44 + 1) + 8 * k);
            _internal2 = [v35 _internal];
            pushToken = [_internal2 pushToken];

            registration2 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(registration2, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = pushToken;
              v60 = 2112;
              v61 = _stripFZIDPrefix;
              _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_INFO, "Comparing device token %@ to token %@", buf, 0x16u);
            }

            if ([pushToken isEqualToData:_stripFZIDPrefix])
            {
              v29 = v35;

              goto LABEL_47;
            }
          }

          v32 = [registration3 countByEnumeratingWithState:&v44 objects:v57 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = _stripFZIDPrefix;
        _os_log_impl(&dword_1959FF000, registration3, OS_LOG_TYPE_DEFAULT, "Did not find a device matching the token %@", buf, 0xCu);
      }

      v29 = 0;
LABEL_47:
      v27 = v42;
      devicesCopy = v43;
      dCopy = v41;
    }

LABEL_49:
  }

  else
  {
    v29 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)deviceForFromID:(id)d
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BA9C();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  accounts = [(_IDSService *)self accounts];
  v10 = [accounts countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(accounts);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        _internal = [v14 _internal];
        devices = [_internal devices];

        v17 = [devices countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v25;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(devices);
              }

              [v8 addObject:*(*(&v24 + 1) + 8 * j)];
            }

            v18 = [devices countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v18);
        }
      }

      v11 = [accounts countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v21 = [_IDSService deviceForFromID:dCopy fromDevices:v8];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)linkedDeviceForFromID:(id)d withRelationship:(int64_t)relationship
{
  dCopy = d;
  v7 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v7 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BB3C();
    }
  }

  v10 = [(_IDSService *)self linkedDevicesWithRelationship:relationship];
  v11 = [_IDSService deviceForFromID:dCopy fromDevices:v10];

  return v11;
}

- (id)firstRoutableInternetDestinationForSelf
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  accounts = [(_IDSService *)self accounts];
  v3 = [accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if ([v7 accountType] == 1 || !objc_msgSend(v7, "accountType"))
        {
          pushToken = [v7 pushToken];

          if (pushToken)
          {
            loginID = [v7 loginID];
            _appearsToBeEmail = [loginID _appearsToBeEmail];
            loginID2 = [v7 loginID];
            if (_appearsToBeEmail)
            {
              v13 = IDSCopyIDForEmailAddress();
            }

            else
            {
              v13 = IDSCopyIDForPhoneNumber();
            }

            v14 = v13;

            pushToken2 = [v7 pushToken];
            v9 = IDSCopyIDForTokenWithID();

            goto LABEL_16;
          }
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)devicesForBTUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BBDC();
    }
  }

  if (dCopy)
  {
    v8 = [(_IDSService *)self linkedDevicesWithRelationship:3];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          nsuuid = [v14 nsuuid];
          v16 = [nsuuid isEqual:dCopy];

          if (v16)
          {
            if (!v11)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v11 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)deviceForUniqueID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BC7C();
    }
  }

  if (dCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    devices = [(_IDSService *)self devices];
    v9 = [devices countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(devices);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          uniqueID = [v13 uniqueID];
          if ([uniqueID isEqualToIgnoringCase:dCopy])
          {

LABEL_19:
            v17 = v13;
            goto LABEL_20;
          }

          uniqueIDOverride = [v13 uniqueIDOverride];
          v16 = [uniqueIDOverride isEqualToIgnoringCase:dCopy];

          if (v16)
          {
            goto LABEL_19;
          }
        }

        v10 = [devices countByEnumeratingWithState:&v20 objects:v24 count:16];
        v17 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
    }

LABEL_20:
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BOOL)needsLaunchOnNearbyDevicesChanged
{
  serviceProperties = [(_IDSService *)self serviceProperties];
  needsLaunchOnNearbyDevicesChanged = [serviceProperties needsLaunchOnNearbyDevicesChanged];

  return needsLaunchOnNearbyDevicesChanged;
}

- (void)setLinkPreferences:(id)preferences
{
  v19 = *MEMORY[0x1E69E9840];
  preferencesCopy = preferences;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BEDC();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = preferencesCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "setLinkPreferences: %{public}@", &v17, 0xCu);
  }

  v9 = [preferencesCopy objectForKey:@"LinkType"];
  v10 = [preferencesCopy objectForKey:@"PacketsPerSecond"];
  v11 = [preferencesCopy objectForKey:@"InputBytesPerSecond"];
  v12 = [preferencesCopy objectForKey:@"OutputBytesPerSecond"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    daemonController = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(daemonController, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1959FF000, daemonController, OS_LOG_TYPE_DEFAULT, "Received invalid link preferences", &v17, 2u);
    }
  }

  else
  {
    daemonController = [(_IDSService *)self daemonController];
    _internal = [(IDSAccountController *)self->_accountController _internal];
    serviceName = [_internal serviceName];
    [daemonController setLinkPreferences:preferencesCopy service:serviceName];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)startOTRTest:(int64_t)test
{
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BF7C();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "forceOTRNegotiation", v12, 2u);
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController startOTRTest:serviceName priority:test];
}

- (void)testCloudQRConnection
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C01C();
    }
  }

  daemonController = [(_IDSService *)self daemonController];
  _internal = [(IDSAccountController *)self->_accountController _internal];
  serviceName = [_internal serviceName];
  [daemonController testCloudQRConnection:serviceName];
}

- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)self0
{
  v121 = *MEMORY[0x1E69E9840];
  lCopy = l;
  metadataCopy = metadata;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v106 = _os_activity_create(&dword_1959FF000, "Framework Send Resource At URL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v106, &state);
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v111 = lCopy;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "!setState ResourceURL=%@", buf, 0xCu);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [accountCopy serviceName];
    *buf = 138412290;
    v111 = serviceName;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState serviceName=%@", buf, 0xCu);
  }

  if (identifier)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *identifier;
      *buf = 138412290;
      v111 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  if (!self->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:destinationsCopy];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v95 = v102 = 0u;
    destinationURIs = [v95 destinationURIs];
    v23 = [destinationURIs countByEnumeratingWithState:&v101 objects:v120 count:16];
    if (v23)
    {
      v24 = *v102;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v102 != v24)
          {
            objc_enumerationMutation(destinationURIs);
          }

          v26 = *(*(&v101 + 1) + 8 * i);
          if (![v26 _FZIDType])
          {
            serviceProperties = [(_IDSService *)self serviceProperties];
            wantsPhoneNumberAccount = [serviceProperties wantsPhoneNumberAccount];

            if ((wantsPhoneNumberAccount & 1) == 0)
            {
              v48 = +[IDSLogging _IDSService];
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                serviceProperties2 = [(_IDSService *)self serviceProperties];
                identifier = [serviceProperties2 identifier];
                *buf = 138412546;
                v111 = v26;
                v112 = 2112;
                v113 = identifier;
                _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - Unable to send message to %@ on service %@ since phone number accounts are disabled", buf, 0x16u);
              }

              if (error)
              {
                v118 = *MEMORY[0x1E696A578];
                v119 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
                v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:v51];
              }

              goto LABEL_37;
            }
          }
        }

        v23 = [destinationURIs countByEnumeratingWithState:&v101 objects:v120 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    if (([lCopy isFileURL] & 1) == 0)
    {
      v52 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v111 = lCopy;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - resourceURL not a file %@", buf, 0xCu);
      }

      v53 = objc_alloc(MEMORY[0x1E695DF20]);
      destinationURIs = [v53 initWithObjectsAndKeys:{@"Sending non-file resource unsupported", *MEMORY[0x1E696A578], 0}];
      if (error)
      {
        v21 = 0;
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:28 userInfo:destinationURIs];
      }

      else
      {
LABEL_37:
        v21 = 0;
      }

      goto LABEL_89;
    }

    destinationURIs = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
    v92 = NSTemporaryDirectory();
    v29 = lCopy;
    path = [v29 path];
    lastPathComponent = [v29 lastPathComponent];

    v31 = [v92 stringByAppendingString:lastPathComponent];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v109 = 0;
    v91 = [defaultManager attributesOfItemAtPath:v31 error:&v109];
    v90 = v109;

    if (v91)
    {
      v33 = [(__CFString *)v31 stringByAppendingString:@".XXXX"];

      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v33);
      v35 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
      if (!v35)
      {
        v54 = +[IDSTransportLog IDSService];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v111 = MaximumSizeOfFileSystemRepresentation;
          _os_log_impl(&dword_1959FF000, v54, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - can't allocate %ld bytes for new file path", buf, 0xCu);
        }

        v93 = 0;
        goto LABEL_45;
      }

      [(__CFString *)v33 getFileSystemRepresentation:v35 maxLength:MaximumSizeOfFileSystemRepresentation];
      mktemp(v35);
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v31 = [defaultManager2 stringWithFileSystemRepresentation:v35 length:strlen(v35)];

      free(v35);
    }

    v37 = path;
    v38 = [path cStringUsingEncoding:4];
    v39 = v31;
    LODWORD(v38) = clonefile(v38, [(__CFString *)v31 cStringUsingEncoding:4], 0);
    v40 = __error();
    if ((v38 & 0x80000000) != 0)
    {
      v41 = *v40;
      v42 = +[IDSTransportLog IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v111 = path;
        v112 = 2112;
        v113 = v31;
        v114 = 1024;
        LODWORD(v115) = v41;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - failed to clone file %@ => %@ (error %d). Will try hard link.", buf, 0x1Cu);
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v108 = 0;
      v44 = [defaultManager3 linkItemAtPath:path toPath:v31 error:&v108];
      v90 = v108;

      if ((v44 & 1) == 0)
      {

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        v107 = 0;
        v46 = [defaultManager4 copyItemAtPath:path toPath:v31 error:&v107];
        v90 = v107;

        if ((v46 & 1) == 0)
        {
          v47 = +[IDSTransportLog IDSService];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v111 = path;
            v112 = 2112;
            v113 = v31;
            v114 = 2112;
            v115 = v90;
            _os_log_impl(&dword_1959FF000, v47, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - failed to link and failed to copy file %@ => %@ (error %@)", buf, 0x20u);
          }

          v31 = 0;
        }
      }
    }

    v33 = v31;
    v93 = v33;
LABEL_45:

    v55 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = NSTemporaryDirectory();
      v57 = v29;
      fileSystemRepresentation = [v29 fileSystemRepresentation];
      *buf = 138413058;
      v111 = v29;
      v112 = 2112;
      v113 = v56;
      v114 = 2080;
      v115 = fileSystemRepresentation;
      v116 = 2112;
      v117 = v93;
      _os_log_impl(&dword_1959FF000, v55, OS_LOG_TYPE_DEFAULT, "Attempted to link or copy file %@ destination %@ (%s to %@)", buf, 0x2Au);
    }

    if ([(__CFString *)v93 length])
    {
      v59 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        isFileURL = [v29 isFileURL];
        v61 = [destinationURIs objectForKey:@"IDSSendMessageOptionLocalDelivery"];
        v62 = v61;
        v63 = @"NO";
        *buf = 138412802;
        v111 = v29;
        v112 = 2112;
        if (isFileURL)
        {
          v63 = @"YES";
        }

        v113 = v63;
        v114 = 2112;
        v115 = v61;
        _os_log_impl(&dword_1959FF000, v59, OS_LOG_TYPE_INFO, "sendResourceAtURL - resourceURL %@  isFileURL %@  localDelivery %@", buf, 0x20u);
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v65 = v93;
      if (v65)
      {
        CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EB8], v65);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B3C0BC();
      }

      v68 = metadataCopy;
      if (v68)
      {
        CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4E98], v68);
      }

      absoluteString = [v29 absoluteString];
      if (absoluteString)
      {
        CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EA8], absoluteString);
      }

      v70 = v65;
      [(__CFString *)v65 UTF8String];
      v71 = sandbox_extension_issue_file();
      if (v71)
      {
        v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v71];
        if (v72)
        {
          CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EB0], v72);
        }

        free(v71);
      }

      else
      {
        v73 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v111 = v65;
          _os_log_impl(&dword_1959FF000, v73, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for linked/copied file [%@]", buf, 0xCu);
        }
      }

      path2 = [v29 path];
      v75 = path2;
      [path2 UTF8String];
      v76 = sandbox_extension_issue_file();

      if (v76)
      {
        v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
        if (v77)
        {
          CFDictionarySetValue(dictionary, *MEMORY[0x1E69A4EA0], v77);
        }

        free(v76);
      }

      else
      {
        v78 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v111 = v29;
          _os_log_impl(&dword_1959FF000, v78, OS_LOG_TYPE_DEFAULT, "Failed to issue sandbox extension for original file [%@]", buf, 0xCu);
        }
      }

      v21 = [(_IDSService *)self sendMessage:dictionary fromAccount:accountCopy toDestinations:destinationsCopy priority:priority options:destinationURIs identifier:identifier error:error];
      v79 = !v21;
      if (!identifier)
      {
        v79 = 1;
      }

      if ((v79 & 1) == 0)
      {
        if (*identifier)
        {
          currentProgress = [MEMORY[0x1E696AE38] currentProgress];
          v81 = currentProgress == 0;

          if (!v81)
          {
            v82 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsProgress"];

            if (v82)
            {
              v83 = [optionsCopy objectForKeyedSubscript:@"IDSSendMessageOptionWantsProgress"];
              v84 = v83 == 0;

              if (!v84)
              {
                if (!self->_uniqueIDToProgress)
                {
                  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  uniqueIDToProgress = self->_uniqueIDToProgress;
                  self->_uniqueIDToProgress = Mutable;
                }

                v87 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
                [(NSMutableDictionary *)self->_uniqueIDToProgress setObject:v87 forKeyedSubscript:*identifier];
              }
            }
          }
        }
      }
    }

    else
    {
      v66 = +[IDSTransportLog IDSService];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v111 = v29;
        _os_log_impl(&dword_1959FF000, v66, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - unable to link or copy file %@", buf, 0xCu);
      }

      v67 = objc_alloc(MEMORY[0x1E695DF20]);
      dictionary = [v67 initWithObjectsAndKeys:{@"Unable to link or copy file", *MEMORY[0x1E696A578], 0}];
      v21 = 0;
      if (error)
      {
        *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:dictionary];
      }
    }

LABEL_89:
    goto LABEL_90;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:identifier];
  v21 = 1;
LABEL_90:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v88 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)sendAheadGroup:(id)group priority:(int64_t)priority options:(id)options identifier:(id *)identifier completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  optionsCopy = options;
  completionCopy = completion;
  v15 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v15 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C158();
    }
  }

  groupCrypto = [MEMORY[0x1E69A5270] groupCrypto];
  if (os_log_type_enabled(groupCrypto, OS_LOG_TYPE_DEFAULT))
  {
    groupID = [groupCopy groupID];
    *buf = 138543362;
    v33 = groupID;
    _os_log_impl(&dword_1959FF000, groupCrypto, OS_LOG_TYPE_DEFAULT, "Sending Ahead group {groupID: %{public}@}", buf, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AD41A0;
  v25[3] = &unk_1E7442370;
  v26 = optionsCopy;
  selfCopy = self;
  v28 = groupCopy;
  v29 = completionCopy;
  priorityCopy = priority;
  identifierCopy = identifier;
  v20 = groupCopy;
  v21 = optionsCopy;
  v22 = completionCopy;
  [(_IDSService *)self performGroupTask:v25];

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)reportSpamMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C298();
    }
  }

  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];

  if (identifier)
  {
    v10 = [messageCopy objectForKey:*MEMORY[0x1E69A5468]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      if (unsignedIntegerValue == 1)
      {
        v16 = [messageCopy objectForKeyedSubscript:*MEMORY[0x1E69A5460]];

        if (v16)
        {
          goto LABEL_10;
        }

        daemonController = +[IDSLogging _IDSService];
        if (os_log_type_enabled(daemonController, OS_LOG_TYPE_ERROR))
        {
          sub_195B3C338();
        }

        goto LABEL_16;
      }

      if (unsignedIntegerValue)
      {
LABEL_10:
        daemonController = [(_IDSService *)self daemonController];
        [daemonController reportSpamMessage:messageCopy serviceIdentifier:identifier];
        v14 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = [messageCopy objectForKeyedSubscript:*MEMORY[0x1E69A5488]];

    if (v12)
    {
      goto LABEL_10;
    }

    daemonController = +[IDSLogging _IDSService];
    if (os_log_type_enabled(daemonController, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C36C();
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C3A0();
  }

  v14 = 0;
LABEL_18:

  return v14;
}

- (void)sendAckForMessageWithContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C3D4();
    }
  }

  if (self->_manuallyAckMessages)
  {
    storageGuid = [contextCopy storageGuid];
    v9 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = storageGuid;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Received call made to manually ack a message using storageGuid: %@", buf, 0xCu);
    }

    v38 = [(_IDSService *)self _sendingAccountForAccount:0];
    _internal = [v38 _internal];
    uniqueID = [_internal uniqueID];

    if (uniqueID)
    {
      v12 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:uniqueID];
    }

    else
    {
      v12 = 0;
    }

    wantsAppAck = [contextCopy wantsAppAck];
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    fromID = [contextCopy fromID];
    broadcastTime = [contextCopy broadcastTime];

    if (broadcastTime)
    {
      v15 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v17 = v16;
      broadcastTime2 = [contextCopy broadcastTime];
      [broadcastTime2 doubleValue];
      v20 = [v15 numberWithDouble:v17 - v19];

      if (!wantsAppAck)
      {
LABEL_16:
        if (storageGuid | v20)
        {
          daemonController = [(_IDSService *)self daemonController];
          _internal2 = [v12 _internal];
          account = [_internal2 account];
          [account _internal];
          v29 = v37 = uniqueID;
          [v29 uniqueID];
          v31 = v30 = v12;
          priority = [contextCopy priority];
          [daemonController acknowledgeMessageWithStorageGUID:storageGuid realGUID:outgoingResponseIdentifier forAccountWithUniqueID:v31 broadcastTime:v20 messageSize:0 priority:priority broadcastID:objc_msgSend(contextCopy connectionType:{"broadcastID"), objc_msgSend(contextCopy, "connectionType")}];

          v12 = v30;
          uniqueID = v37;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v20 = 0;
      if (!wantsAppAck)
      {
        goto LABEL_16;
      }
    }

    connectionType = [contextCopy connectionType];
    daemonController2 = [(_IDSService *)self daemonController];
    _internal3 = [v12 _internal];
    [_internal3 account];
    v23 = v36 = v12;
    _internal4 = [v23 _internal];
    [_internal4 uniqueID];
    v26 = v25 = uniqueID;
    [daemonController2 sendAppAckWithGUID:outgoingResponseIdentifier toDestination:fromID forAccountWithUniqueID:v26 connectionType:connectionType];

    uniqueID = v25;
    v12 = v36;

    goto LABEL_16;
  }

  storageGuid = +[IDSLogging _IDSService];
  if (os_log_type_enabled(storageGuid, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C474();
  }

LABEL_19:

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendCertifiedDeliveryReceipt:(id)receipt
{
  v17 = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  if (receiptCopy)
  {
    v5 = [(_IDSService *)self _sendingAccountForAccount:0];
    _internal = [v5 _internal];
    pushTopic = [_internal pushTopic];

    service = [receiptCopy service];
    v9 = [pushTopic isEqualToString:service];

    v10 = +[IDSLogging _IDSService];
    daemonController = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = receiptCopy;
        _os_log_impl(&dword_1959FF000, daemonController, OS_LOG_TYPE_DEFAULT, "sendCertifiedDeliveryReceipt passing context to daemon { context: %@ }", &v15, 0xCu);
      }

      daemonController = [(_IDSService *)self daemonController];
      dictionaryRepresentation = [receiptCopy dictionaryRepresentation];
      [daemonController sendCertifiedDeliveryReceipt:dictionaryRepresentation serviceName:pushTopic];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C4A8(receiptCopy);
    }
  }

  else
  {
    v5 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C544();
    }

    LOBYTE(v9) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)sendBatchMessageProcessedContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[IDSLogging _IDSService];
  v6 = v5;
  if (contextCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = contextCopy;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "sendBatchMessageProcessedContext given context: %@", &v12, 0xCu);
    }

    v6 = [(_IDSService *)self _sendingAccountForAccount:0];
    _internal = [v6 _internal];
    pushTopic = [_internal pushTopic];

    daemonController = [(_IDSService *)self daemonController];
    [daemonController sendBatchMessageProcessedContext:contextCopy serviceName:pushTopic];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C578();
  }

  v10 = *MEMORY[0x1E69E9840];
  return contextCopy != 0;
}

- (BOOL)noteMetricOfType:(int64_t)type context:(id)context
{
  contextCopy = context;
  serviceProperties = [(_IDSService *)self serviceProperties];
  identifier = [serviceProperties identifier];

  if (!identifier)
  {
    v10 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C684();
    }

    goto LABEL_9;
  }

  if (type == 1)
  {
    timestampDictionary = [contextCopy timestampDictionary];

    if (!timestampDictionary)
    {
      v10 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C5AC();
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (type)
    {
      v14 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C614();
      }

      goto LABEL_15;
    }

    timestamp = [contextCopy timestamp];

    if (!timestamp)
    {
      v10 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C5E0();
      }

LABEL_9:

LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  daemonController = [(_IDSService *)self daemonController];
  [daemonController noteMetricOfType:type context:contextCopy serviceName:identifier];

  v13 = 1;
LABEL_16:

  return v13;
}

- (void)_sendMissingMessageMetric:(id)metric
{
  metricCopy = metric;
  if ([metricCopy shouldReportMetric])
  {
    payload = [metricCopy payload];
    command = [metricCopy command];
    [(_IDSService *)self sendServerMessage:payload command:command fromAccount:0];
  }
}

- (id)datagramConnectionForSessionDestination:(id)destination error:(id *)error
{
  destinationCopy = destination;
  v7 = [(_IDSService *)self datagramConnectionForSessionDestination:destinationCopy uid:getuid() error:error];

  return v7;
}

- (id)datagramConnectionForSocketDescriptor:(int)descriptor error:(id *)error
{
  v5 = dup(descriptor);
  if (v5 == -1 || ([MEMORY[0x1E6977E18] connectionWithConnectedSocket:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v7 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)streamConnectionForSessionDestination:(id)destination error:(id *)error
{
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [v5 initWithObjectsAndKeys:{@"Unable to create stream connection with destination", *MEMORY[0x1E696A578], 0}];
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v6];
  }

  return 0;
}

- (id)streamConnectionForSocketDescriptor:(int)descriptor error:(id *)error
{
  v5 = dup(descriptor);
  if (v5 == -1 || ([MEMORY[0x1E6977E60] connectionWithConnectedSocket:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v7 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)datagramChannelForSessionDestination:(id)destination options:(id)options error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  optionsCopy = options;
  v9 = [[IDSDatagramChannel alloc] initWithDestination:destinationCopy options:optionsCopy];

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = destinationCopy;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Creating datagram channel with destination %@ => %@", buf, 0x16u);
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    v13 = [v12 initWithObjectsAndKeys:{@"Unable to create datagram channel with destination", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)datagramChannelForSocketDescriptor:(int)descriptor error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = dup(descriptor);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

  v7 = [[IDSDatagramChannel alloc] initWithSocketDescriptor:v6];
  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    descriptorCopy = descriptor;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Creating datagram channel with socket %d => %@", buf, 0x12u);
  }

  if (!v7)
  {
LABEL_5:
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v10 = [v9 initWithObjectsAndKeys:{@"Unable to create datagram channel with socket descriptor", *MEMORY[0x1E696A578], 0}];
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v10];
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)performGroupTask:(id)task
{
  taskCopy = task;
  groupContextController = [(_IDSService *)self groupContextController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AD5A54;
  v7[3] = &unk_1E7442398;
  v8 = taskCopy;
  v6 = taskCopy;
  [groupContextController groupContextWithCompletion:v7];
}

- (void)scheduleTransactionLogTask:(id)task
{
  taskCopy = task;
  groupContextController = [(_IDSService *)self groupContextController];
  [groupContextController scheduleTransactionLogTask:taskCopy];
}

- (void)connection:(id)connection didHintCheckingTransportLogWithReason:(int64_t)reason
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "checkTransportLog {reason: %ld}", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AD5BD0;
  v8[3] = &unk_1E7441E40;
  v8[4] = self;
  v8[5] = reason;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)groupContextController:(id)controller didCreateGroup:(id)group
{
  groupCopy = group;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C6B8();
    }
  }

  v14 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AD5D70;
  v11[3] = &unk_1E74423C0;
  v12 = groupCopy;
  v13 = 0;
  v9 = groupCopy;
  [(_IDSService *)self sendAheadGroup:v9 priority:300 options:MEMORY[0x1E695E0F8] identifier:&v14 completion:v11];
  v10 = v14;
}

- (id)groupContextController:(id)controller accountsForAlises:(id)alises
{
  v35 = *MEMORY[0x1E69E9840];
  alisesCopy = alises;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C758();
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(alisesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = alisesCopy;
  v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v22 = *v30;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        accounts = [(_IDSService *)self accounts];
        v12 = [accounts countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(accounts);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              aliasStrings = [v16 aliasStrings];
              v18 = [aliasStrings containsObject:v10];

              if (v18)
              {
                [v8 setObject:v16 forKeyedSubscript:v10];
              }
            }

            v13 = [accounts countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v13);
        }
      }

      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

@end