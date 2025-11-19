@interface NTKVideoListing
- (BOOL)snapshotDiffers:(id)a3;
- (CLKVideo)video;
- (id)initForDevice:(id)a3 withName:(id)a4 videoName:(id)a5 transitionImageName:(id)a6 overlayColor:(id)a7 theme:(unint64_t)a8 variant:(int64_t)a9 clip:(int64_t)a10 tags:(unint64_t)a11;
- (void)_setHasAssets;
- (void)discardAssets;
@end

@implementation NTKVideoListing

- (id)initForDevice:(id)a3 withName:(id)a4 videoName:(id)a5 transitionImageName:(id)a6 overlayColor:(id)a7 theme:(unint64_t)a8 variant:(int64_t)a9 clip:(int64_t)a10 tags:(unint64_t)a11
{
  v18 = a3;
  v19 = a4;
  v26 = a5;
  v25 = a6;
  v20 = a7;
  v27.receiver = self;
  v27.super_class = NTKVideoListing;
  v21 = [(NTKVideoListing *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, a3);
    objc_storeStrong(&v22->_name, a4);
    objc_storeStrong(&v22->_videoName, a5);
    objc_storeStrong(&v22->_transitionImageName, a6);
    objc_storeStrong(&v22->_overlayColor, a7);
    v22->_theme = a8;
    v22->_variant = a9;
    v22->_clip = a10;
    v22->_tags = a11;
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

- (BOOL)snapshotDiffers:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 theme];
    if (v6 == [(NTKVideoListing *)self theme])
    {
      v7 = [v5 variant];
      v8 = v7 != [(NTKVideoListing *)self variant];
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