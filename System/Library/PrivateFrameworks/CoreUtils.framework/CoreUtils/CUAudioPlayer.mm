@interface CUAudioPlayer
- (BOOL)setPortUID:(id)a3 channelName:(id)a4 error:(id *)a5;
- (CUAudioPlayer)init;
- (void)_abortRequestsWithError:(id)a3;
- (void)_activate;
- (void)_applyChannelAssignments:(id)a3;
- (void)_completeRequest:(id)a3 error:(id)a4;
- (void)_invalidateWithFlags:(unsigned int)a3;
- (void)_invalidated;
- (void)_playPreparedIdentifier:(id)a3 completion:(id)a4;
- (void)_playURL:(id)a3 loop:(BOOL)a4 completion:(id)a5;
- (void)_prepareURL:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_processRequests;
- (void)activate;
- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4;
- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4;
- (void)audioSessionInterrupted:(id)a3;
- (void)dealloc;
- (void)invalidateWithFlags:(unsigned int)a3;
- (void)playPreparedIdentifier:(id)a3 completion:(id)a4;
- (void)playURL:(id)a3 loop:(BOOL)a4 completion:(id)a5;
- (void)prepareURL:(id)a3 identifier:(id *)a4 completion:(id)a5;
- (void)setLabel:(id)a3;
@end

@implementation CUAudioPlayer

- (void)audioSessionInterrupted:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CUAudioPlayer_audioSessionInterrupted___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __41__CUAudioPlayer_audioSessionInterrupted___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[8];
  if (*v10 <= 60)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUAudioPlayer audioSessionInterrupted:]_block_invoke", 0x3Cu, "### AudioPlayer interrupted\n", a5, a6, a7, a8, v12);
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v10, 0x3Cu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[8];
      goto LABEL_3;
    }
  }

LABEL_5:
  v13 = NSErrorWithOSStatusF(4294960573, "AudioSession interrupted", a3, a4, a5, a6, a7, a8, v12);
  [v9 _abortRequestsWithError:v13];
}

- (void)audioPlayerDidFinishPlaying:(id)a3 successfully:(BOOL)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CUAudioPlayer_audioPlayerDidFinishPlaying_successfully___block_invoke;
  block[3] = &unk_1E73A3CE8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __58__CUAudioPlayer_audioPlayerDidFinishPlaying_successfully___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v15 = v2;
  if (v2 && (v7 = *(a1 + 40), [v2 audioPlayer], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
  {
    v11 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) _completeRequest:v15 error:0];
    }

    else
    {
      v12 = NSErrorWithOSStatusF(4294960596, "Finish failed", v15, v9, v3, v4, v5, v6, v14);
      [v11 _completeRequest:v15 error:v12];
    }
  }

  else
  {
    v10 = *(*(a1 + 32) + 64);
    if (*v10 > 90)
    {
      goto LABEL_11;
    }

    if (*v10 != -1)
    {
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v10, 0x5Au))
    {
      v10 = *(*(a1 + 32) + 64);
LABEL_5:
      LogPrintF(v10, "[CUAudioPlayer audioPlayerDidFinishPlaying:successfully:]_block_invoke", 0x5Au, "### AudioPlayer finished for non-current player\n", v3, v4, v5, v6, v14);
    }
  }

LABEL_11:

  return MEMORY[0x1EEE66BE0]();
}

- (void)audioPlayerDecodeErrorDidOccur:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CUAudioPlayer_audioPlayerDecodeErrorDidOccur_error___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

uint64_t __54__CUAudioPlayer_audioPlayerDecodeErrorDidOccur_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = *(*(a1 + 32) + 64);
  v14 = v2;
  if (*v3 <= 60)
  {
    if (*v3 == -1)
    {
      v10 = _LogCategory_Initialize(v3, 0x3Cu);
      v2 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }

      v3 = *(*(a1 + 32) + 64);
    }

    v4 = *(a1 + 40);
    v5 = [v2 audioPlayer];
    LogPrintF(v3, "[CUAudioPlayer audioPlayerDecodeErrorDidOccur:error:]_block_invoke", 0x3Cu, "### AudioPlayer decode failed %{error} %s\n", v6, v7, v8, v9, v4);

    v2 = v14;
  }

