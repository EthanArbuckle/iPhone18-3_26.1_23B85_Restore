@interface VCPSongDetector
- (VCPSongDetector)init;
- (id)results;
- (int)processAudioSamples:(AudioBufferList *)samples timestamp:(AudioTimeStamp *)timestamp;
- (int)setupWithSample:(opaqueCMSampleBuffer *)sample andSampleBatchSize:(int)size;
@end

@implementation VCPSongDetector

- (VCPSongDetector)init
{
  v9.receiver = self;
  v9.super_class = VCPSongDetector;
  v2 = [(VCPSongDetector *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 2) = 0;
    *(v2 + 6) = 1182400512;
    v4 = MEMORY[0x1E6960C70];
    v5 = *MEMORY[0x1E6960C70];
    *(v2 + 40) = *MEMORY[0x1E6960C70];
    v6 = *(v4 + 16);
    *(v2 + 7) = v6;
    *(v2 + 4) = v5;
    *(v2 + 10) = v6;
    v7 = v2;
  }

  return v3;
}

- (int)setupWithSample:(opaqueCMSampleBuffer *)sample andSampleBatchSize:(int)size
{
  v4 = *&size;
  FormatDescription = CMSampleBufferGetFormatDescription(sample);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
  if (!StreamBasicDescription)
  {
    return -50;
  }

  mSampleRate = StreamBasicDescription->mSampleRate;
  self->_sampleRate = mSampleRate;
  v9 = [objc_alloc(MEMORY[0x1E6958418]) initWithCommonFormat:1 sampleRate:1 channels:1 interleaved:self->_sampleRate];
  v10 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v9 frameCapacity:v4];
  pcmBuffer = self->_pcmBuffer;
  self->_pcmBuffer = v10;

  v12 = self->_pcmBuffer;
  if (v12)
  {
    [(AVAudioPCMBuffer *)v12 setFrameLength:v4];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v13 = getSHMutableSignatureClass(void)::softClass;
    v23 = getSHMutableSignatureClass(void)::softClass;
    if (!getSHMutableSignatureClass(void)::softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___ZL26getSHMutableSignatureClassv_block_invoke;
      v19[3] = &unk_1E834C0F0;
      v19[4] = &v20;
      ___ZL26getSHMutableSignatureClassv_block_invoke(v19);
      v13 = v21[3];
    }

    v14 = v13;
    _Block_object_dispose(&v20, 8);
    v15 = objc_alloc_init(v13);
    signature = self->_signature;
    self->_signature = v15;

    if (self->_signature)
    {
      v17 = 0;
    }

    else
    {
      v17 = -18;
    }
  }

  else
  {
    v17 = -18;
  }

  return v17;
}

- (int)processAudioSamples:(AudioBufferList *)samples timestamp:(AudioTimeStamp *)timestamp
{
  v19 = *MEMORY[0x1E69E9840];
  if ((self->_startTime.flags & 1) == 0)
  {
    p_sampleRate = &self->_sampleRate;
    CMTimeMake(&v18, 0, self->_sampleRate);
    self->_startTime = v18;
    CMTimeMake(&v18, 0, *p_sampleRate);
    self->_endTime = v18;
  }

  if ((self->_sampleRate * 11.0) < self->_framePosition)
  {
    return 0;
  }

  mData = samples->mBuffers[0].mData;
  mDataByteSize = samples->mBuffers[0].mDataByteSize;
  if (mDataByteSize != 4 * [(AVAudioPCMBuffer *)self->_pcmBuffer frameLength:samples])
  {
    return -50;
  }

  memcpy(*([(AVAudioPCMBuffer *)self->_pcmBuffer mutableAudioBufferList]+ 16), mData, 4 * [(AVAudioPCMBuffer *)self->_pcmBuffer frameLength]);
  signature = self->_signature;
  pcmBuffer = self->_pcmBuffer;
  v17 = 0;
  v12 = [(SHMutableSignature *)signature appendBuffer:pcmBuffer atTime:0 error:&v17];
  v13 = v17;
  if (v12)
  {
    v14 = self->_framePosition + [(AVAudioPCMBuffer *)self->_pcmBuffer frameLength];
    self->_framePosition = v14;
    CMTimeMake(&v18, v14, self->_sampleRate);
    v7 = 0;
    self->_endTime = v18;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 description];
      LODWORD(v18.value) = 138412290;
      *(&v18.value + 4) = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "song analysis failed %@", &v18, 0xCu);
    }

    v7 = -18;
  }

  return v7;
}

- (id)results
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (self->_signature)
  {
    v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v3 encodeObject:self->_signature forKey:@"songSignature"];
    encodedData = [v3 encodedData];

    if (encodedData)
    {
      v19 = @"SongResults";
      v16[0] = @"start";
      startTime = self->_startTime;
      v5 = CMTimeCopyAsDictionary(&startTime, 0);
      v17[0] = v5;
      v16[1] = @"duration";
      startTime = self->_endTime;
      v6 = CMTimeCopyAsDictionary(&startTime, 0);
      v17[1] = v6;
      v16[2] = @"attributes";
      v14 = @"songSignature";
      encodedData2 = [v3 encodedData];
      v15 = encodedData2;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v17[2] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
      v18 = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      v20[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:

  return v11;
}

@end