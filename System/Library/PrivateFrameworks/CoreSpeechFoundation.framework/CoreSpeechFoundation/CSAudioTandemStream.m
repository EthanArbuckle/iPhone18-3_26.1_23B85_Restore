@interface CSAudioTandemStream
- (BOOL)isStreaming;
- (CSAudioStream)primaryStream;
- (CSAudioTandemStream)initWithMasterAudioStream:(id)a3 name:(id)a4;
- (void)attachToPrimaryStreamWithConfig:(id)a3 completion:(id)a4;
- (void)prepareAudioStreamWithRequest:(id)a3 completion:(id)a4;
- (void)startAudioStreamWithOption:(id)a3 completion:(id)a4;
- (void)stopAudioStreamWithOption:(id)a3 completion:(id)a4;
@end

@implementation CSAudioTandemStream

- (CSAudioStream)primaryStream
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryStream);

  return WeakRetained;
}

- (BOOL)isStreaming
{
  v2 = [(CSAudioTandemStream *)self primaryStream];
  v3 = [v2 isStreaming];

  return v3;
}

- (void)stopAudioStreamWithOption:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CSAudioTandemStream stopAudioStreamWithOption:completion:]", "CSAudioTandemStream.m", 65, "NO");
}

- (void)startAudioStreamWithOption:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CSAudioTandemStream startAudioStreamWithOption:completion:]", "CSAudioTandemStream.m", 58, "NO");
}

- (void)prepareAudioStreamWithRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  __assert_rtn("[CSAudioTandemStream prepareAudioStreamWithRequest:completion:]", "CSAudioTandemStream.m", 51, "NO");
}

- (void)attachToPrimaryStreamWithConfig:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CSAudioTandemStream *)self primaryStream];

  if (!v8)
  {
    v12 = CSLogCategoryAudio;
    if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[CSAudioTandemStream attachToPrimaryStreamWithConfig:completion:]";
      _os_log_error_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_ERROR, "%s primaryStream already torn down", &v15, 0xCu);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!v7)
    {
      goto LABEL_6;
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.corespeech" code:963 userInfo:0];
    v7[2](v7, 0, v13);

    goto LABEL_6;
  }

  v9 = [(CSAudioTandemStream *)self primaryStream];
  v10 = [v9 streamProvider];
  v11 = [(CSAudioTandemStream *)self primaryStream];
  [v10 attachTandemStream:self withConfig:v6 toPrimaryStream:v11 completion:v7];

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
}

- (CSAudioTandemStream)initWithMasterAudioStream:(id)a3 name:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v6 = a4;
    v7 = v4;
    [(CSAudioTandemStream *)self setPrimaryStream:v7];
    v8 = [(CSAudioStream *)v7 streamProvider];
    v9 = [CSAudioStreamRequest alloc];
    v10 = [(CSAudioStream *)v7 streamRequest];

    v11 = [(CSAudioStreamRequest *)v9 initTandemWithRequest:v10];
    v12 = [(CSAudioStream *)self initWithAudioStreamProvider:v8 streamName:v6 streamRequest:v11];

    self = v12;
    v4 = self;
  }

  return v4;
}

@end