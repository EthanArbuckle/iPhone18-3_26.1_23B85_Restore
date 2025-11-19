@interface IDSGroupSession
+ (id)augmentNetworkParametersForSession:(id)a3 participantID:(unint64_t)a4 parameters:(id)a5;
+ (id)augmentNetworkParametersForSessionAlias:(id)a3 participantIDAlias:(unint64_t)a4 salt:(id)a5 parameters:(id)a6;
+ (id)createEndpointForSessionIDAlias:(id)a3 topic:(id)a4 participantIDAlias:(unint64_t)a5 salt:(id)a6;
+ (id)createGroupDescriptorForSessionIDAlias:(id)a3 topic:(id)a4 salt:(id)a5;
+ (void)augmentConnectionGroupNetworkParameters:(id)a3;
- (IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5;
- (IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5 delegate:(id)a6 queue:(id)a7;
- (IDSGroupSession)initWithAccount:(id)a3 options:(id)a4;
- (IDSGroupSession)initWithAccount:(id)a3 options:(id)a4 delegate:(id)a5 queue:(id)a6;
- (NSSet)requiredCapabilities;
- (NSSet)requiredLackOfCapabilities;
- (NSString)destination;
- (NSString)sessionID;
- (id)_internal;
- (id)_internal_sessionWithValidityCheck;
- (id)broadcastParameterForService:(id)a3;
- (id)keyValueDelivery;
- (id)sessionIDAliasWithSalt:(id)a3;
- (id)unicastConnectorWithDataMode:(int64_t)a3;
- (id)unicastParameterForParticipantID:(unint64_t)a3 dataMode:(int64_t)a4 connectionIndex:(unint64_t)a5;
- (id)unicastParameterForParticipantIDAlias:(unint64_t)a3 salt:(id)a4 dataMode:(int64_t)a5 connectionIndex:(unint64_t)a6;
- (unint64_t)createAliasForLocalParticipantIDWithSalt:(id)a3;
- (unint64_t)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4;
- (unint64_t)participantIDForAlias:(unint64_t)a3 salt:(id)a4;
- (unsigned)sessionEndedReason;
- (unsigned)state;
- (void)createAliasForLocalParticipantIDWithSalt:(id)a3 completionHandler:(id)a4;
- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5;
- (void)createSessionIDAliasWithSalt:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5;
- (void)invalidate;
- (void)joinWithOptions:(id)a3;
- (void)leaveGroupSession;
- (void)leaveGroupSessionWithOptions:(id)a3;
- (void)manageDesignatedMembers:(id)a3 withType:(unsigned __int16)a4;
- (void)reconnectUPlusOneSession;
- (void)registerPluginWithOptions:(id)a3;
- (void)removeParticipants:(id)a3;
- (void)requestActiveParticipants;
- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4;
- (void)requestEncryptionKeyForParticipants:(id)a3;
- (void)requestURIsForParticipantIDs:(id)a3 completionHandler:(id)a4;
- (void)setCallScreeningMode:(BOOL)a3;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)a3;
- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)a3;
- (void)setParticipantInfo:(id)a3;
- (void)setPreferences:(id)a3;
- (void)setRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4;
- (void)unregisterPluginWithOptions:(id)a3;
- (void)updateMembers:(id)a3 withContext:(id)a4 messagingCapabilities:(id)a5 triggeredLocally:(BOOL)a6;
- (void)updateMembers:(id)a3 withContext:(id)a4 triggeredLocally:(BOOL)a5;
- (void)updateParticipantData:(id)a3 withContext:(id)a4;
- (void)updateParticipantInfo:(id)a3;
- (void)updateParticipantType:(unsigned __int16)a3 members:(id)a4 withContext:(id)a5 triggeredLocally:(BOOL)a6;
- (void)updateParticipantType:(unsigned __int16)a3 members:(id)a4 withContext:(id)a5 triggeredLocally:(BOOL)a6 timestamp:(double)a7 identifier:(unint64_t)a8;
@end

@implementation IDSGroupSession

- (IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v12 = [v11 assertQueueIsNotCurrent];

  if (v12)
  {
    v13 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
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
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [v15 performBlock:v17];
  }

  return v14;
}

- (IDSGroupSession)initWithAccount:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 assertQueueIsNotCurrent];

  if (v9)
  {
    v10 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
    v15 = v7;
    v16 = v11;
    v17 = v6;
    [v12 performBlock:v14];
  }

  return v11;
}

- (IDSGroupSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5 delegate:(id)a6 queue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSInternalQueueController sharedInstance];
  v18 = [v17 assertQueueIsNotCurrent];

  if (v18)
  {
    v19 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
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
    v25 = v12;
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v29 = v16;
    [v21 performBlock:v23];
  }

  return v20;
}

