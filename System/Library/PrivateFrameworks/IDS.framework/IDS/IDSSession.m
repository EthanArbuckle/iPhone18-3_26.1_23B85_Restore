@interface IDSSession
- (BOOL)isAudioEnabled;
- (BOOL)isMuted;
- (BOOL)sendData:(id)a3 error:(id *)a4;
- (BOOL)shouldUseSocketForTransport;
- (IDSLinkSelectionStrategy)linkSelectionStrategy;
- (IDSSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5;
- (IDSSession)initWithAccount:(id)a3 destinations:(id)a4 transportType:(int64_t)a5;
- (NSString)destination;
- (NSString)sessionID;
- (id)_initWithAccount:(id)a3 destinations:(id)a4 transportType:(int64_t)a5 uniqueID:(id)a6;
- (id)_internal;
- (id)_streamPreferences;
- (id)description;
- (int)socket;
- (int64_t)invitationTimeOut;
- (unint64_t)MTUForAddressFamily:(unint64_t)a3;
- (unint64_t)initialLinkType;
- (unsigned)sessionEndedReason;
- (unsigned)state;
- (void)acceptInvitation;
- (void)acceptInvitationWithData:(id)a3;
- (void)cancelInvitation;
- (void)cancelInvitationWithData:(id)a3;
- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)a3;
- (void)dealloc;
- (void)declineInvitation;
- (void)declineInvitationWithData:(id)a3;
- (void)endSession;
- (void)endSessionWithData:(id)a3;
- (void)reconnectSession;
- (void)sendAllocationRequest:(id)a3;
- (void)sendInvitationWithData:(id)a3 declineOnError:(BOOL)a4;
- (void)sendInvitationWithOptions:(id)a3;
- (void)sendSessionMessage:(id)a3;
- (void)sendSessionMessage:(id)a3 toDestinations:(id)a4;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setInvitationTimeOut:(int64_t)a3;
- (void)setIsAudioEnabled:(BOOL)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setLinkSelectionStrategy:(id)a3;
- (void)setPreferences:(id)a3;
- (void)setStreamPreferences:(id)a3;
@end

@implementation IDSSession

- (IDSSession)initWithAccount:(id)a3 destinations:(id)a4 transportType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (_IDSRunningInDaemon())
  {
    v10 = +[IDSLogging _IDSService];
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
        sub_195B2A494();
      }
    }

    v24.receiver = self;
    v24.super_class = IDSSession;
    v15 = [(IDSSession *)&v24 init];
    v16 = v15;
    if (v15)
    {
      v15->_uniqueIDLock._os_unfair_lock_opaque = 0;
      v17 = +[IDSInternalQueueController sharedInstance];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_195A47854;
      v19[3] = &unk_1E743E698;
      v20 = v16;
      v21 = v8;
      v22 = v9;
      v23 = a5;
      [v17 performBlock:v19 waitUntilDone:1];
    }

    self = v16;
    v11 = self;
  }

  return v11;
}

- (IDSSession)initWithAccount:(id)a3 destinations:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_IDSRunningInDaemon())
  {
    v11 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    v12 = 0;
  }

  else
  {
    v13 = +[IDSInternalQueueController sharedInstance];
    v14 = [v13 assertQueueIsNotCurrent];

    if (v14)
    {
      v15 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_195B2A534();
      }
    }

    v25.receiver = self;
    v25.super_class = IDSSession;
    v16 = [(IDSSession *)&v25 init];
    v17 = v16;
    if (v16)
    {
      v16->_uniqueIDLock._os_unfair_lock_opaque = 0;
      v18 = +[IDSInternalQueueController sharedInstance];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_195A47AD4;
      v20[3] = &unk_1E743EEE8;
      v21 = v17;
      v22 = v8;
      v23 = v9;
      v24 = v10;
      [v18 performBlock:v20 waitUntilDone:1];
    }

    self = v17;
    v12 = self;
  }

  return v12;
}

- (id)_initWithAccount:(id)a3 destinations:(id)a4 transportType:(int64_t)a5 uniqueID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (_IDSRunningInDaemon())
  {
    v13 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    v14 = 0;
  }

  else
  {
    v15 = +[IDSInternalQueueController sharedInstance];
    v16 = [v15 assertQueueIsCurrent];

    if (v16)
    {
      v17 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_195B2A5D4();
      }
    }

    v25.receiver = self;
    v25.super_class = IDSSession;
    v18 = [(IDSSession *)&v25 init];
    if (v18)
    {
      v19 = [[_IDSSession alloc] initWithAccount:v10 destinations:v11 transportType:a5 uniqueID:v12 delegateContext:v18];
      internal = v18->_internal;
      v18->_internal = v19;

      v18->_uniqueIDLock._os_unfair_lock_opaque = 0;
      os_unfair_lock_lock(&v18->_uniqueIDLock);
      v21 = [(_IDSSession *)v18->_internal uniqueID];
      v22 = [v21 copy];
      uniqueID = v18->_uniqueID;
      v18->_uniqueID = v22;

      os_unfair_lock_unlock(&v18->_uniqueIDLock);
    }

    self = v18;
    v14 = self;
  }

  return v14;
}

