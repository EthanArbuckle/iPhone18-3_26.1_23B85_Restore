@interface _CDInteractionRecorder
+ (id)interactionRecorder;
- (BOOL)recordInteraction:(id)interaction;
- (BOOL)recordInteractions:(id)interactions;
- (BOOL)recordInteractions:(id)interactions synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (_CDInteractionRecorder)initWithServiceName:(id)name;
- (id)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error;
- (id)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error;
- (unint64_t)countContactsUsingPredicate:(id)predicate error:(id *)error;
- (unint64_t)countInteractionsUsingPredicate:(id)predicate error:(id *)error;
- (unint64_t)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id account:(id)account error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id error:(id *)error;
- (void)countContactsUsingPredicate:(id)predicate completionHandler:(id)handler;
- (void)countContactsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)countInteractionsUsingPredicate:(id)predicate completionHandler:(id)handler;
- (void)countInteractionsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason completionHandler:(id)handler;
- (void)deleteInteractionsMatchingPredicate:(id)predicate synchronous:(BOOL)synchronous sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id account:(id)account completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous account:(id)account completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous domainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous domainIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)queryContactsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)queryInteractionsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)recordInteractions:(id)interactions completionHandler:(id)handler;
@end

@implementation _CDInteractionRecorder

+ (id)interactionRecorder
{
  if (interactionRecorder_onceToken != -1)
  {
    +[_CDInteractionRecorder interactionRecorder];
  }

  v3 = interactionRecorder_recorder;

  return v3;
}

- (_CDInteractionRecorder)initWithServiceName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = _CDInteractionRecorder;
  v5 = [(_CDInteractionRecorder *)&v13 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_enforceDataLimits = 257;
    v7 = +[_CDInteractionPolicies interactionPolicies];
    policies = v6->_policies;
    v6->_policies = v7;

    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
    connection = v6->_connection;
    v6->_connection = v9;

    v11 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v6->_connection resume];
  }

  return v6;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _CDInteractionRecorder;
  [(_CDInteractionRecorder *)&v3 dealloc];
}

- (BOOL)recordInteractions:(id)interactions synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  v48 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  handlerCopy = handler;
  v25 = interactionsCopy;
  v23 = [(_CDInteractionPolicies *)self->_policies filterAndModifyInteractionsWithPolicies:interactionsCopy enforceDataLimits:[(_CDInteractionRecorder *)self enforceDataLimits] enforcePrivacy:[(_CDInteractionRecorder *)self enforcePrivacy]];
  if (recordInteractions_synchronous_completionHandler___pasOnceToken5 != -1)
  {
    [_CDInteractionRecorder recordInteractions:synchronous:completionHandler:];
  }

  if (synchronousCopy)
  {
    while ((atomic_exchange(recordInteractions_synchronous_completionHandler__flag, 1u) & 1) != 0)
    {
      v9 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "[sync path] It's not our turn yet...", &buf, 2u);
      }

      dispatch_sync(recordInteractions_synchronous_completionHandler__queue, &__block_literal_global_20_1);
      dispatch_group_wait(recordInteractions_synchronous_completionHandler__group, 0xFFFFFFFFFFFFFFFFLL);
    }

    dispatch_group_enter(recordInteractions_synchronous_completionHandler__group);
    v10 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [interactionsCopy count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_DEFAULT, "[sync path] beginning recordInteractions (%tu interactions)", &buf, 0xCu);
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__22;
    v46 = __Block_byref_object_dispose__22;
    v47 = 0;
    v12 = recordInteractions_synchronous_completionHandler__queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_21;
    block[3] = &unk_1E736A578;
    block[4] = self;
    p_buf = &buf;
    v34 = v23;
    v36 = &v37;
    dispatch_sync(v12, block);
    if (*(v38 + 24) == 1)
    {
      v13 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [interactionsCopy count];
        *v41 = 134217984;
        v42 = v14;
        _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_DEFAULT, "[sync path] successfully sent %tu interactions to coreduet daemon", v41, 0xCu);
      }
    }

    else
    {
      v13 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        -[_CDInteractionRecorder recordInteractions:synchronous:completionHandler:].cold.2(&buf + 8, v41, [interactionsCopy count], v13);
      }
    }

    if (handlerCopy)
    {
      v19 = *(v38 + 24);
      v20 = *(*(&buf + 1) + 40);
      handlerCopy[2]();
    }

    v18 = *(v38 + 24);

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_24;
    v31[3] = &unk_1E736A5A0;
    v32 = handlerCopy;
    v15 = [v31 copy];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x2050000000;
    v45 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75___CDInteractionRecorder_recordInteractions_synchronous_completionHandler___block_invoke_2_26;
    v26[3] = &unk_1E736A5C8;
    v30 = &buf;
    v27 = interactionsCopy;
    v16 = v15;
    selfCopy = self;
    v29 = v16;
    v17 = [v26 copy];
    *(*(&buf + 1) + 24) = v17;
    v17[2]();

    _Block_object_dispose(&buf, 8);
    v18 = 1;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

