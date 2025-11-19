@interface HUPCImageContentController
- (HUPCImageContentController)initWithTitle:(id)a3 detailText:(id)a4 contentImage:(id)a5;
- (UIImage)contentImage;
- (double)_contentAspectRatio;
- (void)_updateContentMode;
- (void)_viewDidUpdateContent;
- (void)setContentImage:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUPCImageContentController

- (HUPCImageContentController)initWithTitle:(id)a3 detailText:(id)a4 contentImage:(id)a5
{
  v8 = MEMORY[0x277D755E8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithImage:v9];

  v15.receiver = self;
  v15.super_class = HUPCImageContentController;
  v13 = [(HUPCCenterFillContentController *)&v15 initWithTitle:v11 detailText:v10 contentView:v12];

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
  v2 = [(HUPCImageContentController *)self contentImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setContentImage:(id)a3
{
  v9 = a3;
  v4 = [(HUPCImageContentController *)self contentImageView];
  v5 = [v4 image];

  v6 = v9;
  if (v5 != v9)
  {
    v7 = [(HUPCImageContentController *)self contentImageView];
    [v7 setImage:v9];

    v8 = [(HUPCImageContentController *)self isViewLoaded];
    v6 = v9;
    if (v8)
    {
      [(HUPCImageContentController *)self _viewDidUpdateContent];
      v6 = v9;
    }
  }
}

- (double)_contentAspectRatio
{
  v3 = [(HUPCImageContentController *)self contentImage];

  if (v3)
  {
    v4 = [(HUPCImageContentController *)self contentImage];
    [v4 size];
    v6 = v5;
    v7 = [(HUPCImageContentController *)self contentImage];
    [v7 size];
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
  v3 = [(HUPCImageContentController *)self contentImage];
  [v3 size];
  v5 = v4;
  [(UIImageView *)self->_contentImageView bounds];
  if (v5 > v6)
  {

    v12 = 1;
  }

  else
  {
    v7 = [(HUPCImageContentController *)self contentImage];
    [v7 size];
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