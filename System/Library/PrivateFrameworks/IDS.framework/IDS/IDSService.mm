@interface IDSService
+ (BOOL)checkMessageSize:(unint64_t)a3 priority:(int64_t)a4;
+ (IDSService)serviceWithIdentifier:(id)a3 commands:(id)a4 manuallyAckMessages:(BOOL)a5 completion:(id)a6;
- (BOOL)canSend;
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
- (BOOL)sendAheadGroup:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7;
- (BOOL)sendBatchMessageProcessedContext:(id)a3;
- (BOOL)sendCertifiedDeliveryReceipt:(id)a3;
- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendData:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7;
- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendInvitation:(id)a3 toDestination:(id)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7;
- (BOOL)sendInvitationUpdate:(id)a3 toDestination:(id)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7;
- (BOOL)sendMessage:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendOpportunisticData:(id)a3 options:(id)a4 identifier:(id)a5 error:(id *)a6;
- (BOOL)sendProtobuf:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8;
- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9;
- (BOOL)sendServerMessage:(id)a3 command:(id)a4 fromAccount:(id)a5;
- (BOOL)setWakingPushPriority:(int64_t)a3 error:(id *)a4;
- (BOOL)updateSubServices:(id)a3 forDevice:(id)a4;
- (IDSService)initWithService:(id)a3 commands:(id)a4 manuallyAckMessages:(BOOL)a5;
- (IDSService)initWithService:(id)a3 serviceDomain:(id)a4;
- (NSArray)URIs;
- (NSArray)devices;
- (NSDictionary)pseudonymURIMap;
- (NSSet)accounts;
- (NSSet)internalAccounts;
- (NSString)serviceIdentifier;
- (SEL)protobufActionForIncomingRequestsOfType:(unsigned __int16)a3;
- (SEL)protobufActionForIncomingResponsesOfType:(unsigned __int16)a3;
- (_IDSService)_internal;
- (id)_accountWithAlias:(id)a3;
- (id)accountMatchingSim:(id)a3;
- (id)accountMatchingSimIdentifier:(id)a3;
- (id)aliases;
- (id)datagramChannelForSessionDestination:(id)a3 error:(id *)a4;
- (id)datagramChannelForSessionDestination:(id)a3 options:(id)a4 error:(id *)a5;
- (id)datagramChannelForSocketDescriptor:(int)a3 error:(id *)a4;
- (id)datagramConnectionForSessionDestination:(id)a3 error:(id *)a4;
- (id)datagramConnectionForSessionDestination:(id)a3 uid:(unsigned int)a4 error:(id *)a5;
- (id)datagramConnectionForSocketDescriptor:(int)a3 error:(id *)a4;
- (id)deviceForFromID:(id)a3;
- (id)deviceForUniqueID:(id)a3;
- (id)devicesForBTUUID:(id)a3;
- (id)firstRoutableInternetDestinationForSelf;
- (id)iCloudAccount;
- (id)linkedDeviceForFromID:(id)a3 withRelationship:(int64_t)a4;
- (id)linkedDevicesWithRelationship:(int64_t)a3;
- (id)pseudonymForPseudonymURI:(id)a3;
- (id)pseudonymPropertiesWithFeatureID:(id)a3 scopeID:(id)a4 expiryDurationInSeconds:(double)a5;
- (id)pseudonymsForMaskedURI:(id)a3;
- (id)pseudonymsForMaskedURI:(id)a3 matchingProperties:(id)a4;
- (id)serviceDomain;
- (id)streamConnectionForSessionDestination:(id)a3 error:(id *)a4;
- (id)streamConnectionForSocketDescriptor:(int)a3 error:(id *)a4;
- (id)uriForFromID:(id)a3;
- (int64_t)maxEffectivePayloadSize;
- (unint64_t)registrationRestrictionReason;
- (void)activateAlias:(id)a3;
- (void)activateAliases:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addDelegate:(id)a3 withDelegateProperties:(id)a4 queue:(id)a5;
- (void)deactivateAlias:(id)a3;
- (void)deactivateAliases:(id)a3;
- (void)dealloc;
- (void)performGroupTask:(id)a3;
- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 completion:(id)a5;
- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 requestProperties:(id)a5 completion:(id)a6;
- (void)provisionPseudonymWithProperties:(id)a3 completion:(id)a4;
- (void)provisionPseudonymWithProperties:(id)a3 requestProperties:(id)a4 completion:(id)a5;
- (void)removeDelegate:(id)a3;
- (void)renewPseudonym:(id)a3 forUpdatedDuration:(double)a4 completion:(id)a5;
- (void)renewPseudonym:(id)a3 forUpdatedExpiryEpoch:(double)a4 completion:(id)a5;
- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 withCompletion:(id)a6;
- (void)retrieveFirewallWithQueue:(id)a3 completion:(id)a4;
- (void)revokePseudonym:(id)a3 completion:(id)a4;
- (void)scheduleTransactionLogTask:(id)a3;
- (void)sendAckForMessageWithContext:(id)a3;
- (void)setLinkPreferences:(id)a3;
- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)a3;
- (void)setPreferInfraWiFi:(BOOL)a3;
- (void)setPretendingToBeFull:(BOOL)a3;
- (void)setProtobufAction:(SEL)a3 forIncomingRequestsOfType:(unsigned __int16)a4;
- (void)setProtobufAction:(SEL)a3 forIncomingResponsesOfType:(unsigned __int16)a4;
- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6;
- (void)startOTRTest:(int64_t)a3;
- (void)testCloudQRConnection;
- (void)verifySignedData:(id)a3 matchesExpectedData:(id)a4 withTokenURI:(id)a5 forAlgorithm:(int64_t)a6 options:(id)a7 completion:(id)a8;
- (void)verifySignedPayloads:(id)a3 forAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6;
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

