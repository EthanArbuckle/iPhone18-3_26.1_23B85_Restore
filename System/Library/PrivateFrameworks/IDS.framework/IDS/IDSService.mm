@interface IDSService
+ (BOOL)checkMessageSize:(unint64_t)size priority:(int64_t)priority;
+ (IDSService)serviceWithIdentifier:(id)identifier commands:(id)commands manuallyAckMessages:(BOOL)messages completion:(id)completion;
- (BOOL)canSend;
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
- (BOOL)sendAheadGroup:(id)group priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendBatchMessageProcessedContext:(id)context;
- (BOOL)sendCertifiedDeliveryReceipt:(id)receipt;
- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendData:(id)data priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitation:(id)invitation toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitationUpdate:(id)update toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendOpportunisticData:(id)data options:(id)options identifier:(id)identifier error:(id *)error;
- (BOOL)sendProtobuf:(id)protobuf fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendProtobuf:(id)protobuf toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendServerMessage:(id)message command:(id)command fromAccount:(id)account;
- (BOOL)setWakingPushPriority:(int64_t)priority error:(id *)error;
- (BOOL)updateSubServices:(id)services forDevice:(id)device;
- (IDSService)initWithService:(id)service commands:(id)commands manuallyAckMessages:(BOOL)messages;
- (IDSService)initWithService:(id)service serviceDomain:(id)domain;
- (NSArray)URIs;
- (NSArray)devices;
- (NSDictionary)pseudonymURIMap;
- (NSSet)accounts;
- (NSSet)internalAccounts;
- (NSString)serviceIdentifier;
- (SEL)protobufActionForIncomingRequestsOfType:(unsigned __int16)type;
- (SEL)protobufActionForIncomingResponsesOfType:(unsigned __int16)type;
- (_IDSService)_internal;
- (id)_accountWithAlias:(id)alias;
- (id)accountMatchingSim:(id)sim;
- (id)accountMatchingSimIdentifier:(id)identifier;
- (id)aliases;
- (id)datagramChannelForSessionDestination:(id)destination error:(id *)error;
- (id)datagramChannelForSessionDestination:(id)destination options:(id)options error:(id *)error;
- (id)datagramChannelForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)datagramConnectionForSessionDestination:(id)destination error:(id *)error;
- (id)datagramConnectionForSessionDestination:(id)destination uid:(unsigned int)uid error:(id *)error;
- (id)datagramConnectionForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)deviceForFromID:(id)d;
- (id)deviceForUniqueID:(id)d;
- (id)devicesForBTUUID:(id)d;
- (id)firstRoutableInternetDestinationForSelf;
- (id)iCloudAccount;
- (id)linkedDeviceForFromID:(id)d withRelationship:(int64_t)relationship;
- (id)linkedDevicesWithRelationship:(int64_t)relationship;
- (id)pseudonymForPseudonymURI:(id)i;
- (id)pseudonymPropertiesWithFeatureID:(id)d scopeID:(id)iD expiryDurationInSeconds:(double)seconds;
- (id)pseudonymsForMaskedURI:(id)i;
- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties;
- (id)serviceDomain;
- (id)streamConnectionForSessionDestination:(id)destination error:(id *)error;
- (id)streamConnectionForSocketDescriptor:(int)descriptor error:(id *)error;
- (id)uriForFromID:(id)d;
- (int64_t)maxEffectivePayloadSize;
- (unint64_t)registrationRestrictionReason;
- (void)activateAlias:(id)alias;
- (void)activateAliases:(id)aliases;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addDelegate:(id)delegate withDelegateProperties:(id)properties queue:(id)queue;
- (void)deactivateAlias:(id)alias;
- (void)deactivateAliases:(id)aliases;
- (void)dealloc;
- (void)performGroupTask:(id)task;
- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties completion:(id)completion;
- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)provisionPseudonymWithProperties:(id)properties completion:(id)completion;
- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)renewPseudonym:(id)pseudonym forUpdatedDuration:(double)duration completion:(id)completion;
- (void)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch completion:(id)completion;
- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion;
- (void)retrieveFirewallWithQueue:(id)queue completion:(id)completion;
- (void)revokePseudonym:(id)pseudonym completion:(id)completion;
- (void)scheduleTransactionLogTask:(id)task;
- (void)sendAckForMessageWithContext:(id)context;
- (void)setLinkPreferences:(id)preferences;
- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)changed;
- (void)setPreferInfraWiFi:(BOOL)fi;
- (void)setPretendingToBeFull:(BOOL)full;
- (void)setProtobufAction:(SEL)action forIncomingRequestsOfType:(unsigned __int16)type;
- (void)setProtobufAction:(SEL)action forIncomingResponsesOfType:(unsigned __int16)type;
- (void)signData:(id)data withAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
- (void)startOTRTest:(int64_t)test;
- (void)testCloudQRConnection;
- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion;
@end

@implementation IDSService

- (NSArray)devices
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A01230;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSSet)accounts
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A048BC;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A00794;
  v6[4] = sub_195A03D70;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A06518;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSService;
  [(IDSService *)&v4 dealloc];
}

