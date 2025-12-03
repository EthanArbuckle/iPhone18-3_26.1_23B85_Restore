@interface CSKeywordAnalyzerNDEAPI
- (CSKeywordAnalyzerNDEAPI)initWithBlob:(id)blob;
- (CSKeywordAnalyzerNDEAPIScoreDelegate)delegate;
- (id)checkForTriggerWithBytes:(const signed __int16 *)bytes withNumberOfSamples:(int64_t)samples;
- (id)processAudioChunk:(id)chunk;
- (void)dealloc;
@end

@implementation CSKeywordAnalyzerNDEAPI

- (void)dealloc
{
  if (self->_ndeObject)
  {
    v3 = +[CSNDEObjectFactory sharedInstance];
    [v3 destoryNDEObject:self->_ndeObject];

    self->_ndeObject = 0;
  }

  v4.receiver = self;
  v4.super_class = CSKeywordAnalyzerNDEAPI;
  [(CSKeywordAnalyzerNDEAPI *)&v4 dealloc];
}

- (CSKeywordAnalyzerNDEAPIScoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)processAudioChunk:(id)chunk
{
  chunkCopy = chunk;
  numSamples = [chunkCopy numSamples];
  if (+[CSConfig inputRecordingIsFloat])
  {
    v6 = [chunkCopy dataForChannel:self->_activeChannel];

    v7 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:v6];
    chunkCopy = v6;
  }

  else
  {
    v7 = [chunkCopy dataForChannel:self->_activeChannel];
  }

  v8 = -[CSKeywordAnalyzerNDEAPI checkForTriggerWithBytes:withNumberOfSamples:](self, "checkForTriggerWithBytes:withNumberOfSamples:", [v7 bytes], numSamples);

  return v8;
}

- (id)checkForTriggerWithBytes:(const signed __int16 *)bytes withNumberOfSamples:(int64_t)samples
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E695DF88]);
  v6 = [v5 initWithLength:*MEMORY[0x1E69E1498]];
  ndeObject = self->_ndeObject;
  [v6 bytes];
  nde_process_v2();
  v8 = [[CSKeywordAnalyzerNDEAPIResult alloc] initWithBlob:v6 isEarlyDetected:0];
  lastResult = self->_lastResult;
  self->_lastResult = v8;

  v10 = *MEMORY[0x1E69E9840];

  return 0;
}

- (CSKeywordAnalyzerNDEAPI)initWithBlob:(id)blob
{
  v27 = *MEMORY[0x1E69E9840];
  blobCopy = blob;
  v20.receiver = self;
  v20.super_class = CSKeywordAnalyzerNDEAPI;
  v5 = [(CSKeywordAnalyzerNDEAPI *)&v20 init];
  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (blobCopy)
    {
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v7 = blobCopy;
        v8 = v6;
        bytes = [blobCopy bytes];
        v10 = [blobCopy length];
        *buf = 136315650;
        v22 = "[CSKeywordAnalyzerNDEAPI initWithBlob:]";
        v23 = 2048;
        v24 = bytes;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s Initializaing NDEAPI with blob : %p(%dbytes)", buf, 0x1Cu);
      }

      v11 = objc_alloc(MEMORY[0x1E695DF88]);
      v12 = [v11 initWithLength:*MEMORY[0x1E69E1490]];
      currentBlob = v5->_currentBlob;
      v5->_currentBlob = v12;

      memcpy(-[NSMutableData bytes](v5->_currentBlob, "bytes"), [blobCopy bytes], objc_msgSend(blobCopy, "length"));
      nde_enable_multiinstance();
      v14 = +[CSNDEObjectFactory sharedInstance];
      v5->_ndeObject = [v14 createNDEObject:v5->_currentBlob];

      if (v5->_ndeObject)
      {
        goto LABEL_6;
      }

      v6 = CSLogContextFacilityCoreSpeech;
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        v16 = 0;
        goto LABEL_13;
      }

      *buf = 136315138;
      v22 = "[CSKeywordAnalyzerNDEAPI initWithBlob:]";
      v17 = "%s Failed to initialize CSKeywordAnalyerNDEAPI";
    }

    else
    {
      if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      v22 = "[CSKeywordAnalyzerNDEAPI initWithBlob:]";
      v17 = "%s CSKeywordAnalyerNDEAPI couldn't initialized since blob is nil";
    }

    _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    goto LABEL_12;
  }

LABEL_6:
  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[CSKeywordAnalyzerNDEAPI initWithBlob:]";
    _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s CSKeywordAnalyerNDEAPI created", buf, 0xCu);
  }

  v16 = v5;
LABEL_13:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

@end