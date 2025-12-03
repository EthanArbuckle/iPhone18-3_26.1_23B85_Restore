@interface IDSOffGridStateManager
- (IDSOffGridStateManager)initWithQueue:(id)queue error:(id *)error;
- (IDSOffGridStateManagerDelegate)delegate;
- (NSMutableSet)invitedHandles;
- (int64_t)offGridMode;
- (int64_t)publishStatus;
- (void)_daemonControllerSetup;
- (void)_setupInterruptionHandler;
- (void)_setupXPC;
- (void)connectStewieWithCompletion:(id)completion;
- (void)contactInfoUpdated:(id)updated;
- (void)disconnectStewieWithCompletion:(id)completion;
- (void)fetchContactsOfType:(int64_t)type completion:(id)completion;
- (void)fetchStewieAvailabilityWithCompletion:(id)completion;
- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withDictionaryPayload:(id)payload completion:(id)completion;
- (void)invitedHandlesWithCompletion:(id)completion;
- (void)offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status error:(id)error;
- (void)removeAllInvitedHandlesWithCompletion:(id)completion;
- (void)removeInvitedHandles:(id)handles completion:(id)completion;
- (void)setOffGridMode:(int64_t)mode options:(id)options completion:(id)completion;
- (void)setOffGridStatus:(int64_t)status options:(id)options completion:(id)completion;
@end

@implementation IDSOffGridStateManager

