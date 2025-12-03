@interface BKUIPearlEnrollControllerPreloadedState
- (id)acquireCachedAudioSession;
- (id)acquireCachedEntryAnimationImages;
- (id)acquireCachedVideoCaptureSession;
- (void)cacheAudioSession:(id)session;
- (void)cacheEntryAnimationImages:(id)images;
- (void)cacheVideoCaptureSession:(id)session;
@end

@implementation BKUIPearlEnrollControllerPreloadedState

- (void)cacheEntryAnimationImages:(id)images
{
  imagesCopy = images;
  obj = self;
  objc_sync_enter(obj);
  cachedEntryAnimationImages = obj->_cachedEntryAnimationImages;
  obj->_cachedEntryAnimationImages = imagesCopy;

  objc_sync_exit(obj);
}

- (id)acquireCachedEntryAnimationImages
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cachedEntryAnimationImages;
  cachedEntryAnimationImages = selfCopy->_cachedEntryAnimationImages;
  selfCopy->_cachedEntryAnimationImages = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)cacheVideoCaptureSession:(id)session
{
  sessionCopy = session;
  obj = self;
  objc_sync_enter(obj);
  cachedVideoCaptureSession = obj->_cachedVideoCaptureSession;
  obj->_cachedVideoCaptureSession = sessionCopy;

  objc_sync_exit(obj);
}

- (id)acquireCachedVideoCaptureSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cachedVideoCaptureSession;
  cachedVideoCaptureSession = selfCopy->_cachedVideoCaptureSession;
  selfCopy->_cachedVideoCaptureSession = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)cacheAudioSession:(id)session
{
  sessionCopy = session;
  obj = self;
  objc_sync_enter(obj);
  cachedAudioSession = obj->_cachedAudioSession;
  obj->_cachedAudioSession = sessionCopy;

  objc_sync_exit(obj);
}

- (id)acquireCachedAudioSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_cachedAudioSession;
  cachedAudioSession = selfCopy->_cachedAudioSession;
  selfCopy->_cachedAudioSession = 0;

  objc_sync_exit(selfCopy);

  return v3;
}

@end