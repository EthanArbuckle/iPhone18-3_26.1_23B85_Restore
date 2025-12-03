@interface CKWatchfaceUtilities
+ (void)addWatchFaceAtURL:(id)l completionHandler:(id)handler;
@end

@implementation CKWatchfaceUtilities

+ (void)addWatchFaceAtURL:(id)l completionHandler:(id)handler
{
  v5 = _WatchFaceLibrary_onceToken;
  handlerCopy = handler;
  lCopy = l;
  v9 = lCopy;
  if (v5 == -1)
  {
    v8 = lCopy;
  }

  else
  {
    +[CKWatchfaceUtilities addWatchFaceAtURL:completionHandler:];
    v8 = v9;
  }

  [_WatchFaceLibrary_library _addWatchFaceAtURL:v8 shouldValidate:0 completionHandler:handlerCopy];
}

@end