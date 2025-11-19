@interface CSMSNExceptionManager
+ (id)sharedInstance;
- (CSMSNExceptionManager)init;
- (void)beginAnnounceMessageException:(id)a3 reason:(id)a4;
- (void)endAnnounceMessageException:(id)a3 reason:(id)a4;
@end

@implementation CSMSNExceptionManager

- (void)endAnnounceMessageException:(id)a3 reason:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"announcemessage"])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__CSMSNExceptionManager_endAnnounceMessageException_reason___block_invoke;
    block[3] = &unk_1E865C9C8;
    block[4] = self;
    v14 = v8;
    v15 = v6;
    v16 = v7;
    v10 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]";
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Unexpected exception request : %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __60__CSMSNExceptionManager_endAnnounceMessageException_reason___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v6 = [v5 intValue];

  if (v6 >= 1)
  {
    v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 intValue];

    if (v8 > 1)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:(v8 - 1)];
      [*(*(a1 + 32) + 8) setObject:v14 forKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    }

    v15 = *(*(a1 + 32) + 8);
    if (!v15 || ![v15 count])
    {
      v16 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        v22 = 136315394;
        v23 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]_block_invoke";
        v24 = 2114;
        v25 = v17;
        _os_log_impl(&dword_1DDA4B000, v16, OS_LOG_TYPE_DEFAULT, "%s Calling MSN end announce message exception for %{public}@", &v22, 0x16u);
      }

      [*(a1 + 48) UTF8String];
      MSNMonitorEndException();
    }

    v18 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1 + 32) + 8);
      v20 = *(a1 + 56);
      v22 = 136315650;
      v23 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]_block_invoke";
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v11 = "%s Updated announce message exception table : %{public}@, reason : %{public}@";
      v12 = v18;
      v13 = 32;
      goto LABEL_16;
    }
  }

  else
  {
LABEL_6:
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v22 = 136315394;
      v23 = "[CSMSNExceptionManager endAnnounceMessageException:reason:]_block_invoke";
      v24 = 2114;
      v25 = v10;
      v11 = "%s There is no cached exception for %{public}@";
      v12 = v9;
      v13 = 22;
LABEL_16:
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)beginAnnounceMessageException:(id)a3 reason:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"announcemessage"])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v7];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__CSMSNExceptionManager_beginAnnounceMessageException_reason___block_invoke;
    block[3] = &unk_1E865C9C8;
    block[4] = self;
    v14 = v6;
    v15 = v8;
    v16 = v7;
    v10 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[CSMSNExceptionManager beginAnnounceMessageException:reason:]";
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_ERROR, "%s Unexpected exception request : %{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __62__CSMSNExceptionManager_beginAnnounceMessageException_reason___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2 || ![v2 count])
  {
    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v15 = 136315394;
      v16 = "[CSMSNExceptionManager beginAnnounceMessageException:reason:]_block_invoke";
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Calling MSN begin announce message exception for %{public}@", &v15, 0x16u);
    }

    [*(a1 + 40) UTF8String];
    MSNMonitorBeginException();
  }

  v5 = *(*(a1 + 32) + 8);
  if (v5 && ([v5 objectForKeyedSubscript:*(a1 + 48)], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 48)];
    v8 = [v7 intValue];

    v9 = (v8 + 1);
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v9];
  [*(*(a1 + 32) + 8) setObject:v10 forKeyedSubscript:*(a1 + 48)];

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(a1 + 32) + 8);
    v13 = *(a1 + 56);
    v15 = 136315650;
    v16 = "[CSMSNExceptionManager beginAnnounceMessageException:reason:]_block_invoke";
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Updated announce message exception table : %{public}@, reason : %{public}@", &v15, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (CSMSNExceptionManager)init
{
  if (+[CSUtils isDarwinOS])
  {
    v3 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CSMSNExceptionManager;
    v4 = [(CSMSNExceptionManager *)&v10 init];
    if (v4)
    {
      v5 = dispatch_queue_create("CSMSNExceptionManager Queue", 0);
      queue = v4->_queue;
      v4->_queue = v5;

      v7 = [MEMORY[0x1E695DF90] dictionary];
      announceMessageExceptions = v4->_announceMessageExceptions;
      v4->_announceMessageExceptions = v7;
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14980 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_14980, &__block_literal_global_14981);
  }

  v3 = sharedInstance_sharedInstance_14982;

  return v3;
}

uint64_t __39__CSMSNExceptionManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSMSNExceptionManager);
  v1 = sharedInstance_sharedInstance_14982;
  sharedInstance_sharedInstance_14982 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end