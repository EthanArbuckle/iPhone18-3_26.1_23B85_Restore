@interface MPCVocalAttenuationProcessorImplementation
- (BOOL)_createAudioUnit:(id *)a3;
- (BOOL)_initializeAudioUnit:(id *)a3;
- (BOOL)_setupAudioUnitWithModel:(id)a3 error:(id *)a4;
- (BOOL)isCompatibleWithAudioFormat:(AudioStreamBasicDescription *)a3 maxFrames:(unsigned int)a4;
- (BOOL)processAudioBuffer:(AudioBufferList *)a3 sampleIndex:(int64_t)a4 numberFrames:(unsigned int)a5 error:(id *)a6;
- (MPCVocalAttenuationProcessorImplementation)init;
- (MPCVocalAttenuationProcessorImplementation)initWithMaxAttenuationLevel:(float)a3 audioFormat:(AudioStreamBasicDescription *)a4 maxFrames:(unsigned int)a5;
- (double)renderingLimit;
- (void)_applyAttenuationLevelToAudioUnit;
- (void)_prepareWithModel:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)prepareWithModel:(id)a3 completion:(id)a4;
- (void)resetAudioUnit;
- (void)setEnabled:(BOOL)a3;
- (void)setLevel:(float)a3;
- (void)tearDownWithCompletion:(id)a3;
@end

@implementation MPCVocalAttenuationProcessorImplementation

- (double)renderingLimit
{
  v3 = [MEMORY[0x1E69708A8] standardUserDefaults];
  [v3 audioTapTimeOutRatioForFailureDetection];
  v5 = v4;
  [(MPCVocalAttenuationProcessorImplementation *)self sampleTime];
  v7 = v6 * v5;

  return v7;
}

- (void)dealloc
{
  ioBuffer = self->_ioBuffer;
  if (ioBuffer)
  {
    free(ioBuffer);
  }

  v4.receiver = self;
  v4.super_class = MPCVocalAttenuationProcessorImplementation;
  [(MPCVocalAttenuationProcessorImplementation *)&v4 dealloc];
}

- (MPCVocalAttenuationProcessorImplementation)init
{
  v3 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:2 channels:0 interleaved:44100.0];
  v4 = [v3 streamDescription];
  v5 = *v4;
  v6 = *(v4 + 16);
  v10 = *(v4 + 32);
  v9[0] = v5;
  v9[1] = v6;
  LODWORD(v5) = 1119748096;
  v7 = [(MPCVocalAttenuationProcessorImplementation *)self initWithMaxAttenuationLevel:v9 audioFormat:0x2000 maxFrames:*&v5];

  return v7;
}

- (void)_applyAttenuationLevelToAudioUnit
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([(MPCVocalAttenuationProcessorImplementation *)self isAvailable])
  {
    v3 = AudioUnitSetParameter(self->_processingAU, 0, 0, 0, self->_level, 0);
    if (!v3)
    {
      v9 = 0;
      goto LABEL_22;
    }

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

LABEL_22:
      v16 = v9;
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v16;
          v19 = "[AP] - %{public}@ - Error setting audio attenuation level: %{public}@";
          v20 = v18;
          v21 = OS_LOG_TYPE_ERROR;
LABEL_27:
          _os_log_impl(&dword_1C5C61000, v20, v21, v19, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        level = self->_level;
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2048;
        *&buf[14] = level;
        v19 = "[AP] - %{public}@ - New attenuation level: %f";
        v20 = v18;
        v21 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_27;
      }

      return;
    }

LABEL_20:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v4);
    goto LABEL_21;
  }
}

