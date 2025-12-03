@interface CKCommSafetyImprovePhotoDetectionViewController
- (CKCommSafetyImprovePhotoDetectionViewController)initWithChatItem:(id)item;
- (id)configureImageFromChatItem:(id)item;
- (void)layoutImageView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKCommSafetyImprovePhotoDetectionViewController

- (CKCommSafetyImprovePhotoDetectionViewController)initWithChatItem:(id)item
{
  itemCopy = item;
  v5 = [(CKCommSafetyImprovePhotoDetectionViewController *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = [(CKCommSafetyImprovePhotoDetectionViewController *)v5 configureImageFromChatItem:itemCopy];
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    [(CKCommSafetyImprovePhotoDetectionViewController *)v6 setImageView:v8];

    imageView = [(CKCommSafetyImprovePhotoDetectionViewController *)v6 imageView];
    view = [(CKCommSafetyImprovePhotoDetectionViewController *)v6 view];
    [imageView __ck_makeEdgesEqualTo:view];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKCommSafetyImprovePhotoDetectionViewController;
  [(CKCommSafetyImprovePhotoDetectionViewController *)&v4 viewDidLoad];
  view = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [view addSubview:self->_imageView];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKCommSafetyImprovePhotoDetectionViewController;
  [(CKCommSafetyImprovePhotoDetectionViewController *)&v3 viewDidLayoutSubviews];
  [(CKCommSafetyImprovePhotoDetectionViewController *)self layoutImageView];
}

- (id)configureImageFromChatItem:(id)item
{
  v3 = MEMORY[0x1E69A5B80];
  itemCopy = item;
  sharedInstance = [v3 sharedInstance];
  transferGUID = [itemCopy transferGUID];

  v7 = [sharedInstance transferForGUID:transferGUID];

  localURL = [v7 localURL];
  v9 = MEMORY[0x1E69DCAB8];
  path = [localURL path];
  v11 = [v9 imageWithContentsOfFile:path];

  return v11;
}

- (void)layoutImageView
{
  [(UIImageView *)self->_imageView setContentMode:1];
  view = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [view bounds];
  v5 = v4;
  [(UIImageView *)self->_imageView bounds];
  v7 = v5 / v6;

  view2 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [view2 bounds];
  v10 = v9;
  [(UIImageView *)self->_imageView bounds];
  v12 = v10 / v11;

  if (v7 >= v12)
  {
    v7 = v12;
  }

  [(UIImageView *)self->_imageView bounds];
  v14 = v7 * v13;
  [(UIImageView *)self->_imageView bounds];
  v16 = v7 * v15;
  view3 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [view3 bounds];
  v19 = v18;
  view4 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [view4 bounds];
  v22 = v21;

  imageView = [(CKCommSafetyImprovePhotoDetectionViewController *)self imageView];
  [imageView setFrame:{v19, v22, v14, v16}];
}

@end