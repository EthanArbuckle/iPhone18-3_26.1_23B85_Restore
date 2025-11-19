@interface FCMultiSizeVideo
- (BOOL)isEqual:(id)a3;
- (FCMultiSizeVideo)init;
- (FCMultiSizeVideo)initWithConfigDictionary:(id)a3;
- (FCMultiSizeVideo)initWithSmallVideoURL:(id)a3 largeVideoURL:(id)a4;
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

- (FCMultiSizeVideo)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v5 = FCAppConfigurationURLValue(v4, @"videoSmall");
  v6 = FCAppConfigurationURLValue(v4, @"videoLarge");

  v7 = [(FCMultiSizeVideo *)self initWithSmallVideoURL:v5 largeVideoURL:v6];
  return v7;
}

- (FCMultiSizeVideo)initWithSmallVideoURL:(id)a3 largeVideoURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCMultiSizeVideo;
  v9 = [(FCMultiSizeVideo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_small, a3);
    objc_storeStrong(&v10->_large, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
    v8 = [(FCMultiSizeVideo *)self small];
    v9 = [v6 small];
    if ([v7 nf_object:v8 isEqualToObject:v9])
    {
      v10 = MEMORY[0x1E69E58C0];
      v11 = [(FCMultiSizeVideo *)self large];
      v12 = [v6 large];
      v13 = [v10 nf_object:v11 isEqualToObject:v12];
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
  v3 = [(FCMultiSizeVideo *)self small];
  v4 = [v3 hash];
  v5 = [(FCMultiSizeVideo *)self large];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end