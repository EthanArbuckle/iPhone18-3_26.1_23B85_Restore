@interface CSAudioFileReader
- (BOOL)prepareRecording:(id)a3;
- (BOOL)startRecording;
- (CSAudioFileReader)initWithURL:(id)a3;
- (CSAudioFileReaderDelegate)delegate;
- (void)_readAudioBufferAndFeed;
- (void)close;
- (void)dealloc;
- (void)stopRecording;
@end

@implementation CSAudioFileReader

- (CSAudioFileReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)close
{
  fFile = self->_fFile;
  if (fFile)
  {
    ExtAudioFileDispose(fFile);
  }
}

- (void)dealloc
{
  [(CSAudioFileReader *)self close];
  v3.receiver = self;
  v3.super_class = CSAudioFileReader;
  [(CSAudioFileReader *)&v3 dealloc];
}

- (void)stopRecording
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[CSAudioFileReader stopRecording]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Stopping audio file feed timer", buf, 0xCu);
  }

  dispatch_source_cancel(self->_audioFeedTimer);
  audioFeedTimer = self->_audioFeedTimer;
  self->_audioFeedTimer = 0;

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CSAudioFileReader_stopRecording__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
  ExtAudioFileSeek(self->_fFile, 0);
  v6 = *MEMORY[0x1E69E9840];
}

void __34__CSAudioFileReader_stopRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 80));
    [v4 audioFileReaderDidStopRecording:*(a1 + 32) forReason:0];
  }
}

- (void)_readAudioBufferAndFeed
{
  v21 = *MEMORY[0x1E69E9840];
  mSampleRate = self->_outASBD.mSampleRate;
  v5 = self->_bufferDuration * mSampleRate;
  LODWORD(mSampleRate) = self->_outASBD.mBytesPerFrame;
  LODWORD(v2) = self->_outASBD.mChannelsPerFrame;
  v6 = (v5 * *&mSampleRate * v2);
  v7 = [MEMORY[0x1E695DF88] dataWithLength:v6];
  *&ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = self->_outASBD.mChannelsPerFrame;
  ioData.mBuffers[0].mDataByteSize = v6;
  ioData.mBuffers[0].mData = [v7 bytes];
  ioNumberFrames = v6;
  v8 = ExtAudioFileRead(self->_fFile, &ioNumberFrames, &ioData);
  v9 = ioNumberFrames;
  if (v8 || !ioNumberFrames)
  {
    v10 = CSLogCategoryAudio;
    if (v8)
    {
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[CSAudioFileReader _readAudioBufferAndFeed]";
        v19 = 1024;
        v20 = v8;
        _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s ::: Error reading data from audio file : %d", buf, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[CSAudioFileReader _readAudioBufferAndFeed]";
        v19 = 1024;
        v20 = v9;
        _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Reach to EOF, chunkSize = %d", buf, 0x12u);
      }

      memset([v7 bytes], 1, v6);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 audioFileReaderBufferAvailable:self buffer:v7 atTime:mach_absolute_time()];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)startRecording
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    bufferDuration = self->_bufferDuration;
    mSampleRate = self->_outASBD.mSampleRate;
    mBytesPerFrame = self->_outASBD.mBytesPerFrame;
    mChannelsPerFrame = self->_outASBD.mChannelsPerFrame;
    *buf = 136316162;
    v18 = "[CSAudioFileReader startRecording]";
    v19 = 2048;
    v20 = bufferDuration;
    v21 = 2048;
    v22 = mSampleRate;
    v23 = 1024;
    v24 = mBytesPerFrame;
    v25 = 1024;
    v26 = mChannelsPerFrame;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting audio file feed timer, bufferDuration = %f sampleRate = %f, bytesPerFrame = %d, channelsPerFrame = %d", buf, 0x2Cu);
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  audioFeedTimer = self->_audioFeedTimer;
  self->_audioFeedTimer = v8;

  dispatch_source_set_timer(self->_audioFeedTimer, 0, (self->_bufferDuration * 1000000000.0), 0x5F5E100uLL);
  objc_initWeak(buf, self);
  v10 = self->_audioFeedTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __35__CSAudioFileReader_startRecording__block_invoke;
  handler[3] = &unk_1E865CA40;
  objc_copyWeak(&v16, buf);
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(self->_audioFeedTimer);
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__CSAudioFileReader_startRecording__block_invoke_2;
  v14[3] = &unk_1E865CB68;
  v14[4] = self;
  dispatch_async(queue, v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

void __35__CSAudioFileReader_startRecording__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _readAudioBufferAndFeed];
}

