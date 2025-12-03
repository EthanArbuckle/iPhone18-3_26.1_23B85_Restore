@interface CSSiriClientBehaviorMonitor
+ (id)sharedInstance;
- (BOOL)isStreaming;
- (CSSiriClientBehaviorMonitor)init;
- (void)fetchCurrentStreamingState:(id)state;
- (void)notifyActivateAudioSessionWithReason:(unint64_t)reason;
- (void)notifyAudioDeviceInfoUpdated:(id)updated;
- (void)notifyDidStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d;
- (void)notifyDidStopStream:(id)stream withEventUUID:(id)d;
- (void)notifyFetchedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)notifyPreparedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully;
- (void)notifyReleaseAudioSession;
- (void)notifyWillStartStreamWithContext:(id)context option:(id)option withEventUUID:(id)d;
- (void)notifyWillStopStream:(id)stream reason:(unint64_t)reason withEventUUID:(id)d;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSSiriClientBehaviorMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9977 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9977, &__block_literal_global_9978);
  }

  v3 = sharedInstance_sharedInstance_9979;

  return v3;
}

- (void)fetchCurrentStreamingState:(id)state
{
  stateCopy = state;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CSSiriClientBehaviorMonitor_fetchCurrentStreamingState___block_invoke;
  block[3] = &unk_1E865B9C0;
  objc_copyWeak(&v9, &location);
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__CSSiriClientBehaviorMonitor_fetchCurrentStreamingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(WeakRetained + 8);
    v8 = WeakRetained;
    v5 = [WeakRetained[2] copy];
    v6 = [v8[3] copy];
    v7 = [v8[4] copy];
    (*(v3 + 16))(v3, v4, v5, v6, v7);

    WeakRetained = v8;
  }
}

- (BOOL)isStreaming
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CSSiriClientBehaviorMonitor_isStreaming__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)notifyAudioDeviceInfoUpdated:(id)updated
{
  updatedCopy = updated;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CSSiriClientBehaviorMonitor_notifyAudioDeviceInfoUpdated___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(queue, v7);
}

void __60__CSSiriClientBehaviorMonitor_notifyAudioDeviceInfoUpdated___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[CSSiriClientBehaviorMonitor notifyAudioDeviceInfoUpdated:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) recordDeviceInfo];
  v5 = [v4 route];
  [v3 setRecordRoute:v5];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) recordDeviceInfo];
  v8 = [v7 remoteDeviceUIDString];
  [v6 setDeviceId:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [*(a1 + 32) observers];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 siriClientBehaviorMonitorAudioDeviceInfoUpdated:*(a1 + 40)];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)notifyReleaseAudioSession
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CSSiriClientBehaviorMonitor_notifyReleaseAudioSession__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__CSSiriClientBehaviorMonitor_notifyReleaseAudioSession__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSiriClientBehaviorMonitor notifyReleaseAudioSession]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Notify release of audio session", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 siriClientBehaviorMonitorReleasedAudioSession:*(a1 + 32)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyActivateAudioSessionWithReason:(unint64_t)reason
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__CSSiriClientBehaviorMonitor_notifyActivateAudioSessionWithReason___block_invoke;
  v4[3] = &unk_1E865CC58;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

void __68__CSSiriClientBehaviorMonitor_notifyActivateAudioSessionWithReason___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 136315394;
    v17 = "[CSSiriClientBehaviorMonitor notifyActivateAudioSessionWithReason:]_block_invoke";
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s reason: %lu", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 siriClientBehaviorMonitor:*(a1 + 32) activatedAudioSessionWithReason:*(a1 + 40)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyDidStopStream:(id)stream withEventUUID:(id)d
{
  streamCopy = stream;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CSSiriClientBehaviorMonitor_notifyDidStopStream_withEventUUID___block_invoke;
  block[3] = &unk_1E865C778;
  block[4] = self;
  v12 = streamCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = streamCopy;
  dispatch_async(queue, block);
}

