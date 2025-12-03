@interface CSAudioTandemStream
- (BOOL)isStreaming;
- (CSAudioStream)primaryStream;
- (CSAudioTandemStream)initWithMasterAudioStream:(id)stream name:(id)name;
- (void)attachToPrimaryStreamWithConfig:(id)config completion:(id)completion;
- (void)prepareAudioStreamWithRequest:(id)request completion:(id)completion;
- (void)startAudioStreamWithOption:(id)option completion:(id)completion;
- (void)stopAudioStreamWithOption:(id)option completion:(id)completion;
@end

@implementation CSAudioTandemStream

- (CSAudioStream)primaryStream
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryStream);

  return WeakRetained;
}

- (BOOL)isStreaming
{
  primaryStream = [(CSAudioTandemStream *)self primaryStream];
  isStreaming = [primaryStream isStreaming];

  return isStreaming;
}

- (void)stopAudioStreamWithOption:(id)option completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  __assert_rtn("[CSAudioTandemStream stopAudioStreamWithOption:completion:]", "CSAudioTandemStream.m", 65, "NO");
}

- (void)startAudioStreamWithOption:(id)option completion:(id)completion
{
  optionCopy = option;
  completionCopy = completion;
  __assert_rtn("[CSAudioTandemStream startAudioStreamWithOption:completion:]", "CSAudioTandemStream.m", 58, "NO");
}

- (void)prepareAudioStreamWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  __assert_rtn("[CSAudioTandemStream prepareAudioStreamWithRequest:completion:]", "CSAudioTandemStream.m", 51, "NO");
}

- (void)attachToPrimaryStreamWithConfig:(id)config completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  primaryStream = [(CSAudioTandemStream *)self primaryStream];

  if (!primaryStream)
  {
    v12 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioTandemStream attachToPrimaryStreamWithConfig:completion:]";
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s primaryStream already torn down", &v15, 0xCu);
      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_6;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:963 userInfo:0];
    completionCopy[2](completionCopy, 0, v13);

    goto LABEL_6;
  }

  primaryStream2 = [(CSAudioTandemStream *)self primaryStream];
  streamProvider = [primaryStream2 streamProvider];
  primaryStream3 = [(CSAudioTandemStream *)self primaryStream];
  [streamProvider attachTandemStream:self withConfig:configCopy toPrimaryStream:primaryStream3 completion:completionCopy];

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
}

- (CSAudioTandemStream)initWithMasterAudioStream:(id)stream name:(id)name
{
  selfCopy = stream;
  if (stream)
  {
    nameCopy = name;
    v7 = selfCopy;
    [(CSAudioTandemStream *)self setPrimaryStream:v7];
    streamProvider = [(CSAudioStream *)v7 streamProvider];
    v9 = [CSAudioStreamRequest alloc];
    streamRequest = [(CSAudioStream *)v7 streamRequest];

    v11 = [(CSAudioStreamRequest *)v9 initTandemWithRequest:streamRequest];
    v12 = [(CSAudioStream *)self initWithAudioStreamProvider:streamProvider streamName:nameCopy streamRequest:v11];

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
}

@end