LABEL_5:
  if (v2)
  {
    v11 = *(a1 + 48);
    v12 = [v2 audioPlayer];

    if (v11 == v12)
    {
      [*(a1 + 32) _completeRequest:v14 error:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_abortRequestsWithError:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_currentRequest;
  if (v5)
  {
    currentRequest = self->_currentRequest;
    self->_currentRequest = 0;

    v7 = [(CUAudioRequest *)v5 completion];

    if (v7)
    {
      v8 = [(CUAudioRequest *)v5 completion];
      (v8)[2](v8, v4);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_playRequests;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      v14 = v5;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v5 = *(*(&v21 + 1) + 8 * v13);

        v15 = [(CUAudioRequest *)v5 completion];

        if (v15)
        {
          v16 = [(CUAudioRequest *)v5 completion];
          (v16)[2](v16, v4);
        }

        ++v13;
        v14 = v5;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_playRequests removeAllObjects];
  preparedRequests = self->_preparedRequests;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __41__CUAudioPlayer__abortRequestsWithError___block_invoke;
  v19[3] = &unk_1E73A2B28;
  v20 = v4;
  v18 = v4;
  [(NSMutableDictionary *)preparedRequests enumerateKeysAndObjectsUsingBlock:v19];
  [(NSMutableDictionary *)self->_preparedRequests removeAllObjects];
  [(CUAudioPlayer *)self _invalidated];
}

void __41__CUAudioPlayer__abortRequestsWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 completion];

  if (v4)
  {
    v5 = [v6 completion];
    v5[2](v5, *(a1 + 32));
  }
}

- (void)_completeRequest:(id)a3 error:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = v29;
  v8 = v6;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      v10 = [(CUAudioRequest *)v29 label];
      LogPrintF(ucat, "[CUAudioPlayer _completeRequest:error:]", 0x1Eu, "Play completed '%@', %{error}\n", v11, v12, v13, v14, v10);

      v7 = v29;
      goto LABEL_5;
    }

    v15 = _LogCategory_Initialize(self->_ucat, 0x1Eu);
    v7 = v29;
    if (v15)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  currentRequest = self->_currentRequest;
  v17 = v7;
  if (currentRequest == v7)
  {
    self->_currentRequest = 0;

    v17 = v29;
  }

  v18 = [(CUAudioRequest *)v17 completion];

  if (v18)
  {
    v25 = [(CUAudioRequest *)v29 completion];
    (v25)[2](v25, v8);
  }

  invalidateFlags = self->_invalidateFlags;
  if ((invalidateFlags & 1) != 0 || (invalidateFlags & 2) != 0 && ![(NSMutableArray *)self->_playRequests count])
  {
    v27 = NSErrorWithOSStatusF(4294960573, "Invalidated", v19, v20, v21, v22, v23, v24, v28);
    [(CUAudioPlayer *)self _abortRequestsWithError:v27];
  }

  else
  {
    [(CUAudioPlayer *)self _processRequests];
  }
}

- (void)_processRequests
{
  if (self->_currentRequest)
  {
    return;
  }

  v3 = [(NSMutableArray *)self->_playRequests firstObject];
  currentRequest = self->_currentRequest;
  self->_currentRequest = v3;

  if (!self->_currentRequest)
  {
    return;
  }

  [(NSMutableArray *)self->_playRequests removeObjectAtIndex:0];
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_8;
      }

      ucat = self->_ucat;
    }

    v6 = [(CUAudioRequest *)self->_currentRequest label];
    LogPrintF(ucat, "[CUAudioPlayer _processRequests]", 0x1Eu, "Play start '%@'\n", v7, v8, v9, v10, v6);
  }

LABEL_8:
  v11 = [(CUAudioRequest *)self->_currentRequest audioPlayer];
  [v11 play];
}

- (void)_prepareURL:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 absoluteString];
  v12 = [v11 lastPathComponent];

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUAudioPlayer _prepareURL:identifier:completion:]", 0x1Eu, "Prepare request '%@'\n", v13, v14, v15, v16, v12);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v30 = 0;
  v18 = [objc_alloc(getAVAudioPlayerClass[0]()) initWithContentsOfURL:v10 error:&v30];

  v25 = v30;
  if (v18)
  {
    [v18 setDelegate:self];
    [(CUAudioPlayer *)self _applyChannelAssignments:v18];
    [v18 prepareToPlay];
    v26 = objc_alloc_init(CUAudioRequest);
    [(CUAudioRequest *)v26 setAudioPlayer:v18];
    [(CUAudioRequest *)v26 setLabel:v12];
    [(NSMutableDictionary *)self->_preparedRequests setObject:v26 forKeyedSubscript:v8];

    goto LABEL_7;
  }

  v27 = self->_ucat;
  if (v27->var0 <= 90)
  {
    if (v27->var0 != -1)
    {
LABEL_10:
      LogPrintF(v27, "[CUAudioPlayer _prepareURL:identifier:completion:]", 0x5Au, "### Create AVAudioPlayer for '%@' failed: %{error}\n", v21, v22, v23, v24, v12);
      goto LABEL_12;
    }

    if (_LogCategory_Initialize(v27, 0x5Au))
    {
      v27 = self->_ucat;
      goto LABEL_10;
    }
  }