- (BOOL)recordInteraction:(id)interaction
{
  v10 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  v4 = MEMORY[0x1E695DEC8];
  interactionCopy2 = interaction;
  v6 = [v4 arrayWithObjects:&interactionCopy count:1];

  LOBYTE(self) = [(_CDInteractionRecorder *)self recordInteractions:v6, interactionCopy, v10];
  v7 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)recordInteractions:(id)interactions
{
  interactionsCopy = interactions;
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: recordInteractions sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  os_activity_scope_leave(&v7);

  LOBYTE(self) = [(_CDInteractionRecorder *)self recordInteractions:interactionsCopy synchronous:1 completionHandler:0];
  return self;
}

- (void)recordInteractions:(id)interactions completionHandler:(id)handler
{
  handlerCopy = handler;
  interactionsCopy = interactions;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: recordInteractions async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v8, &v9);
  os_activity_scope_leave(&v9);

  [(_CDInteractionRecorder *)self recordInteractions:interactionsCopy synchronous:0 completionHandler:handlerCopy];
}

- (void)queryInteractionsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __110___CDInteractionRecorder_queryInteractionsUsingPredicate_synchronous_sortDescriptors_limit_completionHandler___block_invoke;
  v19[3] = &unk_1E7367508;
  v13 = handlerCopy;
  v20 = v13;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v16 = MEMORY[0x193B00C50](v19);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  }
  v18 = ;
  [v18 queryInteractionsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit reply:v13];
}

- (id)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v12 = _os_activity_create(&dword_191750000, "CoreDuet: queryInteractionsUsingPredicate sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__22;
  v25 = __Block_byref_object_dispose__22;
  v26 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22;
  v20 = __Block_byref_object_dispose__22;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86___CDInteractionRecorder_queryInteractionsUsingPredicate_sortDescriptors_limit_error___block_invoke;
  v15[3] = &unk_1E736A5F0;
  v15[4] = &state;
  v15[5] = &v16;
  [(_CDInteractionRecorder *)self queryInteractionsUsingPredicate:predicateCopy synchronous:1 sortDescriptors:descriptorsCopy limit:limit completionHandler:v15];
  if (error)
  {
    *error = v17[5];
  }

  v13 = *(state.opaque[1] + 40);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&state, 8);

  return v13;
}

- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_191750000, "CoreDuet: queryInteractionsUsingPredicate async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v13, &v14);
  os_activity_scope_leave(&v14);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self queryInteractionsUsingPredicate:predicateCopy synchronous:0 sortDescriptors:descriptorsCopy limit:limit completionHandler:handlerCopy];
  }
}

- (void)countInteractionsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88___CDInteractionRecorder_countInteractionsUsingPredicate_synchronous_completionHandler___block_invoke;
  v14[3] = &unk_1E7367508;
  v9 = handlerCopy;
  v15 = v9;
  predicateCopy = predicate;
  v11 = MEMORY[0x193B00C50](v14);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  }
  v13 = ;
  [v13 countInteractionsUsingPredicate:predicateCopy reply:v9];
}

- (unint64_t)countInteractionsUsingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v7 = _os_activity_create(&dword_191750000, "CoreDuet: countInteractionsUsingPredicate sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22;
  v14 = __Block_byref_object_dispose__22;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___CDInteractionRecorder_countInteractionsUsingPredicate_error___block_invoke;
  v10[3] = &unk_1E736A618;
  v10[4] = &v16;
  v10[5] = &state;
  [(_CDInteractionRecorder *)self countInteractionsUsingPredicate:predicateCopy synchronous:1 completionHandler:v10];
  if (error)
  {
    *error = *(state.opaque[1] + 40);
  }

  v8 = v17[3];
  _Block_object_dispose(&state, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)countInteractionsUsingPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  v7 = _os_activity_create(&dword_191750000, "CoreDuet: countInteractionsUsingPredicate async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v7, &v8);
  os_activity_scope_leave(&v8);

  if (handler)
  {
    [(_CDInteractionRecorder *)self countInteractionsUsingPredicate:predicateCopy synchronous:0 completionHandler:0];
  }
}

- (void)queryContactsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106___CDInteractionRecorder_queryContactsUsingPredicate_synchronous_sortDescriptors_limit_completionHandler___block_invoke;
  v19[3] = &unk_1E7367508;
  v13 = handlerCopy;
  v20 = v13;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v16 = MEMORY[0x193B00C50](v19);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  }
  v18 = ;
  [v18 queryContactsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit reply:v13];
}

