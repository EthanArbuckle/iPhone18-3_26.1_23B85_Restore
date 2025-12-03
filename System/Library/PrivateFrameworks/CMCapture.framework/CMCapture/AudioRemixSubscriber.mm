@interface AudioRemixSubscriber
- (AudioRemixSubscriber)initWithSession:(id)session andNodeMetadataOutput:(id)output usePIPAIngestSignalingDomain:(BOOL)domain completionHandler:(id)handler;
- (int)finishAndGetResultsBlockingWithStartingPTS:(id *)s andEndingPTS:(id *)tS;
- (int)handleReceiveCompletion:(id)completion;
- (int)handleReceiveResult:(id)result;
- (void)activate;
- (void)cancelSubscription;
- (void)dealloc;
@end

@implementation AudioRemixSubscriber

- (AudioRemixSubscriber)initWithSession:(id)session andNodeMetadataOutput:(id)output usePIPAIngestSignalingDomain:(BOOL)domain completionHandler:(id)handler
{
  v19.receiver = self;
  v19.super_class = AudioRemixSubscriber;
  v10 = [(AudioRemixSubscriber *)&v19 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.cameracapture.audioremixanalysis.subscriber", v11);
    v10[24] = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v12;
    *(v10 + 5) = session;
    if (output)
    {
      v13 = CFRetain(output);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 6) = v13;
    v10[56] = domain;
    *(v10 + 4) = _Block_copy(handler);
    *(v10 + 8) = 0;
    *(v10 + 9) = 0;
    v14 = [objc_msgSend(*(v10 + 6) "format")];
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *(v10 + 10) = v14;
    v15 = MEMORY[0x1E6960C70];
    v16 = *MEMORY[0x1E6960C70];
    *(v10 + 88) = *MEMORY[0x1E6960C70];
    v17 = *(v15 + 16);
    *(v10 + 13) = v17;
    *(v10 + 7) = v16;
    *(v10 + 16) = v17;
  }

  return v10;
}

- (void)dealloc
{
  subscription = self->_subscription;
  if (subscription)
  {
    [(SNMovieRemixSubscriptionProtocol *)subscription cancel];

    self->_subscription = 0;
  }

  self->_session = 0;
  dispatch_release(self->_workQueue);
  self->_workQueue = 0;
  _Block_release(self->_subscriptionCompletionHandler);
  self->_subscriptionCompletionHandler = 0;

  self->_nodeMetadataOutput = 0;
  audioMetadataFormatDescription = self->_audioMetadataFormatDescription;
  if (audioMetadataFormatDescription)
  {
    CFRelease(audioMetadataFormatDescription);
  }

  self->_audioMetadataFormatDescription = 0;
  v5.receiver = self;
  v5.super_class = AudioRemixSubscriber;
  [(AudioRemixSubscriber *)&v5 dealloc];
}

