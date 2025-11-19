@interface MUPhotoTileView
- (CGSize)targetFrameSize;
- (MUPhotoTileView)initWithFrame:(CGRect)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateOverlay;
- (void)setPhotoOverlay:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUPhotoTileView

- (CGSize)targetFrameSize
{
  width = self->_targetFrameSize.width;
  height = self->_targetFrameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateAppearance
{
  [(MUImageView *)self->_imageView setImage:0];
  v3 = self->_viewModel;
  [(MUPhotoTileView *)self targetFrameSize];
  v6 = v5;
  v7 = v4;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  if (v5 == *MEMORY[0x1E695F060] && v4 == v9)
  {
    [(MUPhotoTileView *)self frame];
    v6 = v11;
    v7 = v12;
  }

  if (v6 != v8 || v7 != v9)
  {
    objc_initWeak(&location, self);
    viewModel = self->_viewModel;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __36__MUPhotoTileView__updateAppearance__block_invoke;
    v15[3] = &unk_1E82196F8;
    objc_copyWeak(&v17, &location);
    v16 = v3;
    [(MUPhotoTileViewModel *)viewModel configureWithSize:v15 imageProvider:v6, v7];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __36__MUPhotoTileView__updateAppearance__block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 59) == *(a1 + 32))
  {
    v8 = *(WeakRetained + 51);
    if (v9)
    {
      [v8 setImage:v9 animated:a4 ^ 1u];
    }

    else
    {
      [v8 setImage:?];
    }
  }
}

- (void)_updateOverlay
{
  v3 = [(MUPhotoTileOverlay *)self->_photoOverlay tileTitle];
  [(UILabel *)self->_titleLabel setText:v3];

  v4 = [(MUPhotoTileOverlay *)self->_photoOverlay attributionTitle];
  [(MUBadgeView *)self->_vendorBadge setBadgeString:v4];

  v5 = [(UILabel *)self->_titleLabel text];
  -[MUGradientView setHidden:](self->_titleGradientView, "setHidden:", [v5 length] == 0);

  v6 = [(MUBadgeView *)self->_vendorBadge badgeString];
  -[MUBadgeView setHidden:](self->_vendorBadge, "setHidden:", [v6 length] == 0);
}

