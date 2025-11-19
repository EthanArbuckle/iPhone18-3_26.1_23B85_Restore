@interface NSURLSession(GKAdditions)
+ (id)_gkForClientProcess;
@end

@implementation NSURLSession(GKAdditions)

+ (id)_gkForClientProcess
{
  if (_gkForClientProcess_sDispatchOnceToken != -1)
  {
    +[NSURLSession(GKAdditions) _gkForClientProcess];
  }

  v1 = _gkForClientProcess_session;

  return v1;
}

@end