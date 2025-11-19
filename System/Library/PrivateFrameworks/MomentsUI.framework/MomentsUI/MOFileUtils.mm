@interface MOFileUtils
+ (BOOL)acquireBackgroundProcessingPermissionForURL:(id)a3 duration:(double)a4 mustAcquire:(BOOL)a5;
@end

@implementation MOFileUtils

+ (BOOL)acquireBackgroundProcessingPermissionForURL:(id)a3 duration:(double)a4 mustAcquire:(BOOL)a5
{
  v7 = [a3 path];
  v8 = [v7 UTF8String];
  v9 = open_dprotected_np(v8, 514, 2, 0, 416);
  if (v9 < 0 && (v9 = open(v8, 2, 416), v9 < 0))
  {
    v12 = 0;
  }

  else
  {
    v10 = v9;
    v14[0] = 0;
    v14[1] = (a4 * 1000000000.0);
    v11 = fcntl(v9, 108, v14);
    close(v10);
    v12 = v11 != -1 || !a5;
  }

  return v12;
}

@end