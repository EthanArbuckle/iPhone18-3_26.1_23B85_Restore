@interface HUCameraStatusOverlayView
- (HUCameraStatusOverlayView)initWithFrame:(CGRect)a3;
- (UIImageView)alertBadge;
- (id)_chevronImage;
- (id)_exclamationImage;
- (void)layoutSubviews;
- (void)setBadgeStatus:(unint64_t)a3;
- (void)setStatusColor:(id)a3;
- (void)setStatusImageName:(id)a3;
- (void)setStatusString:(id)a3;
- (void)updateStatusForPlaybackEngine:(id)a3;
- (void)updateStatusLabelBounds;
@end

@implementation HUCameraStatusOverlayView

- (HUCameraStatusOverlayView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = HUCameraStatusOverlayView;
  v3 = [(HUCameraStatusOverlayView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D760A8] sharedInstanceForStyle:0];
    v5 = [HULegibilityLabel alloc];
    v6 = *MEMORY[0x277D774E0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v8 = [(HULegibilityLabel *)v5 initWithSettings:v4 strength:&stru_2823E0EE8 text:v7 font:*MEMORY[0x277D77500] options:v6];
    statusLabel = v3->_statusLabel;
    v3->_statusLabel = v8;

    [(HUCameraStatusOverlayView *)v3 addSubview:v3->_statusLabel];
    v10 = [(HUCameraStatusOverlayView *)v3 alertBadge];
    [(HUCameraStatusOverlayView *)v3 addSubview:v10];

    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 12.0, 12.0}];
    statusIndicatorImageView = v3->_statusIndicatorImageView;
    v3->_statusIndicatorImageView = v11;

    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    v15 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    [v15 setShadowOffset:{v13, v14}];

    v16 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    [v16 setShadowRadius:8.0];

    v17 = [MEMORY[0x277D75348] systemBlackColor];
    v18 = [v17 CGColor];
    v19 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    [v19 setShadowColor:v18];

    v20 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    LODWORD(v21) = 1061997773;
    [v20 setShadowOpacity:v21];

    [(UIImageView *)v3->_statusIndicatorImageView setContentMode:1];
    [(HUCameraStatusOverlayView *)v3 addSubview:v3->_statusIndicatorImageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v72.receiver = self;
  v72.super_class = HUCameraStatusOverlayView;
  [(HUCameraStatusOverlayView *)&v72 layoutSubviews];
  [(HUCameraStatusOverlayView *)self updateStatusLabelBounds];
  [(HUCameraStatusOverlayView *)self bounds];
  MidX = CGRectGetMidX(v73);
  v4 = [(HUCameraStatusOverlayView *)self statusLabel];
  [v4 center];

  v5 = [(HUCameraStatusOverlayView *)self alertBadge];
  v6 = [v5 isHidden];

  if (v6)
  {
    v7 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v7 frame];
    v8 = (CGRectGetWidth(v74) + 10.0) * 0.5;

    v9 = [(HUCameraStatusOverlayView *)self traitCollection];
    v10 = [v9 layoutDirection];

    v11 = -v8;
    if (!v10)
    {
      v11 = v8;
    }

    MidX = MidX + v11;
  }

  [(HUCameraStatusOverlayView *)self bounds];
  MidY = CGRectGetMidY(v75);
  v13 = [(HUCameraStatusOverlayView *)self statusLabel];
  [v13 setCenter:{MidX, MidY}];

  v14 = [(HUCameraStatusOverlayView *)self traitCollection];
  v15 = [v14 layoutDirection];

  if (v15)
  {
    v16 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(HUCameraStatusOverlayView *)self statusLabel];
    [v23 frame];
    v25 = v24 - (v20 + 7.0);

    v26 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v26 setFrame:{v25, v18, v20, v22}];

    v27 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v27 center];
    v29 = v28;

    v30 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v30 setCenter:{v29, MidY}];

    v31 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v31 frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [(HUCameraStatusOverlayView *)self statusLabel];
    [v38 frame];
    v39 = CGRectGetMaxX(v76) + 10.0;

    v40 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v40 setFrame:{v39, v33, v35, v37}];

    v41 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v41 center];
    v43 = v42;

    [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
  }

  else
  {
    v44 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v44 frame];
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v51 = [(HUCameraStatusOverlayView *)self statusLabel];
    [v51 frame];
    v53 = v52 - (v48 + 10.0);

    v54 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v54 setFrame:{v53, v46, v48, v50}];

    v55 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v55 center];
    v57 = v56;

    v58 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v58 setCenter:{v57, MidY}];

    v59 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v59 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = [(HUCameraStatusOverlayView *)self statusLabel];
    [v66 frame];
    v67 = CGRectGetMaxX(v77) + 7.0;

    v68 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v68 setFrame:{v67, v61, v63, v65}];

    v69 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v69 center];
    v43 = v70;

    [(HUCameraStatusOverlayView *)self alertBadge];
  }
  v71 = ;
  [v71 setCenter:{v43, MidY}];
}