- (id)accountMatchingSim:(id)a3
{
  v4 = [a3 SIMIdentifier];
  v5 = [(IDSService *)self accountMatchingSimIdentifier:v4];

  return v5;
}

- (id)accountMatchingSimIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(IDSService *)self accounts];
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
          v10 = [v9 userUniqueIdentifier];
          v11 = [v10 isEqual:v4];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
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

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)checkMessageSize:(unint64_t)a3 priority:(int64_t)a4
{
  v4 = 1048577;
  if (a4 != 300)
  {
    v4 = 5242881;
  }

  return v4 > a3;
}

+ (IDSService)serviceWithIdentifier:(id)a3 commands:(id)a4 manuallyAckMessages:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = +[IDSInternalQueueController sharedInstance];
  v13 = [v12 assertQueueIsNotCurrent];

  if (v13)
  {
    v14 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B376E8();
    }
  }

  if (v11)
  {
    v15 = +[IDSInternalQueueController sharedInstance];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_195AA8C90;
    v22 = &unk_1E7441988;
    v16 = v9;
    v23 = v16;
    v24 = v10;
    v26 = a5;
    v25 = v11;
    [v15 performBlock:&v19];

    v17 = [_IDSXPCCheckinManager sharedInstance:v19];
    [v17 noteCreatedService:v16];
  }

  return result;
}

- (IDSService)initWithService:(id)a3 commands:(id)a4 manuallyAckMessages:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (_IDSRunningInDaemon())
  {
    v10 = +[IDSLogging IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    v11 = 0;
  }

  else
  {
    v12 = +[IDSInternalQueueController sharedInstance];
    v13 = [v12 assertQueueIsNotCurrent];

    if (v13)
    {
      v14 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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
      v17 = v8;
      v25 = v17;
      v26 = v9;
      v27 = a5;
      [v16 performBlock:&v20];

      v18 = [_IDSXPCCheckinManager sharedInstance:v20];
      [v18 noteCreatedService:v17];
    }

    self = v15;
    v11 = self;
  }

  return v11;
}

- (IDSService)initWithService:(id)a3 serviceDomain:(id)a4
{
  v5 = a4;
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 assertQueueIsCurrent];

  if (v7)
  {
    v8 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B37828();
    }
  }

  v9 = +[IDSLogging IDSService];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_195B378C8(v5, v9);
  }

  return 0;
}

- (_IDSService)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B37940();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195AA92B0;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11 waitUntilDone:0];
}

