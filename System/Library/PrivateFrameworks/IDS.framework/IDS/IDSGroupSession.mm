@interface IDSGroupSession
+ (id)augmentNetworkParametersForSession:(id)session participantID:(unint64_t)d parameters:(id)parameters;
+ (id)augmentNetworkParametersForSessionAlias:(id)alias participantIDAlias:(unint64_t)dAlias salt:(id)salt parameters:(id)parameters;
+ (id)createEndpointForSessionIDAlias:(id)alias topic:(id)topic participantIDAlias:(unint64_t)dAlias salt:(id)salt;
+ (id)createGroupDescriptorForSessionIDAlias:(id)alias topic:(id)topic salt:(id)salt;
+ (void)augmentConnectionGroupNetworkParameters:(id)parameters;
- (IDSGroupSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options;
- (IDSGroupSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options delegate:(id)delegate queue:(id)queue;
- (IDSGroupSession)initWithAccount:(id)account options:(id)options;
- (IDSGroupSession)initWithAccount:(id)account options:(id)options delegate:(id)delegate queue:(id)queue;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)destination;
- (NSString)sessionID;
- (id)_internal;
- (id)_internal_sessionWithValidityCheck;
- (id)broadcastParameterForService:(id)service;
- (id)keyValueDelivery;
- (id)sessionIDAliasWithSalt:(id)salt;
- (id)unicastConnectorWithDataMode:(int64_t)mode;
- (id)unicastParameterForParticipantID:(unint64_t)d dataMode:(int64_t)mode connectionIndex:(unint64_t)index;
- (id)unicastParameterForParticipantIDAlias:(unint64_t)alias salt:(id)salt dataMode:(int64_t)mode connectionIndex:(unint64_t)index;
- (unint64_t)createAliasForLocalParticipantIDWithSalt:(id)salt;
- (unint64_t)createAliasForParticipantID:(unint64_t)d salt:(id)salt;
- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt;
- (unsigned)sessionEndedReason;
- (unsigned)state;
- (void)createAliasForLocalParticipantIDWithSalt:(id)salt completionHandler:(id)handler;
- (void)createAliasForParticipantID:(unint64_t)d salt:(id)salt completionHandler:(id)handler;
- (void)createSessionIDAliasWithSalt:(id)salt completionHandler:(id)handler;
- (void)dealloc;
- (void)getParticipantIDForAlias:(unint64_t)alias salt:(id)salt completionHandler:(id)handler;
- (void)invalidate;
- (void)joinWithOptions:(id)options;
- (void)leaveGroupSession;
- (void)leaveGroupSessionWithOptions:(id)options;
- (void)manageDesignatedMembers:(id)members withType:(unsigned __int16)type;
- (void)reconnectUPlusOneSession;
- (void)registerPluginWithOptions:(id)options;
- (void)removeParticipants:(id)participants;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler;
- (void)requestEncryptionKeyForParticipants:(id)participants;
- (void)requestURIsForParticipantIDs:(id)ds completionHandler:(id)handler;
- (void)setCallScreeningMode:(BOOL)mode;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)reinitiate;
- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)reinitiate;
- (void)setParticipantInfo:(id)info;
- (void)setPreferences:(id)preferences;
- (void)setRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities;
- (void)unregisterPluginWithOptions:(id)options;
- (void)updateMembers:(id)members withContext:(id)context messagingCapabilities:(id)capabilities triggeredLocally:(BOOL)locally;
- (void)updateMembers:(id)members withContext:(id)context triggeredLocally:(BOOL)locally;
- (void)updateParticipantData:(id)data withContext:(id)context;
- (void)updateParticipantInfo:(id)info;
- (void)updateParticipantType:(unsigned __int16)type members:(id)members withContext:(id)context triggeredLocally:(BOOL)locally;
- (void)updateParticipantType:(unsigned __int16)type members:(id)members withContext:(id)context triggeredLocally:(BOOL)locally timestamp:(double)timestamp identifier:(unint64_t)identifier;
@end

@implementation IDSGroupSession

