@interface _IDSService
+ (id)deviceForFromID:(id)a3 fromDevices:(id)a4;
- (BOOL)_canAccount:(id)a3 sendWithFromID:(id)a4;
- (BOOL)canSend;
- (BOOL)canSendMessageWithAccount:(id)a3 toDestination:(id)a4;
- (BOOL)cancelIdentifier:(id)a3 error:(id *)a4;
- (BOOL)cancelMessageWithOptions:(id)a3 destination:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (BOOL)cancelMessageWithOptions:(id)a3 destinations:(id)a4 identifier:(id *)a5 error:(id *)a6;
- (BOOL)cancelMessageWithOptions:(id)a3 identifier:(id *)a4 error:(id *)a5;
- (BOOL)cancelOpportunisticDataWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)getProgressUpdateForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isPretendingToBeFull;
- (BOOL)needsLaunchOnNearbyDevicesChanged;
- (BOOL)noteMetricOfType:(int64_t)a3 context:(id)a4;
- (BOOL)reportSpamMessage:(id)a3;
- (BOOL)sendAccessoryData:(id)a3 toAccessoryID:(id)a4 accessToken:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendAheadGroup:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 completion:(id)a7;
- (BOOL)sendBatchMessageProcessedContext:(id)a3;
- (BOOL)sendCertifiedDeliveryReceipt:(id)a3;
- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendData:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7;
- (BOOL)sendInvitation:(id)a3 fromAccount:(id)a4 toDestination:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendInvitationUpdate:(id)a3 fromAccount:(id)a4 toDestination:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendMessage:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendOpportunisticData:(id)a3 options:(id)a4 identifier:(id)a5 error:(id *)a6;
- (BOOL)sendProtobuf:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 fromAccount:(id)a5 toDestinations:(id)a6 priority:(int64_t)a7 options:(id)a8 identifier:(id *)a9 error:(id *)a10;
- (BOOL)sendServerMessage:(id)a3 command:(id)a4 fromAccount:(id)a5;
- (BOOL)setWakingPushPriority:(int64_t)a3 error:(id *)a4;
- (BOOL)updateSubServices:(id)a3 forDevice:(id)a4;
- (IDSAccount)iCloudAccount;
- (IDSServiceProperties)serviceProperties;
- (NSArray)URIs;
- (NSArray)devices;
- (NSDictionary)pseudonymURIMap;
- (NSSet)accounts;
- (NSSet)internalAccounts;
- (NSString)serviceDomain;
- (_IDSService)initWithService:(id)a3 commands:(id)a4 manuallyAckMessages:(BOOL)a5 delegateContext:(id)a6;
- (id)_accountWithURI:(id)a3 orPseudonym:(id)a4;
- (id)_acknowledgementBlockWithDelegateIdentifier:(id)a3;
- (id)_activeDeviceForUniqueID:(id)a3;
- (id)_filteredAccountsFrom:(id)a3;
- (id)_init;
- (id)_initWithDelegateContext:(id)a3;
- (id)_payloadFromDecryptedData:(id)a3;
- (id)_preferredURIForAccount:(id)a3;
- (id)_sendingAccountForAccount:(id)a3 destination:(id)a4 fromID:(id)a5;
- (id)daemonListener;
- (id)datagramChannelForSessionDestination:(id)a3 options:(id)a4 error:(id *)a5;
- (id)datagramChannelForSocketDescriptor:(int)a3 error:(id *)a4;
- (id)datagramConnectionForSessionDestination:(id)a3 error:(id *)a4;
- (id)datagramConnectionForSocketDescriptor:(int)a3 error:(id *)a4;
- (id)deviceForFromID:(id)a3;
- (id)deviceForUniqueID:(id)a3;
- (id)devicesForBTUUID:(id)a3;
- (id)firstRoutableInternetDestinationForSelf;
- (id)groupContextController:(id)a3 accountsForAlises:(id)a4;
- (id)linkedDeviceForFromID:(id)a3 withRelationship:(int64_t)a4;
- (id)linkedDevicesWithRelationship:(int64_t)a3;
- (id)pseudonymForPseudonymURI:(id)a3;
- (id)pseudonymPropertiesWithFeatureID:(id)a3 scopeID:(id)a4 expiryDurationInSeconds:(double)a5;
- (id)pseudonymsForMaskedURI:(id)a3;
- (id)pseudonymsForMaskedURI:(id)a3 matchingProperties:(id)a4;
- (id)streamConnectionForSessionDestination:(id)a3 error:(id *)a4;
- (id)streamConnectionForSocketDescriptor:(int)a3 error:(id *)a4;
- (id)uriForFromID:(id)a3;
- (int64_t)_messageTypeForCommand:(id)a3;
- (int64_t)maxEffectivePayloadSize;
- (unint64_t)registrationRestrictionReason;
- (void)OTRTestCallback:(id)a3 time:(double)a4 error:(id)a5;
- (void)_callDelegatesForDevicesChanged;
- (void)_callDelegatesRespondingToSelector:(SEL)a3 withPreCallbacksBlock:(id)a4 callbackBlock:(id)a5 postCallbacksBlock:(id)a6 group:(id)a7;
- (void)_callIsActiveChanged;
- (void)_callLinkedDevicesChanged;
- (void)_calloutPseudonymsDidUpdate;
- (void)_enforceSandboxPolicy;
- (void)_handlePretendingToBeFullWithIdentifier:(id *)a3;
- (void)_loadCachedLinkedDevices;
- (void)_logConnectionMap;
- (void)_processAccountSet:(id)a3;
- (void)_reloadCachedLinkedDevices;
- (void)_sendMissingMessageMetric:(id)a3;
- (void)_setupNewConnectionForAccount:(id)a3;
- (void)_tearDownConnectionForUniqueID:(id)a3;
- (void)_updateLinkedDevicesWithDevicesInfo:(id)a3;
- (void)account:(id)a3 pseudonymsChanged:(id)a4;
- (void)accountController:(id)a3 accountAdded:(id)a4;
- (void)accountController:(id)a3 accountDisabled:(id)a4;
- (void)accountController:(id)a3 accountEnabled:(id)a4;
- (void)accountController:(id)a3 accountRemoved:(id)a4;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)connection:(id)a3 account:(id)a4 inviteDroppedForSessionID:(id)a5 fromID:(id)a6 context:(id)a7 error:(id)a8;
- (void)connection:(id)a3 account:(id)a4 receivedGroupSessionParticipantDataUpdate:(id)a5;
- (void)connection:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5 context:(id)a6;
- (void)connection:(id)a3 account:(id)a4 sessionInviteReceived:(id)a5 fromID:(id)a6 transportType:(id)a7 options:(id)a8 context:(id)a9 messageContext:(id)a10;
- (void)connection:(id)a3 connectedDevicesChanged:(id)a4;
- (void)connection:(id)a3 devicesChanged:(id)a4;
- (void)connection:(id)a3 didCancelMessageWithSuccess:(BOOL)a4 error:(id)a5 identifier:(id)a6;
- (void)connection:(id)a3 didFlushCacheForKTPeerURI:(id)a4;
- (void)connection:(id)a3 didFlushCacheForRemoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6;
- (void)connection:(id)a3 didHintCheckingTransportLogWithReason:(int64_t)a4;
- (void)connection:(id)a3 didSendOpportunisticDataWithIdentifier:(id)a4 toIDs:(id)a5;
- (void)connection:(id)a3 identifier:(id)a4 alternateCallbackID:(id)a5 willSendToDestinations:(id)a6 skippedDestinations:(id)a7 registrationPropertyToDestinations:(id)a8;
- (void)connection:(id)a3 identifier:(id)a4 didSendWithSuccess:(BOOL)a5 error:(id)a6 context:(id)a7;
- (void)connection:(id)a3 identifier:(id)a4 fromURI:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)connection:(id)a3 incomingAccessoryData:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingAccessoryReportMessage:(id)a4 accessoryID:(id)a5 controllerID:(id)a6 context:(id)a7;
- (void)connection:(id)a3 incomingBatchMessage:(id)a4;
- (void)connection:(id)a3 incomingData:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingEngramMessage:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingGroupData:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingInvitation:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingInvitationUpdate:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingMessage:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingOpportunisticData:(id)a4 withIdentifier:(id)a5 fromURI:(id)a6 context:(id)a7;
- (void)connection:(id)a3 incomingPendingMessageFromURI:(id)a4 context:(id)a5;
- (void)connection:(id)a3 incomingPendingResourceWithMetadata:(id)a4 guid:(id)a5 fromURI:(id)a6 context:(id)a7;
- (void)connection:(id)a3 incomingProtobuf:(id)a4 fromURI:(id)a5 context:(id)a6;
- (void)connection:(id)a3 incomingTopLevelMessage:(id)a4 fromURI:(id)a5 messageContext:(id)a6;
- (void)connection:(id)a3 isActiveChanged:(BOOL)a4;
- (void)connection:(id)a3 messageIdentifier:(id)a4 alternateCallbackID:(id)a5 updatedWithResponseCode:(int64_t)a6 error:(id)a7 lastCall:(BOOL)a8 messageContext:(id)a9;
- (void)connection:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)daemonConnected;
- (void)daemonDisconnected;
- (void)dealloc;
- (void)didSwitchActivePairedDevice:(id)a3 forService:(id)a4 wasHandled:(BOOL *)a5;
- (void)finishedProvisioningPseudonym:(id)a3 success:(BOOL)a4 error:(id)a5 forRequestUUID:(id)a6;
- (void)finishedRenewingPseudonym:(id)a3 success:(BOOL)a4 error:(id)a5 requestUUID:(id)a6;
- (void)finishedReportingRequestUUID:(id)a3 withError:(id)a4;
- (void)finishedRevokingPseudonymWithSuccess:(BOOL)a3 error:(id)a4 requestUUID:(id)a5;
- (void)finishedSigningForRequest:(id)a3 signedData:(id)a4 error:(id)a5;
- (void)finishedVerifyingBatchedSignedDataForRequest:(id)a3 results:(id)a4 error:(id)a5;
- (void)finishedVerifyingSignedDataForRequest:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)groupContextController:(id)a3 didCreateGroup:(id)a4;
- (void)performGroupTask:(id)a3;
- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 requestProperties:(id)a5 completion:(id)a6;
- (void)provisionPseudonymWithProperties:(id)a3 requestProperties:(id)a4 completion:(id)a5;
- (void)removeDelegate:(id)a3;
- (void)renewPseudonym:(id)a3 forUpdatedExpiryEpoch:(double)a4 requestProperties:(id)a5 completion:(id)a6;
- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 withCompletion:(id)a6;
- (void)resendSubServicesToDaemonForCurrentDevice;
- (void)revokePseudonym:(id)a3 requestProperties:(id)a4 completion:(id)a5;
- (void)scheduleTransactionLogTask:(id)a3;
- (void)sendAckForMessageWithContext:(id)a3;
- (void)sendEncryptedOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sendServerMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sendServiceUpdateMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)service:(id)a3 linkedDevicesUpdated:(id)a4;
- (void)service:(id)a3 restrictionReasonChanged:(unint64_t)a4;
- (void)service:(id)a3 tinkerDeviceAdded:(id)a4;
- (void)service:(id)a3 tinkerDeviceRemoved:(id)a4;
- (void)service:(id)a3 tinkerDeviceUpdated:(id)a4;
- (void)setLinkPreferences:(id)a3;
- (void)setPretendingToBeFull:(BOOL)a3;
- (void)setWantsPseudonymUpdates:(BOOL)a3;
- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6;
- (void)startOTRTest:(int64_t)a3;
- (void)testCloudQRConnection;
- (void)verifySignedData:(id)a3 matchesExpectedData:(id)a4 withTokenURI:(id)a5 forAlgorithm:(int64_t)a6 options:(id)a7 completion:(id)a8;
- (void)verifySignedPayloads:(id)a3 forAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6;
@end

@implementation _IDSService

- (NSArray)devices
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
        v10 = [v9 _internal];
        v11 = [v10 lastGDRDate];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v12 = [v9 _internal];
        v13 = [v12 devices];

        v49 = v13;
        v51 = [v13 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v51)
        {
          v50 = *v58;
          v48 = v11;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v58 != v50)
              {
                objc_enumerationMutation(v49);
              }

              v15 = *(*(&v57 + 1) + 8 * i);
              v16 = [v15 _internal];
              v17 = [v16 uniqueIDOverride];

              if (![v17 length])
              {
                v18 = [v15 _internal];
                v19 = [v18 uniqueID];

                v17 = v19;
              }

              if ([v17 length])
              {
                v20 = [v6 objectForKey:v17];
                v21 = [v7 objectForKey:v17];
              }

              else
              {
                v21 = 0;
                v20 = 0;
              }

              if ([v17 length])
              {
                v22 = 0;
              }

              else
              {
                v23 = [v15 _internal];
                v22 = [v23 pushToken];

                if ([v22 length])
                {
                  v24 = [v6 objectForKey:v22];

                  v25 = [v7 objectForKey:v22];

                  v21 = v25;
                  v20 = v24;
                }
              }

              if (!v20)
              {
                goto LABEL_27;
              }

              v52 = v21;
              v26 = [v11 laterDate:v21];
              v27 = [v26 isEqualToDate:v11];

              if (v27)
              {

                v21 = v52;
LABEL_27:
                if ([v17 length])
                {
                  if (v15)
                  {
                    CFDictionarySetValue(v6, v17, v15);
                  }

                  if (v11)
                  {
                    v28 = v7;
                    v29 = v17;
                    goto LABEL_45;
                  }
                }

                else if ([v22 length])
                {
                  if (v15)
                  {
                    CFDictionarySetValue(v6, v22, v15);
                  }

                  if (v11)
                  {
                    v28 = v7;
                    v29 = v22;
LABEL_45:
                    CFDictionarySetValue(v28, v29, v11);
                  }
                }

                v20 = 0;
                goto LABEL_47;
              }

              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v30 = [v15 _internal];
              v31 = [v30 identities];

              v32 = [v31 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
                      objc_enumerationMutation(v31);
                    }

                    v36 = *(*(&v53 + 1) + 8 * j);
                    v37 = [v20 _internal];
                    [v37 _addIdentity:v36];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v53 objects:v65 count:16];
                }

                while (v33);
              }

              v7 = v46;
              v6 = v47;
              v11 = v48;
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

  v38 = [v6 allValues];
  v39 = [v38 copy];

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

- (NSSet)accounts
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A540();
    }
  }

  v6 = [(IDSAccountController *)self->_accountController _internal];
  v7 = [v6 accounts];

  v8 = [(_IDSService *)self _filteredAccountsFrom:v7];

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
      v7 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v7;
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
      v7 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v7;
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v3 = [v2 listener];

  return v3;
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
    v4 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
    *buf = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "_IDSService - deallocing {self: %p, serviceName: %@}", buf, 0x16u);
  }

  v5 = [(_IDSService *)self daemonListener];
  [v5 removeHandler:self];

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
        v9 = [v8 second];

        if (v9)
        {
          v9[2](v9);
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A860();
    }
  }

  if (!self->_linkedDevicesLoaded)
  {
    v6 = +[IDSDaemonController sharedInstance];
    [v6 blockUntilConnected];

    v7 = [(_IDSService *)self accounts];
    v8 = [v7 anyObject];
    v9 = [v8 serviceName];

    v10 = [(_IDSService *)self daemonListener];
    v11 = [v10 linkedDevicesForService:v9];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v11];
    self->_linkedDevicesLoaded = 1;
  }
}

- (IDSAccount)iCloudAccount
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A400();
    }
  }

  v6 = [(IDSAccountController *)self->_accountController _internal];
  v7 = [v6 accounts];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
        v13 = [v12 _internal];
        v14 = [v13 accountType];

        if (v14 == 1)
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B38A84();
    }
  }

  v6 = [(_IDSService *)self accounts];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v39 + 1) + 8 * i) _internal];
        v14 = [v13 uniqueID];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v10);
  }

  v15 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    lastIsActiveSet = self->_lastIsActiveSet;
    *buf = 138412546;
    v45 = lastIsActiveSet;
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "activeAccountsChanged, oldSet: %@  newSet: %@", buf, 0x16u);
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
    v38 = self;
    [(_IDSService *)self _callDelegatesWithBlock:v36];
  }

  v19 = *p_lastIsActiveSet;
  objc_storeStrong(&self->_lastIsActiveSet, v7);
  v20 = [(NSMutableSet *)*p_lastIsActiveSet count];
  if (v20 != [(NSMutableSet *)v19 count]|| *p_lastIsActiveSet && v19 && ([(NSMutableSet *)*p_lastIsActiveSet isEqualToSet:v19]& 1) == 0)
  {
    v21 = [(IDSAccountController *)self->_accountController _internal];
    v22 = [v21 accounts];

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v22;
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

          v29 = [*(*(&v32 + 1) + 8 * j) _internal];
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v26);
    }

    if (sub_195A0CBF4(v23))
    {
      v30 = [MEMORY[0x1E69A6138] IDSService];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "*** dropping devicesChanged callback! -- accountsChanged", buf, 2u);
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B398C0();
    }
  }

  v6 = [(_IDSService *)self devices];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A0E018;
  v8[3] = &unk_1E7441E18;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
}

