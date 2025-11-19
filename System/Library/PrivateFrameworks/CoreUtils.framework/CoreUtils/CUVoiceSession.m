@interface CUVoiceSession
- (CUVoiceSession)init;
- (void)_completeAllRequestsWithError:(id)a3;
- (void)_completeRequest:(id)a3 error:(id)a4;
- (void)_invalidate;
- (void)_invalidated;
- (void)_processQueuedRequests;
- (void)_speakText:(id)a3 flags:(unsigned int)a4 languageCode:(id)a5 volume:(double)a6 completion:(id)a7;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateWithFlags:(unsigned int)a3;
- (void)setLabel:(id)a3;
- (void)speakText:(id)a3 flags:(unsigned int)a4 languageCode:(id)a5 volume:(double)a6 completionHandler:(id)a7;
- (void)stopSpeaking;
@end

@implementation CUVoiceSession

- (void)_completeRequest:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v10;
  currentRequest = self->_currentRequest;
  if (currentRequest == v10)
  {
    self->_currentRequest = 0;

    v7 = v10;
  }

  v9 = [(CUVoiceRequest *)v7 completion];
  if (v9)
  {
    [(CUVoiceRequest *)v10 setCompletion:0];
    (v9)[2](v9, v6);
  }
}

- (void)_completeAllRequestsWithError:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_requests;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CUVoiceSession *)self _completeRequest:*(*(&v10 + 1) + 8 * v9++) error:v4, v10];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_requests removeAllObjects];
}

- (void)_processQueuedRequests
{
  p_currentRequest = &self->_currentRequest;
  if (!self->_currentRequest)
  {
    v4 = [(NSMutableArray *)self->_requests popFirstObject];
    if (!v4)
    {
LABEL_15:

      return;
    }

    objc_storeStrong(p_currentRequest, v4);
    v9 = [v4 speechRequest];
    if (!v9)
    {
LABEL_14:

      goto LABEL_15;
    }

    if (IsAppleInternalBuild_sOnce != -1)
    {
      dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
    }

    if (IsAppleInternalBuild_sIsInternal)
    {
      v10 = [v9 text];
    }

    else
    {
      v10 = @"*";
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_13;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUVoiceSession _processQueuedRequests]", 0x1Eu, "Start speaking text '%@'\n", v5, v6, v7, v8, v10);
    }

LABEL_13:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__CUVoiceSession__processQueuedRequests__block_invoke;
    v16[3] = &unk_1E73A49F0;
    v16[4] = self;
    v16[5] = v10;
    [v9 setDidStartSpeaking:v16];
    v12 = [getAVAudioSessionClass_9481[0]() sharedInstance];
    [v12 setCategory:@"AVAudioSessionCategoryPlayback" mode:@"AVAudioSessionModeDefault" routeSharingPolicy:1 options:0 error:0];

    speechSynthesizer = self->_speechSynthesizer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__CUVoiceSession__processQueuedRequests__block_invoke_2;
    v14[3] = &unk_1E73A4200;
    v14[4] = self;
    v14[5] = v10;
    v15 = v9;
    [(SiriTTSDaemonSession *)speechSynthesizer speakWithSpeechRequest:v15 didFinish:v14];

    goto LABEL_14;
  }
}

uint64_t __40__CUVoiceSession__processQueuedRequests__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(*(a1 + 32) + 40);
  if (*result <= 30)
  {
    if (*result != -1)
    {
      return LogPrintF(result, "[CUVoiceSession _processQueuedRequests]_block_invoke", 0x1Eu, "DidStartSpeakingRequest '%@'\n", a5, a6, a7, a8, *(a1 + 40));
    }

    result = _LogCategory_Initialize(result, 0x1Eu);
    if (result)
    {
      result = *(*(a1 + 32) + 40);
      return LogPrintF(result, "[CUVoiceSession _processQueuedRequests]_block_invoke", 0x1Eu, "DidStartSpeakingRequest '%@'\n", a5, a6, a7, a8, *(a1 + 40));
    }
  }

  return result;
}