- (void)setPhotoOverlay:(id)a3
{
  v5 = a3;
  if (([(MUPhotoTileOverlay *)self->_photoOverlay isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_photoOverlay, a3);
    [(MUPhotoTileView *)self _updateOverlay];
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MUPhotoTileViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUPhotoTileView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v53[16] = *MEMORY[0x1E69E9840];
  v34 = MEMORY[0x1E696ACD8];
  v52 = [(MUImageView *)self->_imageView leadingAnchor];
  v51 = [(MUPhotoTileView *)self leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v53[0] = v50;
  v49 = [(MUImageView *)self->_imageView trailingAnchor];
  v48 = [(MUPhotoTileView *)self trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v53[1] = v47;
  v46 = [(MUImageView *)self->_imageView topAnchor];
  v45 = [(MUPhotoTileView *)self topAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v53[2] = v44;
  v43 = [(MUImageView *)self->_imageView bottomAnchor];
  v42 = [(MUPhotoTileView *)self bottomAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v53[3] = v41;
  v40 = [(MUGradientView *)self->_titleGradientView leadingAnchor];
  v39 = [(MUPhotoTileView *)self leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v53[4] = v38;
  v37 = [(MUGradientView *)self->_titleGradientView topAnchor];
  v36 = [(MUPhotoTileView *)self topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v53[5] = v35;
  v33 = [(MUGradientView *)self->_titleGradientView trailingAnchor];
  v32 = [(MUPhotoTileView *)self trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v53[6] = v31;
  v30 = [(MUGradientView *)self->_titleGradientView heightAnchor];
  v29 = [v30 constraintEqualToConstant:90.0];
  v53[7] = v29;
  v28 = [(UILabel *)self->_titleLabel leadingAnchor];
  v27 = [(MUGradientView *)self->_titleGradientView leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:16.0];
  v53[8] = v26;
  v25 = [(UILabel *)self->_titleLabel topAnchor];
  v24 = [(MUGradientView *)self->_titleGradientView topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:12.0];
  v53[9] = v23;
  v22 = [(UILabel *)self->_titleLabel trailingAnchor];
  v21 = [(MUGradientView *)self->_titleGradientView trailingAnchor];
  v20 = [v22 constraintLessThanOrEqualToAnchor:v21 constant:-16.0];
  v53[10] = v20;
  v19 = [(UILabel *)self->_titleLabel bottomAnchor];
  v18 = [(MUGradientView *)self->_titleGradientView bottomAnchor];
  v17 = [v19 constraintLessThanOrEqualToAnchor:v18 constant:-16.0];
  v53[11] = v17;
  v16 = [(MUBadgeView *)self->_vendorBadge topAnchor];
  v15 = [(MUGradientView *)self->_titleGradientView bottomAnchor];
  v14 = [v16 constraintGreaterThanOrEqualToAnchor:v15 constant:8.0];
  v53[12] = v14;
  v3 = [(MUBadgeView *)self->_vendorBadge leadingAnchor];
  v4 = [(MUPhotoTileView *)self leadingAnchor];
  v5 = [v3 constraintGreaterThanOrEqualToAnchor:v4 constant:10.0];
  v53[13] = v5;
  v6 = [(MUBadgeView *)self->_vendorBadge bottomAnchor];
  v7 = [(MUPhotoTileView *)self bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:-12.0];
  v53[14] = v8;
  v9 = [(MUBadgeView *)self->_vendorBadge trailingAnchor];
  v10 = [(MUPhotoTileView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-14.0];
  v53[15] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:16];
  [v34 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v37[3] = *MEMORY[0x1E69E9840];
  v3 = [MUImageView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(MUImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  imageView = self->_imageView;
  self->_imageView = v8;

  [(MUImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUImageView *)self->_imageView setClipsToBounds:1];
  v10 = +[MUInfoCardStyle punchoutButtonPlatterColor];
  [(MUImageView *)self->_imageView setBackgroundColor:v10];

  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.fill.on.rectangle.fill"];
  [(MUImageView *)self->_imageView setFallbackImage:v11];

  [(UIView *)self->_imageView _mapsui_setCardCorner];
  [(MUPhotoTileView *)self addSubview:self->_imageView];
  v12 = [(_MKGradientView *)[MUGradientView alloc] initWithFrame:v4, v5, v6, v7];
  titleGradientView = self->_titleGradientView;
  self->_titleGradientView = v12;

  [(MUGradientView *)self->_titleGradientView setClipsToBounds:1];
  [(MUGradientView *)self->_titleGradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(MUGradientView *)self->_titleGradientView layer];
  [v14 setMaskedCorners:3];

  [(UIView *)self->_titleGradientView _mapsui_setCardCorner];
  [(MUGradientView *)self->_titleGradientView setUserInteractionEnabled:0];
  [(_MKGradientView *)self->_titleGradientView setStartPoint:0.5, 0.0];
  [(_MKGradientView *)self->_titleGradientView setEndPoint:0.5, 1.0];
  v15 = [MEMORY[0x1E69DC888] blackColor];
  v16 = [v15 colorWithAlphaComponent:0.38];

  v17 = [MEMORY[0x1E69DC888] blackColor];
  v18 = [v17 colorWithAlphaComponent:0.38];

  v19 = [MEMORY[0x1E69DC888] blackColor];
  v20 = [v19 colorWithAlphaComponent:0.0];

  v37[0] = v16;
  v37[1] = v18;
  v37[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  [(_MKGradientView *)self->_titleGradientView setColors:v21];

  v36[0] = &unk_1F450E218;
  v36[1] = &unk_1F450E228;
  v36[2] = &unk_1F450E238;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  [(_MKGradientView *)self->_titleGradientView setLocations:v22];

  [(MUPhotoTileView *)self addSubview:self->_titleGradientView];
  v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v23;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:v25];

  v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v27 = [v26 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(UILabel *)self->_titleLabel setFont:v27];

  v28 = [MEMORY[0x1E69DC888] blackColor];
  v29 = [v28 CGColor];
  v30 = [(UILabel *)self->_titleLabel layer];
  [v30 setShadowColor:v29];

  v31 = [(UILabel *)self->_titleLabel layer];
  [v31 setShadowOffset:{0.0, 4.0}];

  v32 = [(UILabel *)self->_titleLabel layer];
  [v32 setShadowRadius:8.0];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"PhotoTileTitle"];
  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(MUGradientView *)self->_titleGradientView addSubview:self->_titleLabel];
  v33 = [[MUBadgeView alloc] initWithFrame:v4, v5, v6, v7];
  vendorBadge = self->_vendorBadge;
  self->_vendorBadge = v33;

  [(MUBadgeView *)self->_vendorBadge setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUBadgeView *)self->_vendorBadge setAccessibilityIdentifier:@"PhotoTileVendorBadge"];
  [(MUBadgeView *)self->_vendorBadge setOverrideUserInterfaceStyle:2];
  [(MUPhotoTileView *)self addSubview:self->_vendorBadge];
  [(UIView *)self _mapsui_setCardCorner];

  v35 = *MEMORY[0x1E69E9840];
}

- (MUPhotoTileView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUPhotoTileView;
  v3 = [(MUPhotoTileView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPhotoTileView *)v3 _setupSubviews];
    [(MUPhotoTileView *)v4 _setupConstraints];
    [(MUPhotoTileView *)v4 setAccessibilityIdentifier:@"PhotoTile"];
  }

  return v4;
}

@end