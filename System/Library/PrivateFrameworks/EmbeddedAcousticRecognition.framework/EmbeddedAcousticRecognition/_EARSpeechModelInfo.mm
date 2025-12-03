@interface _EARSpeechModelInfo
+ (void)initialize;
- (NSSet)samplingRates;
- (NSSet)tasks;
- (NSString)acousticModelVersion;
- (NSString)acousticProfileVersion;
- (NSString)language;
- (NSString)phoneSetVersion;
- (NSString)version;
- (_EARSpeechModelInfo)initWithConfig:(id)config;
- (id).cxx_construct;
- (id)_initWithSpeechModelInfo:(const void *)info;
@end

@implementation _EARSpeechModelInfo

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 8) = 0u;
  *(self + 7) = self + 64;
  *(self + 11) = 0;
  *(self + 24) = 0u;
  *(self + 9) = 0;
  *(self + 10) = self + 88;
  *(self + 14) = 0;
  *(self + 40) = 0u;
  *(self + 12) = 0;
  *(self + 13) = self + 112;
  *(self + 27) = 0;
  *(self + 15) = 0;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 24) = 0;
  *(self + 26) = self + 216;
  *(self + 30) = 0;
  *(self + 28) = 0;
  *(self + 29) = self + 240;
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 31) = 0;
  *(self + 32) = self + 264;
  return self;
}

- (NSSet)tasks
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:self[2]._speechModelInfo.version.__rep_.__l.__size_];
  isa = self[2].super.isa;
  p_speechModelInfo = &self[2]._speechModelInfo;
  if (isa != &self[2]._speechModelInfo)
  {
    do
    {
      p_var0 = &isa->_speechModelInfo.var0;
      if (isa[1]._speechModelInfo.version.__rep_.__s.__data_[7] < 0)
      {
        p_var0 = *p_var0;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_var0];
      [v3 addObject:v7];

      data = isa->_speechModelInfo.version.__rep_.__l.__data_;
      if (data)
      {
        do
        {
          size = data;
          data = *data;
        }

        while (data);
      }

      else
      {
        do
        {
          size = isa->_speechModelInfo.version.__rep_.__l.__size_;
          v10 = *size == isa;
          isa = size;
        }

        while (!v10);
      }

      isa = size;
    }

    while (size != p_speechModelInfo);
  }

  return v3;
}

- (NSString)version
{
  p_speechModelInfo = &self->_speechModelInfo;
  if (*(&self->_speechModelInfo.version.__rep_.__l + 23) < 0)
  {
    p_speechModelInfo = p_speechModelInfo->version.__rep_.__l.__data_;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:p_speechModelInfo];
}

- (NSSet)samplingRates
{
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:*&self[1]._speechModelInfo.var0];
  size = self[1]._speechModelInfo.version.__rep_.__l.__size_;
  v5 = &self[1]._speechModelInfo.version.__rep_.__s.__data_[16];
  if (size != &self[1]._speechModelInfo.version.__rep_.__l + 1)
  {
    do
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*(size + 28)];
      [v3 addObject:v6];

      v7 = *(size + 8);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(size + 16);
          v9 = *v8 == size;
          size = v8;
        }

        while (!v9);
      }

      size = v8;
    }

    while (v8 != v5);
  }

  return v3;
}

- (id)_initWithSpeechModelInfo:(const void *)info
{
  v7.receiver = self;
  v7.super_class = _EARSpeechModelInfo;
  v4 = [(_EARSpeechModelInfo *)&v7 init];
  v5 = v4;
  if (v4)
  {
    quasar::SpeechModelInfo::operator=(&v4->_speechModelInfo, info);
  }

  return v5;
}

- (_EARSpeechModelInfo)initWithConfig:(id)config
{
  configCopy = config;
  v12.receiver = self;
  v12.super_class = _EARSpeechModelInfo;
  v5 = [(_EARSpeechModelInfo *)&v12 init];
  if (v5)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:configCopy];

    if (v7)
    {
      if (configCopy)
      {
        [configCopy ear_toString];
      }

      quasar::SpeechRecognizer::GetSpeechModelInfo();
    }

    v9 = EARLogger::QuasarOSLogger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_EARSpeechModelInfo initWithConfig:];
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)acousticModelVersion
{
  p_var0 = &self->_speechModelInfo.var0;
  if (self[1]._speechModelInfo.version.__rep_.__s.__data_[7] < 0)
  {
    p_var0 = *p_var0;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:p_var0];
}

- (NSString)language
{
  p_speechModelInfo = &self[3]._speechModelInfo;
  if (*(&self[3]._speechModelInfo.version.__rep_.__l + 23) < 0)
  {
    p_speechModelInfo = p_speechModelInfo->__data_;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:p_speechModelInfo];
}

- (NSString)phoneSetVersion
{
  p_var0 = &self[3]._speechModelInfo.var0;
  if (self[4]._speechModelInfo.version.__rep_.__s.__data_[7] < 0)
  {
    p_var0 = *p_var0;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:p_var0];
}

- (NSString)acousticProfileVersion
{
  p_size = &self[4]._speechModelInfo.version.__rep_.__l.__size_;
  if (*(&self[4]._speechModelInfo.var1 + 3) < 0)
  {
    p_size = *p_size;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:p_size];
}

@end