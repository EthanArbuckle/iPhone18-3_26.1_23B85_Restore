@interface CSSelectiveChannelAudioFileWriter
- (BOOL)addSamples:(const void *)a3 numSamples:(int64_t)a4;
- (BOOL)endAudio;
- (CSSelectiveChannelAudioFileWriter)initWithURL:(id)a3 inputFormat:(AudioStreamBasicDescription *)a4 outputFormat:(AudioStreamBasicDescription *)a5 channelBitset:(unint64_t)a6;
- (void)dealloc;
@end

@implementation CSSelectiveChannelAudioFileWriter

- (BOOL)addSamples:(const void *)a3 numSamples:(int64_t)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = 1;
  if (a4 >= 1 && self->isWriting)
  {
    v25 = a4;
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
      v12 = mBytesPerFrame * v25;
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
          v17->mData = a3 + [v16 unsignedIntegerValue] * v12;
          ++v11;
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v10);
    }

    v18 = ExtAudioFileWrite(*(v23[0] + 16), v25, v24);
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

- (CSSelectiveChannelAudioFileWriter)initWithURL:(id)a3 inputFormat:(AudioStreamBasicDescription *)a4 outputFormat:(AudioStreamBasicDescription *)a5 channelBitset:(unint64_t)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v27.receiver = self;
  v27.super_class = CSSelectiveChannelAudioFileWriter;
  v11 = [(CSSelectiveChannelAudioFileWriter *)&v27 init];
  v12 = v11;
  if (v11)
  {
    v11->_numberOfChannels = a4->mChannelsPerFrame;
    a5->mSampleRate = a4->mSampleRate;
    v13 = ExtAudioFileCreateWithURL(v10, 0x57415645u, a5, 0, 1u, &v11->fFile);
    if (v13)
    {
      v14 = CSLogCategoryAudio;
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[CSSelectiveChannelAudioFileWriter initWithURL:inputFormat:outputFormat:channelBitset:]";
        *&buf[12] = 2114;
        *&buf[14] = v10;
        *&buf[22] = 1026;
        LODWORD(v29) = v13;
        _os_log_error_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_ERROR, "%s ::: Error creating output file %{public}@, err: %{public}d", buf, 0x1Cu);
      }
    }

    if (v12->fFile)
    {
      v15 = v10;
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
      ExtAudioFileSetProperty(fFile, 0x63666D74u, 0x28u, a4);
    }

    v12->isWriting = 1;
    v18 = *&a4->mSampleRate;
    v19 = *&a4->mBytesPerPacket;
    *&v12->inASBD.mBitsPerChannel = *&a4->mBitsPerChannel;
    *&v12->inASBD.mBytesPerPacket = v19;
    *&v12->inASBD.mSampleRate = v18;
    v20 = *&a5->mSampleRate;
    v21 = *&a5->mBytesPerPacket;
    *&v12->outASBD.mBitsPerChannel = *&a5->mBitsPerChannel;
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
    [CSUtils iterateBitset:a6 block:v26];
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