- (BOOL)_initializeAudioUnit:(id *)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = AudioUnitInitialize(self->_processingAU);
  if (!v5)
  {
    v11 = 0;
    v12 = 1;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A768];
  v9 = v5;
  v26 = *MEMORY[0x1E696A578];
  memset(buf, 0, 20);
  v10 = bswap32(v5);
  *&buf[1] = v10;
  if ((v10 & 0x80) != 0)
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

  v13 = v10 >> 8;
  if ((v10 & 0x8000) != 0)
  {
    if (!__maskrune(v13, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  v14 = v10 << 8 >> 24;
  if ((v10 & 0x800000) != 0)
  {
    if (!__maskrune(v14, 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  v15 = v10 >> 24;
  if (v10 < 0)
  {
    if (__maskrune(v15, 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000) != 0)
  {
LABEL_17:
    strcpy(&buf[5], "'");
    buf[0] = 39;
    goto LABEL_20;
  }

LABEL_19:
  __sprintf_chk(buf, 0, 0x14uLL, "%d", v6);
LABEL_20:
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
  v27[0] = v16;
  v12 = 1;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v18 = [v7 errorWithDomain:v8 code:v9 userInfo:v17];
  v19 = v18;

  v20 = v18;
  v11 = v20;
  if (v20)
  {
    if (a3)
    {
      v21 = v20;
      *a3 = v11;
    }

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *a3;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Error initializing audio unit: %{public}@", buf, 0x16u);
    }

    v12 = 0;
  }

LABEL_26:

  return v12;
}

- (BOOL)_setupAudioUnitWithModel:(id)a3 error:(id *)a4
{
  v169[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  inData[0] = inputRenderCallback;
  inData[1] = self;
  v7 = AudioUnitSetProperty(self->_processingAU, 0x17u, 1u, 0, inData, 0x10u);
  if (!v7)
  {
    v10 = MEMORY[0x1E696A768];
    goto LABEL_25;
  }

  v8 = v7;
  v9 = MEMORY[0x1E696ABC0];
  v10 = MEMORY[0x1E696A768];
  v11 = *MEMORY[0x1E696A768];
  v12 = v7;
  v168 = *MEMORY[0x1E696A578];
  memset(v167, 0, 20);
  *(v167 + 1) = bswap32(v7);
  v13 = MEMORY[0x1E69E9830];
  if ((v167[0] & 0x8000) != 0)
  {
    if (!__maskrune(SBYTE1(v167[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SBYTE2(v167[0]) < 0)
  {
    if (!__maskrune(SBYTE2(v167[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v13 + 4 * SBYTE2(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SHIBYTE(v167[0]) < 0)
  {
    if (!__maskrune(SHIBYTE(v167[0]), 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v13 + 4 * SHIBYTE(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_19;
  }

  if (SLOBYTE(v167[1]) < 0)
  {
    if (__maskrune(SLOBYTE(v167[1]), 0x40000uLL))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v13 + 4 * SLOBYTE(v167[1]) + 60) & 0x40000) != 0)
  {
LABEL_17:
    strcpy(&v167[1] + 1, "'");
    LOBYTE(v167[0]) = 39;
    goto LABEL_20;
  }

LABEL_19:
  __sprintf_chk(v167, 0, 0x14uLL, "%d", v8);
LABEL_20:
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
  v169[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
  v16 = [v9 errorWithDomain:v11 code:v12 userInfo:v15];
  v17 = v16;

  v18 = v16;
  if (v18)
  {
    v19 = v18;
    if (a4)
    {
      v20 = v18;
      *a4 = v19;
    }

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_165;
    }

    v22 = *a4;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v22;
    v23 = "[AP] - %{public}@ - Error setting input render callback format: %{public}@";
LABEL_164:
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, v23, v167, 0x16u);
LABEL_165:

    v105 = 0;
    goto LABEL_166;
  }

LABEL_25:
  self->_ioBuffer = malloc_type_malloc(16 * (self->_audioFormat.mChannelsPerFrame - 1) + 24, 0x10800404ACF7207uLL);
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    maxFrames = self->_maxFrames;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2048;
    *(&v167[3] + 2) = maxFrames;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Setting up maximum frames per slice to %ld", v167, 0x16u);
  }

  v26 = AudioUnitSetProperty(self->_processingAU, 0xEu, 0, 0, &self->_maxFrames, 4u);
  if (!v26)
  {
    goto LABEL_51;
  }

  v27 = v26;
  v28 = MEMORY[0x1E696ABC0];
  v29 = *v10;
  v30 = v26;
  v168 = *MEMORY[0x1E696A578];
  memset(v167, 0, 20);
  *(v167 + 1) = bswap32(v26);
  if ((v167[0] & 0x8000) != 0)
  {
    if (!__maskrune(SBYTE1(v167[0]), 0x40000uLL))
    {
      goto LABEL_45;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_45;
  }

  if (SBYTE2(v167[0]) < 0)
  {
    if (!__maskrune(SBYTE2(v167[0]), 0x40000uLL))
    {
      goto LABEL_45;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_45;
  }

  if (SHIBYTE(v167[0]) < 0)
  {
    if (!__maskrune(SHIBYTE(v167[0]), 0x40000uLL))
    {
      goto LABEL_45;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_45;
  }

  if (SLOBYTE(v167[1]) < 0)
  {
    if (__maskrune(SLOBYTE(v167[1]), 0x40000uLL))
    {
      goto LABEL_43;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000) != 0)
  {
LABEL_43:
    strcpy(&v167[1] + 1, "'");
    LOBYTE(v167[0]) = 39;
    goto LABEL_46;
  }

LABEL_45:
  __sprintf_chk(v167, 0, 0x14uLL, "%d", v27);
LABEL_46:
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
  v169[0] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
  v33 = [v28 errorWithDomain:v29 code:v30 userInfo:v32];
  v34 = v33;

  v35 = v33;
  if (v35)
  {
    v19 = v35;
    if (a4)
    {
      v36 = v35;
      *a4 = v19;
    }

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_165;
    }

    v37 = *a4;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v37;
    v23 = "[AP] - %{public}@ - Error setting max frames: %{public}@";
    goto LABEL_164;
  }

LABEL_51:
  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Format ID: %u - Sample Rate: %1.0fHz - Bytes/Packet: %u - Frames/Packet: %u - Bytes/Frame: %u - Channels/Frame: %u - Bits/Channel: %u", self->_audioFormat.mFormatID, *&self->_audioFormat.mSampleRate, self->_audioFormat.mBytesPerPacket, self->_audioFormat.mFramesPerPacket, self->_audioFormat.mBytesPerFrame, self->_audioFormat.mChannelsPerFrame, self->_audioFormat.mBitsPerChannel];
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v39;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Setting up stream processing format to %{public}@", v167, 0x16u);
  }

  v40 = AudioUnitSetProperty(self->_processingAU, 8u, 1u, 0, &self->_audioFormat, 0x28u);
  if (!v40)
  {
    goto LABEL_77;
  }

  v41 = v40;
  v42 = MEMORY[0x1E696ABC0];
  v43 = *v10;
  v44 = v40;
  v168 = *MEMORY[0x1E696A578];
  memset(v167, 0, 20);
  *(v167 + 1) = bswap32(v40);
  if ((v167[0] & 0x8000) != 0)
  {
    if (!__maskrune(SBYTE1(v167[0]), 0x40000uLL))
    {
      goto LABEL_71;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_71;
  }

  if (SBYTE2(v167[0]) < 0)
  {
    if (!__maskrune(SBYTE2(v167[0]), 0x40000uLL))
    {
      goto LABEL_71;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_71;
  }

  if (SHIBYTE(v167[0]) < 0)
  {
    if (!__maskrune(SHIBYTE(v167[0]), 0x40000uLL))
    {
      goto LABEL_71;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_71;
  }

  if (SLOBYTE(v167[1]) < 0)
  {
    if (__maskrune(SLOBYTE(v167[1]), 0x40000uLL))
    {
      goto LABEL_69;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000) != 0)
  {
LABEL_69:
    strcpy(&v167[1] + 1, "'");
    LOBYTE(v167[0]) = 39;
    goto LABEL_72;
  }

LABEL_71:
  __sprintf_chk(v167, 0, 0x14uLL, "%d", v41);
LABEL_72:
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
  v169[0] = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
  v47 = [v42 errorWithDomain:v43 code:v44 userInfo:v46];
  v48 = v47;

  v49 = v47;
  if (v49)
  {
    v19 = v49;
    if (a4)
    {
      v50 = v49;
      *a4 = v19;
    }

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_165;
    }

    v51 = *a4;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v51;
    v23 = "[AP] - %{public}@ - Error setting input format: %{public}@";
    goto LABEL_164;
  }

LABEL_77:
  v52 = AudioUnitSetProperty(self->_processingAU, 8u, 2u, 0, &self->_audioFormat, 0x28u);
  if (!v52)
  {
    goto LABEL_102;
  }

  v53 = v52;
  v54 = MEMORY[0x1E696ABC0];
  v55 = *v10;
  v56 = v52;
  v168 = *MEMORY[0x1E696A578];
  memset(v167, 0, 20);
  *(v167 + 1) = bswap32(v52);
  if ((v167[0] & 0x8000) != 0)
  {
    if (!__maskrune(SBYTE1(v167[0]), 0x40000uLL))
    {
      goto LABEL_96;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_96;
  }

  if (SBYTE2(v167[0]) < 0)
  {
    if (!__maskrune(SBYTE2(v167[0]), 0x40000uLL))
    {
      goto LABEL_96;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_96;
  }

  if (SHIBYTE(v167[0]) < 0)
  {
    if (!__maskrune(SHIBYTE(v167[0]), 0x40000uLL))
    {
      goto LABEL_96;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_96;
  }

  if (SLOBYTE(v167[1]) < 0)
  {
    v57 = __maskrune(SLOBYTE(v167[1]), 0x40000uLL);
  }

  else
  {
    v57 = *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000;
  }

  if (v57)
  {
    strcpy(&v167[1] + 1, "'");
    LOBYTE(v167[0]) = 39;
    goto LABEL_97;
  }

LABEL_96:
  __sprintf_chk(v167, 0, 0x14uLL, "%d", v53);
LABEL_97:
  v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
  v169[0] = v58;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
  v60 = [v54 errorWithDomain:v55 code:v56 userInfo:v59];
  v61 = v60;

  v62 = v60;
  if (v62)
  {
    v19 = v62;
    if (a4)
    {
      v63 = v62;
      *a4 = v19;
    }

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_165;
    }

    v64 = *a4;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v64;
    v23 = "[AP] - %{public}@ - Error setting output format: %{public}@";
    goto LABEL_164;
  }

LABEL_102:
  v65 = _MPCLogCategoryPlayback();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v66 = v6[4];
    }

    else
    {
      v66 = 0;
    }

    v67 = v66;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v67;
    _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Setting up plist path to %{public}@", v167, 0x16u);
  }

  if (v6)
  {
    v68 = v6[4];
  }

  else
  {
    v68 = 0;
  }

  v69 = v68;

  v165 = v69;
  v70 = AudioUnitSetProperty(self->_processingAU, 0x7530u, 0, 0, &v165, 8u);
  if (!v70)
  {
    goto LABEL_133;
  }

  v71 = v70;
  v72 = MEMORY[0x1E696ABC0];
  v73 = *v10;
  v74 = v70;
  v168 = *MEMORY[0x1E696A578];
  memset(v167, 0, 20);
  *(v167 + 1) = bswap32(v70);
  if ((v167[0] & 0x8000) != 0)
  {
    if (!__maskrune(SBYTE1(v167[0]), 0x40000uLL))
    {
      goto LABEL_127;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_127;
  }

  if (SBYTE2(v167[0]) < 0)
  {
    if (!__maskrune(SBYTE2(v167[0]), 0x40000uLL))
    {
      goto LABEL_127;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000) == 0)
  {
    goto LABEL_127;
  }

  if (SHIBYTE(v167[0]) < 0)
  {
    v75 = __maskrune(SHIBYTE(v167[0]), 0x40000uLL);
  }

  else
  {
    v75 = *(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000;
  }

  if (v75)
  {
    if (SLOBYTE(v167[1]) < 0 ? __maskrune(SLOBYTE(v167[1]), 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000)
    {
      strcpy(&v167[1] + 1, "'");
      LOBYTE(v167[0]) = 39;
      goto LABEL_128;
    }
  }

LABEL_127:
  __sprintf_chk(v167, 0, 0x14uLL, "%d", v71);
LABEL_128:
  v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
  v169[0] = v77;
  v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
  v79 = [v72 errorWithDomain:v73 code:v74 userInfo:v78];
  v80 = v79;

  v81 = v79;
  if (v81)
  {
    v19 = v81;
    if (a4)
    {
      v82 = v81;
      *a4 = v19;
    }

    v21 = _MPCLogCategoryPlayback();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_165;
    }

    v83 = *a4;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v83;
    v23 = "[AP] - %{public}@ - Error setting model plist path: %{public}@";
    goto LABEL_164;
  }

LABEL_133:
  v84 = _MPCLogCategoryPlayback();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
  {
    if (v6)
    {
      v85 = v6[3];
    }

    else
    {
      v85 = 0;
    }

    v86 = v85;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v86;
    _os_log_impl(&dword_1C5C61000, v84, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Setting up model base path to %{public}@", v167, 0x16u);
  }

  if (v6)
  {
    v87 = v6[3];
  }

  else
  {
    v87 = 0;
  }

  v88 = v87;

  v164 = v88;
  v89 = AudioUnitSetProperty(self->_processingAU, 0x9C40u, 0, 0, &v164, 8u);
  if (v89)
  {
    v90 = v89;
    v91 = MEMORY[0x1E696ABC0];
    v92 = *v10;
    v93 = v89;
    v168 = *MEMORY[0x1E696A578];
    memset(v167, 0, 20);
    *(v167 + 1) = bswap32(v89);
    v94 = (v167[0] & 0x8000) != 0 ? __maskrune(SBYTE1(v167[0]), 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000;
    if (v94 && (SBYTE2(v167[0]) < 0 ? (v95 = __maskrune(SBYTE2(v167[0]), 0x40000uLL)) : (v95 = *(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000), v95 && (SHIBYTE(v167[0]) < 0 ? (v96 = __maskrune(SHIBYTE(v167[0]), 0x40000uLL)) : (v96 = *(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000), v96 && (SLOBYTE(v167[1]) < 0 ? (v97 = __maskrune(SLOBYTE(v167[1]), 0x40000uLL)) : (v97 = *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000), v97))))
    {
      strcpy(&v167[1] + 1, "'");
      LOBYTE(v167[0]) = 39;
    }

    else
    {
      __sprintf_chk(v167, 0, 0x14uLL, "%d", v90);
    }

    v98 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
    v169[0] = v98;
    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
    v100 = [v91 errorWithDomain:v92 code:v93 userInfo:v99];
    v101 = v100;

    v102 = v100;
    if (v102)
    {
      v19 = v102;
      if (a4)
      {
        v103 = v102;
        *a4 = v19;
      }

      v21 = _MPCLogCategoryPlayback();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_165;
      }

      v104 = *a4;
      v167[0] = 138543618;
      *&v167[1] = self;
      LOWORD(v167[3]) = 2114;
      *(&v167[3] + 2) = v104;
      v23 = "[AP] - %{public}@ - Error setting model base path: %{public}@";
      goto LABEL_164;
    }
  }

  v107 = _MPCLogCategoryPlayback();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
  {
    v167[0] = 138543362;
    *&v167[1] = self;
    _os_log_impl(&dword_1C5C61000, v107, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Turning dereverb off", v167, 0xCu);
  }

  v163 = &stru_1F454A698;
  v108 = AudioUnitSetProperty(self->_processingAU, 0xC350u, 0, 0, &v163, 8u);
  if (v108)
  {
    v109 = v108;
    v110 = MEMORY[0x1E696ABC0];
    v111 = *v10;
    v112 = v108;
    v168 = *MEMORY[0x1E696A578];
    memset(v167, 0, 20);
    *(v167 + 1) = bswap32(v108);
    v113 = (v167[0] & 0x8000) != 0 ? __maskrune(SBYTE1(v167[0]), 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000;
    if (v113 && (SBYTE2(v167[0]) < 0 ? (v114 = __maskrune(SBYTE2(v167[0]), 0x40000uLL)) : (v114 = *(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000), v114 && (SHIBYTE(v167[0]) < 0 ? (v115 = __maskrune(SHIBYTE(v167[0]), 0x40000uLL)) : (v115 = *(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000), v115 && (SLOBYTE(v167[1]) < 0 ? (v116 = __maskrune(SLOBYTE(v167[1]), 0x40000uLL)) : (v116 = *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000), v116))))
    {
      strcpy(&v167[1] + 1, "'");
      LOBYTE(v167[0]) = 39;
    }

    else
    {
      __sprintf_chk(v167, 0, 0x14uLL, "%d", v109);
    }

    v117 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
    v169[0] = v117;
    v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
    v119 = [v110 errorWithDomain:v111 code:v112 userInfo:v118];
    v120 = v119;

    v121 = v119;
    if (v121)
    {
      v19 = v121;
      if (a4)
      {
        v122 = v121;
        *a4 = v19;
      }

      v123 = _MPCLogCategoryPlayback();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_251;
      }

      v124 = *a4;
      v167[0] = 138543618;
      *&v167[1] = self;
      LOWORD(v167[3]) = 2114;
      *(&v167[3] + 2) = v124;
      v125 = "[AP] - %{public}@ - Error disabling Dereverb: %{public}@";
LABEL_250:
      _os_log_impl(&dword_1C5C61000, v123, OS_LOG_TYPE_ERROR, v125, v167, 0x16u);
LABEL_251:
      v105 = 0;
LABEL_252:

      goto LABEL_166;
    }
  }

  v126 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v127 = [v126 shouldBypassVocalAttenuationDenoising];

  v123 = _MPCLogCategoryPlayback();
  v128 = os_log_type_enabled(v123, OS_LOG_TYPE_INFO);
  if (!v127)
  {
    if (v128)
    {
      v167[0] = 138543362;
      *&v167[1] = self;
      v105 = 1;
      _os_log_impl(&dword_1C5C61000, v123, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Keeping denoising on", v167, 0xCu);
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v105 = 1;
    }

    goto LABEL_252;
  }

  if (v128)
  {
    v167[0] = 138543362;
    *&v167[1] = self;
    _os_log_impl(&dword_1C5C61000, v123, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Turning denoising off", v167, 0xCu);
  }

  v129 = AudioUnitSetParameter(self->_processingAU, 0x17626u, 0, 0, 1.0, 0);
  if (v129)
  {
    v130 = v129;
    v131 = MEMORY[0x1E696ABC0];
    v132 = *v10;
    v133 = v129;
    v168 = *MEMORY[0x1E696A578];
    memset(v167, 0, 20);
    *(v167 + 1) = bswap32(v129);
    v134 = (v167[0] & 0x8000) != 0 ? __maskrune(SBYTE1(v167[0]), 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * SBYTE1(v167[0]) + 60) & 0x40000;
    if (v134 && (SBYTE2(v167[0]) < 0 ? (v135 = __maskrune(SBYTE2(v167[0]), 0x40000uLL)) : (v135 = *(MEMORY[0x1E69E9830] + 4 * SBYTE2(v167[0]) + 60) & 0x40000), v135 && (SHIBYTE(v167[0]) < 0 ? (v136 = __maskrune(SHIBYTE(v167[0]), 0x40000uLL)) : (v136 = *(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000), v136 && (SLOBYTE(v167[1]) < 0 ? (v137 = __maskrune(SLOBYTE(v167[1]), 0x40000uLL)) : (v137 = *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000), v137))))
    {
      strcpy(&v167[1] + 1, "'");
      LOBYTE(v167[0]) = 39;
    }

    else
    {
      __sprintf_chk(v167, 0, 0x14uLL, "%d", v130);
    }

    v138 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
    v169[0] = v138;
    v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
    v140 = [v131 errorWithDomain:v132 code:v133 userInfo:v139];
    v141 = v140;

    v142 = v140;
    if (v142)
    {
      v19 = v142;
      if (a4)
      {
        v143 = v142;
        *a4 = v19;
      }

      v123 = _MPCLogCategoryPlayback();
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_251;
      }

      v144 = *a4;
      v167[0] = 138543618;
      *&v167[1] = self;
      LOWORD(v167[3]) = 2114;
      *(&v167[3] + 2) = v144;
      v125 = "[AP] - %{public}@ - Error setting UseTuningMode to 1: %{public}@";
      goto LABEL_250;
    }
  }

  v145 = AudioUnitSetParameter(self->_processingAU, 0x17627u, 0, 0, 0.0, 0);
  if (!v145)
  {
    v19 = 0;
    v105 = 1;
    goto LABEL_166;
  }

  v146 = v145;
  v147 = MEMORY[0x1E696ABC0];
  v148 = *v10;
  v149 = v145;
  v168 = *MEMORY[0x1E696A578];
  memset(v167, 0, 20);
  v150 = bswap32(v145);
  *(v167 + 1) = v150;
  if ((v150 & 0x80) != 0)
  {
    v151 = __maskrune(v150, 0x40000uLL);
  }

  else
  {
    v151 = *(MEMORY[0x1E69E9830] + 4 * v150 + 60) & 0x40000;
  }

  if (v151 && ((v152 = v150 >> 8, (v150 & 0x8000) != 0) ? (v153 = __maskrune(v152, 0x40000uLL)) : (v153 = *(MEMORY[0x1E69E9830] + 4 * v152 + 60) & 0x40000), v153 && (SHIBYTE(v167[0]) < 0 ? (v154 = __maskrune(SHIBYTE(v167[0]), 0x40000uLL)) : (v154 = *(MEMORY[0x1E69E9830] + 4 * SHIBYTE(v167[0]) + 60) & 0x40000), v154 && (SLOBYTE(v167[1]) < 0 ? (v155 = __maskrune(SLOBYTE(v167[1]), 0x40000uLL)) : (v155 = *(MEMORY[0x1E69E9830] + 4 * SLOBYTE(v167[1]) + 60) & 0x40000), v155))))
  {
    strcpy(&v167[1] + 1, "'");
    LOBYTE(v167[0]) = 39;
  }

  else
  {
    __sprintf_chk(v167, 0, 0x14uLL, "%d", v146);
  }

  v156 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v167];
  v169[0] = v156;
  v105 = 1;
  v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v169 forKeys:&v168 count:1];
  v158 = [v147 errorWithDomain:v148 code:v149 userInfo:v157];
  v159 = v158;

  v160 = v158;
  v19 = v160;
  if (v160)
  {
    if (a4)
    {
      v161 = v160;
      *a4 = v19;
    }

    v123 = _MPCLogCategoryPlayback();
    if (!os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_251;
    }

    v162 = *a4;
    v167[0] = 138543618;
    *&v167[1] = self;
    LOWORD(v167[3]) = 2114;
    *(&v167[3] + 2) = v162;
    v125 = "[AP] - %{public}@ - Error setting TuningMode to 0: %{public}@";
    goto LABEL_250;
  }

LABEL_166:

  return v105;
}

- (BOOL)_createAudioUnit:(id *)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  *&inDesc.componentType = *"xfuasiovlppa";
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = Next;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - Found AudioComponent: %p", buf, 0x16u);
  }

  v7 = AudioComponentInstanceNew(Next, &self->_processingAU);
  if (!v7)
  {
    v14 = 0;
    v15 = 1;
    goto LABEL_28;
  }

  v8 = v7;
  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A768];
  v11 = v7;
  v28 = *MEMORY[0x1E696A578];
  memset(buf, 0, 20);
  v12 = bswap32(v7);
  *&buf[1] = v12;
  v13 = MEMORY[0x1E69E9830];
  if ((v12 & 0x80) != 0)
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

  v16 = v12 >> 8;
  if ((v12 & 0x8000) != 0)
  {
    if (!__maskrune(v16, 0x40000uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v13 + 4 * v16 + 60) & 0x40000) == 0)
  {
    goto LABEL_21;
  }

  if (buf[3] < 0)
  {
    if (!__maskrune(buf[3], 0x40000uLL))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v13 + 4 * buf[3] + 60) & 0x40000) == 0)
  {
    goto LABEL_21;
  }

  if (buf[4] < 0)
  {
    if (__maskrune(buf[4], 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v13 + 4 * buf[4] + 60) & 0x40000) != 0)
  {
LABEL_19:
    strcpy(&buf[5], "'");
    buf[0] = 39;
    goto LABEL_22;
  }

LABEL_21:
  __sprintf_chk(buf, 0, 0x14uLL, "%d", v8);
LABEL_22:
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
  v29[0] = v17;
  v15 = 1;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v19 = [v9 errorWithDomain:v10 code:v11 userInfo:v18];
  v20 = v19;

  v21 = v19;
  v14 = v21;
  if (v21)
  {
    if (a3)
    {
      v22 = v21;
      *a3 = v14;
    }

    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *a3;
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "[AP] - %{public}@ - Error creating audio unit: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

LABEL_28:

  return v15;
}

- (void)_prepareWithModel:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = [(MPCVocalAttenuationProcessorImplementation *)self _createAudioUnit:&v22];
  v9 = v22;
  v10 = v9;
  if (!v8)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = @"Unable to create audio unit";
    v17 = 201;
LABEL_8:
    v18 = [v15 msv_errorWithDomain:@"MPCSuntoryError" code:v17 underlyingError:v10 debugDescription:v16];
    v7[2](v7, 5, v18);

    goto LABEL_10;
  }

  v21 = v9;
  v11 = [(MPCVocalAttenuationProcessorImplementation *)self _setupAudioUnitWithModel:v6 error:&v21];
  v12 = v21;

  if (!v11)
  {
    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCSuntoryError" code:202 underlyingError:v12 debugDescription:@"Unable to setup audio unit"];
    v7[2](v7, 5, v19);

    v10 = v12;
    goto LABEL_10;
  }

  v20 = v12;
  v13 = [(MPCVocalAttenuationProcessorImplementation *)self _initializeAudioUnit:&v20];
  v10 = v20;

  if (!v13)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = @"Unable to initialize audio unit";
    v17 = 203;
    goto LABEL_8;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = self;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[AP] - %{public}@ - Audio Unit created", buf, 0xCu);
  }

  v7[2](v7, 2, 0);
LABEL_10:
}

- (void)resetAudioUnit
{
  *&self->_timestamp.mSMPTETime.mHours = 0u;
  *&self->_timestamp.mSMPTETime.mSubframes = 0u;
  *&self->_timestamp.mRateScalar = 0u;
  *&self->_timestamp.mSampleTime = 0u;
  self->_previousContiguousSampleIndex = -1;
  self->_nextContiguousSampleIndex = -1;
}

- (BOOL)processAudioBuffer:(AudioBufferList *)a3 sampleIndex:(int64_t)a4 numberFrames:(unsigned int)a5 error:(id *)a6
{
  v89[1] = *MEMORY[0x1E69E9840];
  if (![(MPCVocalAttenuationProcessorImplementation *)self isAvailable])
  {
    if (a6)
    {
      v30 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCSuntoryError" code:211 debugDescription:@"Attempting to process data while processor is unavailable"];
      v31 = v30;
      result = 0;
      *a6 = v30;
      return result;
    }

    return 0;
  }

  if (!self->_enabled)
  {
    return 0;
  }

  if (self->_maxFrames < a5 && self->_nextContiguousSampleIndex - self->_previousContiguousSampleIndex != a5)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      maxFrames = self->_maxFrames;
      *buf = 134218240;
      *&buf[4] = a5;
      *&buf[12] = 2048;
      *&buf[14] = maxFrames;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[AP] - Request to render %ld frames [more than expected max %ld frames]", buf, 0x16u);
    }
  }

  mSampleTime = self->_timestamp.mSampleTime;
  v14 = a5;
  v15 = mSampleTime / a5;
  v16 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v17 = [v16 vocalAttenuationLogInputAndOuputRMSValues];

  if (v17)
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_timestamp.mSampleTime;
      previousContiguousSampleIndex = self->_previousContiguousSampleIndex;
      nextContiguousSampleIndex = self->_nextContiguousSampleIndex;
      *buf = 134218752;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      v85 = 2048;
      v86 = nextContiguousSampleIndex;
      v87 = 2048;
      v88 = previousContiguousSampleIndex;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[AP][DEBUG] - INPUT  - sampleTime: %f - sampleIndex: %lld - nextContiguous: %lld - previousContiguous: %lld", buf, 0x2Au);
    }

    mNumberBuffers = a3->mNumberBuffers;
    if (mNumberBuffers)
    {
      v23 = 0;
      v24 = 0.0;
      do
      {
        mData = a3->mBuffers[v23].mData;
        if (mData)
        {
          v26 = a5 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = a5;
          do
          {
            v28 = *mData++;
            v24 = v24 + ((v28 * v28) / v14);
            --v27;
          }

          while (v27);
        }

        ++v23;
      }

      while (v23 != mNumberBuffers);
      v29 = v24;
    }

    else
    {
      v29 = 0.0;
    }

    v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = sqrt(v29);
      _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "[AP][DEBUG] - INPUT  - frame: %7.0f - rms: %15.10f", buf, 0x16u);
    }
  }

  if (a4 == -1 || self->_nextContiguousSampleIndex != a4 && self->_previousContiguousSampleIndex != a4)
  {
    v41 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = self->_timestamp.mSampleTime;
      v44 = self->_previousContiguousSampleIndex;
      v43 = self->_nextContiguousSampleIndex;
      *buf = 134218752;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      v85 = 2048;
      v86 = v43;
      v87 = 2048;
      v88 = v44;
      _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "[AP] - Resetting audio unit for time discontinuity [no audio] - sampleTime: %f - sampleIndex: %lld - nextContiguous: %lld - previousContiguous: %lld", buf, 0x2Au);
    }

    if (v17)
    {
      v45 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "[AP][DEBUG] - RESET  - frame: %7.0f", buf, 0xCu);
      }
    }

    self->_timestamp.mSampleTime = 0.0;
    v46 = a4 & ~(a4 >> 63);
    self->_previousContiguousSampleIndex = v46;
    self->_nextContiguousSampleIndex = v46 + a5;
    v47 = a3->mNumberBuffers;
    if (v47)
    {
      v48 = 0;
      v49 = 16;
      do
      {
        v50 = *(&a3->mNumberBuffers + v49);
        if (v50)
        {
          vDSP_vclr(v50, 1, a5);
          v47 = a3->mNumberBuffers;
        }

        ++v48;
        v49 += 16;
      }

      while (v48 < v47);
    }

    v51 = AudioUnitReset(self->_processingAU, 0, 0);
    if (!v51)
    {
      v57 = 0;
LABEL_82:
      v68 = v57;
      v69 = v68;
      if (a6 && v68)
      {
        *a6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCSuntoryError" code:213 underlyingError:v68 debugDescription:@"Audio unit reset failed"];
      }

      goto LABEL_94;
    }

    v52 = v51;
    v53 = MEMORY[0x1E696ABC0];
    v54 = *MEMORY[0x1E696A768];
    v55 = v51;
    v89[0] = *MEMORY[0x1E696A578];
    memset(buf, 0, 20);
    v56 = bswap32(v51);
    *&buf[1] = v56;
    if ((v56 & 0x80) != 0)
    {
      if (!__maskrune(v56, 0x40000uLL))
      {
        goto LABEL_80;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000) == 0)
    {
      goto LABEL_80;
    }

    v59 = v56 >> 8;
    if ((v56 & 0x8000) != 0)
    {
      v60 = __maskrune(v59, 0x40000uLL);
    }

    else
    {
      v60 = *(MEMORY[0x1E69E9830] + 4 * v59 + 60) & 0x40000;
    }

    if (v60)
    {
      if ((buf[3] & 0x80000000) != 0 ? __maskrune(buf[3], 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * buf[3] + 60) & 0x40000)
      {
        if ((buf[4] & 0x80000000) != 0 ? __maskrune(buf[4], 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * buf[4] + 60) & 0x40000)
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
LABEL_81:
          v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
          *buf = v65;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v89 count:1];
          v57 = [v53 errorWithDomain:v54 code:v55 userInfo:v66];
          v67 = v57;

          goto LABEL_82;
        }
      }
    }

LABEL_80:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v52);
    goto LABEL_81;
  }

  if (a3->mNumberBuffers)
  {
    v34 = 0;
    v35 = 8;
    do
    {
      *(&self->_ioBuffer->mNumberBuffers + v35) = *(&a3->mNumberBuffers + v35);
      ++v34;
      v35 += 16;
    }

    while (v34 < a3->mNumberBuffers);
  }

  v36 = AudioUnitRender(self->_processingAU, 0, &self->_timestamp, 0, a5, a3);
  if (!v36)
  {
    v58 = 0;
    goto LABEL_90;
  }

  v37 = v36;
  v83 = MEMORY[0x1E696ABC0];
  v38 = *MEMORY[0x1E696A768];
  v39 = v36;
  v89[0] = *MEMORY[0x1E696A578];
  memset(buf, 0, 20);
  *&buf[1] = bswap32(v36);
  v40 = MEMORY[0x1E69E9830];
  if ((buf[1] & 0x80) != 0)
  {
    if (!__maskrune(buf[1], 0x40000uLL))
    {
      goto LABEL_88;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * buf[1] + 60) & 0x40000) == 0)
  {
    goto LABEL_88;
  }

  if ((buf[2] & 0x80000000) != 0)
  {
    if (__maskrune(buf[2], 0x40000uLL))
    {
      goto LABEL_67;
    }

LABEL_88:
    __sprintf_chk(buf, 0, 0x14uLL, "%d", v37);
    goto LABEL_89;
  }

  if ((*(v40 + 4 * buf[2] + 60) & 0x40000) == 0)
  {
    goto LABEL_88;
  }

LABEL_67:
  if ((buf[3] & 0x80000000) != 0)
  {
    v62 = __maskrune(buf[3], 0x40000uLL);
  }

  else
  {
    v62 = *(v40 + 4 * buf[3] + 60) & 0x40000;
  }

  if (!v62)
  {
    goto LABEL_88;
  }

  if (!((buf[4] & 0x80000000) != 0 ? __maskrune(buf[4], 0x40000uLL) : *(v40 + 4 * buf[4] + 60) & 0x40000))
  {
    goto LABEL_88;
  }

  strcpy(&buf[5], "'");
  buf[0] = 39;
LABEL_89:
  v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
  *buf = v70;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v89 count:1];
  v58 = [v83 errorWithDomain:v38 code:v39 userInfo:v71];
  v72 = v58;

LABEL_90:
  v73 = v58;
  v69 = v73;
  if (a6 && v73)
  {
    *a6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCSuntoryError" code:210 underlyingError:v73 debugDescription:@"Data processing failure"];
  }

  self->_timestamp.mSampleTime = self->_timestamp.mSampleTime + a5;
  self->_previousContiguousSampleIndex = a4;
  self->_nextContiguousSampleIndex = a4 + a5;
LABEL_94:

  if (v17)
  {
    v74 = a3->mNumberBuffers;
    if (v74)
    {
      v75 = 0;
      v76 = 0.0;
      do
      {
        v77 = a3->mBuffers[v75].mData;
        if (v77)
        {
          v78 = a5 == 0;
        }

        else
        {
          v78 = 1;
        }

        if (!v78)
        {
          v79 = a5;
          do
          {
            v80 = *v77++;
            v76 = v76 + ((v80 * v80) / v14);
            --v79;
          }

          while (v79);
        }

        ++v75;
      }

      while (v75 != v74);
      v81 = v76;
    }

    else
    {
      v81 = 0.0;
    }

    v82 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = sqrt(v81);
      _os_log_impl(&dword_1C5C61000, v82, OS_LOG_TYPE_DEFAULT, "[AP][DEBUG] - OUTPUT - frame: %7.0f - rms: %15.10f", buf, 0x16u);
    }
  }

  return 1;
}

- (BOOL)isCompatibleWithAudioFormat:(AudioStreamBasicDescription *)a3 maxFrames:(unsigned int)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Format ID: %u - Sample Rate: %1.0fHz - Bytes/Packet: %u - Frames/Packet: %u - Bytes/Frame: %u - Channels/Frame: %u - Bits/Channel: %u", a3->mFormatID, *&a3->mSampleRate, a3->mBytesPerPacket, a3->mFramesPerPacket, a3->mBytesPerFrame, a3->mChannelsPerFrame, a3->mBitsPerChannel];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Format ID: %u - Sample Rate: %1.0fHz - Bytes/Packet: %u - Frames/Packet: %u - Bytes/Frame: %u - Channels/Frame: %u - Bits/Channel: %u", self->_audioFormat.mFormatID, *&self->_audioFormat.mSampleRate, self->_audioFormat.mBytesPerPacket, self->_audioFormat.mFramesPerPacket, self->_audioFormat.mBytesPerFrame, self->_audioFormat.mChannelsPerFrame, self->_audioFormat.mBitsPerChannel];
    maxFrames = self->_maxFrames;
    *buf = 138544386;
    v18 = self;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 1024;
    v24 = a4;
    v25 = 1024;
    v26 = maxFrames;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_INFO, "[AP] - %{public}@ - isCompatibleWithAudioFormat - format: %{public}@ vs %{public}@ - frames: %u vs %u", buf, 0x2Cu);
  }

  v11 = ~vaddvq_s32(vandq_s8(vceqq_s32(*&self->_audioFormat.mFormatID, *&a3->mFormatID), xmmword_1C60451E0)) & 0xF;
  return self->_audioFormat.mSampleRate == a3->mSampleRate && v11 == 0 && self->_audioFormat.mBytesPerFrame == a3->mBytesPerFrame && self->_audioFormat.mChannelsPerFrame == a3->mChannelsPerFrame && self->_audioFormat.mBitsPerChannel == a3->mBitsPerChannel && self->_maxFrames >= a4;
}