- (id)_initWithDelegateContext:(id)a3
{
  v4 = a3;
  v5 = [(_IDSService *)self _init];
  if (v5)
  {
    v6 = [MEMORY[0x1E6995700] weakRefWithObject:v4];
    v7 = v5[5];
    v5[5] = v6;
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _IDSService;
  return [(_IDSService *)&v3 init];
}

- (_IDSService)initWithService:(id)a3 commands:(id)a4 manuallyAckMessages:(BOOL)a5 delegateContext:(id)a6
{
  v7 = a5;
  v57 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!_IDSRunningInDaemon())
  {
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v48 = _os_activity_create(&dword_1959FF000, "Framework init with service, commands", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v48, &state);
    v15 = +[IDSInternalQueueController sharedInstance];
    v16 = [v15 assertQueueIsCurrent];

    if (v16)
    {
      v17 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
      v50 = self;
      if (v7)
      {
        v19 = @"YES";
      }

      v51 = 2112;
      v52 = v10;
      v53 = 2112;
      v54 = v11;
      v55 = 2112;
      v56 = v19;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "_IDSService - initing {self: %p, service: %@, commands: %@, manualAck: %@}", buf, 0x2Au);
    }

    v20 = [objc_alloc(MEMORY[0x1E69A5408]) initWithServiceIdentifier:v10];
    serviceProperties = self->_serviceProperties;
    self->_serviceProperties = v20;

    if (!self->_serviceProperties)
    {
      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_195B3824C();
      }

      v14 = 0;
      goto LABEL_26;
    }

    v22 = [MEMORY[0x1E69A60F0] sharedInstance];
    if ([v22 isInternalInstall] && (_os_feature_enabled_impl() & 1) == 0)
    {
      v45 = [v10 containsString:@"com.apple.private.alloy.accessibility.local"];

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
    v23 = [MEMORY[0x1E6995700] weakRefWithObject:v12];
    delegateContext = self->_delegateContext;
    self->_delegateContext = v23;

    v25 = [v11 copy];
    commands = self->_commands;
    self->_commands = v25;

    v27 = [[IDSAccountController alloc] _initWithService:v10];
    accountController = self->_accountController;
    self->_accountController = v27;

    v29 = [(IDSAccountController *)self->_accountController _internal];
    v30 = +[IDSInternalQueueController sharedInstance];
    v31 = [v30 queue];
    [v29 addDelegate:self queue:v31];

    lastIsActiveSet = self->_lastIsActiveSet;
    self->_lastIsActiveSet = 0;

    v33 = [IDSGroupContextController alloc];
    v34 = +[IDSInternalQueueController sharedInstance];
    v35 = [v34 queue];
    v36 = [(IDSGroupContextController *)v33 initWithServiceName:v10 queue:v35 delegate:self];
    groupContextController = self->_groupContextController;
    self->_groupContextController = v36;

    v38 = objc_alloc_init(IDSQuickSwitchAcknowledgementTracker);
    acknowledgementTracker = self->_acknowledgementTracker;
    self->_acknowledgementTracker = v38;

    self->_manuallyAckMessages = v7;
    v40 = [MEMORY[0x1E69A60F0] sharedInstance];
    LOBYTE(v34) = [v40 isNonUIInstall];

    if ((v34 & 1) == 0)
    {
      [(_IDSService *)self _processAccountSet:0];
    }

    v41 = [(_IDSService *)self daemonListener];
    [v41 addHandler:self];

LABEL_22:
    v14 = self;
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

  v14 = 0;
LABEL_27:

  v43 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B38350();
    }
  }

  if (v6 && v7)
  {
    v11 = [(NSMapTable *)self->_delegateToInfo objectForKey:v6];

    if (!v11)
    {
      if (!self->_delegateToInfo)
      {
        v12 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        delegateToInfo = self->_delegateToInfo;
        self->_delegateToInfo = v12;
      }

      v14 = objc_alloc_init(MEMORY[0x1E69A5228]);
      [v14 setQueue:v7];
      [(NSMapTable *)self->_delegateToInfo setObject:v14 forKey:v6];
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

- (void)removeDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(IDSQuickSwitchAcknowledgementTracker *)self->_acknowledgementTracker identifierForServiceDelegate:v4];
    if (v5)
    {
      [(_IDSService *)self _stopAwaitingQuickSwitchAcknowledgementFromDelegateWithIdentifier:v5];
    }

    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:v4];
    if (![(NSMapTable *)self->_delegateToInfo count])
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;
    }

    v7 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
      v10 = 134218498;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      v14 = 2048;
      v15 = v4;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "_IDSService - removed delegate {self: %p, serviceName %@, delegate: %p}", &v10, 0x20u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_callDelegatesRespondingToSelector:(SEL)a3 withPreCallbacksBlock:(id)a4 callbackBlock:(id)a5 postCallbacksBlock:(id)a6 group:(id)a7
{
  v67 = *MEMORY[0x1E69E9840];
  v50 = a4;
  v12 = a5;
  v49 = a6;
  v13 = a7;
  v14 = v13;
  v51 = v12;
  if (v12)
  {
    group = v13;
    v15 = +[IDSInternalQueueController sharedInstance];
    v16 = [v15 assertQueueIsCurrent];

    if (v16)
    {
      v17 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

          if (!v28 && (!a3 || (objc_opt_respondsToSelector() & 1) != 0))
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
    v14 = group;
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
        v34 = [v32 queue];
        if (v14)
        {
          dispatch_group_enter(v14);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        v36 = [v35 queue];

        if (v34 == v36)
        {
          if (a3)
          {
            v14 = group;
            if (v50 != 0 && (v29 & 1) != 0)
            {
              v50[2](v50, 1);
            }

            (v51)[2](v51, v31);
            if (v49 && !v33)
            {
              v49[2](v49, 1);
            }
          }

          else
          {
            (v51)[2](v51, v31);
            v14 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!v14)
          {
            goto LABEL_42;
          }
        }

        else if (v34)
        {
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = sub_195AB4A98;
          v53[3] = &unk_1E7440E10;
          v59 = a3;
          v60 = v29 & 1;
          v56 = v50;
          v57 = v51;
          v54 = v31;
          v61 = v33 == 0;
          v58 = v49;
          v55 = v32;
          v37 = MEMORY[0x19A8BBEF0](v53);
          v38 = v37;
          if (v34 == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          v14 = group;
          if (group)
          {
            dispatch_group_async(group, v34, v42);
          }

          else
          {
            dispatch_async(v34, v42);
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
          v14 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(v14);
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

- (void)OTRTestCallback:(id)a3 time:(double)a4 error:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B384E0();
    }
  }

  v13 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v22 = self;
    v23 = 2112;
    v24 = v8;
    v25 = 2048;
    v26 = a4;
    v27 = 1024;
    v28 = v9 == 0;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%@: OTRTestCallback: token is %@, setupTime is %.6f, error==nil is %d", buf, 0x26u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AB4DAC;
  v17[3] = &unk_1E7441D00;
  v17[4] = self;
  v18 = v8;
  v20 = a4;
  v19 = v9;
  v14 = v9;
  v15 = v8;
  [(_IDSService *)self _callDelegatesWithBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didCancelMessageWithSuccess:(BOOL)a4 error:(id)a5 identifier:(id)a6
{
  v7 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B38580();
    }
  }

  v14 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    *buf = 138413058;
    v24 = self;
    if (v7)
    {
      v15 = @"YES";
    }

    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@: didCancelMessageWithSuccess: %@ error: %@ identifier %@", buf, 0x2Au);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AB500C;
  v19[3] = &unk_1E7441D28;
  v22 = v7;
  v19[4] = self;
  v20 = v9;
  v21 = v10;
  v16 = v10;
  v17 = v9;
  [(_IDSService *)self _callDelegatesWithBlock:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)didSwitchActivePairedDevice:(id)a3 forService:(id)a4 wasHandled:(BOOL *)a5
{
  v117 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v50 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B38620();
    }
  }

  v11 = [(IDSAccountController *)self->_accountController _internal];
  v49 = [v11 serviceName];

  v12 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v49;
    *&buf[12] = 2112;
    *&buf[14] = v50;
    *&buf[22] = 2112;
    v114 = v48;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ Switched active paired device for service name %@. deviceUniqueID: %@", buf, 0x20u);
  }

  if ([v49 isEqualToIgnoringCase:v50])
  {
    if (a5)
    {
      *a5 = 1;
    }

    [(IDSQuickSwitchAcknowledgementTracker *)self->_acknowledgementTracker stopAwaitingAcknowledgementFromAllServiceDelegates];
    v13 = [self->_delegateContext object];
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
    v14 = v49;
    v105 = v14;
    v15 = v13;
    v106 = v15;
    v107 = self;
    v108 = v50;
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
    v20 = v48;
    v98 = v102;
    v99 = v100;
    v95 = v20;
    v96 = self;
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
    v39 = [v38 queue];
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
    dispatch_group_notify(v17, v39, block);

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
    v41 = [MEMORY[0x1E69A6138] ACKTracker];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v50;
      *&buf[12] = 2112;
      *&buf[14] = v49;
      _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "Ignoring didSwitch callback for %@, mine is %@", buf, 0x16u);
    }

    if (a5)
    {
      *a5 = 0;
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (id)_activeDeviceForUniqueID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B386C4();
    }
  }

  if (v4)
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
          v14 = [v13 uniqueID];
          if ([v14 isEqualToIgnoringCase:v4])
          {

LABEL_19:
            v17 = v13;
            goto LABEL_20;
          }

          v15 = [v13 uniqueIDOverride];
          v16 = [v15 isEqualToIgnoringCase:v4];

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

- (id)_acknowledgementBlockWithDelegateIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6995700] weakRefWithObject:self];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195AB6794;
  v14 = &unk_1E743EA30;
  v15 = v5;
  v16 = v4;
  v6 = v4;
  v7 = v5;
  v8 = MEMORY[0x19A8BBEF0](&v11);
  v9 = [v8 copy];

  return v9;
}

- (void)_callLinkedDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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

- (void)service:(id)a3 tinkerDeviceAdded:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_IDSService *)self accounts];
  v7 = [v6 anyObject];
  v8 = [v7 serviceName];
  v9 = [v5 isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceAdded (linkedDevices count: %@)", &v17, 0x16u);
    }

    v12 = [(_IDSService *)self daemonListener];
    v13 = [v12 linkedDevicesForService:v5];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    v14 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6A80];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 tinkerDeviceRemoved:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_IDSService *)self accounts];
  v7 = [v6 anyObject];
  v8 = [v7 serviceName];
  v9 = [v5 isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceRemoved (linkedDevices count: %@)", &v17, 0x16u);
    }

    v12 = [(_IDSService *)self daemonListener];
    v13 = [v12 linkedDevicesForService:v5];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    v14 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AA0];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 tinkerDeviceUpdated:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_IDSService *)self accounts];
  v7 = [v6 anyObject];
  v8 = [v7 serviceName];
  v9 = [v5 isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Service received %@ tinkerDeviceUpdated (linkedDevices count: %@)", &v17, 0x16u);
    }

    v12 = [(_IDSService *)self daemonListener];
    v13 = [v12 linkedDevicesForService:v5];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    v14 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AC0];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 linkedDevicesUpdated:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_IDSService *)self accounts];
  v7 = [v6 anyObject];
  v8 = [v7 serviceName];
  v9 = [v5 isEqualToString:v8];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableArray count](self->_linkedDevices, "count")}];
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Service received %@ linkedDevicesUpdated (linkedDevices count: %@)", &v17, 0x16u);
    }

    v12 = [(_IDSService *)self daemonListener];
    v13 = [v12 linkedDevicesForService:v5];

    [(_IDSService *)self _updateLinkedDevicesWithDevicesInfo:v13];
    [(_IDSService *)self _callLinkedDevicesChanged];
    v14 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6AE0];
      v17 = 138412290;
      v18 = v15;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Linked devices updated %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)a3 restrictionReasonChanged:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_IDSService *)self serviceProperties];
  v8 = [v7 identifier];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195AB7270;
    v10[3] = &unk_1E7441E40;
    v10[4] = self;
    v10[5] = a4;
    [(_IDSService *)self _callDelegatesWithBlock:v10];
  }
}

- (void)_setupNewConnectionForAccount:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  if ((v6 & 1) == 0)
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    v8 = [v7 assertQueueIsCurrent];

    if (v8)
    {
      v9 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_195B388A4();
      }
    }

    if (v4)
    {
      v10 = [v4 _internal];
      v11 = [v10 uniqueID];

      v12 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v11];
      if (v12)
      {
        v13 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 _internal];
          v26 = 138412290;
          v27 = v14;
          _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_INFO, "We have an existing connection for this unique ID: %@", &v26, 0xCu);
        }
      }

      else
      {
        v13 = [IDSConnection _connectionWithAccount:v4 commands:self->_commands indirectDelegateCallouts:1];
        uniqueIDToConnection = self->_uniqueIDToConnection;
        if (!uniqueIDToConnection)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v17 = self->_uniqueIDToConnection;
          self->_uniqueIDToConnection = Mutable;

          uniqueIDToConnection = self->_uniqueIDToConnection;
        }

        [(NSMutableDictionary *)uniqueIDToConnection setObject:v13 forKey:v11];
        v18 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412290;
          v27 = v11;
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

          v21 = [v13 _internal];
          [v21 setDelegateCapabilities:self->_listenerCaps];

          v22 = [v13 _internal];
          v23 = +[IDSInternalQueueController sharedInstance];
          v24 = [v23 queue];
          [v22 addDelegate:self queue:v24];

          [(_IDSService *)self connection:v13 devicesChanged:0];
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_tearDownConnectionForUniqueID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B38944();
    }
  }

  if (v4)
  {
    v8 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v4];
    v9 = [v8 _internal];
    [v9 removeDelegate:self];

    [(NSMutableDictionary *)self->_uniqueIDToConnection removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_uniqueIDToConnection count])
    {
      uniqueIDToConnection = self->_uniqueIDToConnection;
      self->_uniqueIDToConnection = 0;
    }

    v11 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Tearing down connection for %@", &v13, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_processAccountSet:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  if ((v6 & 1) == 0)
  {
    v7 = +[IDSInternalQueueController sharedInstance];
    v8 = [v7 assertQueueIsCurrent];

    if (v8)
    {
      v9 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_195B389E4();
      }
    }

    context = objc_autoreleasePoolPush();
    if (!v4 || (v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v4]) == 0)
    {
      v11 = [(IDSAccountController *)self->_accountController _internal];
      v12 = [v11 accounts];
      if (v12)
      {
        v13 = objc_alloc(MEMORY[0x1E695DFD8]);
        v14 = [(IDSAccountController *)self->_accountController _internal];
        v15 = [v14 accounts];
        v10 = [v13 initWithSet:v15];
      }

      else
      {
        v10 = 0;
      }
    }

    v45 = v4;
    v16 = MEMORY[0x1E695DFD8];
    v17 = [(NSMutableDictionary *)self->_uniqueIDToConnection allKeys];
    v46 = [v16 setWithArray:v17];

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
          v26 = [v25 _internal];
          v27 = [v26 uniqueID];

          if (v27)
          {
            [v19 addObject:v27];
            [v18 setObject:v25 forKey:v27];
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
    v4 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)a3 accountAdded:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B38B24();
    }
  }

  if (v5)
  {
    [(_IDSService *)self _setupNewConnectionForAccount:v5];
    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)a3 accountRemoved:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B38BC4();
    }
  }

  if (v5)
  {
    v9 = [v5 _internal];
    v10 = [v9 uniqueID];
    [(_IDSService *)self _tearDownConnectionForUniqueID:v10];

    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)a3 accountEnabled:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B38C64();
    }
  }

  if (v5)
  {
    [(_IDSService *)self _setupNewConnectionForAccount:v5];
    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)accountController:(id)a3 accountDisabled:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B38D04();
    }
  }

  if (v5)
  {
    v9 = [v5 _internal];
    v10 = [v9 uniqueID];
    [(_IDSService *)self _tearDownConnectionForUniqueID:v10];

    [(_IDSService *)self _callIsActiveChanged];
  }
}

