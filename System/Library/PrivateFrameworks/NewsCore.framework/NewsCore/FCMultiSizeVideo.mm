@interface FCMultiSizeVideo
- (BOOL)isEqual:(id)equal;
- (FCMultiSizeVideo)init;
- (FCMultiSizeVideo)initWithConfigDictionary:(id)dictionary;
- (FCMultiSizeVideo)initWithSmallVideoURL:(id)l largeVideoURL:(id)rL;
- (unint64_t)hash;
@end

@implementation FCMultiSizeVideo

- (FCMultiSizeVideo)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMultiSizeVideo init]";
    v10 = 2080;
    v11 = "FCMultiSizeVideo.m";
    v12 = 1024;
    v13 = 16;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMultiSizeVideo init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMultiSizeVideo)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = FCAppConfigurationURLValue(dictionaryCopy, @"videoSmall");
  v6 = FCAppConfigurationURLValue(dictionaryCopy, @"videoLarge");

  v7 = [(FCMultiSizeVideo *)self initWithSmallVideoURL:v5 largeVideoURL:v6];
  return v7;
}

- (FCMultiSizeVideo)initWithSmallVideoURL:(id)l largeVideoURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v12.receiver = self;
  v12.super_class = FCMultiSizeVideo;
  v9 = [(FCMultiSizeVideo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_small, l);
    objc_storeStrong(&v10->_large, rL);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    small = [(FCMultiSizeVideo *)self small];
    small2 = [v6 small];
    if ([v7 nf_object:small isEqualToObject:small2])
    {
      v10 = MEMORY[0x1E69E58C0];
      large = [(FCMultiSizeVideo *)self large];
      large2 = [v6 large];
      v13 = [v10 nf_object:large isEqualToObject:large2];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  small = [(FCMultiSizeVideo *)self small];
  v4 = [small hash];
  large = [(FCMultiSizeVideo *)self large];
  v6 = [large hash];

  return v6 ^ v4;
}

@end