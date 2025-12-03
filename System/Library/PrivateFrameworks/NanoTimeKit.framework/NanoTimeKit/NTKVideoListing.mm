@interface NTKVideoListing
- (BOOL)snapshotDiffers:(id)differs;
- (CLKVideo)video;
- (id)initForDevice:(id)device withName:(id)name videoName:(id)videoName transitionImageName:(id)imageName overlayColor:(id)color theme:(unint64_t)theme variant:(int64_t)variant clip:(int64_t)self0 tags:(unint64_t)self1;
- (void)_setHasAssets;
- (void)discardAssets;
@end

@implementation NTKVideoListing

- (id)initForDevice:(id)device withName:(id)name videoName:(id)videoName transitionImageName:(id)imageName overlayColor:(id)color theme:(unint64_t)theme variant:(int64_t)variant clip:(int64_t)self0 tags:(unint64_t)self1
{
  deviceCopy = device;
  nameCopy = name;
  videoNameCopy = videoName;
  imageNameCopy = imageName;
  colorCopy = color;
  v27.receiver = self;
  v27.super_class = NTKVideoListing;
  v21 = [(NTKVideoListing *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, device);
    objc_storeStrong(&v22->_name, name);
    objc_storeStrong(&v22->_videoName, videoName);
    objc_storeStrong(&v22->_transitionImageName, imageName);
    objc_storeStrong(&v22->_overlayColor, color);
    v22->_theme = theme;
    v22->_variant = variant;
    v22->_clip = clip;
    v22->_tags = tags;
    v23 = v22;
  }

  return v22;
}

- (void)_setHasAssets
{
  v3 = [NTKVideoListingFactory sharedInstanceForDevice:self->_device];
  [v3 setVideoListingHasAssets:self];
}

- (CLKVideo)video
{
  video = self->_video;
  if (!video)
  {
    v4 = MEMORY[0x277CBBBC0];
    videoName = self->_videoName;
    device = self->_device;
    v7 = NTKAssetsBundle();
    v8 = [v4 videoNamed:videoName forDevice:device inBundle:v7];
    v9 = self->_video;
    self->_video = v8;

    [(NTKVideoListing *)self _setHasAssets];
    video = self->_video;
  }

  return video;
}

- (BOOL)snapshotDiffers:(id)differs
{
  differsCopy = differs;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = differsCopy;
    theme = [v5 theme];
    if (theme == [(NTKVideoListing *)self theme])
    {
      variant = [v5 variant];
      v8 = variant != [(NTKVideoListing *)self variant];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)discardAssets
{
  video = self->_video;
  self->_video = 0;
}

@end