- (id)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v12 = _os_activity_create(&dword_191750000, "CoreDuet: queryContactsUsingPredicate sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  os_activity_scope_leave(&state);

  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__22;
  v25 = __Block_byref_object_dispose__22;
  v26 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22;
  v20 = __Block_byref_object_dispose__22;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82___CDInteractionRecorder_queryContactsUsingPredicate_sortDescriptors_limit_error___block_invoke;
  v15[3] = &unk_1E736A5F0;
  v15[4] = &state;
  v15[5] = &v16;
  [(_CDInteractionRecorder *)self queryContactsUsingPredicate:predicateCopy synchronous:1 sortDescriptors:descriptorsCopy limit:limit completionHandler:v15];
  if (error)
  {
    *error = v17[5];
  }

  v13 = *(state.opaque[1] + 40);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&state, 8);

  return v13;
}

- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v13 = _os_activity_create(&dword_191750000, "CoreDuet: queryContactsUsingPredicate async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v13, &v14);
  os_activity_scope_leave(&v14);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self queryContactsUsingPredicate:predicateCopy synchronous:0 sortDescriptors:descriptorsCopy limit:limit completionHandler:handlerCopy];
  }
}

- (void)countContactsUsingPredicate:(id)predicate synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84___CDInteractionRecorder_countContactsUsingPredicate_synchronous_completionHandler___block_invoke;
  v14[3] = &unk_1E7367508;
  v9 = handlerCopy;
  v15 = v9;
  predicateCopy = predicate;
  v11 = MEMORY[0x193B00C50](v14);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  }
  v13 = ;
  [v13 countContactsUsingPredicate:predicateCopy reply:v9];
}

- (unint64_t)countContactsUsingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v7 = _os_activity_create(&dword_191750000, "CoreDuet: countContactsUsingPredicate sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22;
  v14 = __Block_byref_object_dispose__22;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___CDInteractionRecorder_countContactsUsingPredicate_error___block_invoke;
  v10[3] = &unk_1E736A618;
  v10[4] = &v16;
  v10[5] = &state;
  [(_CDInteractionRecorder *)self countContactsUsingPredicate:predicateCopy synchronous:1 completionHandler:v10];
  if (error)
  {
    *error = *(state.opaque[1] + 40);
  }

  v8 = v17[3];
  _Block_object_dispose(&state, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)countContactsUsingPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: countContactsUsingPredicate async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v8, &v9);
  os_activity_scope_leave(&v9);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self countContactsUsingPredicate:predicateCopy synchronous:0 completionHandler:handlerCopy];
  }
}

- (void)deleteInteractionsMatchingPredicate:(id)predicate synchronous:(BOOL)synchronous sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __130___CDInteractionRecorder_deleteInteractionsMatchingPredicate_synchronous_sortDescriptors_limit_debuggingReason_completionHandler___block_invoke;
  v20[3] = &unk_1E7367508;
  v14 = handlerCopy;
  v21 = v14;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v17 = MEMORY[0x193B00C50](v20);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  }
  v19 = ;
  [v19 deleteInteractionsMatchingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit reply:v14];
}

- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  handlerCopy = handler;
  v16 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsMatchingPredicate async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v16, &v17);
  os_activity_scope_leave(&v17);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self deleteInteractionsMatchingPredicate:predicateCopy synchronous:0 sortDescriptors:descriptorsCopy limit:limit debuggingReason:reasonCopy completionHandler:handlerCopy];
  }
}

- (unint64_t)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason error:(id *)error
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  v15 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsMatchingPredicate sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v15, &state);
  os_activity_scope_leave(&state);

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__22;
  v22 = __Block_byref_object_dispose__22;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106___CDInteractionRecorder_deleteInteractionsMatchingPredicate_sortDescriptors_limit_debuggingReason_error___block_invoke;
  v18[3] = &unk_1E736A618;
  v18[4] = &v24;
  v18[5] = &state;
  [(_CDInteractionRecorder *)self deleteInteractionsMatchingPredicate:predicateCopy synchronous:1 sortDescriptors:descriptorsCopy limit:limit debuggingReason:reasonCopy completionHandler:v18];
  if (error)
  {
    *error = *(state.opaque[1] + 40);
  }

  v16 = v25[3];
  _Block_object_dispose(&state, 8);

  _Block_object_dispose(&v24, 8);
  return v16;
}

- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_completionHandler___block_invoke;
  v14[3] = &unk_1E7367508;
  v9 = handlerCopy;
  v15 = v9;
  idCopy = id;
  v11 = MEMORY[0x193B00C50](v14);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  }
  v13 = ;
  [v13 deleteInteractionsWithBundleId:idCopy reply:v9];
}