- (void)connection:(id)a3 incomingOpportunisticData:(id)a4 withIdentifier:(id)a5 fromURI:(id)a6 context:(id)a7
{
  v70 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a6) = [v17 assertQueueIsCurrent];

  if (a6)
  {
    v18 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_195B38DA4();
    }
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 outgoingResponseIdentifier];
    v22 = v19;
    v23 = v15;
    v24 = v13;
    v25 = v14;
    v26 = v12;
    if ([v16 usedEngram])
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v65 = v21;
    v66 = 2112;
    v67 = v27;
    v12 = v26;
    v14 = v25;
    v13 = v24;
    v15 = v23;
    v19 = v22;
    v68 = 2048;
    v69 = v28;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "incomingOpportunisticData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  [v16 setWantsManualAck:self->_manuallyAckMessages];
  v29 = [v15 prefixedURI];
  [v16 setFromID:v29];

  v30 = [v12 _internal];
  v31 = [v30 account];

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195AB8568;
  v57[3] = &unk_1E7441E88;
  v32 = v16;
  v58 = v32;
  v59 = self;
  v33 = v31;
  v60 = v33;
  v34 = v13;
  v61 = v34;
  v35 = v14;
  v62 = v35;
  v36 = v15;
  v63 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v57 group:v19];
  if (!self->_manuallyAckMessages)
  {
    v47 = v35;
    v37 = [v32 wantsAppAck];
    [v32 storageGuid];
    v38 = v48 = v34;
    v39 = [v32 outgoingResponseIdentifier];
    +[IDSInternalQueueController sharedInstance];
    v46 = v33;
    v41 = v40 = v12;
    v42 = [v41 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB8774;
    block[3] = &unk_1E7441038;
    v56 = v37;
    v35 = v47;
    v50 = v32;
    v51 = self;
    v52 = v39;
    v53 = v36;
    v54 = v40;
    v55 = v38;
    v43 = v38;
    v44 = v39;
    dispatch_group_notify(v19, v42, block);

    v12 = v40;
    v33 = v46;

    v34 = v48;
  }

  dispatch_group_leave(v19);

  v45 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingData:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v92 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v14 assertQueueIsCurrent];

  if (a5)
  {
    v15 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B38E44();
    }
  }

  v16 = [v10 _internal];
  v62 = [v16 account];

  v17 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v13 outgoingResponseIdentifier];
    v19 = v11;
    if ([v13 usedEngram])
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v83 = v18;
    v84 = 2112;
    v85 = v20;
    v11 = v19;
    v86 = 2048;
    v87 = v21;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "incomingData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v22 = +[IDSTransportLog IDSService];
  v64 = v10;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self;
    v24 = v12;
    v25 = [v11 length];
    v26 = [v10 _internal];
    v27 = [v10 _internal];
    v28 = [v27 account];
    v29 = [v28 _internal];
    [v13 outgoingResponseIdentifier];
    v30 = v60 = v11;
    *buf = 134219010;
    v83 = v25;
    v12 = v24;
    self = v23;
    v84 = 2112;
    v85 = v26;
    v86 = 2112;
    v87 = v29;
    v88 = 2112;
    v89 = v12;
    v90 = 2112;
    v91 = v30;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingData of size %lu on connection %@ account %@ from ID %@ sender-side-identifier %@", buf, 0x34u);

    v10 = v64;
    v11 = v60;
  }

  v31 = dispatch_group_create();
  dispatch_group_enter(v31);
  [v13 setWantsManualAck:self->_manuallyAckMessages];
  v32 = [v12 prefixedURI];
  [v13 setFromID:v32];

  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_195AB8F80;
  v76[3] = &unk_1E7441EB0;
  v33 = v13;
  v77 = v33;
  v78 = self;
  v34 = v62;
  v79 = v34;
  v35 = v11;
  v80 = v35;
  v36 = v12;
  v81 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v76 group:v31];
  if (!self->_manuallyAckMessages)
  {
    v59 = v36;
    v63 = v34;
    v37 = [v33 wantsAppAck];
    v57 = [v33 isDirectMessage];
    v38 = [v33 outgoingResponseIdentifier];
    v39 = [v33 storageGuid];
    v40 = [v33 broadcastTime];

    if (v40)
    {
      v41 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v43 = v42;
      v44 = [v33 broadcastTime];
      [v44 doubleValue];
      v55 = [v41 numberWithDouble:v43 - v45];
    }

    else
    {
      v55 = 0;
    }

    v61 = v35;
    v46 = +[IDSLogging _IDSService];
    v47 = v37;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = @"NO";
      *buf = 138413058;
      v83 = v33;
      if (v37)
      {
        v48 = @"YES";
      }

      v84 = 2112;
      v85 = v48;
      v86 = 2112;
      v87 = v38;
      v88 = 2112;
      v89 = v39;
      _os_log_impl(&dword_1959FF000, v46, OS_LOG_TYPE_DEFAULT, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v49 = +[IDSInternalQueueController sharedInstance];
    [v49 queue];
    v51 = v50 = v38;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AB9188;
    block[3] = &unk_1E7441ED8;
    v66 = v33;
    v74 = v47;
    v75 = v57;
    v10 = v64;
    v67 = v64;
    v68 = v38;
    v69 = self;
    v36 = v59;
    v70 = v59;
    v71 = v39;
    v72 = v56;
    v35 = v61;
    v73 = v61;
    v58 = v56;
    v52 = v39;
    v53 = v50;
    dispatch_group_notify(v31, v51, block);

    v34 = v63;
  }

  dispatch_group_leave(v31);

  v54 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingGroupData:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v14 assertQueueIsCurrent];

  if (a5)
  {
    v15 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B38EE4();
    }
  }

  v16 = +[IDSTransportLog IDSService];
  v54 = v12;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 outgoingResponseIdentifier];
    if ([v13 usedEngram])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v68 = v17;
    v69 = 2112;
    v70 = v18;
    v12 = v54;
    v71 = 2048;
    v72 = v19;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "incomingGroupData on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v20 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v11 length];
    v22 = [v10 _internal];
    v23 = [v10 _internal];
    v24 = [v23 account];
    [v24 _internal];
    v52 = self;
    v25 = v11;
    v27 = v26 = v10;
    v28 = [v13 outgoingResponseIdentifier];
    *buf = 134219010;
    v68 = v21;
    v12 = v54;
    v69 = 2112;
    v70 = v22;
    v71 = 2112;
    v72 = v27;
    v73 = 2112;
    v74 = v54;
    v75 = 2112;
    v76 = v28;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "incomingGroupData of size %lu on connection %@ account %@ from ID %@ sender-side-identifier %@", buf, 0x34u);

    v10 = v26;
    v11 = v25;
    self = v52;
  }

  v29 = dispatch_group_create();
  dispatch_group_enter(v29);
  [v13 setWantsManualAck:self->_manuallyAckMessages];
  v30 = [v12 prefixedURI];
  [v13 setFromID:v30];

  v31 = +[IDSInternalQueueController sharedInstance];
  v32 = [v31 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AB99F4;
  block[3] = &unk_1E743EA30;
  block[4] = self;
  v33 = v11;
  v66 = v33;
  dispatch_group_async(v29, v32, block);

  if (!self->_manuallyAckMessages)
  {
    v53 = v10;
    v34 = [v13 wantsAppAck];
    v35 = [v13 outgoingResponseIdentifier];
    v36 = [v13 storageGuid];
    v37 = [v13 broadcastTime];

    if (v37)
    {
      v38 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v40 = v39;
      v41 = [v13 broadcastTime];
      [v41 doubleValue];
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
      v68 = v13;
      if (v34)
      {
        v45 = @"YES";
      }

      v69 = 2112;
      v70 = v45;
      v71 = 2112;
      v72 = v35;
      v73 = 2112;
      v74 = v36;
      _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v46 = +[IDSInternalQueueController sharedInstance];
    v47 = [v46 queue];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = sub_195AB9DAC;
    v55[3] = &unk_1E7441F28;
    v64 = v34;
    v56 = v13;
    v57 = self;
    v58 = v35;
    v59 = v54;
    v10 = v53;
    v60 = v53;
    v61 = v36;
    v62 = v43;
    v63 = v33;
    v51 = v43;
    v48 = v36;
    v49 = v35;
    dispatch_group_notify(v29, v47, v55);

    v12 = v54;
  }

  dispatch_group_leave(v29);

  v50 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingAccessoryData:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a4) = [v14 assertQueueIsCurrent];

  if (a4)
  {
    v15 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B38F84();
    }
  }

  v16 = [v10 _internal];
  v17 = [v16 account];

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  [v13 setWantsManualAck:self->_manuallyAckMessages];
  v19 = [v12 prefixedURI];
  [v13 setFromID:v19];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_195ABA46C;
  v58[3] = &unk_1E7441EB0;
  v20 = v13;
  v59 = v20;
  v60 = self;
  v21 = v17;
  v61 = v21;
  v22 = v11;
  v62 = v22;
  v23 = v12;
  v63 = v23;
  [(_IDSService *)self _callDelegatesWithBlock:v58 group:v18];
  if (!self->_manuallyAckMessages)
  {
    v44 = v23;
    v46 = v21;
    v47 = v10;
    v24 = [v20 wantsAppAck];
    v25 = [v20 outgoingResponseIdentifier];
    v26 = [v20 storageGuid];
    v27 = [v20 broadcastTime];

    if (v27)
    {
      v28 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v30 = v29;
      v31 = [v20 broadcastTime];
      [v31 doubleValue];
      v42 = [v28 numberWithDouble:v30 - v32];
    }

    else
    {
      v42 = 0;
    }

    v45 = v22;
    v33 = +[IDSLogging _IDSService];
    v34 = v24;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v35 = @"NO";
      *buf = 138413058;
      v65 = v20;
      if (v24)
      {
        v35 = @"YES";
      }

      v66 = 2112;
      v67 = v35;
      v68 = 2112;
      v69 = v25;
      v70 = 2112;
      v71 = v26;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v36 = +[IDSInternalQueueController sharedInstance];
    [v36 queue];
    v38 = v37 = v25;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABA674;
    block[3] = &unk_1E7441F28;
    v57 = v34;
    v49 = v20;
    v50 = self;
    v51 = v25;
    v23 = v44;
    v52 = v44;
    v10 = v47;
    v53 = v47;
    v54 = v26;
    v55 = v42;
    v22 = v45;
    v56 = v45;
    v43 = v42;
    v39 = v26;
    v40 = v37;
    dispatch_group_notify(v18, v38, block);

    v21 = v46;
  }

  dispatch_group_leave(v18);

  v41 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingAccessoryReportMessage:(id)a4 accessoryID:(id)a5 controllerID:(id)a6 context:(id)a7
{
  v72 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSInternalQueueController sharedInstance];
  v18 = [v17 assertQueueIsCurrent];

  if (v18)
  {
    v19 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_195B39024();
    }
  }

  v20 = [v12 _internal];
  v21 = [v20 account];

  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195ABACB8;
  v57[3] = &unk_1E7441E88;
  v23 = v16;
  v58 = v23;
  v59 = self;
  v24 = v21;
  v60 = v24;
  v25 = v13;
  v61 = v25;
  v26 = v15;
  v62 = v26;
  v27 = v14;
  v63 = v27;
  [(_IDSService *)self _callDelegatesWithBlock:v57 group:v22];
  [v23 setWantsManualAck:self->_manuallyAckMessages];
  [v23 setFromID:v27];
  if (!self->_manuallyAckMessages)
  {
    v45 = v25;
    v46 = v12;
    v28 = [v23 wantsAppAck];
    v29 = [v23 outgoingResponseIdentifier];
    v47 = [v23 storageGuid];
    v30 = [v23 broadcastTime];

    if (v30)
    {
      v31 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v33 = v32;
      v34 = [v23 broadcastTime];
      [v34 doubleValue];
      v30 = [v31 numberWithDouble:v33 - v35];
    }

    v44 = v24;
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = @"NO";
      *buf = 138413058;
      v65 = v23;
      if (v28)
      {
        v37 = @"YES";
      }

      v66 = 2112;
      v67 = v37;
      v68 = 2112;
      v69 = v29;
      v70 = 2112;
      v71 = v47;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v38 = +[IDSInternalQueueController sharedInstance];
    v39 = [v38 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABAE9C;
    block[3] = &unk_1E7441010;
    v56 = v28;
    v49 = v23;
    v50 = self;
    v51 = v29;
    v52 = v27;
    v53 = v46;
    v54 = v47;
    v55 = v30;
    v40 = v30;
    v41 = v47;
    v42 = v29;
    dispatch_group_notify(v22, v39, block);

    v12 = v46;
    v24 = v44;
    v25 = v45;
  }

  dispatch_group_leave(v22);

  v43 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingInvitation:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v47 = a5;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v12 assertQueueIsCurrent];

  if (a5)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B390C4();
    }
  }

  v46 = v9;
  v14 = [v9 _internal];
  v15 = [v14 account];

  v16 = objc_alloc(MEMORY[0x1E696AFB0]);
  v17 = objc_opt_class();
  v18 = sub_195ABB4FC(v17, v10, *MEMORY[0x1E69A49E0]);
  v19 = [v16 initWithUUIDString:v18];

  v20 = objc_opt_class();
  v21 = sub_195ABB4FC(v20, v10, *MEMORY[0x1E69A49A8]);
  v22 = *MEMORY[0x1E69A49C0];
  v23 = [v10 objectForKey:*MEMORY[0x1E69A49C0]];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    v25 = objc_opt_class();
    v26 = sub_195ABB4FC(v25, v10, v22);
    [v26 doubleValue];
    v27 = [v24 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_class();
  v29 = sub_195ABB4FC(v28, v10, *MEMORY[0x1E69A49D8]);
  v30 = [v29 intValue];
  v31 = v30;

  if (v30 <= 5 && ((1 << v30) & 0x3A) != 0)
  {
    v32 = objc_opt_class();
    v33 = sub_195ABB4FC(v32, v21, *MEMORY[0x1E69A49B8]);
    [v33 intValue];

    v34 = [[IDSDictionaryInvitationContext alloc] initWithPayload:v21];
    v35 = [IDSReceivedInvitation alloc];
    v36 = [v47 prefixedURI];
    v37 = [(IDSReceivedInvitation *)v35 initWithfromID:v36 state:v31 expirationDate:v27 uniqueID:v19 context:v34];

    v38 = [v11 senderCorrelationIdentifier];
    [(IDSReceivedInvitation *)v37 setSenderMergeID:v38];

    v39 = [v11 toID];
    [(IDSReceivedInvitation *)v37 setSelfHandle:v39];

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
    v49 = v11;
    v50 = self;
    v51 = v15;
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
      v44 = [v19 UUIDString];
      *buf = 134218242;
      v54 = v31;
      v55 = 2112;
      v56 = v44;
      _os_log_impl(&dword_1959FF000, &v34->super, OS_LOG_TYPE_DEFAULT, "Invalid state {%ld} received in incomingInvitation. Dropping invitation %@", buf, 0x16u);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingInvitationUpdate:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v48 = a5;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v12 assertQueueIsCurrent];

  if (a5)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B391E0();
    }
  }

  v14 = [v9 _internal];
  v15 = [v14 account];

  v16 = objc_alloc(MEMORY[0x1E696AFB0]);
  v17 = objc_opt_class();
  v18 = sub_195ABB4FC(v17, v10, *MEMORY[0x1E69A49E0]);
  v19 = [v16 initWithUUIDString:v18];

  v20 = objc_opt_class();
  v21 = sub_195ABB4FC(v20, v10, *MEMORY[0x1E69A49A8]);
  v22 = *MEMORY[0x1E69A49C0];
  v23 = [v10 objectForKey:*MEMORY[0x1E69A49C0]];

  v47 = v9;
  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E695DF00]);
    v25 = objc_opt_class();
    v26 = sub_195ABB4FC(v25, v10, v22);
    [v26 doubleValue];
    v27 = [v24 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_class();
  v29 = sub_195ABB4FC(v28, v10, *MEMORY[0x1E69A49D8]);
  v30 = [v29 intValue];
  v31 = v30;

  if (v30 <= 5 && ((1 << v30) & 0x3A) != 0)
  {
    v32 = objc_opt_class();
    v33 = sub_195ABB4FC(v32, v21, *MEMORY[0x1E69A49B8]);
    [v33 intValue];

    v34 = MEMORY[0x1E69A5240];
    v35 = [v48 prefixedURI];
    v36 = [v34 destinationWithURI:v35];

    v37 = [[IDSDictionaryInvitationContext alloc] initWithPayload:v21];
    v38 = [[IDSSentInvitation alloc] initWithDestination:v36 state:v31 expirationDate:v27 uniqueID:v19 context:v37];
    v39 = [v11 senderCorrelationIdentifier];
    [(IDSSentInvitation *)v38 setSenderMergeID:v39];

    v40 = [v11 toID];
    [(IDSSentInvitation *)v38 setSelfHandle:v40];

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
    v50 = v11;
    v51 = self;
    v52 = v15;
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
      v45 = [v19 UUIDString];
      *buf = 134218242;
      v55 = v31;
      v56 = 2112;
      v57 = v45;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Invalid state {%ld} received in incomingInvitationUpdate. Dropping invitation %@", buf, 0x16u);
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingMessage:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v138 = *MEMORY[0x1E69E9840];
  v81 = a3;
  v78 = a4;
  v82 = a5;
  v9 = a6;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v10 assertQueueIsCurrent];

  if (a5)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B39280();
    }
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v126 = _os_activity_create(&dword_1959FF000, "Service recieved message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v126, &state);
  v12 = [v81 _internal];
  v80 = [v12 account];

  v13 = [v82 prefixedURI];
  v79 = [(_IDSService *)self deviceForFromID:v13];

  v14 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v81 _internal];
    v16 = [v81 _internal];
    v17 = [v16 account];
    v18 = [v17 _internal];
    v19 = [v79 _internal];
    v20 = [v9 outgoingResponseIdentifier];
    *buf = 138413314;
    v129 = v15;
    v130 = 2112;
    v131 = v18;
    v132 = 2112;
    v133 = v82;
    v134 = 2112;
    v135 = v19;
    v136 = 2112;
    v137 = v20;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "incomingMessage on connection %@ account %@ from ID %@  from device: %@  sender-side-identifier: %@", buf, 0x34u);
  }

  v21 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v9 outgoingResponseIdentifier];
    v23 = [v9 usedEngram];
    v24 = [(NSMapTable *)self->_delegateToInfo count];
    v25 = @"NO";
    *buf = 138412802;
    v129 = v22;
    if (v23)
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
  [v9 setWantsManualAck:self->_manuallyAckMessages];
  v27 = [v82 prefixedURI];
  [v9 setFromID:v27];

  v28 = [v9 resourceTransferURLString];
  v29 = v28;
  if (!v28)
  {
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 3221225472;
    v100[2] = sub_195ABCFFC;
    v100[3] = &unk_1E7441EB0;
    v33 = v9;
    v101 = v33;
    v102 = self;
    v34 = v80;
    v103 = v34;
    v35 = v78;
    v104 = v35;
    v36 = v82;
    v105 = v36;
    [(_IDSService *)self _callDelegatesWithBlock:v100 group:v26];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = sub_195ABD200;
    v94[3] = &unk_1E7441EB0;
    v95 = v33;
    v96 = self;
    v97 = v34;
    v98 = v35;
    v99 = v36;
    [(_IDSService *)self _callDelegatesWithBlock:v94 group:v26];

    v37 = 0;
    v32 = v101;
    goto LABEL_34;
  }

  v30 = v28;
  v31 = [v29 fileSystemRepresentation];
  if (v31)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v31];
  }

  else
  {
    v32 = 0;
  }

  v38 = [v9 resourceTransferMetadata];
  v39 = [v9 resourceTransferSandboxExtension];
  if (([v32 containsString:@"/Library/IdentityServices/files/"] & 1) != 0 || objc_msgSend(v32, "containsString:", @"/Library/IdentityServices/incomingfiles/"))
  {
    v40 = [v32 containsString:@".."];
    v41 = v32 ? v40 : 1;
    if ((v41 & 1) == 0)
    {
      if (v39)
      {
        v43 = v39;
        [v39 UTF8String];
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

      v75 = v38;
      v76 = v29;
      v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:v32];
      v48 = [IDSAutoCleanup alloc];
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = sub_195ABC9D4;
      v121[3] = &unk_1E7441F78;
      v49 = v47;
      v122 = v49;
      v123 = v39;
      v124 = v44;
      v50 = [(IDSAutoCleanup *)v48 initWithBlock:v121];
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = sub_195ABCBD8;
      v114[3] = &unk_1E7441E88;
      v51 = v9;
      v115 = v51;
      v116 = self;
      v52 = v80;
      v117 = v52;
      v53 = v49;
      v118 = v53;
      v54 = v82;
      v119 = v54;
      v55 = v50;
      v120 = v55;
      [(_IDSService *)self _callDelegatesWithBlock:v114 group:v26];
      v106[0] = MEMORY[0x1E69E9820];
      v106[1] = 3221225472;
      v106[2] = sub_195ABCDE8;
      v106[3] = &unk_1E7441FA0;
      v107 = v51;
      v108 = self;
      v109 = v52;
      v42 = v53;
      v110 = v42;
      v111 = v75;
      v112 = v54;
      v56 = v55;
      v113 = v56;
      [(_IDSService *)self _callDelegatesWithBlock:v106 group:v26];

      v38 = v75;
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
    v57 = [v9 wantsAppAck];
    v58 = [v9 isDirectMessage];
    v59 = [v9 outgoingResponseIdentifier];
    v77 = v29;
    v60 = [v9 storageGuid];
    v61 = [v9 broadcastTime];

    if (v61)
    {
      v62 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v64 = v63;
      v65 = [v9 broadcastTime];
      [v65 doubleValue];
      v61 = [v62 numberWithDouble:v64 - v66];
    }

    v67 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = @"NO";
      *buf = 138413058;
      v129 = v9;
      if (v57)
      {
        v68 = @"YES";
      }

      v130 = 2112;
      v131 = v68;
      v132 = 2112;
      v133 = v59;
      v134 = 2112;
      v135 = v60;
      _os_log_impl(&dword_1959FF000, v67, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v69 = +[IDSInternalQueueController sharedInstance];
    v70 = [v69 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABD408;
    block[3] = &unk_1E7440FE8;
    v92 = v57;
    v93 = v58;
    v85 = v81;
    v86 = v59;
    v87 = v9;
    v88 = self;
    v89 = v82;
    v90 = v60;
    v91 = v61;
    v71 = v61;
    v72 = v60;
    v73 = v59;
    dispatch_group_notify(v26, v70, block);

    v29 = v77;
  }

  dispatch_group_leave(v26);

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v74 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingProtobuf:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v97 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v60 = a4;
  v59 = a5;
  v10 = a6;
  v11 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a5) = [v11 assertQueueIsCurrent];

  if (a5)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B393E4();
    }
  }

  v13 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 outgoingResponseIdentifier];
    *buf = 138412546;
    *v92 = v60;
    *&v92[8] = 2112;
    *v93 = v14;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Incoming protobuf %@, routing to selector/delegate. sender-side-identifier %@", buf, 0x16u);
  }

  v15 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 outgoingResponseIdentifier];
    if ([v10 usedEngram])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    *v92 = v16;
    *&v92[8] = 2112;
    *v93 = v17;
    *&v93[8] = 2048;
    v94 = v18;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Incoming protobuf on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  context = objc_autoreleasePoolPush();
  v58 = [MEMORY[0x1E69A5388] keyRepresentationForType:objc_msgSend(v60 isResponse:{"type"), objc_msgSend(v60, "isResponse")}];
  v56 = [(NSMutableDictionary *)self->_protobufSelectors objectForKey:v58];
  v19 = [v57 _internal];
  v55 = [v19 account];

  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x2020000000;
  v90 = 0;
  v20 = dispatch_group_create();
  dispatch_group_enter(v20);
  [v10 setWantsManualAck:self->_manuallyAckMessages];
  v21 = [v59 prefixedURI];
  [v10 setFromID:v21];

  if (v56)
  {
    v22 = [v56 pointerValue];
    v23 = NSStringFromSelector(v22);
    v24 = v23;
    if (![(NSString *)v23 hasSuffix:@"service:account:fromID:context:"])
    {
      v24 = [(NSString *)v23 stringByAppendingString:@"service:account:fromID:context:"];
    }

    v25 = NSSelectorFromString(v24);
    v26 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v58 unsignedIntValue];
      *buf = 138412802;
      *v92 = v23;
      *&v92[8] = 2112;
      *v93 = v24;
      *&v93[8] = 1024;
      LODWORD(v94) = v27;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Found selector %@ fullSelector %@ for key 0x%x", buf, 0x1Cu);
    }

    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = sub_195ABDF48;
    v80[3] = &unk_1E7441FC8;
    v87 = v25;
    v81 = v60;
    v82 = v59;
    v83 = v55;
    v84 = self;
    v85 = v10;
    v86 = v89;
    v88 = v22;
    [(_IDSService *)self _callDelegatesWithBlock:v80 group:v20];
  }

  else
  {
    v28 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [v58 unsignedIntValue];
      v30 = [v60 type];
      v31 = [v60 isResponse];
      v32 = @"NO";
      *buf = 67109634;
      *v92 = v29;
      if (v31)
      {
        v32 = @"YES";
      }

      *&v92[4] = 1024;
      *&v92[6] = v30;
      *v93 = 2112;
      *&v93[2] = v32;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "No selector for key 0x%x = type(%u) isResponse(%@), notifying delegates", buf, 0x18u);
    }

    v33 = [v10 messageSequenceNumber];
    [v33 unsignedIntegerValue];
    kdebug_trace();

    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = sub_195ABE284;
    v73[3] = &unk_1E7441FF0;
    v74 = v60;
    v75 = self;
    v76 = v55;
    v77 = v59;
    v78 = v10;
    v79 = v89;
    [(_IDSService *)self _callDelegatesWithBlock:v73 group:v20];

    v23 = v74;
  }

  if (!self->_manuallyAckMessages)
  {
    v34 = [v10 wantsAppAck];
    v35 = [v10 isDirectMessage];
    v36 = [v10 outgoingResponseIdentifier];
    v53 = v35;
    v37 = [v10 storageGuid];
    v38 = [v10 broadcastTime];

    if (v38)
    {
      v39 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v41 = v40;
      v42 = [v10 broadcastTime];
      [v42 doubleValue];
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
      *v92 = v10;
      if (v34)
      {
        v46 = @"YES";
      }

      *&v92[8] = 2112;
      *v93 = v46;
      *&v93[8] = 2112;
      v94 = v36;
      v95 = 2112;
      v96 = v37;
      _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_INFO, "Context %@ WantsAppAck %@ AppAckGuid %@ storageGuid %@", buf, 0x2Au);
    }

    v47 = +[IDSInternalQueueController sharedInstance];
    v48 = [v47 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195ABE44C;
    block[3] = &unk_1E7442018;
    v70 = v89;
    v62 = v36;
    v71 = v34;
    v72 = v53;
    v63 = v57;
    v64 = v10;
    v65 = self;
    v66 = v59;
    v67 = v37;
    v68 = v44;
    v69 = v60;
    v49 = v44;
    v50 = v37;
    v51 = v36;
    dispatch_group_notify(v20, v48, block);
  }

  dispatch_group_leave(v20);

  _Block_object_dispose(v89, 8);
  objc_autoreleasePoolPop(context);

  v52 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingTopLevelMessage:(id)a4 fromURI:(id)a5 messageContext:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B39500();
    }
  }

  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = [v13 outgoingResponseIdentifier];
  v19 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v17;
    if ([v13 usedEngram])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138412802;
    v63 = v18;
    v64 = 2112;
    v65 = v21;
    v17 = v20;
    v66 = 2048;
    v67 = v22;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "incomingTopLevelMessage on connection guid %@ using engram %@ delegateCount %ld", buf, 0x20u);
  }

  v23 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
  if ([v23 isEqualToString:@"com.apple.madrid"])
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
      v63 = v18;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "No delegates for incoming madrid message. Sending 115 for guid %@", buf, 0xCu);
    }

    v26 = objc_alloc(MEMORY[0x1E69A5338]);
    v27 = [(IDSServiceProperties *)self->_serviceProperties serviceName];
    v23 = [v26 initWithReason:709 guid:v18 service:v27 additionalInformation:0];

    [(_IDSService *)self _sendMissingMessageMetric:v23];
  }

LABEL_16:
  v28 = v13;
  [v28 setWantsManualAck:self->_manuallyAckMessages];
  v29 = [v12 prefixedURI];
  [v28 setFromID:v29];

  v30 = [v10 _internal];
  v31 = [v30 account];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = sub_195ABEB74;
  v55[3] = &unk_1E7441E88;
  v32 = v28;
  v56 = v32;
  v57 = self;
  v33 = v31;
  v58 = v33;
  v34 = v11;
  v59 = v34;
  v35 = v12;
  v60 = v35;
  v36 = v18;
  v61 = v36;
  [(_IDSService *)self _callDelegatesWithBlock:v55 group:v17];
  if (!self->_manuallyAckMessages)
  {
    [v32 storageGuid];
    v38 = v37 = v10;
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
    v52 = self;
    v53 = v37;
    v54 = v32;
    v43 = v39;
    v44 = v38;
    v10 = v37;
    v45 = v44;
    dispatch_group_notify(v41, v42, block);

    v17 = v41;
    v35 = v47;

    v34 = v48;
  }

  dispatch_group_leave(v17);

  v46 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 incomingBatchMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B395A0();
    }
  }

  v11 = [v6 _internal];
  v12 = [v11 account];

  v13 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
  v14 = [v7 service];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    v16 = [v7 messages];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195ABF070;
    v20[3] = &unk_1E7442040;
    v20[4] = self;
    [v16 enumerateObjectsUsingBlock:v20];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195ABF0C8;
    v17[3] = &unk_1E7442068;
    v17[4] = self;
    v18 = v12;
    v19 = v7;
    [(_IDSService *)self _callDelegatesWithBlock:v17];
  }
}

- (void)connection:(id)a3 incomingPendingMessageFromURI:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B39640();
    }
  }

  v14 = [v8 _internal];
  v15 = [v14 account];

  v16 = [v10 originalCommand];
  v17 = [(_IDSService *)self _messageTypeForCommand:v16];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195ABF998;
  v21[3] = &unk_1E7442090;
  v22 = v10;
  v23 = self;
  v25 = v9;
  v26 = v17;
  v24 = v15;
  v18 = v9;
  v19 = v15;
  v20 = v10;
  [(_IDSService *)self _callDelegatesWithBlock:v21];
}

- (void)connection:(id)a3 incomingPendingResourceWithMetadata:(id)a4 guid:(id)a5 fromURI:(id)a6 context:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a3 _internal];
  v17 = [v16 account];

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_195ABFD54;
  v32[3] = &unk_1E74420B8;
  v32[4] = self;
  v33 = v13;
  v18 = v13;
  v19 = MEMORY[0x19A8BBEF0](v32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195ABFDB8;
  v25[3] = &unk_1E74420E0;
  v26 = v15;
  v27 = self;
  v28 = v17;
  v29 = v12;
  v30 = v14;
  v31 = v19;
  v20 = v19;
  v21 = v14;
  v22 = v12;
  v23 = v17;
  v24 = v15;
  [(_IDSService *)self _callDelegatesWithBlock:v25];
}

- (int64_t)_messageTypeForCommand:(id)a3
{
  v3 = [a3 integerValue];
  if (v3 > 231)
  {
    if (v3 > 242)
    {
      if (v3 > 249)
      {
        if (v3 == 250)
        {
          return 13;
        }

        if (v3 == 251)
        {
          return 14;
        }
      }

      else
      {
        if (v3 == 243)
        {
          return 3;
        }

        if (v3 == 245)
        {
          return 4;
        }
      }
    }

    else if (v3 > 238)
    {
      if (v3 == 239)
      {
        return 11;
      }

      if (v3 == 242)
      {
        return 2;
      }
    }

    else
    {
      if (v3 == 232)
      {
        return 6;
      }

      if (v3 == 235)
      {
        return 7;
      }
    }

    return 15;
  }

  if (v3 > 208)
  {
    if ((v3 - 210) < 2)
    {
      return 12;
    }

    if (v3 == 209)
    {
      return 10;
    }

    if (v3 == 227)
    {
      return 1;
    }

    return 15;
  }

  if (v3 <= 205)
  {
    if (v3 == 100)
    {
      return 0;
    }

    if (v3 == 121)
    {
      return 5;
    }

    return 15;
  }

  if (v3 == 206)
  {
    return 12;
  }

  if (v3 == 207)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (id)_payloadFromDecryptedData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 _FTOptionallyDecompressData];
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

