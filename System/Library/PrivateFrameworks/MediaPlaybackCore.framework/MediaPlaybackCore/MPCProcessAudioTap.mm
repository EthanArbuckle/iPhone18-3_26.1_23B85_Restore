@interface MPCProcessAudioTap
- (MPCProcessAudioTap)initWithPID:(int)d refreshRate:(id)rate numberOfChannels:(unsigned int)channels delegate:(id)delegate;
- (MPCProcessAudioTap)initWithRefreshRate:(id)rate delegate:(id)delegate;
- (MPCProcessAudioTapDelegate)delegate;
- (void)_createProcessTapWithNumberOfFrames:(unsigned int)frames sampleRate:(double)rate;
- (void)_destroyProcessTap;
- (void)dealloc;
- (void)mediaServerDidDie:(id)die;
- (void)mediaServerDidRestart:(id)restart;
- (void)setupNotifications;
- (void)start;
- (void)stop;
- (void)tearDownNotifications;
@end

@implementation MPCProcessAudioTap

- (void)setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_mediaServerDidDie_ name:*MEMORY[0x1E6958110] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_mediaServerDidRestart_ name:*MEMORY[0x1E6958128] object:0];
}

- (MPCProcessAudioTapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mediaServerDidRestart:(id)restart
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - MediaServicesWereReset - creating AQ", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MPCProcessAudioTap_mediaServerDidRestart___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __44__MPCProcessAudioTap_mediaServerDidRestart___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 numberOfFrames];
  v4 = [*(a1 + 32) sampleRate];

  return [v2 _createProcessTapWithNumberOfFrames:v3 sampleRate:v4];
}

