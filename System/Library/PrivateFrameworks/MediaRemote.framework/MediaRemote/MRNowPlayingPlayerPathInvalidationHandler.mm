@interface MRNowPlayingPlayerPathInvalidationHandler
- (MRNowPlayingPlayerPathInvalidationHandler)initWithPlayerPath:(id)a3 invalidateImmediatlyIfInvalid:(BOOL)a4 queue:(id)a5 invalidationCallback:(id)a6;
@end

@implementation MRNowPlayingPlayerPathInvalidationHandler

- (MRNowPlayingPlayerPathInvalidationHandler)initWithPlayerPath:(id)a3 invalidateImmediatlyIfInvalid:(BOOL)a4 queue:(id)a5 invalidationCallback:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = MRNowPlayingPlayerPathInvalidationHandler;
  v13 = [(MRNowPlayingPlayerPathInvalidationHandler *)&v20 init];
  if (v13)
  {
    if (v10)
    {
      v14 = [v10 copy];
    }

    else
    {
      v14 = objc_alloc_init(MRPlayerPath);
    }

    playerPath = v13->_playerPath;
    v13->_playerPath = v14;

    if (!v11)
    {
      v11 = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
    }

    v13->_invalidateImmediatlyIfInvalid = a4;
    objc_storeStrong(&v13->_queue, v11);
    v17 = [v12 copy];
    callback = v13->_callback;
    v13->_callback = v17;
  }

  return v13;
}

@end