- (void)connection:(id)a3 incomingEngramMessage:(id)a4 fromURI:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B396E0();
    }
  }

  v17 = objc_alloc(MEMORY[0x1E699BB88]);
  v18 = [v13 engramGroupID];
  v19 = [v17 initWithDataRepresentation:v18];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_195AC040C;
  v33[3] = &unk_1E7442108;
  v20 = v11;
  v34 = v20;
  v35 = v13;
  v36 = self;
  v37 = v10;
  v38 = v12;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v24 = MEMORY[0x19A8BBEF0](v33);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_195AC07AC;
  v28[3] = &unk_1E7442180;
  v29 = v19;
  v30 = v20;
  v31 = self;
  v32 = v24;
  v25 = v24;
  v26 = v20;
  v27 = v19;
  [(_IDSService *)self performGroupTask:v28];
}

- (void)connection:(id)a3 isActiveChanged:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B39780();
    }
  }

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v6 _internal];
    v12 = v11;
    v13 = @"NO";
    if (v4)
    {
      v13 = @"YES";
    }

    v15 = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_INFO, "isActiveChanged on connection %@ isActive %@", &v15, 0x16u);
  }

  [(_IDSService *)self _callIsActiveChanged];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 devicesChanged:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B39820();
    }
  }

  v11 = [v6 _internal];
  v12 = [v11 account];
  v13 = [v12 _internal];

  v14 = [(_IDSService *)self devices];
  v15 = [MEMORY[0x1E69A6138] IDSService_oversized];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 __imArrayByApplyingBlock:&unk_1F09E6B40];
    v17 = [v14 count];
    v18 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138413314;
    v29 = v6;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v16;
    v34 = 2050;
    v35 = v17;
    v36 = 2048;
    v37 = v18;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "devicesChanged on connection %@ account %@ all devices %@ num devices %{public}lu num delegates: %lu", buf, 0x34u);
  }

  if (v13 && ([MEMORY[0x1E695DFD8] setWithObject:v13], v19 = objc_claimAutoreleasedReturnValue(), v20 = sub_195A0CBF4(v19), v19, v20))
  {
    v21 = [MEMORY[0x1E69A6138] IDSService];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "*** dropping devicesChanged callback!", buf, 2u);
    }
  }

  else
  {
    v21 = [MEMORY[0x1E6995700] weakRefWithObject:self];
    if ([v7 count])
    {
      [(_IDSService *)self _callDelegatesForDevicesChanged];
    }

    else
    {
      v22 = dispatch_time(0, 60000000000);
      v23 = +[IDSInternalQueueController sharedInstance];
      v24 = [v23 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AC15A0;
      block[3] = &unk_1E743E878;
      v21 = v21;
      v27 = v21;
      dispatch_after(v22, v24, block);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B39960();
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AC16D8;
  v10[3] = &unk_1E7441E18;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [(_IDSService *)self _callDelegatesWithBlock:v10];
}

- (void)connection:(id)a3 connectedDevicesChanged:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B39A00();
    }
  }

  v11 = [MEMORY[0x1E69A6138] IDSService_oversized];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v6 _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    *buf = 138413058;
    v20 = v6;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v7;
    v25 = 2050;
    v26 = [v7 count];
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "connectedDevicesChanged on connection %@ account %@ devices %@ num devices %{public}lu", buf, 0x2Au);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AC1948;
  v17[3] = &unk_1E7441E18;
  v17[4] = self;
  v18 = v7;
  v15 = v7;
  [(_IDSService *)self _callDelegatesWithBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 messageIdentifier:(id)a4 alternateCallbackID:(id)a5 updatedWithResponseCode:(int64_t)a6 error:(id)a7 lastCall:(BOOL)a8 messageContext:(id)a9
{
  LODWORD(v9) = a8;
  v78 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a9;
  v18 = +[IDSInternalQueueController sharedInstance];
  v19 = [v18 assertQueueIsCurrent];

  if (v19)
  {
    v20 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_195B39AA0();
    }
  }

  v21 = [v17 bytesSent];

  v22 = +[IDSLogging _IDSService];
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v23)
    {
      v24 = v9 == 0;
      v45 = v9;
      v9 = v13;
      if (v24)
      {
        v25 = @"NO";
      }

      else
      {
        v25 = @"YES";
      }

      v26 = [v17 bytesSent];
      v27 = [v17 totalBytes];
      *buf = 138414082;
      v63 = self;
      v64 = 2112;
      v65 = v14;
      v66 = 2112;
      v67 = v15;
      v68 = 2048;
      v69 = a6;
      v70 = 2112;
      v71 = v16;
      v72 = 2112;
      v73 = v25;
      v13 = v9;
      LOBYTE(v9) = v45;
      v74 = 2112;
      v75 = v26;
      v76 = 2112;
      v77 = v27;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got messageIdentifier %@ callbackID %@ updatedWithResponseCode: %ld error %@ lastCall %@ sentBytes %@ totalBytes %@", buf, 0x52u);
    }
  }

  else if (v23)
  {
    v28 = @"NO";
    *buf = 138413570;
    v63 = self;
    v64 = 2112;
    if (v9)
    {
      v28 = @"YES";
    }

    v65 = v14;
    v66 = 2112;
    v67 = v15;
    v68 = 2048;
    v69 = a6;
    v70 = 2112;
    v71 = v16;
    v72 = 2112;
    v73 = v28;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ got messageIdentifier %@ callbackID %@ updatedWithResponseCode: %ld error %@ lastCall %@", buf, 0x3Eu);
  }

  v29 = [v17 originalCommand];
  v30 = [v29 isEqualToNumber:&unk_1F0A299D8];

  if ((v30 & 1) == 0)
  {
    v31 = [v13 _internal];
    v32 = [v31 account];

    if (!a6 && (v9 & 1) == 0)
    {
      v33 = [v17 bytesSent];
      if (v33)
      {
        v34 = v33;
        v35 = [v17 totalBytes];

        if (v35)
        {
          v36 = [v17 bytesSent];
          v37 = [v36 integerValue];

          v38 = [v17 totalBytes];
          v46 = [v38 integerValue];

          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = sub_195AC1EB0;
          v57[3] = &unk_1E74421A8;
          v57[4] = self;
          v58 = v32;
          v39 = v14;
          v59 = v39;
          v60 = v37;
          v61 = v46;
          [(_IDSService *)self _callDelegatesWithBlock:v57];
          uniqueIDToProgress = self->_uniqueIDToProgress;
          if (uniqueIDToProgress)
          {
            v41 = [(NSMutableDictionary *)uniqueIDToProgress objectForKeyedSubscript:v39];
            v42 = v41;
            if (v41)
            {
              [v41 setTotalUnitCount:v46];
              [v42 setCompletedUnitCount:v37];
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
    v50 = v32;
    v51 = v14;
    v52 = v15;
    v55 = a6;
    v53 = v16;
    v56 = v9;
    v54 = v17;
    v43 = v32;
    [(_IDSService *)self _callDelegatesWithBlock:v49];
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 identifier:(id)a4 alternateCallbackID:(id)a5 willSendToDestinations:(id)a6 skippedDestinations:(id)a7 registrationPropertyToDestinations:(id)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a3;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a7) = [v20 assertQueueIsCurrent];

  if (a7)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B39B40();
    }
  }

  v22 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [(_IDSService *)self serviceProperties];
    v40 = [v42 identifier];
    IDSLoggableDescriptionForHandlesOnService();
    v23 = v41 = v19;
    [(_IDSService *)self serviceProperties];
    v24 = v44 = v16;
    [v24 identifier];
    v25 = v18;
    v26 = v15;
    v28 = v27 = v14;
    v29 = IDSLoggableDescriptionForHandlesOnService();
    v43 = v17;
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    *buf = 138413570;
    v53 = self;
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

    v17 = v43;
    v14 = v27;
    v15 = v26;
    v18 = v25;

    v16 = v44;
    v19 = v41;
  }

  v31 = [v19 _internal];

  v32 = [v31 account];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_195AC237C;
  v45[3] = &unk_1E7441FA0;
  v45[4] = self;
  v46 = v32;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = v18;
  v33 = v18;
  v34 = v17;
  v35 = v16;
  v36 = v15;
  v37 = v14;
  v38 = v32;
  [(_IDSService *)self _callDelegatesWithBlock:v45];

  v39 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 identifier:(id)a4 didSendWithSuccess:(BOOL)a5 error:(id)a6 context:(id)a7
{
  v9 = a5;
  v54 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = +[IDSInternalQueueController sharedInstance];
  v17 = [v16 assertQueueIsCurrent];

  if (v17)
  {
    v18 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_195B39BE0();
    }
  }

  v19 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(NSMapTable *)self->_delegateToInfo count];
    *buf = 138413314;
    v45 = self;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v20;
    v50 = 2112;
    v51 = v13;
    v52 = 2048;
    v53 = v21;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ didSendWithSuccess %@  error %@ num delegates: %lu", buf, 0x34u);
  }

  v22 = [v15 _internal];

  v23 = [v22 account];

  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = sub_195AC26F0;
  v37 = &unk_1E74421F8;
  v38 = self;
  v24 = v23;
  v39 = v24;
  v25 = v12;
  v40 = v25;
  v43 = v9;
  v26 = v13;
  v41 = v26;
  v27 = v14;
  v42 = v27;
  [(_IDSService *)self _callDelegatesWithBlock:&v34];
  if (v25)
  {
    v28 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v25, v34, v35, v36, v37, v38, v39, v40, v41];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 first];
      (v30)[2](v30, v26);
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

- (void)connection:(id)a3 identifier:(id)a4 fromURI:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B39C80();
    }
  }

  v17 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v31 = self;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "%@ got identifier %@ hasBeenDeliveredWithContext %@", buf, 0x20u);
  }

  v18 = [v13 _internal];

  v19 = [v18 account];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AC29E8;
  v25[3] = &unk_1E7441EB0;
  v25[4] = self;
  v26 = v19;
  v27 = v10;
  v28 = v12;
  v29 = v11;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v19;
  [(_IDSService *)self _callDelegatesWithBlock:v25];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didFlushCacheForRemoteURI:(id)a4 fromURI:(id)a5 guid:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B39D20();
    }
  }

  v15 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v25 = self;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "%@ didFlushCacheForRemoteURI %@ fromURI %@ guid %@", buf, 0x2Au);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AC2CB8;
  v20[3] = &unk_1E7441F50;
  v20[4] = self;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  [(_IDSService *)self _callDelegatesWithBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 didFlushCacheForKTPeerURI:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B39DC0();
    }
  }

  v9 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ didFlushCacheForKTPeerURI %@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AC2EBC;
  v12[3] = &unk_1E7441E18;
  v12[4] = self;
  v13 = v5;
  v10 = v5;
  [(_IDSService *)self _callDelegatesWithBlock:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 account:(id)a4 sessionInviteReceived:(id)a5 fromID:(id)a6 transportType:(id)a7 options:(id)a8 context:(id)a9 messageContext:(id)a10
{
  v43 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a7;
  v21 = a5;
  v22 = +[IDSInternalQueueController sharedInstance];
  v23 = [v22 assertQueueIsCurrent];

  if (v23)
  {
    v24 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_195B39E60();
    }
  }

  v25 = +[_IDSSessionStore sharedInstance];
  v26 = [v25 sessionForAccount:v15 fromID:v16 identifier:v21 transportType:v20];

  v27 = [v26 _internal];
  [v27 setBoostContext:v19];

  v28 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v17;
    _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "Sending up options to client: %@", buf, 0xCu);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_195AC31C4;
  v35[3] = &unk_1E7441E88;
  v35[4] = self;
  v36 = v15;
  v37 = v26;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v29 = v18;
  v30 = v17;
  v31 = v16;
  v32 = v26;
  v33 = v15;
  [(_IDSService *)self _callDelegatesWithBlock:v35];

  v34 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 account:(id)a4 inviteDroppedForSessionID:(id)a5 fromID:(id)a6 context:(id)a7 error:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = +[IDSInternalQueueController sharedInstance];
  v19 = [v18 assertQueueIsCurrent];

  if (v19)
  {
    v20 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_195B39F00();
    }
  }

  v21 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Received invitation but dropped for sessionID %@ fromID %@ with %@", buf, 0x20u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_195AC34EC;
  v28[3] = &unk_1E7441E88;
  v28[4] = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v13;
  [(_IDSService *)self _callDelegatesWithBlock:v28];

  v27 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 account:(id)a4 receivedGroupSessionParticipantUpdate:(id)a5 context:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B39FA0();
    }
  }

  v15 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = self;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Received group session participant update {service: %@, update: %@, context: %@}", buf, 0x20u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195AC3748;
  v20[3] = &unk_1E7441F50;
  v20[4] = self;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  [(_IDSService *)self _callDelegatesWithBlock:v20];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)connection:(id)a3 account:(id)a4 receivedGroupSessionParticipantDataUpdate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 assertQueueIsCurrent];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A040();
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AC3924;
  v14[3] = &unk_1E7442068;
  v14[4] = self;
  v15 = v7;
  v16 = v8;
  v12 = v8;
  v13 = v7;
  [(_IDSService *)self _callDelegatesWithBlock:v14];
}

- (void)connection:(id)a3 didSendOpportunisticDataWithIdentifier:(id)a4 toIDs:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 assertQueueIsCurrent];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A0E0();
    }
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Recieved did send opportunistic data {service: %@, identifier: %@, toIDs: %@}", buf, 0x20u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AC3B58;
  v16[3] = &unk_1E7442068;
  v16[4] = self;
  v17 = v7;
  v18 = v8;
  v13 = v8;
  v14 = v7;
  [(_IDSService *)self _callDelegatesWithBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isPretendingToBeFull
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A180();
    }
  }

  return self->_pretendingToBeFull;
}

- (void)setPretendingToBeFull:(BOOL)a3
{
  v3 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A220();
    }
  }

  if (self->_pretendingToBeFull != v3)
  {
    self->_pretendingToBeFull = v3;
    if (!v3)
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
  v3 = [v2 assertQueueIsCurrent];

  if (v3)
  {
    v4 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A2C0();
    }
  }

  return 0;
}

- (unint64_t)registrationRestrictionReason
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A360();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  v7 = [v6 listener];
  v8 = [(_IDSService *)self serviceProperties];
  v9 = [v8 identifier];
  v10 = [v7 restrictionReasonForService:v9];

  return v10;
}

- (id)_filteredAccountsFrom:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[IDSInternalQueueController sharedInstance];
  v5 = [v4 assertQueueIsCurrent];

  if (v5)
  {
    v6 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A4A0();
    }
  }

  v7 = [MEMORY[0x1E695DFA8] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v3;
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
        v16 = [v15 _internal];
        v17 = [v16 isTransientAllowlistedAccount];

        if (v17 || ([v15 _internal], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "canSend"), v18, v19))
        {
          [v7 addObject:v15];
        }

        else
        {
          v20 = [*(v13 + 1160) _IDSService];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [v15 _internal];
            v33 = v21;
            v34 = [v15 _internal];
            v22 = [v34 aliases];
            v23 = [v15 _internal];
            v24 = v7;
            if ([v23 isActive])
            {
              v25 = @"YES";
            }

            else
            {
              v25 = @"NO";
            }

            v26 = [v15 _internal];
            v27 = [v26 canSend];
            *buf = v31;
            v28 = @"NO";
            if (v27)
            {
              v28 = @"YES";
            }

            v40 = v21;
            v41 = 2112;
            v42 = v22;
            v43 = 2112;
            v44 = v25;
            v7 = v24;
            v45 = 2112;
            v46 = v28;
            _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_INFO, "Filtering account %@ with aliases %@  isActive? %@  canSend? %@", buf, 0x2Au);

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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A5E0();
    }
  }

  v6 = [(IDSAccountController *)self->_accountController _internal];
  v7 = [v6 internalAccounts];

  v8 = [(_IDSService *)self _filteredAccountsFrom:v7];

  return v8;
}

- (BOOL)canSend
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A7C0();
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(IDSAccountController *)self->_accountController _internal];
  v7 = [v6 accounts];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) _internal];
        v12 = [v11 canSend];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_15;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_updateLinkedDevicesWithDevicesInfo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
  obj = v4;
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
        v15 = [self->_delegateContext object];
        [v14 _setService:v15];

        v16 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v14 _internal];
          v18 = [v17 compactDescription];
          *buf = 138412290;
          v29 = v18;
          _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Adding linked IDSDevice %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_linkedDevices addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v19 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(NSMutableArray *)self->_linkedDevices __imArrayByApplyingBlock:&unk_1F09E6B60];
    v21 = [v20 count];
    *buf = 67109120;
    LODWORD(v29) = v21;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Linked devices updated with count %d", buf, 8u);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)linkedDevicesWithRelationship:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3A9A0();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3)
  {
    v9 = [(_IDSService *)self devices];
    [v8 addObjectsFromArray:v9];
  }

  v10 = [(_IDSService *)self accounts];
  v11 = [v10 count];

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
          v18 = [v17 relationship];
          if (a3 != 1 && (v18 & a3) != 0 && [v17 relationship] != 1)
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
        v7 = [v6 handles];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * i);
              v13 = [v12 URI];
              v14 = [v13 unprefixedURI];
              v15 = [v14 isEqualToIgnoringCase:v4];

              if ((v15 & 1) == 0)
              {
                v16 = [v12 URI];
                [v3 addObject:v16];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

  v17 = [v3 allObjects];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (int64_t)maxEffectivePayloadSize
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = +[IDSDaemonController sharedInstance];
  v5 = [v4 listener];
  v6 = [(IDSServiceProperties *)self->_serviceProperties identifier];
  v7 = [v5 maxEffectivePayloadSizeForService:v6];

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
  v4 = [(_IDSService *)self accounts];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) pseudonymURIMap];
        [v3 addEntriesFromDictionary:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)pseudonymForPseudonymURI:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [(_IDSService *)self accounts];
    v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v9 = [v8 pseudonyms];
          v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v22 + 1) + 8 * j);
                v15 = [v14 URI];
                v16 = [v15 isEqualToURI:v4];

                if (v16)
                {
                  v17 = v14;

                  goto LABEL_21;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
        v21 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
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

- (id)pseudonymsForMaskedURI:(id)a3
{
  v4 = a3;
  v5 = [(_IDSService *)self pseudonymURIMap];
  v6 = [v5 objectForKey:v4];

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

- (id)pseudonymsForMaskedURI:(id)a3 matchingProperties:(id)a4
{
  v6 = a4;
  v7 = [(_IDSService *)self pseudonymsForMaskedURI:a3];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AC5230;
  v14[3] = &unk_1E7442220;
  v15 = v6;
  v8 = v6;
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

- (id)_accountWithURI:(id)a3 orPseudonym:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 | v7)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [(_IDSService *)self accounts];
    v31 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
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
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v32 = v11;
          if (v6)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v12 = [v11 handles];
            v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
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
                    objc_enumerationMutation(v12);
                  }

                  v17 = [*(*(&v37 + 1) + 8 * j) URI];
                  v18 = [v17 isEqualToURI:v6];

                  if (v18)
                  {
LABEL_33:
                    v26 = v32;

                    goto LABEL_34;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v11 = v32;
          }

          if (v7)
          {
            v29 = v8;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v12 = [v11 pseudonyms];
            v19 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
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
                    objc_enumerationMutation(v12);
                  }

                  v23 = [*(*(&v33 + 1) + 8 * k) URI];
                  v24 = [v7 URI];
                  v25 = [v23 isEqualToURI:v24];

                  if (v25)
                  {
                    v8 = v29;
                    goto LABEL_33;
                  }
                }

                v20 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v8 = v29;
          }

          v9 = v30;
        }

        v26 = 0;
        v31 = [v8 countByEnumeratingWithState:&v41 objects:v47 count:16];
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

- (void)setWantsPseudonymUpdates:(BOOL)a3
{
  if (self->_wantsPseudonymUpdates != a3)
  {
    self->_wantsPseudonymUpdates = a3;
    if (a3)
    {
      v5 = [(_IDSService *)self pseudonymURIMap];
      cachedPseudonymURIMap = self->_cachedPseudonymURIMap;
      self->_cachedPseudonymURIMap = v5;

      v7 = objc_alloc(MEMORY[0x1E69956C8]);
      v13 = +[IDSInternalQueueController sharedInstance];
      v8 = [v13 queue];
      v9 = [v7 initWithCapacity:1 queue:v8 block:&unk_1F09E6B80];
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

- (void)account:(id)a3 pseudonymsChanged:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(_IDSService *)self wantsPseudonymUpdates])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(_IDSService *)self accounts];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) _internal];
          v12 = [v11 uniqueID];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {

            [(CUTDeferredTaskQueue *)self->_pseudonymUpdateTaskQueue enqueueExecutionWithTarget:self afterDelay:1.0];
            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v4 = [(_IDSService *)self pseudonymURIMap];
    v5 = IDSServiceCalculatedPseudonymChanges_0(v3, v4);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195AC6444;
    v9[3] = &unk_1E7441E18;
    v9[4] = self;
    v10 = v5;
    v6 = v5;
    [(_IDSService *)self _callDelegatesWithBlock:v9];
    cachedPseudonymURIMap = self->_cachedPseudonymURIMap;
    self->_cachedPseudonymURIMap = v4;
    v8 = v4;
  }
}

