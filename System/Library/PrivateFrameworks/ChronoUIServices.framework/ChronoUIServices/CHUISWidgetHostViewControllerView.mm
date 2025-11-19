@interface CHUISWidgetHostViewControllerView
- (CGSize)intrinsicContentSize;
- (CHUISWidgetHostViewController)parentController;
- (double)_currentDisplayScale;
- (id)accessibilityHUDRepresentation;
- (void)setFrame:(CGRect)a3;
@end

@implementation CHUISWidgetHostViewControllerView

- (double)_currentDisplayScale
{
  BSDispatchQueueAssertMain();
  v3 = [(CHUISWidgetHostViewControllerView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  return v5;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v9 = [WeakRetained metrics];

  [(CHUISWidgetHostViewControllerView *)self _currentDisplayScale];
  [v9 _effectiveSizePixelAlignedForDisplayScale:?];
  v12 = width == v11 && height == v10;
  if (v12 || (v13 = objc_loadWeakRetained(&self->_parentController), v14 = [v13 metricsDefineSize], v13, (v14 & 1) == 0))
  {
    v25.receiver = self;
    v25.super_class = CHUISWidgetHostViewControllerView;
    [(CHUISWidgetHostViewControllerView *)&v25 setFrame:x, y, width, height];
    v18 = CHUISLogViewController();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_loadWeakRetained(&self->_parentController);
      v20 = [v19 _cachedSceneLogDigest];
      v33.width = width;
      v33.height = height;
      v21 = NSStringFromCGSize(v33);
      *buf = 134218498;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_1D928E000, v18, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Changing frame to %@", buf, 0x20u);
    }

    v22 = objc_loadWeakRetained(&self->_parentController);
    [v22 setPreferredContentSize:{width, height}];

    v15 = objc_loadWeakRetained(&self->_parentController);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __46__CHUISWidgetHostViewControllerView_setFrame___block_invoke;
    v24[3] = &__block_descriptor_64_e78___UIApplicationSceneTransitionContext_16__0__CHUISMutableWidgetSceneSettings_8l;
    *&v24[4] = x;
    *&v24[5] = y;
    *&v24[6] = width;
    *&v24[7] = height;
    [v15 modifySceneSettings:v24];
  }

  else
  {
    v15 = CHUISLogViewController();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_loadWeakRetained(&self->_parentController);
      v17 = [v16 _cachedSceneLogDigest];
      *buf = 134218242;
      v27 = v16;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&dword_1D928E000, v15, OS_LOG_TYPE_DEFAULT, "[%p-%{public}@] Eating frame change in view because not configured to change the frame.", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

id __46__CHUISWidgetHostViewControllerView_setFrame___block_invoke(uint64_t a1, void *a2)
{
  [a2 setFrame:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  if ([MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled])
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DC6A0]);
    v3 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    [v2 setAnimationFence:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CHUISWidgetHostViewControllerView *)self parentController];
  v4 = [v3 metricsDefineSize];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentController);
    v6 = [WeakRetained metrics];

    [(CHUISWidgetHostViewControllerView *)self _currentDisplayScale];
    [v6 _effectiveSizePixelAlignedForDisplayScale:?];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CHUISWidgetHostViewControllerView;
    [(CHUISWidgetHostViewControllerView *)&v15 intrinsicContentSize];
    v8 = v11;
    v10 = v12;
  }

  v13 = v8;
  v14 = v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (id)accessibilityHUDRepresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v4 = [WeakRetained _snapshotViewIgnoringEffects:1];

  [v4 setAutoresizingMask:18];
  [v4 setContentMode:1];
  v5 = [(CHUISWidgetHostViewControllerView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = objc_alloc(MEMORY[0x1E698E810]);
  if (v6 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v7 initWithEffectType:0 backgroundType:v8 color:0];
  v10 = objc_alloc(MEMORY[0x1E698E818]);
  [v4 bounds];
  v11 = [v10 initWithFrame:?];
  [v11 setConfiguration:v9];
  v12 = [v11 contentView];
  [v12 addSubview:v4];

  v13 = [objc_alloc(MEMORY[0x1E69DC618]) initWithCustomView:v11];

  return v13;
}

- (CHUISWidgetHostViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

@end