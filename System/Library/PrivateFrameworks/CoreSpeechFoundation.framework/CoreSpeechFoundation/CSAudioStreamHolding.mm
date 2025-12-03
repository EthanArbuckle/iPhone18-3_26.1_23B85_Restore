@interface CSAudioStreamHolding
- (CSAudioStreamHolding)initWithName:(id)name clientIdentity:(unint64_t)identity;
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
    name = [(CSAudioStreamHolding *)self name];
    *buf = 136315394;
    v9 = "[CSAudioStreamHolding dealloc]";
    v10 = 2114;
    v11 = name;
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Dealloc audioStreamHolding : %{public}@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CSAudioStreamHolding;
  [(CSAudioStreamHolding *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (CSAudioStreamHolding)initWithName:(id)name clientIdentity:(unint64_t)identity
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = CSAudioStreamHolding;
  v8 = [(CSAudioStreamHolding *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_clientIdentity = identity;
  }

  return v9;
}

@end