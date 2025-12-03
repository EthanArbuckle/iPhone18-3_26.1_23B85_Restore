@interface CKPendingMomentSharePhotoStackBalloonView
- (CKPendingMomentSharePhotoStackBalloonView)initWithFrame:(CGRect)frame;
- (id)_createStackView;
- (void)configureForMessagePart:(id)part;
- (void)handleTap:(id)tap;
- (void)prepareForDisplay;
@end

@implementation CKPendingMomentSharePhotoStackBalloonView

- (CKPendingMomentSharePhotoStackBalloonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKPendingMomentSharePhotoStackBalloonView;
  v3 = [(CKBalloonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel_handleTap_];
    [(CKPendingMomentSharePhotoStackBalloonView *)v3 addGestureRecognizer:v4];
  }

  return v3;
}

- (void)prepareForDisplay
{
  v8.receiver = self;
  v8.super_class = CKPendingMomentSharePhotoStackBalloonView;
  [(CKGenericPhotoStackBalloonView *)&v8 prepareForDisplay];
  dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  momentShare = [dataSourceManager momentShare];
  v5 = momentShare;
  if (momentShare)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__CKPendingMomentSharePhotoStackBalloonView_prepareForDisplay__block_invoke;
    v6[3] = &unk_1E72EF818;
    v6[4] = self;
    v7 = momentShare;
    [v7 forceSyncMomentShareWithCompletion:v6];
  }
}

void __62__CKPendingMomentSharePhotoStackBalloonView_prepareForDisplay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__CKPendingMomentSharePhotoStackBalloonView_prepareForDisplay__block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __62__CKPendingMomentSharePhotoStackBalloonView_prepareForDisplay__block_invoke_cold_2(a1, v5);
  }
}

- (id)_createStackView
{
  v4.receiver = self;
  v4.super_class = CKPendingMomentSharePhotoStackBalloonView;
  _createStackView = [(CKGenericPhotoStackBalloonView *)&v4 _createStackView];
  [_createStackView setUserInteractionEnabled:0];
  if (objc_opt_respondsToSelector())
  {
    [_createStackView setProvidesLoadingAppearanceAndBehavior:1];
  }

  return _createStackView;
}

- (void)handleTap:(id)tap
{
  delegate = [(CKBalloonView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didTapPendingMomentSharePhotoStackBalloonView:self];
  }
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v14.receiver = self;
  v14.super_class = CKPendingMomentSharePhotoStackBalloonView;
  [(CKBalloonView *)&v14 configureForMessagePart:partCopy];
  mediaProvider = [(CKGenericPhotoStackBalloonView *)self mediaProvider];
  if (!mediaProvider)
  {
    v6 = objc_alloc_init(CKPendingMomentShareImageProvider);
    [(CKGenericPhotoStackBalloonView *)self setMediaProvider:v6];
  }

  message = [partCopy message];
  v8 = IMCoreMomentShareURLForMessage();
  dataSourceManager = [(CKGenericPhotoStackBalloonView *)self dataSourceManager];
  v10 = dataSourceManager;
  if (!dataSourceManager || ([dataSourceManager momentShareURL], v11 = objc_claimAutoreleasedReturnValue(), v12 = CKIsEqual(v11, v8), v11, (v12 & 1) == 0))
  {
    v13 = [[CKMomentSharePreviewAssetsDataSourceManager alloc] initWithMomentShareURL:v8];
    [(CKGenericPhotoStackBalloonView *)self setDataSourceManager:v13];
  }
}

void __62__CKPendingMomentSharePhotoStackBalloonView_prepareForDisplay__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v7 = 134218498;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "<%p> Failed to force sync moment share: %{public}@, error: %@", &v7, 0x20u);
}

void __62__CKPendingMomentSharePhotoStackBalloonView_prepareForDisplay__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uuid];
  v5 = 134218242;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_debug_impl(&dword_19020E000, a2, OS_LOG_TYPE_DEBUG, "<%p> Did force sync moment share: %{public}@", &v5, 0x16u);
}

@end