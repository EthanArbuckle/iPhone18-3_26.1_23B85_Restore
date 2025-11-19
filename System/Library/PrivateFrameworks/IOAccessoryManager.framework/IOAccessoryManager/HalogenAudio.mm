@interface HalogenAudio
- (BOOL)startAudioUnit;
- (BOOL)stopAudioUnit;
- (id)initAudioWithParameters:(id)a3 nInputChannels:(int)a4 nOutputChannels:(int)a5 sampleRate:(int)a6 bitDepth:(int)a7 inputFrameSizeInBytes:(int)a8 outputFrameSizeInBytes:(int)a9;
- (void)_deinitAudioInstance;
- (void)dealloc;
- (void)startAudioUnit;
- (void)stopAudioUnit;
@end

@implementation HalogenAudio

- (id)initAudioWithParameters:(id)a3 nInputChannels:(int)a4 nOutputChannels:(int)a5 sampleRate:(int)a6 bitDepth:(int)a7 inputFrameSizeInBytes:(int)a8 outputFrameSizeInBytes:(int)a9
{
  v18.receiver = self;
  v18.super_class = HalogenAudio;
  v15 = [(HalogenAudio *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_nInputChannels = a4;
    v15->_nOutputChannels = a5;
    v15->_sampleRate = a6;
    v15->_bitDepth = a7;
    v15->_inputFrameSizeInBytes = a8;
    v15->_outputFrameSizeInBytes = a9;
    if (a3)
    {
      [(HalogenAudio *)v15 setHalogenUnitDelegate:a3];
    }

    else
    {
      [HalogenAudio initAudioWithParameters:v15 nInputChannels:? nOutputChannels:? sampleRate:? bitDepth:? inputFrameSizeInBytes:? outputFrameSizeInBytes:?];
      return 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  [(HalogenAudio *)self _deinitAudioInstance];
  v3.receiver = self;
  v3.super_class = HalogenAudio;
  [(HalogenAudio *)&v3 dealloc];
}

- (void)_deinitAudioInstance
{
  audioComponentInst = self->_audioComponentInst;
  if (audioComponentInst)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenAudio:Uninitializing AudioUnit instance.", v4, 2u);
      audioComponentInst = self->_audioComponentInst;
    }

    AudioUnitUninitialize(audioComponentInst);
    AudioComponentInstanceDispose(self->_audioComponentInst);
    self->_audioComponentInst = 0;
  }
}

- (BOOL)startAudioUnit
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  bitDepth = self->_bitDepth;
  sampleRate = self->_sampleRate;
  nOutputChannels = self->_nOutputChannels;
  inputFrameSizeInBytes = self->_inputFrameSizeInBytes;
  outputFrameSizeInBytes = self->_outputFrameSizeInBytes;
  nInputChannels = self->_nInputChannels;
  LODWORD(v25) = bitDepth;
  v18 = nOutputChannels;
  v19 = bitDepth;
  v21 = inputFrameSizeInBytes;
  v22 = 1;
  v23 = inputFrameSizeInBytes;
  *v20 = sampleRate;
  v20[1] = 0x96C70636DLL;
  v16 = 1;
  v17 = outputFrameSizeInBytes;
  v15 = outputFrameSizeInBytes;
  *v14 = sampleRate;
  v14[1] = 0x96C70636DLL;
  *&inDesc.componentType = xmmword_25491C130;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    [(HalogenAudio *)&v28 startAudioUnit];
    return v28;
  }

  if (AudioComponentInstanceNew(Next, &self->_audioComponentInst) || (audioComponentInst = self->_audioComponentInst) == 0)
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  inData = 1;
  if (AudioUnitSetProperty(audioComponentInst, 0x7D3u, 1u, 1u, &inData, 4u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 0x7D3u, 2u, 0, &inData, 4u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 8u, 1u, 0, v14, 0x28u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  v11 = 0;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x33u, 2u, 1u, &v11, 4u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 8u, 2u, 1u, v20, 0x28u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  v26 = recordCallback;
  v27 = self;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x7D5u, 0, 1u, &v26, 0x10u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  v26 = playbackCallback;
  v27 = self;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x17u, 0, 0, &v26, 0x10u))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  if (AudioUnitInitialize(self->_audioComponentInst))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  if (AudioOutputUnitStart(self->_audioComponentInst))
  {
    [HalogenAudio startAudioUnit];
    return v28;
  }

  return 1;
}

- (BOOL)stopAudioUnit
{
  v2 = AudioOutputUnitStop(self->_audioComponentInst);
  if (v2)
  {
    [HalogenAudio stopAudioUnit];
  }

  return v2 == 0;
}

- (void)initAudioWithParameters:(void *)a1 nInputChannels:nOutputChannels:sampleRate:bitDepth:inputFrameSizeInBytes:outputFrameSizeInBytes:.cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenAudio:initAudioPath did not receive a valid halogenUnit.", v2, 2u);
  }
}

- (void)startAudioUnit
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenAudio:AudioComponentFindNext() failed to find kAudioUnitSubType_LDCMIO", v2, 2u);
  }

  *a1 = 0;
}

- (void)stopAudioUnit
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0(&dword_2548F1000, MEMORY[0x277D86220], v0, "HalogenAudio:AudioUnitStop() failed (status = 0x%x)", v1, v2, v3, v4, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end