- (void)setLevel:(float)a3
{
  if ([(MPCVocalAttenuationProcessorImplementation *)self isAvailable])
  {
    v5 = fminf(fmaxf(self->_minLevel, a3), self->_maxLevel);
    if (v5 != self->_level)
    {
      self->_level = v5;

      [(MPCVocalAttenuationProcessorImplementation *)self _applyAttenuationLevelToAudioUnit];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(MPCVocalAttenuationProcessorImplementation *)self isAvailable]&& self->_enabled != v3)
  {
    self->_enabled = v3;
    v5 = 3;
    if (!v3)
    {
      v5 = 4;
    }

    self->_state = v5;

    [(MPCVocalAttenuationProcessorImplementation *)self _applyAttenuationLevelToAudioUnit];
  }
}

- (void)tearDownWithCompletion:(id)a3
{
  v5 = a3;
  if (![(MPCVocalAttenuationProcessorImplementation *)self isAvailable])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [(MPCVocalAttenuationProcessorImplementation *)self state];
    if (v9 >= 6)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v9];
    }

    else
    {
      v10 = off_1E8231890[v9];
    }
  }

  creationQueue = self->_creationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__MPCVocalAttenuationProcessorImplementation_tearDownWithCompletion___block_invoke;
  block[3] = &unk_1E8239170;
  block[4] = self;
  v12 = v5;
  v7 = v5;
  dispatch_async(creationQueue, block);
}

