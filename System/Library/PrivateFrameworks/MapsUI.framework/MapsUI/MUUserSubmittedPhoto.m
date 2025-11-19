@interface MUUserSubmittedPhoto
- (MUUserSubmittedPhoto)initWithPhotoURL:(id)a3;
- (void)configureWithSize:(CGSize)a3 imageProvider:(id)a4;
@end

@implementation MUUserSubmittedPhoto

- (void)configureWithSize:(CGSize)a3 imageProvider:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [MEMORY[0x1E696F3B8] sharedInstance];
  [v8 screenScale];
  v10 = v9;

  v11 = [MEMORY[0x1E696F190] sharedImageManager];
  photoURL = self->_photoURL;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__MUUserSubmittedPhoto_configureWithSize_imageProvider___block_invoke;
  v14[3] = &unk_1E821A058;
  v15 = v7;
  v16 = width;
  v17 = height;
  v18 = v10;
  v13 = v7;
  [v11 loadAppImageAtURL:photoURL completionHandler:v14];
}

void __56__MUUserSubmittedPhoto_configureWithSize_imageProvider___block_invoke(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!a2 || a5)
  {
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 32) + 16);

    v11();
  }

  else
  {
    v8 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__MUUserSubmittedPhoto_configureWithSize_imageProvider___block_invoke_2;
    v12[3] = &unk_1E821A030;
    v9 = *(a1 + 32);
    v13 = 0;
    v14 = v9;
    v15 = a3;
    [MapsUIUtilities resizeImageIfNeeded:a2 toFrameSize:v12 displayScale:*(a1 + 40) completion:*(a1 + 48), v8];
  }
}

- (MUUserSubmittedPhoto)initWithPhotoURL:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MUUserSubmittedPhoto;
    v6 = [(MUUserSubmittedPhoto *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_photoURL, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end