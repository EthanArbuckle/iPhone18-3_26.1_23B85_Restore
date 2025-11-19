@interface CSAudioStreamHolding
- (CSAudioStreamHolding)initWithName:(id)a3 clientIdentity:(unint64_t)a4;
- (void)dealloc;
@end

@implementation CSAudioStreamHolding

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAudio;
  if (os_log_type_enabled(CSLogCategoryAudio, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSAudioStreamHolding *)self name];
    *buf = 136315394;
    v9 = "[CSAudioStreamHolding dealloc]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Dealloc audioStreamHolding : %{public}@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CSAudioStreamHolding;
  [(CSAudioStreamHolding *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (CSAudioStreamHolding)initWithName:(id)a3 clientIdentity:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CSAudioStreamHolding;
  v8 = [(CSAudioStreamHolding *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_clientIdentity = a4;
  }

  return v9;
}

@end