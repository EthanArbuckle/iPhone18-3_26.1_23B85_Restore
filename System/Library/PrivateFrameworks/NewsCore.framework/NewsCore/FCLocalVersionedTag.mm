@interface FCLocalVersionedTag
- (FCLocalVersionedTag)init;
- (FCLocalVersionedTag)initWithDictionary:(id)dictionary;
@end

@implementation FCLocalVersionedTag

- (FCLocalVersionedTag)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCLocalVersionedTag init]";
    v10 = 2080;
    v11 = "FCLocalVersionedTag.m";
    v12 = 1024;
    v13 = 21;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCLocalVersionedTag init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCLocalVersionedTag)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FCLocalVersionedTag;
  v5 = [(FCLocalVersionedTag *)&v13 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"identifier", 0);
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"minNewsVersion", 0);
    v9 = v8;
    if (v8)
    {
      v8 = [FCRestrictions integerRepresentationOfShortVersionString:v8];
    }

    v5->_minVersion = v8;
    v10 = FCAppConfigurationStringValue(dictionaryCopy, @"maxNewsVersion", 0);
    if (v10)
    {
      v11 = [FCRestrictions integerRepresentationOfShortVersionString:v10];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v5->_maxVersion = v11;
  }

  return v5;
}

@end