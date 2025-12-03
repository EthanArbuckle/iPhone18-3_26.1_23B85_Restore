@interface SUUIBackgroundImageWrapperForHorizontalLockup
- (SUUIBackgroundImageWrapperForHorizontalLockup)initWithImage:(id)image;
- (SUUIHorizontalLockupView)lockup;
- (SUUIImageView)imageView;
- (void)setImage:(id)image;
- (void)setLockup:(id)lockup;
@end

@implementation SUUIBackgroundImageWrapperForHorizontalLockup

- (SUUIBackgroundImageWrapperForHorizontalLockup)initWithImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = SUUIBackgroundImageWrapperForHorizontalLockup;
  v5 = [(SUUIBackgroundImageWrapperForHorizontalLockup *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_imageView, imageCopy);
  }

  return v6;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(SUUIBackgroundImageWrapperForHorizontalLockup *)self imageView];

  if (imageView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    [WeakRetained setImage:imageCopy];
  }

  lockup = [(SUUIBackgroundImageWrapperForHorizontalLockup *)self lockup];

  if (lockup)
  {
    v7 = objc_loadWeakRetained(&self->_lockup);
    [v7 setContainerBackgroundImageForPlayButton:imageCopy];
  }
}

- (void)setLockup:(id)lockup
{
  obj = lockup;
  WeakRetained = objc_loadWeakRetained(&self->_lockup);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_lockup, obj);
    v5 = objc_loadWeakRetained(&self->_imageView);
    v6 = obj;
    if (v5)
    {
      v7 = v5;
      v8 = objc_loadWeakRetained(&self->_imageView);
      image = [v8 image];

      v6 = obj;
      if (image)
      {
        v10 = objc_loadWeakRetained(&self->_lockup);
        v11 = objc_loadWeakRetained(&self->_imageView);
        image2 = [v11 image];
        [v10 setContainerBackgroundImageForPlayButton:image2];

        v6 = obj;
      }
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (SUUIHorizontalLockupView)lockup
{
  WeakRetained = objc_loadWeakRetained(&self->_lockup);

  return WeakRetained;
}

- (SUUIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

@end