- (void)provisionPseudonymWithProperties:(id)a3 requestProperties:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    sub_195B3AA40();
  }

  v11 = [(_IDSService *)self _sendingAccountForAccount:0];
  v12 = [(_IDSService *)self _preferredURIForAccount:v11];
  if (v12)
  {
    v13 = v12;
LABEL_6:
    [(_IDSService *)self provisionPseudonymForURI:v13 withProperties:v8 requestProperties:v9 completion:v10];
    goto LABEL_7;
  }

  v14 = [(_IDSService *)self URIs];
  v13 = [v14 firstObject];

  if (v13)
  {
    goto LABEL_6;
  }

  v16 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(_IDSService *)self accounts];
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "No URI found on any account -- returning nil {accounts: %@}", &v18, 0xCu);
  }

  v13 = sub_195AC667C(400);
  v10[2](v10, 0, v13);
LABEL_7:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 requestProperties:(id)a5 completion:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    sub_195B3AAB4();
  }

  v14 = [(_IDSService *)self _accountWithURI:v10 orPseudonym:0];
  if (v14)
  {
    v32 = v12;
    v33 = v11;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_195AC6D6C;
    v34[3] = &unk_1E743E850;
    v15 = v13;
    v35 = v15;
    v16 = MEMORY[0x19A8BBEF0](v34);
    v17 = [MEMORY[0x1E696AEC0] stringGUID];
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
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v24 forKey:v17];

    v25 = [MEMORY[0x1E69A6138] registration];
    v11 = v33;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v37 = v10;
      v38 = 2112;
      v39 = v33;
      v40 = 2112;
      v41 = v17;
      v42 = 2112;
      v43 = self;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "provisionPseudonymForURI called {URI: %@, properties: %@, requestUUID: %@, self: %@}", buf, 0x2Au);
    }

    v26 = [(_IDSService *)self daemonController];
    v27 = [v14 uniqueID];
    v12 = v32;
    [v26 provisionPseudonymForURI:v10 onAccount:v27 withProperties:v33 requestProperties:v32 requestUUID:v17];

    v28 = v35;
  }

  else
  {
    v29 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(_IDSService *)self accounts];
      *buf = 138412546;
      v37 = v10;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "No account matched URI -- returning nil {URI: %@, accounts: %@}", buf, 0x16u);
    }

    v28 = sub_195AC667C(400);
    (*(v13 + 2))(v13, 0, v28);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)renewPseudonym:(id)a3 forUpdatedExpiryEpoch:(double)a4 requestProperties:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    sub_195B3AB28();
  }

  v13 = [(_IDSService *)self _accountWithURI:0 orPseudonym:v10];
  if (v13)
  {
    v31 = v11;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_195AC7120;
    v32[3] = &unk_1E743E850;
    v14 = v12;
    v33 = v14;
    v15 = MEMORY[0x19A8BBEF0](v32);
    v16 = [MEMORY[0x1E696AEC0] stringGUID];
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
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v23 forKey:v16];

    v24 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v35 = v10;
      v36 = 2048;
      v37 = a4;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = self;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "renewPseudonym called {pseudonym: %@, expiry: %f, requestUUID: %@, self: %@}", buf, 0x2Au);
    }

    v25 = [(_IDSService *)self daemonController];
    v26 = [v13 uniqueID];
    v11 = v31;
    [v25 renewPseudonym:v10 onAccount:v26 forUpdatedExpiryEpoch:v31 requestProperties:v16 requestUUID:a4];

    v27 = v33;
  }

  else
  {
    v28 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(_IDSService *)self accounts];
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = *&v29;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "No account matched pseudonym -- returning nil {pseudonym: %@, accounts: %@}", buf, 0x16u);
    }

    v27 = sub_195AC667C(400);
    (*(v12 + 2))(v12, 0, v27);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)revokePseudonym:(id)a3 requestProperties:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    sub_195B3AB9C();
  }

  v11 = [(_IDSService *)self _accountWithURI:0 orPseudonym:v8];
  if (v11)
  {
    v29 = v9;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_195AC74B8;
    v30[3] = &unk_1E743E850;
    v12 = v10;
    v31 = v12;
    v13 = MEMORY[0x19A8BBEF0](v30);
    v14 = [MEMORY[0x1E696AEC0] stringGUID];
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
    [(NSMutableDictionary *)completionBlocksByRequestID setObject:v21 forKey:v14];

    v22 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = v8;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = self;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "revokePseudonym called {pseudonym: %@, requestUUID: %@, self: %@}", buf, 0x20u);
    }

    v23 = [(_IDSService *)self daemonController];
    v24 = [v11 uniqueID];
    v9 = v29;
    [v23 revokePseudonym:v8 onAccount:v24 requestProperties:v29 requestUUID:v14];

    v25 = v31;
  }

  else
  {
    v26 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(_IDSService *)self accounts];
      *buf = 138412546;
      v33 = v8;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "No account matched pseudonym -- returning nil {pseudonym: %@, accounts: %@}", buf, 0x16u);
    }

    v25 = sub_195AC667C(400);
    (*(v10 + 2))(v10, 0, v25);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)pseudonymPropertiesWithFeatureID:(id)a3 scopeID:(id)a4 expiryDurationInSeconds:(double)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69A5398];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x1E695DF00] date];
  [v12 timeIntervalSince1970];
  v14 = v13 + a5;
  v15 = [(IDSServiceProperties *)self->_serviceProperties identifier];
  v20[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [v11 initWithFeatureID:v10 scopeID:v9 expiryEpoch:v16 allowedServices:v14];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)finishedProvisioningPseudonym:(id)a3 success:(BOOL)a4 error:(id)a5 forRequestUUID:(id)a6
{
  v8 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = sub_195AC78FC(a5);
  v13 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v11];
  v14 = [v13 first];

  if (v14)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v11];
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v28 = v10;
      if (v8)
      {
        v16 = @"YES";
      }

      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = self;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "finishedProvisioningPseudonym called {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }

    v17 = +[IDSInternalQueueController sharedInstance];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195AC79FC;
    v21[3] = &unk_1E7442268;
    v22 = v10;
    v26 = v8;
    v23 = v11;
    v24 = v12;
    v25 = v14;
    [v17 performBlock:v21];

    v18 = v22;
  }

  else
  {
    v18 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v28 = v10;
      v29 = 2112;
      if (v8)
      {
        v19 = @"YES";
      }

      v30 = v19;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = self;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_INFO, "finishedProvisioningPseudonym called but no block! {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)finishedRenewingPseudonym:(id)a3 success:(BOOL)a4 error:(id)a5 requestUUID:(id)a6
{
  v8 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = sub_195AC78FC(a5);
  v13 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v11];
  v14 = [v13 first];

  if (v14)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v11];
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      *buf = 138413314;
      v28 = v10;
      if (v8)
      {
        v16 = @"YES";
      }

      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = self;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "finishedRenewingPseudonym called {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }

    v17 = +[IDSInternalQueueController sharedInstance];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195AC7DAC;
    v21[3] = &unk_1E7442268;
    v22 = v10;
    v26 = v8;
    v23 = v11;
    v24 = v12;
    v25 = v14;
    [v17 performBlock:v21];

    v18 = v22;
  }

  else
  {
    v18 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413314;
      v28 = v10;
      v29 = 2112;
      if (v8)
      {
        v19 = @"YES";
      }

      v30 = v19;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = self;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_INFO, "finishedRenewingPseudonym called but no block! {pseudonym: %@, success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x34u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)finishedRevokingPseudonymWithSuccess:(BOOL)a3 error:(id)a4 requestUUID:(id)a5
{
  v6 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = sub_195AC78FC(a4);
  v10 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v8];
  v11 = [v10 first];

  if (v11)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v8];
    v12 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      *buf = 138413058;
      if (v6)
      {
        v13 = @"YES";
      }

      v24 = v13;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = self;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "finishedRevokingPseudonymWithSuccess called {success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AC8124;
    v18[3] = &unk_1E7441988;
    v22 = v6;
    v19 = v8;
    v20 = v9;
    v21 = v11;
    [v14 performBlock:v18];

    v15 = v19;
  }

  else
  {
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      *buf = 138413058;
      if (v6)
      {
        v16 = @"YES";
      }

      v24 = v16;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = self;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_INFO, "finishedRevokingPseudonymWithSuccess called but no block {success:%@, requestUUID: %@, error:%@, self: %@}", buf, 0x2Au);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    if (!v10)
    {
LABEL_14:
      v33 = sub_195AC85F4(1u);
      v12[2](v12, 0, v33);

      goto LABEL_15;
    }
  }

  else
  {
    sub_195B3AC10();
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  if ((IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = [v11 keyDiversifier];
  v14 = [v13 diversifier];
  v15 = v14 != 0;

  v16 = [v11 keyDiversifier];
  v17 = [v16 trackingPreventionSecret];

  v18 = [v11 keyType] != 1;
  if (v15 == (v17 == 0) || ((v15 ^ v18) & 1) == 0)
  {
    v32 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_14;
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_195AC8C30;
  v42[3] = &unk_1E743E850;
  v19 = v12;
  v43 = v19;
  v20 = MEMORY[0x19A8BBEF0](v42);
  v21 = [MEMORY[0x1E696AEC0] stringGUID];
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
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v28 forKey:v21];

  v29 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v45 = v21;
    v46 = 2112;
    v47 = v10;
    v48 = 2048;
    v49 = a4;
    v50 = 2112;
    v51 = v11;
    v52 = 2112;
    v53 = self;
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "signData called {requestID: %@, data: %@, algo: %ld, options: %@, self: %@}", buf, 0x34u);
  }

  v30 = [(_IDSService *)self daemonController];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_195AC8C94;
  v36[3] = &unk_1E7442290;
  v41 = a4;
  v37 = v10;
  v38 = self;
  v39 = v11;
  v40 = v21;
  v31 = v21;
  [v30 forwardMethodWithReplyIsSync:0 block:v36];

LABEL_15:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)verifySignedData:(id)a3 matchesExpectedData:(id)a4 withTokenURI:(id)a5 forAlgorithm:(int64_t)a6 options:(id)a7 completion:(id)a8
{
  v67 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  if (!v18)
  {
    sub_195B3ACF4();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_17:
    v36 = 1;
LABEL_18:
    v37 = sub_195AC85F4(v36);
    v18[2](v18, 0, v37);

    goto LABEL_19;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!v15 || !v16 || (IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = [v17 keyDiversifier];
  v20 = [v19 diversifier];
  v21 = v20 != 0;

  v22 = [v17 keyDiversifier];
  v23 = [v22 trackingPreventionSecret];

  v24 = [v17 keyType] != 1;
  if (v21 == (v23 == 0) || ((v21 ^ v24) & 1) == 0)
  {
    v35 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_17;
  }

  if (([v16 isTokenURI] & 1) == 0)
  {
    v36 = 2;
    goto LABEL_18;
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = sub_195AC9184;
  v51[3] = &unk_1E743E850;
  v25 = v18;
  v52 = v25;
  v26 = MEMORY[0x19A8BBEF0](v51);
  v41 = [MEMORY[0x1E696AEC0] stringGUID];
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
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v31 forKey:v41];

  v32 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413826;
    v54 = v41;
    v55 = 2112;
    v56 = v14;
    v57 = 2112;
    v58 = v15;
    v59 = 2112;
    v60 = v16;
    v61 = 2048;
    v62 = a6;
    v63 = 2112;
    v64 = v17;
    v65 = 2112;
    v66 = self;
    _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "verifySignedData called {requestID: %@, signedData: %@, data: %@, uri: %@, algo: %ld, options: %@, self: %@}", buf, 0x48u);
  }

  v33 = [(_IDSService *)self daemonController];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_195AC91E8;
  v43[3] = &unk_1E74422B8;
  v44 = v14;
  v50 = a6;
  v45 = v15;
  v46 = self;
  v47 = v16;
  v48 = v17;
  v49 = v41;
  v34 = v41;
  [v33 forwardMethodWithReplyIsSync:0 block:v43];

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
}

- (void)verifySignedPayloads:(id)a3 forAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    sub_195B3AD68();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_24:
    v41 = sub_195AC85F4(1u);
    v12[2](v12, MEMORY[0x1E695E0F8], v41);

    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (![v10 count] || (IDSIsValidSigningAlgorithm() & 1) == 0)
  {
    goto LABEL_24;
  }

  v13 = [v11 keyDiversifier];
  v14 = [v13 diversifier];
  v15 = v14 != 0;

  v16 = [v11 keyDiversifier];
  v17 = [v16 trackingPreventionSecret];

  v18 = [v11 keyType] != 1;
  if (v15 == (v17 == 0) || ((v15 ^ v18) & 1) == 0)
  {
    v40 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AC84();
    }

    goto LABEL_24;
  }

  v45 = a4;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = sub_195AC9754;
  v57[3] = &unk_1E743E850;
  v19 = v12;
  v58 = v19;
  v20 = MEMORY[0x19A8BBEF0](v57);
  v21 = [MEMORY[0x1E696AEC0] stringGUID];
  completionBlocksByRequestID = self->_completionBlocksByRequestID;
  if (!completionBlocksByRequestID)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = self->_completionBlocksByRequestID;
    self->_completionBlocksByRequestID = Mutable;

    completionBlocksByRequestID = self->_completionBlocksByRequestID;
  }

  v46 = self;
  v25 = MEMORY[0x1E69A6128];
  v26 = MEMORY[0x19A8BBEF0](v19);
  v44 = v20;
  v27 = MEMORY[0x19A8BBEF0](v20);
  v28 = [v25 pairWithFirst:v26 second:v27];
  v43 = v21;
  [(NSMutableDictionary *)completionBlocksByRequestID setObject:v28 forKey:v21];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = v10;
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

  v36 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v60 = v43;
    v61 = 2048;
    v62 = v45;
    v63 = 2112;
    v64 = v11;
    v65 = 2112;
    v66 = v46;
    _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "verifySignedPayloads called {requestID: %@, algo: %ld, options: %@, self: %@}", buf, 0x2Au);
  }

  v37 = [(_IDSService *)v46 daemonController];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = sub_195AC97BC;
  v47[3] = &unk_1E7442290;
  v52 = v45;
  v48 = v29;
  v49 = v46;
  v50 = v11;
  v51 = v43;
  v38 = v43;
  v39 = v29;
  [v37 forwardMethodWithReplyIsSync:0 block:v47];

LABEL_25:
  v42 = *MEMORY[0x1E69E9840];
}

- (void)finishedSigningForRequest:(id)a3 signedData:(id)a4 error:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = sub_195AC78FC(a5);
  v11 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v8];
  v12 = [v11 first];

  if (v12)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v8];
    v13 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = self;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "finishedSigningForRequest called {requestUUID: %@, signedData: %@, error: %@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195AC9AB8;
    v17[3] = &unk_1E743F1D8;
    v20 = v12;
    v18 = v9;
    v19 = v10;
    [v14 performBlock:v17];

    v15 = v20;
  }

  else
  {
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = self;
      _os_log_error_impl(&dword_1959FF000, v15, OS_LOG_TYPE_ERROR, "finishedSigningForRequest called but no block! {requestUUID: %@, signedData: %@, error: %@, self: %@}", buf, 0x2Au);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finishedVerifyingSignedDataForRequest:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = sub_195AC78FC(a5);
  v10 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v8];
  v11 = [v10 first];

  if (v11)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v8];
    v12 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      *buf = 138413058;
      v23 = v8;
      if (v6)
      {
        v13 = @"YES";
      }

      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = self;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "finishedVerifyingSignedDataForRequest called {requestUUID: %@, sucess: %@, error: %@, self: %@}", buf, 0x2Au);
    }

    v14 = +[IDSInternalQueueController sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AC9D3C;
    v18[3] = &unk_1E743F160;
    v20 = v11;
    v21 = v6;
    v19 = v9;
    [v14 performBlock:v18];

    v15 = v20;
  }

  else
  {
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = @"NO";
      *buf = 138413058;
      v23 = v8;
      v24 = 2112;
      if (v6)
      {
        v17 = @"YES";
      }

      v25 = v17;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = self;
      _os_log_error_impl(&dword_1959FF000, v15, OS_LOG_TYPE_ERROR, "finishedVerifyingSignedDataForRequest called but no block! {requestUUID: %@, sucess: %@, error: %@, self: %@}", buf, 0x2Au);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)finishedVerifyingBatchedSignedDataForRequest:(id)a3 results:(id)a4 error:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = sub_195AC78FC(a5);
  v11 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v8];
  v12 = [v11 first];

  if (v12)
  {
    v28 = v12;
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v8];
    v13 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = self;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "finishedVerifyingSignedDataForRequest called {requestUUID: %@, error: %@, self: %@}", buf, 0x20u);
    }

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v9;
    v14 = v9;
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
    v12 = v28;
    v34 = v28;
    v32 = v30;
    v33 = v10;
    v26 = v30;
    [v25 performBlock:v31];

    v9 = v29;
  }

  else
  {
    v26 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v41 = v8;
      v42 = 2112;
      v43 = v10;
      v44 = 2112;
      v45 = self;
      _os_log_error_impl(&dword_1959FF000, v26, OS_LOG_TYPE_ERROR, "finishedVerifyingSignedDataForRequest called but no block! {requestUUID: %@, error: %@, self: %@}", buf, 0x20u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 withCompletion:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v12)
  {
    sub_195B3ADDC();
  }

  if ([v10 FZIDType] == 4)
  {
    v13 = [(_IDSService *)self _accountWithURI:v11 orPseudonym:0];
    v14 = v13;
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = [0 prefixedURI];
      v16 = [(_IDSService *)self _sendingAccountForAccount:0 destination:0 fromID:v15];

      v11 = [(_IDSService *)self _preferredURIForAccount:v16];
      v14 = v16;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    if (v11)
    {
      v35 = a3;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_195ACA778;
      v36[3] = &unk_1E743E850;
      v17 = v12;
      v37 = v17;
      v18 = MEMORY[0x19A8BBEF0](v36);
      v19 = [MEMORY[0x1E696AEC0] stringGUID];
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
      [(NSMutableDictionary *)completionBlocksByRequestID setObject:v26 forKey:v19];

      v27 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v39 = v10;
        v40 = 2112;
        v41 = v11;
        v42 = 2112;
        v43 = v19;
        v44 = 2112;
        v45 = self;
        _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "reportApprovalOfURI called {tempURI: %@, fromURI: %@, requestID: %@, self: %@}", buf, 0x2Au);
      }

      v28 = [(_IDSService *)self daemonController];
      v29 = [v14 uniqueID];
      [v28 reportAction:v35 ofTempURI:v10 fromURI:v11 onAccount:v29 requestUUID:v19];

      v30 = v37;
      goto LABEL_18;
    }

LABEL_15:
    v31 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(_IDSService *)self accounts];
      *buf = 138412546;
      v39 = v11;
      v40 = 2112;
      v41 = v32;
      _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "No account matched to report with -- returning nil {fromURI: %@, accounts: %@}", buf, 0x16u);
    }

    v30 = sub_195ACA530(400);
    (*(v12 + 2))(v12, v30);
LABEL_18:

    goto LABEL_19;
  }

  v14 = sub_195ACA530(400);
  (*(v12 + 2))(v12, v14);
LABEL_19:

  v33 = *MEMORY[0x1E69E9840];
}