- (void)addDelegate:(id)a3 withDelegateProperties:(id)a4 queue:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AA93A4;
  v12[3] = &unk_1E743E620;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 performBlock:v12 waitUntilDone:0];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AA9464;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = v4;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (void)performGroupTask:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AA952C;
  v7[3] = &unk_1E743EAA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7 waitUntilDone:0];
}

- (void)setProtobufAction:(SEL)a3 forIncomingRequestsOfType:(unsigned __int16)a4
{
  v7 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA95DC;
  v8[3] = &unk_1E74419B0;
  v8[4] = self;
  v8[5] = a3;
  v9 = a4;
  [v7 performBlock:v8];
}

- (void)setProtobufAction:(SEL)a3 forIncomingResponsesOfType:(unsigned __int16)a4
{
  v7 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA9698;
  v8[3] = &unk_1E74419B0;
  v8[4] = self;
  v8[5] = a3;
  v9 = a4;
  [v7 performBlock:v8];
}

- (SEL)protobufActionForIncomingRequestsOfType:(unsigned __int16)a3
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
  v10 = a3;
  [v6 performBlock:v9 waitUntilDone:1];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (SEL)protobufActionForIncomingResponsesOfType:(unsigned __int16)a3
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
  v10 = a3;
  [v6 performBlock:v9 waitUntilDone:1];

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

- (BOOL)sendProtobuf:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
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
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  v23 = v17;
  v29 = v23;
  v32 = a6;
  v24 = v18;
  v30 = v24;
  v33 = a8;
  v34 = a9;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(a8) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return a8;
}

- (BOOL)sendProtobuf:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
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
  v19 = v14;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  v28 = a5;
  v21 = v16;
  v26 = v21;
  v29 = a7;
  v30 = a8;
  [v18 performBlock:v23 waitUntilDone:1];

  LOBYTE(a8) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return a8;
}

- (BOOL)sendOpportunisticData:(id)a3 options:(id)a4 identifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  v15 = v10;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  v17 = v12;
  v22 = v17;
  v24 = a6;
  [v14 performBlock:v19 waitUntilDone:1];

  LOBYTE(a6) = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  return a6;
}

- (BOOL)cancelOpportunisticDataWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = v6;
  v12 = v9;
  v14 = a4;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(a4) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return a4;
}

- (BOOL)sendMessage:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
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
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  v23 = v17;
  v29 = v23;
  v32 = a6;
  v24 = v18;
  v30 = v24;
  v33 = a8;
  v34 = a9;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(a8) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return a8;
}

- (BOOL)sendMessage:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
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
  v19 = v14;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  v28 = a5;
  v21 = v16;
  v26 = v21;
  v29 = a7;
  v30 = a8;
  [v18 performBlock:v23 waitUntilDone:1];

  LOBYTE(a8) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return a8;
}

- (BOOL)cancelMessageWithOptions:(id)a3 identifier:(id *)a4 error:(id *)a5
{
  v8 = a3;
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
  v11 = v8;
  v14 = v11;
  v16 = a4;
  v17 = a5;
  [v10 performBlock:v13 waitUntilDone:1];

  LOBYTE(a5) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return a5;
}

- (BOOL)cancelMessageWithOptions:(id)a3 destination:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
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
  v14 = v10;
  v18 = v14;
  v15 = v11;
  v19 = v15;
  v21 = a5;
  v22 = a6;
  [v13 performBlock:v17 waitUntilDone:1];

  LOBYTE(a6) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return a6;
}

- (BOOL)cancelMessageWithOptions:(id)a3 destinations:(id)a4 identifier:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
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
  v14 = v10;
  v18 = v14;
  v15 = v11;
  v19 = v15;
  v21 = a5;
  v22 = a6;
  [v13 performBlock:v17 waitUntilDone:1];

  LOBYTE(a6) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return a6;
}

- (BOOL)sendData:(id)a3 fromAccount:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
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
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  v23 = v17;
  v29 = v23;
  v32 = a6;
  v24 = v18;
  v30 = v24;
  v33 = a8;
  v34 = a9;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(a8) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return a8;
}

