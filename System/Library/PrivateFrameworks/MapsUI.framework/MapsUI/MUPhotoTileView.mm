@interface MUPhotoTileView
- (CGSize)targetFrameSize;
- (MUPhotoTileView)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateOverlay;
- (void)setPhotoOverlay:(id)overlay;
- (void)setViewModel:(id)model;
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
  tileTitle = [(MUPhotoTileOverlay *)self->_photoOverlay tileTitle];
  [(UILabel *)self->_titleLabel setText:tileTitle];

  attributionTitle = [(MUPhotoTileOverlay *)self->_photoOverlay attributionTitle];
  [(MUBadgeView *)self->_vendorBadge setBadgeString:attributionTitle];

  text = [(UILabel *)self->_titleLabel text];
  -[MUGradientView setHidden:](self->_titleGradientView, "setHidden:", [text length] == 0);

  badgeString = [(MUBadgeView *)self->_vendorBadge badgeString];
  -[MUBadgeView setHidden:](self->_vendorBadge, "setHidden:", [badgeString length] == 0);
}

- (void)setPhotoOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (([(MUPhotoTileOverlay *)self->_photoOverlay isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_photoOverlay, overlay);
    [(MUPhotoTileView *)self _updateOverlay];
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (([(MUPhotoTileViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPhotoTileView *)self _updateAppearance];
  }
}

- (void)_setupConstraints
{
  v53[16] = *MEMORY[0x1E69E9840];
  v34 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MUImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(MUPhotoTileView *)self leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v50;
  trailingAnchor = [(MUImageView *)self->_imageView trailingAnchor];
  trailingAnchor2 = [(MUPhotoTileView *)self trailingAnchor];
  v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[1] = v47;
  topAnchor = [(MUImageView *)self->_imageView topAnchor];
  topAnchor2 = [(MUPhotoTileView *)self topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v53[2] = v44;
  bottomAnchor = [(MUImageView *)self->_imageView bottomAnchor];
  bottomAnchor2 = [(MUPhotoTileView *)self bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v53[3] = v41;
  leadingAnchor3 = [(MUGradientView *)self->_titleGradientView leadingAnchor];
  leadingAnchor4 = [(MUPhotoTileView *)self leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v53[4] = v38;
  topAnchor3 = [(MUGradientView *)self->_titleGradientView topAnchor];
  topAnchor4 = [(MUPhotoTileView *)self topAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v53[5] = v35;
  trailingAnchor3 = [(MUGradientView *)self->_titleGradientView trailingAnchor];
  trailingAnchor4 = [(MUPhotoTileView *)self trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v53[6] = v31;
  heightAnchor = [(MUGradientView *)self->_titleGradientView heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:90.0];
  v53[7] = v29;
  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor6 = [(MUGradientView *)self->_titleGradientView leadingAnchor];
  v26 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v53[8] = v26;
  topAnchor5 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor6 = [(MUGradientView *)self->_titleGradientView topAnchor];
  v23 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:12.0];
  v53[9] = v23;
  trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor6 = [(MUGradientView *)self->_titleGradientView trailingAnchor];
  v20 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-16.0];
  v53[10] = v20;
  bottomAnchor3 = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor4 = [(MUGradientView *)self->_titleGradientView bottomAnchor];
  v17 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-16.0];
  v53[11] = v17;
  topAnchor7 = [(MUBadgeView *)self->_vendorBadge topAnchor];
  bottomAnchor5 = [(MUGradientView *)self->_titleGradientView bottomAnchor];
  v14 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:bottomAnchor5 constant:8.0];
  v53[12] = v14;
  leadingAnchor7 = [(MUBadgeView *)self->_vendorBadge leadingAnchor];
  leadingAnchor8 = [(MUPhotoTileView *)self leadingAnchor];
  v5 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:leadingAnchor8 constant:10.0];
  v53[13] = v5;
  bottomAnchor6 = [(MUBadgeView *)self->_vendorBadge bottomAnchor];
  bottomAnchor7 = [(MUPhotoTileView *)self bottomAnchor];
  v8 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7 constant:-12.0];
  v53[14] = v8;
  trailingAnchor7 = [(MUBadgeView *)self->_vendorBadge trailingAnchor];
  trailingAnchor8 = [(MUPhotoTileView *)self trailingAnchor];
  v11 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-14.0];
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
  layer = [(MUGradientView *)self->_titleGradientView layer];
  [layer setMaskedCorners:3];

  [(UIView *)self->_titleGradientView _mapsui_setCardCorner];
  [(MUGradientView *)self->_titleGradientView setUserInteractionEnabled:0];
  [(_MKGradientView *)self->_titleGradientView setStartPoint:0.5, 0.0];
  [(_MKGradientView *)self->_titleGradientView setEndPoint:0.5, 1.0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v16 = [blackColor colorWithAlphaComponent:0.38];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  v18 = [blackColor2 colorWithAlphaComponent:0.38];

  blackColor3 = [MEMORY[0x1E69DC888] blackColor];
  v20 = [blackColor3 colorWithAlphaComponent:0.0];

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
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_titleLabel setTextColor:whiteColor];

  v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v27 = [v26 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  [(UILabel *)self->_titleLabel setFont:v27];

  blackColor4 = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor4 CGColor];
  layer2 = [(UILabel *)self->_titleLabel layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [(UILabel *)self->_titleLabel layer];
  [layer3 setShadowOffset:{0.0, 4.0}];

  layer4 = [(UILabel *)self->_titleLabel layer];
  [layer4 setShadowRadius:8.0];

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

- (MUPhotoTileView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPhotoTileView;
  v3 = [(MUPhotoTileView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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