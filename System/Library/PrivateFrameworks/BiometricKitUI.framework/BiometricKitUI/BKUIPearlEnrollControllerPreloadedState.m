@interface BKUIPearlEnrollControllerPreloadedState
- (id)acquireCachedAudioSession;
- (id)acquireCachedEntryAnimationImages;
- (id)acquireCachedVideoCaptureSession;
- (void)cacheAudioSession:(id)a3;
- (void)cacheEntryAnimationImages:(id)a3;
- (void)cacheVideoCaptureSession:(id)a3;
@end

@implementation BKUIPearlEnrollControllerPreloadedState

- (void)cacheEntryAnimationImages:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  cachedEntryAnimationImages = obj->_cachedEntryAnimationImages;
  obj->_cachedEntryAnimationImages = v4;

  objc_sync_exit(obj);
}

- (id)acquireCachedEntryAnimationImages
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedEntryAnimationImages;
  cachedEntryAnimationImages = v2->_cachedEntryAnimationImages;
  v2->_cachedEntryAnimationImages = 0;

  objc_sync_exit(v2);

  return v3;
}

- (void)cacheVideoCaptureSession:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  cachedVideoCaptureSession = obj->_cachedVideoCaptureSession;
  obj->_cachedVideoCaptureSession = v4;

  objc_sync_exit(obj);
}

- (id)acquireCachedVideoCaptureSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedVideoCaptureSession;
  cachedVideoCaptureSession = v2->_cachedVideoCaptureSession;
  v2->_cachedVideoCaptureSession = 0;

  objc_sync_exit(v2);

  return v3;
}

- (void)cacheAudioSession:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  cachedAudioSession = obj->_cachedAudioSession;
  obj->_cachedAudioSession = v4;

  objc_sync_exit(obj);
}

- (id)acquireCachedAudioSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedAudioSession;
  cachedAudioSession = v2->_cachedAudioSession;
  v2->_cachedAudioSession = 0;

  objc_sync_exit(v2);

  return v3;
}

@end