void __35__CSAudioFileReader_startRecording__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 80));
    [v4 audioFileReaderDidStartRecording:*(a1 + 32) successfully:1 error:0];
  }
}

- (BOOL)prepareRecording:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v19 = CSLogCategoryAudio;
    if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v41 = 136315138;
    v42 = "[CSAudioFileReader prepareRecording:]";
    v20 = "%s CSAudioFileReader requires prepare recording settings to feed audio";
    goto LABEL_18;
  }

  v6 = *MEMORY[0x1E69582B8];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69582B8]];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 objectForKeyedSubscript:v6];
    v10 = [v9 unsignedIntegerValue];

    if (v10 != 1819304813)
    {
      v19 = CSLogCategoryAudio;
      if (!os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v41 = 136315138;
      v42 = "[CSAudioFileReader prepareRecording:]";
      v20 = "%s CSAudioFileReader only support LinearPCM to feed";
LABEL_18:
      v33 = v19;
      v34 = 12;
LABEL_26:
      _os_log_error_impl(&dword_1DDA4B000, v33, OS_LOG_TYPE_ERROR, v20, &v41, v34);
      goto LABEL_22;
    }
  }

  v11 = *MEMORY[0x1E6958340];
  v12 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6958340]];
  if (!v12 || (v13 = v12, [v5 objectForKeyedSubscript:v11], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "floatValue"), v16 = v15, v14, v13, v16 == 0.0))
  {
    +[CSConfig inputRecordingSampleRate];
    self->_outASBD.mSampleRate = v21;
  }

  else
  {
    v17 = [v5 objectForKeyedSubscript:v11];
    [v17 floatValue];
    self->_outASBD.mSampleRate = v18;
  }

  self->_outASBD.mFormatID = 1819304813;
  v22 = *MEMORY[0x1E69582E0];
  v23 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69582E0]];
  if (v23 && (v24 = v23, [v5 objectForKeyedSubscript:v22], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "BOOLValue"), v25, v24, (v26 & 1) != 0))
  {
    v27 = 9;
  }

  else
  {
    v27 = 12;
  }

  self->_outASBD.mFormatFlags = v27;
  v28 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69582C0]];
  self->_outASBD.mBitsPerChannel = [v28 unsignedIntValue];

  v29 = self->_outASBD.mBitsPerChannel >> 3;
  self->_outASBD.mBytesPerPacket = v29;
  self->_outASBD.mFramesPerPacket = 1;
  self->_outASBD.mBytesPerFrame = v29;
  v30 = *MEMORY[0x1E6958308];
  v31 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6958308]];

  if (v31)
  {
    v32 = [v5 objectForKeyedSubscript:v30];
    self->_outASBD.mChannelsPerFrame = [v32 unsignedIntValue];
  }

  else
  {
    self->_outASBD.mChannelsPerFrame = 1;
  }

  v35 = ExtAudioFileSetProperty(self->_fFile, 0x63666D74u, 0x28u, &self->_outASBD);
  if (!v35)
  {
    v38 = 1;
    goto LABEL_23;
  }

  v36 = v35;
  v37 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
  {
    v41 = 136315394;
    v42 = "[CSAudioFileReader prepareRecording:]";
    v43 = 1024;
    v44 = v36;
    v20 = "%s Setting ExtAudioFileSetProperty failed : %d";
    v33 = v37;
    v34 = 18;
    goto LABEL_26;
  }

LABEL_22:
  v38 = 0;
LABEL_23:

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

- (CSAudioFileReader)initWithURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CSAudioFileReader;
  v5 = [(CSAudioFileReader *)&v14 init];
  if (v5 && (v6 = dispatch_queue_create("CSAudioFileReader Queue", 0), queue = v5->_queue, v5->_queue = v6, queue, (v8 = ExtAudioFileOpenURL(v4, &v5->_fFile)) != 0))
  {
    v9 = v8;
    v10 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "[CSAudioFileReader initWithURL:]";
      v17 = 2112;
      v18 = v4;
      v19 = 1024;
      v20 = v9;
      _os_log_error_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_ERROR, "%s ::: Error reading file %@, err: %d", buf, 0x1Cu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end