- (int)handleReceiveResult:(id)result
{
  if (!result || (self->_startingPTS.flags & 1) == 0)
  {
    return -1;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (!_FigIsNotCurrentDispatchQueue())
  {
    FigDebugAssert3();
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AudioRemixSubscriber_handleReceiveResult___block_invoke;
  block[3] = &unk_1E79906C0;
  block[4] = self;
  block[5] = result;
  block[6] = &v9;
  dispatch_sync(workQueue, block);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void __44__AudioRemixSubscriber_handleReceiveResult___block_invoke(uint64_t a1)
{
  v43 = 0;
  v44 = 0;
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    v2 = [objc_msgSend(*(a1 + 40) "dspParameters")];
    v3 = v2;
    v4 = 8 * v2;
    v5 = ((8 * v2) & 0x7FFFFFFF8) + 50;
    v6 = malloc_type_malloc(v5, 0x8532AB27uLL);
    v7 = v6;
    *v6 = bswap32(v5);
    *(v6 + 1) = 0x1000000;
    *(v6 + 2) = bswap32(v4 + 42);
    if (*(*(a1 + 32) + 56))
    {
      v8 = 1885958241;
    }

    else
    {
      v8 = 1667853921;
    }

    *(v6 + 3) = bswap32(v8);
    *(v6 + 1) = xmmword_1AD046D40;
    *(v6 + 8) = 0;
    *(v6 + 9) = bswap32(v4 + 14);
    *(v6 + 5) = 1836084835;
    *(v6 + 24) = bswap32(v3) >> 16;
    if (v3)
    {
      v9 = 0;
      v10 = v3;
      do
      {
        v11 = [objc_msgSend(*(a1 + 40) "dspParameters")];
        v12 = [v11 key];
        [v11 value];
        *&v7[8 * v9++ + 50] = bswap64(v13 | (v12 << 32));
      }

      while (v10 != v9);
    }

    v14 = *MEMORY[0x1E695E480];
    *(*(*(a1 + 48) + 8) + 24) = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v7, v5, *MEMORY[0x1E695E488], 0, 0, v5, 0, &v44);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      __44__AudioRemixSubscriber_handleReceiveResult___block_invoke_cold_1();
    }

    else if (v44)
    {
      v15 = *(MEMORY[0x1E6960CF0] + 48);
      *&v42.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
      *&v42.decodeTimeStamp.value = v15;
      v16 = *(MEMORY[0x1E6960CF0] + 64);
      v17 = *(MEMORY[0x1E6960CF0] + 16);
      *&v42.duration.value = *MEMORY[0x1E6960CF0];
      *&v42.duration.epoch = v17;
      v18 = *(a1 + 32);
      *&v42.presentationTimeStamp.value = *(v18 + 88);
      v19 = *(v18 + 104);
      v42.decodeTimeStamp.epoch = v16;
      v42.presentationTimeStamp.epoch = v19;
      lhs = *(v18 + 112);
      rhs = *(v18 + 88);
      CMTimeSubtract(&v42.duration, &lhs, &rhs);
      sampleSizeArray = CMBlockBufferGetDataLength(v44);
      *(*(*(a1 + 48) + 8) + 24) = CMSampleBufferCreate(v14, v44, 1u, 0, 0, *(*(a1 + 32) + 80), 1, 1, &v42, 1, &sampleSizeArray, &v43);
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        __44__AudioRemixSubscriber_handleReceiveResult___block_invoke_cold_2();
      }

      else
      {
        if (!v43)
        {
          goto LABEL_23;
        }

        v39[0] = 0x1F21A99D0;
        v20 = MEMORY[0x1E696AD98];
        [*(a1 + 40) dialogueGain];
        v40[0] = [v20 numberWithFloat:?];
        v39[1] = 0x1F21A99F0;
        v21 = MEMORY[0x1E696AD98];
        [*(a1 + 40) dialogueLoudness];
        v40[1] = [v21 numberWithFloat:?];
        v39[2] = 0x1F21A9990;
        v22 = MEMORY[0x1E696AD98];
        [*(a1 + 40) ambienceGain];
        v40[2] = [v22 numberWithFloat:?];
        v39[3] = 0x1F21A99B0;
        v23 = MEMORY[0x1E696AD98];
        [*(a1 + 40) ambienceLoudness];
        v40[3] = [v23 numberWithFloat:?];
        v39[4] = 0x1F21A9A10;
        v24 = MEMORY[0x1E696AD98];
        [*(a1 + 40) recordingLoudness];
        v40[4] = [v24 numberWithFloat:?];
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:5];
        CMSetAttachment(v43, @"CinematicAudioRemixRecordingStats", v25, 1u);
        v26 = *(*(a1 + 32) + 48);
        if (v26)
        {
          if (dword_1EB58E580)
          {
            v38 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v28 = v38;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 & 0xFFFFFFFE;
            }

            if (v29)
            {
              lhs = v42.presentationTimeStamp;
              Seconds = CMTimeGetSeconds(&lhs);
              lhs = v42.duration;
              v31 = CMTimeGetSeconds(&lhs);
              LODWORD(rhs.value) = 136315650;
              *(&rhs.value + 4) = "[AudioRemixSubscriber handleReceiveResult:]_block_invoke";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = Seconds;
              HIWORD(rhs.epoch) = 2048;
              v35 = v31;
              LODWORD(v33) = 32;
              blockBufferOut = &rhs;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v26 = *(*(a1 + 32) + 48);
          }

          [v26 emitSampleBuffer:{v43, blockBufferOut, v33}];
        }
      }
    }
  }

  if (v43)
  {
    CFRelease(v43);
  }

LABEL_23:
  if (v44)
  {
    CFRelease(v44);
  }
}

- (int)handleReceiveCompletion:(id)completion
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (!_FigIsNotCurrentDispatchQueue())
  {
    FigDebugAssert3();
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AudioRemixSubscriber_handleReceiveCompletion___block_invoke;
  block[3] = &unk_1E79906E8;
  block[4] = self;
  block[5] = completion;
  block[6] = &v9;
  block[7] = &v13;
  dispatch_sync(workQueue, block);
  if (*(v10 + 24) == 1)
  {
    (*(self->_subscriptionCompletionHandler + 2))(self->_subscriptionCompletionHandler, 0);
  }

  v6 = *(v14 + 6);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void *__48__AudioRemixSubscriber_handleReceiveCompletion___block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(result[6] + 8) + 24) = 1;
    if (result[5])
    {
      return __48__AudioRemixSubscriber_handleReceiveCompletion___block_invoke_cold_1(result);
    }
  }

  return result;
}