LABEL_12:
  if (v9)
  {
    if (v25)
    {
      v9[2](v9, v25);
    }

    else
    {
      v28 = NSErrorWithOSStatusF(4294960596, "Create AVAudioPlayer", v19, v20, v21, v22, v23, v24, v29);
      v9[2](v9, v28);
    }
  }

LABEL_7:
}

- (void)prepareURL:(id)a3 identifier:(id *)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x1E696AFB0] UUID];
  objc_storeStrong(a4, v10);
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__CUAudioPlayer_prepareURL_identifier_completion___block_invoke;
  v15[3] = &unk_1E73A4108;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)_playURL:(id)a3 loop:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 absoluteString];
  v11 = [v10 lastPathComponent];

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUAudioPlayer _playURL:loop:completion:]", 0x1Eu, "Play request '%@'\n", v12, v13, v14, v15, v11);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v29 = 0;
  v17 = [objc_alloc(getAVAudioPlayerClass[0]()) initWithContentsOfURL:v9 error:&v29];

  v24 = v29;
  if (v17)
  {
    [v17 setDelegate:self];
    if (v5)
    {
      [v17 setNumberOfLoops:-1];
    }

    [(CUAudioPlayer *)self _applyChannelAssignments:v17];
    [v17 prepareToPlay];
    v25 = objc_alloc_init(CUAudioRequest);
    [(CUAudioRequest *)v25 setAudioPlayer:v17];
    [(CUAudioRequest *)v25 setCompletion:v8];
    [(CUAudioRequest *)v25 setLabel:v11];
    [(NSMutableArray *)self->_playRequests addObject:v25];
    [(CUAudioPlayer *)self _processRequests];

    goto LABEL_9;
  }

  v26 = self->_ucat;
  if (v26->var0 <= 90)
  {
    if (v26->var0 != -1)
    {
LABEL_12:
      LogPrintF(v26, "[CUAudioPlayer _playURL:loop:completion:]", 0x5Au, "### Create AVAudioPlayer for '%@' failed: %{error}\n", v20, v21, v22, v23, v11);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize(v26, 0x5Au))
    {
      v26 = self->_ucat;
      goto LABEL_12;
    }
  }

LABEL_14:
  if (v8)
  {
    if (v24)
    {
      v8[2](v8, v24);
    }

    else
    {
      v27 = NSErrorWithOSStatusF(4294960596, "Create AVAudioPlayer", v18, v19, v20, v21, v22, v23, v28);
      v8[2](v8, v27);
    }
  }

LABEL_9:
}

- (void)playURL:(id)a3 loop:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__CUAudioPlayer_playURL_loop_completion___block_invoke;
  v13[3] = &unk_1E73A2B00;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)_playPreparedIdentifier:(id)a3 completion:(id)a4
{
  v23 = a3;
  v6 = a4;
  v13 = [(NSMutableDictionary *)self->_preparedRequests objectForKeyedSubscript:v23];
  ucat = self->_ucat;
  var0 = ucat->var0;
  if (v13)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      v22 = [v13 label];
      LogPrintF(ucat, "[CUAudioPlayer _playPreparedIdentifier:completion:]", 0x1Eu, "Play prepared ID %@ '%@'\n", v16, v17, v18, v19, v23);
    }

LABEL_9:
    [(NSMutableDictionary *)self->_preparedRequests setObject:0 forKeyedSubscript:v23];
    [v13 setCompletion:v6];
    [(NSMutableArray *)self->_playRequests addObject:v13];
    [(CUAudioPlayer *)self _processRequests];
    goto LABEL_13;
  }

  if (var0 <= 90)
  {
    v20 = v23;
    if (var0 != -1)
    {
LABEL_7:
      LogPrintF(ucat, "[CUAudioPlayer _playPreparedIdentifier:completion:]", 0x5Au, "### Play prepared ID %@ not found\n", v9, v10, v11, v12, v20);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x5Au))
    {
      ucat = self->_ucat;
      v20 = v23;
      goto LABEL_7;
    }
  }

