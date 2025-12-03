@interface CCRapportSyncSession
- (BOOL)_hasFlags:(unsigned __int8)flags forInteractionType:(unsigned __int8)type;
- (BOOL)_isRunningInteractionType:(unsigned __int8)type;
- (CCRapportSyncSession)initWithQueue:(id)queue interactionHandler:(id)handler;
- (id)description;
- (id)interactionOfType:(unsigned __int8)type withDevice:(id)device;
- (void)_addFlags:(unsigned __int8)flags forInteractionType:(unsigned __int8)type;
- (void)_cancelNextInteractionTimeout;
- (void)_completeSession:(id)session;
- (void)_runInteraction:(id)interaction;
- (void)_runNextInteraction;
- (void)_setNextInteractionTimeout:(unint64_t)timeout;
- (void)cancel:(id)cancel;
@end

@implementation CCRapportSyncSession

- (CCRapportSyncSession)initWithQueue:(id)queue interactionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v33.receiver = self;
  v33.super_class = CCRapportSyncSession;
  v9 = [(CCRapportSyncSession *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = MEMORY[0x1DA74EA40](handlerCopy);
    interactionHandler = v10->_interactionHandler;
    v10->_interactionHandler = v11;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v10->_uuid;
    v10->_uuid = uUID;

    v15 = objc_opt_new();
    completionHandlers = v10->_completionHandlers;
    v10->_completionHandlers = v15;

    v17 = os_transaction_create();
    transaction = v10->_transaction;
    v10->_transaction = v17;

    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F55F59B0, 0}];
    activationReasons = v10->_activationReasons;
    v10->_activationReasons = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F55F59C8, 0}];
    flags = v10->_flags;
    v10->_flags = v21;

    v23 = objc_alloc(MEMORY[0x1E695DF70]);
    v24 = objc_opt_new();
    v25 = objc_opt_new();
    v26 = [v23 initWithObjects:{v24, v25, 0}];
    registeredInteractions = v10->_registeredInteractions;
    v10->_registeredInteractions = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    runningInteractions = v10->_runningInteractions;
    v10->_runningInteractions = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    completedInteractions = v10->_completedInteractions;
    v10->_completedInteractions = v30;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSUUID *)self->_uuid description];
  v5 = [v4 substringToIndex:8];
  if ([(NSMutableArray *)self->_runningInteractions count])
  {
    v6 = [(NSMutableArray *)self->_runningInteractions componentsJoinedByString:@"|"];
    v7 = [v3 stringWithFormat:@"(Session:%@|%@)", v5, v6];
  }

  else
  {
    v7 = [v3 stringWithFormat:@"(Session:%@|%@)", v5, @"Idle"];
  }

  return v7;
}

- (void)_addFlags:(unsigned __int8)flags forInteractionType:(unsigned __int8)type
{
  flagsCopy = flags;
  v6 = MEMORY[0x1E696AD98];
  typeCopy = type;
  v9 = [(NSMutableArray *)self->_flags objectAtIndexedSubscript:type];
  v8 = [v6 numberWithInt:{objc_msgSend(v9, "intValue") | flagsCopy}];
  [(NSMutableArray *)self->_flags setObject:v8 atIndexedSubscript:typeCopy];
}

- (BOOL)_hasFlags:(unsigned __int8)flags forInteractionType:(unsigned __int8)type
{
  flagsCopy = flags;
  v5 = [(NSMutableArray *)self->_flags objectAtIndexedSubscript:type];
  LOBYTE(flagsCopy) = ([v5 intValue] & flagsCopy) != 0;

  return flagsCopy;
}

- (void)_setNextInteractionTimeout:(unint64_t)timeout
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_nextInteractionTimeout && ![(NSMutableArray *)self->_runningInteractions count])
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__CCRapportSyncSession__setNextInteractionTimeout___block_invoke;
    block[3] = &unk_1E85C2B80;
    objc_copyWeak(v9, &location);
    v9[1] = timeout;
    v5 = dispatch_block_create(0, block);
    nextInteractionTimeout = self->_nextInteractionTimeout;
    self->_nextInteractionTimeout = v5;

    v7 = dispatch_time(0, 60000000000);
    dispatch_after(v7, self->_queue, self->_nextInteractionTimeout);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __51__CCRapportSyncSession__setNextInteractionTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sync session timeout %@ after %lf seconds waiting to run interactions", WeakRetained, 0x404E000000000000];
  v4 = CCRapportSyncErrorWithDetails(v2, 0, v3);
  [WeakRetained _completeSession:v4];
}

- (void)_cancelNextInteractionTimeout
{
  dispatch_assert_queue_V2(self->_queue);
  nextInteractionTimeout = self->_nextInteractionTimeout;
  if (nextInteractionTimeout)
  {
    dispatch_block_cancel(nextInteractionTimeout);
    v4 = self->_nextInteractionTimeout;
    self->_nextInteractionTimeout = 0;
  }
}

void __64__CCRapportSyncSession_submitInteractionType_withDevice_reason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 updateState:3];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[9] addObject:v5];
    [v4[8] removeObject:v5];
    [v4 _runNextInteraction];
  }
}