- (IDSGroupSession)initWithAccount:(id)a3 options:(id)a4 delegate:(id)a5 queue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v15 = [v14 assertQueueIsNotCurrent];

  if (v15)
  {
    v16 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
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
    v21 = v11;
    v22 = v17;
    v23 = v10;
    v24 = v12;
    v25 = v13;
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
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

- (id)sessionIDAliasWithSalt:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v10 = v6;
  [v5 performBlock:v9 waitUntilDone:1];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (unint64_t)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = IDSIDAliasHashUInt64();
  v7 = +[IDSLogging _IDSGroupSession];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218498;
    v11 = v6;
    v12 = 2048;
    v13 = a3;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "createAliasForParticipantID created %llu from %llu and %@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unint64_t)createAliasForLocalParticipantIDWithSalt:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  v6 = v4;
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

- (unint64_t)participantIDForAlias:(unint64_t)a3 salt:(id)a4
{
  v6 = a4;
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
  v20 = a3;
  v9 = v6;
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

- (void)createSessionIDAliasWithSalt:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A21E30;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)createAliasForParticipantID:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A21F2C;
  v13[3] = &unk_1E743E828;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)createAliasForLocalParticipantIDWithSalt:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A2201C;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)getParticipantIDForAlias:(unint64_t)a3 salt:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A22118;
  v13[3] = &unk_1E743E828;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
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

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A228D8;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (id)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B286B8();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)updateMembers:(id)a3 withContext:(id)a4 triggeredLocally:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[IDSInternalQueueController sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A22AA8;
  v13[3] = &unk_1E743EFD8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [v10 performBlock:v13];
}

- (void)updateMembers:(id)a3 withContext:(id)a4 messagingCapabilities:(id)a5 triggeredLocally:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A22C0C;
  v17[3] = &unk_1E743F000;
  v17[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 performBlock:v17];
}

- (void)manageDesignatedMembers:(id)a3 withType:(unsigned __int16)a4
{
  v4 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v4 < 0xE)
  {
    v8 = +[IDSInternalQueueController sharedInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A22DB8;
    v10[3] = &unk_1E743F028;
    v10[4] = self;
    v11 = v6;
    v12 = v4;
    [v8 performBlock:v10];
  }

  else
  {
    v7 = +[IDSLogging _IDSGroupSession];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v4;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "manageDesignatedMembers: invalid type: %u", buf, 8u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeParticipants:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A22EC8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)updateParticipantData:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A22FF8;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)updateParticipantInfo:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23104;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)setParticipantInfo:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23210;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)updateParticipantType:(unsigned __int16)a3 members:(id)a4 withContext:(id)a5 triggeredLocally:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v12 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A23358;
  v15[3] = &unk_1E743F050;
  v18 = a3;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  [v12 performBlock:v15];
}

- (void)updateParticipantType:(unsigned __int16)a3 members:(id)a4 withContext:(id)a5 triggeredLocally:(BOOL)a6 timestamp:(double)a7 identifier:(unint64_t)a8
{
  v14 = a4;
  v15 = a5;
  v16 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A234C8;
  v19[3] = &unk_1E743F078;
  v24 = a3;
  v19[4] = self;
  v20 = v14;
  v21 = v15;
  v25 = a6;
  v22 = a7;
  v23 = a8;
  v17 = v15;
  v18 = v14;
  [v16 performBlock:v19];
}

- (void)joinWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A235E4;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)leaveGroupSessionWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A237C8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setPreferences:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A239A8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)setRequiredCapabilities:(id)a3 requiredLackOfCapabilities:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [v6 copy];

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

- (void)registerPluginWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23CD0;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)unregisterPluginWithOptions:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A23DDC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)setCallScreeningMode:(BOOL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A23ED0;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  v7 = a3;
  [v5 performBlock:v6];
}

- (void)setForceTCPFallbackOnWiFiUsingReinitiate:(BOOL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A23FC4;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  v7 = a3;
  [v5 performBlock:v6];
}

- (void)setForceTCPFallbackOnCellUsingReinitiate:(BOOL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A240B8;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  v7 = a3;
  [v5 performBlock:v6];
}

- (void)requestURIsForParticipantIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A241E8;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (id)unicastParameterForParticipantID:(unint64_t)a3 dataMode:(int64_t)a4 connectionIndex:(unint64_t)a5
{
  v9 = IDSIDAliasFixedSalt();
  v10 = [(IDSGroupSession *)self unicastParameterForParticipantIDAlias:[(IDSGroupSession *)self createAliasForParticipantID:a3 salt:v9] salt:v9 dataMode:a4 connectionIndex:a5];

  return v10;
}

