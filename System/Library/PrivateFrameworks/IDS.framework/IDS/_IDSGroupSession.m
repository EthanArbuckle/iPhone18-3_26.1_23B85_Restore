@interface _IDSGroupSession
+ (id)keyValueDeliveryForSessionID:(id)a3;
- (NSString)uniqueID;
- (_IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5 delegateContext:(id)a6;
- (_IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5 delegateContext:(id)a6 delegate:(id)a7 queue:(id)a8;
- (unint64_t)_getParticipantIDForAliasFromCache:(unint64_t)a3 salt:(id)a4;
- (unsigned)sessionEndedReason;
- (void)_broadcastNewSessionToDaemon;
- (void)_callDelegateWithBlock:(id)a3;
- (void)_checkAndSendDataCryptor;
- (void)_cleanupSocketPairConnections;
- (void)_setupSession:(id)a3 destinations:(id)a4 options:(id)a5 delegateContext:(id)a6;
- (void)createAliasForLocalParticipantIDWithSalt:(id)a3 delegateQueueCompletionHandler:(id)a4;
- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5;
- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 delegateQueueCompletionHandler:(id)a5;
- (void)createSessionIDAliasWithSalt:(id)a3 delegateQueueCompletionHandler:(id)a4;
- (void)daemonDisconnected;
- (void)dealloc;
- (void)emptyXPCReply;
- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5;
- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 delegateQueueCompletionHandler:(id)a5;
- (void)groupSessionDidConnectUnderlyingLinks:(id)a3;
- (void)groupSessionDidDisconnectUnderlyingLinks:(id)a3;
- (void)groupSessionDidInitialize:(id)a3 error:(id)a4;
- (void)groupSessionDidTerminate:(id)a3;
- (void)groupSessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)invalidate;
- (void)joinWithOptions:(id)a3;
- (void)leaveGroupSessionWithOptions:(id)a3;
- (void)participantUpdatedForSession:(id)a3;
- (void)reconnectUPlusOneSession;
- (void)registerPluginWithOptions:(id)a3;
- (void)removeParticipantIDs:(id)a3;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4;
- (void)requestEncryptionKeyForParticipants:(id)a3;
- (void)requestURIsForParticipantIDs:(id)a3 completionHandler:(id)a4;
- (void)session:(id)a3 didCreateParticipantIDAlias:(unint64_t)a4 forParticipantID:(unint64_t)a5 salt:(id)a6;
- (void)session:(id)a3 didReceiveActiveLightweightParticipants:(id)a4 success:(BOOL)a5;
- (void)session:(id)a3 didReceiveActiveParticipants:(id)a4 success:(BOOL)a5;
- (void)session:(id)a3 didReceiveBlockedParticipantIDs:(id)a4 withCode:(unsigned int)a5 withType:(unsigned __int16)a6 isTruncated:(BOOL)a7;
- (void)session:(id)a3 didReceiveData:(id)a4 dataType:(unsigned __int16)a5 forParticipant:(id)a6;
- (void)session:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5;
- (void)session:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveKeyMaterial:(id)a4;
- (void)session:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveParticipantID:(unint64_t)a4 forParticipantIDAlias:(unint64_t)a5 salt:(id)a6;
- (void)session:(id)a3 didReceiveParticipantIDs:(id)a4 withCode:(unsigned int)a5 managementType:(unsigned __int16)a6;
- (void)session:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5;
- (void)session:(id)a3 didReceiveQueryBlockedParticipantIDs:(id)a4 withCode:(unsigned int)a5 isTruncated:(BOOL)a6;
- (void)session:(id)a3 didReceiveReport:(id)a4;
- (void)session:(id)a3 didReceiveServerErrorCode:(unsigned int)a4;
- (void)session:(id)a3 didReceiveURIsForParticipantIDs:(id)a4 withRequestID:(id)a5;
- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4;
- (void)session:(id)a3 didRemoveParticipantIDs:(id)a4 withCode:(unsigned int)a5 isTruncated:(BOOL)a6;
- (void)session:(id)a3 didUnregisterPluginAllocationInfo:(id)a4;
- (void)session:(id)a3 hasOutdatedSKI:(id)a4;
- (void)session:(id)a3 participantDidJoinGroupWithInfo:(id)a4;
- (void)session:(id)a3 participantDidLeaveGroupWithInfo:(id)a4;
- (void)session:(id)a3 rejectedKeyRecoveryRequestFromURI:(id)a4 reason:(unsigned int)a5;
- (void)session:(id)a3 shouldInvalidateKeyMaterialByKeyIndexes:(id)a4;
- (void)sessionDidJoinGroup:(id)a3 participantInfo:(id)a4 error:(id)a5;
- (void)sessionDidJoinGroup:(id)a3 participantUpdateDictionary:(id)a4 error:(id)a5;
- (void)sessionDidLeaveGroup:(id)a3 error:(id)a4;
- (void)sessionDidReceiveParticipantUpgrade:(id)a3 participantType:(unsigned __int16)a4 error:(id)a5;
- (void)sessionDidReceiveParticipantUpgrade:(id)a3 participantType:(unsigned __int16)a4 requestIdentifier:(unint64_t)a5 error:(id)a6;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setParticipantInfo:(id)a3;
- (void)setPreferences:(id)a3;
- (void)setRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)unregisterPluginWithOptions:(id)a3;
- (void)updateParticipantData:(id)a3 withContext:(id)a4;
- (void)updateParticipantInfo:(id)a3;
- (void)xpcObject:(id)a3 objectContext:(id)a4;
@end

@implementation _IDSGroupSession

- (_IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5 delegateContext:(id)a6
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
      sub_195B2BB14();
    }
  }

  v20.receiver = self;
  v20.super_class = _IDSGroupSession;
  v17 = [(_IDSGroupSession *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(_IDSGroupSession *)v17 _setupSession:v10 destinations:v11 options:v12 delegateContext:v13];
    [(_IDSGroupSession *)v18 _broadcastNewSessionToDaemon];
  }

  return v18;
}

