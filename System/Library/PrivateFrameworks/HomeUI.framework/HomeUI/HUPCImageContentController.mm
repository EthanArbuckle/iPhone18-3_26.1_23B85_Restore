@interface HUPCImageContentController
- (HUPCImageContentController)initWithTitle:(id)title detailText:(id)text contentImage:(id)image;
- (UIImage)contentImage;
- (double)_contentAspectRatio;
- (void)_updateContentMode;
- (void)_viewDidUpdateContent;
- (void)setContentImage:(id)image;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUPCImageContentController

- (HUPCImageContentController)initWithTitle:(id)title detailText:(id)text contentImage:(id)image
{
  v8 = MEMORY[0x277D755E8];
  imageCopy = image;
  textCopy = text;
  titleCopy = title;
  v12 = [[v8 alloc] initWithImage:imageCopy];

  v15.receiver = self;
  v15.super_class = HUPCImageContentController;
  v13 = [(HUPCCenterFillContentController *)&v15 initWithTitle:titleCopy detailText:textCopy contentView:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_contentImageView, v12);
    [(UIImageView *)v13->_contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v13;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUPCImageContentController;
  [(HUPCCenterFillContentController *)&v3 viewDidLoad];
  [(HUPCImageContentController *)self _updateContentMode];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUPCImageContentController;
  [(HUPCFullCenterContentViewController *)&v3 viewDidLayoutSubviews];
  [(HUPCImageContentController *)self _updateContentMode];
}

- (UIImage)contentImage
{
  contentImageView = [(HUPCImageContentController *)self contentImageView];
  image = [contentImageView image];

  return image;
}

- (void)setContentImage:(id)image
{
  imageCopy = image;
  contentImageView = [(HUPCImageContentController *)self contentImageView];
  image = [contentImageView image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    contentImageView2 = [(HUPCImageContentController *)self contentImageView];
    [contentImageView2 setImage:imageCopy];

    isViewLoaded = [(HUPCImageContentController *)self isViewLoaded];
    v6 = imageCopy;
    if (isViewLoaded)
    {
      [(HUPCImageContentController *)self _viewDidUpdateContent];
      v6 = imageCopy;
    }
  }
}

- (double)_contentAspectRatio
{
  contentImage = [(HUPCImageContentController *)self contentImage];

  if (contentImage)
  {
    contentImage2 = [(HUPCImageContentController *)self contentImage];
    [contentImage2 size];
    v6 = v5;
    contentImage3 = [(HUPCImageContentController *)self contentImage];
    [contentImage3 size];
    v9 = v6 / v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUPCImageContentController;
    [(HUPCCenterFillContentController *)&v12 _contentAspectRatio];
    return v10;
  }

  return v9;
}

- (void)_viewDidUpdateContent
{
  v3.receiver = self;
  v3.super_class = HUPCImageContentController;
  [(HUPCCenterFillContentController *)&v3 _viewDidUpdateContent];
  [(HUPCImageContentController *)self _updateContentMode];
}

- (void)_updateContentMode
{
  contentImage = [(HUPCImageContentController *)self contentImage];
  [contentImage size];
  v5 = v4;
  [(UIImageView *)self->_contentImageView bounds];
  if (v5 > v6)
  {

    v12 = 1;
  }

  else
  {
    contentImage2 = [(HUPCImageContentController *)self contentImage];
    [contentImage2 size];
    v9 = v8;
    [(UIImageView *)self->_contentImageView bounds];
    v11 = v10;

    if (v9 <= v11)
    {
      v12 = 4;
    }

    else
    {
      v12 = 1;
    }
  }

  contentImageView = self->_contentImageView;

  [(UIImageView *)contentImageView setContentMode:v12];
}

@end