- (BOOL)sendData:(id)a3 toDestinations:(id)a4 priority:(int64_t)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
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
  v19 = v14;
  v24 = v19;
  v20 = v15;
  v25 = v20;
  v28 = a5;
  v21 = v16;
  v26 = v21;
  v29 = a7;
  v30 = a8;
  [v18 performBlock:v23 waitUntilDone:1];

  LOBYTE(a8) = *(v32 + 24);
  _Block_object_dispose(&v31, 8);

  return a8;
}

- (BOOL)sendAccessoryData:(id)a3 toAccessoryID:(id)a4 accessToken:(id)a5 options:(id)a6 identifier:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
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
  v20 = v14;
  v26 = v20;
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  v23 = v17;
  v29 = v23;
  v31 = a7;
  v32 = a8;
  [v19 performBlock:v25 waitUntilDone:1];

  LOBYTE(a8) = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  return a8;
}

- (BOOL)sendInvitation:(id)a3 toDestination:(id)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
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
  v17 = v12;
  v22 = v17;
  v18 = v13;
  v23 = v18;
  v19 = v14;
  v24 = v19;
  v26 = a6;
  v27 = a7;
  [v16 performBlock:v21 waitUntilDone:1];

  LOBYTE(a7) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return a7;
}

- (BOOL)sendInvitationUpdate:(id)a3 toDestination:(id)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
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
  v17 = v12;
  v22 = v17;
  v18 = v13;
  v23 = v18;
  v19 = v14;
  v24 = v19;
  v26 = a6;
  v27 = a7;
  [v16 performBlock:v21 waitUntilDone:1];

  LOBYTE(a7) = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return a7;
}

- (BOOL)setWakingPushPriority:(int64_t)a3 error:(id *)a4
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
  v10[6] = a3;
  v10[7] = a4;
  [v8 performBlock:v10 waitUntilDone:1];

  LOBYTE(a4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a4;
}

- (BOOL)sendData:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
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
  v16 = v12;
  v20 = v16;
  v23 = a4;
  v17 = v13;
  v21 = v17;
  v24 = a6;
  v25 = a7;
  [v15 performBlock:v19 waitUntilDone:1];

  LOBYTE(a7) = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return a7;
}

- (BOOL)sendResourceAtURL:(id)a3 metadata:(id)a4 toDestinations:(id)a5 priority:(int64_t)a6 options:(id)a7 identifier:(id *)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
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
  v21 = v15;
  v27 = v21;
  v22 = v16;
  v28 = v22;
  v23 = v17;
  v29 = v23;
  v32 = a6;
  v24 = v18;
  v30 = v24;
  v33 = a8;
  v34 = a9;
  [v20 performBlock:v26 waitUntilDone:1];

  LOBYTE(a8) = *(v36 + 24);
  _Block_object_dispose(&v35, 8);

  return a8;
}

- (BOOL)getProgressUpdateForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = v6;
  v12 = v9;
  v14 = a4;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(a4) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return a4;
}

- (BOOL)sendAheadGroup:(id)a3 priority:(int64_t)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
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
  v15 = v11;
  v19 = v15;
  v22 = a4;
  v16 = v12;
  v20 = v16;
  v23 = a6;
  [v14 performBlock:v18 waitUntilDone:1];

  LOBYTE(a6) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return a6;
}

- (BOOL)reportSpamMessage:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v10 = v7;
  [v6 performBlock:v9 waitUntilDone:1];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v4;
}

- (void)sendAckForMessageWithContext:(id)a3
{
  v4 = a3;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AABE10;
  v8[3] = &unk_1E743EA30;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlock:v8];
}

- (BOOL)sendCertifiedDeliveryReceipt:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v10 = v7;
  [v6 performBlock:v9 waitUntilDone:1];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v4;
}

- (BOOL)sendBatchMessageProcessedContext:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v10 = v7;
  [v6 performBlock:v9 waitUntilDone:1];

  LOBYTE(v4) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v4;
}

- (BOOL)noteMetricOfType:(int64_t)a3 context:(id)a4
{
  v6 = a4;
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
  v14 = a3;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(self) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return self;
}

- (BOOL)cancelIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = v6;
  v12 = v9;
  v14 = a4;
  [v8 performBlock:v11 waitUntilDone:1];

  LOBYTE(a4) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return a4;
}

