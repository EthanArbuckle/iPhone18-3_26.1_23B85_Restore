@interface CSSelectiveChannelAudioFileWriter
- (BOOL)addSamples:(const void *)samples numSamples:(int64_t)numSamples;
- (BOOL)endAudio;
- (CSSelectiveChannelAudioFileWriter)initWithURL:(id)l inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat channelBitset:(unint64_t)bitset;
- (void)dealloc;
@end

@implementation CSSelectiveChannelAudioFileWriter

- (BOOL)addSamples:(const void *)samples numSamples:(int64_t)numSamples
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = 1;
  if (numSamples >= 1 && self->isWriting)
  {
    numSamplesCopy = numSamples;
    v23[1] = v23;
    mBytesPerFrame = self->inASBD.mBytesPerFrame;
    mChannelsPerFrame = self->inASBD.mChannelsPerFrame;
    v24 = (v23 - ((24 * mChannelsPerFrame + 15) & 0x3FFFFFFFF0));
    v24->mNumberBuffers = mChannelsPerFrame;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23[0] = self;
    v8 = self->selectedChannelList;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = mBytesPerFrame * numSamplesCopy;
      v13 = *v27;
      mBuffers = v24->mBuffers;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = &mBuffers[v11];
          v17->mNumberChannels = 1;
          v17->mDataByteSize = v12;
          v17->mData = samples + [v16 unsignedIntegerValue] * v12;
          ++v11;
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v10);
    }

    v18 = ExtAudioFileWrite(*(v23[0] + 16), numSamplesCopy, v24);
    v4 = v18 == 0;
    if (v18)
    {
      v19 = v18;
      v20 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "[CSSelectiveChannelAudioFileWriter addSamples:numSamples:]";
        v32 = 2050;
        v33 = v19;
        _os_log_error_impl(&dword_1DDA4B000, v20, OS_LOG_TYPE_ERROR, "%s ::: Error writing to output wave file. : %{public}ld", buf, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)endAudio
{
  fFile = self->fFile;
  if (fFile)
  {
    ExtAudioFileDispose(fFile);
  }

  self->isWriting = 0;
  return 1;
}

- (void)dealloc
{
  [(CSSelectiveChannelAudioFileWriter *)self endAudio];
  v3.receiver = self;
  v3.super_class = CSSelectiveChannelAudioFileWriter;
  [(CSSelectiveChannelAudioFileWriter *)&v3 dealloc];
}

- (CSSelectiveChannelAudioFileWriter)initWithURL:(id)l inputFormat:(AudioStreamBasicDescription *)format outputFormat:(AudioStreamBasicDescription *)outputFormat channelBitset:(unint64_t)bitset
{
  v32 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v27.receiver = self;
  v27.super_class = CSSelectiveChannelAudioFileWriter;
  v11 = [(CSSelectiveChannelAudioFileWriter *)&v27 init];
  v12 = v11;
  if (v11)
  {
    v11->_numberOfChannels = format->mChannelsPerFrame;
    outputFormat->mSampleRate = format->mSampleRate;
    v13 = ExtAudioFileCreateWithURL(lCopy, 0x57415645u, outputFormat, 0, 1u, &v11->fFile);
    if (v13)
    {
      v14 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[CSSelectiveChannelAudioFileWriter initWithURL:inputFormat:outputFormat:channelBitset:]";
        *&buf[12] = 2114;
        *&buf[14] = lCopy;
        *&buf[22] = 1026;
        LODWORD(v29) = v13;
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s ::: Error creating output file %{public}@, err: %{public}d", buf, 0x1Cu);
      }
    }

    if (v12->fFile)
    {
      v15 = lCopy;
    }

    else
    {
      v15 = 0;
    }

    fileURL = v12->_fileURL;
    v12->_fileURL = v15;

    fFile = v12->fFile;
    if (fFile)
    {
      ExtAudioFileSetProperty(fFile, 0x63666D74u, 0x28u, format);
    }

    v12->isWriting = 1;
    v18 = *&format->mSampleRate;
    v19 = *&format->mBytesPerPacket;
    *&v12->inASBD.mBitsPerChannel = *&format->mBitsPerChannel;
    *&v12->inASBD.mBytesPerPacket = v19;
    *&v12->inASBD.mSampleRate = v18;
    v20 = *&outputFormat->mSampleRate;
    v21 = *&outputFormat->mBytesPerPacket;
    *&v12->outASBD.mBitsPerChannel = *&outputFormat->mBitsPerChannel;
    *&v12->outASBD.mSampleRate = v20;
    *&v12->outASBD.mBytesPerPacket = v21;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__14838;
    v30 = __Block_byref_object_dispose__14839;
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__CSSelectiveChannelAudioFileWriter_initWithURL_inputFormat_outputFormat_channelBitset___block_invoke;
    v26[3] = &unk_1E865C998;
    v26[4] = buf;
    [CSUtils iterateBitset:bitset block:v26];
    v22 = [*(*&buf[8] + 40) mutableCopy];
    selectedChannelList = v12->selectedChannelList;
    v12->selectedChannelList = v22;

    _Block_object_dispose(buf, 8);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

void __88__CSSelectiveChannelAudioFileWriter_initWithURL_inputFormat_outputFormat_channelBitset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

@end