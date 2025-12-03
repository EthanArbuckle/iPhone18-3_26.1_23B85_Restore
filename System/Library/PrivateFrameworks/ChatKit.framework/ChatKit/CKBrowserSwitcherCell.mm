@interface CKBrowserSwitcherCell
- (CKBrowserSwitcherCell)initWithFrame:(CGRect)frame;
- (void)_handleBrowserSnapshotDidChange:(id)change;
- (void)_updateSnapshotView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBrowserSnapshotView:(id)view;
- (void)setPlugin:(id)plugin withSnapshotCacheKey:(id)key;
- (void)setSnapshotCacheKey:(id)key;
- (void)showExtensionInterruptedViewWithDisplayName:(id)name;
@end

@implementation CKBrowserSwitcherCell

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKBrowserSwitcherCell;
  [(CKBrowserSwitcherCell *)&v4 dealloc];
}

- (CKBrowserSwitcherCell)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKBrowserSwitcherCell;
  v3 = [(CKBrowserSwitcherCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleBrowserSnapshotDidChange_ name:@"CKBalloonPluginManagerSnapshotsDidChange" object:0];

    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    browserBackgroundColor = [theme browserBackgroundColor];
    [(CKBrowserSwitcherCell *)v3 setBackgroundColor:browserBackgroundColor];
  }

  return v3;
}

- (void)setPlugin:(id)plugin withSnapshotCacheKey:(id)key
{
  keyCopy = key;
  [(CKBrowserSwitcherCell *)self setPlugin:plugin];
  [(CKBrowserSwitcherCell *)self setSnapshotCacheKey:keyCopy];
}

- (void)setSnapshotCacheKey:(id)key
{
  keyCopy = key;
  snapshotCacheKey = self->_snapshotCacheKey;
  if (snapshotCacheKey != keyCopy)
  {
    v8 = keyCopy;
    v7 = [(CKSnapshotCacheKey *)snapshotCacheKey isEqual:keyCopy];
    keyCopy = v8;
    if (!v7)
    {
      objc_storeStrong(&self->_snapshotCacheKey, key);
      keyCopy = v8;
      if (self->_snapshotCacheKey)
      {
        [(CKBrowserSwitcherCell *)self _updateSnapshotView];
        keyCopy = v8;
      }
    }
  }
}

- (void)setBrowserSnapshotView:(id)view
{
  viewCopy = view;
  browserSnapshotView = self->_browserSnapshotView;
  if (browserSnapshotView != viewCopy)
  {
    v8 = viewCopy;
    superview = [(UIView *)browserSnapshotView superview];

    if (superview == self)
    {
      [(UIView *)self->_browserSnapshotView removeFromSuperview];
    }

    objc_storeStrong(&self->_browserSnapshotView, view);
    [(CKBrowserSwitcherCell *)self addSubview:self->_browserSnapshotView];
    [(CKBrowserSwitcherCell *)self setNeedsLayout];
    [(CKBrowserSwitcherCell *)self layoutIfNeeded];
    viewCopy = v8;
  }
}

- (void)showExtensionInterruptedViewWithDisplayName:(id)name
{
  nameCopy = name;
  extensionInterruptedView = [(CKBrowserSwitcherCell *)self extensionInterruptedView];

  if (extensionInterruptedView)
  {
    extensionInterruptedView2 = [(CKBrowserSwitcherCell *)self extensionInterruptedView];
    [extensionInterruptedView2 removeFromSuperview];
  }

  browserSnapshotView = [(CKBrowserSwitcherCell *)self browserSnapshotView];

  if (browserSnapshotView)
  {
    browserSnapshotView2 = [(CKBrowserSwitcherCell *)self browserSnapshotView];
    [browserSnapshotView2 removeFromSuperview];

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
  nameCopy = [v15 stringWithFormat:v17, nameCopy];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v21 = @"\u200F";
  }

  else
  {
    v21 = @"\u200E";
  }

  v22 = [(__CFString *)v21 stringByAppendingString:nameCopy];

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
  browserSnapshotView = [(CKBrowserSwitcherCell *)self browserSnapshotView];
  [(CKBrowserSwitcherCell *)self bounds];
  [browserSnapshotView setFrame:?];
}

- (void)_updateSnapshotView
{
  v35 = *MEMORY[0x1E69E9840];
  balloonPluginManager = [(CKBrowserSwitcherCell *)self balloonPluginManager];
  snapshotCacheKey = [(CKBrowserSwitcherCell *)self snapshotCacheKey];
  v5 = [balloonPluginManager browserSnapshotForKey:snapshotCacheKey];

  [(CKBrowserSwitcherCell *)self setUsingFallbackSnapshot:v5 == 0];
  if ([(CKBrowserSwitcherCell *)self isUsingFallbackSnapshot])
  {
    plugin = [(CKBrowserSwitcherCell *)self plugin];
    traitCollection = [(CKBrowserSwitcherCell *)self traitCollection];
    v8 = [plugin __ck_browserImageForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

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
      plugin2 = [(CKBrowserSwitcherCell *)self plugin];
      v31 = 138412546;
      v32 = v13;
      v33 = 2112;
      v34 = plugin2;
      _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Using fallback snapshot %@ for current plugin: %@", &v31, 0x16u);
    }
  }

  else
  {
    v13 = v5;
  }

  [(CKBrowserSwitcherCell *)self setBrowserSnapshotView:v13];
}

- (void)_handleBrowserSnapshotDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CKBrowserSwitcherCell__handleBrowserSnapshotDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end