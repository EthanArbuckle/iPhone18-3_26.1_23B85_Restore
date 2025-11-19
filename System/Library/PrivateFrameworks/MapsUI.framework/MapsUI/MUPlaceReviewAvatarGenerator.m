@interface MUPlaceReviewAvatarGenerator
- (MUPlaceReviewAvatarGenerator)init;
- (void)avatarForReview:(id)a3 pointSize:(CGSize)a4 completion:(id)a5;
- (void)monogramForReviewerName:(id)a3 pointSize:(CGSize)a4 completion:(id)a5;
@end

@implementation MUPlaceReviewAvatarGenerator

- (void)avatarForReview:(id)a3 pointSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [v9 _reviewerImageURL];
  if (v11)
  {
    objc_initWeak(&location, self);
    v12 = [MEMORY[0x1E696F190] sharedImageManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__MUPlaceReviewAvatarGenerator_avatarForReview_pointSize_completion___block_invoke;
    v14[3] = &unk_1E821A150;
    objc_copyWeak(v17, &location);
    v15 = v9;
    v17[1] = *&width;
    v17[2] = *&height;
    v16 = v10;
    [v12 loadAppImageAtURL:v11 completionHandler:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [v9 _reviewerName];
    [(MUPlaceReviewAvatarGenerator *)self monogramForReviewerName:v13 pointSize:v10 completion:width, height];
  }
}

void __69__MUPlaceReviewAvatarGenerator_avatarForReview_pointSize_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v9 || a5)
    {
      v8 = [*(a1 + 32) _reviewerName];
      [WeakRetained monogramForReviewerName:v8 pointSize:*(a1 + 40) completion:{*(a1 + 56), *(a1 + 64)}];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)monogramForReviewerName:(id)a3 pointSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v12 = [v9 componentsSeparatedByCharactersInSet:v11];

  if ([v12 count])
  {
    v13 = 0;
    v14 = &stru_1F44CA030;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v13];
      if ([v15 length])
      {
        v16 = [v15 substringWithRange:{0, 1}];
        v17 = [(__CFString *)v14 stringByAppendingString:v16];

        v14 = v17;
      }

      v18 = v13 + 1;
      v19 = [v12 count];
      if (v19 >= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      v13 = 1;
    }

    while (v18 < v20);
  }

  else
  {
    v14 = &stru_1F44CA030;
  }

  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __77__MUPlaceReviewAvatarGenerator_monogramForReviewerName_pointSize_completion___block_invoke;
  v24[3] = &unk_1E821A128;
  objc_copyWeak(v27, &location);
  v27[1] = *&width;
  v27[2] = *&height;
  v25 = v14;
  v26 = v10;
  v22 = v10;
  v23 = v14;
  dispatch_async(workQueue, v24);

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
}

void __77__MUPlaceReviewAvatarGenerator_monogramForReviewerName_pointSize_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained monogrammer];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695D098]);
      [v3 setMonogrammer:v5];
    }

    if ([*(a1 + 32) length])
    {
      v6 = MEMORY[0x1E695D0B0];
      v7 = [MEMORY[0x1E696F3B8] sharedInstance];
      [v7 screenScale];
      v9 = [v6 scopeWithPointSize:0 scale:0 rightToLeft:*(a1 + 56) style:{*(a1 + 64), v8}];

      v10 = [v3 monogrammer];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__MUPlaceReviewAvatarGenerator_monogramForReviewerName_pointSize_completion___block_invoke_2;
      v17[3] = &unk_1E821A640;
      v11 = *(a1 + 32);
      v18 = *(a1 + 40);
      v12 = [v10 renderMonogramForString:v11 scope:v9 imageHandler:v17];
    }

    else
    {
      v13 = [v3 monogrammer];
      v14 = [v13 placeholderImageProvider];
      v15 = [MEMORY[0x1E696F3B8] sharedInstance];
      [v15 screenScale];
      v9 = [v14 imageForSize:*(a1 + 56) scale:{*(a1 + 64), v16}];

      (*(*(a1 + 40) + 16))();
    }
  }
}

- (MUPlaceReviewAvatarGenerator)init
{
  v6.receiver = self;
  v6.super_class = MUPlaceReviewAvatarGenerator;
  v2 = [(MUPlaceReviewAvatarGenerator *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MapsUI.monogram", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;
  }

  return v2;
}

@end