- (_IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5 delegateContext:(id)a6 delegate:(id)a7 queue:(id)a8
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[IDSInternalQueueController sharedInstance];
  v21 = [v20 assertQueueIsCurrent];

  if (v21)
  {
    v22 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BBAC();
    }
  }

  v30.receiver = self;
  v30.super_class = _IDSGroupSession;
  v23 = [(_IDSGroupSession *)&v30 init];
  v24 = v23;
  if (v23)
  {
    [(_IDSGroupSession *)v23 _setupSession:v14 destinations:v15 options:v16 delegateContext:v17];
    v25 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v18;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "Initializing setting up session delegate %p", buf, 0xCu);
    }

    if (v24->_delegate != v18)
    {
      v26 = [MEMORY[0x1E6995700] weakRefWithObject:v18];
      delegate = v24->_delegate;
      v24->_delegate = v26;
    }

    objc_storeStrong(&v24->_queue, a8);
    [(_IDSGroupSession *)v24 _broadcastNewSessionToDaemon];
  }

  v28 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)_setupSession:(id)a3 destinations:(id)a4 options:(id)a5 delegateContext:(id)a6
{
  v92 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = *MEMORY[0x1E69A5160];
  v13 = a6;
  v14 = a3;
  v15 = [v11 objectForKey:v12];
  v16 = [v15 uppercaseString];

  v17 = [v11 objectForKey:*MEMORY[0x1E69A4D70]];
  stableGroupID = self->_stableGroupID;
  self->_stableGroupID = v17;

  v19 = [v11 objectForKey:*MEMORY[0x1E69A4D60]];
  v20 = [v19 uppercaseString];
  groupID = self->_groupID;
  self->_groupID = v20;

  v22 = [v16 length];
  v23 = v16;
  if (!v22)
  {
    v23 = self->_groupID;
  }

  objc_storeStrong(&self->_uniqueID, v23);
  v24 = [MEMORY[0x1E696AEC0] stringGUID];
  instanceID = self->_instanceID;
  self->_instanceID = v24;

  v26 = [v14 _internal];

  v27 = [v26 uniqueID];
  accountID = self->_accountID;
  self->_accountID = v27;

  v29 = [v11 objectForKey:*MEMORY[0x1E69A4D58]];
  fromID = self->_fromID;
  self->_fromID = v29;

  v31 = [MEMORY[0x1E69A5240] destinationWithDestinations:v10];
  v32 = [v31 destinationURIs];
  destinations = self->_destinations;
  self->_destinations = v32;

  v34 = [MEMORY[0x1E6995700] weakRefWithObject:v13];

  delegateContext = self->_delegateContext;
  self->_delegateContext = v34;

  v36 = [v11 objectForKey:*MEMORY[0x1E69A5158]];
  self->_transportType = [v36 integerValue];

  v37 = *MEMORY[0x1E69A4D48];
  v38 = [v11 objectForKey:*MEMORY[0x1E69A4D48]];
  if (v38)
  {
    v39 = [v11 objectForKey:v37];
    self->_isInitiator = [v39 BOOLValue];
  }

  else
  {
    self->_isInitiator = 1;
  }

  v40 = [v11 objectForKey:*MEMORY[0x1E69A50E0]];
  self->_connectionCountHint = [v40 unsignedIntegerValue];

  v41 = [v11 objectForKey:*MEMORY[0x1E69A5100]];
  self->_disallowCellularInterface = [v41 BOOLValue];

  v42 = [v11 objectForKey:*MEMORY[0x1E69A5108]];
  self->_disallowWifiInterface = [v42 BOOLValue];

  v43 = [v11 objectForKey:*MEMORY[0x1E69A5148]];
  self->_preferredAddressFamily = [v43 unsignedIntegerValue];

  v44 = [v11 objectForKey:*MEMORY[0x1E69A5140]];
  self->_preferCellularForCallSetup = [v44 BOOLValue];

  v45 = [v11 objectForKey:*MEMORY[0x1E69A50D8]];
  clientUUID = self->_clientUUID;
  self->_clientUUID = v45;

  self->_localParticipantID = 0;
  v47 = [v11 objectForKey:*MEMORY[0x1E69A4DB8]];
  if ([v47 BOOLValue])
  {
    v48 = 1;
  }

  else
  {
    v48 = IMGetDomainBoolForKey();
  }

  self->_startAsUPlusOneSession = v48;

  v49 = [v11 objectForKey:*MEMORY[0x1E69A4D50]];
  self->_isLightweightParticipant = [v49 BOOLValue];

  v50 = [v11 objectForKey:*MEMORY[0x1E69A4D38]];
  self->_callScreeningMode = [v50 BOOLValue];

  v51 = [v11 objectForKey:*MEMORY[0x1E69A50C8]];
  self->_alwaysSkipSelf = [v51 BOOLValue];

  v52 = [v11 objectForKey:*MEMORY[0x1E69A5520]];
  qrReason = self->_qrReason;
  self->_qrReason = v52;

  v54 = [v11 objectForKey:*MEMORY[0x1E69A5518]];
  previousError = self->_previousError;
  self->_previousError = v54;

  v56 = objc_alloc_init(IDSGroupEncryptionKeyMaterialCache);
  keyMaterialCache = self->_keyMaterialCache;
  self->_keyMaterialCache = v56;

  v58 = [MEMORY[0x1E695DF70] array];
  dataCryptorRequests = self->_dataCryptorRequests;
  self->_dataCryptorRequests = v58;

  v60 = [MEMORY[0x1E695DF90] dictionary];
  createParticipantIDAliasCallbacks = self->_createParticipantIDAliasCallbacks;
  self->_createParticipantIDAliasCallbacks = v60;

  v62 = [MEMORY[0x1E695DF90] dictionary];
  getParticipantIDForAliasCallbacks = self->_getParticipantIDForAliasCallbacks;
  self->_getParticipantIDForAliasCallbacks = v62;

  v64 = [MEMORY[0x1E695DF70] array];
  getParticipantIDForAliasDelegateQueueCallbacks = self->_getParticipantIDForAliasDelegateQueueCallbacks;
  self->_getParticipantIDForAliasDelegateQueueCallbacks = v64;

  activeParticipantCache = self->_activeParticipantCache;
  self->_activeParticipantCache = 0;

  activeLigthweightParticipantCache = self->_activeLigthweightParticipantCache;
  self->_activeLigthweightParticipantCache = 0;

  v68 = [MEMORY[0x1E695DFA8] set];
  activePluginsCache = self->_activePluginsCache;
  self->_activePluginsCache = v68;

  v70 = +[IDSDaemonController sharedInstance];
  v71 = [v70 listener];
  [v71 addHandler:self];

  v72 = [v11 mutableCopy];
  sessionConfig = self->_sessionConfig;
  self->_sessionConfig = v72;

  v74 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    v76 = self->_instanceID;
    v86 = 134218498;
    v87 = self;
    v88 = 2112;
    v89 = uniqueID;
    v90 = 2112;
    v91 = v76;
    _os_log_impl(&dword_1959FF000, v74, OS_LOG_TYPE_DEFAULT, "Initializing _IDSGroupSession { self: %p, uniqueID: %@, instanceID: %@ }", &v86, 0x20u);
  }

  if (self->_destinations)
  {
    v77 = [MEMORY[0x1E69A5240] destinationWithDestinations:v10];
    if (objc_opt_respondsToSelector())
    {
      v78 = [MEMORY[0x1E69A5240] destinationWithDestinations:v10];
      v79 = [v78 destinationLightweightStatus];
      destinationsLightweightStatus = self->_destinationsLightweightStatus;
      self->_destinationsLightweightStatus = v79;
    }

    [(NSMutableDictionary *)self->_sessionConfig removeObjectForKey:*MEMORY[0x1E69A4D68]];
  }

  v81 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isLightweightParticipant)
    {
      v82 = @"YES";
    }

    else
    {
      v82 = @"NO";
    }

    v84 = self->_destinationsLightweightStatus;
    v83 = self->_fromID;
    v86 = 138412802;
    v87 = v83;
    v88 = 2112;
    v89 = v82;
    v90 = 2112;
    v91 = v84;
    _os_log_impl(&dword_1959FF000, v81, OS_LOG_TYPE_DEFAULT, "_fromID: %@, _isLightweightParticipant: %@, _destinationsLightweightStatus: %@", &v86, 0x20u);
  }

  v85 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BC44();
    }
  }

  v6 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    instanceID = self->_instanceID;
    v11 = 134218498;
    v12 = self;
    v13 = 2112;
    v14 = uniqueID;
    v15 = 2112;
    v16 = instanceID;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating _IDSGroupSession { self: %p, uniqueID: %@, instanceID: %@ }", &v11, 0x20u);
  }

  self->_isInvalidated = 1;
  v9 = +[IDSDaemonController sharedInstance];
  [v9 cleanupSessionWithInstanceID:self->_instanceID];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    instanceID = self->_instanceID;
    *buf = 134218498;
    v16 = self;
    v17 = 2112;
    v18 = uniqueID;
    v19 = 2112;
    v20 = instanceID;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating _IDSGroupSession { self: %p, uniqueID: %@, instanceID: %@ }", buf, 0x20u);
  }

  if (!self->_isInvalidated)
  {
    v6 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BCDC(self);
    }

    v7 = +[IDSDaemonController sharedInstance];
    [v7 cleanupSessionWithInstanceID:self->_instanceID];
  }

  [(_IDSGroupSession *)self _cleanupSocketPairConnections];
  activeParticipantCache = self->_activeParticipantCache;
  self->_activeParticipantCache = 0;

  activeLigthweightParticipantCache = self->_activeLigthweightParticipantCache;
  self->_activeLigthweightParticipantCache = 0;

  activePluginsCache = self->_activePluginsCache;
  self->_activePluginsCache = 0;

  v11 = +[IDSDaemonController sharedInstance];
  v12 = [v11 listener];
  [v12 removeHandler:self];

  v14.receiver = self;
  v14.super_class = _IDSGroupSession;
  [(_IDSGroupSession *)&v14 dealloc];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)daemonDisconnected
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BD68();
    }
  }

  if ([(NSString *)self->_uniqueID length])
  {
    v6 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412290;
      v13 = uniqueID;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Disconnected from daemon, notifying client of groupSession %@", buf, 0xCu);
    }

    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [v8 initWithObjectsAndKeys:{@"IDSSessionEndedReasonComponentCrashed", *MEMORY[0x1E696A578], 0}];
    v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:13 userInfo:v9];
    [(_IDSGroupSession *)self groupSessionEnded:self->_uniqueID withReason:16 error:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_broadcastNewSessionToDaemon
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BE00();
    }
  }

  if (![(NSString *)self->_uniqueID length])
  {
    v6 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BE98();
    }
  }

  if (![(NSString *)self->_instanceID length])
  {
    v7 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BED4();
    }
  }

  if (![(NSString *)self->_accountID length])
  {
    v8 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BF10();
    }
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInitiator];
  if (v9)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5120], v9);
  }

  CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5128], MEMORY[0x1E695E118]);
  accountID = self->_accountID;
  if (accountID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50C0], accountID);
  }

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5160], uniqueID);
  }

  instanceID = self->_instanceID;
  if (instanceID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5118], instanceID);
  }

  stableGroupID = self->_stableGroupID;
  if (stableGroupID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A4D70], stableGroupID);
  }

  groupID = self->_groupID;
  if (groupID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A4D60], groupID);
  }

  fromID = self->_fromID;
  if (fromID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A4D58], fromID);
  }

  v16 = [(NSSet *)self->_destinations allObjects];
  if (v16)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50F0], v16);
  }

  destinationsLightweightStatus = self->_destinationsLightweightStatus;
  if (destinationsLightweightStatus)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50E8], destinationsLightweightStatus);
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  if (v18)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5158], v18);
  }

  v19 = +[IDSDaemonController sharedInstance];
  v20 = [v19 listenerID];

  if (v20)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50D0], v20);
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_connectionCountHint];
  if (v21)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50E0], v21);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsToWaitForPreConnectionData];
  if (v22)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5168], v22);
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_disallowCellularInterface];
  if (v23)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5100], v23);
  }

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_disallowWifiInterface];
  if (v24)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5108], v24);
  }

  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_preferredAddressFamily];
  if (v25)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5148], v25);
  }

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_preferCellularForCallSetup];
  if (v26)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5140], v26);
  }

  clientUUID = self->_clientUUID;
  if (clientUUID)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50D8], clientUUID);
  }

  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_alwaysSkipSelf];
  if (v28)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A50C8], v28);
  }

  qrReason = self->_qrReason;
  if (qrReason)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5520], qrReason);
  }

  previousError = self->_previousError;
  if (previousError)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A5518], previousError);
  }

  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_startAsUPlusOneSession];
  if (v31)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A4DB8], v31);
  }

  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLightweightParticipant];
  if (v32)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A4D50], v32);
  }

  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_callScreeningMode];
  if (v33)
  {
    CFDictionarySetValue(self->_sessionConfig, *MEMORY[0x1E69A4D38], v33);
  }

  v34 = +[IDSDaemonController sharedInstance];
  [v34 setupNewSessionWithConfiguration:self->_sessionConfig];

  sessionConfig = self->_sessionConfig;
  self->_sessionConfig = 0;
}

