@interface HUNCCameraPlayerPlaceholderContentViewController
- (HUNCCameraPlayerPlaceholderContentViewController)initWithImageURL:(id)l;
- (UIImage)notificationImage;
- (UIImageView)placeholderImageView;
- (void)updatePlaceholderImage:(id)image;
- (void)viewDidLoad;
@end

@implementation HUNCCameraPlayerPlaceholderContentViewController

- (HUNCCameraPlayerPlaceholderContentViewController)initWithImageURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = HUNCCameraPlayerPlaceholderContentViewController;
  v6 = [(HUNCCameraPlayerPlaceholderContentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageURL, l);
  }

  return v7;
}

- (void)viewDidLoad
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HUNCCameraPlayerPlaceholderContentViewController;
  [(HUNCCameraPlayerPlaceholderContentViewController *)&v15 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  [view setBackgroundColor:clearColor];

  view2 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  [view2 setUserInteractionEnabled:0];

  view3 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  placeholderImageView = [(HUNCCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  [view3 addSubview:placeholderImageView];

  notificationImage = [(HUNCCameraPlayerPlaceholderContentViewController *)self notificationImage];
  if (notificationImage)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      imageURL = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
      *buf = 138412290;
      v17 = imageURL;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "(NC) Displaying placeholder image using URL:%@", buf, 0xCu);
    }

    [(HUNCCameraPlayerPlaceholderContentViewController *)self updatePlaceholderImage:notificationImage];
  }

  v11 = MEMORY[0x277CCAAD0];
  placeholderImageView2 = [(HUNCCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  view4 = [(HUNCCameraPlayerPlaceholderContentViewController *)self view];
  v14 = [v11 hu_constraintsSizingAnchorProvider:placeholderImageView2 toAnchorProvider:view4];
  [v11 activateConstraints:v14];
}

- (void)updatePlaceholderImage:(id)image
{
  imageCopy = image;
  placeholderImageView = [(HUNCCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  [placeholderImageView setImage:imageCopy];
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
    imageURL = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
    [imageURL startAccessingSecurityScopedResource];

    v5 = MEMORY[0x277CBEA90];
    imageURL2 = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
    v7 = [v5 dataWithContentsOfURL:imageURL2];

    v8 = [MEMORY[0x277D755B8] imageWithData:v7];
    imageURL3 = [(HUNCCameraPlayerPlaceholderContentViewController *)self imageURL];
    [imageURL3 stopAccessingSecurityScopedResource];

    v10 = self->_notificationImage;
    self->_notificationImage = v8;

    notificationImage = self->_notificationImage;
  }

  return notificationImage;
}

@end