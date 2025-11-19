@interface HUImageOBWelcomeController
- (HUImageOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6;
- (HUImageOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentView:(id)a6;
- (UIImage)contentImage;
- (double)_contentAspectRatio;
- (void)_updateContentMode;
- (void)_viewDidUpdateContent;
- (void)setContentImage:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUImageOBWelcomeController

- (HUImageOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentImage:(id)a6
{
  v10 = MEMORY[0x277D755E8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v10 alloc] initWithImage:v11];

  v18.receiver = self;
  v18.super_class = HUImageOBWelcomeController;
  v16 = [(HUTopContentOBWelcomeController *)&v18 initWithTitle:v14 detailText:v13 icon:v12 contentView:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_contentImageView, v15);
    [(UIImageView *)v16->_contentImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v16;
}

- (HUImageOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentView:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentImage_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUImageOBWelcomeController.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HUImageOBWelcomeController initWithTitle:detailText:icon:contentView:]", v9}];

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
  v2 = [(HUImageOBWelcomeController *)self contentImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setContentImage:(id)a3
{
  v9 = a3;
  v4 = [(HUImageOBWelcomeController *)self contentImageView];
  v5 = [v4 image];

  v6 = v9;
  if (v5 != v9)
  {
    v7 = [(HUImageOBWelcomeController *)self contentImageView];
    [v7 setImage:v9];

    v8 = [(HUImageOBWelcomeController *)self isViewLoaded];
    v6 = v9;
    if (v8)
    {
      [(HUImageOBWelcomeController *)self _viewDidUpdateContent];
      v6 = v9;
    }
  }
}

- (double)_contentAspectRatio
{
  v3 = [(HUImageOBWelcomeController *)self contentImage];

  if (v3)
  {
    v4 = [(HUImageOBWelcomeController *)self contentImage];
    [v4 size];
    v6 = v5;
    v7 = [(HUImageOBWelcomeController *)self contentImage];
    [v7 size];
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
  v3 = [(HUImageOBWelcomeController *)self contentImage];
  [v3 size];
  v5 = v4;
  [(UIImageView *)self->_contentImageView bounds];
  if (v5 > v6)
  {

    v12 = 1;
  }

  else
  {
    v7 = [(HUImageOBWelcomeController *)self contentImage];
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