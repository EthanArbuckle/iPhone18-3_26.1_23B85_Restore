@interface NTKPhotoImageView
- (NTKPhotoImageView)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (NTKPhotoImageViewDelegate)delegate;
- (void)_loadMediaAssetView;
- (void)_unloadMediaAssetView;
- (void)mediaAssetViewDidBeginPlaying:(id)a3;
- (void)mediaAssetViewDidEndPlaying:(id)a3;
- (void)reset;
- (void)setPhoto:(id)a3 allowIris:(BOOL)a4;
@end

@implementation NTKPhotoImageView

- (NTKPhotoImageView)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NTKPhotoImageView;
  v11 = [(NTKPhotoImageView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    [(NTKPhotoImageView *)v11 setClipsToBounds:1];
    objc_storeStrong(&v12->_device, a4);
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

- (void)setPhoto:(id)a3 allowIris:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (v7)
  {
    v61 = v7;
    v8 = [v7 photo];

    v7 = v61;
    if (v8)
    {
      v9 = [v61 image];
      [v9 scale];
      v11 = v10;
      [v9 size];
      if (!v9)
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
      v20 = [v61 photo];
      photo = self->_photo;
      self->_photo = v20;

      objc_storeStrong(&self->_cachedPhoto, a3);
      v22 = 0;
      v23 = 0.0;
      v24 = 0.0;
      if ([(NTKPhoto *)self->_photo isIris]&& v4)
      {
        v22 = [(NTKPhoto *)self->_photo irisVideoURL];
        [(NTKPhoto *)self->_photo irisDuration];
        v24 = v25;
        [(NTKPhoto *)self->_photo irisStillDisplayTime];
        v23 = v26;
      }

      v27 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
      v28 = [v27 image];
      v29 = [v61 image];
      v30 = v29;
      if (v28 == v29)
      {
        v31 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
        v32 = [v31 video];
        v33 = [v32 url];

        if (v33 == v22)
        {
LABEL_25:

LABEL_26:
          v7 = v61;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v34 = MEMORY[0x277CBBB48];
      if (v22)
      {
        v35 = MEMORY[0x277CBBBC0];
        v36 = [v61 photo];
        v37 = [v36 localIdentifier];
        v38 = [v35 videoWithName:v37 forDevice:self->_device url:v22];
        v39 = [v61 image];
        v40 = [v34 mediaAssetWithVideo:v38 image:v39 videoDuration:self->_device stillDisplayTime:v24 forDevice:v23];
      }

      else
      {
        v36 = [v61 image];
        v40 = [v34 mediaAssetWithImage:v36 forDevice:self->_device];
      }

      [(CLKMediaAssetView *)self->_mediaAssetView changeMediaAsset:v40];
      v41 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
      v42 = [v41 image];
      [v42 scale];
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

      v47 = [(CLKMediaAssetView *)self->_mediaAssetView mediaAsset];
      v48 = [v47 image];
      [v48 size];
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

- (void)mediaAssetViewDidBeginPlaying:(id)a3
{
  v4 = [(NTKPhotoImageView *)self delegate];
  [v4 imageViewDidBeginPlaying:self];
}

- (void)mediaAssetViewDidEndPlaying:(id)a3
{
  v4 = [(NTKPhotoImageView *)self delegate];
  [v4 imageViewDidEndPlaying:self];
}

- (NTKPhotoImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end