- (void)_callDelegateWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IDSInternalQueueController sharedInstance];
    v6 = [v5 assertQueueIsCurrent];

    if (v6)
    {
      v7 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_195B2BF4C();
      }
    }

    v8 = [(CUTWeakReference *)self->_delegate object];
    v9 = v8;
    queue = self->_queue;
    if (queue && v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_195A6391C;
      v11[3] = &unk_1E743F110;
      v13 = v4;
      v12 = v9;
      dispatch_async(queue, v11);
    }
  }
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BFE4();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = v6;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Setting up session delegate %p", &v16, 0xCu);
  }

  if (self->_delegate != v6)
  {
    v12 = [MEMORY[0x1E6995700] weakRefWithObject:v6];
    delegate = self->_delegate;
    self->_delegate = v12;
  }

  queue = self->_queue;
  self->_queue = v7;

  v15 = *MEMORY[0x1E69E9840];
}

- (NSString)uniqueID
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C07C();
    }
  }

  uniqueID = self->_uniqueID;

  return uniqueID;
}

- (void)_cleanupSocketPairConnections
{
  [(IDSBaseSocketPairConnection *)self->_unreliableSocketPairConnection endSession];
  unreliableSocketPairConnection = self->_unreliableSocketPairConnection;
  self->_unreliableSocketPairConnection = 0;
}

- (void)removeParticipantIDs:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C2DC();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 removeParticipantIDs:v4 forGroup:self->_groupID sessionID:self->_uniqueID];
}

- (void)updateParticipantData:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C374();
    }
  }

  v11 = +[IDSDaemonController sharedInstance];
  [v11 updateParticipantData:v7 forGroup:self->_groupID sessionID:self->_uniqueID withContext:v6];
}

- (void)updateParticipantInfo:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C40C();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 updateParticipantInfo:v4 forGroup:self->_groupID sessionID:self->_uniqueID];
}

- (void)setParticipantInfo:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C4A4();
    }
  }

  participantInfo = self->_participantInfo;
  self->_participantInfo = v4;
}

- (void)joinWithOptions:(id)a3
{
  v59[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C72C();
    }
  }

  if (self->_state != 2)
  {
    v11 = [(_IDSGroupSession *)self uniqueID];
    v12 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v57 = v11;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "joinWithOptions called %@", buf, 0xCu);
    }

    v13 = [(NSString *)v11 copy];
    v14 = [(NSDictionary *)v4 description];
    v51[1] = MEMORY[0x1E69E9820];
    v51[2] = 3221225472;
    v51[3] = sub_195A654D4;
    v51[4] = &unk_1E743EA30;
    v15 = v13;
    v52 = v15;
    v16 = v14;
    v53 = v16;
    cut_dispatch_log_queue();
    v17 = [(NSDictionary *)v4 mutableCopy];
    v18 = *MEMORY[0x1E69A4D88];
    v19 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69A4D88]];

    v20 = v4;
    if (!v19)
    {
      participantInfo = self->_participantInfo;
      if (!participantInfo || ([(NSDictionary *)participantInfo objectForKey:v18], v43 = objc_claimAutoreleasedReturnValue(), v43, !v43))
      {
        v44 = +[IDSLogging _IDSGroupSession];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "Cannot join a session without the participant data information.", buf, 2u);
        }

        v45 = MEMORY[0x1E696ABC0];
        v54 = *MEMORY[0x1E696A278];
        v55 = @"Cannot join a session without the participant data information.";
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v37 = [v45 errorWithDomain:@"joinGroupSessionError" code:-1000 userInfo:v46];

        [(_IDSGroupSession *)self sessionDidJoinGroup:self->_uniqueID participantInfo:0 error:v37];
        goto LABEL_34;
      }

      v20 = self->_participantInfo;
    }

    v21 = [(NSDictionary *)v20 objectForKey:v18];
    [v17 setObject:v21 forKeyedSubscript:v18];

    v22 = *MEMORY[0x1E69A4DA0];
    v23 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69A4DA0]];

    if (v23)
    {
      v24 = [(NSDictionary *)v4 objectForKey:v22];
      [v17 setObject:v24 forKeyedSubscript:v22];
    }

    v25 = *MEMORY[0x1E69A4DB8];
    v26 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69A4DB8]];
    if ([v26 BOOLValue])
    {
      v27 = 1;
    }

    else
    {
      v27 = IMGetDomainBoolForKey();
    }

    self->_startAsUPlusOneSession = v27;

    v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_startAsUPlusOneSession];
    [v17 setObject:v28 forKeyedSubscript:v25];

    v29 = *MEMORY[0x1E69A4D38];
    v30 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69A4D38]];
    self->_callScreeningMode = [v30 BOOLValue];

    if (IMGetDomainBoolForKeyWithDefaultValue())
    {
      v31 = +[IDSLogging _IDSGroupSession];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = self->_uniqueID;
        *buf = 138412290;
        v57 = uniqueID;
        _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "Force callScreening mode on for session: %@, due to default.", buf, 0xCu);
      }

      self->_callScreeningMode = 1;
      objc_initWeak(buf, self);
      v33 = dispatch_time(0, 20000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A65590;
      block[3] = &unk_1E743EE18;
      objc_copyWeak(v51, buf);
      dispatch_after(v33, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(v51);
      objc_destroyWeak(buf);
    }

    if (self->_callScreeningMode)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v17 setObject:v34 forKeyedSubscript:v29];
    }

    v35 = *MEMORY[0x1E69A4D40];
    v36 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E69A4D40]];
    v37 = v36;
    if (v36)
    {
      v38 = [v36 UUIDString];
      [v17 setObject:v38 forKey:v35];
    }

    v39 = *MEMORY[0x1E69A4DC8];
    v40 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x1E69A4DC8]];
    if (v40)
    {
      [v17 setObject:v40 forKey:v39];
    }

    [v17 removeObjectForKey:*MEMORY[0x1E69A4D68]];
    v41 = +[IDSDaemonController sharedInstance];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_195A65658;
    v48[3] = &unk_1E743FF10;
    v48[4] = self;
    v49 = v17;
    [v41 forwardMethodWithReplyIsSync:0 block:v48];

