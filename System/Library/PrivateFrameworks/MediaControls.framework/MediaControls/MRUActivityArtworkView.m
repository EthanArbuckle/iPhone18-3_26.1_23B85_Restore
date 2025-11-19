@interface MRUActivityArtworkView
- (MRUActivityArtworkView)init;
- (void)layoutSubviews;
- (void)setAdjustsImageWhenHighlighted:(BOOL)a3;
- (void)setAdjustsImageWhenLoading:(BOOL)a3;
- (void)setArtworkImage:(id)a3;
- (void)setCurrentImage:(id)a3 animated:(BOOL)a4;
- (void)setEmpty:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemIdentifier:(id)a3;
- (void)setLoading:(BOOL)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)transitionToImage:(id)a3;
- (void)updatePackageAlphaAnimated:(BOOL)a3;
- (void)updatePackageState;
@end

@implementation MRUActivityArtworkView

- (MRUActivityArtworkView)init
{
  v13.receiver = self;
  v13.super_class = MRUActivityArtworkView;
  v2 = [(MRUActivityArtworkView *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentState = 0;
    v4 = objc_alloc_init(MEMORY[0x1E6997250]);
    packageView = v3->_packageView;
    v3->_packageView = v4;

    [(CCUICAPackageView *)v3->_packageView setUserInteractionEnabled:0];
    v6 = [MRUAssetsProvider packageDescriptionWithName:@"ActivityArtwork"];
    [(CCUICAPackageView *)v3->_packageView setPackageDescription:v6];

    v3->_loading = 1;
    v3->_adjustsImageWhenLoading = 0;
    v7 = +[MRUAssetsProvider emptyArtwork];
    emptyImage = v3->_emptyImage;
    v3->_emptyImage = v7;

    [(MRUActivityArtworkView *)v3 setCurrentImage:0 animated:0];
    v9 = [(MRUArtworkView *)v3 artworkImageView];
    [v9 removeFromSuperview];

    v10 = [(MRUArtworkView *)v3 placeholderBackground];
    [v10 removeFromSuperview];

    v11 = [(MRUArtworkView *)v3 placeholderImageView];
    [v11 removeFromSuperview];

    [(MRUActivityArtworkView *)v3 addSubview:v3->_packageView];
    [(MRUActivityArtworkView *)v3 updatePackageAlphaAnimated:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v9 layoutSubviews];
  [(MRUActivityArtworkView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v7 = CGRectGetWidth(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v8 = CGRectGetHeight(v11);
  if (v7 >= v8)
  {
    v7 = v8;
  }

  UIRectCenteredRect();
  [(CCUICAPackageView *)self->_packageView setFrame:?];
  [(CCUICAPackageView *)self->_packageView setScale:v7 / 20.0];
}

- (void)setOnScreen:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_onScreen != a3)
  {
    v3 = a3;
    self->_onScreen = a3;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%{public}@ - set onScreen to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUActivityArtworkView *)self updatePackageState];
  }
}

- (void)setPlaying:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_playing != a3)
  {
    v3 = a3;
    self->_playing = a3;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%{public}@ - set playing to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUActivityArtworkView *)self updatePackageState];
  }
}

- (void)setLoading:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_loading != a3)
  {
    v3 = a3;
    self->_loading = a3;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      v7 = self;
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%{public}@ - set loading to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:self->_onScreen];
  }
}

- (void)setAdjustsImageWhenLoading:(BOOL)a3
{
  if (self->_adjustsImageWhenLoading != a3)
  {
    self->_adjustsImageWhenLoading = a3;
    [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:self->_onScreen];
  }
}

- (void)setAdjustsImageWhenHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v4 setAdjustsImageWhenHighlighted:a3];
  [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:self->_onScreen];
}