LABEL_11:
  if (v6)
  {
    v21 = NSErrorWithOSStatusF(4294960569, "Prepared ID %@ not found", v7, v8, v9, v10, v11, v12, v23);
    v6[2](v6, v21);
  }

LABEL_13:
}

- (void)playPreparedIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CUAudioPlayer_playPreparedIdentifier_completion___block_invoke;
  block[3] = &unk_1E73A4BD8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidated
{
  if (!self->_invalidateCalled || self->_invalidateDone || self->_currentRequest || [(NSMutableArray *)self->_playRequests count]|| [(NSMutableDictionary *)self->_preparedRequests count])
  {
    return;
  }

  if (self->_audioSession)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = getAVAudioSessionInterruptionNotification();
    [v3 removeObserver:self name:v4 object:self->_audioSession];

    audioSession = self->_audioSession;
    self->_audioSession = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
    v7 = self->_invalidationHandler;
  }

  else
  {
    v7 = 0;
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
        goto LABEL_16;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUAudioPlayer _invalidated]", 0x1Eu, "Invalidated\n", v8, v9, v10, v11, v14);
  }

LABEL_16:
  selfRef = self->_selfRef;
  self->_selfRef = 0;
}

- (void)_invalidateWithFlags:(unsigned int)a3
{
  if (self->_invalidateCalled)
  {
    return;
  }

  v9 = *&a3;
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[CUAudioPlayer _invalidateWithFlags:]", 0x1Eu, "Invalidate %#{flags}\n", v4, v5, v6, v7, v9);
  }

LABEL_6:
  self->_invalidateCalled = 1;
  self->_invalidateFlags = v9;
  if ((v9 & 3) == 0)
  {
    v12 = NSErrorWithOSStatusF(4294960573, "Invalidated", *&a3, v3, v4, v5, v6, v7, v13);
    [(CUAudioPlayer *)self _abortRequestsWithError:v12];
  }

  [(CUAudioPlayer *)self _invalidated];
}

- (void)invalidateWithFlags:(unsigned int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__CUAudioPlayer_invalidateWithFlags___block_invoke;
  v4[3] = &unk_1E73A42A0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_activate
{
  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      LogPrintF(ucat, "[CUAudioPlayer _activate]", 0x1Eu, "Activate %#{flags}\n", v2, v3, v4, v5, self->_flags);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(ucat, 0x1Eu))
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  playRequests = self->_playRequests;
  self->_playRequests = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  preparedRequests = self->_preparedRequests;
  self->_preparedRequests = v10;

  objc_storeStrong(&self->_selfRef, self);
  v12 = [getAVAudioSessionClass[0]() sharedInstance];
  audioSession = self->_audioSession;
  self->_audioSession = v12;

  enableSmartRouting = self->_enableSmartRouting;
  if (enableSmartRouting)
  {
    v15 = self->_audioSession;
    v54 = 0;
    v16 = [(AVAudioSession *)v15 setEligibleForBTSmartRoutingConsideration:enableSmartRouting == 1 error:&v54];
    v24 = v54;
    if ((v16 & 1) == 0)
    {
      v25 = self->_ucat;
      if (v25->var0 <= 90)
      {
        if (v25->var0 != -1)
        {
LABEL_9:
          v26 = self->_enableSmartRouting;
          if (v26 > 2)
          {
            v27 = "?";
          }

          else
          {
            v27 = off_1E73A2B48[v26];
          }

          v51 = NSPrintF("%{error}", v17, v18, v19, v20, v21, v22, v23, v24);
          LogPrintF(v25, "[CUAudioPlayer _activate]", 0x5Au, "### AudioSession Smart Routing failed: option=%s, error=%@", v28, v29, v30, v31, v27);

          goto LABEL_15;
        }

        if (_LogCategory_Initialize(self->_ucat, 0x5Au))
        {
          v25 = self->_ucat;
          goto LABEL_9;
        }
      }
    }

LABEL_15:
  }

  v32 = [MEMORY[0x1E696AD88] defaultCenter];
  v33 = getAVAudioSessionInterruptionNotification();
  [v32 addObserver:self selector:sel_audioSessionInterrupted_ name:v33 object:self->_audioSession];

  v34 = (self->_flags >> 2) & 1;
  v35 = self->_audioSession;
  v36 = getAVAudioSessionCategoryAmbient();
  v53 = 0;
  LOBYTE(v35) = [(AVAudioSession *)v35 setCategory:v36 withOptions:v34 error:&v53];
  v37 = v53;

  if ((v35 & 1) == 0)
  {
    v42 = self->_ucat;
    if (v42->var0 <= 90)
    {
      if (v42->var0 == -1)
      {
        if (!_LogCategory_Initialize(v42, 0x5Au))
        {
          goto LABEL_21;
        }

        v42 = self->_ucat;
      }

      LogPrintF(v42, "[CUAudioPlayer _activate]", 0x5Au, "### AudioSession setCategory failed: %{error}\n", v38, v39, v40, v41, v37);
    }
  }

LABEL_21:
  v43 = self->_audioSession;
  v52 = v37;
  v44 = [(AVAudioSession *)v43 setActive:1 error:&v52];
  v45 = v52;

  if (!v44)
  {
    v50 = self->_ucat;
    if (v50->var0 <= 90)
    {
      if (v50->var0 == -1)
      {
        if (!_LogCategory_Initialize(v50, 0x5Au))
        {
          goto LABEL_26;
        }

        v50 = self->_ucat;
      }

      LogPrintF(v50, "[CUAudioPlayer _activate]", 0x5Au, "### AudioSession setActive failed: %{error}\n", v46, v47, v48, v49, v45);
    }
  }

LABEL_26:
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CUAudioPlayer_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_applyChannelAssignments:(id)a3
{
  v4 = a3;
  v22 = v4;
  if (self->_channel)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v22 numberOfChannels];
    if (v6)
    {
      v7 = v6;
      do
      {
        [v5 addObject:self->_channel];
        --v7;
      }

      while (v7);
    }

    ucat = self->_ucat;
    if (ucat->var0 >= 31)
    {
      goto LABEL_13;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_13;
      }

      ucat = self->_ucat;
    }

    v9 = [(AVAudioSessionChannelDescription *)self->_channel owningPortUID];
    v21 = [(AVAudioSessionChannelDescription *)self->_channel channelName];
    LogPrintF(ucat, "[CUAudioPlayer _applyChannelAssignments:]", 0x1Eu, "Applying channel: portUID=%@, channelName=%@", v10, v11, v12, v13, v9);

