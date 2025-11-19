@interface CPLEngineFeedbackManager
- (CPLEngineFeedbackManager)initWithEngineLibrary:(id)a3;
- (CPLEngineLibrary)engineLibrary;
- (void)_appendMessage:(id)a3;
- (void)_appendMessages:(id)a3;
- (void)_load;
- (void)_reallySendFeedbackToServer;
- (void)_save;
- (void)_sendFeedbackToServerIfNecessary;
- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4;
- (void)getStatusWithCompletionHandler:(id)a3;
- (void)openWithCompletionHandler:(id)a3;
- (void)reportFetchChangesRewindToFeatureVersion:(unint64_t)a3;
- (void)reportMessage:(id)a3;
- (void)reportMessages:(id)a3;
- (void)reportMiscInformation:(id)a3;
- (void)reportResetType:(id)a3 reason:(id)a4 uuid:(id)a5;
- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4;
- (void)sendFeedbackToServerIfNecessary;
- (void)setDisableFeedback:(BOOL)a3;
- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5;
@end

@implementation CPLEngineFeedbackManager

- (CPLEngineLibrary)engineLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);

  return WeakRetained;
}

- (void)testKey:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"feedback"])
  {
    if (v9)
    {
      v11 = [[CPLTestFeedbackMessage alloc] initWithTestMessage:v9 libraryIdentifier:self->_libraryIdentifier];
      [(CPLEngineFeedbackManager *)self reportMessage:v11];
      (*(v10 + 2))(v10, 1, 0, 0);
    }

    else
    {
      v16 = [CPLErrors incorrectParametersErrorForParameter:@"value"];
      (*(v10 + 2))(v10, 1, 0, v16);
    }
  }

  else if ([v8 isEqualToString:@"send-feedback"])
  {
    queue = self->_queue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__CPLEngineFeedbackManager_testKey_value_completionHandler___block_invoke;
    v17[3] = &unk_1E861AA50;
    v17[4] = self;
    v18 = v10;
    v13 = v17;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_17572;
    block[3] = &unk_1E861B4E0;
    v20 = v13;
    v14 = queue;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v14, v15);
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0, 0);
  }
}

uint64_t __60__CPLEngineFeedbackManager_testKey_value_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _load];
  if ([*(*(a1 + 32) + 24) count])
  {
    [*(a1 + 32) _reallySendFeedbackToServer];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)reportMiscInformation:(id)a3
{
  v4 = a3;
  v5 = [[CPLInfoFeedbackMessage alloc] initWithInfo:v4 libraryIdentifier:self->_libraryIdentifier];

  [(CPLEngineFeedbackManager *)self reportMessage:v5];
}

- (void)reportSetting:(id)a3 hasBeenSetToValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CPLSettingFeedbackMessage alloc] initWithSetting:v7 value:v6 libraryIdentifier:self->_libraryIdentifier];

  [(CPLEngineFeedbackManager *)self reportMessage:v8];
}

- (void)reportFetchChangesRewindToFeatureVersion:(unint64_t)a3
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rewind to catch up with changes from feature version %lu", a3];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  [(CPLEngineFeedbackManager *)self reportResetType:@"rewind" reason:v6 uuid:v5];
}

- (void)reportResetType:(id)a3 reason:(id)a4 uuid:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CPLResetFeedbackMessage alloc] initWithResetType:v10 reason:v9 uuid:v8 libraryIdentifier:self->_libraryIdentifier];

  [(CPLEngineFeedbackManager *)self reportMessage:v11];
}

