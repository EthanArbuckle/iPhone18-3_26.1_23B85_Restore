@interface HUImageOBWelcomeController
- (HUImageOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image;
- (HUImageOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentView:(id)view;
- (UIImage)contentImage;
- (double)_contentAspectRatio;
- (void)_updateContentMode;
- (void)_viewDidUpdateContent;
- (void)setContentImage:(id)image;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUImageOBWelcomeController

- (HUImageOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentImage:(id)image
{
  v10 = MEMORY[0x277D755E8];
  imageCopy = image;
  iconCopy = icon;
  textCopy = text;
  titleCopy = title;
  v15 = [[v10 alloc] initWithImage:imageCopy];

  v18.receiver = self;
  v18.super_class = HUImageOBWelcomeController;
  v16 = [(HUTopContentOBWelcomeController *)&v18 initWithTitle:titleCopy detailText:textCopy icon:iconCopy contentView:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_contentImageView, v15);
    [(UIImageView *)v16->_contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v16;
}

- (HUImageOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentView:(id)view
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentImage_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUImageOBWelcomeController.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HUImageOBWelcomeController initWithTitle:detailText:icon:contentView:]", v9}];

  return 0;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUImageOBWelcomeController;
  [(HUTopContentOBWelcomeController *)&v3 viewDidLoad];
  [(HUImageOBWelcomeController *)self _updateContentMode];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUImageOBWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  [(HUImageOBWelcomeController *)self _updateContentMode];
}

- (UIImage)contentImage
{
  contentImageView = [(HUImageOBWelcomeController *)self contentImageView];
  image = [contentImageView image];

  return image;
}

- (void)setContentImage:(id)image
{
  imageCopy = image;
  contentImageView = [(HUImageOBWelcomeController *)self contentImageView];
  image = [contentImageView image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    contentImageView2 = [(HUImageOBWelcomeController *)self contentImageView];
    [contentImageView2 setImage:imageCopy];

    isViewLoaded = [(HUImageOBWelcomeController *)self isViewLoaded];
    v6 = imageCopy;
    if (isViewLoaded)
    {
      [(HUImageOBWelcomeController *)self _viewDidUpdateContent];
      v6 = imageCopy;
    }
  }
}

- (double)_contentAspectRatio
{
  contentImage = [(HUImageOBWelcomeController *)self contentImage];

  if (contentImage)
  {
    contentImage2 = [(HUImageOBWelcomeController *)self contentImage];
    [contentImage2 size];
    v6 = v5;
    contentImage3 = [(HUImageOBWelcomeController *)self contentImage];
    [contentImage3 size];
    v9 = v6 / v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HUImageOBWelcomeController;
    [(HUTopContentOBWelcomeController *)&v12 _contentAspectRatio];
    return v10;
  }

  return v9;
}

- (void)_viewDidUpdateContent
{
  v3.receiver = self;
  v3.super_class = HUImageOBWelcomeController;
  [(HUTopContentOBWelcomeController *)&v3 _viewDidUpdateContent];
  [(HUImageOBWelcomeController *)self _updateContentMode];
}

- (void)_updateContentMode
{
  contentImage = [(HUImageOBWelcomeController *)self contentImage];
  [contentImage size];
  v5 = v4;
  [(UIImageView *)self->_contentImageView bounds];
  if (v5 > v6)
  {

    v12 = 1;
  }

  else
  {
    contentImage2 = [(HUImageOBWelcomeController *)self contentImage];
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