- (id)iCloudAccount
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A0B7D0;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSString)serviceIdentifier
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A0D708;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)accountMatchingSim:(id)sim
{
  sIMIdentifier = [sim SIMIdentifier];
  v5 = [(IDSService *)self accountMatchingSimIdentifier:sIMIdentifier];

  return v5;
}

- (id)accountMatchingSimIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    accounts = [(IDSService *)self accounts];
    v6 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(accounts);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          userUniqueIdentifier = [v9 userUniqueIdentifier];
          v11 = [userUniqueIdentifier isEqual:identifierCopy];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [accounts countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)checkMessageSize:(unint64_t)size priority:(int64_t)priority
{
  v4 = 1048577;
  if (priority != 300)
  {
    v4 = 5242881;
  }

  return v4 > size;
}

+ (IDSService)serviceWithIdentifier:(id)identifier commands:(id)commands manuallyAckMessages:(BOOL)messages completion:(id)completion
{
  identifierCopy = identifier;
  commandsCopy = commands;
  completionCopy = completion;
  v12 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v12 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B376E8();
    }
  }

  if (completionCopy)
  {
    v15 = +[IDSInternalQueueController sharedInstance];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_195AA8C90;
    v22 = &unk_1E7441988;
    v16 = identifierCopy;
    v23 = v16;
    v24 = commandsCopy;
    messagesCopy = messages;
    v25 = completionCopy;
    [v15 performBlock:&v19];

    v17 = [_IDSXPCCheckinManager sharedInstance:v19];
    [v17 noteCreatedService:v16];
  }

  return result;
}

- (IDSService)initWithService:(id)service commands:(id)commands manuallyAckMessages:(BOOL)messages
{
  serviceCopy = service;
  commandsCopy = commands;
  if (_IDSRunningInDaemon())
  {
    v10 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v12 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsNotCurrent = [v12 assertQueueIsNotCurrent];

    if (assertQueueIsNotCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B37788();
      }
    }

    v28.receiver = self;
    v28.super_class = IDSService;
    v15 = [(IDSService *)&v28 init];
    if (v15)
    {
      v16 = +[IDSInternalQueueController sharedInstance];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = sub_195AA9004;
      v23 = &unk_1E743EFD8;
      v24 = v15;
      v17 = serviceCopy;
      v25 = v17;
      v26 = commandsCopy;
      messagesCopy = messages;
      [v16 performBlock:&v20];

      v18 = [_IDSXPCCheckinManager sharedInstance:v20];
      [v18 noteCreatedService:v17];
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (IDSService)initWithService:(id)service serviceDomain:(id)domain
{
  domainCopy = domain;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37828();
    }
  }

  v9 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_195B378C8(domainCopy, v9);
  }

  return 0;
}

- (_IDSService)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37940();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AA92B0;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11 waitUntilDone:0];
}

- (void)addDelegate:(id)delegate withDelegateProperties:(id)properties queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v9 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AA93A4;
  v12[3] = &unk_1E743E620;
  v12[4] = self;
  v13 = delegateCopy;
  v14 = queueCopy;
  v10 = queueCopy;
  v11 = delegateCopy;
  [v9 performBlock:v12 waitUntilDone:0];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AA9464;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = delegateCopy;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (void)performGroupTask:(id)task
{
  taskCopy = task;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AA952C;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  [v5 performBlock:v7 waitUntilDone:0];
}

- (void)setProtobufAction:(SEL)action forIncomingRequestsOfType:(unsigned __int16)type
{
  v7 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA95DC;
  v8[3] = &unk_1E74419B0;
  v8[4] = self;
  v8[5] = action;
  typeCopy = type;
  [v7 performBlock:v8];
}

- (void)setProtobufAction:(SEL)action forIncomingResponsesOfType:(unsigned __int16)type
{
  v7 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA9698;
  v8[3] = &unk_1E74419B0;
  v8[4] = self;
  v8[5] = action;
  typeCopy = type;
  [v7 performBlock:v8];
}

- (SEL)protobufActionForIncomingRequestsOfType:(unsigned __int16)type
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AA97BC;
  v9[3] = &unk_1E74419D8;
  v9[4] = self;
  v9[5] = &v11;
  typeCopy = type;
  [v6 performBlock:v9 waitUntilDone:1];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (SEL)protobufActionForIncomingResponsesOfType:(unsigned __int16)type
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v6 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AA9908;
  v9[3] = &unk_1E74419D8;
  v9[4] = self;
  v9[5] = &v11;
  typeCopy = type;
  [v6 performBlock:v9 waitUntilDone:1];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (BOOL)sendProtobuf:(id)protobuf fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  protobufCopy = protobuf;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  v19 = +[IDSDaemonController sharedInstance];
  [v19 blockUntilConnected];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -86;
  v20 = +[IDSInternalQueueController sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195AA9B0C;
  v26[3] = &unk_1E7441A00;
  v31 = &v35;
  v26[4] = self;
  v21 = protobufCopy;
  v27 = v21;
  v22 = accountCopy;
  v28 = v22;
  v23 = destinationsCopy;
  v29 = v23;
  priorityCopy = priority;
  v24 = optionsCopy;
  v30 = v24;
  identifierCopy = identifier;
  errorCopy = error;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(identifier) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return identifier;
}

