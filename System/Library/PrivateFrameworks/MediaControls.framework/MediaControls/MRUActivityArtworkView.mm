@interface MRUActivityArtworkView
- (MRUActivityArtworkView)init;
- (void)layoutSubviews;
- (void)setAdjustsImageWhenHighlighted:(BOOL)highlighted;
- (void)setAdjustsImageWhenLoading:(BOOL)loading;
- (void)setArtworkImage:(id)image;
- (void)setCurrentImage:(id)image animated:(BOOL)animated;
- (void)setEmpty:(BOOL)empty;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setItemIdentifier:(id)identifier;
- (void)setLoading:(BOOL)loading;
- (void)setOnScreen:(BOOL)screen;
- (void)setPlaying:(BOOL)playing;
- (void)transitionToImage:(id)image;
- (void)updatePackageAlphaAnimated:(BOOL)animated;
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
    artworkImageView = [(MRUArtworkView *)v3 artworkImageView];
    [artworkImageView removeFromSuperview];

    placeholderBackground = [(MRUArtworkView *)v3 placeholderBackground];
    [placeholderBackground removeFromSuperview];

    placeholderImageView = [(MRUArtworkView *)v3 placeholderImageView];
    [placeholderImageView removeFromSuperview];

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

- (void)setOnScreen:(BOOL)screen
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 1024;
      v9 = screenCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%{public}@ - set onScreen to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUActivityArtworkView *)self updatePackageState];
  }
}

- (void)setPlaying:(BOOL)playing
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_playing != playing)
  {
    playingCopy = playing;
    self->_playing = playing;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 1024;
      v9 = playingCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%{public}@ - set playing to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUActivityArtworkView *)self updatePackageState];
  }
}

- (void)setLoading:(BOOL)loading
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_loading != loading)
  {
    loadingCopy = loading;
    self->_loading = loading;
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 1024;
      v9 = loadingCopy;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_INFO, "%{public}@ - set loading to: %{BOOL}u", &v6, 0x12u);
    }

    [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:self->_onScreen];
  }
}

- (void)setAdjustsImageWhenLoading:(BOOL)loading
{
  if (self->_adjustsImageWhenLoading != loading)
  {
    self->_adjustsImageWhenLoading = loading;
    [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:self->_onScreen];
  }
}

- (void)setAdjustsImageWhenHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v4 setAdjustsImageWhenHighlighted:highlighted];
  [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:self->_onScreen];
}

- (void)setArtworkImage:(id)image
{
  v28 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if ([(MRUArtworkView *)self style]== 10)
  {
    artworkImage = [(MRUArtworkView *)self artworkImage];
    if (imageCopy)
    {
      v6 = 1;
    }

    else
    {
      v6 = artworkImage == 0;
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
    selfCopy3 = self;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_INFO, "%{public}@ - Artwork will change to nil. Marking needsTransition", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v21 setArtworkImage:imageCopy];
  loading = self->_loading;
  [(MRUActivityArtworkView *)self setLoading:imageCopy == 0];
  v10 = self->_artworkIdentifier;
  imageLoader = [(MRUArtworkView *)self imageLoader];
  lastVendedArtworkIdentifier = [imageLoader lastVendedArtworkIdentifier];
  stringRepresentation = [lastVendedArtworkIdentifier stringRepresentation];
  artworkIdentifier = self->_artworkIdentifier;
  self->_artworkIdentifier = stringRepresentation;

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
      selfCopy3 = self;
      v24 = 2114;
      v25 = imageCopy;
      _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Transitioning to new image: %{public}@", buf, 0x16u);
    }

    [(MRUActivityArtworkView *)self transitionToImage:imageCopy];
  }

  else
  {
    [(MRUActivityArtworkView *)self updatePackageState];
    v20 = MCLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v24 = 2114;
      v25 = imageCopy;
      v26 = 1024;
      v27 = !loading;
      _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - Changing image: %{public}@, animated=%{BOOL}u", buf, 0x1Cu);
    }

    [(MRUActivityArtworkView *)self setCurrentImage:imageCopy animated:!loading];
  }
}

