@interface HUNCCameraPlayerPlaceholderContentViewController
- (HUNCCameraPlayerPlaceholderContentViewController)initWithImageURL:(id)a3;
- (UIImage)notificationImage;
- (UIImageView)placeholderImageView;
- (void)updatePlaceholderImage:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUNCCameraPlayerPlaceholderContentViewController

- (HUNCCameraPlayerPlaceholderContentViewController)initWithImageURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUNCCameraPlayerPlaceholderContentViewController;
  v6 = [(HUNCCameraPlayerPlaceholderContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageURL, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HUNCCameraPlayerPlaceholderContentViewController;
  [(HUNCCameraPlayerPlaceholderContentViewController *)&v15 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  [v5 setUserInteractionEnabled:0];

  v6 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  v7 = [(HUNCCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  [v6 addSubview:v7];

  v8 = [(HUNCCameraPlayerPlaceholderContentViewController *)self notificationImage];
  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Displaying placeholder image using URL:%@", buf, 0xCu);
    }

    [(HUNCCameraPlayerPlaceholderContentViewController *)self updatePlaceholderImage:v8];
  }

  v11 = MEMORY[0x277CCAAD0];
  v12 = [(HUNCCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  v13 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  v14 = [v11 hu_constraintsSizingAnchorProvider:v12 toAnchorProvider:v13];
  [v11 activateConstraints:v14];
}

- (void)updatePlaceholderImage:(id)a3
{
  v4 = a3;
  v5 = [(HUNCCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  [v5 setImage:v4];
}

- (UIImageView)placeholderImageView
{
  placeholderImageView = self->_placeholderImageView;
  if (!placeholderImageView)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(UIImageView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_placeholderImageView;
    self->_placeholderImageView = v4;
    v6 = v4;

    [(UIImageView *)self->_placeholderImageView setContentMode:1];
    placeholderImageView = self->_placeholderImageView;
  }

  return placeholderImageView;
}

- (UIImage)notificationImage
{
  notificationImage = self->_notificationImage;
  if (!notificationImage)
  {
    v4 = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
    [v4 startAccessingSecurityScopedResource];

    v5 = MEMORY[0x277CBEA90];
    v6 = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
    v7 = [v5 dataWithContentsOfURL:v6];

    v8 = [MEMORY[0x277D755B8] imageWithData:v7];
    v9 = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
    [v9 stopAccessingSecurityScopedResource];

    v10 = self->_notificationImage;
    self->_notificationImage = v8;

    notificationImage = self->_notificationImage;
  }

  return notificationImage;
}

@end