- (IDSGroupSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options
{
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v11 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B28334();
    }
  }

  v22.receiver = self;
  v22.super_class = IDSGroupSession;
  v14 = [(IDSGroupSession *)&v22 init];
  if (v14)
  {
    v15 = +[IDSInternalQueueController sharedInstance];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A209B8;
    v17[3] = &unk_1E743EEE8;
    v18 = v14;
    v19 = accountCopy;
    v20 = destinationsCopy;
    v21 = optionsCopy;
    [v15 performBlock:v17];
  }

  return v14;
}

- (IDSGroupSession)initWithAccount:(id)account options:(id)options
{
  accountCopy = account;
  optionsCopy = options;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v8 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B283CC();
    }
  }

  v18.receiver = self;
  v18.super_class = IDSGroupSession;
  v11 = [(IDSGroupSession *)&v18 init];
  if (v11)
  {
    v12 = +[IDSInternalQueueController sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195A20B70;
    v14[3] = &unk_1E743E620;
    v15 = optionsCopy;
    v16 = v11;
    v17 = accountCopy;
    [v12 performBlock:v14];
  }

  return v11;
}

- (IDSGroupSession)initWithAccount:(id)account destinations:(id)destinations options:(id)options delegate:(id)delegate queue:(id)queue
{
  accountCopy = account;
  destinationsCopy = destinations;
  optionsCopy = options;
  delegateCopy = delegate;
  queueCopy = queue;
  v17 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v17 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B28464();
    }
  }

  v30.receiver = self;
  v30.super_class = IDSGroupSession;
  v20 = [(IDSGroupSession *)&v30 init];
  if (v20)
  {
    v21 = +[IDSInternalQueueController sharedInstance];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A20DF0;
    v23[3] = &unk_1E743EF10;
    v24 = v20;
    v25 = accountCopy;
    v26 = destinationsCopy;
    v27 = optionsCopy;
    v28 = delegateCopy;
    v29 = queueCopy;
    [v21 performBlock:v23];
  }

  return v20;
}

- (IDSGroupSession)initWithAccount:(id)account options:(id)options delegate:(id)delegate queue:(id)queue
{
  accountCopy = account;
  optionsCopy = options;
  delegateCopy = delegate;
  queueCopy = queue;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v14 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B284FC();
    }
  }

  v26.receiver = self;
  v26.super_class = IDSGroupSession;
  v17 = [(IDSGroupSession *)&v26 init];
  if (v17)
  {
    v18 = +[IDSInternalQueueController sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A20FF4;
    v20[3] = &unk_1E743EF38;
    v21 = optionsCopy;
    v22 = v17;
    v23 = accountCopy;
    v24 = delegateCopy;
    v25 = queueCopy;
    [v18 performBlock:v20];
  }

  return v17;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A006A4;
  v6[4] = sub_195A03CF8;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A211D0;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSGroupSession;
  [(IDSGroupSession *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A2128C;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (id)_internal_sessionWithValidityCheck
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B28594();
    }
  }

  internal = self->_internal;
  if (!internal)
  {
    v7 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2862C(self, &self->_internal, v7);
    }

    internal = self->_internal;
  }

  return internal;
}

- (NSString)sessionID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006A4;
  v11 = sub_195A03CF8;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A21564;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)sessionIDAliasWithSalt:(id)salt
{
  saltCopy = salt;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_195A006A4;
  v16 = sub_195A03CF8;
  v17 = 0;
  v5 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A21704;
  v9[3] = &unk_1E743EA08;
  v11 = &v12;
  v9[4] = self;
  v6 = saltCopy;
  v10 = v6;
  [v5 performBlock:v9 waitUntilDone:1];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (unint64_t)createAliasForParticipantID:(unint64_t)d salt:(id)salt
{
  v16 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  v6 = IDSIDAliasHashUInt64();
  v7 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    v11 = v6;
    v12 = 2048;
    dCopy = d;
    v14 = 2112;
    v15 = saltCopy;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID created %llu from %llu and %@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)createAliasForLocalParticipantIDWithSalt:(id)salt
{
  v21 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A219E4;
  v12[3] = &unk_1E743EF60;
  v12[4] = self;
  v14 = &v15;
  v6 = saltCopy;
  v13 = v6;
  [v5 performBlock:v12 waitUntilDone:1];

  v7 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v16[3];
    *buf = 134217984;
    v20 = v8;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "createAliasForLocalParticipantIDWithSalt created and returning %llu", buf, 0xCu);
  }

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (unint64_t)participantIDForAlias:(unint64_t)alias salt:(id)salt
{
  saltCopy = salt;
  v7 = dispatch_semaphore_create(0);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = +[IDSInternalQueueController sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A21C90;
  v16[3] = &unk_1E743EFB0;
  v16[4] = self;
  aliasCopy = alias;
  v9 = saltCopy;
  v17 = v9;
  v19 = &v21;
  v10 = v7;
  v18 = v10;
  [v8 performBlock:v16];

  v11 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "IDS daemon took too long to respond to participantIDForAlias:salt:", v15, 2u);
    }
  }

  v13 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v13;
}