- (void)setItemIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_itemIdentifier != identifierCopy && ([(NSString *)identifierCopy isEqual:?]& 1) == 0)
  {
    v6 = MCLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      selfCopy = self;
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

- (void)setHighlighted:(BOOL)highlighted
{
  v6.receiver = self;
  v6.super_class = MRUActivityArtworkView;
  [(MRUArtworkView *)&v6 setHighlighted:?];
  v5 = !highlighted && self->_onScreen;
  [(MRUActivityArtworkView *)self updatePackageAlphaAnimated:v5];
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_empty != empty)
  {
    self->_empty = empty;
    [(MRUActivityArtworkView *)self setCurrentImage:0 animated:1];

    [(MRUActivityArtworkView *)self updatePackageState];
  }
}

- (void)setCurrentImage:(id)image animated:(BOOL)animated
{
  imageCopy = image;
  if (imageCopy)
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

    imageCopy = v11;
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
  package = [(CCUICAPackageView *)packageView package];
  v16 = [package publishedObjectWithName:v14];

  superlayer = [v16 superlayer];
  v17Superlayer = [superlayer superlayer];
  [v17Superlayer bounds];

  [(UIImage *)imageCopy size];
  [MRUArtworkView artworkFrameForSize:"artworkFrameForSize:availableBounds:" availableBounds:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  style = [(MRUArtworkView *)self style];
  [(UIImage *)imageCopy size];
  v30 = MRUArtworkCornerRadius(style, v28, v29);
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __51__MRUActivityArtworkView_setCurrentImage_animated___block_invoke_2;
  v39 = &unk_1E7663CB8;
  v31 = superlayer;
  v40 = v31;
  v43 = v20;
  v44 = v22;
  v45 = v24;
  v46 = v26;
  v47 = v30;
  v32 = v16;
  v41 = v32;
  v33 = imageCopy;
  v42 = v33;
  v34 = _Block_copy(&v36);
  v35 = v34;
  if (animated)
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

- (void)transitionToImage:(id)image
{
  self->_currentItemHasChangedSinceArtworkLastSet = 0;
  self->_currentState = self->_currentState == 0;
  [(MRUActivityArtworkView *)self setCurrentImage:image animated:0];

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
      selfCopy = self;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_INFO, "%{public}@ - Changing package state to: %{public}@", buf, 0x16u);
    }
  }
}

- (void)updatePackageAlphaAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  if ([(MRUArtworkView *)self adjustsImageWhenHighlighted])
  {
    isHighlighted = [(MRUActivityArtworkView *)self isHighlighted];
  }

  else
  {
    isHighlighted = 0;
  }

  adjustsImageWhenLoading = [(MRUActivityArtworkView *)self adjustsImageWhenLoading];
  if (adjustsImageWhenLoading)
  {
    LOBYTE(adjustsImageWhenLoading) = [(MRUActivityArtworkView *)self isLoading];
  }

  if ((isHighlighted | adjustsImageWhenLoading))
  {
    v7 = 0.2;
  }

  else
  {
    v7 = 1.0;
  }

  packageView = [(MRUActivityArtworkView *)self packageView];
  [packageView alpha];
  v10 = vabdd_f64(v9, v7);

  if (v10 > 2.22044605e-16)
  {
    v11 = MCLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138544386;
      selfCopy = self;
      v16 = 2048;
      v17 = v7;
      v18 = 1024;
      v19 = animatedCopy;
      v20 = 1024;
      isLoading = [(MRUActivityArtworkView *)self isLoading];
      v22 = 1024;
      isHighlighted2 = [(MRUActivityArtworkView *)self isHighlighted];
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_INFO, "%{public}@ - Changing package alpha to: %f animated:%{BOOL}u. highlighted:%{BOOL}u loading:%{BOOL}u", buf, 0x28u);
    }

    if (animatedCopy)
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
      packageView2 = [(MRUActivityArtworkView *)self packageView];
      [packageView2 setAlpha:v7];
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