void __40__CUVoiceSession__processQueuedRequests__block_invoke_2(void *a1, void *a2)
{
  v30 = a2;
  v7 = a1[4];
  v8 = *(v7 + 40);
  if (*v8 <= 30)
  {
    if (*v8 == -1)
    {
      v9 = _LogCategory_Initialize(v8, 0x1Eu);
      v7 = a1[4];
      if (!v9)
      {
        goto LABEL_5;
      }

      v8 = *(v7 + 40);
    }

    LogPrintF(v8, "[CUVoiceSession _processQueuedRequests]_block_invoke_2", 0x1Eu, "Did finish speaking text '%@', finished %s, error %{error}\n", v3, v4, v5, v6, a1[5]);
    v7 = a1[4];
  }

LABEL_5:
  v14 = [*(v7 + 8) speechRequest];
  v15 = a1[4];
  if (a1[6] != v14)
  {
    v16 = *(v15 + 40);
    if (*v16 <= 60)
    {
      if (*v16 != -1)
      {
LABEL_8:
        LogPrintF(v16, "[CUVoiceSession _processQueuedRequests]_block_invoke_2", 0x3Cu, "### Finished speaking non-current request?\n", v10, v11, v12, v13, v29);
        v15 = a1[4];
        goto LABEL_10;
      }

      v17 = _LogCategory_Initialize(v16, 0x3Cu);
      v15 = a1[4];
      if (v17)
      {
        v16 = *(v15 + 40);
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  v18 = [*(v15 + 8) completion];
  if (v18)
  {
    [*(a1[4] + 8) setCompletion:0];
    (v18)[2](v18, v30);
  }

  v19 = a1[4];
  v20 = *(v19 + 8);
  *(v19 + 8) = 0;

  v27 = a1[4];
  if (v27[16] == 1)
  {
    v28 = NSErrorWithOSStatusF(4294960573, "Invalidated", v21, v22, v23, v24, v25, v26, v29);
    [v27 _completeAllRequestsWithError:v28];
  }

  else
  {
    [v27 _processQueuedRequests];
  }
}

- (void)stopSpeaking
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUVoiceSession_stopSpeaking__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__CUVoiceSession_stopSpeaking__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) speechRequest];
  v7 = v2;
  if (v2)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    v13 = v7;
    if (*v9 <= 30)
    {
      if (*v9 == -1)
      {
        v10 = _LogCategory_Initialize(v9, 0x1Eu);
        v8 = *(a1 + 32);
        if (!v10)
        {
          goto LABEL_6;
        }

        v9 = *(v8 + 40);
      }

      LogPrintF(v9, "[CUVoiceSession stopSpeaking]_block_invoke", 0x1Eu, "Stop speaking\n", v3, v4, v5, v6, v12);
      v8 = *(a1 + 32);
    }

LABEL_6:
    v2 = [*(v8 + 32) cancelWithRequest:v13];
    v7 = v13;
  }

  return MEMORY[0x1EEE66BB8](v2, v7);
}

- (void)_speakText:(id)a3 flags:(unsigned int)a4 languageCode:(id)a5 volume:(double)a6 completion:(id)a7
{
  v10 = *&a4;
  v46 = a3;
  v12 = a5;
  v13 = a7;
  if (!self->_speechSynthesizer)
  {
    v14 = objc_alloc_init(getSiriTTSDaemonSessionClass[0]());
    speechSynthesizer = self->_speechSynthesizer;
    self->_speechSynthesizer = v14;
  }

  v16 = [(CUVoiceRequest *)self->_currentRequest speechRequest];
  v21 = v16;
  if ((v10 & 1) == 0 && v16)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUVoiceSession _speakText:flags:languageCode:volume:completion:]", 0x1Eu, "Stop speaking for new request\n", v17, v18, v19, v20, v44);
    }

LABEL_9:
    [(SiriTTSDaemonSession *)self->_speechSynthesizer cancelWithRequest:v21];
  }

  v23 = v12;
  if (!v12)
  {
    v24 = softLinkVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences[0]();
    v23 = @"en-US";
    if (v24)
    {
      v23 = v24;
    }
  }

  v25 = v23;
  if ((v10 & 4) != 0)
  {
    v27 = [getAFPreferencesClass[0]() sharedPreferences];
    v28 = [v27 outputVoice];
    v29 = [v28 name];

    if (v29)
    {
      v26 = v29;
    }

    else
    {
      v26 = @"Nora";
    }
  }

  else
  {
    v26 = 0;
  }

  v30 = self->_ucat;
  if (v30->var0 <= 30)
  {
    if (v30->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_27;
      }

      v30 = self->_ucat;
    }

    if (IsAppleInternalBuild_sOnce != -1)
    {
      dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
    }

    if (IsAppleInternalBuild_sIsInternal)
    {
      v31 = v46;
    }

    else
    {
      v31 = @"*";
    }

    v45 = CUPrintFlags(v10, byte_191FFA17D, 1);
    LogPrintF_safe(v30, "[CUVoiceSession _speakText:flags:languageCode:volume:completion:]", 0x1Eu, "Scheduling speaking '%@', flags=%@, language=%@ voice=%@ volume=%f", v32, v33, v34, v35, v31);
  }

LABEL_27:
  v36 = [objc_alloc(getSiriTTSSynthesisVoiceClass[0]()) initWithLanguage:v25 name:v26];
  v37 = [objc_alloc(getSiriTTSSpeechRequestClass[0]()) initWithText:v46 voice:v36];
  v39 = v37;
  if ((v10 & 8) != 0)
  {
    [v37 setDisableCompactVoice:1];
  }

  if (a6 > 0.0)
  {
    *&v38 = a6;
    [v39 setPlaybackVolume:v38];
  }

  if ((v10 & 4) != 0)
  {
    [v39 setPrivacySensitive:0];
  }

  v40 = objc_alloc_init(CUVoiceRequest);
  [(CUVoiceRequest *)v40 setCompletion:v13];
  [(CUVoiceRequest *)v40 setFlags:v10];
  [(CUVoiceRequest *)v40 setOwner:self];
  [(CUVoiceRequest *)v40 setSpeechRequest:v39];
  requests = self->_requests;
  if (!requests)
  {
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = self->_requests;
    self->_requests = v42;

    requests = self->_requests;
  }

  [(NSMutableArray *)requests addObject:v40];
  [(CUVoiceSession *)self _processQueuedRequests];
}