- (void)deleteInteractionsWithBundleId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v8, &v9);
  os_activity_scope_leave(&v9);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:0 completionHandler:handlerCopy];
  }
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id error:(id *)error
{
  idCopy = id;
  v7 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId sync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  state.opaque[0] = 0;
  state.opaque[1] = &state;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22;
  v14 = __Block_byref_object_dispose__22;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___CDInteractionRecorder_deleteInteractionsWithBundleId_error___block_invoke;
  v10[3] = &unk_1E736A618;
  v10[4] = &v16;
  v10[5] = &state;
  [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:1 completionHandler:v10];
  if (error)
  {
    *error = *(state.opaque[1] + 40);
  }

  v8 = v17[3];
  _Block_object_dispose(&state, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous account:(id)account completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  accountCopy = account;
  idCopy = id;
  v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId account async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_account_completionHandler___block_invoke;
  v18[3] = &unk_1E7367508;
  v14 = handlerCopy;
  v19 = v14;
  v15 = MEMORY[0x193B00C50](v18);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  }
  v17 = ;
  [v17 deleteInteractionsWithBundleId:idCopy account:accountCopy reply:v14];
}

- (void)deleteInteractionsWithBundleId:(id)id account:(id)account completionHandler:(id)handler
{
  idCopy = id;
  accountCopy = account;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId account async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v11, &v12);
  os_activity_scope_leave(&v12);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:0 account:accountCopy completionHandler:handlerCopy];
  }
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id account:(id)account error:(id *)error
{
  idCopy = id;
  accountCopy = account;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71___CDInteractionRecorder_deleteInteractionsWithBundleId_account_error___block_invoke;
  v12[3] = &unk_1E736A618;
  v12[4] = &v19;
  v12[5] = &v13;
  [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:1 account:accountCopy completionHandler:v12];
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous domainIdentifier:(id)identifier completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  identifierCopy = identifier;
  idCopy = id;
  v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId domainIdentifier async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_domainIdentifier_completionHandler___block_invoke;
  v18[3] = &unk_1E7367508;
  v14 = handlerCopy;
  v19 = v14;
  v15 = MEMORY[0x193B00C50](v18);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  }
  v17 = ;
  [v17 deleteInteractionsWithBundleId:idCopy domainIdentifier:identifierCopy reply:v14];
}

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier completionHandler:(id)handler
{
  idCopy = id;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId domainIdentifier async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v11, &v12);
  os_activity_scope_leave(&v12);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:0 domainIdentifier:identifierCopy completionHandler:handlerCopy];
  }
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier error:(id *)error
{
  idCopy = id;
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___CDInteractionRecorder_deleteInteractionsWithBundleId_domainIdentifier_error___block_invoke;
  v12[3] = &unk_1E736A618;
  v12[4] = &v19;
  v12[5] = &v13;
  [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:1 domainIdentifier:identifierCopy completionHandler:v12];
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)deleteInteractionsWithBundleId:(id)id synchronous:(BOOL)synchronous domainIdentifiers:(id)identifiers completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  identifiersCopy = identifiers;
  idCopy = id;
  v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId domainIdentifiers dispatch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  os_activity_scope_leave(&state);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105___CDInteractionRecorder_deleteInteractionsWithBundleId_synchronous_domainIdentifiers_completionHandler___block_invoke;
  v18[3] = &unk_1E7367508;
  v14 = handlerCopy;
  v19 = v14;
  v15 = MEMORY[0x193B00C50](v18);
  connection = self->_connection;
  if (synchronousCopy)
  {
    [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  }

  else
  {
    [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
  }
  v17 = ;
  [v17 deleteInteractionsWithBundleId:idCopy domainIdentifiers:identifiersCopy reply:v14];
}

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers completionHandler:(id)handler
{
  idCopy = id;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v11 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithBundleId domainIdentifiers async", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v11, &v12);
  os_activity_scope_leave(&v12);

  if (handlerCopy)
  {
    [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:0 domainIdentifiers:identifiersCopy completionHandler:handlerCopy];
  }
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers error:(id *)error
{
  idCopy = id;
  identifiersCopy = identifiers;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81___CDInteractionRecorder_deleteInteractionsWithBundleId_domainIdentifiers_error___block_invoke;
  v12[3] = &unk_1E736A618;
  v12[4] = &v19;
  v12[5] = &v13;
  [(_CDInteractionRecorder *)self deleteInteractionsWithBundleId:idCopy synchronous:1 domainIdentifiers:identifiersCopy completionHandler:v12];
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[3];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)recordInteractions:(uint64_t)a3 synchronous:(os_log_t)log completionHandler:.cold.2(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(*a1 + 40);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "[sync path] stopped sending %tu interactions to coreduet daemon (%{public}@)", buf, 0x16u);
}

@end