- (BOOL)sendServerMessage:(id)a3 command:(id)a4 fromAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v19 = v14;
  v15 = v10;
  v20 = v15;
  [v12 performBlock:v17 waitUntilDone:1];

  LOBYTE(v8) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v8;
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

- (id)linkedDevicesWithRelationship:(int64_t)a3
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
  v9[6] = a3;
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

- (id)deviceForFromID:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)linkedDeviceForFromID:(id)a3 withRelationship:(int64_t)a4
{
  v6 = a3;
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
  v9 = v6;
  v13 = v9;
  v15 = a4;
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

- (id)deviceForUniqueID:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)devicesForBTUUID:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)uriForFromID:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setPreferInfraWiFi:(BOOL)a3
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AAD7D8;
  v7[3] = &unk_1E743E8C8;
  v7[4] = self;
  v8 = a3;
  [v6 performBlock:v7];
}

- (void)setNeedsLaunchOnNearbyDevicesChanged:(BOOL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AAD88C;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  v7 = a3;
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

- (void)setLinkPreferences:(id)a3
{
  v4 = a3;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AADB14;
  v8[3] = &unk_1E743EA30;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 performBlock:v8];
}

- (void)startOTRTest:(int64_t)a3
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AADBD8;
  v7[3] = &unk_1E743E6C0;
  v7[4] = self;
  v7[5] = a3;
  [v6 performBlock:v7];
}

- (void)setPretendingToBeFull:(BOOL)a3
{
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v6 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AADCA0;
  v7[3] = &unk_1E743E8C8;
  v7[4] = self;
  v8 = a3;
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

- (BOOL)updateSubServices:(id)a3 forDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  [v9 performBlock:v13 waitUntilDone:1];

  LOBYTE(v6) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)datagramConnectionForSessionDestination:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = v6;
  v13 = v9;
  v15 = a4;
  [v8 performBlock:v12 waitUntilDone:1];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)datagramConnectionForSessionDestination:(id)a3 uid:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
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
  v11 = v8;
  v18 = a4;
  v15 = v11;
  v17 = a5;
  [v10 performBlock:v14 waitUntilDone:1];

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

- (id)datagramConnectionForSocketDescriptor:(int)a3 error:(id *)a4
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
  v12 = a3;
  v11[6] = a4;
  [v8 performBlock:v11 waitUntilDone:1];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)streamConnectionForSessionDestination:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = v6;
  v13 = v9;
  v15 = a4;
  [v8 performBlock:v12 waitUntilDone:1];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)streamConnectionForSocketDescriptor:(int)a3 error:(id *)a4
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
  v12 = a3;
  v11[6] = a4;
  [v8 performBlock:v11 waitUntilDone:1];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)datagramChannelForSessionDestination:(id)a3 error:(id *)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E69A4B48];
  v13[0] = *MEMORY[0x1E69A4B40];
  v13[1] = v6;
  v14[0] = &unk_1F0A299C0;
  v14[1] = &unk_1F0A299C0;
  v7 = MEMORY[0x1E695DF20];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = [(IDSService *)self datagramChannelForSessionDestination:v8 options:v9 error:a4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)datagramChannelForSessionDestination:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v20 = a5;
  [v11 performBlock:v16 waitUntilDone:1];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

- (id)datagramChannelForSocketDescriptor:(int)a3 error:(id *)a4
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
  v12 = a3;
  v11[6] = a4;
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
  v4 = [(IDSService *)self accounts];
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

        v9 = [*(*(&v13 + 1) + 8 * i) aliasStrings];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [objc_opt_class() removeSentinelFromAliases:v3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)activateAlias:(id)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_195B379E0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)activateAliases:(id)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_195B37A58(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)deactivateAlias:(id)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_195B37AD0(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)deactivateAliases:(id)a3
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_195B37B48(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (id)_accountWithAlias:(id)a3
{
  v4 = a3;
  v5 = [(IDSService *)self accounts];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AAF130;
  v10[3] = &unk_1E7441BE0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 objectsPassingTest:v10];
  v8 = [v7 anyObject];

  return v8;
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

- (id)pseudonymForPseudonymURI:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)pseudonymsForMaskedURI:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)pseudonymsForMaskedURI:(id)a3 matchingProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  [v9 performBlock:v14 waitUntilDone:1];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (void)provisionPseudonymWithProperties:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E69A53A0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultProperties];
  [(IDSService *)self provisionPseudonymWithProperties:v8 requestProperties:v9 completion:v7];
}

