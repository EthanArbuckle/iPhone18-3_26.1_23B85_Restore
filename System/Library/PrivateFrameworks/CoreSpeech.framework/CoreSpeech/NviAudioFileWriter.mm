@interface NviAudioFileWriter
- (NviAudioFileWriter)initWithURL:(id)l inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat;
- (void)addSamples:(const void *)samples numSamples:(int64_t)numSamples;
- (void)dealloc;
- (void)endAudio;
@end

@implementation NviAudioFileWriter

- (void)addSamples:(const void *)samples numSamples:(int64_t)numSamples
{
  v17 = *MEMORY[0x277D85DE8];
  if (numSamples >= 1)
  {
    v4 = &buf[-((24 * self->inASBD.mChannelsPerFrame + 15) & 0x3FFFFFFFF0)];
    mChannelsPerFrame = self->inASBD.mChannelsPerFrame;
    v4->mNumberBuffers = mChannelsPerFrame;
    if (mChannelsPerFrame)
    {
      v6 = 0;
      v7 = self->inASBD.mBytesPerFrame * numSamples;
      p_mData = &v4->mBuffers[0].mData;
      do
      {
        *(p_mData - 2) = 1;
        *(p_mData - 1) = v7;
        *p_mData = samples + v6;
        p_mData += 2;
        v6 += v7;
        --mChannelsPerFrame;
      }

      while (mChannelsPerFrame);
    }

    v9 = ExtAudioFileWrite(self->fFile, numSamples, v4);
    if (v9)
    {
      v10 = v9;
      v11 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = "[NviAudioFileWriter addSamples:numSamples:]";
        v15 = 2050;
        v16 = v10;
        _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s ::: Error writing to output wave file. : %{public}ld", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)endAudio
{
  fFile = self->fFile;
  if (fFile)
  {
    ExtAudioFileDispose(fFile);
  }
}

- (void)dealloc
{
  [(NviAudioFileWriter *)self endAudio];
  v3.receiver = self;
  v3.super_class = NviAudioFileWriter;
  [(NviAudioFileWriter *)&v3 dealloc];
}

- (NviAudioFileWriter)initWithURL:(id)l inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v22.receiver = self;
  v22.super_class = NviAudioFileWriter;
  v10 = [(NviAudioFileWriter *)&v22 init];
  v11 = v10;
  if (v10)
  {
    outputFormat->mSampleRate = format->mSampleRate;
    v12 = ExtAudioFileCreateWithURL(lCopy, 0x57415645u, outputFormat, 0, 1u, &v10->fFile);
    if (v12)
    {
      v13 = v12;
      v14 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "[NviAudioFileWriter initWithURL:inputFormat:outputFormat:]";
        v25 = 2114;
        v26 = lCopy;
        v27 = 1026;
        v28 = v13;
        _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s ::: Error creating output file %{public}@, err: %{public}d", buf, 0x1Cu);
      }
    }

    if (v11->fFile)
    {
      objc_storeStrong(&v11->_fileURL, l);
      fFile = v11->fFile;
    }

    else
    {
      fFile = 0;
    }

    ExtAudioFileSetProperty(fFile, 0x63666D74u, 0x28u, format);
    v16 = *&format->mBitsPerChannel;
    v17 = *&format->mBytesPerPacket;
    *&v11->inASBD.mSampleRate = *&format->mSampleRate;
    *&v11->inASBD.mBytesPerPacket = v17;
    *&v11->inASBD.mBitsPerChannel = v16;
    v19 = *&outputFormat->mSampleRate;
    v18 = *&outputFormat->mBytesPerPacket;
    *&v11->outASBD.mBitsPerChannel = *&outputFormat->mBitsPerChannel;
    *&v11->outASBD.mSampleRate = v19;
    *&v11->outASBD.mBytesPerPacket = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v11;
}

@end