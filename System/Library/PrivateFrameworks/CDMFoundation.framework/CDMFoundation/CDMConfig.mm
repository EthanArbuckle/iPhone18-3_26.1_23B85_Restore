@interface CDMConfig
+ (id)defaultEnabledServiceGraph;
- (CDMConfig)initWithMaxConcurrentCount:(unsigned int)a3;
- (NSString)defaultLocaleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CDMConfig

- (NSString)defaultLocaleIdentifier
{
  v2 = +[CDMPlatformUtils normalizedAssistantLocaleIdentifier];
  if (!v2)
  {
    v2 = @"en_US";
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSOrderedSet *)self->_availableServiceGraphs copy];
    v6 = v4[1];
    v4[1] = v5;
  }

  return v4;
}

- (CDMConfig)initWithMaxConcurrentCount:(unsigned int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CDMConfig;
  v4 = [(CDMConfig *)&v12 init];
  if (v4)
  {
    if (!a3)
    {
      a3 = +[CDMUserDefaultsUtils readGraphRunnerMaxConcurrentCount];
      v5 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v14 = "[CDMConfig initWithMaxConcurrentCount:]";
        v15 = 1024;
        v16 = a3;
        _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s initWithDefaultMaxConcurrentCount=%d", buf, 0x12u);
      }
    }

    v4->_maxConcurrentCount = a3;
    v6 = MEMORY[0x1E695DFB8];
    v7 = [&unk_1F5819C88 copy];
    v8 = [v6 orderedSetWithArray:v7];
    availableServiceGraphs = v4->_availableServiceGraphs;
    v4->_availableServiceGraphs = v8;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)defaultEnabledServiceGraph
{
  v2 = [&unk_1F5819C88 copy];

  return v2;
}

@end