@interface DBGTargetHub
+ (id)sharedHub;
- (DBGTargetHub)init;
- (id)performRequest:(id)request;
- (id)performRequestWithRequestInBase64:(id)base64;
- (void)clearAllRequestsAndData;
@end

@implementation DBGTargetHub

+ (id)sharedHub
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __25__DBGTargetHub_sharedHub__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHub_onceToken != -1)
  {
    dispatch_once(&sharedHub_onceToken, block);
  }

  v2 = sharedHub_sharedHub;

  return v2;
}

uint64_t __25__DBGTargetHub_sharedHub__block_invoke(uint64_t a1)
{
  sharedHub_sharedHub = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

- (DBGTargetHub)init
{
  v3.receiver = self;
  v3.super_class = DBGTargetHub;
  return [(DBGTargetHub *)&v3 init];
}

- (id)performRequest:(id)request
{
  requestCopy = request;
  v4 = +[DebugHierarchyTargetHub sharedHub];
  v5 = [v4 performRequest:requestCopy];

  return v5;
}

- (id)performRequestWithRequestInBase64:(id)base64
{
  base64Copy = base64;
  v4 = +[DebugHierarchyTargetHub sharedHub];
  v5 = [v4 performRequestWithRequestInBase64:base64Copy];

  return v5;
}

- (void)clearAllRequestsAndData
{
  v2 = +[DebugHierarchyTargetHub sharedHub];
  [v2 clearAllRequestsAndData];
}

@end