void __69__MPCVocalAttenuationProcessorImplementation_tearDownWithCompletion___block_invoke(uint64_t a1)
{
  AudioUnitUninitialize(*(*(a1 + 32) + 144));
  AudioComponentInstanceDispose(*(*(a1 + 32) + 144));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__MPCVocalAttenuationProcessorImplementation_tearDownWithCompletion___block_invoke_2;
  v3[3] = &unk_1E8239170;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)prepareWithModel:(id)a3 completion:(id)a4
{
  v8 = a3;
  v9 = a4;
  if ([(MPCVocalAttenuationProcessorImplementation *)self state])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [(MPCVocalAttenuationProcessorImplementation *)self state];
    if (v14 >= 6)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"undefined/%ld", v14];
    }

    else
    {
      v15 = off_1E8231890[v14];
    }
  }

  objc_storeStrong(&self->_model, a3);
  self->_state = 1;
  creationQueue = self->_creationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MPCVocalAttenuationProcessorImplementation_prepareWithModel_completion___block_invoke;
  block[3] = &unk_1E8239198;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(creationQueue, block);
}

void __74__MPCVocalAttenuationProcessorImplementation_prepareWithModel_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__MPCVocalAttenuationProcessorImplementation_prepareWithModel_completion___block_invoke_2;
  v3[3] = &unk_1E8231870;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _prepareWithModel:v2 completion:v3];
}

void __74__MPCVocalAttenuationProcessorImplementation_prepareWithModel_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__MPCVocalAttenuationProcessorImplementation_prepareWithModel_completion___block_invoke_3;
  v8[3] = &unk_1E8238C70;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (MPCVocalAttenuationProcessorImplementation)initWithMaxAttenuationLevel:(float)a3 audioFormat:(AudioStreamBasicDescription *)a4 maxFrames:(unsigned int)a5
{
  v15.receiver = self;
  v15.super_class = MPCVocalAttenuationProcessorImplementation;
  v8 = [(MPCVocalAttenuationProcessorImplementation *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a4->mSampleRate;
    v11 = *&a4->mBytesPerPacket;
    *(v8 + 16) = *&a4->mBitsPerChannel;
    *(v8 + 6) = v10;
    *(v8 + 7) = v11;
    *(v8 + 34) = a5;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 42) = 0;
    *(v8 + 43) = a3;
    *(v8 + 22) = 0;
    v12 = dispatch_queue_create("com.apple.MediaPlaybackCore.VAProcessorCreationQueue", 0);
    creationQueue = v9->_creationQueue;
    v9->_creationQueue = v12;
  }

  return v9;
}

@end