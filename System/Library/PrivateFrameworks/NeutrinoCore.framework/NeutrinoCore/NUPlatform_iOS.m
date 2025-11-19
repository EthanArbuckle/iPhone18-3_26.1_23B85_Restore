@interface NUPlatform_iOS
- (BOOL)defaultSupportsLiveVideoRendering;
- (NUPlatform_iOS)init;
- (id)mainDevice;
@end

@implementation NUPlatform_iOS

- (BOOL)defaultSupportsLiveVideoRendering
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__NUPlatform_iOS_defaultSupportsLiveVideoRendering__block_invoke;
  block[3] = &unk_1E810B9A8;
  block[4] = self;
  if (defaultSupportsLiveVideoRendering_onceToken != -1)
  {
    dispatch_once(&defaultSupportsLiveVideoRendering_onceToken, block);
  }

  return defaultSupportsLiveVideoRendering_canRenderLiveVideo;
}

- (id)mainDevice
{
  v2 = [(NUPlatform *)self devices];
  v3 = [v2 firstObject];

  return v3;
}

- (NUPlatform_iOS)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NUPlatform_iOS;
  v2 = [(NUPlatform_iOS *)&v7 init];
  v3 = MGCopyAnswer();
  [(NUPlatform *)v2 setName:v3];

  v4 = [[NUDevice_iOS alloc] initWithName:@"GPU"];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(NUPlatform *)v2 setDevices:v5];

  [(NUPlatform *)v2 setHasExtendedColorDisplay:+[NUGlobalSettings platformHasWideColor]];
  return v2;
}

@end