- (void)createSessionIDAliasWithSalt:(id)salt completionHandler:(id)handler
{
  saltCopy = salt;
  handlerCopy = handler;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A21E30;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = saltCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = saltCopy;
  [v8 performBlock:v11];
}

- (void)createAliasForParticipantID:(unint64_t)d salt:(id)salt completionHandler:(id)handler
{
  saltCopy = salt;
  handlerCopy = handler;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A21F2C;
  v13[3] = &unk_1E743E828;
  v13[4] = self;
  v14 = saltCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = saltCopy;
  [v10 performBlock:v13];
}

- (void)createAliasForLocalParticipantIDWithSalt:(id)salt completionHandler:(id)handler
{
  saltCopy = salt;
  handlerCopy = handler;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A2201C;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = saltCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = saltCopy;
  [v8 performBlock:v11];
}

- (void)getParticipantIDForAlias:(unint64_t)alias salt:(id)salt completionHandler:(id)handler
{
  saltCopy = salt;
  handlerCopy = handler;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A22118;
  v13[3] = &unk_1E743E828;
  v13[4] = self;
  v14 = saltCopy;
  v15 = handlerCopy;
  aliasCopy = alias;
  v11 = handlerCopy;
  v12 = saltCopy;
  [v10 performBlock:v13];
}

- (NSString)destination
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006A4;
  v11 = sub_195A03CF8;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A22254;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (unsigned)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A223B4;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (unsigned)sessionEndedReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A224D4;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSSet)requiredCapabilities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006A4;
  v11 = sub_195A03CF8;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A22634;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSSet)requiredLackOfCapabilities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006A4;
  v11 = sub_195A03CF8;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A227AC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A228D8;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11];
}

- (id)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B286B8();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)updateMembers:(id)members withContext:(id)context triggeredLocally:(BOOL)locally
{
  membersCopy = members;
  contextCopy = context;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A22AA8;
  v13[3] = &unk_1E743EFD8;
  v13[4] = self;
  v14 = membersCopy;
  v15 = contextCopy;
  locallyCopy = locally;
  v11 = contextCopy;
  v12 = membersCopy;
  [v10 performBlock:v13];
}

- (void)updateMembers:(id)members withContext:(id)context messagingCapabilities:(id)capabilities triggeredLocally:(BOOL)locally
{
  membersCopy = members;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  v13 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A22C0C;
  v17[3] = &unk_1E743F000;
  v17[4] = self;
  v18 = membersCopy;
  v19 = contextCopy;
  v20 = capabilitiesCopy;
  locallyCopy = locally;
  v14 = capabilitiesCopy;
  v15 = contextCopy;
  v16 = membersCopy;
  [v13 performBlock:v17];
}

