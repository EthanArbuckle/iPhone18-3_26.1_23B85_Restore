@interface MUPlaceReviewViewModel
- (MUPlaceReviewViewModel)initWithRatingSnippet:(id)a3 avatarGenerator:(id)a4;
- (void)loadUserIconWithPointSize:(CGSize)a3 completion:(id)a4;
@end

@implementation MUPlaceReviewViewModel

- (void)loadUserIconWithPointSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  p_ratingSnippet = &self->_ratingSnippet;
  ratingSnippet = self->_ratingSnippet;
  v9 = p_ratingSnippet[1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MUPlaceReviewViewModel_loadUserIconWithPointSize_completion___block_invoke;
  v12[3] = &unk_1E821A640;
  v13 = v7;
  v11 = v7;
  [(MKMapItemProviderRatingSnippet *)v9 avatarForReview:ratingSnippet pointSize:v12 completion:width, height];
}

void __63__MUPlaceReviewViewModel_loadUserIconWithPointSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MUPlaceReviewViewModel_loadUserIconWithPointSize_completion___block_invoke_2;
  v6[3] = &unk_1E821A618;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (MUPlaceReviewViewModel)initWithRatingSnippet:(id)a3 avatarGenerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUPlaceReviewViewModel;
  v9 = [(MUPlaceReviewViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ratingSnippet, a3);
    objc_storeStrong(&v10->_avatarGenerator, a4);
  }

  return v10;
}

@end