- (id)unicastParameterForParticipantIDAlias:(unint64_t)a3 salt:(id)a4 dataMode:(int64_t)a5 connectionIndex:(unint64_t)a6
{
  v10 = a4;
  v11 = [(IDSGroupSession *)self sessionIDAliasWithSalt:v10];
  v12 = [[IDSGroupSessionUnicastParameter alloc] initWithGroupSessionID:v11 localParticipantID:[(IDSGroupSession *)self createAliasForLocalParticipantIDWithSalt:v10] remoteParticipantID:a3 salt:v10 dataMode:a5 connectionIndex:a6];

  return v12;
}

- (id)unicastConnectorWithDataMode:(int64_t)a3
{
  v5 = IDSIDAliasFixedSalt();
  v6 = [(IDSGroupSession *)self sessionIDAliasWithSalt:v5];
  v7 = [[IDSGroupSessionUnicastConnector alloc] initWithGroupSessionIDAlias:v6 participantIDAlias:[(IDSGroupSession *)self createAliasForLocalParticipantIDWithSalt:v5] salt:v5 dataMode:a3];

  return v7;
}

+ (id)augmentNetworkParametersForSession:(id)a3 participantID:(unint64_t)a4 parameters:(id)a5
{
  v7 = MEMORY[0x1E695DEF0];
  v8 = a5;
  v9 = a3;
  v10 = [v7 data];
  v11 = [IDSGroupSession augmentNetworkParametersForSessionAlias:v9 participantIDAlias:a4 salt:v10 parameters:v8];

  return v11;
}

+ (id)augmentNetworkParametersForSessionAlias:(id)a3 participantIDAlias:(unint64_t)a4 salt:(id)a5 parameters:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = xpc_array_create(0, 0);
  v13 = xpc_array_create(0, 0);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", *MEMORY[0x1E69A4EC8], getuid()];
  xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, [v14 UTF8String]);

  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, [*MEMORY[0x1E69A4ED0] UTF8String]);
  nw_parameters_set_required_netagent_classes();
  v15 = objc_alloc_init(MEMORY[0x1E69A5298]);
  [v15 setMultiplexer:@"groupsession"];
  [v15 setSessionID:v11];

  [v15 setParticipantID:a4];
  [v15 setSalt:v10];

  v16 = [v15 stringRepresentation];
  [v16 UTF8String];
  nw_parameters_set_account_id();

  host = nw_endpoint_create_host("0.0.0.0", "0");
  MEMORY[0x19A8BBA70](v9, host);

  v18 = nw_endpoint_create_host("0.0.0.0", "3030");

  return v18;
}

+ (id)createEndpointForSessionIDAlias:(id)a3 topic:(id)a4 participantIDAlias:(unint64_t)a5 salt:(id)a6
{
  v9 = MEMORY[0x1E69A5298];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  [v13 setMultiplexer:@"groupsession"];
  [v13 setSessionID:v12];

  [v13 setParticipantID:a5];
  [v13 setSalt:v10];

  v14 = [v13 stringRepresentation];
  [v14 UTF8String];
  [v11 UTF8String];

  apple_service = nw_endpoint_create_apple_service();

  return apple_service;
}

+ (id)createGroupDescriptorForSessionIDAlias:(id)a3 topic:(id)a4 salt:(id)a5
{
  v5 = [IDSGroupSession createEndpointForSessionIDAlias:a3 topic:a4 participantIDAlias:0 salt:a5];
  apple_id = nw_group_descriptor_create_apple_id();

  return apple_id;
}

+ (void)augmentConnectionGroupNetworkParameters:(id)a3
{
  v3 = a3;
  v5 = xpc_array_create(0, 0);
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "com.apple.ids");
  v4 = xpc_array_create(0, 0);
  xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "IDSGroupAgent");
  nw_parameters_set_required_netagent_classes();
}

- (void)requestDataCryptorForTopic:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A24970;
  v11[3] = &unk_1E743E9B8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)requestEncryptionKeyForParticipants:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A24A7C;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (id)keyValueDelivery
{
  v2 = [(IDSGroupSession *)self _internal_sessionWithValidityCheck];
  v3 = [v2 keyValueDelivery];

  return v3;
}

- (id)broadcastParameterForService:(id)a3
{
  v4 = a3;
  v5 = [IDSGroupSessionBroadcastParameter alloc];
  v6 = [(IDSGroupSession *)self sessionID];
  v7 = IDSIDAliasFixedSalt();
  v8 = [(IDSGroupSessionBroadcastParameter *)v5 initWithGroupSessionID:v6 salt:v7 serviceName:v4];

  return v8;
}

@end