- (void)mediaServerDidDie:(id)die
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - MediaServicesWereLost - clearing AQ", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MPCProcessAudioTap_mediaServerDidDie___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __40__MPCProcessAudioTap_mediaServerDidDie___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = AudioQueueStop(*(*(a1 + 32) + 8), 1u);
  if (!v2)
  {
    v8 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A768];
  v6 = v2;
  v22[0] = *MEMORY[0x1E696A578];
  memset(buf, 0, 20);
  v7 = bswap32(v2);
  *&buf[1] = v7;
  if ((v7 & 0x80) != 0)
  {
    if (!__maskrune(v7, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  v9 = v7 >> 8;
  if ((v7 & 0x8000) != 0)
  {
    if (!__maskrune(v9, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  v10 = v7 << 8 >> 24;
  if ((v7 & 0x800000) != 0)
  {
    if (!__maskrune(v10, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  v11 = v7 >> 24;
  if (v7 < 0)
  {
    if (__maskrune(v11, 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_19:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v3);
    goto LABEL_20;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  strcpy(&buf[5], "'");
  buf[0] = 39;
LABEL_20:
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
  *buf = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v22 count:1];
  v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v13];
  v14 = v8;

LABEL_21:
  v15 = v8;
  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = [v15 treeDescription];
      *buf = 134218242;
      *&buf[4] = v18;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[AP] - MPCProcessAudioTap %p - Stopped processing audio queue [MediaServicesWereLost] error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v20;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - Stopped processing audio queue [MediaServicesWereLost]", buf, 0xCu);
  }

  [*(a1 + 32) _destroyProcessTap];
}

- (void)tearDownNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_destroyProcessTap
{
  v36[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  os_unfair_lock_lock(&_activeTapsLock);
  [_activeTaps removeObject:v3];
  os_unfair_lock_unlock(&_activeTapsLock);

  self->_enabled = 0;
  monoAudioBuffer = self->_monoAudioBuffer;
  if (monoAudioBuffer)
  {
    v5 = AudioQueueFreeBuffer(self->_processingQueue, monoAudioBuffer);
    if (!v5)
    {
      v11 = 0;
LABEL_25:
      self->_monoAudioBuffer = 0;

      goto LABEL_26;
    }

    v6 = v5;
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A768];
    v9 = v5;
    v35 = *MEMORY[0x1E696A578];
    memset(buf, 0, 20);
    v10 = bswap32(v5);
    *&buf[1] = v10;
    if ((v10 & 0x80) != 0)
    {
      if (!__maskrune(v10, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v12 = v10 >> 8;
    if ((v10 & 0x8000) != 0)
    {
      if (!__maskrune(v12, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v13 = v10 << 8 >> 24;
    if ((v10 & 0x800000) != 0)
    {
      if (!__maskrune(v13, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v14 = v10 >> 24;
    if (v10 < 0)
    {
      if (__maskrune(v14, 0x40000uLL))
      {
        goto LABEL_18;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000) != 0)
    {
LABEL_18:
      strcpy(&buf[5], "'");
      buf[0] = 39;
      goto LABEL_21;
    }

LABEL_20:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v6);
LABEL_21:
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
    v36[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v17 = [v7 errorWithDomain:v8 code:v9 userInfo:v16];
    v18 = v17;

    v11 = v17;
    if (v11)
    {
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "MPCProcessAudioTap %p - Audio tap - Error freeing AQ buffer: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  processingQueue = self->_processingQueue;
  if (!processingQueue)
  {
    return;
  }

  v21 = AudioQueueDispose(processingQueue, 0);
  if (v21)
  {
    v22 = v21;
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A768];
    v25 = v21;
    v35 = *MEMORY[0x1E696A578];
    memset(buf, 0, 20);
    v26 = bswap32(v21);
    *&buf[1] = v26;
    if ((v26 & 0x80) != 0)
    {
      if (!__maskrune(v26, 0x40000uLL))
      {
        goto LABEL_45;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    v28 = v26 >> 8;
    if ((v26 & 0x8000) != 0)
    {
      if (!__maskrune(v28, 0x40000uLL))
      {
        goto LABEL_45;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    if (buf[3] < 0)
    {
      if (!__maskrune(buf[3], 0x40000uLL))
      {
        goto LABEL_45;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * buf[3] + 60) & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    if (buf[4] < 0)
    {
      if (__maskrune(buf[4], 0x40000uLL))
      {
        goto LABEL_43;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * buf[4] + 60) & 0x40000) != 0)
    {
LABEL_43:
      strcpy(&buf[5], "'");
      buf[0] = 39;
      goto LABEL_46;
    }

LABEL_45:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v22);
LABEL_46:
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
    v36[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v31 = [v23 errorWithDomain:v24 code:v25 userInfo:v30];
    v32 = v31;

    v27 = v31;
    if (v27)
    {
      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v27;
        _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_ERROR, "MPCProcessAudioTap %p - Audio tap - Error disposing of processing audio queue: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_50;
  }

  v27 = 0;
LABEL_50:
  self->_processingQueue = 0;
}

- (void)_createProcessTapWithNumberOfFrames:(unsigned int)frames sampleRate:(double)rate
{
  v68[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_accessQueue);
  v7 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:self->_numberOfChannels channels:1 interleaved:rate];
  streamDescription = [v7 streamDescription];
  v9 = *(streamDescription + 32);
  v10 = *(streamDescription + 16);
  *&inFormat.mSampleRate = *streamDescription;
  *&inFormat.mBytesPerPacket = v10;
  *&inFormat.mBitsPerChannel = v9;
  v11 = [objc_alloc(MEMORY[0x1E695A888]) initProcessTapWithFormat:v7 PID:self->_pid];
  self->_processingQueue = 0;
  p_processingQueue = &self->_processingQueue;
  v13 = AudioQueueNewInput(&inFormat, _MPCHandleProcessTapBuffer, self, 0, 0, 0x800u, &self->_processingQueue);
  if (!v13)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v14 = v13;
  v15 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A768];
  v17 = v13;
  v68[0] = *MEMORY[0x1E696A578];
  memset(v66, 0, 20);
  *(v66 + 1) = bswap32(v13);
  v18 = MEMORY[0x1E69E9830];
  if ((v66[0] & 0x8000) != 0)
  {
    if (!__maskrune(SBYTE1(v66[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v66[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SBYTE2(v66[0]) < 0)
  {
    if (!__maskrune(SBYTE2(v66[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v18 + 4 * SBYTE2(v66[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SHIBYTE(v66[0]) < 0)
  {
    if (!__maskrune(SHIBYTE(v66[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v18 + 4 * SHIBYTE(v66[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SLOBYTE(v66[1]) < 0)
  {
    if (__maskrune(SLOBYTE(v66[1]), 0x40000uLL))
    {
      goto LABEL_17;
    }

LABEL_19:
    __sprintf_chk(v66, 0, 0x14uLL, "%d", v14);
    goto LABEL_20;
  }

  if ((*(v18 + 4 * SLOBYTE(v66[1]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  strcpy(&v66[1] + 1, "'");
  LOBYTE(v66[0]) = 39;
LABEL_20:
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v66];
  *v66 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v68 count:1];
  v19 = [v15 errorWithDomain:v16 code:v17 userInfo:v21];
  v22 = v19;

LABEL_21:
  v23 = v19;
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v25 = v24;
  if (!v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Format ID: %u - Sample Rate: %1.0fHz - Bytes/Packet: %u - Frames/Packet: %u - Bytes/Frame: %u - Channels/Frame: %u - Bits/Channel: %u", inFormat.mFormatID, *&inFormat.mSampleRate, inFormat.mBytesPerPacket, inFormat.mFramesPerPacket, inFormat.mBytesPerFrame, inFormat.mChannelsPerFrame, inFormat.mBitsPerChannel];
      v66[0] = 134218242;
      *&v66[1] = self;
      LOWORD(v66[3]) = 2114;
      *(&v66[3] + 2) = v26;
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - ASBD for process tap: %{public}@", v66, 0x16u);
    }

    v64 = [objc_alloc(MEMORY[0x1E695A880]) initWithTapDescription:v11];
    v27 = AudioQueueSetProperty(*p_processingQueue, 0x71746F62u, v64, 8u);
    if (!v27)
    {
      goto LABEL_49;
    }

    v28 = v27;
    v29 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A768];
    v31 = v27;
    v67 = *MEMORY[0x1E696A578];
    memset(v66, 0, 20);
    *(v66 + 1) = bswap32(v27);
    if ((v66[0] & 0x8000) != 0)
    {
      if (!__maskrune(SBYTE1(v66[0]), 0x40000uLL))
      {
        goto LABEL_45;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v66[0]) + 60) & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    if (SBYTE2(v66[0]) < 0)
    {
      if (!__maskrune(SBYTE2(v66[0]), 0x40000uLL))
      {
        goto LABEL_45;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE2(v66[0]) + 60) & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    if (SHIBYTE(v66[0]) < 0)
    {
      if (!__maskrune(SHIBYTE(v66[0]), 0x40000uLL))
      {
        goto LABEL_45;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v66[0]) + 60) & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    if (SLOBYTE(v66[1]) < 0)
    {
      if (__maskrune(SLOBYTE(v66[1]), 0x40000uLL))
      {
        goto LABEL_43;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v66[1]) + 60) & 0x40000) != 0)
    {
LABEL_43:
      strcpy(&v66[1] + 1, "'");
      LOBYTE(v66[0]) = 39;
      goto LABEL_46;
    }

LABEL_45:
    __sprintf_chk(v66, 0, 0x14uLL, "%d", v28);
LABEL_46:
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v66];
    v68[0] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v34 = [v29 errorWithDomain:v30 code:v31 userInfo:v33];
    v35 = v34;

    v36 = v34;
    if (v36)
    {
      v23 = v36;
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v66[0] = 134218242;
        *&v66[1] = self;
        LOWORD(v66[3]) = 2114;
        *(&v66[3] + 2) = v23;
        v38 = "[AP] - MPCProcessAudioTap %p - Error adding processing tap to audio queue: %{public}@";
LABEL_95:
        _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, v38, v66, 0x16u);
        goto LABEL_96;
      }

      goto LABEL_96;
    }

LABEL_49:
    Buffer = AudioQueueAllocateBuffer(self->_processingQueue, *([v7 streamDescription] + 20) * frames * *(objc_msgSend(v7, "streamDescription") + 24), &self->_monoAudioBuffer);
    if (!Buffer)
    {
      goto LABEL_72;
    }

    v40 = Buffer;
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A768];
    v43 = Buffer;
    v67 = *MEMORY[0x1E696A578];
    memset(v66, 0, 20);
    *(v66 + 1) = bswap32(Buffer);
    if ((v66[0] & 0x8000) != 0)
    {
      if (!__maskrune(SBYTE1(v66[0]), 0x40000uLL))
      {
        goto LABEL_68;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v66[0]) + 60) & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    if (SBYTE2(v66[0]) < 0)
    {
      if (!__maskrune(SBYTE2(v66[0]), 0x40000uLL))
      {
        goto LABEL_68;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE2(v66[0]) + 60) & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    if (SHIBYTE(v66[0]) < 0)
    {
      if (!__maskrune(SHIBYTE(v66[0]), 0x40000uLL))
      {
        goto LABEL_68;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v66[0]) + 60) & 0x40000) == 0)
    {
      goto LABEL_68;
    }

    if (SLOBYTE(v66[1]) < 0)
    {
      v44 = __maskrune(SLOBYTE(v66[1]), 0x40000uLL);
    }

    else
    {
      v44 = *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v66[1]) + 60) & 0x40000;
    }

    if (v44)
    {
      strcpy(&v66[1] + 1, "'");
      LOBYTE(v66[0]) = 39;
      goto LABEL_69;
    }

LABEL_68:
    __sprintf_chk(v66, 0, 0x14uLL, "%d", v40);
LABEL_69:
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v66];
    v68[0] = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v47 = [v41 errorWithDomain:v42 code:v43 userInfo:v46];
    v48 = v47;

    v49 = v47;
    if (v49)
    {
      v23 = v49;
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v66[0] = 134218242;
        *&v66[1] = self;
        LOWORD(v66[3]) = 2114;
        *(&v66[3] + 2) = v23;
        v38 = "[AP] - MPCProcessAudioTap %p - Error allocating buffer for audio queue: %{public}@";
        goto LABEL_95;
      }

LABEL_96:

      [(MPCProcessAudioTap *)self _destroyProcessTap];
LABEL_98:

      goto LABEL_99;
    }

LABEL_72:
    v50 = AudioQueueEnqueueBuffer(*p_processingQueue, self->_monoAudioBuffer, 0, 0);
    if (!v50)
    {
      goto LABEL_97;
    }

    v51 = v50;
    v52 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A768];
    v54 = v50;
    v67 = *MEMORY[0x1E696A578];
    memset(v66, 0, 20);
    v55 = bswap32(v50);
    *(v66 + 1) = v55;
    if ((v55 & 0x80) != 0)
    {
      if (!__maskrune(v55, 0x40000uLL))
      {
        goto LABEL_91;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v55 + 60) & 0x40000) == 0)
    {
      goto LABEL_91;
    }

    v56 = v55 >> 8;
    if ((v55 & 0x8000) != 0)
    {
      if (!__maskrune(v56, 0x40000uLL))
      {
        goto LABEL_91;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000) == 0)
    {
      goto LABEL_91;
    }

    if (SHIBYTE(v66[0]) < 0)
    {
      v57 = __maskrune(SHIBYTE(v66[0]), 0x40000uLL);
    }

    else
    {
      v57 = *(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v66[0]) + 60) & 0x40000;
    }

    if (v57)
    {
      if (SLOBYTE(v66[1]) < 0 ? __maskrune(SLOBYTE(v66[1]), 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v66[1]) + 60) & 0x40000)
      {
        strcpy(&v66[1] + 1, "'");
        LOBYTE(v66[0]) = 39;
        goto LABEL_92;
      }
    }

LABEL_91:
    __sprintf_chk(v66, 0, 0x14uLL, "%d", v51);
LABEL_92:
    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v66];
    v68[0] = v59;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v61 = [v52 errorWithDomain:v53 code:v54 userInfo:v60];
    v62 = v61;

    v63 = v61;
    if (v63)
    {
      v23 = v63;
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v66[0] = 134218242;
        *&v66[1] = self;
        LOWORD(v66[3]) = 2114;
        *(&v66[3] + 2) = v23;
        v38 = "[AP] - MPCProcessAudioTap %p - Error Enqueuing buffer for audio queue: %{public}@";
        goto LABEL_95;
      }

      goto LABEL_96;
    }

LABEL_97:
    _MPCProcessAudioTapRegister(self);
    v23 = 0;
    self->_enabled = 1;
    goto LABEL_98;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v66[0] = 134218242;
    *&v66[1] = self;
    LOWORD(v66[3]) = 2114;
    *(&v66[3] + 2) = v23;
    _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_ERROR, "[AP] - MPCProcessAudioTap %p - Error creating new audio queue for processing: %{public}@", v66, 0x16u);
  }

  [(MPCProcessAudioTap *)self _destroyProcessTap];
LABEL_99:
}

- (void)dealloc
{
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __29__MPCProcessAudioTap_dealloc__block_invoke;
  v7 = &unk_1E8239298;
  selfCopy = self;
  msv_dispatch_sync_on_queue();
  v3.receiver = self;
  v3.super_class = MPCProcessAudioTap;
  [(MPCProcessAudioTap *)&v3 dealloc];
}

OpaqueAudioQueue *__29__MPCProcessAudioTap_dealloc__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    AudioQueueStop(result, 1u);
    v3 = *(a1 + 32);

    return [v3 _destroyProcessTap];
  }

  return result;
}

- (void)stop
{
  [(MPCProcessAudioTap *)self setEnabled:0];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__MPCProcessAudioTap_stop__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __26__MPCProcessAudioTap_stop__block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    return;
  }

  v3 = AudioQueueStop(v2, 1u);
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E696A768];
    v7 = v3;
    v24[0] = *MEMORY[0x1E696A578];
    memset(buf, 0, 20);
    v8 = bswap32(v3);
    *&buf[1] = v8;
    if ((v8 & 0x80) != 0)
    {
      if (!__maskrune(v8, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v10 = v8 >> 8;
    if ((v8 & 0x8000) != 0)
    {
      if (!__maskrune(v10, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v11 = v8 << 8 >> 24;
    if ((v8 & 0x800000) != 0)
    {
      if (!__maskrune(v11, 0x40000uLL))
      {
        goto LABEL_20;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    v12 = v8 >> 24;
    if (v8 < 0)
    {
      if (__maskrune(v12, 0x40000uLL))
      {
        goto LABEL_18;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000) != 0)
    {
LABEL_18:
      strcpy(&buf[5], "'");
      buf[0] = 39;
LABEL_21:
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
      *buf = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v24 count:1];
      v9 = [v5 errorWithDomain:v6 code:v7 userInfo:v14];
      v15 = v9;

      goto LABEL_22;
    }

LABEL_20:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v4);
    goto LABEL_21;
  }

  v9 = 0;
LABEL_22:
  v16 = v9;
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = [v16 treeDescription];
      *buf = 134218242;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[AP] - MPCProcessAudioTap %p - Stopping processing audio queue error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v21;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - Stopping processing audio queue", buf, 0xCu);
  }

  [*(a1 + 32) _destroyProcessTap];
  v22 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v22 processAudioTapDidStop];
  }
}

- (void)start
{
  [(MPCProcessAudioTap *)self setEnabled:1];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__MPCProcessAudioTap_start__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __27__MPCProcessAudioTap_start__block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (!v3)
  {
    [v2 _createProcessTapWithNumberOfFrames:objc_msgSend(v2 sampleRate:{"numberOfFrames"), objc_msgSend(*(a1 + 32), "sampleRate")}];
    v3 = *(*(a1 + 32) + 8);
  }

  v4 = AudioQueueStart(v3, 0);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v5 = v4;
  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v8 = v4;
  v24[0] = *MEMORY[0x1E696A578];
  memset(buf, 0, 20);
  v9 = bswap32(v4);
  *&buf[1] = v9;
  if ((v9 & 0x80) != 0)
  {
    if (!__maskrune(v9, 0x40000uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000) == 0)
  {
    goto LABEL_21;
  }

  v11 = v9 >> 8;
  if ((v9 & 0x8000) != 0)
  {
    if (!__maskrune(v11, 0x40000uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000) == 0)
  {
    goto LABEL_21;
  }

  v12 = v9 << 8 >> 24;
  if ((v9 & 0x800000) != 0)
  {
    if (!__maskrune(v12, 0x40000uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000) == 0)
  {
    goto LABEL_21;
  }

  v13 = v9 >> 24;
  if (v9 < 0)
  {
    if (__maskrune(v13, 0x40000uLL))
    {
      goto LABEL_19;
    }

LABEL_21:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v5);
    goto LABEL_22;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  strcpy(&buf[5], "'");
  buf[0] = 39;
LABEL_22:
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
  *buf = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v24 count:1];
  v10 = [v6 errorWithDomain:v7 code:v8 userInfo:v15];
  v16 = v10;

LABEL_23:
  v17 = v10;
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = [v17 treeDescription];
      *buf = 134218242;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "[AP] - MPCProcessAudioTap %p - Starting processing audio queue error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - Starting processing audio queue", buf, 0xCu);
  }
}

- (MPCProcessAudioTap)initWithPID:(int)d refreshRate:(id)rate numberOfChannels:(unsigned int)channels delegate:(id)delegate
{
  v43 = *MEMORY[0x1E69E9840];
  rateCopy = rate;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = MPCProcessAudioTap;
  v12 = [(MPCProcessAudioTap *)&v28 init];
  v13 = v12;
  if (v12)
  {
    v12->_pid = d;
    v12->_sampleRate = 48000;
    v12->_numberOfChannels = channels;
    v12->_enabled = 1;
    if (rateCopy)
    {
      integerValue = [rateCopy integerValue];
    }

    else
    {
      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      integerValue = [standardUserDefaults audioAnalysisRefreshRate];
    }

    LODWORD(v15) = v13->_sampleRate;
    v17 = log2(v15 / integerValue);
    v18 = exp2(ceil(v17));
    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sampleRate = v13->_sampleRate;
      *buf = 134219520;
      v30 = v13;
      v31 = 2048;
      v32 = integerValue;
      v33 = 2048;
      v34 = (sampleRate / v18);
      v35 = 1024;
      v36 = v18;
      v37 = 1024;
      v38 = sampleRate;
      v39 = 2048;
      v40 = ((v18 / sampleRate) * 1000.0);
      v41 = 2048;
      v42 = v34;
      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[AP] - MPCProcessAudioTap %p - Desired refresh rate for process tap: %luHz - Actual refresh rate: %3.1fHz [%u samples @ %uHz] - FFT Info: dt=%3.1fms df=%3.1fHz", buf, 0x40u);
    }

    v21 = dispatch_queue_create("com.apple.mediaplaybackcore.audiotap", 0);
    accessQueue = v13->_accessQueue;
    v13->_accessQueue = v21;

    v13->_numberOfFrames = v18;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v23 = v13->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MPCProcessAudioTap_initWithPID_refreshRate_numberOfChannels_delegate___block_invoke;
    block[3] = &unk_1E8239298;
    v24 = v13;
    v27 = v24;
    dispatch_async(v23, block);
    [(MPCProcessAudioTap *)v24 setupNotifications];
  }

  return v13;
}

uint64_t __72__MPCProcessAudioTap_initWithPID_refreshRate_numberOfChannels_delegate___block_invoke(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  LODWORD(a2) = v2[12];
  return [v2 _createProcessTapWithNumberOfFrames:v2[11] sampleRate:*&a2];
}

- (MPCProcessAudioTap)initWithRefreshRate:(id)rate delegate:(id)delegate
{
  delegateCopy = delegate;
  rateCopy = rate;
  v8 = [(MPCProcessAudioTap *)self initWithPID:getpid() refreshRate:rateCopy numberOfChannels:1 delegate:delegateCopy];

  return v8;
}

@end