- (void)setArtworkImage:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MRUArtworkView *)self style]== 10)
  {
    v5 = [(MRUArtworkView *)self artworkImage];
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 == 0;
    }

    v7 = !v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = MCLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_INFO, "%{public}@ - Artwork will change to nil. Marking needsTransition", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v21 setArtworkImage:v4];
  loading = self->_loading;
  [(MRUActivityArtworkView *)self setLoading:v4 == 0];
  v10 = self->_artworkIdentifier;
  v11 = [(MRUArtworkView *)self imageLoader];
  v12 = [v11 lastVendedArtworkIdentifier];
  v13 = [v12 stringRepresentation];
  artworkIdentifier = self->_artworkIdentifier;
  self->_artworkIdentifier = v13;

  v15 = self->_artworkIdentifier;
  v16 = v10;
  v17 = v16;
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = [(NSString *)v16 isEqual:v15]^ 1;
  }

  if (v7 & 1) != 0 || (self->_currentItemHasChangedSinceArtworkLastSet & v18)
  {
    v19 = MCLogCategoryDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Transitioning to new image: %{public}@", buf, 0x16u);
    }

    [(MRUActivityArtworkView *)self transitionToImage:v4];
  }

  else
  {
    [(MRUActivityArtworkView *)self updatePackageState];
    v20 = MCLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v4;
      v26 = 1024;
      v27 = !loading;
      _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - Changing image: %{public}@, animated=%{BOOL}u", buf, 0x1Cu);
    }

    [(MRUActivityArtworkView *)self setCurrentImage:v4 animated:!loading];
  }
}

- (void)setItemIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_itemIdentifier != v4 && ([(NSString *)v4 isEqual:?]& 1) == 0)
  {
    v6 = MCLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_INFO, "%{public}@ - Item identifier changed to: %{public}@. Marking needsTransition", &v9, 0x16u);
    }

    v7 = [(NSString *)v5 copy];
    itemIdentifier = self->_itemIdentifier;
    self->_itemIdentifier = v7;

    self->_currentItemHasChangedSinceArtworkLastSet = 1;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v6 setHighlighted:?];
  v5 = !a3 && self->_onScreen;
  [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:v5];
}

- (void)setEmpty:(BOOL)a3
{
  if (self->_empty != a3)
  {
    self->_empty = a3;
    [(MRUActivityArtworkView *)self setCurrentImage:0 animated:1];

    [(MRUActivityArtworkView *)self updatePackageState];
  }
}

- (void)setCurrentImage:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    [(MRUActivityArtworkView *)self setEmpty:0];
    [(NSTimer *)self->_emptyTimer invalidate];
    emptyTimer = self->_emptyTimer;
    self->_emptyTimer = 0;
  }

  else if (!self->_emptyTimer)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E695DFF0];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __51__MRUActivityArtworkView_setCurrentImage_animated___block_invoke;
    v48[3] = &unk_1E7663C90;
    objc_copyWeak(&v49, &location);
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v48 block:5.0];
    v10 = self->_emptyTimer;
    self->_emptyTimer = v9;

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  if (self->_empty)
  {
    v11 = self->_emptyImage;

    v6 = v11;
  }

  if (self->_currentState)
  {
    v12 = @"albumart-back";
  }

  else
  {
    v12 = @"albumart-front";
  }

  packageView = self->_packageView;
  v14 = v12;
  v15 = [(CCUICAPackageView *)packageView package];
  v16 = [v15 publishedObjectWithName:v14];

  v17 = [v16 superlayer];
  v18 = [v17 superlayer];
  [v18 bounds];

  [(UIImage *)v6 size];
  [MRUArtworkView artworkFrameForSize:"artworkFrameForSize:availableBounds:" availableBounds:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(MRUArtworkView *)self style];
  [(UIImage *)v6 size];
  v30 = MRUArtworkCornerRadius(v27, v28, v29);
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __51__MRUActivityArtworkView_setCurrentImage_animated___block_invoke_2;
  v39 = &unk_1E7663CB8;
  v31 = v17;
  v40 = v31;
  v43 = v20;
  v44 = v22;
  v45 = v24;
  v46 = v26;
  v47 = v30;
  v32 = v16;
  v41 = v32;
  v33 = v6;
  v42 = v33;
  v34 = _Block_copy(&v36);
  v35 = v34;
  if (a4)
  {
    v34[2](v34);
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v35[2](v35);
    [MEMORY[0x1E6979518] commit];
  }
}