- (void)finishedReportingRequestUUID:(id)a3 withError:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = sub_195AC78FC(a4);
  v8 = [(NSMutableDictionary *)self->_completionBlocksByRequestID objectForKey:v6];
  v9 = [v8 first];

  if (v9)
  {
    [(NSMutableDictionary *)self->_completionBlocksByRequestID removeObjectForKey:v6];
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "finishedReportingRequestUUID called {requestUUID: %@, error:%@, self: %@}", &v13, 0x20u);
    }

    (v9)[2](v9, v7);
  }

  else
  {
    v11 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "finishedReportingRequestUUID called but no block {requestUUID: %@, error:%@, self: %@}", &v13, 0x20u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateSubServices:(id)a3 forDevice:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AE50();
    }
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v11 = [(_IDSService *)self devices];
  v12 = [v11 _copyForEnumerating];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v12;
  v7 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v14 = *v35;
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [v16 _internal];
        v18 = [v17 isActive];

        if (v18)
        {
          v7 = v16;
          goto LABEL_16;
        }
      }

      v7 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  if (v7)
  {
LABEL_17:
    v19 = [v7 _internal];
    v20 = [v19 uniqueIDOverride];

    if (![v20 length])
    {
      v21 = [v7 _internal];
      v22 = [v21 uniqueID];

      v20 = v22;
    }

    if ([v20 length])
    {
      v23 = [(NSMutableDictionary *)self->_subServices objectForKey:v20];
      v24 = v23;
      if (v23 != v6 && ([v23 isEqualToArray:v6]& 1) == 0)
      {
        subServices = self->_subServices;
        if (!subServices)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v27 = self->_subServices;
          self->_subServices = Mutable;

          subServices = self->_subServices;
        }

        [(NSMutableDictionary *)subServices setObject:v6 forKey:v20];
        v28 = [(_IDSService *)self daemonController];
        v29 = [(IDSAccountController *)self->_accountController _internal];
        v30 = [v29 serviceName];
        [v28 updateSubServices:v6 forService:v30 deviceUniqueID:v20];

        v31 = 1;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_195B3AEF0(v7);
      }
    }

    v31 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v7 = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AFB0();
    }
  }

  v6 = [MEMORY[0x1E69A6138] warning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_195B3B050();
  }

  v7 = [(_IDSService *)self devices];
  v8 = [v7 _copyForEnumerating];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v8;
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
        v14 = [v13 _internal];
        v15 = [v14 isActive];

        if (v15)
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
    v16 = [v10 _internal];
    v17 = [v16 uniqueIDOverride];

    if (![v17 length])
    {
      v18 = [v10 _internal];
      v19 = [v18 uniqueID];

      v17 = v19;
    }

    if ([v17 length])
    {
      v20 = [(NSMutableDictionary *)self->_subServices objectForKey:v17];
      v21 = [(_IDSService *)self daemonController];
      v22 = [(IDSAccountController *)self->_accountController _internal];
      v23 = [v22 serviceName];
      [v21 updateSubServices:v20 forService:v23 deviceUniqueID:v17];
    }

    else
    {
      v20 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_195B3AEF0(v10);
      }
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B3AF7C();
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSendMessageWithAccount:(id)a3 toDestination:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Attempting To Send message from account %@ to destinations %@", buf, 0x16u);
  }

  v9 = [(IDSAccountController *)self->_accountController _internal];
  v10 = [v9 serviceName];

  if ([v10 isEqualToIgnoringCase:@"com.apple.private.alloy.idscredentials"] & 1) != 0 || (objc_msgSend(v10, "isEqualToIgnoringCase:", @"com.apple.private.alloy.pbbridge"))
  {
    goto LABEL_22;
  }

  if (!self->_clientIsSandboxed)
  {
    v11 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B124();
    }
  }

  if ([v6 accountType] == 2)
  {
    v12 = [v7 destinationURIs];
    v13 = [v12 count];

    if (v13 < 2)
    {
      v16 = [v7 destinationURIs];
      v17 = [v16 allObjects];
      v18 = [v17 __imFirstObject];
      v19 = [v18 _stripFZIDPrefix];
      if ([v19 _appearsToBeEmail])
      {
      }

      else
      {
        v26 = [v7 destinationURIs];
        [v26 allObjects];
        v20 = v29 = v17;
        [v20 __imFirstObject];
        v21 = v28 = v16;
        v22 = [v21 _stripFZIDPrefix];
        v27 = [v22 _appearsToBePhoneNumber];

        if ((v27 & 1) == 0)
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

- (id)_preferredURIForAccount:(id)a3
{
  v4 = MEMORY[0x1E69A5428];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 aliasStrings];

  v8 = [(_IDSService *)self serviceProperties];
  v9 = [v8 identifier];
  _IDSPrefersPhoneNumbersForServiceIdentifier();
  v10 = _IDSCopyCallerID();
  v11 = [v6 initWithUnprefixedURI:v10];

  return v11;
}

- (id)_sendingAccountForAccount:(id)a3 destination:(id)a4 fromID:(id)a5
{
  v99 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = [v8 _internal];
    v13 = [v12 serviceName];
    if ([v13 isEqualToString:@"com.apple.madrid"])
    {
LABEL_11:

LABEL_12:
      v22 = v8;
      goto LABEL_59;
    }

    v14 = [v8 _internal];
    v15 = [v14 serviceName];
    if ([v15 isEqualToString:@"com.apple.madrid.lite"])
    {
LABEL_10:

      goto LABEL_11;
    }

    v16 = [v8 _internal];
    v17 = [v16 serviceName];
    if ([v17 isEqualToString:@"com.apple.madrid.lite.relay"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v82 = v17;
    v87 = v16;
    v18 = [v8 _internal];
    v19 = [v18 serviceName];
    if ([v19 isEqualToString:@"com.apple.private.alloy.biz"])
    {
LABEL_8:

      v16 = v87;
      v17 = v82;
      goto LABEL_9;
    }

    v78 = v19;
    v79 = v18;
    v20 = [v8 _internal];
    v21 = [v20 serviceName];
    if ([v21 isEqualToString:@"com.apple.private.alloy.sms"])
    {

      v19 = v78;
      v18 = v79;
      goto LABEL_8;
    }

    v76 = v21;
    v77 = v20;
    v75 = [v8 _internal];
    v63 = [v75 serviceName];
    if ([v63 isEqualToString:@"com.apple.private.alloy.facetime.multi"])
    {
      v64 = 1;
    }

    else
    {
      v74 = [v8 _internal];
      v73 = [v74 serviceName];
      if ([v73 isEqualToString:@"com.apple.private.alloy.facetime.audio"])
      {
        v64 = 1;
      }

      else
      {
        v72 = [v8 _internal];
        v71 = [v72 serviceName];
        if ([v71 isEqualToString:@"com.apple.private.alloy.facetime.video"])
        {
          v64 = 1;
        }

        else
        {
          v70 = [v8 _internal];
          v69 = [v70 serviceName];
          if ([v69 isEqualToString:@"com.apple.private.alloy.maps.eta"])
          {
            v64 = 1;
          }

          else
          {
            v68 = [v8 _internal];
            v67 = [v68 serviceName];
            if ([v67 isEqualToString:@"com.apple.private.alloy.nearby"])
            {
              v64 = 1;
            }

            else
            {
              v66 = [v8 _internal];
              [v66 serviceName];
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
    v24 = v8;
  }

  else
  {
    v85 = v10;
    v23 = [(_IDSService *)self accounts];
    v24 = [v23 anyObject];
  }

  v25 = [(IDSAccountController *)self->_accountController _internal];
  v26 = [v25 accounts];
  v27 = [v26 allObjects];
  v28 = [v27 __imArrayByFilteringWithBlock:&unk_1F09E6BA0];
  v29 = [v28 sortedArrayUsingComparator:&unk_1F09E6BC0];

  v30 = [(_IDSService *)self iCloudAccount];
  v88 = v30;
  if (v9 && (v31 = v30, [v8 accountType] != 2))
  {
    v80 = v9;
    v83 = v29;
    v33 = [v9 destinationURIs];
    v34 = [v33 __imSetByApplyingBlock:&unk_1F09E6BE0];
    v35 = [v34 mutableCopy];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v36 = [v31 handles];
    v37 = [v36 countByEnumeratingWithState:&v93 objects:v98 count:16];
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
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v93 + 1) + 8 * i) URI];
          v42 = [v41 unprefixedURI];
          [v35 removeObject:v42];
        }

        v38 = [v36 countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v38);
    }

    v32 = [v35 count] != 0;
    v9 = v80;
    v29 = v83;
  }

  else
  {
    v32 = 0;
  }

  v43 = [v29 __imArrayByFilteringWithBlock:&unk_1F09E6C00];
  v44 = [(_IDSService *)self serviceProperties];
  v45 = [v44 identifier];
  v46 = _IDSPrefersPhoneNumbersForServiceIdentifier();

  if (v46 && [v43 count])
  {
    v47 = [v43 firstObject];
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
    v50 = [v43 firstObject];
    v51 = v50;
    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = [v49 firstObject];
    }

    v47 = v52;

    v24 = v51;
    v29 = v49;
    goto LABEL_38;
  }

  v47 = v88;
LABEL_39:

  v24 = v47;
LABEL_40:
  if (v11 && ![(_IDSService *)self _canAccount:v24 sendWithFromID:v11])
  {
    if (v24 == v48 || ![(_IDSService *)self _canAccount:v48 sendWithFromID:v11])
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
        v81 = v9;
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
            if (v24 != v59 && [(_IDSService *)self _canAccount:*(*(&v89 + 1) + 8 * j) sendWithFromID:v56])
            {
              v60 = v59;

              v24 = v60;
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
        v9 = v81;
        v29 = v84;
        v11 = v56;
        v48 = v88;
      }
    }

    else
    {
      v53 = v24;
      v24 = v48;
    }
  }

  v22 = v24;

LABEL_59:
  v61 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BOOL)_canAccount:(id)a3 sendWithFromID:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = IDSCopyRawAddressForDestination(v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v5 aliasStrings];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = [*(*(&v27 + 1) + 8 * v12) _stripFZIDPrefix];
      v14 = [v7 isEqualToString:v13];

      if (v14)
      {
        goto LABEL_19;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (![v6 _appearsToBePseudonymID])
  {
    LOBYTE(v15) = 0;
    goto LABEL_21;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v5 pseudonyms];
  v15 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = *v24;
LABEL_12:
    v17 = 0;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v18 = [*(*(&v23 + 1) + 8 * v17) URI];
      v19 = [v18 prefixedURI];
      v20 = [v7 isEqualToString:v19];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (BOOL)sendOpportunisticData:(id)a3 options:(id)a4 identifier:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[IDSInternalQueueController sharedInstance];
  v14 = [v13 assertQueueIsCurrent];

  if (v14)
  {
    v15 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B158();
    }
  }

  if (!v12)
  {
    v12 = @"Default";
  }

  if (a6)
  {
    *a6 = 0;
  }

  v16 = [v11 dictionaryRepresentation];
  v17 = [(_IDSService *)self _sendingAccountForAccount:0];
  v18 = [v17 uniqueID];

  v19 = [MEMORY[0x1E69A5270] opportunistic];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = v12;
    v27 = 2112;
    v28 = v11;
    v29 = 2048;
    v30 = [v10 length];
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Client request to send opportunistic data {identifier: %@, options: %@, dataLength: %llu}", &v25, 0x20u);
  }

  if (!v16)
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  v20 = [(_IDSService *)self daemonController];
  v21 = [(IDSAccountController *)self->_accountController _internal];
  v22 = [v21 serviceName];
  [v20 sendOpportunisticData:v10 onService:v22 usingAccountWithUniqueID:v18 withIdentifier:v12 options:v16];

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)cancelOpportunisticDataWithIdentifier:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Default";
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = [(IDSAccountController *)self->_accountController _internal];
  v9 = [v8 serviceName];

  v10 = [MEMORY[0x1E69A5270] opportunistic];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Client request to cancel opportunistic data {identifier: %@, serviceName: %@}", &v14, 0x16u);
  }

  v11 = [(_IDSService *)self daemonController];
  [v11 cancelOpportunisticDataOnService:v9 withIdentifier:v7];

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)sendEncryptedOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v102[1] = *MEMORY[0x1E69E9840];
  v80 = a3;
  v7 = a4;
  v70 = a5;
  v8 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a4) = [v8 assertQueueIsCurrent];

  if (a4)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B1F8();
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = [v80 recipientURI];
  v12 = [v11 prefixedURI];
  v13 = [v10 initWithObjects:{v12, 0}];

  v14 = [v80 senderURI];
  v15 = [v14 prefixedURI];

  v16 = MEMORY[0x1E69A5240];
  if (v15)
  {
    v17 = [v13 setByAddingObject:v15];
    v77 = [v16 destinationWithDestinations:v17];
  }

  else
  {
    v77 = [MEMORY[0x1E69A5240] destinationWithDestinations:v13];
  }

  v18 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v77 fromID:v15];
  v19 = [v18 _internal];
  v73 = [v19 uniqueID];

  v75 = [v7 identifier];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = [v80 payload];
  if (v21)
  {
    CFDictionarySetValue(v20, *MEMORY[0x1E69A4F78], v21);
  }

  theDict = v20;

  v22 = [v80 encryptionProperties];
  v23 = [v22 segmentNumber];

  if (v23)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A4E18], v23);
  }

  v24 = [v80 encryptionProperties];
  v25 = [v24 totalSegments];

  if (v25)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A5190], v25);
  }

  v71 = v13;

  v26 = [v7 originalUUID];
  if (v26)
  {
    CFDictionarySetValue(theDict, *MEMORY[0x1E69A4F70], v26);
  }

  v27 = MEMORY[0x1E695DF90];
  v72 = v7;
  v28 = [v7 dictionaryRepresentation];
  v29 = [v27 dictionaryWithDictionary:v28];

  CFDictionarySetValue(v29, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  if (v15)
  {
    CFDictionarySetValue(v29, @"IDSSendMessageOptionFromID", v15);
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
    v35 = [v80 payload];
    v36 = [v35 debugDescription];
    v37 = [v80 encryptionProperties];
    v38 = [v37 segmentNumber];
    [v80 encryptionProperties];
    v40 = v39 = v15;
    v41 = [v40 totalSegments];
    *buf = 138413314;
    v93 = v75;
    v94 = 2112;
    v95 = v77;
    v96 = 2112;
    v97 = v36;
    v98 = 2112;
    v99 = v38;
    v100 = 2112;
    v101 = v41;
    _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendMessageLite with identifier: %@ destination: %@ - Message {pn: %@, tp: %@, p: %@}", buf, 0x34u);

    v15 = v39;
    v18 = v74;
  }

  if ([(_IDSService *)self canSendMessageWithAccount:v18 toDestination:v77])
  {
    if (v73)
    {
      v42 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 _internal];
        v91 = v75;
        v90 = 0;
        [v44 sendMessage:theDict toDestinations:v77 priority:300 options:v29 identifier:&v91 error:&v90];
        v45 = v91;

        v46 = v90;
        v75 = v45;
        goto LABEL_33;
      }
    }

    v48 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [v18 _internal];
      *buf = 138412290;
      v93 = v49;
      _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "sendMessageLite - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v43 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(IDSAccountController *)self->_accountController _internal];
      v51 = [v50 accounts];
      *buf = 138412290;
      v93 = v51;
      _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "sendMessageLite - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v43 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v18 _internal];
      *buf = 138412290;
      v93 = v47;
      _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "sendMessageLite - Unable to send message to this destination from this account %@", buf, 0xCu);
    }
  }

  v46 = 0;
LABEL_33:

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = sub_195ACCF0C;
  v86[3] = &unk_1E743F1D8;
  v52 = v70;
  v89 = v52;
  v53 = v80;
  v87 = v53;
  v54 = v75;
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
    v63 = v15;
    v64 = MEMORY[0x1E69A6128];
    v79 = v46;
    v81 = v57;
    v65 = v29;
    v66 = MEMORY[0x19A8BBEF0](v59);
    v67 = MEMORY[0x19A8BBEF0](v55);
    v68 = [v64 pairWithFirst:v66 second:v67];
    [(NSMutableDictionary *)v62 setObject:v68 forKey:v58];

    v15 = v63;
    v29 = v65;
    v46 = v79;
    v57 = v81;
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)sendServiceUpdateMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v61 = a5;
  v9 = a4;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a4) = [v10 assertQueueIsCurrent];

  if (a4)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B298();
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = [v8 recipientURI];
  v14 = [v13 prefixedURI];
  v15 = [v12 initWithObjects:{v14, 0}];

  v16 = [v8 senderURI];
  v17 = [v16 prefixedURI];

  v18 = MEMORY[0x1E69A5240];
  if (v17)
  {
    v19 = [v15 setByAddingObject:v17];
    v20 = [v18 destinationWithDestinations:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E69A5240] destinationWithDestinations:v15];
  }

  v66 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v20 fromID:v17];
  v21 = [v66 _internal];
  v64 = [v21 uniqueID];

  v22 = MEMORY[0x1E695DF90];
  v23 = [v9 dictionaryRepresentation];

  v24 = [v22 dictionaryWithDictionary:v23];

  CFDictionarySetValue(v24, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  if (v17)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionFromID", v17);
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
    v27 = [v8 senderURI];
    v28 = [v8 recipientURI];
    *buf = 138413058;
    v78 = v65;
    v79 = 2112;
    v80 = v27;
    v81 = 2112;
    v82 = v28;
    v83 = 2048;
    v84 = [v8 preferredServiceType];
    _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage with destination: %@ - Message {senderURI: %@, recipientURI: %@, preferredServiceType: %ld}", buf, 0x2Au);

    v20 = v65;
  }

  if ([(_IDSService *)self canSendMessageWithAccount:v66 toDestination:v20])
  {
    if (v64)
    {
      v29 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v29)
      {
        v30 = v29;
        v31 = [v29 _internal];
        v75 = 0;
        v76 = 0;
        [v31 sendMessage:0 toDestinations:v20 priority:300 options:v24 identifier:&v76 error:&v75];
        v32 = v76;
        v33 = v75;

        goto LABEL_23;
      }
    }

    v35 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v66 _internal];
      *buf = 138412290;
      v78 = v36;
      _os_log_impl(&dword_1959FF000, v35, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v30 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(IDSAccountController *)self->_accountController _internal];
      v38 = [v37 accounts];
      *buf = 138412290;
      v78 = v38;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "sendServiceUpdateMessage - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v30 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v66 _internal];
      *buf = 138412290;
      v78 = v34;
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
  v39 = v61;
  v74 = v39;
  v40 = v8;
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
    v51 = v17;
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
    v17 = v51;
    v43 = v60;
    v44 = v62;
  }

  v59 = *MEMORY[0x1E69E9840];
}

- (void)sendServerMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v66 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  LODWORD(a4) = [v10 assertQueueIsCurrent];

  if (a4)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B338();
    }
  }

  v12 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = [v8 recipientURI];
  v14 = [v13 prefixedURI];
  v15 = [v12 initWithObjects:{v14, 0}];

  v16 = [v8 senderURI];
  v17 = [v16 prefixedURI];

  v18 = MEMORY[0x1E69A5240];
  if (v17)
  {
    v19 = [v15 setByAddingObject:v17];
    v20 = [v18 destinationWithDestinations:v19];
  }

  else
  {
    v20 = [MEMORY[0x1E69A5240] destinationWithDestinations:v15];
  }

  v72 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v20 fromID:v17];
  v21 = [v72 _internal];
  v69 = [v21 uniqueID];

  v22 = MEMORY[0x1E695DF90];
  v23 = [v9 dictionaryRepresentation];
  v24 = [v22 dictionaryWithDictionary:v23];

  v25 = [v8 topLevelFields];

  if (v25)
  {
    v26 = [v8 topLevelFields];
    [v24 addEntriesFromDictionary:v26];
  }

  if (v17)
  {
    CFDictionarySetValue(v24, @"IDSSendMessageOptionFromID", v17);
  }

  v27 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "command")}];
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
    v30 = [v8 senderURI];
    v31 = [v8 recipientURI];
    *buf = 138413058;
    v84 = v71;
    v85 = 2112;
    v86 = v30;
    v87 = 2112;
    v88 = v31;
    v89 = 2048;
    v90 = [v9 command];
    _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "sendServerMessage with destination: %@ - Message {senderURI: %@, recipientURI: %@, command: %ld}", buf, 0x2Au);

    v20 = v71;
  }

  v68 = v17;
  if ([(_IDSService *)self canSendMessageWithAccount:v72 toDestination:v20])
  {
    if (v69)
    {
      v32 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:?];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 _internal];
        v35 = v20;
        v36 = v34;
        v81 = 0;
        v82 = 0;
        [v34 sendMessage:0 toDestinations:v35 priority:300 options:v24 identifier:&v82 error:&v81];
        v37 = v82;
        v38 = v81;

        goto LABEL_27;
      }
    }

    v40 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v72 _internal];
      *buf = 138412290;
      v84 = v41;
      _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "sendServerMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v33 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(IDSAccountController *)self->_accountController _internal];
      v43 = [v42 accounts];
      *buf = 138412290;
      v84 = v43;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendServerMessage - All accounts %@", buf, 0xCu);
    }
  }

  else
  {
    v33 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v72 _internal];
      *buf = 138412290;
      v84 = v39;
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
  v44 = v66;
  v80 = v44;
  v45 = v8;
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
    v61 = v9;
    v62 = v57;
    v63 = [v55 pairWithFirst:v56 second:v57];
    [(NSMutableDictionary *)v54 setObject:v63 forKey:v50];

    v24 = v70;
    v9 = v61;
    v15 = v60;
    v49 = v59;
    v48 = v58;
    v47 = v65;

    v38 = v67;
  }

  v64 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendMessage:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v69 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = +[IDSInternalQueueController sharedInstance];
  v20 = [v19 assertQueueIsCurrent];

  if (v20)
  {
    v21 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B3D8();
    }
  }

  if (!self->_pretendingToBeFull)
  {
    v49 = a6;
    v51 = v15;
    v52 = v18;
    v50 = v17;
    [MEMORY[0x1E69A5240] destinationWithDestinations:v17];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = v57 = 0u;
    v23 = [v53 destinationURIs];
    v24 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v54 + 1) + 8 * v27);
        if (![v28 _FZIDType])
        {
          v29 = [(_IDSService *)self serviceProperties];
          v30 = [v29 wantsPhoneNumberAccount];

          if ((v30 & 1) == 0)
          {
            break;
          }
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
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
        v38 = [(_IDSService *)self serviceProperties];
        v39 = [v38 identifier];
        *buf = 138412546;
        v65 = v28;
        v66 = 2112;
        v67 = v39;
        _os_log_impl(&dword_1959FF000, v37, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to %@ on service %@ since phone number accounts are disabled", buf, 0x16u);
      }

      v17 = v50;
      v18 = v52;
      if (a9)
      {
        v62 = *MEMORY[0x1E696A578];
        v63 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:v33];
        *a9 = v22 = 0;
        v31 = v16;
        goto LABEL_38;
      }

      v22 = 0;
      goto LABEL_39;
    }

LABEL_16:

    v23 = [v52 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v31 = [(_IDSService *)self _sendingAccountForAccount:v16 destination:v53 fromID:v23];

    v32 = [v31 _internal];
    v33 = [v32 uniqueID];

    if ([(_IDSService *)self canSendMessageWithAccount:v31 toDestination:v53])
    {
      if (v33)
      {
        v34 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:v33];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 _internal];
          v22 = [v36 sendMessage:v51 toDestinations:v53 priority:v49 options:v52 identifier:a8 error:a9];

          v18 = v52;
          v17 = v50;
LABEL_36:

LABEL_38:
          v16 = v31;
LABEL_39:

          v15 = v51;
          goto LABEL_40;
        }
      }

      v42 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v31 _internal];
        *buf = 138412290;
        v65 = v43;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendMessage - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v44 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [(IDSAccountController *)self->_accountController _internal];
        v46 = [v45 accounts];
        *buf = 138412290;
        v65 = v46;
        _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendMessage - All accounts %@", buf, 0xCu);
      }

      v17 = v50;
      if (a9)
      {
        v60 = *MEMORY[0x1E696A578];
        v61 = @"Could not find valid account";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v35];
        *a9 = v22 = 0;
        goto LABEL_35;
      }
    }

    else
    {
      v40 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v31 _internal];
        *buf = 138412290;
        v65 = v41;
        _os_log_impl(&dword_1959FF000, v40, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
      }

      v17 = v50;
      if (a9)
      {
        v58 = *MEMORY[0x1E696A578];
        v59 = @"Destination device is not active for this account";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v35];
        *a9 = v22 = 0;