- (void)cancelSubscription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (!_FigIsNotCurrentDispatchQueue())
  {
    FigDebugAssert3();
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AudioRemixSubscriber_cancelSubscription__block_invoke;
  block[3] = &unk_1E79904A0;
  block[4] = self;
  block[5] = &v5;
  dispatch_sync(workQueue, block);
  if (*(v6 + 24) == 1)
  {
    (*(self->_subscriptionCompletionHandler + 2))(self->_subscriptionCompletionHandler, 1);
  }

  _Block_object_dispose(&v5, 8);
}

void __42__AudioRemixSubscriber_cancelSubscription__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = *(*(a1 + 32) + 8);
    if (v3)
    {
      [v3 cancel];

      *(*(a1 + 32) + 8) = 0;
    }
  }
}

- (void)activate
{
  if (!_FigIsNotCurrentDispatchQueue())
  {
    [AudioRemixSubscriber activate];
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AudioRemixSubscriber_activate__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __32__AudioRemixSubscriber_activate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 8) && (*(v1 + 24) & 1) == 0)
  {
    objc_initWeak(&location, v1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __32__AudioRemixSubscriber_activate__block_invoke_2;
    v7[3] = &unk_1E7990710;
    objc_copyWeak(&v8, &location);
    v7[4] = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __32__AudioRemixSubscriber_activate__block_invoke_3;
    v4[3] = &unk_1E7990738;
    objc_copyWeak(&v6, &location);
    v5 = *(a1 + 32);
    *(*(a1 + 32) + 8) = [*(v5 + 40) subscribeWithFinalResultHandler:v7 completionHandler:v4];
    v3 = *(*(a1 + 32) + 8);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

NSObject *__32__AudioRemixSubscriber_activate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    if ([Weak handleReceiveResult:a2])
    {
      __32__AudioRemixSubscriber_activate__block_invoke_2_cold_1();
    }
  }

  else
  {
    __32__AudioRemixSubscriber_activate__block_invoke_2_cold_2();
  }

  result = *(*(a1 + 32) + 64);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

NSObject *__32__AudioRemixSubscriber_activate__block_invoke_3(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    if ([Weak handleReceiveCompletion:a2])
    {
      __32__AudioRemixSubscriber_activate__block_invoke_3_cold_1();
    }
  }

  else
  {
    __32__AudioRemixSubscriber_activate__block_invoke_3_cold_2();
  }

  result = *(*(a1 + 32) + 72);
  if (result)
  {

    return dispatch_semaphore_signal(result);
  }

  return result;
}

- (int)finishAndGetResultsBlockingWithStartingPTS:(id *)s andEndingPTS:(id *)tS
{
  if (self->_resultHandlerSemaphore || self->_completionHandlerSemaphore)
  {
    OUTLINED_FUNCTION_2_27();

    return FigSignalErrorAtGM();
  }

  else if ((s->var2 & 1) != 0 && (tS->var2 & 1) != 0 && (time1 = *s, v16 = *tS, CMTimeCompare(&time1, &v16) < 0))
  {
    v7 = *&s->var0;
    self->_startingPTS.epoch = s->var3;
    *&self->_startingPTS.value = v7;
    v8 = *&tS->var0;
    self->_endingPTS.epoch = tS->var3;
    *&self->_endingPTS.value = v8;
    self->_resultHandlerSemaphore = dispatch_semaphore_create(0);
    self->_completionHandlerSemaphore = dispatch_semaphore_create(0);
    [(SNMovieRemixSession *)self->_session finishWithError:0];
    resultHandlerSemaphore = self->_resultHandlerSemaphore;
    v10 = dispatch_time(0, 2000000000);
    v11 = dispatch_semaphore_wait(resultHandlerSemaphore, v10);
    dispatch_release(self->_resultHandlerSemaphore);
    self->_resultHandlerSemaphore = 0;
    if (v11 || (completionHandlerSemaphore = self->_completionHandlerSemaphore, v13 = dispatch_time(0, 2000000000), v14 = dispatch_semaphore_wait(completionHandlerSemaphore, v13), dispatch_release(self->_completionHandlerSemaphore), self->_completionHandlerSemaphore = 0, v14))
    {
      OUTLINED_FUNCTION_2_27();
      return FigSignalErrorAtGM();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -16992;
  }
}

@end