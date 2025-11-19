@interface CKWatchfaceUtilities
+ (void)addWatchFaceAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation CKWatchfaceUtilities

+ (void)addWatchFaceAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = _WatchFaceLibrary_onceToken;
  v6 = a4;
  v7 = a3;
  v9 = v7;
  if (v5 == -1)
  {
    v8 = v7;
  }

  else
  {
    +[CKWatchfaceUtilities addWatchFaceAtURL:completionHandler:];
    v8 = v9;
  }

  [_WatchFaceLibrary_library _addWatchFaceAtURL:v8 shouldValidate:0 completionHandler:v6];
}

@end