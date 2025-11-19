@interface CKCommSafetyImprovePhotoDetectionViewController
- (CKCommSafetyImprovePhotoDetectionViewController)initWithChatItem:(id)a3;
- (id)configureImageFromChatItem:(id)a3;
- (void)layoutImageView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKCommSafetyImprovePhotoDetectionViewController

- (CKCommSafetyImprovePhotoDetectionViewController)initWithChatItem:(id)a3
{
  v4 = a3;
  v5 = [(CKCommSafetyImprovePhotoDetectionViewController *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = [(CKCommSafetyImprovePhotoDetectionViewController *)v5 configureImageFromChatItem:v4];
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    [(CKCommSafetyImprovePhotoDetectionViewController *)v6 setImageView:v8];

    v9 = [(CKCommSafetyImprovePhotoDetectionViewController *)v6 imageView];
    v10 = [(CKCommSafetyImprovePhotoDetectionViewController *)v6 view];
    [v9 __ck_makeEdgesEqualTo:v10];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CKCommSafetyImprovePhotoDetectionViewController;
  [(CKCommSafetyImprovePhotoDetectionViewController *)&v4 viewDidLoad];
  v3 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [v3 addSubview:self->_imageView];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKCommSafetyImprovePhotoDetectionViewController;
  [(CKCommSafetyImprovePhotoDetectionViewController *)&v3 viewDidLayoutSubviews];
  [(CKCommSafetyImprovePhotoDetectionViewController *)self layoutImageView];
}

- (id)configureImageFromChatItem:(id)a3
{
  v3 = MEMORY[0x1E69A5B80];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v4 transferGUID];

  v7 = [v5 transferForGUID:v6];

  v8 = [v7 localURL];
  v9 = MEMORY[0x1E69DCAB8];
  v10 = [v8 path];
  v11 = [v9 imageWithContentsOfFile:v10];

  return v11;
}

- (void)layoutImageView
{
  [(UIImageView *)self->_imageView setContentMode:1];
  v3 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [v3 bounds];
  v5 = v4;
  [(UIImageView *)self->_imageView bounds];
  v7 = v5 / v6;

  v8 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [v8 bounds];
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
  v17 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [v17 bounds];
  v19 = v18;
  v20 = [(CKCommSafetyImprovePhotoDetectionViewController *)self view];
  [v20 bounds];
  v22 = v21;

  v23 = [(CKCommSafetyImprovePhotoDetectionViewController *)self imageView];
  [v23 setFrame:{v19, v22, v14, v16}];
}

@end