- (void)updateStatusForPlaybackEngine:(id)a3
{
  v11 = a3;
  v4 = [v11 playbackError];

  v5 = [v11 cameraProfile];
  v6 = [v5 accessory];
  v7 = [v6 name];
  [(HUCameraStatusOverlayView *)self setStatusString:v7];

  if (v4)
  {
    v8 = [v11 cameraProfile];
    v9 = [v8 hf_shouldDisableLiveStream];

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  [(HUCameraStatusOverlayView *)self setBadgeStatus:v10];
}

- (void)setStatusString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_statusString isEqualToString:?])
  {
    objc_storeStrong(&self->_statusString, a3);
    v5 = [(HUCameraStatusOverlayView *)self statusLabel];
    [v5 setText:v6];

    [(HUCameraStatusOverlayView *)self setNeedsLayout];
  }
}

- (void)setStatusColor:(id)a3
{
  v6 = a3;
  if (([(UIColor *)self->_statusColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_statusColor, a3);
    v5 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v5 setTintColor:v6];
  }
}

- (void)setStatusImageName:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_statusImageName isEqualToString:?])
  {
    objc_storeStrong(&self->_statusImageName, a3);
    v5 = [MEMORY[0x277D755B8] systemImageNamed:v7];
    v6 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [v6 setImage:v5];
  }
}

- (void)setBadgeStatus:(unint64_t)a3
{
  if (a3 == 2)
  {
    v9 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v9 setHidden:0];

    v10 = [(HUCameraStatusOverlayView *)self _exclamationImage];
    v11 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v11 setImage:v10];

    v8 = [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = [(HUCameraStatusOverlayView *)self isDisplayingForSingleCamera];
    v5 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v5 setHidden:v4];

    v6 = [(HUCameraStatusOverlayView *)self _chevronImage];
    v7 = [(HUCameraStatusOverlayView *)self alertBadge];
    [v7 setImage:v6];

    v8 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  v12 = v8;
  v13 = [(HUCameraStatusOverlayView *)self alertBadge];
  [v13 setTintColor:v12];

LABEL_6:
  v14 = [(HUCameraStatusOverlayView *)self alertBadge];
  [v14 sizeToFit];

  [(HUCameraStatusOverlayView *)self setNeedsLayout];
}

- (void)updateStatusLabelBounds
{
  v3 = [(HUCameraStatusOverlayView *)self statusLabel];
  [v3 sizeToFit];

  [(HUCameraStatusOverlayView *)self bounds];
  v5 = v4;
  v6 = [(HUCameraStatusOverlayView *)self alertBadge];
  [v6 bounds];
  v8 = v7 + 17.0;
  v9 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
  [v9 bounds];
  v11 = v5 - (v8 + v10);

  if (v11 > 0.0)
  {
    v12 = [(HUCameraStatusOverlayView *)self statusLabel];
    [v12 bounds];
    v14 = v13;

    if (v14 > v11)
    {
      v15 = [(HUCameraStatusOverlayView *)self statusLabel];
      [v15 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = [(HUCameraStatusOverlayView *)self statusLabel];
      [v22 setBounds:{v17, v19, v11, v21}];
    }
  }
}

- (UIImageView)alertBadge
{
  alertBadge = self->_alertBadge;
  if (!alertBadge)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [(HUCameraStatusOverlayView *)self _chevronImage];
    v6 = [v4 initWithImage:v5];

    v7 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIImageView *)v6 setTintColor:v7];

    [(UIImageView *)v6 setContentMode:1];
    v8 = self->_alertBadge;
    self->_alertBadge = v6;

    alertBadge = self->_alertBadge;
  }

  return alertBadge;
}

- (id)_exclamationImage
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"exclamationmark.circle.fill"];
  v3 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:v3];

  return v4;
}

- (id)_chevronImage
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"chevron.down"];
  v3 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:v3];

  return v4;
}

@end