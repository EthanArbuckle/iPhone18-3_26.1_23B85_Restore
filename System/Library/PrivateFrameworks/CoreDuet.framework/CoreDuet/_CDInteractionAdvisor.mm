@interface _CDInteractionAdvisor
+ (id)sharedInteractionAdvisor;
- (_CDInteractionAdvisor)initWithServiceName:(id)name;
- (id)adviseInteractionsForDate:(id)date usingSettings:(id)settings;
- (id)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings;
- (id)adviseInteractionsUsingSettings:(id)settings;
- (id)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings;
- (id)rankCandidateContacts:(id)contacts usingSettings:(id)settings;
- (void)dealloc;
- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler;
@end

@implementation _CDInteractionAdvisor

+ (id)sharedInteractionAdvisor
{
  if (sharedInteractionAdvisor_onceToken != -1)
  {
    +[_CDInteractionAdvisor sharedInteractionAdvisor];
  }

  v3 = sharedInteractionAdvisor_advisor;

  return v3;
}

- (_CDInteractionAdvisor)initWithServiceName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = _CDInteractionAdvisor;
  v5 = [(_CDInteractionAdvisor *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_connection resume];
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _CDInteractionAdvisor;
  [(_CDInteractionAdvisor *)&v3 dealloc];
}

- (id)rankCandidateContacts:(id)contacts usingSettings:(id)settings
{
  contactsCopy = contacts;
  settingsCopy = settings;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: rankCandidateContacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  [(_CDInteractionAdvisor *)self setError:0];
  connection = self->_connection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke;
  v14[3] = &unk_1E73675F8;
  v14[4] = self;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61___CDInteractionAdvisor_rankCandidateContacts_usingSettings___block_invoke_7;
  v13[3] = &unk_1E7367760;
  v13[4] = &state;
  [v10 rankCandidateContacts:contactsCopy usingSettings:settingsCopy reply:v13];
  v11 = *(state.opaque[1] + 40);

  _Block_object_dispose(&state, 8);

  return v11;
}

- (id)adviseInteractionsUsingSettings:(id)settings
{
  v26[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: adviseInteractionsUsingSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  [(_CDInteractionAdvisor *)self setError:0];
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57___CDInteractionAdvisor_adviseInteractionsUsingSettings___block_invoke;
  v18[3] = &unk_1E73675F8;
  v18[4] = self;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v8 = v7;
  if (settingsCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57___CDInteractionAdvisor_adviseInteractionsUsingSettings___block_invoke_9;
    v17[3] = &unk_1E7367760;
    v17[4] = &state;
    [v7 adviseInteractionsUsingSettings:settingsCopy reply:v17];
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"Settings cannot be nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v11 = [v9 errorWithDomain:@"_CDInteractionAdvisor" code:1 userInfo:v10];

    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v11 localizedDescription];
      [(_CDInteractionAdvisor *)localizedDescription adviseInteractionsUsingSettings:buf, v12];
    }

    [(_CDInteractionAdvisor *)self setError:v11];
  }

  v14 = *(state.opaque[1] + 40);

  _Block_object_dispose(&state, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)adviseInteractionsForDate:(id)date usingSettings:(id)settings
{
  dateCopy = date;
  settingsCopy = settings;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: adviseInteractionsForDate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  [(_CDInteractionAdvisor *)self setError:0];
  connection = self->_connection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65___CDInteractionAdvisor_adviseInteractionsForDate_usingSettings___block_invoke;
  v14[3] = &unk_1E73675F8;
  v14[4] = self;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65___CDInteractionAdvisor_adviseInteractionsForDate_usingSettings___block_invoke_18;
  v13[3] = &unk_1E7367760;
  v13[4] = &state;
  [v10 adviseInteractionsForDate:dateCopy usingSettings:settingsCopy reply:v13];
  v11 = *(state.opaque[1] + 40);

  _Block_object_dispose(&state, 8);

  return v11;
}

- (id)adviseSocialInteractionsForDate:(id)date andSeedContacts:(id)contacts usingSettings:(id)settings
{
  dateCopy = date;
  contactsCopy = contacts;
  settingsCopy = settings;
  v11 = _os_activity_create(&dword_191750000, "CoreDuet: adviseSocialInteractionsForDate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  [(_CDInteractionAdvisor *)self setError:0];
  connection = self->_connection;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87___CDInteractionAdvisor_adviseSocialInteractionsForDate_andSeedContacts_usingSettings___block_invoke;
  v17[3] = &unk_1E73675F8;
  v17[4] = self;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87___CDInteractionAdvisor_adviseSocialInteractionsForDate_andSeedContacts_usingSettings___block_invoke_19;
  v16[3] = &unk_1E7367760;
  v16[4] = &state;
  [v13 adviseSocialInteractionsForDate:dateCopy andSeedContacts:contactsCopy usingSettings:settingsCopy reply:v16];
  v14 = *(state.opaque[1] + 40);

  _Block_object_dispose(&state, 8);

  return v14;
}

- (id)adviseInteractionsForKeywordsInString:(id)string usingSettings:(id)settings
{
  stringCopy = string;
  settingsCopy = settings;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: adviseInteractionsForKeywordsInString", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  [(_CDInteractionAdvisor *)self setError:0];
  connection = self->_connection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77___CDInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke;
  v14[3] = &unk_1E73675F8;
  v14[4] = self;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77___CDInteractionAdvisor_adviseInteractionsForKeywordsInString_usingSettings___block_invoke_20;
  v13[3] = &unk_1E7367760;
  v13[4] = &state;
  [v10 adviseInteractionsForKeywordsInString:stringCopy usingSettings:settingsCopy reply:v13];
  v11 = *(state.opaque[1] + 40);

  _Block_object_dispose(&state, 8);

  return v11;
}

- (void)tuneSocialAdvisorUsingSettings:(id)settings heartBeatHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: tuneSocialAdvisorUsingSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  os_activity_scope_leave(&state);

  [(_CDInteractionAdvisor *)self setError:0];
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73___CDInteractionAdvisor_tuneSocialAdvisorUsingSettings_heartBeatHandler___block_invoke;
  v11[3] = &unk_1E73675F8;
  v11[4] = self;
  v10 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 tuneSocialAdvisorUsingSettings:settingsCopy heartBeatHandler:handlerCopy reply:0];
}

- (void)adviseInteractionsUsingSettings:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
}

@end