- (void)dealloc
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A006F4;
  v8[4] = sub_195A03D20;
  v9 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A47E94;
  v7[3] = &unk_1E743E648;
  v7[4] = v8;
  [v3 performBlock:v7 waitUntilDone:0];

  v4 = +[IDSLogging IDSSession];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_INFO, "IDSSession dealloced", buf, 2u);
  }

  _Block_object_dispose(v8, 8);
  v5.receiver = self;
  v5.super_class = IDSSession;
  [(IDSSession *)&v5 dealloc];
}

- (int)socket
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A47FA8;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSString)sessionID
{
  os_unfair_lock_lock(&self->_uniqueIDLock);
  v3 = [(IDSSession *)self uniqueID];
  os_unfair_lock_unlock(&self->_uniqueIDLock);

  return v3;
}

- (NSString)destination
{
  os_unfair_lock_lock(&self->_uniqueIDLock);
  v3 = [(IDSSession *)self uniqueID];
  os_unfair_lock_unlock(&self->_uniqueIDLock);
  v4 = [@"session:" stringByAppendingString:v3];

  return v4;
}

- (id)description
{
  os_unfair_lock_lock(&self->_uniqueIDLock);
  v3 = [(IDSSession *)self uniqueID];
  os_unfair_lock_unlock(&self->_uniqueIDLock);

  return v3;
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
  v5[2] = sub_195A481E0;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A482F4;
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
      sub_195B2A674();
    }
  }

  internal = self->_internal;

  return internal;
}

- (unint64_t)initialLinkType
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A48480;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)sendInvitationWithOptions:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"direction"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = +[IDSLogging IDSSession];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_INFO, "Received invalid options %@, bailing", buf, 0xCu);
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v5, "BOOLValue")}];
    v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"direction", 0}];
    v8 = +[IDSInternalQueueController sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A48688;
    v11[3] = &unk_1E743EA30;
    v11[4] = self;
    v12 = v7;
    v9 = v7;
    [v8 performBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sendInvitationWithData:(id)a3 declineOnError:(BOOL)a4
{
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A4875C;
  v9[3] = &unk_1E743FCA8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [v7 performBlock:v9];
}

- (void)setStreamPreferences:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A48828;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (id)_streamPreferences
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006F4;
  v11 = sub_195A03D20;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A4895C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)cancelInvitationWithRemoteEndedReasonOverride:(unsigned int)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A48A4C;
  v6[3] = &unk_1E743FCD0;
  v6[4] = self;
  v7 = a3;
  [v5 performBlock:v6];
}

- (void)cancelInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A48B18;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)acceptInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A48BDC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)declineInvitationWithData:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A48CA0;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)cancelInvitation
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A48D3C;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)acceptInvitation
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A48DD8;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)declineInvitation
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A48E74;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)endSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A48F10;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)endSessionWithData:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A48FD4;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)sendSessionMessage:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A49098;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)sendSessionMessage:(id)a3 toDestinations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A49180;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

- (void)sendAllocationRequest:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A4924C;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)setIsAudioEnabled:(BOOL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A492F8;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  v7 = a3;
  [v5 performBlock:v6];
}

- (BOOL)isAudioEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A493F4;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)setIsMuted:(BOOL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A494CC;
  v6[3] = &unk_1E743E8C8;
  v6[4] = self;
  v7 = a3;
  [v5 performBlock:v6];
}

- (BOOL)isMuted
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A495C8;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (BOOL)sendData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -86;
  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A49720;
  v10[3] = &unk_1E743FCF8;
  v12 = &v14;
  v10[4] = self;
  v8 = v6;
  v11 = v8;
  v13 = a4;
  [v7 performBlock:v10 waitUntilDone:1];

  LOBYTE(a4) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return a4;
}

- (void)setInvitationTimeOut:(int64_t)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A497F8;
  v6[3] = &unk_1E743E6C0;
  v6[4] = self;
  v6[5] = a3;
  [v5 performBlock:v6];
}

- (int64_t)invitationTimeOut
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A498EC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)reconnectSession
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A499B4;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
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
  v5[2] = sub_195A49AA8;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)setPreferences:(id)a3
{
  v4 = [a3 copy];
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A49B9C;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (IDSLinkSelectionStrategy)linkSelectionStrategy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006F4;
  v11 = sub_195A03D20;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A49CD0;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setLinkSelectionStrategy:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A49DD8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (BOOL)shouldUseSocketForTransport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A49ECC;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (unint64_t)MTUForAddressFamily:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v5 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A49FF4;
  v8[3] = &unk_1E743F670;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  [v5 performBlock:v8 waitUntilDone:1];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

@end