- (void)reportMessages:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CPLEngineFeedbackManager_reportMessages___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)reportMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CPLEngineFeedbackManager_reportMessage___block_invoke;
  v7[3] = &unk_1E861B290;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)sendFeedbackToServerIfNecessary
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CPLEngineFeedbackManager_sendFeedbackToServerIfNecessary__block_invoke;
  v6[3] = &unk_1E861A940;
  v6[4] = self;
  v3 = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17572;
  block[3] = &unk_1E861B4E0;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)_sendFeedbackToServerIfNecessary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_sendTask)
  {
    v3 = [(CPLEngineFeedbackManager *)self engineLibrary];
    v4 = [v3 systemMonitor];
    v5 = [v4 isNetworkConnected];

    if (v5)
    {
      [(CPLEngineFeedbackManager *)self _load];
      if ([(NSMutableArray *)self->_messagesToSend count])
      {
        [(NSDate *)self->_lastAttemptDate timeIntervalSinceNow];
        if (v6 > 0.0 || v6 < -3600.0 || ([MEMORY[0x1E695E000] standardUserDefaults], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForKey:", @"CPLAlwaysSendFeedback"), v7, v8))
        {

          [(CPLEngineFeedbackManager *)self _reallySendFeedbackToServer];
        }
      }
    }
  }
}

- (void)_reallySendFeedbackToServer
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_closed && self->_opened && !self->_sendTask)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    lastAttemptDate = self->_lastAttemptDate;
    self->_lastAttemptDate = v3;

    [(CPLEngineFeedbackManager *)self _save];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLFeedbackOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSMutableArray *)self->_messagesToSend count];
        *buf = 134217984;
        v17 = v6;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "Sending feedback to server with %lu messages", buf, 0xCu);
      }
    }

    v7 = [(NSMutableArray *)self->_messagesToSend copy];
    messagesSending = self->_messagesSending;
    self->_messagesSending = v7;

    WeakRetained = objc_loadWeakRetained(&self->_engineLibrary);
    v10 = [WeakRetained transport];
    v11 = self->_messagesSending;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__CPLEngineFeedbackManager__reallySendFeedbackToServer__block_invoke;
    v15[3] = &unk_1E8620A88;
    v15[4] = self;
    v12 = [v10 sendFeedbackTaskForMessages:v11 completionHandler:v15];
    sendTask = self->_sendTask;
    self->_sendTask = v12;

    [(CPLEngineTransportSendFeedbackTask *)self->_sendTask runWithNoSyncSession];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __55__CPLEngineFeedbackManager__reallySendFeedbackToServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CPLEngineFeedbackManager__reallySendFeedbackToServer__block_invoke_2;
  v10[3] = &unk_1E861B290;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17572;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void __55__CPLEngineFeedbackManager__reallySendFeedbackToServer__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    if (*(a1 + 40))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v3 = __CPLFeedbackOSLogDomain();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 40);
          v13 = 138412290;
          v14 = v4;
          _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "Failed to send feedback. Will retry later. Error: %@", &v13, 0xCu);
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v5 = __CPLFeedbackOSLogDomain();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(*(a1 + 32) + 32) count];
          [*(*(a1 + 32) + 40) timeIntervalSinceNow];
          v13 = 134218240;
          v14 = v6;
          v15 = 2048;
          v16 = -v7;
          _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "%lu feedback messages sent in %.1fs", &v13, 0x16u);
        }

        v2 = *(a1 + 32);
      }

      [*(v2 + 24) removeObjectsInArray:*(v2 + 32)];
      [*(a1 + 32) _save];
    }
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_appendMessages:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_deactivated && !self->_disableFeedback)
  {
    dispatch_assert_queue_V2(self->_queue);
    [(CPLEngineFeedbackManager *)self _load];
    if (!self->_messagesToSend)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      messagesToSend = self->_messagesToSend;
      self->_messagesToSend = v5;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[CPLSerializedFeedbackMessage alloc] initWithMessage:*(*(&v15 + 1) + 8 * i)];
          if ((_CPLSilentLogging & 1) == 0)
          {
            v13 = __CPLFeedbackOSLogDomain();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v20 = v12;
              _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Scheduling feedback message %@", buf, 0xCu);
            }
          }

          [(NSMutableArray *)self->_messagesToSend addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }

    [(CPLEngineFeedbackManager *)self _save];
    [(CPLEngineFeedbackManager *)self _sendFeedbackToServerIfNecessary];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_appendMessage:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_deactivated && !self->_disableFeedback)
  {
    dispatch_assert_queue_V2(self->_queue);
    [(CPLEngineFeedbackManager *)self _load];
    if (!self->_messagesToSend)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      messagesToSend = self->_messagesToSend;
      self->_messagesToSend = v5;
    }

    v7 = [[CPLSerializedFeedbackMessage alloc] initWithMessage:v4];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLFeedbackOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling feedback message %@", &v10, 0xCu);
      }
    }

    [(NSMutableArray *)self->_messagesToSend addObject:v7];
    [(CPLEngineFeedbackManager *)self _save];
    [(CPLEngineFeedbackManager *)self _sendFeedbackToServerIfNecessary];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_load
{
  if (!self->_messagesToSend)
  {
    v20 = v2;
    v21 = v3;
    v5 = objc_autoreleasePoolPush();
    if (!self->_closed)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:self->_feedbackMessagesURL];
      if (v6)
      {
        v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 objectForKeyedSubscript:@"lastAttempt"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&self->_lastAttemptDate, v8);
            }

            v9 = [v7 objectForKeyedSubscript:@"messages"];
            v10 = [CPLSerializedFeedbackMessage messagesForPlistRepresentation:v9];
            v11 = [v10 mutableCopy];
            messagesToSend = self->_messagesToSend;
            self->_messagesToSend = v11;
          }
        }

        v13 = self->_messagesToSend;
        if (v13)
        {
          if ([(NSMutableArray *)v13 count]>= 0xB)
          {
            [(CPLEngineFeedbackManager *)self _save];
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = __CPLFeedbackOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *v19 = 0;
            _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Unable to read stored feedback messages. We might have dropped some messages we wanted to send", v19, 2u);
          }
        }
      }

      if (!self->_messagesToSend)
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = self->_messagesToSend;
        self->_messagesToSend = v15;
      }

      if (!self->_lastAttemptDate)
      {
        v17 = [MEMORY[0x1E695DF00] distantPast];
        lastAttemptDate = self->_lastAttemptDate;
        self->_lastAttemptDate = v17;
      }
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_save
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_closed || (messagesToSend = self->_messagesToSend) == 0)
  {
LABEL_12:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  if ([(NSMutableArray *)messagesToSend count])
  {
    v5 = objc_autoreleasePoolPush();
    if ([(NSMutableArray *)self->_messagesToSend count]>= 0xB)
    {
      v6 = [(NSMutableArray *)self->_messagesToSend count]- 10;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLFeedbackOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v22 = v6;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Too many messages to send to the server. Will drop %lu messages", buf, 0xCu);
        }
      }

      [(NSMutableArray *)self->_messagesToSend removeObjectsInRange:0, v6];
    }

    v19[0] = @"messages";
    v8 = [CPLSerializedFeedbackMessage plistRepresentationForMessages:self->_messagesToSend];
    v19[1] = @"lastAttempt";
    v20[0] = v8;
    v20[1] = self->_lastAttemptDate;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v18 = 0;
    v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v9 format:200 options:0 error:&v18];
    v11 = v18;
    if (!v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v14 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v11;
          _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Failed to create feedback messages serialization: %@", buf, 0xCu);
        }
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Feedback/CPLEngineFeedbackManager.m"];
      [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:160 description:{@"Failed to create feedback messages serialization: %@", v11}];

      abort();
    }

    [v10 writeToURL:self->_feedbackMessagesURL atomically:1];

    objc_autoreleasePoolPop(v5);
    goto LABEL_12;
  }

  v17 = [MEMORY[0x1E696AC08] defaultManager];
  [v17 removeItemAtURL:self->_feedbackMessagesURL error:0];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)getStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_disableFeedback)
  {
    (*(v4 + 2))(v4, @"disabled", 0);
  }

  else
  {
    queue = self->_queue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CPLEngineFeedbackManager_getStatusWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E861AA50;
    v10[4] = self;
    v11 = v4;
    v7 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_17572;
    block[3] = &unk_1E861B4E0;
    v13 = v7;
    v8 = queue;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v8, v9);
  }
}

