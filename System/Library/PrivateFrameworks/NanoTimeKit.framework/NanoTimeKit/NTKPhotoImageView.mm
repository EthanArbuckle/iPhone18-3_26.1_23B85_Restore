@interface NTKPhotoImageView
- (NTKPhotoImageView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (NTKPhotoImageViewDelegate)delegate;
- (void)_loadMediaAssetView;
- (void)_unloadMediaAssetView;
- (void)mediaAssetViewDidBeginPlaying:(id)playing;
- (void)mediaAssetViewDidEndPlaying:(id)playing;
- (void)reset;
- (void)setPhoto:(id)photo allowIris:(BOOL)iris;
@end

@implementation NTKPhotoImageView

- (NTKPhotoImageView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKPhotoImageView;
  height = [(NTKPhotoImageView *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    [(NTKPhotoImageView *)height setClipsToBounds:1];
    objc_storeStrong(&v12->_device, device);
    [(NTKPhotoImageView *)v12 _loadMediaAssetView];
  }

  return v12;
}

- (void)_loadMediaAssetView
{
  v3 = objc_alloc(MEMORY[0x277CBBB50]);
  [(NTKPhotoImageView *)self bounds];
  v4 = [v3 initWithFrame:self->_device forDevice:?];
  mediaAssetView = self->_mediaAssetView;
  self->_mediaAssetView = v4;

  [(CLKMediaAssetView *)self->_mediaAssetView setDelegate:self];
  v6 = self->_mediaAssetView;

  [(NTKPhotoImageView *)self addSubview:v6];
}

- (void)_unloadMediaAssetView
{
  [(CLKMediaAssetView *)self->_mediaAssetView setDelegate:0];
  [(CLKMediaAssetView *)self->_mediaAssetView removeFromSuperview];
  mediaAssetView = self->_mediaAssetView;
  self->_mediaAssetView = 0;
}

- (void)reset
{
  cachedPhoto = self->_cachedPhoto;
  self->_cachedPhoto = 0;

  photo = self->_photo;
  self->_photo = 0;

  [(NTKPhotoImageView *)self _unloadMediaAssetView];

  [(NTKPhotoImageView *)self _loadMediaAssetView];
}

- (void)setPhoto:(id)photo allowIris:(BOOL)iris
{
  irisCopy = iris;
  photoCopy = photo;
  if (photoCopy)
  {
    v61 = photoCopy;
    photo = [photoCopy photo];

    photoCopy = v61;
    if (photo)
    {
      image = [v61 image];
      [image scale];
      v11 = v10;
      [image size];
      if (!image)
      {
        goto LABEL_26;
      }

      v14 = v11 * v13;
      if (v11 * v12 < 1.0 || v14 < 1.0)
      {
        goto LABEL_26;
      }

      [(NTKPhotoImageView *)self bounds];
      if (v16 < 1.0)
      {
        goto LABEL_26;
      }

      v18 = v17;
      if (v17 < 1.0)
      {
        goto LABEL_26;
      }

      v19 = v16;
      photo2 = [v61 photo];
      photo = self->_photo;
      self->_photo = photo2;

      objc_storeStrong(&self->_cachedPhoto, photo);
      irisVideoURL = 0;
      v23 = 0.0;
      v24 = 0.0;
      if ([(NTKPhoto *)self->_photo isIris]&& irisCopy)
      {
        irisVideoURL = [(NTKPhoto *)self->_photo irisVideoURL];
        [(NTKPhoto *)self->_photo irisDuration];
        v24 = v25;
        [(NTKPhoto *)self->_photo irisStillDisplayTime];
        v23 = v26;
      }

      mediaAsset = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
      image2 = [mediaAsset image];
      image3 = [v61 image];
      v30 = image3;
      if (image2 == image3)
      {
        mediaAsset2 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
        video = [mediaAsset2 video];
        v33 = [video url];

        if (v33 == irisVideoURL)
        {
LABEL_25:

LABEL_26:
          photoCopy = v61;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v34 = MEMORY[0x277CBBB48];
      if (irisVideoURL)
      {
        v35 = MEMORY[0x277CBBBC0];
        photo3 = [v61 photo];
        localIdentifier = [photo3 localIdentifier];
        v38 = [v35 videoWithName:localIdentifier forDevice:self->_device url:irisVideoURL];
        image4 = [v61 image];
        v40 = [v34 mediaAssetWithVideo:v38 image:image4 videoDuration:self->_device stillDisplayTime:v24 forDevice:v23];
      }

      else
      {
        photo3 = [v61 image];
        v40 = [v34 mediaAssetWithImage:photo3 forDevice:self->_device];
      }

      [(CLKMediaAssetView *)self->_mediaAssetView changeMediaAsset:v40];
      mediaAsset3 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
      image5 = [mediaAsset3 image];
      [image5 scale];
      v44 = v43;

      [(CLKDevice *)self->_device screenScale];
      if (v45 >= 1.0)
      {
        v46 = v45;
      }

      else
      {
        v46 = 1.0;
      }

      mediaAsset4 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
      image6 = [mediaAsset4 image];
      [image6 size];
      v50 = v49;
      v52 = v51;

      v53 = v44 * v50 / v46;
      v54 = v44 * v52 / v46;
      [(NTKPhoto *)self->_photo crop];
      v57 = v19 / (v56 / v46);
      if (v57 < v18 / (v55 / v46))
      {
        v57 = v18 / (v55 / v46);
      }

      [(CLKMediaAssetView *)self->_mediaAssetView setBounds:0.0, 0.0, v53 * v57, v54 * v57];
      [(NTKPhotoImageView *)self bounds];
      v59 = v58 * 0.5;
      [(NTKPhotoImageView *)self bounds];
      [(CLKMediaAssetView *)self->_mediaAssetView setCenter:v59, v60 * 0.5];
      [(NTKPhotoImageView *)self setNeedsLayout];

      goto LABEL_25;
    }
  }

LABEL_27:
}

- (void)mediaAssetViewDidBeginPlaying:(id)playing
{
  delegate = [(NTKPhotoImageView *)self delegate];
  [delegate imageViewDidBeginPlaying:self];
}

- (void)mediaAssetViewDidEndPlaying:(id)playing
{
  delegate = [(NTKPhotoImageView *)self delegate];
  [delegate imageViewDidEndPlaying:self];
}

- (NTKPhotoImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end