- (void)provisionPseudonymWithProperties:(id)a3 requestProperties:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    sub_195B37BC0();
  }

  v11 = [v9 copy];

  v12 = +[IDSDaemonController sharedInstance];
  [v12 blockUntilConnected];

  v13 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AAFD80;
  v17[3] = &unk_1E743F318;
  v17[4] = self;
  v18 = v8;
  v19 = v11;
  v20 = v10;
  v14 = v10;
  v15 = v11;
  v16 = v8;
  [v13 performBlock:v17];
}

- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 requestProperties:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    sub_195B37C34();
  }

  v14 = [v12 copy];

  v15 = +[IDSDaemonController sharedInstance];
  [v15 blockUntilConnected];

  v16 = +[IDSInternalQueueController sharedInstance];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195AAFF98;
  v21[3] = &unk_1E74408C8;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v14;
  v25 = v13;
  v17 = v13;
  v18 = v14;
  v19 = v11;
  v20 = v10;
  [v16 performBlock:v21];
}

- (void)provisionPseudonymForURI:(id)a3 withProperties:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E69A53A0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 defaultProperties];
  [(IDSService *)self provisionPseudonymForURI:v11 withProperties:v10 requestProperties:v12 completion:v9];
}

- (void)renewPseudonym:(id)a3 forUpdatedDuration:(double)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a5;
  v10 = a3;
  v12 = [v8 date];
  [v12 timeIntervalSince1970];
  [(IDSService *)self renewPseudonym:v10 forUpdatedExpiryEpoch:v9 completion:v11 + a4];
}

- (void)renewPseudonym:(id)a3 forUpdatedExpiryEpoch:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[IDSDaemonController sharedInstance];
  [v10 blockUntilConnected];

  v11 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AB0298;
  v14[3] = &unk_1E743E828;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 performBlock:v14];
}

- (void)revokePseudonym:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v9 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195AB0414;
  v12[3] = &unk_1E743E9B8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 performBlock:v12];
}

- (id)pseudonymPropertiesWithFeatureID:(id)a3 scopeID:(id)a4 expiryDurationInSeconds:(double)a5
{
  v8 = a3;
  v9 = a4;
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
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v20 = a5;
  [v11 performBlock:v16 waitUntilDone:1];

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

- (void)retrieveFirewallWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
  v9 = [(IDSService *)self serviceIdentifier];
  if (v9)
  {
    v10 = [[IDSFirewall alloc] initWithService:v9 queue:v6];
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

- (void)signData:(id)a3 withAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB08F4;
  v18[3] = &unk_1E7441C08;
  v18[4] = self;
  v19 = v10;
  v21 = v12;
  v22 = a4;
  v20 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v14 performBlock:v18];
}

- (void)verifySignedData:(id)a3 matchesExpectedData:(id)a4 withTokenURI:(id)a5 forAlgorithm:(int64_t)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = +[IDSDaemonController sharedInstance];
  [v19 blockUntilConnected];

  v20 = +[IDSInternalQueueController sharedInstance];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_195AB0A8C;
  v26[3] = &unk_1E7441C30;
  v26[4] = self;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v31 = v18;
  v32 = a6;
  v30 = v17;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  [v20 performBlock:v26];
}

- (void)verifySignedPayloads:(id)a3 forAlgorithm:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB0BDC;
  v18[3] = &unk_1E7441C08;
  v18[4] = self;
  v19 = v10;
  v21 = v12;
  v22 = a4;
  v20 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v14 performBlock:v18];
}

- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 withCompletion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IDSDaemonController sharedInstance];
  [v13 blockUntilConnected];

  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195AB0D1C;
  v18[3] = &unk_1E7441C08;
  v21 = v12;
  v22 = a3;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [v14 performBlock:v18];
}

- (void)scheduleTransactionLogTask:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195AB0DEC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

@end