@interface PBUIRenderService
- (PBUIRenderService)init;
- (void)renderRequest:(id)a3 reply:(id)a4;
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

- (void)renderRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(PBUIRenderService *)self renderer];
  v12 = 0;
  v10 = [v9 renderRequest:v6 error:&v12];
  v11 = v12;

  CABackingStoreCollectBlocking();
  CARenderCollect();
  v7[2](v7, v10, v11);

  objc_autoreleasePoolPop(v8);
}

@end