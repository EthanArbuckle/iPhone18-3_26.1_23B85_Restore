@interface SUUIReviewsFacebookViewController
- (SUUIReviewsFacebookViewControllerDelegate)delegate;
- (void)_changeStatusToUserLiked:(BOOL)liked;
- (void)_reloadFacebookView;
- (void)_toggleLike:(id)like;
- (void)dealloc;
- (void)loadView;
- (void)setFacebookLikeStatus:(id)status;
@end

@implementation SUUIReviewsFacebookViewController

- (void)dealloc
{
  likeToggleButton = [(SUUIReviewsFacebookView *)self->_facebookView likeToggleButton];
  [likeToggleButton removeTarget:self action:0 forControlEvents:4095];

  v4.receiver = self;
  v4.super_class = SUUIReviewsFacebookViewController;
  [(SUUIReviewsFacebookViewController *)&v4 dealloc];
}

- (void)setFacebookLikeStatus:(id)status
{
  if (self->_facebookLikeStatus != status)
  {
    v4 = [status copy];
    facebookLikeStatus = self->_facebookLikeStatus;
    self->_facebookLikeStatus = v4;

    [(SUUIReviewsFacebookViewController *)self _reloadFacebookView];
  }
}

- (void)loadView
{
  facebookView = self->_facebookView;
  if (!facebookView)
  {
    v4 = [[SUUIReviewsFacebookView alloc] initWithClientContext:self->_clientContext];
    v5 = self->_facebookView;
    self->_facebookView = v4;

    likeToggleButton = [(SUUIReviewsFacebookView *)self->_facebookView likeToggleButton];
    [likeToggleButton addTarget:self action:sel__toggleLike_ forControlEvents:64];

    [(SUUIReviewsFacebookViewController *)self _reloadFacebookView];
    facebookView = self->_facebookView;
  }

  [(SUUIReviewsFacebookViewController *)self setView:facebookView];
}

- (void)_toggleLike:(id)like
{
  likeCopy = like;
  isUserLiked = [(SUUIFacebookLikeStatus *)self->_facebookLikeStatus isUserLiked];
  v6 = isUserLiked;
  v7 = !isUserLiked;
  [(SUUIReviewsFacebookViewController *)self _changeStatusToUserLiked:v7];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__SUUIReviewsFacebookViewController__toggleLike___block_invoke;
  aBlock[3] = &unk_2798F88A0;
  objc_copyWeak(&v16, &location);
  v17 = v7;
  v8 = _Block_copy(aBlock);
  v9 = SUUISocialFramework();
  v10 = [SUUIWeakLinkedClassForString(&cfstr_Slfacebooksess.isa v9)];
  [(SUUIFacebookLikeStatus *)self->_facebookLikeStatus URL];
  if (v6)
    v11 = {;
    [v10 unlikeURL:v11 completion:v8];
  }

  else
    v11 = {;
    [v10 likeURL:v11 completion:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 reviewsFacebookViewControllerDidChange:self];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __49__SUUIReviewsFacebookViewController__toggleLike___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __49__SUUIReviewsFacebookViewController__toggleLike___block_invoke_2;
    v3[3] = &unk_2798F8878;
    objc_copyWeak(&v4, (a1 + 32));
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v3);
    objc_destroyWeak(&v4);
  }
}

void __49__SUUIReviewsFacebookViewController__toggleLike___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeStatusToUserLiked:(*(a1 + 40) & 1) == 0];
}

- (void)_changeStatusToUserLiked:(BOOL)liked
{
  likedCopy = liked;
  v5 = [(SUUIFacebookLikeStatus *)self->_facebookLikeStatus copy];
  [v5 setUserLiked:likedCopy];
  [(SUUIReviewsFacebookViewController *)self setFacebookLikeStatus:v5];
}

- (void)_reloadFacebookView
{
  facebookView = self->_facebookView;
  friendNames = [(SUUIFacebookLikeStatus *)self->_facebookLikeStatus friendNames];
  [(SUUIReviewsFacebookView *)facebookView setFriendNames:friendNames];

  v5 = self->_facebookView;
  isUserLiked = [(SUUIFacebookLikeStatus *)self->_facebookLikeStatus isUserLiked];

  [(SUUIReviewsFacebookView *)v5 setUserLiked:isUserLiked];
}

- (SUUIReviewsFacebookViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end