- (BOOL)sendProtobuf:(id)protobuf toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  protobufCopy = protobuf;
  destinationsCopy = destinations;
  optionsCopy = options;
  kdebug_trace();
  v17 = +[IDSDaemonController sharedInstance];
  [v17 blockUntilConnected];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = -86;
  v18 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195AA9D1C;
  v23[3] = &unk_1E7440218;
  v27 = &v31;
  v23[4] = self;
  v19 = protobufCopy;
  v24 = v19;
  v20 = destinationsCopy;
  v25 = v20;
  priorityCopy = priority;
  v21 = optionsCopy;
  v26 = v21;
  identifierCopy = identifier;
  errorCopy = error;
  [v18 performBlock:v23 waitUntilDone:1];

  LOBYTE(error) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return error;
}

- (BOOL)sendOpportunisticData:(id)data options:(id)options identifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  identifierCopy = identifier;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -86;
  v14 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AA9EFC;
  v19[3] = &unk_1E7441A28;
  v23 = &v25;
  v19[4] = self;
  v15 = dataCopy;
  v20 = v15;
  v16 = optionsCopy;
  v21 = v16;
  v17 = identifierCopy;
  v22 = v17;
  errorCopy = error;
  [v14 performBlock:v19 waitUntilDone:1];

  LOBYTE(error) = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return error;
}

- (BOOL)cancelOpportunisticDataWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -86;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAA078;
  v11[3] = &unk_1E743FCF8;
  v13 = &v15;
  v11[4] = self;
  v9 = identifierCopy;
  v12 = v9;
  errorCopy = error;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(error) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return error;
}

- (BOOL)sendMessage:(id)message fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  messageCopy = message;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  v19 = +[IDSDaemonController sharedInstance];
  [v19 blockUntilConnected];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -86;
  v20 = +[IDSInternalQueueController sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195AAA2AC;
  v26[3] = &unk_1E7441A00;
  v31 = &v35;
  v26[4] = self;
  v21 = messageCopy;
  v27 = v21;
  v22 = accountCopy;
  v28 = v22;
  v23 = destinationsCopy;
  v29 = v23;
  priorityCopy = priority;
  v24 = optionsCopy;
  v30 = v24;
  identifierCopy = identifier;
  errorCopy = error;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(identifier) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return identifier;
}

- (BOOL)sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  messageCopy = message;
  destinationsCopy = destinations;
  optionsCopy = options;
  v17 = +[IDSDaemonController sharedInstance];
  [v17 blockUntilConnected];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = -86;
  v18 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195AAA4A0;
  v23[3] = &unk_1E7440218;
  v27 = &v31;
  v23[4] = self;
  v19 = messageCopy;
  v24 = v19;
  v20 = destinationsCopy;
  v25 = v20;
  priorityCopy = priority;
  v21 = optionsCopy;
  v26 = v21;
  identifierCopy = identifier;
  errorCopy = error;
  [v18 performBlock:v23 waitUntilDone:1];

  LOBYTE(error) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return error;
}

- (BOOL)cancelMessageWithOptions:(id)options identifier:(id *)identifier error:(id *)error
{
  optionsCopy = options;
  v9 = +[IDSDaemonController sharedInstance];
  [v9 blockUntilConnected];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -86;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195AAA634;
  v13[3] = &unk_1E7441A50;
  v15 = &v18;
  v13[4] = self;
  v11 = optionsCopy;
  v14 = v11;
  identifierCopy = identifier;
  errorCopy = error;
  [v10 performBlock:v13 waitUntilDone:1];

  LOBYTE(error) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return error;
}

- (BOOL)cancelMessageWithOptions:(id)options destination:(id)destination identifier:(id *)identifier error:(id *)error
{
  optionsCopy = options;
  destinationCopy = destination;
  v12 = +[IDSDaemonController sharedInstance];
  [v12 blockUntilConnected];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -86;
  v13 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AAA7DC;
  v17[3] = &unk_1E7441A78;
  v20 = &v23;
  v17[4] = self;
  v14 = optionsCopy;
  v18 = v14;
  v15 = destinationCopy;
  v19 = v15;
  identifierCopy = identifier;
  errorCopy = error;
  [v13 performBlock:v17 waitUntilDone:1];

  LOBYTE(error) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return error;
}

- (BOOL)cancelMessageWithOptions:(id)options destinations:(id)destinations identifier:(id *)identifier error:(id *)error
{
  optionsCopy = options;
  destinationsCopy = destinations;
  v12 = +[IDSDaemonController sharedInstance];
  [v12 blockUntilConnected];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -86;
  v13 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AAA988;
  v17[3] = &unk_1E7441A78;
  v20 = &v23;
  v17[4] = self;
  v14 = optionsCopy;
  v18 = v14;
  v15 = destinationsCopy;
  v19 = v15;
  identifierCopy = identifier;
  errorCopy = error;
  [v13 performBlock:v17 waitUntilDone:1];

  LOBYTE(error) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return error;
}