void __59__CPLEngineFeedbackManager_getStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _load];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"Sending %lu feedback messages...", objc_msgSend(*(*(a1 + 32) + 32), "count")];
    v2 = *(a1 + 32);
  }

  else
  {
    v23 = 0;
  }

  v3 = [*(v2 + 24) count];
  v4 = *(*(a1 + 32) + 40);
  v5 = [MEMORY[0x1E695DF00] distantPast];
  v6 = [v4 isEqual:v5];

  if (v3)
  {
    if (v6)
    {
      v7 = @"never sent";
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [CPLDateFormatter stringForTimeIntervalAgo:*(*(a1 + 32) + 40) now:0];
      v7 = [v8 stringWithFormat:@"last attempt %@", v9];
    }

    if (v3 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v3;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
    v12 = v3 - v10;
    do
    {
      v13 = [*(*(a1 + 32) + 24) objectAtIndexedSubscript:v12];
      v14 = [v13 description];
      [v11 addObject:v14];

      ++v12;
    }

    while (v12 < v3);
    v15 = [v11 componentsJoinedByString:@"\n    "];
    if (v23)
    {
      v16 = [*(*(a1 + 32) + 24) count];
      v17 = "";
      if (v3 > 4)
      {
        v17 = "\n    ...";
      }

      [v23 appendFormat:@"\n%lu messages to send (%@):%s\n    %@", v16, v7, v17, v15];
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x1E696AD60]);
      v19 = [*(*(a1 + 32) + 24) count];
      v20 = "";
      if (v3 > 4)
      {
        v20 = "\n    ...";
      }

      v23 = [v18 initWithFormat:@"%lu messages to send (%@):%s\n    %@", v19, v7, v20, v15];
    }
  }

  else
  {
    if (v6)
    {
      v7 = @"no feedback ever sent";
    }

    else
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [CPLDateFormatter stringForTimeIntervalAgo:*(*(a1 + 32) + 40) now:0];
      v7 = [v21 stringWithFormat:@"last feedback sent %@", v22];
    }

    v11 = v23;
    v23 = [(__CFString *)v7 mutableCopy];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setDisableFeedback:(BOOL)a3
{
  self->_disableFeedback = a3;
  if (a3)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__CPLEngineFeedbackManager_setDisableFeedback___block_invoke;
    v7[3] = &unk_1E861A940;
    v7[4] = self;
    v4 = v7;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cpl_dispatch_async_block_invoke_17572;
    block[3] = &unk_1E861B4E0;
    v9 = v4;
    v5 = queue;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v5, v6);
  }
}

