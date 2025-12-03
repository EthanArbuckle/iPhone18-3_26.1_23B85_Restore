@interface MUPlaceReviewViewModel
- (MUPlaceReviewViewModel)initWithRatingSnippet:(id)snippet avatarGenerator:(id)generator;
- (void)loadUserIconWithPointSize:(CGSize)size completion:(id)completion;
@end

@implementation MUPlaceReviewViewModel

- (void)loadUserIconWithPointSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  p_ratingSnippet = &self->_ratingSnippet;
  ratingSnippet = self->_ratingSnippet;
  v9 = p_ratingSnippet[1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__MUPlaceReviewViewModel_loadUserIconWithPointSize_completion___block_invoke;
  v12[3] = &unk_1E821A640;
  v13 = completionCopy;
  v11 = completionCopy;
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

- (MUPlaceReviewViewModel)initWithRatingSnippet:(id)snippet avatarGenerator:(id)generator
{
  snippetCopy = snippet;
  generatorCopy = generator;
  v12.receiver = self;
  v12.super_class = MUPlaceReviewViewModel;
  v9 = [(MUPlaceReviewViewModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ratingSnippet, snippet);
    objc_storeStrong(&v10->_avatarGenerator, generator);
  }

  return v10;
}

@end