- (BOOL)sendData:(id)data fromAccount:(id)account toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  v19 = +[IDSDaemonController sharedInstance];
  [v19 blockUntilConnected];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -86;
  v20 = +[IDSInternalQueueController sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195AAAB8C;
  v26[3] = &unk_1E7441A00;
  v31 = &v35;
  v26[4] = self;
  v21 = dataCopy;
  v27 = v21;
  v22 = accountCopy;
  v28 = v22;
  v23 = destinationsCopy;
  v29 = v23;
  priorityCopy = priority;
  v24 = optionsCopy;
  v30 = v24;
  identifierCopy = identifier;
  errorCopy = error;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(identifier) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return identifier;
}

- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  destinationsCopy = destinations;
  optionsCopy = options;
  v17 = +[IDSDaemonController sharedInstance];
  [v17 blockUntilConnected];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = -86;
  v18 = +[IDSInternalQueueController sharedInstance];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195AAAD80;
  v23[3] = &unk_1E7440218;
  v27 = &v31;
  v23[4] = self;
  v19 = dataCopy;
  v24 = v19;
  v20 = destinationsCopy;
  v25 = v20;
  priorityCopy = priority;
  v21 = optionsCopy;
  v26 = v21;
  identifierCopy = identifier;
  errorCopy = error;
  [v18 performBlock:v23 waitUntilDone:1];

  LOBYTE(error) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return error;
}

- (BOOL)sendAccessoryData:(id)data toAccessoryID:(id)d accessToken:(id)token options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  tokenCopy = token;
  optionsCopy = options;
  v18 = +[IDSDaemonController sharedInstance];
  [v18 blockUntilConnected];

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = -86;
  v19 = +[IDSInternalQueueController sharedInstance];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AAAF90;
  v25[3] = &unk_1E7441AA0;
  v30 = &v33;
  v25[4] = self;
  v20 = dataCopy;
  v26 = v20;
  v21 = dCopy;
  v27 = v21;
  v22 = tokenCopy;
  v28 = v22;
  v23 = optionsCopy;
  v29 = v23;
  identifierCopy = identifier;
  errorCopy = error;
  [v19 performBlock:v25 waitUntilDone:1];

  LOBYTE(error) = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  return error;
}

- (BOOL)sendInvitation:(id)invitation toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  invitationCopy = invitation;
  destinationCopy = destination;
  optionsCopy = options;
  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -86;
  v16 = +[IDSInternalQueueController sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195AAB164;
  v21[3] = &unk_1E7441AC8;
  v25 = &v28;
  v21[4] = self;
  v17 = invitationCopy;
  v22 = v17;
  v18 = destinationCopy;
  v23 = v18;
  v19 = optionsCopy;
  v24 = v19;
  identifierCopy = identifier;
  errorCopy = error;
  [v16 performBlock:v21 waitUntilDone:1];

  LOBYTE(error) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return error;
}

- (BOOL)sendInvitationUpdate:(id)update toDestination:(id)destination options:(id)options identifier:(id *)identifier error:(id *)error
{
  updateCopy = update;
  destinationCopy = destination;
  optionsCopy = options;
  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -86;
  v16 = +[IDSInternalQueueController sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195AAB338;
  v21[3] = &unk_1E7441AC8;
  v25 = &v28;
  v21[4] = self;
  v17 = updateCopy;
  v22 = v17;
  v18 = destinationCopy;
  v23 = v18;
  v19 = optionsCopy;
  v24 = v19;
  identifierCopy = identifier;
  errorCopy = error;
  [v16 performBlock:v21 waitUntilDone:1];

  LOBYTE(error) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return error;
}

- (BOOL)setWakingPushPriority:(int64_t)priority error:(id *)error
{
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -86;
  v8 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAB494;
  v10[3] = &unk_1E7441AF0;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = priority;
  v10[7] = error;
  [v8 performBlock:v10 waitUntilDone:1];

  LOBYTE(error) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return error;
}

- (BOOL)sendData:(id)data priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  v14 = +[IDSDaemonController sharedInstance];
  [v14 blockUntilConnected];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -86;
  v15 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195AAB644;
  v19[3] = &unk_1E7441B18;
  v22 = &v26;
  v19[4] = self;
  v16 = dataCopy;
  v20 = v16;
  priorityCopy = priority;
  v17 = optionsCopy;
  v21 = v17;
  identifierCopy = identifier;
  errorCopy = error;
  [v15 performBlock:v19 waitUntilDone:1];

  LOBYTE(error) = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return error;
}