uint64_t __47__CPLEngineFeedbackManager_setDisableFeedback___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);

  return [v2 _save];
}

- (void)closeAndDeactivate:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CPLEngineFeedbackManager_closeAndDeactivate_completionHandler___block_invoke;
  v12[3] = &unk_1E861F2E8;
  v14 = a3;
  v12[4] = self;
  v13 = v6;
  v8 = v12;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17572;
  block[3] = &unk_1E861B4E0;
  v16 = v8;
  v9 = queue;
  v10 = v6;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

uint64_t __65__CPLEngineFeedbackManager_closeAndDeactivate_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 57) = 1;
  *(*(a1 + 32) + 58) = *(a1 + 48);
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [v2 cancel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;

    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

- (void)openWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CPLEngineFeedbackManager_openWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E861AA50;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_17572;
  block[3] = &unk_1E861B4E0;
  v13 = v6;
  v7 = queue;
  v8 = v4;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

uint64_t __54__CPLEngineFeedbackManager_openWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 1;
  [*(a1 + 32) _sendFeedbackToServerIfNecessary];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (CPLEngineFeedbackManager)initWithEngineLibrary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPLEngineFeedbackManager;
  v5 = [(CPLEngineFeedbackManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_engineLibrary, v4);
    v7 = dispatch_queue_create("com.apple.cpl.feedback", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    WeakRetained = objc_loadWeakRetained(&v6->_engineLibrary);
    v10 = [WeakRetained clientLibraryBaseURL];
    v11 = [v10 URLByAppendingPathComponent:@"feedbackmessages.plist" isDirectory:0];
    feedbackMessagesURL = v6->_feedbackMessagesURL;
    v6->_feedbackMessagesURL = v11;

    v13 = [v4 libraryIdentifier];
    libraryIdentifier = v6->_libraryIdentifier;
    v6->_libraryIdentifier = v13;
  }

  return v6;
}

@end