LABEL_13:
    [v22 setChannelAssignments:v5];

    goto LABEL_16;
  }

  v14 = [v4 channelAssignments];

  if (!v14)
  {
    goto LABEL_16;
  }

  v19 = self->_ucat;
  if (v19->var0 <= 30)
  {
    if (v19->var0 == -1)
    {
      if (!_LogCategory_Initialize(v19, 0x1Eu))
      {
        goto LABEL_15;
      }

      v19 = self->_ucat;
    }

    LogPrintF(v19, "[CUAudioPlayer _applyChannelAssignments:]", 0x1Eu, "Applying channel: nil", v15, v16, v17, v18, v20);
  }

LABEL_15:
  [v22 setChannelAssignments:0];
LABEL_16:
}

- (BOOL)setPortUID:(id)a3 channelName:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = [getAVAudioSessionClass[0]() sharedInstance];
  v11 = [v10 currentRoute];
  v12 = [v11 outputs];

  v13 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    v39 = v12;
    v40 = v8;
    v36 = a5;
    v37 = *v46;
    v38 = self;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = [v17 UID];
        v19 = [v18 isEqual:v8];

        if (v19)
        {
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v20 = [v17 channels];
          v21 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v42;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v42 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v41 + 1) + 8 * j);
                v26 = [v25 channelName];
                v27 = [v26 isEqual:v9];

                if (v27)
                {
                  objc_storeStrong(&v38->_channel, v25);

                  v33 = 1;
                  v8 = v40;
                  goto LABEL_21;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          v12 = v39;
          v8 = v40;
          v15 = v37;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
      a5 = v36;
    }

    while (v14);
  }

  if (a5)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "Port/channel not found", v28, v29, v30, v31, v32, v35);
    *a5 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_21:

  return v33;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE9078;
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
  v4.super_class = CUAudioPlayer;
  [(CUAudioPlayer *)&v4 dealloc];
}

- (CUAudioPlayer)init
{
  v6.receiver = self;
  v6.super_class = CUAudioPlayer;
  v2 = [(CUAudioPlayer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_CUAudioPlayer;
    v4 = v3;
  }

  return v3;
}

@end