- (void)manageDesignatedMembers:(id)members withType:(unsigned __int16)type
{
  typeCopy = type;
  v15 = *MEMORY[0x1E69E9840];
  membersCopy = members;
  if (typeCopy < 0xE)
  {
    v8 = +[IDSInternalQueueController sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A22DB8;
    v10[3] = &unk_1E743F028;
    v10[4] = self;
    v11 = membersCopy;
    v12 = typeCopy;
    [v8 performBlock:v10];
  }

  else
  {
    v7 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = typeCopy;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "manageDesignatedMembers: invalid type: %u", buf, 8u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeParticipants:(id)participants
{
  participantsCopy = participants;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A22EC8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = participantsCopy;
  v6 = participantsCopy;
  [v5 performBlock:v7];
}

- (void)updateParticipantData:(id)data withContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A22FF8;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = dataCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = dataCopy;
  [v8 performBlock:v11];
}

- (void)updateParticipantInfo:(id)info
{
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23104;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [v5 performBlock:v7];
}

- (void)setParticipantInfo:(id)info
{
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23210;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [v5 performBlock:v7];
}

- (void)updateParticipantType:(unsigned __int16)type members:(id)members withContext:(id)context triggeredLocally:(BOOL)locally
{
  membersCopy = members;
  contextCopy = context;
  v12 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A23358;
  v15[3] = &unk_1E743F050;
  typeCopy = type;
  v15[4] = self;
  v16 = membersCopy;
  v17 = contextCopy;
  locallyCopy = locally;
  v13 = contextCopy;
  v14 = membersCopy;
  [v12 performBlock:v15];
}

- (void)updateParticipantType:(unsigned __int16)type members:(id)members withContext:(id)context triggeredLocally:(BOOL)locally timestamp:(double)timestamp identifier:(unint64_t)identifier
{
  membersCopy = members;
  contextCopy = context;
  v16 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A234C8;
  v19[3] = &unk_1E743F078;
  typeCopy = type;
  v19[4] = self;
  v20 = membersCopy;
  v21 = contextCopy;
  locallyCopy = locally;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v17 = contextCopy;
  v18 = membersCopy;
  [v16 performBlock:v19];
}

- (void)joinWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A235E4;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  [v5 performBlock:v7];
}

- (void)leaveGroupSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A236C8;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)leaveGroupSessionWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A237C8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  [v5 performBlock:v7];
}

- (void)reconnectUPlusOneSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A238AC;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)setPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A239A8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = preferencesCopy;
  v6 = preferencesCopy;
  [v5 performBlock:v7];
}

- (void)setRequiredCapabilities:(id)capabilities requiredLackOfCapabilities:(id)ofCapabilities
{
  ofCapabilitiesCopy = ofCapabilities;
  v7 = [capabilities copy];
  v8 = [ofCapabilitiesCopy copy];

  v9 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A23AEC;
  v12[3] = &unk_1E743E620;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 performBlock:v12];
}

- (void)requestActiveParticipants
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A23BD0;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)registerPluginWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23CD0;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  [v5 performBlock:v7];
}

- (void)unregisterPluginWithOptions:(id)options
{
  optionsCopy = options;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23DDC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  [v5 performBlock:v7];
}

- (void)setCallScreeningMode:(BOOL)mode
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A23ED0;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  modeCopy = mode;
  [v5 performBlock:v6];
}

- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)reinitiate
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A23FC4;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  reinitiateCopy = reinitiate;
  [v5 performBlock:v6];
}

- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)reinitiate
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A240B8;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  reinitiateCopy = reinitiate;
  [v5 performBlock:v6];
}

- (void)requestURIsForParticipantIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A241E8;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = dsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dsCopy;
  [v8 performBlock:v11];
}

- (id)unicastParameterForParticipantID:(unint64_t)d dataMode:(int64_t)mode connectionIndex:(unint64_t)index
{
  v9 = IDSIDAliasFixedSalt();
  v10 = [(IDSGroupSession *)self unicastParameterForParticipantIDAlias:[(IDSGroupSession *)self createAliasForParticipantID:d salt:v9] salt:v9 dataMode:mode connectionIndex:index];

  return v10;
}

- (id)unicastParameterForParticipantIDAlias:(unint64_t)alias salt:(id)salt dataMode:(int64_t)mode connectionIndex:(unint64_t)index
{
  saltCopy = salt;
  v11 = [(IDSGroupSession *)self sessionIDAliasWithSalt:saltCopy];
  v12 = [[IDSGroupSessionUnicastParameter alloc] initWithGroupSessionID:v11 localParticipantID:[(IDSGroupSession *)self createAliasForLocalParticipantIDWithSalt:saltCopy] remoteParticipantID:alias salt:saltCopy dataMode:mode connectionIndex:index];

  return v12;
}