LABEL_35:
        v18 = v52;
        goto LABEL_36;
      }
    }

    v22 = 0;
    v18 = v52;
    goto LABEL_38;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:a8];
  v22 = 1;
LABEL_40:

  v47 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)cancelMessageWithOptions:(id)a3 identifier:(id *)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = +[IDSInternalQueueController sharedInstance];
  v10 = [v9 assertQueueIsCurrent];

  if (v10)
  {
    v11 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B478();
    }
  }

  v12 = [v8 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v13 = [v8 objectForKeyedSubscript:@"IDSSendMessageOptionQueueOneIdentifier"];

  if (v13)
  {
    v14 = [MEMORY[0x1E696AEC0] stringGUID];
    v15 = v14;
    if (a4)
    {
      v16 = v14;
      *a4 = v15;
    }

    v17 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    v18 = [(_IDSService *)self _sendingAccountForAccount:0];
    v19 = [v18 uniqueID];

    v20 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138413314;
      v26 = v17;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v15;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "cancelMessageWithOptions { service: %@  fromID: %@  queueOneIdentifier: %@  guid: %@ accountUniqueID: %@ }", &v25, 0x34u);
    }

    v21 = [(_IDSService *)self daemonController];
    [v21 cancelMessageWithQueueOneIdentifier:v13 fromID:v12 service:v17 accountUniqueID:v19 messageIdentifier:v15];

    goto LABEL_13;
  }

  if (a5)
  {
    v22 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = @"Cannot cancel message without a queue one identifier.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *a5 = [v22 errorWithDomain:@"com.apple.identityservices.error" code:28 userInfo:v15];
LABEL_13:
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13 != 0;
}

- (BOOL)cancelMessageWithOptions:(id)a3 destination:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v10 = MEMORY[0x1E695DFD8];
  v11 = a3;
  v12 = [v10 setWithObject:a4];
  LOBYTE(a6) = [(_IDSService *)self cancelMessageWithOptions:v11 destinations:v12 identifier:a5 error:a6];

  return a6;
}

- (BOOL)cancelMessageWithOptions:(id)a3 destinations:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v56[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B518();
    }
  }

  if (_os_feature_enabled_impl())
  {
    v15 = [v10 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v16 = [v10 objectForKeyedSubscript:@"IDSSendMessageOptionQueueOneIdentifier"];
    if (v16)
    {
      if (v11 && [v11 count])
      {
        v17 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
        if (v15)
        {
          v18 = [v10 objectForKeyedSubscript:@"IDSSendMessageOptionAlwaysIncludeSelfKey"];

          v19 = MEMORY[0x1E69A5240];
          if (v18)
          {
            v20 = [v11 setByAddingObject:v15];
            v21 = [v19 destinationWithDestinations:v20];

            v22 = v21;
            goto LABEL_21;
          }
        }

        else
        {
          v19 = MEMORY[0x1E69A5240];
        }

        v22 = [v19 destinationWithDestinations:v11];
LABEL_21:
        v40 = [(_IDSService *)self _sendingAccountForAccount:0 destination:v22 fromID:v15];
        v28 = [v40 _internal];
        v42 = [v28 uniqueID];

        v29 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v46 = v17;
          v47 = 2112;
          v48 = v15;
          v49 = 2112;
          v50 = v16;
          v51 = 2112;
          v52 = v22;
          _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "cancelMessageWithOptions { service: %@  fromID: %@  queueOneIdentifier: %@  idsDestination: %@ }", buf, 0x2Au);
        }

        v41 = v22;

        v30 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
        v31 = MEMORY[0x1E695E118];
        CFDictionarySetValue(v30, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionSkipPayloadCheck", v31);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionForceEncryptionOff", v31);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionCommand", &unk_1F0A29A08);
        CFDictionarySetValue(v30, @"IDSSendMessageOptionWantsResponse", v31);
        v32 = v42;
        if (v42 && ([(NSMutableDictionary *)self->_uniqueIDToConnection objectForKeyedSubscript:v42], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v34 = v33;
          v35 = [v33 _internal];
          v23 = [v35 sendMessage:0 toDestinations:v41 priority:300 options:v30 identifier:a5 error:a6];
        }

        else
        {
          if (!a6)
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
          *a6 = v23 = 0;
        }

        v37 = v41;
        v32 = v42;
LABEL_30:

        goto LABEL_31;
      }

      if (a6)
      {
        v24 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v54 = @"Cannot cancel message without a destination.";
        v25 = MEMORY[0x1E695DF20];
        v26 = &v54;
        v27 = &v53;
LABEL_17:
        v17 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
        [v24 errorWithDomain:@"com.apple.identityservices.error" code:28 userInfo:v17];
        *a6 = v23 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    else if (a6)
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

  v23 = [(_IDSService *)self cancelMessageWithOptions:v10 identifier:a5 error:a6];
LABEL_33:

  v38 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)sendProtobuf:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v85 = *MEMORY[0x1E69E9840];
  v59 = a3;
  v13 = a4;
  v14 = a5;
  v60 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v74 = _os_activity_create(&dword_1959FF000, "Framework Send Protobuf", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v74, &state);
  v15 = OSLogHandleForTransportCategory();
  v63 = self;
  v61 = v13;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    *buf = 138412290;
    v83 = v16;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState priority=%@", buf, 0xCu);
  }

  if (a8)
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *a8;
      *buf = 138412290;
      v83 = v18;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v19 = v14;
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
  v26 = [v25 assertQueueIsCurrent];

  if (v26)
  {
    v27 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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
    v29 = [v64 destinationURIs];
    v30 = [v29 countByEnumeratingWithState:&v65 objects:v81 count:16];
    if (v30)
    {
      v31 = *v66;
LABEL_24:
      v32 = 0;
      while (1)
      {
        if (*v66 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v65 + 1) + 8 * v32);
        if (![v33 _FZIDType])
        {
          v34 = [(_IDSService *)v63 serviceProperties];
          v35 = [v34 wantsPhoneNumberAccount];

          if ((v35 & 1) == 0)
          {
            break;
          }
        }

        if (v30 == ++v32)
        {
          v30 = [v29 countByEnumeratingWithState:&v65 objects:v81 count:16];
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
        v43 = [(_IDSService *)v63 serviceProperties];
        v44 = [v43 identifier];
        *v77 = 138412546;
        v78 = v33;
        v79 = 2112;
        v80 = v44;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Unable to send message to %@ on service %@ since phone number accounts are disabled", v77, 0x16u);
      }

      if (a9)
      {
        v75 = *MEMORY[0x1E696A578];
        v76 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:v38];
        *a9 = v28 = 0;
        goto LABEL_52;
      }

      v28 = 0;
      goto LABEL_53;
    }

LABEL_31:

    v29 = [v60 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v36 = [(_IDSService *)v63 _sendingAccountForAccount:v61 destination:v64 fromID:v29];

    v37 = [v36 _internal];
    v38 = [v37 uniqueID];

    if ([(_IDSService *)v63 canSendMessageWithAccount:v36 toDestination:v64])
    {
      if (v38)
      {
        v39 = [(NSMutableDictionary *)v63->_uniqueIDToConnection objectForKey:v38];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 _internal];
          v28 = [v41 sendProtobuf:v59 toDestinations:v64 priority:a6 options:v60 identifier:a8 error:a9];
          goto LABEL_51;
        }
      }

      v49 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v36 _internal];
        *v77 = 138412290;
        v78 = v50;
        _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Could not find connection for account %@", v77, 0xCu);
      }

      [(_IDSService *)v63 _logConnectionMap];
      v51 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [(IDSAccountController *)v63->_accountController _internal];
        v53 = [v52 accounts];
        *v77 = 138412290;
        v78 = v53;
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
        v46 = [v36 _internal];
        *v77 = 138412290;
        v78 = v46;
        _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "sendProtobuf - Unable to send protobuf to this destination from this account %@", v77, 0xCu);
      }

      v47 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v47 initWithObjectsAndKeys:{@"Destination device is not active for this account", *MEMORY[0x1E696A578], 0}];
      v48 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v40];
    }

    v41 = v48;
    if (a9)
    {
      v55 = v48;
      v28 = 0;
      *a9 = v41;
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

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:a8];
  v28 = 1;
LABEL_54:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v56 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)_handlePretendingToBeFullWithIdentifier:(id *)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringGUID];
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    *a3 = v6;
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

- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v87 = *MEMORY[0x1E69E9840];
  v61 = a3;
  v13 = a4;
  v14 = a5;
  v62 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v76 = _os_activity_create(&dword_1959FF000, "Framework Send Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v76, &state);
  v15 = OSLogHandleForTransportCategory();
  v64 = v13;
  v65 = self;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 serviceName];
    *buf = 138412290;
    v85 = v16;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState service=%@", buf, 0xCu);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
    *buf = 138412290;
    v85 = v18;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState priority=%@", buf, 0xCu);
  }

  if (a8)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a8;
      *buf = 138412290;
      v85 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v21 = v14;
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
  v28 = [v27 assertQueueIsCurrent];

  if (v28)
  {
    v29 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AF00] callStackSymbols];
      objc_claimAutoreleasedReturnValue();
      sub_195B3B608();
    }
  }

  if (!v65->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:v21];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v66 = v68 = 0u;
    v31 = [v66 destinationURIs];
    v32 = [v31 countByEnumeratingWithState:&v67 objects:v83 count:16];
    if (v32)
    {
      v33 = *v68;
LABEL_26:
      v34 = 0;
      while (1)
      {
        if (*v68 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = *(*(&v67 + 1) + 8 * v34);
        if (![v35 _FZIDType])
        {
          v36 = [(_IDSService *)v65 serviceProperties];
          v37 = [v36 wantsPhoneNumberAccount];

          if ((v37 & 1) == 0)
          {
            break;
          }
        }

        if (v32 == ++v34)
        {
          v32 = [v31 countByEnumeratingWithState:&v67 objects:v83 count:16];
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
        v45 = [(_IDSService *)v65 serviceProperties];
        v46 = [v45 identifier];
        *v79 = 138412546;
        v80 = v35;
        v81 = 2112;
        v82 = v46;
        _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendData - Unable to send message to %@ on service %@ since phone number accounts are disabled", v79, 0x16u);
      }

      if (a9)
      {
        v77 = *MEMORY[0x1E696A578];
        v78 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:v40];
        *a9 = v30 = 0;
        goto LABEL_54;
      }

      v30 = 0;
      goto LABEL_55;
    }

LABEL_33:

    v31 = [v62 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v38 = [(_IDSService *)v65 _sendingAccountForAccount:v64 destination:v66 fromID:v31];

    v39 = [v38 _internal];
    v40 = [v39 uniqueID];

    if ([(_IDSService *)v65 canSendMessageWithAccount:v38 toDestination:v66])
    {
      if (v40)
      {
        v41 = [(NSMutableDictionary *)v65->_uniqueIDToConnection objectForKey:v40];
        v42 = v41;
        if (v41)
        {
          v43 = [v41 _internal];
          v30 = [v43 sendData:v61 toDestinations:v66 priority:a6 options:v62 identifier:a8 error:a9];
          goto LABEL_53;
        }
      }

      v51 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v38 _internal];
        *v79 = 138412290;
        v80 = v52;
        _os_log_impl(&dword_1959FF000, v51, OS_LOG_TYPE_DEFAULT, "sendData - Could not find connection for account %@", v79, 0xCu);
      }

      [(_IDSService *)v65 _logConnectionMap];
      v53 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [(IDSAccountController *)v65->_accountController _internal];
        v55 = [v54 accounts];
        *v79 = 138412290;
        v80 = v55;
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
        v48 = [v38 _internal];
        *v79 = 138412290;
        v80 = v48;
        _os_log_impl(&dword_1959FF000, v47, OS_LOG_TYPE_DEFAULT, "sendData - Unable to send data to this destination from this account %@", v79, 0xCu);
      }

      v49 = objc_alloc(MEMORY[0x1E695DF20]);
      v42 = [v49 initWithObjectsAndKeys:{@"Destination device is not active for this account", *MEMORY[0x1E696A578], 0}];
      v50 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:37 userInfo:v42];
    }

    v43 = v50;
    if (a9)
    {
      v57 = v50;
      v30 = 0;
      *a9 = v43;
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

  [(_IDSService *)v65 _handlePretendingToBeFullWithIdentifier:a8];
  v30 = 1;
LABEL_56:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v58 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)sendAccessoryData:(id)a3 toAccessoryID:(id)a4 accessToken:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v53 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v13 = a4;
  v46 = a5;
  v14 = a6;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v48 = _os_activity_create(&dword_1959FF000, "Framework Send Accessory Data", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v48, &state);
  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v13;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "!setState accessoryID=%@", buf, 0xCu);
  }

  if (a7)
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *a7;
      *buf = 138412290;
      v52 = v17;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  v18 = +[IDSInternalQueueController sharedInstance];
  v19 = [v18 assertQueueIsCurrent];

  if (v19)
  {
    v20 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
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

  v22 = [v14 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v23 = [(_IDSService *)self _sendingAccountForAccount:0 destination:0 fromID:v22];
  v43 = v22;
  v24 = [v23 _internal];
  v25 = [v24 uniqueID];

  if (v25)
  {
    v26 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v25];
  }

  else
  {
    v26 = 0;
  }

  v27 = IDSCopyIDForAccessory();

  v28 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v14];
  [v28 setObject:v46 forKey:@"IDSSendMessageOptionAccessToken"];
  [v28 setObject:MEMORY[0x1E695E118] forKey:@"IDSSendMessageOptionHomeKitMessage"];
  [v28 setObject:MEMORY[0x1E695E118] forKey:@"IDSSendMessageOptionDisableAliasValidation"];
  v29 = v28;

  v30 = [MEMORY[0x1E695DFD8] setWithObject:v27];
  v31 = [MEMORY[0x1E69A5240] destinationWithDestinations:v30];
  if (v26)
  {
    v32 = [v26 _internal];
    v33 = [v32 sendData:v45 toDestinations:v31 priority:300 options:v29 identifier:a7 error:a8];
  }

  else
  {
    v34 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v23 _internal];
      *v49 = 138412290;
      v50 = v35;
      _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendAccessoryData - Could not find connection for account %@", v49, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v36 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(IDSAccountController *)self->_accountController _internal];
      v38 = [v37 accounts];
      *v49 = 138412290;
      v50 = v38;
      _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendAccessoryData - All accounts %@", v49, 0xCu);
    }

    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v32 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
    v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v32];
    if (a8)
    {
      v40 = v40;
      *a8 = v40;
    }

    v33 = 0;
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v41 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)sendInvitation:(id)a3 fromAccount:(id)a4 toDestination:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v52 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = MEMORY[0x1E69A5240];
  v15 = MEMORY[0x1E695DFD8];
  v16 = a6;
  v17 = a4;
  v18 = [v15 setWithObject:a5];
  v19 = [v14 destinationWithDestinations:v18];

  v20 = [v16 mutableCopy];
  if ([v13 state] != 1)
  {
    v21 = [v13 selfHandle];

    if (v21)
    {
      v22 = [v13 selfHandle];
      v23 = [v22 _stripFZIDPrefix];
      v24 = [v23 _bestGuessURI];

      [v20 setObject:v24 forKey:@"IDSSendMessageOptionFromID"];
      v25 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v24;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - overriding fromID to %@", buf, 0xCu);
      }
    }
  }

  v26 = [v20 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v27 = [(_IDSService *)self _sendingAccountForAccount:v17 destination:v19 fromID:v26];

  v28 = [v27 _internal];
  v29 = [v28 uniqueID];

  if (!v29)
  {
    if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) != 0)
    {
LABEL_13:
      v34 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v27 _internal];
        *buf = 138412290;
        v49 = v35;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendInvitation - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v36 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(IDSAccountController *)self->_accountController _internal];
        v38 = [v37 accounts];
        *buf = 138412290;
        v49 = v38;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendInvitation - All accounts %@", buf, 0xCu);
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v30];
      v32 = v40;
      if (a8)
      {
        v41 = v40;
        v33 = 0;
        *a8 = v32;
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
    v32 = [v43 initWithObjectsAndKeys:{@"Service is not enabled for Invitations", *MEMORY[0x1E696A578], 0}];
    v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:53 userInfo:v32];
    if (a8)
    {
      v44 = v44;
      *a8 = v44;
    }

    goto LABEL_25;
  }

  v30 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v29];
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
    v49 = v13;
    v50 = 2112;
    v51 = v20;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "sendInvitation - Attempting to send invitation: %@ with options %@", buf, 0x16u);
  }

  v32 = [v30 _internal];
  v33 = [v32 sendInvitation:v13 toDestination:v19 priority:300 options:v20 identifier:a7 error:a8];
LABEL_26:

  v45 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)sendInvitationUpdate:(id)a3 fromAccount:(id)a4 toDestination:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v52 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = MEMORY[0x1E69A5240];
  v15 = MEMORY[0x1E695DFD8];
  v16 = a6;
  v17 = a4;
  v18 = [v15 setWithObject:a5];
  v19 = [v14 destinationWithDestinations:v18];

  v20 = [v16 mutableCopy];
  if ([v13 state] != 1)
  {
    v21 = [v13 selfHandle];

    if (v21)
    {
      v22 = [v13 selfHandle];
      v23 = [v22 _stripFZIDPrefix];
      v24 = [v23 _bestGuessURI];

      [v20 setObject:v24 forKey:@"IDSSendMessageOptionFromID"];
      v25 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v24;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - overriding fromID to %@", buf, 0xCu);
      }
    }
  }

  v26 = [v20 objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
  v27 = [(_IDSService *)self _sendingAccountForAccount:v17 destination:v19 fromID:v26];

  v28 = [v27 _internal];
  v29 = [v28 uniqueID];

  if (!v29)
  {
    if (([(IDSServiceProperties *)self->_serviceProperties isInvitationService]& 1) != 0)
    {
LABEL_13:
      v34 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v27 _internal];
        *buf = 138412290;
        v49 = v35;
        _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Could not find connection for account %@", buf, 0xCu);
      }

      [(_IDSService *)self _logConnectionMap];
      v36 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [(IDSAccountController *)self->_accountController _internal];
        v38 = [v37 accounts];
        *buf = 138412290;
        v49 = v38;
        _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - All accounts %@", buf, 0xCu);
      }

      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v30 = [v39 initWithObjectsAndKeys:{@"Could not find valid account", *MEMORY[0x1E696A578], 0}];
      v40 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:7 userInfo:v30];
      v32 = v40;
      if (a8)
      {
        v41 = v40;
        v33 = 0;
        *a8 = v32;
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
    v32 = [v43 initWithObjectsAndKeys:{@"Service is not enabled for Invitations", *MEMORY[0x1E696A578], 0}];
    v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:53 userInfo:v32];
    if (a8)
    {
      v44 = v44;
      *a8 = v44;
    }

    goto LABEL_25;
  }

  v30 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v29];
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
    v49 = v13;
    v50 = 2112;
    v51 = v20;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - Attempting to send invitation: %@ with options %@", buf, 0x16u);
  }

  v32 = [v30 _internal];
  v33 = [v32 sendInvitationUpdate:v13 toDestination:v19 priority:300 options:v20 identifier:a7 error:a8];
LABEL_26:

  v45 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)setWakingPushPriority:(int64_t)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    *buf = 134218242;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Setting waking priority %ld on topic %@", buf, 0x16u);
  }

  valid = _IDSIsValidWakingPushPriority();
  if (valid)
  {
    v10 = [(_IDSService *)self daemonController];
    v11 = [(IDSServiceProperties *)self->_serviceProperties pushTopic];
    [v10 setWakingPushPriority:a3 forTopic:v11];
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
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:56 userInfo:v10];
    v11 = v13;
    if (a4)
    {
      v14 = v13;
      *a4 = v11;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return valid;
}

- (BOOL)sendData:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7
{
  v7 = [IDSInternalQueueController sharedInstance:a3];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B6DC();
    }
  }

  return 0;
}

- (BOOL)sendServerMessage:(id)a3 command:(id)a4 fromAccount:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B77C();
    }
  }

  v14 = [(_IDSService *)self _sendingAccountForAccount:v10];

  v15 = [v14 _internal];
  v16 = [v15 uniqueID];

  if (v16 && ([(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v16], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [v17 _internal];
    v20 = [v19 sendServerMessage:v8 command:v9];
  }

  else
  {
    v21 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v14 _internal];
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "sendServerMessage - Could not find connection for account %@", &v27, 0xCu);
    }

    [(_IDSService *)self _logConnectionMap];
    v18 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(IDSAccountController *)self->_accountController _internal];
      v24 = [v23 accounts];
      v27 = 138412290;
      v28 = v24;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "sendServerMessage - All accounts %@", &v27, 0xCu);
    }

    v20 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)cancelIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B81C();
    }
  }

  v10 = [v6 length];
  if (v10)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v11 = [(_IDSService *)self daemonController];
    v12 = [(IDSAccountController *)self->_accountController _internal];
    v13 = [v12 serviceName];
    [v11 cancelItemWithIdentifier:v6 service:v13];
  }

  return v10 != 0;
}

- (BOOL)getProgressUpdateForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B8BC();
    }
  }

  v10 = [v6 length];
  if (v10)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v11 = [(_IDSService *)self daemonController];
    v12 = [(IDSAccountController *)self->_accountController _internal];
    v13 = [v12 serviceName];
    [v11 getProgressUpdateForIdentifier:v6 service:v13];

    if (v6)
    {
      v14 = [MEMORY[0x1E696AE38] currentProgress];

      if (v14)
      {
        if (!self->_uniqueIDToProgress)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          uniqueIDToProgress = self->_uniqueIDToProgress;
          self->_uniqueIDToProgress = Mutable;
        }

        v17 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
        [(NSMutableDictionary *)self->_uniqueIDToProgress setObject:v17 forKeyedSubscript:v6];
      }
    }
  }

  return v10 != 0;
}