- (void)speakText:(id)a3 flags:(unsigned int)a4 languageCode:(id)a5 volume:(double)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  dispatchQueue = self->_dispatchQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__CUVoiceSession_speakText_flags_languageCode_volume_completionHandler___block_invoke;
  v19[3] = &unk_1E73A41D8;
  v19[4] = self;
  v20 = v12;
  v24 = a4;
  v23 = a6;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(dispatchQueue, v19);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
      v4 = self->_invalidationHandler;
    }

    else
    {
      v4 = 0;
    }

    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUVoiceSession _invalidated]", 0x1Eu, "Invalidated\n", v5, v6, v7, v8, v11);
    }
  }
}

- (void)_invalidate
{
  v3 = [(CUVoiceRequest *)self->_currentRequest speechRequest];
  v9 = v3;
  v15 = v3;
  if ((self->_invalidateFlags & 2) == 0 || !self->_currentRequest)
  {
    if (!v3)
    {
      v12 = NSErrorWithOSStatusF(4294960573, "Invalidated", 0, v4, v5, v6, v7, v8, v14);
      [(CUVoiceSession *)self _completeAllRequestsWithError:v12];

      goto LABEL_13;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_12;
    }

    if (ucat->var0 == -1)
    {
      v13 = _LogCategory_Initialize(ucat, 0x1Eu);
      v9 = v15;
      if (!v13)
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUVoiceSession _invalidate]", 0x1Eu, "Stop speaking for invalidate\n", v5, v6, v7, v8, v14);
    v9 = v15;
LABEL_12:
    [(SiriTTSDaemonSession *)self->_speechSynthesizer cancelWithRequest:v9];
    goto LABEL_13;
  }

  v10 = self->_ucat;
  if (v10->var0 > 30)
  {
    goto LABEL_13;
  }

  if (v10->var0 != -1)
  {
    goto LABEL_5;
  }

  if (_LogCategory_Initialize(v10, 0x1Eu))
  {
    v10 = self->_ucat;
LABEL_5:
    LogPrintF(v10, "[CUVoiceSession _invalidate]", 0x1Eu, "Waiting until current request finishes before invalidating\n", v5, v6, v7, v8, v14);
  }

LABEL_13:
  [(CUVoiceSession *)self _invalidated];
}

- (void)invalidateWithFlags:(unsigned int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__CUVoiceSession_invalidateWithFlags___block_invoke;
  v4[3] = &unk_1E73A42A0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __38__CUVoiceSession_invalidateWithFlags___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(result + 32);
  if (*(v9 + 16))
  {
    return result;
  }

  v10 = result;
  *(v9 + 16) = 1;
  v11 = *(result + 32);
  v12 = *(v11 + 40);
  if (*v12 <= 30)
  {
    if (*v12 == -1)
    {
      v13 = _LogCategory_Initialize(v12, 0x1Eu);
      v11 = *(v10 + 32);
      if (!v13)
      {
        goto LABEL_6;
      }

      v12 = *(v11 + 40);
    }

    LogPrintF(v12, "[CUVoiceSession invalidateWithFlags:]_block_invoke", 0x1Eu, "InvalidateWithFlags: %#{flags}\n", a5, a6, a7, a8, *(v10 + 40));
    v11 = *(v10 + 32);
  }

LABEL_6:
  *(v11 + 20) = *(v10 + 40);
  v14 = *(v10 + 32);

  return [v14 _invalidate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUVoiceSession_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__CUVoiceSession_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 16))
  {
    return result;
  }

  v11 = result;
  *(v10 + 16) = 1;
  v12 = *(result + 32);
  v13 = v12[5];
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      v14 = _LogCategory_Initialize(v13, 0x1Eu);
      v12 = *(v11 + 32);
      if (!v14)
      {
        goto LABEL_6;
      }

      v13 = v12[5];
    }

    LogPrintF(v13, "[CUVoiceSession invalidate]_block_invoke", 0x1Eu, "Invalidate\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:

  return [v12 _invalidate];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADEA848;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUVoiceSession;
  [(CUVoiceSession *)&v4 dealloc];
}

- (CUVoiceSession)init
{
  v6.receiver = self;
  v6.super_class = CUVoiceSession;
  v2 = [(CUVoiceSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUVoiceSession;
    v4 = v3;
  }

  return v3;
}

@end