LABEL_34:
    goto LABEL_35;
  }

  v8 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Cannot join a session that is already ended, ignoring...", buf, 2u);
  }

  v9 = MEMORY[0x1E696ABC0];
  v58 = *MEMORY[0x1E696A278];
  v59[0] = @"Cannot join a session that is already ended.";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
  v11 = [v9 errorWithDomain:@"joinGroupSessionError" code:-1000 userInfo:v10];

  [(_IDSGroupSession *)self sessionDidJoinGroup:self->_uniqueID participantInfo:0 error:v11];
LABEL_35:

  v47 = *MEMORY[0x1E69E9840];
}

- (void)leaveGroupSessionWithOptions:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C7C4();
    }
  }

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(_IDSGroupSession *)self uniqueID];
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "leaveGroupSessionWithOptions called %@", &v12, 0xCu);
  }

  v10 = +[IDSDaemonController sharedInstance];
  [v10 leaveGroupSession:self->_uniqueID participantInfo:self->_participantInfo options:v4];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reconnectUPlusOneSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C85C();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 reconnectSessionWithUniqueID:self->_uniqueID];
}

- (void)setPreferences:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2C8F4();
    }
  }

  if (self->_preferences != v4)
  {
    v8 = [(NSMutableDictionary *)v4 mutableCopy];
    preferences = self->_preferences;
    self->_preferences = v8;

    v10 = +[IDSDaemonController sharedInstance];
    [v10 setPreferences:v4 forSessionWithUniqueID:self->_uniqueID];
  }
}

- (void)setRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
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
      sub_195B2C98C();
    }
  }

  requiredCapabilities = self->_requiredCapabilities;
  self->_requiredCapabilities = v6;
  v12 = v6;

  requiredLackOfCapabilities = self->_requiredLackOfCapabilities;
  self->_requiredLackOfCapabilities = v7;
  v14 = v7;

  v15 = +[IDSDaemonController sharedInstance];
  v16 = [(NSSet *)v12 allObjects];
  v17 = [(NSSet *)v14 allObjects];
  [v15 setRequiredCapabilities:v16 requiredLackOfCapabilities:v17 forSessionWithUniqueID:self->_uniqueID];
}

- (unsigned)sessionEndedReason
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CA24();
    }
  }

  return self->_sessionEndedReason;
}

- (void)requestActiveParticipants
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CABC();
    }
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 requestActiveParticipantsForGroupSession:self->_uniqueID];
}

- (void)requestURIsForParticipantIDs:(id)a3 completionHandler:(id)a4
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
      sub_195B2CB54();
    }
  }

  if (!v6 || ![v6 count])
  {
    v11 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "requestURIsForParticipantIDs: request has no participants.", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A65EC4;
    block[3] = &unk_1E743E850;
    v31 = v7;
    dispatch_async(queue, block);
  }

  if (self->_isInvalidated)
  {
    v13 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "GroupSession is invalidated.", buf, 2u);
    }

    v14 = self->_queue;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = sub_195A65FA8;
    v28 = &unk_1E743E850;
    v29 = v7;
    dispatch_async(v14, &v25);
  }

  if (!self->_URIsToParticipantIDRequests)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    URIsToParticipantIDRequests = self->_URIsToParticipantIDRequests;
    self->_URIsToParticipantIDRequests = Mutable;
  }

  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = self->_URIsToParticipantIDRequests;
  v19 = MEMORY[0x19A8BBEF0](v7);
  [(NSMutableDictionary *)v18 setObject:v19 forKey:v17];

  v20 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v6 count];
    v22 = [(NSMutableDictionary *)self->_URIsToParticipantIDRequests count];
    *buf = 138412802;
    v33 = v17;
    v34 = 2048;
    v35 = v21;
    v36 = 2048;
    v37 = v22;
    _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "requestURIsForParticipantIDs {id:%@, participant count:%lu, total requests :%lu}", buf, 0x20u);
  }

  v23 = +[IDSDaemonController sharedInstance];
  [v23 requestURIsForParticipantIDs:v6 withRequestID:v17 forGroupSession:self->_uniqueID];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)registerPluginWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CBEC();
    }
  }

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A4DA8]];
  if (!v8)
  {
    sub_195B2CC84();
  }

  v9 = +[IDSDaemonController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A661C0;
  v11[3] = &unk_1E743FF10;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 forwardMethodWithReplyIsSync:0 block:v11];
}

- (void)unregisterPluginWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CCB0();
    }
  }

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A4DA8]];
  if (!v8)
  {
    sub_195B2CD48();
  }

  v9 = +[IDSDaemonController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A66304;
  v11[3] = &unk_1E743FF10;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 forwardMethodWithReplyIsSync:0 block:v11];
}

- (void)requestEncryptionKeyForParticipants:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CD74();
    }
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 requestEncryptionKeyForGroup:self->_uniqueID participants:v4];
}

- (void)_checkAndSendDataCryptor
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CE0C();
    }
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  keyMaterialCache = self->_keyMaterialCache;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_195A6685C;
  v35[3] = &unk_1E7440938;
  v35[4] = &v36;
  [(IDSGroupEncryptionKeyMaterialCache *)keyMaterialCache enumerateCachedKeyMaterialUsingBlock:v35];
  if ((v37[3] & 1) == 0)
  {
    p_super = +[IDSLogging _IDSGroupSession];
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v23 = "No local key material found. Skip completion handler udpate.";
LABEL_23:
    _os_log_impl(&dword_1959FF000, p_super, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    goto LABEL_24;
  }

  if (![(NSMutableArray *)self->_dataCryptorRequests count])
  {
    p_super = +[IDSLogging _IDSGroupSession];
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v23 = "No completion handlers detected inside _dataCryptorRequests.";
    goto LABEL_23;
  }

  v7 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSMutableArray *)self->_dataCryptorRequests count];
    *buf = 134217984;
    v42 = v8;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Updating %lu completion handlers in _dataCryptorRequests", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_dataCryptorRequests;
  v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 first];
        v14 = [v12 second];
        v15 = [v13 dataUsingEncoding:4];
        v16 = [objc_alloc(MEMORY[0x1E69A5280]) initWithEncryptionContext:v15 encryptionKeySize:32];
        v17 = self->_keyMaterialCache;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_195A668A0;
        v29[3] = &unk_1E7440960;
        v18 = v16;
        v30 = v18;
        [(IDSGroupEncryptionKeyMaterialCache *)v17 enumerateCachedKeyMaterialUsingBlock:v29];
        v19 = [[IDSGroupSessionDataCryptor alloc] initWithTopic:v13 keyManager:v18];
        queue = self->_queue;
        if (queue)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A668AC;
          block[3] = &unk_1E743F110;
          v28 = v14;
          v27 = v19;
          dispatch_async(queue, block);
        }
      }

      v9 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v9);
  }

  v21 = [MEMORY[0x1E695DF70] array];
  p_super = &self->_dataCryptorRequests->super.super;
  self->_dataCryptorRequests = v21;
LABEL_24:

  _Block_object_dispose(&v36, 8);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4
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
      sub_195B2CEA8();
    }
  }

  if (!v6 || ![v6 length])
  {
    v11 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "requestDataCryptorForTopic: topic is empty!", buf, 2u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A66B58;
    block[3] = &unk_1E743E850;
    v28 = v7;
    dispatch_async(queue, block);
  }

  if (self->_isInvalidated)
  {
    v13 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "GroupSession is invalidated.", buf, 2u);
    }

    v14 = self->_queue;
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = sub_195A66B6C;
    v25 = &unk_1E743E850;
    v26 = v7;
    dispatch_async(v14, &v22);
  }

  dataCryptorRequests = self->_dataCryptorRequests;
  if (!dataCryptorRequests)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = self->_dataCryptorRequests;
    self->_dataCryptorRequests = v16;

    dataCryptorRequests = self->_dataCryptorRequests;
  }

  v18 = MEMORY[0x1E69A6128];
  v19 = [v6 copy];
  v20 = MEMORY[0x19A8BBEF0](v7);
  v21 = [v18 pairWithFirst:v19 second:v20];
  [(NSMutableArray *)dataCryptorRequests addObject:v21];

  [(_IDSGroupSession *)self _checkAndSendDataCryptor];
}

- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E69A6128];
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = a4;
  v12 = [v9 numberWithUnsignedLongLong:a3];
  v15 = [v8 pairWithFirst:v12 second:v11];

  v13 = MEMORY[0x19A8BBEF0](v10);
  [(NSMutableDictionary *)self->_createParticipantIDAliasCallbacks setObject:v13 forKeyedSubscript:v15];

  v14 = +[IDSDaemonController sharedInstance];
  [v14 createAliasForParticipantID:a3 salt:v11 sessionID:self->_uniqueID];
}

- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E69A6128];
  v9 = MEMORY[0x1E696AD98];
  v10 = a5;
  v11 = a4;
  v12 = [v9 numberWithUnsignedLongLong:a3];
  v15 = [v8 pairWithFirst:v12 second:v11];

  v13 = MEMORY[0x19A8BBEF0](v10);
  [(NSMutableDictionary *)self->_getParticipantIDForAliasCallbacks setObject:v13 forKeyedSubscript:v15];

  v14 = +[IDSDaemonController sharedInstance];
  [v14 getParticipantIDForAlias:a3 salt:v11 sessionID:self->_uniqueID];
}

- (void)createSessionIDAliasWithSalt:(id)a3 delegateQueueCompletionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CF40();
    }
  }

  uniqueID = self->_uniqueID;
  v12 = IDSIDAliasHashUUIDString();
  v13 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_uniqueID;
    *buf = 138412802;
    v23 = v12;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "createSessionIDAliasWithSalt(async) created %@ from %@ and %@", buf, 0x20u);
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A66F48;
  v19[3] = &unk_1E743F110;
  v20 = v12;
  v21 = v7;
  v16 = v12;
  v17 = v7;
  dispatch_async(queue, v19);

  v18 = *MEMORY[0x1E69E9840];
}

- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 delegateQueueCompletionHandler:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2CFD8();
    }
  }

  v13 = IDSIDAliasHashUInt64();
  v14 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v22 = v13;
    v23 = 2048;
    v24 = a3;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID(async) created %llu from %llu and %@", buf, 0x20u);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A6711C;
  v18[3] = &unk_1E7440988;
  v19 = v9;
  v20 = v13;
  v16 = v9;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)createAliasForLocalParticipantIDWithSalt:(id)a3 delegateQueueCompletionHandler:(id)a4
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
      sub_195B2D070();
    }
  }

  localParticipantID = self->_localParticipantID;
  v12 = IDSIDAliasHashUInt64();
  v13 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = self->_localParticipantID;
    *buf = 134218498;
    v22 = v12;
    v23 = 2048;
    v24 = v14;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "createAliasForLocalParticipantIDWithSalt(async) created %llu from %llu and %@", buf, 0x20u);
  }

  queue = self->_queue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A672F0;
  v18[3] = &unk_1E7440988;
  v19 = v7;
  v20 = v12;
  v16 = v7;
  dispatch_async(queue, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_getParticipantIDForAliasFromCache:(unint64_t)a3 salt:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] set];
  [v7 unionSet:self->_activeParticipantCache];
  [v7 unionSet:self->_activeLigthweightParticipantCache];
  v8 = [(NSMutableSet *)self->_activePluginsCache copy];
  [v7 unionSet:v8];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v7 && [v7 count])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A6744C;
    v11[3] = &unk_1E74409B0;
    v12 = v6;
    v13 = &v15;
    v14 = a3;
    [v7 enumerateObjectsUsingBlock:v11];
  }

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 delegateQueueCompletionHandler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D108();
    }
  }

  v13 = [(_IDSGroupSession *)self _getParticipantIDForAliasFromCache:a3 salt:v8];
  if (v13)
  {
    v14 = v13;
    queue = self->_queue;
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = sub_195A677AC;
    v32 = &unk_1E7440988;
    v33 = v9;
    v34 = v14;
    dispatch_async(queue, &v29);
    v16 = [IDSLogging _IDSGroupSession:v29];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
      *buf = 138412546;
      v36 = v17;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "getParticipantIDForAlias(cache) found matching participant %@ for alias %@", buf, 0x16u);
    }

    v19 = v33;
  }

  else
  {
    v20 = MEMORY[0x1E69A6128];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v19 = [v20 pairWithFirst:v21 second:v8];

    v22 = MEMORY[0x1E69A6128];
    v23 = MEMORY[0x19A8BBEF0](v9);
    v24 = [v22 pairWithFirst:v19 second:v23];

    [(NSMutableArray *)self->_getParticipantIDForAliasDelegateQueueCallbacks addObject:v24];
    v25 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      getParticipantIDForAliasDelegateQueueCallbacks = self->_getParticipantIDForAliasDelegateQueueCallbacks;
      *buf = 138412546;
      v36 = v19;
      v37 = 2112;
      v38 = getParticipantIDForAliasDelegateQueueCallbacks;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "getParticipantIDForAlias(async) added %@ to %@", buf, 0x16u);
    }

    v27 = +[IDSDaemonController sharedInstance];
    [v27 getParticipantIDForAlias:a3 salt:v8 sessionID:self->_uniqueID];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveReport:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D1A0();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v6;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Session %@ received report", buf, 0xCu);
  }

  v12 = [(NSString *)v6 copy];
  v13 = [v7 description];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = sub_195A67DD4;
  v24 = &unk_1E743EA30;
  v14 = v12;
  v25 = v14;
  v15 = v13;
  v26 = v15;
  cut_dispatch_log_queue();
  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A67E90;
    v19[3] = &unk_1E74409D8;
    v19[4] = self;
    v20 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v19];
  }

  else
  {
    v16 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v28 = uniqueID;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveReport, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)groupSessionDidInitialize:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D238();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A680C8;
    v14[3] = &unk_1E74409D8;
    v14[4] = self;
    v15 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v14];
  }

  else
  {
    v11 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v17 = self;
      v18 = 2112;
      v19 = uniqueID;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring sessionDidJoinGroup {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)groupSessionDidTerminate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D2D0();
    }
  }

  v8 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v4];
  v9 = +[IDSLogging _IDSGroupSession];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Group session %@ was terminated", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A68310;
    v13[3] = &unk_1E7440A00;
    v13[4] = self;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v13];
  }

  else
  {
    if (v10)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v15 = uniqueID;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring group session termination, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)groupSessionDidConnectUnderlyingLinks:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D368();
    }
  }

  v8 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v4];
  v9 = +[IDSLogging _IDSGroupSession];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "groupSessionDidConnectUnderlyingLinks:%@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A68554;
    v13[3] = &unk_1E7440A00;
    v13[4] = self;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v13];
  }

  else
  {
    if (v10)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v15 = uniqueID;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring group session termination, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)groupSessionDidDisconnectUnderlyingLinks:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D400();
    }
  }

  v8 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v4];
  v9 = +[IDSLogging _IDSGroupSession];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "groupSessionDidDisconnectUnderlyingLinks:%@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A68798;
    v13[3] = &unk_1E7440A00;
    v13[4] = self;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v13];
  }

  else
  {
    if (v10)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v15 = uniqueID;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring group session termination, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)groupSessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D498();
    }
  }

  v13 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Group session ended %@ with error: %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v8]& 1) != 0)
  {
    [(_IDSGroupSession *)self _cleanupSocketPairConnections];
    self->_state = 2;
    if (a4 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a4;
    }

    self->_sessionEndedReason = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195A68A48;
    v18[3] = &unk_1E7440A28;
    v18[4] = self;
    v20 = a4;
    v19 = v9;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    v15 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring group session ended, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidJoinGroup:(id)a3 participantInfo:(id)a4 error:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
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
      sub_195B2D530();
    }
  }

  self->_state = 1;
  v14 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v8;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Did join group session %@", buf, 0xCu);
  }

  v15 = [(_IDSGroupSession *)v8 copy];
  v16 = [v9 description];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = sub_195A68DA0;
  v28 = &unk_1E743EA30;
  v17 = v15;
  v29 = v17;
  v18 = v16;
  v30 = v18;
  cut_dispatch_log_queue();
  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v8]& 1) != 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_195A68E5C;
    v22[3] = &unk_1E7440A50;
    v22[4] = self;
    v23 = v9;
    v24 = v10;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v22];
  }

  else
  {
    v19 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v32 = self;
      v33 = 2112;
      v34 = uniqueID;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring sessionDidJoinGroup {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidJoinGroup:(id)a3 participantUpdateDictionary:(id)a4 error:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
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
      sub_195B2D5C8();
    }
  }

  self->_state = 1;
  v14 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Did join group session %@, participantUpdate %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v8]& 1) != 0)
  {
    v15 = [(NSString *)v9 objectForKey:@"IDSGroupSessionParticipantUpdateParticipantIdentifierKey"];
    v16 = v15;
    if (v15)
    {
      self->_localParticipantID = [v15 unsignedLongLongValue];
      v17 = +[IDSLogging _IDSGroupSession];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        localParticipantID = self->_localParticipantID;
        *buf = 134217984;
        v27 = localParticipantID;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Received localParticipantID: %llu", buf, 0xCu);
      }
    }

    v19 = [objc_alloc(MEMORY[0x1E69A52A0]) initWithDictionaryRepresentation:v9];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A691B8;
    v23[3] = &unk_1E7440A50;
    v23[4] = self;
    v24 = v19;
    v25 = v10;
    v20 = v19;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v23];
  }

  else
  {
    v16 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v27 = self;
      v28 = 2112;
      v29 = uniqueID;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring sessionDidJoinGroup {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidLeaveGroup:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D660();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Did leave group session %@", buf, 0xCu);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A69564;
    v15[3] = &unk_1E74409D8;
    v15[4] = self;
    v16 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v15];
  }

  else
  {
    v12 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v18 = self;
      v19 = 2112;
      v20 = uniqueID;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring sessionDidLeaveGroup {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 participantDidJoinGroupWithInfo:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D6F8();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "ParticipantDidJoin group session %@, participantInfo %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A697FC;
    v15[3] = &unk_1E74409D8;
    v15[4] = self;
    v16 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v15];
  }

  else
  {
    v12 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v18 = self;
      v19 = 2112;
      v20 = uniqueID;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring participantDidJoinGroupWithInfo {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 participantDidLeaveGroupWithInfo:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D790();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "ParticipantDidLeave group session %@, participantInfo %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A69A94;
    v15[3] = &unk_1E74409D8;
    v15[4] = self;
    v16 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v15];
  }

  else
  {
    v12 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v18 = self;
      v19 = 2112;
      v20 = uniqueID;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring participantDidLeaveGroupWithInfo {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveActiveParticipants:(id)a4 success:(BOOL)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D828();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v8]& 1) != 0)
  {
    v33 = self;
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = [MEMORY[0x1E695DFA8] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v34 = v9;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [objc_alloc(MEMORY[0x1E69A5290]) initWithDictionaryRepresentation:*(*(&v44 + 1) + 8 * i)];
          [v13 addObject:v20];
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v20, "participantIdentifier")}];
          [v14 addObject:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v17);
    }

    v22 = [v14 copy];
    activeParticipantCache = v33->_activeParticipantCache;
    v33->_activeParticipantCache = v22;

    v24 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v13 count];
      *buf = 134218242;
      v50 = v25;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "didReceiveActiveParticipants: count %lu for group session: %@", buf, 0x16u);
    }

    v26 = [v13 description];
    v27 = [(NSString *)v8 copy];
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = sub_195A69F28;
    v41 = &unk_1E743EA30;
    v42 = v26;
    v43 = v27;
    v28 = v27;
    v29 = v26;
    cut_dispatch_log_queue();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_195A69FE4;
    v35[3] = &unk_1E7440A78;
    v35[4] = v33;
    v36 = v13;
    v37 = a5;
    v30 = v13;
    [(_IDSGroupSession *)v33 _callDelegateWithBlock:v35];

    v9 = v34;
  }

  else
  {
    v14 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v50 = self;
      v51 = 2112;
      v52 = uniqueID;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveActiveParticipants {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveActiveLightweightParticipants:(id)a4 success:(BOOL)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2D8C0();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v8]& 1) != 0)
  {
    v33 = self;
    v13 = [MEMORY[0x1E695DF70] array];
    v14 = [MEMORY[0x1E695DFA8] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v34 = v9;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [objc_alloc(MEMORY[0x1E69A5290]) initWithDictionaryRepresentation:*(*(&v44 + 1) + 8 * i)];
          [v13 addObject:v20];
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v20, "participantIdentifier")}];
          [v14 addObject:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v17);
    }

    v22 = [v14 copy];
    activeLigthweightParticipantCache = v33->_activeLigthweightParticipantCache;
    v33->_activeLigthweightParticipantCache = v22;

    v24 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v13 count];
      *buf = 134218242;
      v50 = v25;
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "didReceiveActiveLightweightParticipants: count %lu for group session: %@", buf, 0x16u);
    }

    v26 = [v13 description];
    v27 = [(NSString *)v8 copy];
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = sub_195A6A47C;
    v41 = &unk_1E743EA30;
    v42 = v26;
    v43 = v27;
    v28 = v27;
    v29 = v26;
    cut_dispatch_log_queue();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_195A6A538;
    v35[3] = &unk_1E7440A78;
    v35[4] = v33;
    v36 = v13;
    v37 = a5;
    v30 = v13;
    [(_IDSGroupSession *)v33 _callDelegateWithBlock:v35];

    v9 = v34;
  }

  else
  {
    v14 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v50 = self;
      v51 = 2112;
      v52 = uniqueID;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveActiveLightweightParticipants {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didRegisterPluginAllocationInfo:(id)a4
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
      sub_195B2D958();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "didRegisterPluginAllocationInfo for session: %@, sessionInfo: %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    activePluginsCache = self->_activePluginsCache;
    if (!activePluginsCache)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = self->_activePluginsCache;
      self->_activePluginsCache = v13;

      activePluginsCache = self->_activePluginsCache;
    }

    v15 = [(NSString *)v7 objectForKeyedSubscript:*MEMORY[0x1E69A4D98]];
    [(NSMutableSet *)activePluginsCache addObject:v15];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A6A824;
    v19[3] = &unk_1E74409D8;
    v19[4] = self;
    v20 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v19];
  }

  else
  {
    v16 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v22 = self;
      v23 = 2112;
      v24 = uniqueID;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring didRegisterPluginAllocationInfo {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didUnregisterPluginAllocationInfo:(id)a4
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
      sub_195B2D9F0();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "didUnregisterPluginAllocationInfo for session: %@, sessionInfo: %@", buf, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) != 0)
  {
    activePluginsCache = self->_activePluginsCache;
    if (!activePluginsCache)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = self->_activePluginsCache;
      self->_activePluginsCache = v13;

      activePluginsCache = self->_activePluginsCache;
    }

    v15 = [(NSString *)v7 objectForKeyedSubscript:*MEMORY[0x1E69A4D98]];
    [(NSMutableSet *)activePluginsCache removeObject:v15];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A6AB0C;
    v19[3] = &unk_1E74409D8;
    v19[4] = self;
    v20 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v19];
  }

  else
  {
    v16 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v22 = self;
      v23 = 2112;
      v24 = uniqueID;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring didUnregisterPluginAllocationInfo {self:%p, _uniqueID:%@, identifier:%@}", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveBlockedParticipantIDs:(id)a4 withCode:(unsigned int)a5 withType:(unsigned __int16)a6 isTruncated:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DA88();
    }
  }

  v17 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v12];
  v18 = +[IDSLogging _IDSGroupSession];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = @"NO";
      *buf = 138413314;
      v29 = v12;
      if (v7)
      {
        v20 = @"YES";
      }

      v30 = 1024;
      *v31 = a5;
      *&v31[4] = 1024;
      *&v31[6] = v8;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Group session %@ code: %u, type: %u, isTruncated: %@, didReceiveBlockedParticipantIDs: %@", buf, 0x2Cu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A6ADDC;
    v23[3] = &unk_1E7440AA0;
    v23[4] = self;
    v24 = v13;
    v25 = a5;
    v26 = v8;
    v27 = v7;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v23];
  }

  else
  {
    if (v19)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v29 = uniqueID;
      v30 = 2112;
      *v31 = v12;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveBlockedParticipantIDs, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveQueryBlockedParticipantIDs:(id)a4 withCode:(unsigned int)a5 isTruncated:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DB20();
    }
  }

  v15 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v10];
  v16 = +[IDSLogging _IDSGroupSession];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = @"NO";
      *buf = 138413058;
      v27 = 1024;
      v26 = v10;
      if (v6)
      {
        v18 = @"YES";
      }

      *v28 = a5;
      *&v28[4] = 2112;
      *&v28[6] = v18;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Group session %@ code: %u, isTruncated: %@, didReceiveQueryBlockedParticipantIDs: %@", buf, 0x26u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A6B0EC;
    v21[3] = &unk_1E7440AC8;
    v21[4] = self;
    v22 = v11;
    v23 = a5;
    v24 = v6;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v21];
  }

  else
  {
    if (v17)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v26 = uniqueID;
      v27 = 2112;
      *v28 = v10;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveQueryBlockedParticipantIDs, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didRemoveParticipantIDs:(id)a4 withCode:(unsigned int)a5 isTruncated:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DBB8();
    }
  }

  v15 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v10];
  v16 = +[IDSLogging _IDSGroupSession];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = @"NO";
      *buf = 138413058;
      v27 = 1024;
      v26 = v10;
      if (v6)
      {
        v18 = @"YES";
      }

      *v28 = a5;
      *&v28[4] = 2112;
      *&v28[6] = v18;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Group session %@ code: %u, isTruncated: %@, didRemoveParticipantIDs: %@", buf, 0x26u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A6B3B4;
    v21[3] = &unk_1E7440AC8;
    v21[4] = self;
    v22 = v11;
    v23 = a5;
    v24 = v6;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v21];
  }

  else
  {
    if (v17)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v26 = uniqueID;
      v27 = 2112;
      *v28 = v10;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring group session didRemoveParticipantIDs, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 rejectedKeyRecoveryRequestFromURI:(id)a4 reason:(unsigned int)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DC50();
    }
  }

  v13 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 1024;
    v24 = a5;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Group session %@ rejectedKeyRecoveryRequestFromURI: %@, reason: %u", buf, 0x1Cu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A6B5E8;
  v16[3] = &unk_1E7440A28;
  v16[4] = self;
  v17 = v9;
  v18 = a5;
  v14 = v9;
  [(_IDSGroupSession *)self _callDelegateWithBlock:v16];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveKeyMaterial:(id)a4
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
      sub_195B2DCE8();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) == 0)
  {
    v12 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 134218498;
      v34 = self;
      v35 = 2112;
      v36 = uniqueID;
      v37 = 2112;
      v38 = v6;
      v22 = "Ignoring group session didReceiveKeyMaterial {self:%p, _uniqueID:%@, identifier:%@}";
      v23 = v12;
      v24 = 32;
LABEL_21:
      _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
    }