- (id)uriForFromID:(id)a3
{
  v3 = a3;
  v4 = +[IDSInternalQueueController sharedInstance];
  v5 = [v4 assertQueueIsCurrent];

  if (v5)
  {
    v6 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B95C();
    }
  }

  if (v3 && ([v3 isEqualToString:*MEMORY[0x1E69A4B50]] & 1) == 0)
  {
    v7 = [v3 _stripPotentialTokenURIWithToken:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)deviceForFromID:(id)a3 fromDevices:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3B9FC();
    }
  }

  if (v5)
  {
    if ([v5 isEqualToString:*MEMORY[0x1E69A4B50]])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v53 objects:v65 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v16 = [v15 _internal];
            v17 = [v16 isDefaultPairedDevice];

            if (v17)
            {
              v29 = v15;
              goto LABEL_49;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v53 objects:v65 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    if ([v5 containsString:@"device:"])
    {
      v18 = v5;
      v10 = [v5 _stripFZIDPrefix];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v19 = v6;
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
            v25 = [v24 uniqueIDOverride];
            v26 = [v25 isEqualToIgnoringCase:v10];

            if (v26)
            {
              v29 = v24;

              v5 = v18;
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

      v5 = v18;
    }

    v48 = 0;
    v27 = [v5 _stripPotentialTokenURIWithToken:&v48];
    v10 = v48;
    v28 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v59 = v5;
      v60 = 2112;
      v61 = v27;
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_INFO, "FromID %@, strippedURI %@, token %@", buf, 0x20u);
    }

    v29 = 0;
    if (v10 && v27)
    {
      v41 = v5;
      v42 = v27;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = v6;
      v30 = v6;
      v31 = [v30 countByEnumeratingWithState:&v44 objects:v57 count:16];
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
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v44 + 1) + 8 * k);
            v36 = [v35 _internal];
            v37 = [v36 pushToken];

            v38 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = v37;
              v60 = 2112;
              v61 = v10;
              _os_log_impl(&dword_1959FF000, v38, OS_LOG_TYPE_INFO, "Comparing device token %@ to token %@", buf, 0x16u);
            }

            if ([v37 isEqualToData:v10])
            {
              v29 = v35;

              goto LABEL_47;
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v44 objects:v57 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v10;
        _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "Did not find a device matching the token %@", buf, 0xCu);
      }

      v29 = 0;
LABEL_47:
      v27 = v42;
      v6 = v43;
      v5 = v41;
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

- (id)deviceForFromID:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BA9C();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [(_IDSService *)self accounts];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [v14 _internal];
        v16 = [v15 devices];

        v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v16);
              }

              [v8 addObject:*(*(&v24 + 1) + 8 * j)];
            }

            v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v18);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v21 = [_IDSService deviceForFromID:v4 fromDevices:v8];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)linkedDeviceForFromID:(id)a3 withRelationship:(int64_t)a4
{
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BB3C();
    }
  }

  v10 = [(_IDSService *)self linkedDevicesWithRelationship:a4];
  v11 = [_IDSService deviceForFromID:v6 fromDevices:v10];

  return v11;
}

- (id)firstRoutableInternetDestinationForSelf
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [(_IDSService *)self accounts];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if ([v7 accountType] == 1 || !objc_msgSend(v7, "accountType"))
        {
          v8 = [v7 pushToken];

          if (v8)
          {
            v10 = [v7 loginID];
            v11 = [v10 _appearsToBeEmail];
            v12 = [v7 loginID];
            if (v11)
            {
              v13 = IDSCopyIDForEmailAddress();
            }

            else
            {
              v13 = IDSCopyIDForPhoneNumber();
            }

            v14 = v13;

            v15 = [v7 pushToken];
            v9 = IDSCopyIDForTokenWithID();

            goto LABEL_16;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)devicesForBTUUID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BBDC();
    }
  }

  if (v4)
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
          v15 = [v14 nsuuid];
          v16 = [v15 isEqual:v4];

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

- (id)deviceForUniqueID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BC7C();
    }
  }

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(_IDSService *)self devices];
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
          v14 = [v13 uniqueID];
          if ([v14 isEqualToIgnoringCase:v4])
          {

LABEL_19:
            v17 = v13;
            goto LABEL_20;
          }

          v15 = [v13 uniqueIDOverride];
          v16 = [v15 isEqualToIgnoringCase:v4];

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

- (BOOL)needsLaunchOnNearbyDevicesChanged
{
  v2 = [(_IDSService *)self serviceProperties];
  v3 = [v2 needsLaunchOnNearbyDevicesChanged];

  return v3;
}

- (void)setLinkPreferences:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3BEDC();
    }
  }

  v8 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v4;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "setLinkPreferences: %{public}@", &v17, 0xCu);
  }

  v9 = [v4 objectForKey:@"LinkType"];
  v10 = [v4 objectForKey:@"PacketsPerSecond"];
  v11 = [v4 objectForKey:@"InputBytesPerSecond"];
  v12 = [v4 objectForKey:@"OutputBytesPerSecond"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Received invalid link preferences", &v17, 2u);
    }
  }

  else
  {
    v13 = [(_IDSService *)self daemonController];
    v14 = [(IDSAccountController *)self->_accountController _internal];
    v15 = [v14 serviceName];
    [v13 setLinkPreferences:v4 service:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)startOTRTest:(int64_t)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
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

  v9 = [(_IDSService *)self daemonController];
  v10 = [(IDSAccountController *)self->_accountController _internal];
  v11 = [v10 serviceName];
  [v9 startOTRTest:v11 priority:a3];
}

- (void)testCloudQRConnection
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C01C();
    }
  }

  v6 = [(_IDSService *)self daemonController];
  v7 = [(IDSAccountController *)self->_accountController _internal];
  v8 = [v7 serviceName];
  [v6 testCloudQRConnection:v8];
}

- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 fromAccount:(id)a5 toDestinations:(id)a6 priority:(int64_t)a7 options:(id)a8 identifier:(id *)a9 error:(id *)a10
{
  v121 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v97 = a4;
  v100 = a5;
  v99 = a6;
  v98 = a8;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v106 = _os_activity_create(&dword_1959FF000, "Framework Send Resource At URL", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v106, &state);
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v111 = v15;
    _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "!setState ResourceURL=%@", buf, 0xCu);
  }

  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v100 serviceName];
    *buf = 138412290;
    v111 = v18;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "!setState serviceName=%@", buf, 0xCu);
  }

  if (a9)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a9;
      *buf = 138412290;
      v111 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
    }
  }

  if (!self->_pretendingToBeFull)
  {
    [MEMORY[0x1E69A5240] destinationWithDestinations:v99];
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v95 = v102 = 0u;
    v22 = [v95 destinationURIs];
    v23 = [v22 countByEnumeratingWithState:&v101 objects:v120 count:16];
    if (v23)
    {
      v24 = *v102;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v102 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v101 + 1) + 8 * i);
          if (![v26 _FZIDType])
          {
            v27 = [(_IDSService *)self serviceProperties];
            v28 = [v27 wantsPhoneNumberAccount];

            if ((v28 & 1) == 0)
            {
              v48 = +[IDSLogging _IDSService];
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = [(_IDSService *)self serviceProperties];
                v50 = [v49 identifier];
                *buf = 138412546;
                v111 = v26;
                v112 = 2112;
                v113 = v50;
                _os_log_impl(&dword_1959FF000, v48, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - Unable to send message to %@ on service %@ since phone number accounts are disabled", buf, 0x16u);
              }

              if (a10)
              {
                v118 = *MEMORY[0x1E696A578];
                v119 = @"Sending to a phone number when service does not support phone numbers. File a radar to IDS | New Bugs to request phone number access.";
                v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
                *a10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:44 userInfo:v51];
              }

              goto LABEL_37;
            }
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v101 objects:v120 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    if (([v15 isFileURL] & 1) == 0)
    {
      v52 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v111 = v15;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - resourceURL not a file %@", buf, 0xCu);
      }

      v53 = objc_alloc(MEMORY[0x1E695DF20]);
      v22 = [v53 initWithObjectsAndKeys:{@"Sending non-file resource unsupported", *MEMORY[0x1E696A578], 0}];
      if (a10)
      {
        v21 = 0;
        *a10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:28 userInfo:v22];
      }

      else
      {
LABEL_37:
        v21 = 0;
      }

      goto LABEL_89;
    }

    v22 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v98];
    v92 = NSTemporaryDirectory();
    v29 = v15;
    v94 = [v29 path];
    v30 = [v29 lastPathComponent];

    v31 = [v92 stringByAppendingString:v30];

    v32 = [MEMORY[0x1E696AC08] defaultManager];
    v109 = 0;
    v91 = [v32 attributesOfItemAtPath:v31 error:&v109];
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
      v36 = [MEMORY[0x1E696AC08] defaultManager];
      v31 = [v36 stringWithFileSystemRepresentation:v35 length:strlen(v35)];

      free(v35);
    }

    v37 = v94;
    v38 = [v94 cStringUsingEncoding:4];
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
        v111 = v94;
        v112 = 2112;
        v113 = v31;
        v114 = 1024;
        LODWORD(v115) = v41;
        _os_log_impl(&dword_1959FF000, v42, OS_LOG_TYPE_DEFAULT, "sendResourceAtURL - failed to clone file %@ => %@ (error %d). Will try hard link.", buf, 0x1Cu);
      }

      v43 = [MEMORY[0x1E696AC08] defaultManager];
      v108 = 0;
      v44 = [v43 linkItemAtPath:v94 toPath:v31 error:&v108];
      v90 = v108;

      if ((v44 & 1) == 0)
      {

        v45 = [MEMORY[0x1E696AC08] defaultManager];
        v107 = 0;
        v46 = [v45 copyItemAtPath:v94 toPath:v31 error:&v107];
        v90 = v107;

        if ((v46 & 1) == 0)
        {
          v47 = +[IDSTransportLog IDSService];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v111 = v94;
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
      v58 = [v29 fileSystemRepresentation];
      *buf = 138413058;
      v111 = v29;
      v112 = 2112;
      v113 = v56;
      v114 = 2080;
      v115 = v58;
      v116 = 2112;
      v117 = v93;
      _os_log_impl(&dword_1959FF000, v55, OS_LOG_TYPE_DEFAULT, "Attempted to link or copy file %@ destination %@ (%s to %@)", buf, 0x2Au);
    }

    if ([(__CFString *)v93 length])
    {
      v59 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = [v29 isFileURL];
        v61 = [v22 objectForKey:@"IDSSendMessageOptionLocalDelivery"];
        v62 = v61;
        v63 = @"NO";
        *buf = 138412802;
        v111 = v29;
        v112 = 2112;
        if (v60)
        {
          v63 = @"YES";
        }

        v113 = v63;
        v114 = 2112;
        v115 = v61;
        _os_log_impl(&dword_1959FF000, v59, OS_LOG_TYPE_INFO, "sendResourceAtURL - resourceURL %@  isFileURL %@  localDelivery %@", buf, 0x20u);
      }

      v64 = [MEMORY[0x1E695DF90] dictionary];
      v65 = v93;
      if (v65)
      {
        CFDictionarySetValue(v64, *MEMORY[0x1E69A4EB8], v65);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195B3C0BC();
      }

      v68 = v97;
      if (v68)
      {
        CFDictionarySetValue(v64, *MEMORY[0x1E69A4E98], v68);
      }

      v69 = [v29 absoluteString];
      if (v69)
      {
        CFDictionarySetValue(v64, *MEMORY[0x1E69A4EA8], v69);
      }

      v70 = v65;
      [(__CFString *)v65 UTF8String];
      v71 = sandbox_extension_issue_file();
      if (v71)
      {
        v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v71];
        if (v72)
        {
          CFDictionarySetValue(v64, *MEMORY[0x1E69A4EB0], v72);
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

      v74 = [v29 path];
      v75 = v74;
      [v74 UTF8String];
      v76 = sandbox_extension_issue_file();

      if (v76)
      {
        v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
        if (v77)
        {
          CFDictionarySetValue(v64, *MEMORY[0x1E69A4EA0], v77);
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

      v21 = [(_IDSService *)self sendMessage:v64 fromAccount:v100 toDestinations:v99 priority:a7 options:v22 identifier:a9 error:a10];
      v79 = !v21;
      if (!a9)
      {
        v79 = 1;
      }

      if ((v79 & 1) == 0)
      {
        if (*a9)
        {
          v80 = [MEMORY[0x1E696AE38] currentProgress];
          v81 = v80 == 0;

          if (!v81)
          {
            v82 = [v98 objectForKey:@"IDSSendMessageOptionWantsProgress"];

            if (v82)
            {
              v83 = [v98 objectForKeyedSubscript:@"IDSSendMessageOptionWantsProgress"];
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
                [(NSMutableDictionary *)self->_uniqueIDToProgress setObject:v87 forKeyedSubscript:*a9];
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
      v64 = [v67 initWithObjectsAndKeys:{@"Unable to link or copy file", *MEMORY[0x1E696A578], 0}];
      v21 = 0;
      if (a10)
      {
        *a10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v64];
      }
    }

LABEL_89:
    goto LABEL_90;
  }

  [(_IDSService *)self _handlePretendingToBeFullWithIdentifier:a9];
  v21 = 1;
LABEL_90:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v88 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)sendAheadGroup:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 completion:(id)a7
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = +[IDSInternalQueueController sharedInstance];
  v16 = [v15 assertQueueIsCurrent];

  if (v16)
  {
    v17 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C158();
    }
  }

  v18 = [MEMORY[0x1E69A5270] groupCrypto];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v12 groupID];
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Sending Ahead group {groupID: %{public}@}", buf, 0xCu);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AD41A0;
  v25[3] = &unk_1E7442370;
  v26 = v13;
  v27 = self;
  v28 = v12;
  v29 = v14;
  v30 = a4;
  v31 = a6;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  [(_IDSService *)self performGroupTask:v25];

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)reportSpamMessage:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C298();
    }
  }

  v8 = [(_IDSService *)self serviceProperties];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = [v4 objectForKey:*MEMORY[0x1E69A5468]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 unsignedIntegerValue];
      if (v11 == 1)
      {
        v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5460]];

        if (v16)
        {
          goto LABEL_10;
        }

        v13 = +[IDSLogging _IDSService];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_195B3C338();
        }

        goto LABEL_16;
      }

      if (v11)
      {
LABEL_10:
        v13 = [(_IDSService *)self daemonController];
        [v13 reportSpamMessage:v4 serviceIdentifier:v9];
        v14 = 1;
LABEL_17:

        goto LABEL_18;
      }
    }

    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5488]];

    if (v12)
    {
      goto LABEL_10;
    }

    v13 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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

- (void)sendAckForMessageWithContext:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C3D4();
    }
  }

  if (self->_manuallyAckMessages)
  {
    v8 = [v4 storageGuid];
    v9 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Received call made to manually ack a message using storageGuid: %@", buf, 0xCu);
    }

    v38 = [(_IDSService *)self _sendingAccountForAccount:0];
    v10 = [v38 _internal];
    v11 = [v10 uniqueID];

    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_uniqueIDToConnection objectForKey:v11];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v4 wantsAppAck];
    v40 = [v4 outgoingResponseIdentifier];
    v39 = [v4 fromID];
    v14 = [v4 broadcastTime];

    if (v14)
    {
      v15 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v4 broadcastTime];
      [v18 doubleValue];
      v20 = [v15 numberWithDouble:v17 - v19];

      if (!v13)
      {
LABEL_16:
        if (v8 | v20)
        {
          v35 = [(_IDSService *)self daemonController];
          v27 = [v12 _internal];
          v28 = [v27 account];
          [v28 _internal];
          v29 = v37 = v11;
          [v29 uniqueID];
          v31 = v30 = v12;
          v32 = [v4 priority];
          [v35 acknowledgeMessageWithStorageGUID:v8 realGUID:v40 forAccountWithUniqueID:v31 broadcastTime:v20 messageSize:0 priority:v32 broadcastID:objc_msgSend(v4 connectionType:{"broadcastID"), objc_msgSend(v4, "connectionType")}];

          v12 = v30;
          v11 = v37;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v20 = 0;
      if (!v13)
      {
        goto LABEL_16;
      }
    }

    v34 = [v4 connectionType];
    v21 = [(_IDSService *)self daemonController];
    v22 = [v12 _internal];
    [v22 account];
    v23 = v36 = v12;
    v24 = [v23 _internal];
    [v24 uniqueID];
    v26 = v25 = v11;
    [v21 sendAppAckWithGUID:v40 toDestination:v39 forAccountWithUniqueID:v26 connectionType:v34];

    v11 = v25;
    v12 = v36;

    goto LABEL_16;
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C474();
  }

LABEL_19:

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)sendCertifiedDeliveryReceipt:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(_IDSService *)self _sendingAccountForAccount:0];
    v6 = [v5 _internal];
    v7 = [v6 pushTopic];

    v8 = [v4 service];
    v9 = [v7 isEqualToString:v8];

    v10 = +[IDSLogging _IDSService];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "sendCertifiedDeliveryReceipt passing context to daemon { context: %@ }", &v15, 0xCu);
      }

      v11 = [(_IDSService *)self daemonController];
      v12 = [v4 dictionaryRepresentation];
      [v11 sendCertifiedDeliveryReceipt:v12 serviceName:v7];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C4A8(v4);
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

- (BOOL)sendBatchMessageProcessedContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSLogging _IDSService];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "sendBatchMessageProcessedContext given context: %@", &v12, 0xCu);
    }

    v6 = [(_IDSService *)self _sendingAccountForAccount:0];
    v7 = [v6 _internal];
    v8 = [v7 pushTopic];

    v9 = [(_IDSService *)self daemonController];
    [v9 sendBatchMessageProcessedContext:v4 serviceName:v8];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_195B3C578();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

- (BOOL)noteMetricOfType:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = [(_IDSService *)self serviceProperties];
  v8 = [v7 identifier];

  if (!v8)
  {
    v10 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C684();
    }

    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v11 = [v6 timestampDictionary];

    if (!v11)
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
    if (a3)
    {
      v14 = +[IDSLogging _IDSService];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_195B3C614();
      }

      goto LABEL_15;
    }

    v9 = [v6 timestamp];

    if (!v9)
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

  v12 = [(_IDSService *)self daemonController];
  [v12 noteMetricOfType:a3 context:v6 serviceName:v8];

  v13 = 1;
LABEL_16:

  return v13;
}

- (void)_sendMissingMessageMetric:(id)a3
{
  v6 = a3;
  if ([v6 shouldReportMetric])
  {
    v4 = [v6 payload];
    v5 = [v6 command];
    [(_IDSService *)self sendServerMessage:v4 command:v5 fromAccount:0];
  }
}

- (id)datagramConnectionForSessionDestination:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(_IDSService *)self datagramConnectionForSessionDestination:v6 uid:getuid() error:a4];

  return v7;
}

- (id)datagramConnectionForSocketDescriptor:(int)a3 error:(id *)a4
{
  v5 = dup(a3);
  if (v5 == -1 || ([MEMORY[0x1E6977E18] connectionWithConnectedSocket:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v7 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)streamConnectionForSessionDestination:(id)a3 error:(id *)a4
{
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [v5 initWithObjectsAndKeys:{@"Unable to create stream connection with destination", *MEMORY[0x1E696A578], 0}];
  if (a4)
  {
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v6];
  }

  return 0;
}

- (id)streamConnectionForSocketDescriptor:(int)a3 error:(id *)a4
{
  v5 = dup(a3);
  if (v5 == -1 || ([MEMORY[0x1E6977E60] connectionWithConnectedSocket:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [v7 initWithObjectsAndKeys:{@"Unable to create datagram connection with destination", *MEMORY[0x1E696A578], 0}];
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (id)datagramChannelForSessionDestination:(id)a3 options:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [[IDSDatagramChannel alloc] initWithDestination:v7 options:v8];

  v10 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v7;
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
    if (a5)
    {
      *a5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v13];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)datagramChannelForSocketDescriptor:(int)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = dup(a3);
  if (v6 == -1)
  {
    goto LABEL_5;
  }

  v7 = [[IDSDatagramChannel alloc] initWithSocketDescriptor:v6];
  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v14 = a3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Creating datagram channel with socket %d => %@", buf, 0x12u);
  }

  if (!v7)
  {
LABEL_5:
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v10 = [v9 initWithObjectsAndKeys:{@"Unable to create datagram channel with socket descriptor", *MEMORY[0x1E696A578], 0}];
    if (a4)
    {
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v10];
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)performGroupTask:(id)a3
{
  v4 = a3;
  v5 = [(_IDSService *)self groupContextController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AD5A54;
  v7[3] = &unk_1E7442398;
  v8 = v4;
  v6 = v4;
  [v5 groupContextWithCompletion:v7];
}

- (void)scheduleTransactionLogTask:(id)a3
{
  v4 = a3;
  v5 = [(_IDSService *)self groupContextController];
  [v5 scheduleTransactionLogTask:v4];
}

- (void)connection:(id)a3 didHintCheckingTransportLogWithReason:(int64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a4;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "checkTransportLog {reason: %ld}", buf, 0xCu);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AD5BD0;
  v8[3] = &unk_1E7441E40;
  v8[4] = self;
  v8[5] = a4;
  [(_IDSService *)self _callDelegatesWithBlock:v8];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)groupContextController:(id)a3 didCreateGroup:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C6B8();
    }
  }

  v14 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AD5D70;
  v11[3] = &unk_1E74423C0;
  v12 = v5;
  v13 = 0;
  v9 = v5;
  [(_IDSService *)self sendAheadGroup:v9 priority:300 options:MEMORY[0x1E695E0F8] identifier:&v14 completion:v11];
  v10 = v14;
}

- (id)groupContextController:(id)a3 accountsForAlises:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C758();
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
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
        v11 = [(_IDSService *)self accounts];
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v25 + 1) + 8 * j);
              v17 = [v16 aliasStrings];
              v18 = [v17 containsObject:v10];

              if (v18)
              {
                [v8 setObject:v16 forKeyedSubscript:v10];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
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