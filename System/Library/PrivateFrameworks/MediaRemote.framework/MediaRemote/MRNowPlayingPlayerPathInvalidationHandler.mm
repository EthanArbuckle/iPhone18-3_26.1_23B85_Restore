@interface MRNowPlayingPlayerPathInvalidationHandler
- (MRNowPlayingPlayerPathInvalidationHandler)initWithPlayerPath:(id)path invalidateImmediatlyIfInvalid:(BOOL)invalid queue:(id)queue invalidationCallback:(id)callback;
@end

@implementation MRNowPlayingPlayerPathInvalidationHandler

- (MRNowPlayingPlayerPathInvalidationHandler)initWithPlayerPath:(id)path invalidateImmediatlyIfInvalid:(BOOL)invalid queue:(id)queue invalidationCallback:(id)callback
{
  pathCopy = path;
  queueCopy = queue;
  callbackCopy = callback;
  v20.receiver = self;
  v20.super_class = MRNowPlayingPlayerPathInvalidationHandler;
  v13 = [(MRNowPlayingPlayerPathInvalidationHandler *)&v20 init];
  if (v13)
  {
    if (pathCopy)
    {
      v14 = [pathCopy copy];
    }

    else
    {
      v14 = objc_alloc_init(MRPlayerPath);
    }

    playerPath = v13->_playerPath;
    v13->_playerPath = v14;

    if (!queueCopy)
    {
      queueCopy = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
    }

    v13->_invalidateImmediatlyIfInvalid = invalid;
    objc_storeStrong(&v13->_queue, queueCopy);
    v17 = [callbackCopy copy];
    callback = v13->_callback;
    v13->_callback = v17;
  }

  return v13;
}

@end