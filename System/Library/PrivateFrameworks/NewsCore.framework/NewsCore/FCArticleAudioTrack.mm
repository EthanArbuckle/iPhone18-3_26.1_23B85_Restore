@interface FCArticleAudioTrack
- (BOOL)isEqual:(id)equal;
- (FCArticleAudioTrack)init;
- (FCArticleAudioTrack)initWithType:(int64_t)type asset:(id)asset duration:(double)duration embeddedUpsellStartTime:(double)time embeddedUpsellEndTime:(double)endTime;
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

- (FCArticleAudioTrack)initWithType:(int64_t)type asset:(id)asset duration:(double)duration embeddedUpsellStartTime:(double)time embeddedUpsellEndTime:(double)endTime
{
  assetCopy = asset;
  v17.receiver = self;
  v17.super_class = FCArticleAudioTrack;
  v14 = [(FCArticleAudioTrack *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_asset, asset);
    v15->_duration = duration;
    v15->_embeddedUpsellStartTime = time;
    v15->_embeddedUpsellEndTime = endTime;
  }

  return v15;
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
    asset = [(FCArticleAudioTrack *)self asset];
    asset2 = [v6 asset];
    v9 = [asset isEqual:asset2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  asset = [(FCArticleAudioTrack *)self asset];
  v3 = [asset hash];

  return v3;
}

- (FCContentArchive)contentArchive
{
  asset = [(FCArticleAudioTrack *)self asset];
  contentArchive = [asset contentArchive];

  return contentArchive;
}

- (FCContentManifest)contentManifest
{
  asset = [(FCArticleAudioTrack *)self asset];
  contentManifest = [asset contentManifest];

  return contentManifest;
}

@end