void __51__MRUActivityArtworkView_setCurrentImage_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEmpty:1];
  [WeakRetained setEmptyTimer:0];
}

void __51__MRUActivityArtworkView_setCurrentImage_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 32) setCornerRadius:*(a1 + 88)];
  [*(a1 + 32) setCornerCurve:*MEMORY[0x1E69796E8]];
  v2 = [*(a1 + 48) CGImage];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);

    [v4 setContents:v3];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] grayColor];
    v5 = v6;
    [*(a1 + 40) setContents:{objc_msgSend(v6, "CGColor")}];
  }
}

- (void)transitionToImage:(id)a3
{
  self->_currentItemHasChangedSinceArtworkLastSet = 0;
  self->_currentState = self->_currentState == 0;
  [(MRUActivityArtworkView *)self setCurrentImage:a3 animated:0];

  [(MRUActivityArtworkView *)self updatePackageState];
}

- (void)updatePackageState
{
  v13 = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  if (self->_loading)
  {
    if (currentState)
    {
      v4 = @"back";
    }

    else
    {
      v4 = @"front";
    }

    if (self->_playing)
    {
      v5 = &stru_1F1445548;
    }

    else
    {
      v5 = @"-paused";
    }

    if (!self->_empty)
    {
      v5 = @"-loading";
    }
  }

  else
  {
    if (currentState)
    {
      v4 = @"back";
    }

    else
    {
      v4 = @"front";
    }

    if (self->_playing)
    {
      v5 = &stru_1F1445548;
    }

    else
    {
      v5 = @"-paused";
    }
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
  v7 = v6;
  if (v6 != self->_currentStateName && ([(NSString *)v6 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentStateName, v7);
    [(CCUICAPackageView *)self->_packageView setStateName:v7];
    v8 = MCLogCategoryDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_INFO, "%{public}@ - Changing package state to: %{public}@", buf, 0x16u);
    }
  }
}

- (void)updatePackageAlphaAnimated:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x1E69E9840];
  if ([(MRUArtworkView *)self adjustsImageWhenHighlighted])
  {
    v5 = [(MRUActivityArtworkView *)self isHighlighted];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MRUActivityArtworkView *)self adjustsImageWhenLoading];
  if (v6)
  {
    LOBYTE(v6) = [(MRUActivityArtworkView *)self isLoading];
  }

  if ((v5 | v6))
  {
    v7 = 0.2;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [(MRUActivityArtworkView *)self packageView];
  [v8 alpha];
  v10 = vabdd_f64(v9, v7);

  if (v10 > 2.22044605e-16)
  {
    v11 = MCLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138544386;
      v15 = self;
      v16 = 2048;
      v17 = v7;
      v18 = 1024;
      v19 = v3;
      v20 = 1024;
      v21 = [(MRUActivityArtworkView *)self isLoading];
      v22 = 1024;
      v23 = [(MRUActivityArtworkView *)self isHighlighted];
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_INFO, "%{public}@ - Changing package alpha to: %f animated:%{BOOL}u. highlighted:%{BOOL}u loading:%{BOOL}u", buf, 0x28u);
    }

    if (v3)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__MRUActivityArtworkView_updatePackageAlphaAnimated___block_invoke;
      v13[3] = &unk_1E7663CE0;
      v13[4] = self;
      *&v13[5] = v7;
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v13 options:0 animations:0.25 completion:0.0];
    }

    else
    {
      v12 = [(MRUActivityArtworkView *)self packageView];
      [v12 setAlpha:v7];
    }
  }
}

void __53__MRUActivityArtworkView_updatePackageAlphaAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) packageView];
  [v2 setAlpha:v1];
}

@end