- (IDSOffGridStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IDSOffGridStateManager)initWithQueue:(id)queue error:(id *)error
{
  queueCopy = queue;
  if (queueCopy)
  {
    v18.receiver = self;
    v18.super_class = IDSOffGridStateManager;
    v8 = [(IDSOffGridStateManager *)&v18 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_queue, queue);
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      uuid = v9->_uuid;
      v9->_uuid = stringGUID;

      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      invitedHandles = v9->_invitedHandles;
      v9->_invitedHandles = v12;

      [(IDSOffGridStateManager *)v9 _daemonControllerSetup];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E695DF20]);
    v16 = [v15 initWithObjectsAndKeys:{@"The queue specified is nil.", *MEMORY[0x1E696A578], 0}];
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"IDSOffGridStatusErrorDomain" code:3 userInfo:v16];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_daemonControllerSetup
{
  objc_initWeak(&location, self);
  v2 = +[IDSInternalQueueController sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A57F1C;
  v3[3] = &unk_1E743EE18;
  objc_copyWeak(&v4, &location);
  [v2 performBlock:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_setupInterruptionHandler
{
  objc_initWeak(&location, self);
  daemonController = self->_daemonController;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A58060;
  v4[3] = &unk_1E743EE18;
  objc_copyWeak(&v5, &location);
  [(IDSXPCDaemonController *)daemonController addInterruptionHandler:v4 forTarget:self];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_setupXPC
{
  v11 = *MEMORY[0x1E69E9840];
  iDSOffGridStateManager = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(iDSOffGridStateManager, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(IDSOffGridStateManager *)self uuid];
    *buf = 138412290;
    v10 = uuid;
    _os_log_impl(&dword_1959FF000, iDSOffGridStateManager, OS_LOG_TYPE_DEFAULT, "Setting up xpc for client %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  daemonController = self->_daemonController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A582A4;
  v7[3] = &unk_1E743F0E8;
  objc_copyWeak(&v8, buf);
  [(IDSXPCDaemonController *)daemonController performTask:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x1E69E9840];
}

- (int64_t)offGridMode
{
  daemonController_sync = self->_daemonController_sync;
  if (!daemonController_sync)
  {
    v4 = [IDSXPCDaemonController alloc];
    v5 = +[IDSInternalQueueController sharedInstance];
    queue = [v5 queue];
    v7 = [(IDSXPCDaemonController *)v4 initSyncControllerWithQueue:queue];
    v8 = self->_daemonController_sync;
    self->_daemonController_sync = v7;

    daemonController_sync = self->_daemonController_sync;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_195A00734;
  v19 = sub_195A03D40;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A585B0;
  v14[3] = &unk_1E7440378;
  v14[4] = &v15;
  v9 = [(IDSXPCDaemonController *)daemonController_sync offGridStateManagerCollaboratorWithErrorHandler:v14];
  v10 = v9;
  if (!v16[5])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A58628;
    v13[3] = &unk_1E74403A0;
    v13[4] = &v21;
    [v9 fetchCurrentOffGridMode:v13];
  }

  v11 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v11;
}

- (int64_t)publishStatus
{
  daemonController_sync = self->_daemonController_sync;
  if (!daemonController_sync)
  {
    v4 = [IDSXPCDaemonController alloc];
    v5 = +[IDSInternalQueueController sharedInstance];
    queue = [v5 queue];
    v7 = [(IDSXPCDaemonController *)v4 initSyncControllerWithQueue:queue];
    v8 = self->_daemonController_sync;
    self->_daemonController_sync = v7;

    daemonController_sync = self->_daemonController_sync;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_195A00734;
  v19 = sub_195A03D40;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A5889C;
  v14[3] = &unk_1E7440378;
  v14[4] = &v15;
  v9 = [(IDSXPCDaemonController *)daemonController_sync offGridStateManagerCollaboratorWithErrorHandler:v14];
  v10 = v9;
  if (!v16[5])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A58914;
    v13[3] = &unk_1E74403A0;
    v13[4] = &v21;
    [v9 fetchCurrentPublishStatus:v13];
  }

  v11 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v11;
}

- (void)setOffGridStatus:(int64_t)status options:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_195A58AB8;
  v11[4] = sub_195A58AE4;
  v12 = MEMORY[0x19A8BBEF0]();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A58AEC;
  v10[3] = &unk_1E74403C8;
  v10[4] = v11;
  [(IDSOffGridStateManager *)self setOffGridMode:status options:optionsCopy completion:v10];
  _Block_object_dispose(v11, 8);
}

- (void)setOffGridMode:(int64_t)mode options:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(IDSOffGridModeOptions);
  }

  objc_initWeak(&location, self);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_195A58AB8;
  v16[4] = sub_195A58AE4;
  v17 = MEMORY[0x19A8BBEF0](completionCopy);
  v10 = +[IDSInternalQueueController sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A58D4C;
  v12[3] = &unk_1E7440490;
  objc_copyWeak(v15, &location);
  v14 = v16;
  v12[4] = self;
  v15[1] = mode;
  v11 = optionsCopy;
  v13 = v11;
  [v10 performBlock:v12];

  objc_destroyWeak(v15);
  _Block_object_dispose(v16, 8);

  objc_destroyWeak(&location);
}

- (NSMutableSet)invitedHandles
{
  if (!self->_daemonController_sync)
  {
    v3 = [IDSXPCDaemonController alloc];
    v4 = +[IDSInternalQueueController sharedInstance];
    queue = [v4 queue];
    v6 = [(IDSXPCDaemonController *)v3 initSyncControllerWithQueue:queue];
    daemonController_sync = self->_daemonController_sync;
    self->_daemonController_sync = v6;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_195A00734;
  v25 = sub_195A03D40;
  v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_195A00734;
  v19 = sub_195A03D40;
  v20 = 0;
  v8 = self->_daemonController_sync;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A59440;
  v14[3] = &unk_1E7440378;
  v14[4] = &v15;
  v9 = [(IDSXPCDaemonController *)v8 offGridStateManagerCollaboratorWithErrorHandler:v14];
  v10 = v9;
  if (!v16[5])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A594B8;
    v13[3] = &unk_1E74404B8;
    v13[4] = &v21;
    [v9 invitedHandlesWithCompletion:v13];
  }

  v11 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

- (void)invitedHandlesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_195A00734;
  v10[4] = sub_195A03D40;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A58AB8;
  v8[4] = sub_195A58AE4;
  v9 = MEMORY[0x19A8BBEF0](completionCopy);
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A596F8;
  v6[3] = &unk_1E7440580;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = v8;
  v6[6] = v10;
  [v5 performBlock:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(v10, 8);
  objc_destroyWeak(&location);
}

- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withDictionaryPayload:(id)payload completion:(id)completion
{
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_195A58AB8;
  v24[4] = sub_195A58AE4;
  v25 = MEMORY[0x19A8BBEF0](completionCopy);
  v14 = +[IDSInternalQueueController sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A59DB0;
  v18[3] = &unk_1E7440648;
  objc_copyWeak(&v23, &location);
  v22 = v24;
  v18[4] = self;
  v15 = handleCopy;
  v19 = v15;
  v16 = payloadCopy;
  v20 = v16;
  v17 = handlesCopy;
  v21 = v17;
  [v14 performBlock:v18];

  objc_destroyWeak(&v23);
  _Block_object_dispose(v24, 8);

  objc_destroyWeak(&location);
}

- (void)removeInvitedHandles:(id)handles completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_195A58AB8;
  v14[4] = sub_195A58AE4;
  v15 = MEMORY[0x19A8BBEF0](completionCopy);
  v8 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A5A548;
  v10[3] = &unk_1E74406C0;
  objc_copyWeak(&v13, &location);
  v12 = v14;
  v10[4] = self;
  v9 = handlesCopy;
  v11 = v9;
  [v8 performBlock:v10];

  objc_destroyWeak(&v13);
  _Block_object_dispose(v14, 8);

  objc_destroyWeak(&location);
}

- (void)removeAllInvitedHandlesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A58AB8;
  v8[4] = sub_195A58AE4;
  v9 = MEMORY[0x19A8BBEF0](completionCopy);
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5ABCC;
  v6[3] = &unk_1E7440710;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = v8;
  [v5 performBlock:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)fetchContactsOfType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_195A58AB8;
  v10[4] = sub_195A58AE4;
  v11 = MEMORY[0x19A8BBEF0](completionCopy);
  v7 = +[IDSInternalQueueController sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A5B224;
  v8[3] = &unk_1E7440788;
  objc_copyWeak(v9, &location);
  v8[4] = self;
  v8[5] = v10;
  v9[1] = type;
  [v7 performBlock:v8];

  objc_destroyWeak(v9);
  _Block_object_dispose(v10, 8);

  objc_destroyWeak(&location);
}

- (void)fetchStewieAvailabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A58AB8;
  v8[4] = sub_195A58AE4;
  v9 = MEMORY[0x19A8BBEF0](completionCopy);
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5B82C;
  v6[3] = &unk_1E7440710;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = v8;
  [v5 performBlock:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)connectStewieWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A58AB8;
  v8[4] = sub_195A58AE4;
  v9 = MEMORY[0x19A8BBEF0](completionCopy);
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5BD7C;
  v6[3] = &unk_1E7440710;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = v8;
  [v5 performBlock:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)disconnectStewieWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A58AB8;
  v8[4] = sub_195A58AE4;
  v9 = MEMORY[0x19A8BBEF0](completionCopy);
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A5C2A8;
  v6[3] = &unk_1E7440710;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = v8;
  [v5 performBlock:v6];

  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);

  objc_destroyWeak(&location);
}

- (void)offGridModeUpdated:(int64_t)updated publishStatus:(int64_t)status error:(id)error
{
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v9 = objc_alloc_init(IDSOffGridModeContext);
  [(IDSOffGridModeContext *)v9 setError:errorCopy];

  iDSOffGridStateManager = [MEMORY[0x1E69A5270] IDSOffGridStateManager];
  if (os_log_type_enabled(iDSOffGridStateManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    updatedCopy = updated;
    v32 = 2048;
    statusCopy = status;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_1959FF000, iDSOffGridStateManager, OS_LOG_TYPE_DEFAULT, "offGridModeStatusUpdated to: %ld PublishStatus: %ld context: %@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A5C8CC;
      block[3] = &unk_1E7440800;
      block[4] = self;
      updatedCopy2 = updated;
      statusCopy2 = status;
      v27 = v9;
      dispatch_async(queue, block);
    }
  }

  v16 = objc_loadWeakRetained(&self->_delegate);
  if (v16)
  {
    v17 = v16;
    v18 = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = self->_queue;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_195A5C924;
      v22[3] = &unk_1E7440800;
      v22[4] = self;
      updatedCopy3 = updated;
      statusCopy3 = status;
      v23 = v9;
      dispatch_async(v20, v22);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)contactInfoUpdated:(id)updated
{
  updatedCopy = updated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      queue = self->_queue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_195A5CA5C;
      v10[3] = &unk_1E743EA30;
      v11 = updatedCopy;
      selfCopy = self;
      dispatch_async(queue, v10);
    }
  }
}

@end