void __65__CSSiriClientBehaviorMonitor_notifyDidStopStream_withEventUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSiriClientBehaviorMonitor notifyDidStopStream:withEventUUID:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  *(*(a1 + 32) + 8) = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 siriClientBehaviorMonitor:*(a1 + 32) didStopStream:*(a1 + 40) withEventUUID:*(a1 + 48)];
        if (objc_opt_respondsToSelector())
        {
          [v8 siriClientBehaviorMonitor:*(a1 + 32) didChangedRecordState:0 withEventUUID:*(a1 + 48) withContext:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyWillStopStream:(id)stream reason:(unint64_t)reason withEventUUID:(id)d
{
  streamCopy = stream;
  dCopy = d;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CSSiriClientBehaviorMonitor_notifyWillStopStream_reason_withEventUUID___block_invoke;
  v13[3] = &unk_1E865C7A8;
  v13[4] = self;
  v14 = streamCopy;
  v15 = dCopy;
  reasonCopy = reason;
  v11 = dCopy;
  v12 = streamCopy;
  dispatch_async(queue, v13);
}

void __73__CSSiriClientBehaviorMonitor_notifyWillStopStream_reason_withEventUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSiriClientBehaviorMonitor notifyWillStopStream:reason:withEventUUID:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 siriClientBehaviorMonitor:*(a1 + 32) willStopStream:*(a1 + 40) reason:*(a1 + 56)];
        if (objc_opt_respondsToSelector())
        {
          [v8 siriClientBehaviorMonitor:*(a1 + 32) willStopStream:*(a1 + 40) reason:*(a1 + 56) withEventUUID:*(a1 + 48)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyDidStartStreamWithContext:(id)context successfully:(BOOL)successfully option:(id)option withEventUUID:(id)d
{
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__CSSiriClientBehaviorMonitor_notifyDidStartStreamWithContext_successfully_option_withEventUUID___block_invoke;
  block[3] = &unk_1E865B998;
  block[4] = self;
  v18 = contextCopy;
  successfullyCopy = successfully;
  v19 = optionCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = optionCopy;
  v16 = contextCopy;
  dispatch_async(queue, block);
}

void __97__CSSiriClientBehaviorMonitor_notifyDidStartStreamWithContext_successfully_option_withEventUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSiriClientBehaviorMonitor notifyDidStartStreamWithContext:successfully:option:withEventUUID:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [*(a1 + 32) setAudioRecordContext:*(a1 + 40)];
  *(*(a1 + 32) + 8) = *(a1 + 64);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 siriClientBehaviorMonitor:*(a1 + 32) didStartStreamWithContext:*(a1 + 40) successfully:*(a1 + 64) option:*(a1 + 48) withEventUUID:*(a1 + 56)];
        if (*(a1 + 64) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v8 siriClientBehaviorMonitor:*(a1 + 32) didChangedRecordState:1 withEventUUID:*(a1 + 56) withContext:*(a1 + 40)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyWillStartStreamWithContext:(id)context option:(id)option withEventUUID:(id)d
{
  contextCopy = context;
  optionCopy = option;
  dCopy = d;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__CSSiriClientBehaviorMonitor_notifyWillStartStreamWithContext_option_withEventUUID___block_invoke;
  v15[3] = &unk_1E865C9C8;
  v15[4] = self;
  v16 = contextCopy;
  v17 = optionCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = optionCopy;
  v14 = contextCopy;
  dispatch_async(queue, v15);
}

void __85__CSSiriClientBehaviorMonitor_notifyWillStartStreamWithContext_option_withEventUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[CSSiriClientBehaviorMonitor notifyWillStartStreamWithContext:option:withEventUUID:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [*(a1 + 32) setAudioRecordContext:*(a1 + 40)];
  *(*(a1 + 32) + 8) = 1;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) observers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 siriClientBehaviorMonitor:*(a1 + 32) willStartStreamWithContext:*(a1 + 40) option:*(a1 + 48)];
        if (objc_opt_respondsToSelector())
        {
          [v8 siriClientBehaviorMonitor:*(a1 + 32) willStartStreamWithContext:*(a1 + 40) option:*(a1 + 48) withEventUUID:*(a1 + 56)];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyPreparedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CSSiriClientBehaviorMonitor_notifyPreparedSiriClientAudioStream_successfully___block_invoke;
  block[3] = &unk_1E865B970;
  successfullyCopy = successfully;
  block[4] = self;
  v10 = streamCopy;
  v8 = streamCopy;
  dispatch_async(queue, block);
}

void __80__CSSiriClientBehaviorMonitor_notifyPreparedSiriClientAudioStream_successfully___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 48))
    {
      v3 = @"YES";
    }

    *buf = 136315394;
    v17 = "[CSSiriClientBehaviorMonitor notifyPreparedSiriClientAudioStream:successfully:]_block_invoke";
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Successfully ? %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 siriClientBehaviorMonitor:*(a1 + 32) preparedSiriClientAudioStream:*(a1 + 40) successfully:*(a1 + 48)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyFetchedSiriClientAudioStream:(id)stream successfully:(BOOL)successfully
{
  streamCopy = stream;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CSSiriClientBehaviorMonitor_notifyFetchedSiriClientAudioStream_successfully___block_invoke;
  block[3] = &unk_1E865B970;
  successfullyCopy = successfully;
  block[4] = self;
  v10 = streamCopy;
  v8 = streamCopy;
  dispatch_async(queue, block);
}

void __79__CSSiriClientBehaviorMonitor_notifyFetchedSiriClientAudioStream_successfully___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (*(a1 + 48))
    {
      v3 = @"YES";
    }

    *buf = 136315394;
    v17 = "[CSSiriClientBehaviorMonitor notifyFetchedSiriClientAudioStream:successfully:]_block_invoke";
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s Successfully ? %{public}@", buf, 0x16u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 siriClientBehaviorMonitor:*(a1 + 32) fetchedSiriClientAudioStream:*(a1 + 40) successfully:*(a1 + 48)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__CSSiriClientBehaviorMonitor_unregisterObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __50__CSSiriClientBehaviorMonitor_unregisterObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CSSiriClientBehaviorMonitor_registerObserver___block_invoke;
  v7[3] = &unk_1E865C970;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

void __48__CSSiriClientBehaviorMonitor_registerObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (CSSiriClientBehaviorMonitor)init
{
  v8.receiver = self;
  v8.super_class = CSSiriClientBehaviorMonitor;
  v2 = [(CSSiriClientBehaviorMonitor *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSiriClientBehaviorMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_isStreaming = 0;
  }

  return v2;
}

uint64_t __45__CSSiriClientBehaviorMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSSiriClientBehaviorMonitor);
  v1 = sharedInstance_sharedInstance_9979;
  sharedInstance_sharedInstance_9979 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end