LABEL_22:

    goto LABEL_23;
  }

  keyMaterialCache = self->_keyMaterialCache;
  v12 = +[IDSLogging _IDSGroupSession];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!keyMaterialCache)
  {
    if (v13)
    {
      v25 = self->_uniqueID;
      *buf = 138412290;
      v34 = v25;
      v22 = "Can't store key material for session %@";
      v23 = v12;
      v24 = 12;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v13)
  {
    *buf = 138412546;
    v34 = v6;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Group session %@ didReceiveKeyMaterial SKM: %@", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v7;
  v15 = [(NSString *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = self->_keyMaterialCache;
        v20 = [objc_alloc(MEMORY[0x1E69A5288]) initWithDictionary:*(*(&v28 + 1) + 8 * i)];
        [(IDSGroupEncryptionKeyMaterialCache *)v19 recvKeyMaterial:v20];
      }

      v16 = [(NSString *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_195A6B988;
  v27[3] = &unk_1E7440A00;
  v27[4] = self;
  [(_IDSGroupSession *)self _callDelegateWithBlock:v27];
  [(_IDSGroupSession *)self _checkAndSendDataCryptor];
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 shouldInvalidateKeyMaterialByKeyIndexes:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DD80();
    }
  }

  v11 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID = self->_uniqueID;
    v21 = 138412546;
    v22 = uniqueID;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "shouldInvalidateKeyMaterialByKeyIndexes for session %@, expiredKeyIndexes: %@", &v21, 0x16u);
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v6]& 1) == 0)
  {
    v14 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_uniqueID;
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = v6;
      v16 = "Ignoring group session shouldInvalidateKeyMaterialByKeyIndexes, session doesn't match %@ vs. %@";
      v17 = v14;
      v18 = 22;
LABEL_14:
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
    }

