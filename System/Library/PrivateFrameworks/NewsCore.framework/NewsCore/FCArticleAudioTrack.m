@interface FCArticleAudioTrack
- (BOOL)isEqual:(id)a3;
- (FCArticleAudioTrack)init;
- (FCArticleAudioTrack)initWithType:(int64_t)a3 asset:(id)a4 duration:(double)a5 embeddedUpsellStartTime:(double)a6 embeddedUpsellEndTime:(double)a7;
- (FCContentArchive)contentArchive;
- (FCContentManifest)contentManifest;
- (unint64_t)hash;
@end

@implementation FCArticleAudioTrack

- (FCArticleAudioTrack)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCArticleAudioTrack init]";
    v10 = 2080;
    v11 = "FCArticleAudioTrack.m";
    v12 = 1024;
    v13 = 17;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCArticleAudioTrack init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCArticleAudioTrack)initWithType:(int64_t)a3 asset:(id)a4 duration:(double)a5 embeddedUpsellStartTime:(double)a6 embeddedUpsellEndTime:(double)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = FCArticleAudioTrack;
  v14 = [(FCArticleAudioTrack *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_asset, a4);
    v15->_duration = a5;
    v15->_embeddedUpsellStartTime = a6;
    v15->_embeddedUpsellEndTime = a7;
  }

  return v15;
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
    v7 = [(FCArticleAudioTrack *)self asset];
    v8 = [v6 asset];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(FCArticleAudioTrack *)self asset];
  v3 = [v2 hash];

  return v3;
}

- (FCContentArchive)contentArchive
{
  v2 = [(FCArticleAudioTrack *)self asset];
  v3 = [v2 contentArchive];

  return v3;
}

- (FCContentManifest)contentManifest
{
  v2 = [(FCArticleAudioTrack *)self asset];
  v3 = [v2 contentManifest];

  return v3;
}

@end