- (BOOL)sendResourceAtURL:(id)l metadata:(id)metadata toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  lCopy = l;
  metadataCopy = metadata;
  destinationsCopy = destinations;
  optionsCopy = options;
  v19 = +[IDSDaemonController sharedInstance];
  [v19 blockUntilConnected];

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = -86;
  v20 = +[IDSInternalQueueController sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195AAB84C;
  v26[3] = &unk_1E7441A00;
  v31 = &v35;
  v26[4] = self;
  v21 = lCopy;
  v27 = v21;
  v22 = metadataCopy;
  v28 = v22;
  v23 = destinationsCopy;
  v29 = v23;
  priorityCopy = priority;
  v24 = optionsCopy;
  v30 = v24;
  identifierCopy = identifier;
  errorCopy = error;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(identifier) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return identifier;
}

- (BOOL)getProgressUpdateForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -86;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAB9E0;
  v11[3] = &unk_1E743FCF8;
  v13 = &v15;
  v11[4] = self;
  v9 = identifierCopy;
  v12 = v9;
  errorCopy = error;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(error) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return error;
}

- (BOOL)sendAheadGroup:(id)group priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  groupCopy = group;
  optionsCopy = options;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -86;
  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AABB8C;
  v18[3] = &unk_1E7441A78;
  v21 = &v24;
  v18[4] = self;
  v15 = groupCopy;
  v19 = v15;
  priorityCopy = priority;
  v16 = optionsCopy;
  v20 = v16;
  identifierCopy = identifier;
  [v14 performBlock:v18 waitUntilDone:1];

  LOBYTE(identifier) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return identifier;
}

- (BOOL)reportSpamMessage:(id)message
{
  messageCopy = message;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -86;
  v6 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AABD04;
  v9[3] = &unk_1E743EA08;
  v11 = &v12;
  v9[4] = self;
  v7 = messageCopy;
  v10 = v7;
  [v6 performBlock:v9 waitUntilDone:1];

  LOBYTE(messageCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return messageCopy;
}

- (void)sendAckForMessageWithContext:(id)context
{
  contextCopy = context;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AABE10;
  v8[3] = &unk_1E743EA30;
  v8[4] = self;
  v9 = contextCopy;
  v7 = contextCopy;
  [v6 performBlock:v8];
}

- (BOOL)sendCertifiedDeliveryReceipt:(id)receipt
{
  receiptCopy = receipt;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -86;
  v6 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AABF48;
  v9[3] = &unk_1E743EA08;
  v11 = &v12;
  v9[4] = self;
  v7 = receiptCopy;
  v10 = v7;
  [v6 performBlock:v9 waitUntilDone:1];

  LOBYTE(receiptCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return receiptCopy;
}

- (BOOL)sendBatchMessageProcessedContext:(id)context
{
  contextCopy = context;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -86;
  v6 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AAC0AC;
  v9[3] = &unk_1E743EA08;
  v11 = &v12;
  v9[4] = self;
  v7 = contextCopy;
  v10 = v7;
  [v6 performBlock:v9 waitUntilDone:1];

  LOBYTE(contextCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return contextCopy;
}

- (BOOL)noteMetricOfType:(int64_t)type context:(id)context
{
  contextCopy = context;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -86;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAC21C;
  v11[3] = &unk_1E743FCF8;
  v13 = &v15;
  typeCopy = type;
  v11[4] = self;
  v9 = contextCopy;
  v12 = v9;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(self) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return self;
}

- (BOOL)cancelIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -86;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAC394;
  v11[3] = &unk_1E743FCF8;
  v13 = &v15;
  v11[4] = self;
  v9 = identifierCopy;
  v12 = v9;
  errorCopy = error;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(error) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return error;
}

- (BOOL)sendServerMessage:(id)message command:(id)command fromAccount:(id)account
{
  messageCopy = message;
  commandCopy = command;
  accountCopy = account;
  v11 = +[IDSDaemonController sharedInstance];
  [v11 blockUntilConnected];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -86;
  v12 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AAC54C;
  v17[3] = &unk_1E7441B40;
  v21 = &v22;
  v17[4] = self;
  v13 = messageCopy;
  v18 = v13;
  v14 = commandCopy;
  v19 = v14;
  v15 = accountCopy;
  v20 = v15;
  [v12 performBlock:v17 waitUntilDone:1];

  LOBYTE(messageCopy) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return messageCopy;
}

- (unint64_t)registrationRestrictionReason
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAC68C;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)linkedDevicesWithRelationship:(int64_t)relationship
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_195A00794;
  v14 = sub_195A03D70;
  v15 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AAC810;
  v9[3] = &unk_1E743F670;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = relationship;
  [v6 performBlock:v9 waitUntilDone:1];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)serviceDomain
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAC9A8;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSSet)internalAccounts
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AACB3C;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)canSend
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -86;
  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AACC90;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v4 performBlock:v6 waitUntilDone:1];

  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return self;
}