- (void)_runNextInteraction
{
  v32 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (![(CCRapportSyncSession *)self _isRunningInteractionType:1])
  {
    v3 = [(NSMutableArray *)self->_registeredInteractions objectAtIndexedSubscript:0];
    allValues = [v3 allValues];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = allValues;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if ([v10 state] == 1)
          {
            [(CCRapportSyncSession *)self _runInteraction:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    if ([(NSMutableArray *)self->_runningInteractions count])
    {
      goto LABEL_33;
    }

    v11 = [(NSMutableArray *)self->_registeredInteractions objectAtIndexedSubscript:1];
    allValues2 = [v11 allValues];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = allValues2;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v23;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v22 + 1) + 8 * j);
          if ([v19 state] == 1)
          {
            if (!v16)
            {
              v16 = v19;
            }

            if ([v19 reason] == 4)
            {
              v20 = v19;

              v16 = v20;
              goto LABEL_25;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

LABEL_25:

      if (v16)
      {
        if (-[CCRapportSyncSession _hasFlags:forInteractionType:](self, "_hasFlags:forInteractionType:", 2, [v16 type]))
        {
          [(CCRapportSyncSession *)self _runInteraction:v16];
        }

LABEL_32:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
    }

    if (!self->_nextInteractionTimeout)
    {
      [(CCRapportSyncSession *)self _completeSession:0];
    }

    v16 = 0;
    goto LABEL_32;
  }

LABEL_34:
  v21 = *MEMORY[0x1E69E9840];
}

- (id)interactionOfType:(unsigned __int8)type withDevice:(id)device
{
  typeCopy = type;
  queue = self->_queue;
  deviceCopy = device;
  dispatch_assert_queue_V2(queue);
  v8 = [(NSMutableArray *)self->_registeredInteractions objectAtIndexedSubscript:typeCopy];
  rapportIdentifier = [deviceCopy rapportIdentifier];

  v10 = [v8 objectForKeyedSubscript:rapportIdentifier];

  return v10;
}

- (void)_runInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CCRapportSyncSession *)self _runInteraction:interactionCopy, v5];
  }

  dispatch_assert_queue_V2(self->_queue);
  [interactionCopy updateState:2];
  [(NSMutableArray *)self->_runningInteractions addObject:interactionCopy];
  [(CCRapportSyncSession *)self _cancelNextInteractionTimeout];
  v6 = MEMORY[0x1DA74EA40](self->_interactionHandler);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__CCRapportSyncSession__runInteraction___block_invoke;
  v10[3] = &unk_1E85C2BD0;
  v11 = interactionCopy;
  v12 = v6;
  v8 = interactionCopy;
  v9 = v6;
  dispatch_async(queue, v10);
}

- (BOOL)_isRunningInteractionType:(unsigned __int8)type
{
  typeCopy = type;
  dispatch_assert_queue_V2(self->_queue);
  firstObject = [(NSMutableArray *)self->_runningInteractions firstObject];
  LOBYTE(typeCopy) = [firstObject type] == typeCopy;

  return typeCopy;
}

- (void)cancel:(id)cancel
{
  queue = self->_queue;
  cancelCopy = cancel;
  dispatch_assert_queue_V2(queue);
  [(CCRapportSyncSession *)self _completeSession:cancelCopy];
}

- (void)_completeSession:(id)session
{
  v47[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_completionHandlers)
  {
    if (sessionCopy)
    {
      v47[0] = sessionCopy;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
      v6 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_completedInteractions, "count")}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      selfCopy = self;
      v7 = self->_completedInteractions;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v33 objects:v46 count:16];
      if (v8)
      {
        v9 = v8;
        v5 = 0;
        v10 = *v34;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v33 + 1) + 8 * i);
            detailedDescription = [v12 detailedDescription];
            [v6 addObject:detailedDescription];

            error = [v12 error];

            if (error)
            {
              error2 = [v12 error];
              device = [v12 device];
              v17 = CCRapportSyncErrorWithDevice(error2, device);

              if (!v5)
              {
                v5 = objc_opt_new();
              }

              [v5 addObject:v17];
            }
          }

          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v33 objects:v46 count:16];
        }

        while (v9);
      }

      else
      {
        v5 = 0;
      }

      self = selfCopy;
      sessionCopy = 0;
    }

    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 count];
      v20 = &stru_1F55F1328;
      *buf = 138413058;
      selfCopy2 = self;
      if (sessionCopy)
      {
        v20 = sessionCopy;
      }

      v40 = 2048;
      v41 = v19;
      v42 = 2112;
      v43 = v6;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "Sync session %@ completed with %lu interaction(s) %@ %@", buf, 0x2Au);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = self->_completionHandlers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          (*(*(*(&v29 + 1) + 8 * j) + 16))();
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }

    completionHandlers = self->_completionHandlers;
    self->_completionHandlers = 0;
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CCRapportSyncSession *)self _completeSession:sessionCopy, v6];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)submitInteractionType:(uint8_t *)buf withDevice:(os_log_t)log reason:.cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1DA444000, log, OS_LOG_TYPE_DEBUG, "%@ registered interaction: %@", buf, 0x16u);
}

- (void)cancelInteractionType:(uint64_t)a1 withDevice:(void *)a2 dueToError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = CCRapportSyncInteractionStateDescription([a2 state]);
  v7 = [a2 detailedDescription];
  v9 = 138412802;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  _os_log_debug_impl(&dword_1DA444000, a3, OS_LOG_TYPE_DEBUG, "%@ ignoring cancellation for (%@) interaction: %@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_runInteraction:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 detailedDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1DA444000, a3, OS_LOG_TYPE_DEBUG, "%@ Running interaction: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_completeSession:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DA444000, log, OS_LOG_TYPE_ERROR, "Sync session %@ already completed, ignoring (%@)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end