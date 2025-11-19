@interface CKBrowserSwitcherCell
- (CKBrowserSwitcherCell)initWithFrame:(CGRect)a3;
- (void)_handleBrowserSnapshotDidChange:(id)a3;
- (void)_updateSnapshotView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBrowserSnapshotView:(id)a3;
- (void)setPlugin:(id)a3 withSnapshotCacheKey:(id)a4;
- (void)setSnapshotCacheKey:(id)a3;
- (void)showExtensionInterruptedViewWithDisplayName:(id)a3;
@end

@implementation CKBrowserSwitcherCell

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBrowserSwitcherCell;
  [(CKBrowserSwitcherCell *)&v4 dealloc];
}

- (CKBrowserSwitcherCell)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKBrowserSwitcherCell;
  v3 = [(CKBrowserSwitcherCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__handleBrowserSnapshotDidChange_ name:@"CKBalloonPluginManagerSnapshotsDidChange" object:0];

    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 browserBackgroundColor];
    [(CKBrowserSwitcherCell *)v3 setBackgroundColor:v7];
  }

  return v3;
}

- (void)setPlugin:(id)a3 withSnapshotCacheKey:(id)a4
{
  v6 = a4;
  [(CKBrowserSwitcherCell *)self setPlugin:a3];
  [(CKBrowserSwitcherCell *)self setSnapshotCacheKey:v6];
}

- (void)setSnapshotCacheKey:(id)a3
{
  v5 = a3;
  snapshotCacheKey = self->_snapshotCacheKey;
  if (snapshotCacheKey != v5)
  {
    v8 = v5;
    v7 = [(CKSnapshotCacheKey *)snapshotCacheKey isEqual:v5];
    v5 = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_snapshotCacheKey, a3);
      v5 = v8;
      if (self->_snapshotCacheKey)
      {
        [(CKBrowserSwitcherCell *)self _updateSnapshotView];
        v5 = v8;
      }
    }
  }
}

- (void)setBrowserSnapshotView:(id)a3
{
  v5 = a3;
  browserSnapshotView = self->_browserSnapshotView;
  if (browserSnapshotView != v5)
  {
    v8 = v5;
    v7 = [(UIView *)browserSnapshotView superview];

    if (v7 == self)
    {
      [(UIView *)self->_browserSnapshotView removeFromSuperview];
    }

    objc_storeStrong(&self->_browserSnapshotView, a3);
    [(CKBrowserSwitcherCell *)self addSubview:self->_browserSnapshotView];
    [(CKBrowserSwitcherCell *)self setNeedsLayout];
    [(CKBrowserSwitcherCell *)self layoutIfNeeded];
    v5 = v8;
  }
}

- (void)showExtensionInterruptedViewWithDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherCell *)self extensionInterruptedView];

  if (v5)
  {
    v6 = [(CKBrowserSwitcherCell *)self extensionInterruptedView];
    [v6 removeFromSuperview];
  }

  v7 = [(CKBrowserSwitcherCell *)self browserSnapshotView];

  if (v7)
  {
    v8 = [(CKBrowserSwitcherCell *)self browserSnapshotView];
    [v8 removeFromSuperview];

    [(CKBrowserSwitcherCell *)self setBrowserSnapshotView:0];
  }

  [(CKBrowserSwitcherCell *)self bounds];
  v10 = v9 + -50.0;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 chatChromeBottomInset];
  v13 = (v10 - v12) * 0.5;

  v14 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(CKBrowserSwitcherCell *)self bounds];
  v25 = [v14 initWithFrame:{0.0, v13}];
  v15 = MEMORY[0x1E696AEC0];
  v16 = CKFrameworkBundle();
  v17 = [v16 localizedStringForKey:@"MESSAGES_EXTENSION_CRASHED_SWITCHER" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [v15 stringWithFormat:v17, v4];

  v19 = [MEMORY[0x1E69DC668] sharedApplication];
  v20 = [v19 userInterfaceLayoutDirection];

  if (v20 == 1)
  {
    v21 = @"\u200F";
  }

  else
  {
    v21 = @"\u200E";
  }

  v22 = [(__CFString *)v21 stringByAppendingString:v18];

  [v25 setText:v22];
  [v25 setTextAlignment:1];
  v23 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CKBrowserSwitcherCell *)self bounds];
  v24 = [v23 initWithFrame:?];
  [v24 addSubview:v25];
  [(CKBrowserSwitcherCell *)self setExtensionInterruptedView:v24];
  [(CKBrowserSwitcherCell *)self addSubview:v24];
  [(CKBrowserSwitcherCell *)self setNeedsLayout];
  [(CKBrowserSwitcherCell *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKBrowserSwitcherCell;
  [(CKBrowserSwitcherCell *)&v4 layoutSubviews];
  v3 = [(CKBrowserSwitcherCell *)self browserSnapshotView];
  [(CKBrowserSwitcherCell *)self bounds];
  [v3 setFrame:?];
}

- (void)_updateSnapshotView
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [(CKBrowserSwitcherCell *)self balloonPluginManager];
  v4 = [(CKBrowserSwitcherCell *)self snapshotCacheKey];
  v5 = [v3 browserSnapshotForKey:v4];

  [(CKBrowserSwitcherCell *)self setUsingFallbackSnapshot:v5 == 0];
  if ([(CKBrowserSwitcherCell *)self isUsingFallbackSnapshot])
  {
    v6 = [(CKBrowserSwitcherCell *)self plugin];
    v7 = [(CKBrowserSwitcherCell *)self traitCollection];
    v8 = [v6 __ck_browserImageForInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];

    v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
    v10 = objc_alloc(MEMORY[0x1E69DD250]);
    v11 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    [(CKBrowserSwitcherCell *)self bounds];
    v13 = [v10 initWithFrame:{v11, v12}];

    [v13 addSubview:v9];
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 appIconSize];
    v16 = v15;
    v18 = v17;
    [(CKBrowserSwitcherCell *)self bounds];
    v20 = v19;
    [(CKBrowserSwitcherCell *)self bounds];
    v22 = v21;
    if (CKMainScreenScale_once_73 != -1)
    {
      [CKBrowserSwitcherCell _updateSnapshotView];
    }

    v23 = *&CKMainScreenScale_sMainScreenScale_73;
    if (*&CKMainScreenScale_sMainScreenScale_73 == 0.0)
    {
      v23 = 1.0;
    }

    v24 = floor(((v20 - v16) * 0.5 + 0.0) * v23) / v23;
    v25 = floor(((v22 - v18) * 0.5 + 0.0) * v23) / v23;

    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 chatChromeBottomInset];
    v28 = v25 - v27 * 0.5;

    [v9 setFrame:{v24, v28, v16, v18}];
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [(CKBrowserSwitcherCell *)self plugin];
      v31 = 138412546;
      v32 = v13;
      v33 = 2112;
      v34 = v30;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Using fallback snapshot %@ for current plugin: %@", &v31, 0x16u);
    }
  }

  else
  {
    v13 = v5;
  }

  [(CKBrowserSwitcherCell *)self setBrowserSnapshotView:v13];
}

- (void)_handleBrowserSnapshotDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CKBrowserSwitcherCell__handleBrowserSnapshotDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end