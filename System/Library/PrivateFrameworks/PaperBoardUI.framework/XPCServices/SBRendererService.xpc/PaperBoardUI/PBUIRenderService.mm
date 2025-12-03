@interface PBUIRenderService
- (PBUIRenderService)init;
- (void)renderRequest:(id)request reply:(id)reply;
@end

@implementation PBUIRenderService

- (PBUIRenderService)init
{
  v10.receiver = self;
  v10.super_class = PBUIRenderService;
  v2 = [(PBUIRenderService *)&v10 init];
  if (v2)
  {
    v3 = MGGetBoolAnswer();
    v4 = &kCGColorSpaceExtendedSRGB;
    if (!v3)
    {
      v4 = &kCGColorSpaceSRGB;
    }

    v5 = *v4;
    v6 = CGColorSpaceCreateWithName(*v4);
    objc_storeStrong(&v2->_colorSpaceName, v5);
    v7 = [[PUICALocalRenderer alloc] initWithColorSpace:v6];
    [v7 setIdentifier:@"PUIRenderService"];
    renderer = v2->_renderer;
    v2->_renderer = v7;

    CGColorSpaceRelease(v6);
  }

  return v2;
}

- (void)renderRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = objc_autoreleasePoolPush();
  renderer = [(PBUIRenderService *)self renderer];
  v12 = 0;
  v10 = [renderer renderRequest:requestCopy error:&v12];
  v11 = v12;

  CABackingStoreCollectBlocking();
  CARenderCollect();
  replyCopy[2](replyCopy, v10, v11);

  objc_autoreleasePoolPop(v8);
}

@end