- (id)deviceForFromID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AACE34;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)linkedDeviceForFromID:(id)d withRelationship:(int64_t)relationship
{
  dCopy = d;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_195A00794;
  v20 = sub_195A03D70;
  v21 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AAD000;
  v12[3] = &unk_1E743FCF8;
  v14 = &v16;
  v12[4] = self;
  v9 = dCopy;
  v13 = v9;
  relationshipCopy = relationship;
  [v8 performBlock:v12 waitUntilDone:1];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)firstRoutableInternetDestinationForSelf
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAD198;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)deviceForUniqueID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAD354;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)devicesForBTUUID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAD510;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)uriForFromID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAD6CC;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setPreferInfraWiFi:(BOOL)fi
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAD7D8;
  v7[3] = &unk_1E743E8C8;
  v7[4] = self;
  fiCopy = fi;
  [v6 performBlock:v7];
}

- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)changed
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AAD88C;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  changedCopy = changed;
  [v5 performBlock:v6];
}

- (BOOL)needsLaunchOnNearbyDevicesChanged
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -86;
  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AAD9E4;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v4 performBlock:v6 waitUntilDone:1];

  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return self;
}

- (void)setLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AADB14;
  v8[3] = &unk_1E743EA30;
  v8[4] = self;
  v9 = preferencesCopy;
  v7 = preferencesCopy;
  [v6 performBlock:v8];
}

- (void)startOTRTest:(int64_t)test
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AADBD8;
  v7[3] = &unk_1E743E6C0;
  v7[4] = self;
  v7[5] = test;
  [v6 performBlock:v7];
}

- (void)setPretendingToBeFull:(BOOL)full
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AADCA0;
  v7[3] = &unk_1E743E8C8;
  v7[4] = self;
  fullCopy = full;
  [v6 performBlock:v7];
}

- (BOOL)isPretendingToBeFull
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -86;
  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AADDB8;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v4 performBlock:v6 waitUntilDone:1];

  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return self;
}

- (void)testCloudQRConnection
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v4 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195AADE9C;
  v5[3] = &unk_1E743E878;
  v5[4] = self;
  [v4 performBlock:v5];
}