- (id)unicastConnectorWithDataMode:(int64_t)mode
{
  v5 = IDSIDAliasFixedSalt();
  v6 = [(IDSGroupSession *)self sessionIDAliasWithSalt:v5];
  v7 = [[IDSGroupSessionUnicastConnector alloc] initWithGroupSessionIDAlias:v6 participantIDAlias:[(IDSGroupSession *)self createAliasForLocalParticipantIDWithSalt:v5] salt:v5 dataMode:mode];

  return v7;
}

+ (id)augmentNetworkParametersForSession:(id)session participantID:(unint64_t)d parameters:(id)parameters
{
  v7 = MEMORY[0x1E695DEF0];
  parametersCopy = parameters;
  sessionCopy = session;
  data = [v7 data];
  v11 = [IDSGroupSession augmentNetworkParametersForSessionAlias:sessionCopy participantIDAlias:d salt:data parameters:parametersCopy];

  return v11;
}

+ (id)augmentNetworkParametersForSessionAlias:(id)alias participantIDAlias:(unint64_t)dAlias salt:(id)salt parameters:(id)parameters
{
  parametersCopy = parameters;
  saltCopy = salt;
  aliasCopy = alias;
  v12 = xpc_array_create(0, 0);
  v13 = xpc_array_create(0, 0);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
  xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, [v14 UTF8String]);

  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
  nw_parameters_set_required_netagent_classes();
  v15 = objc_alloc_init(MEMORY[0x1E69A5298]);
  [v15 setMultiplexer:@"groupsession"];
  [v15 setSessionID:aliasCopy];

  [v15 setParticipantID:dAlias];
  [v15 setSalt:saltCopy];

  stringRepresentation = [v15 stringRepresentation];
  [stringRepresentation UTF8String];
  nw_parameters_set_account_id();

  host = nw_endpoint_create_host("0.0.0.0", "0");
  MEMORY[0x19A8BBA70](parametersCopy, host);

  v18 = nw_endpoint_create_host("0.0.0.0", "3030");

  return v18;
}

+ (id)createEndpointForSessionIDAlias:(id)alias topic:(id)topic participantIDAlias:(unint64_t)dAlias salt:(id)salt
{
  v9 = MEMORY[0x1E69A5298];
  saltCopy = salt;
  topicCopy = topic;
  aliasCopy = alias;
  v13 = objc_alloc_init(v9);
  [v13 setMultiplexer:@"groupsession"];
  [v13 setSessionID:aliasCopy];

  [v13 setParticipantID:dAlias];
  [v13 setSalt:saltCopy];

  stringRepresentation = [v13 stringRepresentation];
  [stringRepresentation UTF8String];
  [topicCopy UTF8String];

  apple_service = nw_endpoint_create_apple_service();

  return apple_service;
}

+ (id)createGroupDescriptorForSessionIDAlias:(id)alias topic:(id)topic salt:(id)salt
{
  v5 = [IDSGroupSession createEndpointForSessionIDAlias:alias topic:topic participantIDAlias:0 salt:salt];
  apple_id = nw_group_descriptor_create_apple_id();

  return apple_id;
}

+ (void)augmentConnectionGroupNetworkParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = xpc_array_create(0, 0);
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "com.apple.ids");
  v4 = xpc_array_create(0, 0);
  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "IDSGroupAgent");
  nw_parameters_set_required_netagent_classes();
}

- (void)requestDataCryptorForTopic:(id)topic completionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A24970;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = topicCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = topicCopy;
  [v8 performBlock:v11];
}

- (void)requestEncryptionKeyForParticipants:(id)participants
{
  participantsCopy = participants;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A24A7C;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = participantsCopy;
  v6 = participantsCopy;
  [v5 performBlock:v7];
}

- (id)keyValueDelivery
{
  _internal_sessionWithValidityCheck = [(IDSGroupSession *)self _internal_sessionWithValidityCheck];
  keyValueDelivery = [_internal_sessionWithValidityCheck keyValueDelivery];

  return keyValueDelivery;
}

- (id)broadcastParameterForService:(id)service
{
  serviceCopy = service;
  v5 = [IDSGroupSessionBroadcastParameter alloc];
  sessionID = [(IDSGroupSession *)self sessionID];
  v7 = IDSIDAliasFixedSalt();
  v8 = [(IDSGroupSessionBroadcastParameter *)v5 initWithGroupSessionID:sessionID salt:v7 serviceName:serviceCopy];

  return v8;
}

@end