LABEL_15:

    goto LABEL_16;
  }

  keyMaterialCache = self->_keyMaterialCache;
  if (!keyMaterialCache)
  {
    v14 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_uniqueID;
      v21 = 138412290;
      v22 = v19;
      v16 = "Can't store key material for session %@";
      v17 = v14;
      v18 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [(IDSGroupEncryptionKeyMaterialCache *)keyMaterialCache invalidateKeyMaterialByKeyIndexes:v7];
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidReceiveParticipantUpgrade:(id)a3 participantType:(unsigned __int16)a4 error:(id)a5
{
  v6 = a4;
  *&v26[13] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DE18();
    }
  }

  v13 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v8];
  v14 = +[IDSLogging _IDSGroupSession];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 1024;
      *v26 = v6;
      v26[2] = 2112;
      *&v26[3] = v9;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "sessionDidReceiveParticipantUpgrade %@, type: %u, error: %@", buf, 0x1Cu);
    }

    if (v9)
    {
      self->_isLightweightParticipant = v6 != 0;
      v16 = +[IDSLogging _IDSGroupSession];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (self->_isLightweightParticipant)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v24 = v8;
        v25 = 2112;
        *v26 = v17;
        _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "sessionDidReceiveParticipantUpgrade %@, change _isLightweightParticipant to %@", buf, 0x16u);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A6BEC0;
    v20[3] = &unk_1E7440AF0;
    v20[4] = self;
    v22 = v6;
    v21 = v9;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v20];
  }

  else
  {
    if (v15)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v24 = uniqueID;
      v25 = 2112;
      *v26 = v8;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring sessionDidReceiveParticipantUpgrade, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidReceiveParticipantUpgrade:(id)a3 participantType:(unsigned __int16)a4 requestIdentifier:(unint64_t)a5 error:(id)a6
{
  v8 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DEB0();
    }
  }

  v15 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v10];
  v16 = +[IDSLogging _IDSGroupSession];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 138413058;
      v27 = v10;
      v28 = 1024;
      *v29 = v8;
      *&v29[4] = 2048;
      *&v29[6] = a5;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "sessionDidReceiveParticipantUpgrade %@, type: %u, requestIdentifier: %llu, error: %@", buf, 0x26u);
    }

    if (v11)
    {
      self->_isLightweightParticipant = v8 != 0;
      v18 = +[IDSLogging _IDSGroupSession];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"NO";
        if (self->_isLightweightParticipant)
        {
          v19 = @"YES";
        }

        *buf = 138412546;
        v27 = v10;
        v28 = 2112;
        *v29 = v19;
        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "sessionDidReceiveParticipantUpgrade %@, change _isLightweightParticipant to %@", buf, 0x16u);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_195A6C1FC;
    v22[3] = &unk_1E7440B18;
    v25 = v8;
    v22[4] = self;
    v24 = a5;
    v23 = v11;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v22];
  }

  else
  {
    if (v17)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v27 = uniqueID;
      v28 = 2112;
      *v29 = v10;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring sessionDidReceiveParticipantUpgrade, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveJoinedParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DF48();
    }
  }

  v13 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v8];
  v14 = +[IDSLogging _IDSGroupSession];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412802;
      v22 = v8;
      v23 = 2048;
      v24 = a4;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "didReceiveJoinedParticipantID identifier: %@, participantID: %llu, clientContext: %@", buf, 0x20u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195A6C490;
    v18[3] = &unk_1E7440B40;
    v18[4] = self;
    v20 = a4;
    v19 = v9;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    if (v15)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveJoinedParticipantID, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveParticipantUpdateParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2DFE0();
    }
  }

  v13 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v8];
  v14 = +[IDSLogging _IDSGroupSession];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412802;
      v22 = v8;
      v23 = 2048;
      v24 = a4;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantUpdateParticipantID identifier: %@, participantID: %llu, clientContext: %@", buf, 0x20u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195A6C720;
    v18[3] = &unk_1E7440B40;
    v18[4] = self;
    v20 = a4;
    v19 = v9;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    if (v15)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveParticipantUpdateParticipantID, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveLeftParticipantID:(unint64_t)a4 withContext:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E078();
    }
  }

  v13 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v8];
  v14 = +[IDSLogging _IDSGroupSession];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412802;
      v22 = v8;
      v23 = 2048;
      v24 = a4;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "didReceiveLeftParticipantID identifier: %@, participantID: %llu, clientContext: %@", buf, 0x20u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195A6C9B0;
    v18[3] = &unk_1E7440B40;
    v18[4] = self;
    v20 = a4;
    v19 = v9;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v18];
  }

  else
  {
    if (v15)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v22 = uniqueID;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Ignoring didReceiveLeftParticipantID, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveParticipantIDs:(id)a4 withCode:(unsigned int)a5 managementType:(unsigned __int16)a6
{
  v6 = a6;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E110();
    }
  }

  v15 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v10];
  v16 = +[IDSLogging _IDSGroupSession];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 138413058;
      v25 = v10;
      v26 = 1024;
      *v27 = a5;
      *&v27[4] = 1024;
      *&v27[6] = v6;
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Group session %@ code: %u, type: %u, didReceiveParticipantIDs: %@", buf, 0x22u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A6CC58;
    v20[3] = &unk_1E7440B68;
    v20[4] = self;
    v21 = v11;
    v22 = a5;
    v23 = v6;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v20];
  }

  else
  {
    if (v17)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v25 = uniqueID;
      v26 = 2112;
      *v27 = v10;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveParticipantIDs:withCode:managementType:, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveURIsForParticipantIDs:(id)a4 withRequestID:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
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
      sub_195B2E1A8();
    }
  }

  v14 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v8];
  v15 = +[IDSLogging _IDSGroupSession];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v19 = 138412546;
      v20 = v8;
      v21 = 2048;
      v22 = [v9 count];
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Group session %@ didReceiveURIsForParticipantIDs: count:%lu", &v19, 0x16u);
    }

    v15 = [(NSMutableDictionary *)self->_URIsToParticipantIDRequests objectForKeyedSubscript:v10];
    if (v15)
    {
      [(NSMutableDictionary *)self->_URIsToParticipantIDRequests removeObjectForKey:v10];
      (*(v15 + 16))(v15, v9, 0);
    }
  }

  else if (v16)
  {
    uniqueID = self->_uniqueID;
    v19 = 138412546;
    v20 = uniqueID;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveURIsForParticipantIDs:, session doesn't match %@ vs. %@", &v19, 0x16u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)participantUpdatedForSession:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E240();
    }
  }

  v8 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v4];
  v9 = +[IDSLogging _IDSGroupSession];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "participantUpdatedForSession %@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A6D098;
    v13[3] = &unk_1E7440A00;
    v13[4] = self;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v13];
  }

  else
  {
    if (v10)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v15 = uniqueID;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring group session participantUpdated, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 hasOutdatedSKI:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E2D8();
    }
  }

  v8 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "hasOutdatedSKI %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didCreateParticipantIDAlias:(unint64_t)a4 forParticipantID:(unint64_t)a5 salt:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = +[IDSInternalQueueController sharedInstance];
  v11 = [v10 assertQueueIsCurrent];

  if (v11)
  {
    v12 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E370();
    }
  }

  v13 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 134218498;
    v21 = a4;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "didCreateParticipantIDAlias %llu salt %@ participantID %llu", &v20, 0x20u);
  }

  v14 = MEMORY[0x1E69A6128];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
  v16 = [v14 pairWithFirst:v15 second:v9];

  v17 = [(NSMutableDictionary *)self->_createParticipantIDAliasCallbacks objectForKeyedSubscript:v16];
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, a4);
    [(NSMutableDictionary *)self->_createParticipantIDAliasCallbacks setObject:0 forKeyedSubscript:v16];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveParticipantID:(unint64_t)a4 forParticipantIDAlias:(unint64_t)a5 salt:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E408();
    }
  }

  v15 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = a4;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    v35 = a5;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "didReceiveParticipantID %llu salt %@ participantIDAlias %llu", buf, 0x20u);
  }

  v16 = MEMORY[0x1E69A6128];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
  v18 = [v16 pairWithFirst:v17 second:v11];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v35) = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  getParticipantIDForAliasDelegateQueueCallbacks = self->_getParticipantIDForAliasDelegateQueueCallbacks;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_195A6D6A4;
  v24[3] = &unk_1E7440B90;
  v20 = v18;
  v25 = v20;
  v26 = self;
  v28 = &v30;
  v29 = a4;
  v27 = buf;
  [(NSMutableArray *)getParticipantIDForAliasDelegateQueueCallbacks enumerateObjectsUsingBlock:v24];
  if (*(*&buf[8] + 24) == 1)
  {
    [(NSMutableArray *)self->_getParticipantIDForAliasDelegateQueueCallbacks removeObjectAtIndex:v31[3]];
  }

  else
  {
    v21 = [(NSMutableDictionary *)self->_getParticipantIDForAliasCallbacks objectForKeyedSubscript:v20];
    v22 = v21;
    if (v21)
    {
      (*(v21 + 16))(v21, a4);
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveDataBlob:(id)a4 forParticipant:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
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
      sub_195B2E4A4();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v8]& 1) != 0)
  {
    v14 = [objc_alloc(MEMORY[0x1E69A5290]) initWithDictionaryRepresentation:v10];
    v15 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v23 = v8;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "session %@ participant: %@, didReceiveDataBlob: %@", buf, 0x20u);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195A6DA1C;
    v19[3] = &unk_1E7440A50;
    v19[4] = self;
    v20 = v9;
    v21 = v14;
    v16 = v14;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v19];
  }

  else
  {
    v16 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v23 = uniqueID;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveDataBlob, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveData:(id)a4 dataType:(unsigned __int16)a5 forParticipant:(id)a6
{
  v7 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[IDSInternalQueueController sharedInstance];
  v14 = [v13 assertQueueIsCurrent];

  if (v14)
  {
    v15 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E53C();
    }
  }

  if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v10]& 1) != 0)
  {
    v16 = [objc_alloc(MEMORY[0x1E69A5290]) initWithDictionaryRepresentation:v12];
    v17 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v26 = v10;
      v27 = 2112;
      v28 = v16;
      v29 = 1024;
      v30 = v7;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "session %@ participant: %@, type: %u, didReceiveData: %@", buf, 0x26u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A6DD0C;
    v21[3] = &unk_1E7440BB8;
    v21[4] = self;
    v24 = v7;
    v22 = v11;
    v23 = v16;
    v18 = v16;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v21];
  }

  else
  {
    v18 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v26 = uniqueID;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveData:dataType:forParticipant, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)session:(id)a3 didReceiveServerErrorCode:(unsigned int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E5D4();
    }
  }

  v10 = [(NSString *)self->_uniqueID isEqualToIgnoringCase:v6];
  v11 = +[IDSLogging _IDSGroupSession];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 1024;
      LODWORD(v20) = a4;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "session %@ didReceiveServerErrorCode: %u", buf, 0x12u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A6DF74;
    v15[3] = &unk_1E7440BE0;
    v15[4] = self;
    v16 = a4;
    [(_IDSGroupSession *)self _callDelegateWithBlock:v15];
  }

  else
  {
    if (v12)
    {
      uniqueID = self->_uniqueID;
      *buf = 138412546;
      v18 = uniqueID;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring group session didReceiveServerErrorCode, session doesn't match %@ vs. %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)xpcObject:(id)a3 objectContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:@"object-type"];
  v9 = [v8 isEqualToIgnoringCase:@"session-device-socket"];

  if (v9)
  {
    v10 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "xpc object: [%@] context: [%@]", &v16, 0x16u);
    }

    v11 = [v7 objectForKey:@"sessionID"];
    if (([(NSString *)self->_uniqueID isEqualToIgnoringCase:v11]& 1) != 0)
    {
      if (v6)
      {
        xpc_fd_dup(v6);
      }

      [(_IDSGroupSession *)self _cleanupSocketPairConnections];
      v12 = [v7 objectForKey:@"error"];
      v13 = +[IDSLogging _IDSGroupSession];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Received XPC Response Error: %@", &v16, 0xCu);
      }
    }

    else
    {
      v12 = +[IDSLogging _IDSGroupSession];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = self->_uniqueID;
        v16 = 138412546;
        v17 = uniqueID;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring socket, session doesn't match %@ vs. %@", &v16, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)keyValueDeliveryForSessionID:(id)a3
{
  v3 = a3;
  v4 = [[IDSGroupSessionKeyValueDelivery alloc] initWithSessionID:v3];

  return v4;
}

- (void)emptyXPCReply
{
  v2 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "received empty XPC reply", v3, 2u);
  }
}

@end