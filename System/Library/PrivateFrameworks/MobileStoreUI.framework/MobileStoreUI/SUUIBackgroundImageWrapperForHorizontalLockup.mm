@interface SUUIBackgroundImageWrapperForHorizontalLockup
- (SUUIBackgroundImageWrapperForHorizontalLockup)initWithImage:(id)a3;
- (SUUIHorizontalLockupView)lockup;
- (SUUIImageView)imageView;
- (void)setImage:(id)a3;
- (void)setLockup:(id)a3;
@end

@implementation SUUIBackgroundImageWrapperForHorizontalLockup

- (SUUIBackgroundImageWrapperForHorizontalLockup)initWithImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUUIBackgroundImageWrapperForHorizontalLockup;
  v5 = [(SUUIBackgroundImageWrapperForHorizontalLockup *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_imageView, v4);
  }

  return v6;
}

- (void)setImage:(id)a3
{
  v8 = a3;
  v4 = [(SUUIBackgroundImageWrapperForHorizontalLockup *)self imageView];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    [WeakRetained setImage:v8];
  }

  v6 = [(SUUIBackgroundImageWrapperForHorizontalLockup *)self lockup];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_lockup);
    [v7 setContainerBackgroundImageForPlayButton:v8];
  }
}

- (void)setLockup:(id)a3
{
  obj = a3;
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
      v9 = [v8 image];

      v6 = obj;
      if (v9)
      {
        v10 = objc_loadWeakRetained(&self->_lockup);
        v11 = objc_loadWeakRetained(&self->_imageView);
        v12 = [v11 image];
        [v10 setContainerBackgroundImageForPlayButton:v12];

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