- (BOOL)updateSubServices:(id)services forDevice:(id)device
{
  servicesCopy = services;
  deviceCopy = device;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -86;
  v9 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195AAE010;
  v13[3] = &unk_1E743F648;
  v16 = &v17;
  v13[4] = self;
  v10 = servicesCopy;
  v14 = v10;
  v11 = deviceCopy;
  v15 = v11;
  [v9 performBlock:v13 waitUntilDone:1];

  LOBYTE(servicesCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return servicesCopy;
}

- (id)datagramConnectionForSessionDestination:(id)destination error:(id *)error
{
  destinationCopy = destination;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_195A00794;
  v20 = sub_195A03D70;
  v21 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AAE1C8;
  v12[3] = &unk_1E743FCF8;
  v14 = &v16;
  v12[4] = self;
  v9 = destinationCopy;
  v13 = v9;
  errorCopy = error;
  [v8 performBlock:v12 waitUntilDone:1];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)datagramConnectionForSessionDestination:(id)destination uid:(unsigned int)uid error:(id *)error
{
  destinationCopy = destination;
  v9 = +[IDSDaemonController sharedInstance];
  [v9 blockUntilConnected];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_195A00794;
  v23 = sub_195A03D70;
  v24 = 0;
  v10 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AAE3A0;
  v14[3] = &unk_1E7441B68;
  v16 = &v19;
  v14[4] = self;
  v11 = destinationCopy;
  uidCopy = uid;
  v15 = v11;
  errorCopy = error;
  [v10 performBlock:v14 waitUntilDone:1];

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

- (id)datagramConnectionForSocketDescriptor:(int)descriptor error:(id *)error
{
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAE554;
  v11[3] = &unk_1E7441B90;
  v11[4] = self;
  v11[5] = &v13;
  descriptorCopy = descriptor;
  v11[6] = error;
  [v8 performBlock:v11 waitUntilDone:1];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)streamConnectionForSessionDestination:(id)destination error:(id *)error
{
  destinationCopy = destination;
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_195A00794;
  v20 = sub_195A03D70;
  v21 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AAE728;
  v12[3] = &unk_1E743FCF8;
  v14 = &v16;
  v12[4] = self;
  v9 = destinationCopy;
  v13 = v9;
  errorCopy = error;
  [v8 performBlock:v12 waitUntilDone:1];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)streamConnectionForSocketDescriptor:(int)descriptor error:(id *)error
{
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAE8D8;
  v11[3] = &unk_1E7441B90;
  v11[4] = self;
  v11[5] = &v13;
  descriptorCopy = descriptor;
  v11[6] = error;
  [v8 performBlock:v11 waitUntilDone:1];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)datagramChannelForSessionDestination:(id)destination error:(id *)error
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69A4B48];
  v13[0] = *MEMORY[0x1E69A4B40];
  v13[1] = v6;
  v14[0] = &unk_1F0A299C0;
  v14[1] = &unk_1F0A299C0;
  v7 = MEMORY[0x1E695DF20];
  destinationCopy = destination;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(IDSService *)self datagramChannelForSessionDestination:destinationCopy options:v9 error:error];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)datagramChannelForSessionDestination:(id)destination options:(id)options error:(id *)error
{
  destinationCopy = destination;
  optionsCopy = options;
  v10 = +[IDSDaemonController sharedInstance];
  [v10 blockUntilConnected];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_195A00794;
  v25 = sub_195A03D70;
  v26 = 0;
  v11 = +[IDSInternalQueueController sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AAEBBC;
  v16[3] = &unk_1E7441BB8;
  v19 = &v21;
  v16[4] = self;
  v12 = destinationCopy;
  v17 = v12;
  v13 = optionsCopy;
  v18 = v13;
  errorCopy = error;
  [v11 performBlock:v16 waitUntilDone:1];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)datagramChannelForSocketDescriptor:(int)descriptor error:(id *)error
{
  v7 = +[IDSDaemonController sharedInstance];
  [v7 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AAED70;
  v11[3] = &unk_1E7441B90;
  v11[4] = self;
  v11[5] = &v13;
  descriptorCopy = descriptor;
  v11[6] = error;
  [v8 performBlock:v11 waitUntilDone:1];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)aliases
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  accounts = [(IDSService *)self accounts];
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

        aliasStrings = [*(*(&v13 + 1) + 8 * i) aliasStrings];
        [v3 addObjectsFromArray:aliasStrings];
      }

      v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [objc_opt_class() removeSentinelFromAliases:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)activateAlias:(id)alias
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_195B379E0(registration, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)activateAliases:(id)aliases
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_195B37A58(registration, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)deactivateAlias:(id)alias
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_195B37AD0(registration, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)deactivateAliases:(id)aliases
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_195B37B48(registration, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (id)_accountWithAlias:(id)alias
{
  aliasCopy = alias;
  accounts = [(IDSService *)self accounts];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAF130;
  v10[3] = &unk_1E7441BE0;
  v11 = aliasCopy;
  v6 = aliasCopy;
  v7 = [accounts objectsPassingTest:v10];
  anyObject = [v7 anyObject];

  return anyObject;
}

- (int64_t)maxEffectivePayloadSize
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAF2E8;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (NSArray)URIs
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAF464;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (NSDictionary)pseudonymURIMap
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00794;
  v12 = sub_195A03D70;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAF5F8;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)pseudonymForPseudonymURI:(id)i
{
  iCopy = i;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAF7B4;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = iCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)pseudonymsForMaskedURI:(id)i
{
  iCopy = i;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00794;
  v17 = sub_195A03D70;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAF970;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = iCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)pseudonymsForMaskedURI:(id)i matchingProperties:(id)properties
{
  iCopy = i;
  propertiesCopy = properties;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_195A00794;
  v22 = sub_195A03D70;
  v23 = 0;
  v9 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AAFB58;
  v14[3] = &unk_1E743F648;
  v17 = &v18;
  v14[4] = self;
  v10 = iCopy;
  v15 = v10;
  v11 = propertiesCopy;
  v16 = v11;
  [v9 performBlock:v14 waitUntilDone:1];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)provisionPseudonymWithProperties:(id)properties completion:(id)completion
{
  v6 = MEMORY[0x1E69A53A0];
  completionCopy = completion;
  propertiesCopy = properties;
  defaultProperties = [v6 defaultProperties];
  [(IDSService *)self provisionPseudonymWithProperties:propertiesCopy requestProperties:defaultProperties completion:completionCopy];
}

- (void)provisionPseudonymWithProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  completionCopy = completion;
  if (!requestPropertiesCopy)
  {
    sub_195B37BC0();
  }

  v11 = [requestPropertiesCopy copy];

  v12 = +[IDSDaemonController sharedInstance];
  [v12 blockUntilConnected];

  v13 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AAFD80;
  v17[3] = &unk_1E743F318;
  v17[4] = self;
  v18 = propertiesCopy;
  v19 = v11;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = v11;
  v16 = propertiesCopy;
  [v13 performBlock:v17];
}

- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties requestProperties:(id)requestProperties completion:(id)completion
{
  iCopy = i;
  propertiesCopy = properties;
  requestPropertiesCopy = requestProperties;
  completionCopy = completion;
  if (!requestPropertiesCopy)
  {
    sub_195B37C34();
  }

  v14 = [requestPropertiesCopy copy];

  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v16 = +[IDSInternalQueueController sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195AAFF98;
  v21[3] = &unk_1E74408C8;
  v21[4] = self;
  v22 = iCopy;
  v23 = propertiesCopy;
  v24 = v14;
  v25 = completionCopy;
  v17 = completionCopy;
  v18 = v14;
  v19 = propertiesCopy;
  v20 = iCopy;
  [v16 performBlock:v21];
}

- (void)provisionPseudonymForURI:(id)i withProperties:(id)properties completion:(id)completion
{
  v8 = MEMORY[0x1E69A53A0];
  completionCopy = completion;
  propertiesCopy = properties;
  iCopy = i;
  defaultProperties = [v8 defaultProperties];
  [(IDSService *)self provisionPseudonymForURI:iCopy withProperties:propertiesCopy requestProperties:defaultProperties completion:completionCopy];
}

- (void)renewPseudonym:(id)pseudonym forUpdatedDuration:(double)duration completion:(id)completion
{
  v8 = MEMORY[0x1E695DF00];
  completionCopy = completion;
  pseudonymCopy = pseudonym;
  date = [v8 date];
  [date timeIntervalSince1970];
  [(IDSService *)self renewPseudonym:pseudonymCopy forUpdatedExpiryEpoch:completionCopy completion:v11 + duration];
}

- (void)renewPseudonym:(id)pseudonym forUpdatedExpiryEpoch:(double)epoch completion:(id)completion
{
  pseudonymCopy = pseudonym;
  completionCopy = completion;
  v10 = +[IDSDaemonController sharedInstance];
  [v10 blockUntilConnected];

  v11 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AB0298;
  v14[3] = &unk_1E743E828;
  v14[4] = self;
  v15 = pseudonymCopy;
  epochCopy = epoch;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = pseudonymCopy;
  [v11 performBlock:v14];
}

- (void)revokePseudonym:(id)pseudonym completion:(id)completion
{
  pseudonymCopy = pseudonym;
  completionCopy = completion;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v9 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AB0414;
  v12[3] = &unk_1E743E9B8;
  v12[4] = self;
  v13 = pseudonymCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = pseudonymCopy;
  [v9 performBlock:v12];
}

- (id)pseudonymPropertiesWithFeatureID:(id)d scopeID:(id)iD expiryDurationInSeconds:(double)seconds
{
  dCopy = d;
  iDCopy = iD;
  v10 = +[IDSDaemonController sharedInstance];
  [v10 blockUntilConnected];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_195A00794;
  v25 = sub_195A03D70;
  v26 = 0;
  v11 = +[IDSInternalQueueController sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AB0630;
  v16[3] = &unk_1E7441BB8;
  v19 = &v21;
  v16[4] = self;
  v12 = dCopy;
  v17 = v12;
  v13 = iDCopy;
  v18 = v13;
  secondsCopy = seconds;
  [v11 performBlock:v16 waitUntilDone:1];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

- (void)retrieveFirewallWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = completionCopy;
  if (queueCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_195B37CA8();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_195B37D1C();
LABEL_3:
  serviceIdentifier = [(IDSService *)self serviceIdentifier];
  if (serviceIdentifier)
  {
    v10 = [[IDSFirewall alloc] initWithService:serviceIdentifier queue:queueCopy];
    [(IDSFirewall *)v10 populateImpactedServices:v8];
  }

  else
  {
    v11 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B37D90(self, v11);
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:19 userInfo:0];
    (v8)[2](v8, 0, v10);
  }
}

- (void)signData:(id)data withAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB08F4;
  v18[3] = &unk_1E7441C08;
  v18[4] = self;
  v19 = dataCopy;
  v21 = completionCopy;
  algorithmCopy = algorithm;
  v20 = optionsCopy;
  v15 = completionCopy;
  v16 = optionsCopy;
  v17 = dataCopy;
  [v14 performBlock:v18];
}

- (void)verifySignedData:(id)data matchesExpectedData:(id)expectedData withTokenURI:(id)i forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  dataCopy = data;
  expectedDataCopy = expectedData;
  iCopy = i;
  optionsCopy = options;
  completionCopy = completion;
  v19 = +[IDSDaemonController sharedInstance];
  [v19 blockUntilConnected];

  v20 = +[IDSInternalQueueController sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195AB0A8C;
  v26[3] = &unk_1E7441C30;
  v26[4] = self;
  v27 = dataCopy;
  v28 = expectedDataCopy;
  v29 = iCopy;
  v31 = completionCopy;
  algorithmCopy = algorithm;
  v30 = optionsCopy;
  v21 = completionCopy;
  v22 = optionsCopy;
  v23 = iCopy;
  v24 = expectedDataCopy;
  v25 = dataCopy;
  [v20 performBlock:v26];
}

- (void)verifySignedPayloads:(id)payloads forAlgorithm:(int64_t)algorithm options:(id)options completion:(id)completion
{
  payloadsCopy = payloads;
  optionsCopy = options;
  completionCopy = completion;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB0BDC;
  v18[3] = &unk_1E7441C08;
  v18[4] = self;
  v19 = payloadsCopy;
  v21 = completionCopy;
  algorithmCopy = algorithm;
  v20 = optionsCopy;
  v15 = completionCopy;
  v16 = optionsCopy;
  v17 = payloadsCopy;
  [v14 performBlock:v18];
}

- (void)reportAction:(int64_t)action ofTempURI:(id)i fromURI:(id)rI withCompletion:(id)completion
{
  iCopy = i;
  rICopy = rI;
  completionCopy = completion;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB0D1C;
  v18[3] = &unk_1E7441C08;
  v21 = completionCopy;
  actionCopy = action;
  v18[4] = self;
  v19 = iCopy;
  v20 = rICopy;
  v15 = completionCopy;
  v16 = rICopy;
  v17 = iCopy;
  [v14 performBlock:v18];
}

- (void)scheduleTransactionLogTask:(id)task
{
  taskCopy = task;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AB0DEC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  [v5 performBlock:v7];
}

@end