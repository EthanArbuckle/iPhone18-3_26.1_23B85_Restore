@interface HUCameraStatusOverlayView
- (HUCameraStatusOverlayView)initWithFrame:(CGRect)frame;
- (UIImageView)alertBadge;
- (id)_chevronImage;
- (id)_exclamationImage;
- (void)layoutSubviews;
- (void)setBadgeStatus:(unint64_t)status;
- (void)setStatusColor:(id)color;
- (void)setStatusImageName:(id)name;
- (void)setStatusString:(id)string;
- (void)updateStatusForPlaybackEngine:(id)engine;
- (void)updateStatusLabelBounds;
@end

@implementation HUCameraStatusOverlayView

- (HUCameraStatusOverlayView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = HUCameraStatusOverlayView;
  v3 = [(HUCameraStatusOverlayView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    alertBadge = [(HUCameraStatusOverlayView *)v3 alertBadge];
    [(HUCameraStatusOverlayView *)v3 addSubview:alertBadge];

    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 12.0, 12.0}];
    statusIndicatorImageView = v3->_statusIndicatorImageView;
    v3->_statusIndicatorImageView = v11;

    v13 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    layer = [(UIImageView *)v3->_statusIndicatorImageView layer];
    [layer setShadowOffset:{v13, v14}];

    layer2 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    [layer2 setShadowRadius:8.0];

    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    cGColor = [systemBlackColor CGColor];
    layer3 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [(UIImageView *)v3->_statusIndicatorImageView layer];
    LODWORD(v21) = 1061997773;
    [layer4 setShadowOpacity:v21];

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
  statusLabel = [(HUCameraStatusOverlayView *)self statusLabel];
  [statusLabel center];

  alertBadge = [(HUCameraStatusOverlayView *)self alertBadge];
  isHidden = [alertBadge isHidden];

  if (isHidden)
  {
    statusIndicatorImageView = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView frame];
    v8 = (CGRectGetWidth(v74) + 10.0) * 0.5;

    traitCollection = [(HUCameraStatusOverlayView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    v11 = -v8;
    if (!layoutDirection)
    {
      v11 = v8;
    }

    MidX = MidX + v11;
  }

  [(HUCameraStatusOverlayView *)self bounds];
  MidY = CGRectGetMidY(v75);
  statusLabel2 = [(HUCameraStatusOverlayView *)self statusLabel];
  [statusLabel2 setCenter:{MidX, MidY}];

  traitCollection2 = [(HUCameraStatusOverlayView *)self traitCollection];
  layoutDirection2 = [traitCollection2 layoutDirection];

  if (layoutDirection2)
  {
    alertBadge2 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge2 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;

    statusLabel3 = [(HUCameraStatusOverlayView *)self statusLabel];
    [statusLabel3 frame];
    v25 = v24 - (v20 + 7.0);

    alertBadge3 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge3 setFrame:{v25, v18, v20, v22}];

    alertBadge4 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge4 center];
    v29 = v28;

    alertBadge5 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge5 setCenter:{v29, MidY}];

    statusIndicatorImageView2 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView2 frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;

    statusLabel4 = [(HUCameraStatusOverlayView *)self statusLabel];
    [statusLabel4 frame];
    v39 = CGRectGetMaxX(v76) + 10.0;

    statusIndicatorImageView3 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView3 setFrame:{v39, v33, v35, v37}];

    statusIndicatorImageView4 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView4 center];
    v43 = v42;

    [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
  }

  else
  {
    statusIndicatorImageView5 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView5 frame];
    v46 = v45;
    v48 = v47;
    v50 = v49;

    statusLabel5 = [(HUCameraStatusOverlayView *)self statusLabel];
    [statusLabel5 frame];
    v53 = v52 - (v48 + 10.0);

    statusIndicatorImageView6 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView6 setFrame:{v53, v46, v48, v50}];

    statusIndicatorImageView7 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView7 center];
    v57 = v56;

    statusIndicatorImageView8 = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView8 setCenter:{v57, MidY}];

    alertBadge6 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge6 frame];
    v61 = v60;
    v63 = v62;
    v65 = v64;

    statusLabel6 = [(HUCameraStatusOverlayView *)self statusLabel];
    [statusLabel6 frame];
    v67 = CGRectGetMaxX(v77) + 7.0;

    alertBadge7 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge7 setFrame:{v67, v61, v63, v65}];

    alertBadge8 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge8 center];
    v43 = v70;

    [(HUCameraStatusOverlayView *)self alertBadge];
  }
  v71 = ;
  [v71 setCenter:{v43, MidY}];
}

- (void)updateStatusForPlaybackEngine:(id)engine
{
  engineCopy = engine;
  playbackError = [engineCopy playbackError];

  cameraProfile = [engineCopy cameraProfile];
  accessory = [cameraProfile accessory];
  name = [accessory name];
  [(HUCameraStatusOverlayView *)self setStatusString:name];

  if (playbackError)
  {
    cameraProfile2 = [engineCopy cameraProfile];
    hf_shouldDisableLiveStream = [cameraProfile2 hf_shouldDisableLiveStream];

    if (hf_shouldDisableLiveStream)
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

- (void)setStatusString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_statusString isEqualToString:?])
  {
    objc_storeStrong(&self->_statusString, string);
    statusLabel = [(HUCameraStatusOverlayView *)self statusLabel];
    [statusLabel setText:stringCopy];

    [(HUCameraStatusOverlayView *)self setNeedsLayout];
  }
}

- (void)setStatusColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_statusColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_statusColor, color);
    statusIndicatorImageView = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView setTintColor:colorCopy];
  }
}

- (void)setStatusImageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_statusImageName isEqualToString:?])
  {
    objc_storeStrong(&self->_statusImageName, name);
    v5 = [MEMORY[0x277D755B8] systemImageNamed:nameCopy];
    statusIndicatorImageView = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
    [statusIndicatorImageView setImage:v5];
  }
}

- (void)setBadgeStatus:(unint64_t)status
{
  if (status == 2)
  {
    alertBadge = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge setHidden:0];

    _exclamationImage = [(HUCameraStatusOverlayView *)self _exclamationImage];
    alertBadge2 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge2 setImage:_exclamationImage];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    if (status != 1)
    {
      goto LABEL_6;
    }

    isDisplayingForSingleCamera = [(HUCameraStatusOverlayView *)self isDisplayingForSingleCamera];
    alertBadge3 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge3 setHidden:isDisplayingForSingleCamera];

    _chevronImage = [(HUCameraStatusOverlayView *)self _chevronImage];
    alertBadge4 = [(HUCameraStatusOverlayView *)self alertBadge];
    [alertBadge4 setImage:_chevronImage];

    systemRedColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  v12 = systemRedColor;
  alertBadge5 = [(HUCameraStatusOverlayView *)self alertBadge];
  [alertBadge5 setTintColor:v12];

LABEL_6:
  alertBadge6 = [(HUCameraStatusOverlayView *)self alertBadge];
  [alertBadge6 sizeToFit];

  [(HUCameraStatusOverlayView *)self setNeedsLayout];
}

- (void)updateStatusLabelBounds
{
  statusLabel = [(HUCameraStatusOverlayView *)self statusLabel];
  [statusLabel sizeToFit];

  [(HUCameraStatusOverlayView *)self bounds];
  v5 = v4;
  alertBadge = [(HUCameraStatusOverlayView *)self alertBadge];
  [alertBadge bounds];
  v8 = v7 + 17.0;
  statusIndicatorImageView = [(HUCameraStatusOverlayView *)self statusIndicatorImageView];
  [statusIndicatorImageView bounds];
  v11 = v5 - (v8 + v10);

  if (v11 > 0.0)
  {
    statusLabel2 = [(HUCameraStatusOverlayView *)self statusLabel];
    [statusLabel2 bounds];
    v14 = v13;

    if (v14 > v11)
    {
      statusLabel3 = [(HUCameraStatusOverlayView *)self statusLabel];
      [statusLabel3 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;

      statusLabel4 = [(HUCameraStatusOverlayView *)self statusLabel];
      [statusLabel4 setBounds:{v17, v19, v11, v21}];
    }
  }
}

- (UIImageView)alertBadge
{
  alertBadge = self->_alertBadge;
  if (!alertBadge)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    _chevronImage = [(HUCameraStatusOverlayView *)self _chevronImage];
    v6 = [v4 initWithImage:_chevronImage];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIImageView *)v6 setTintColor:systemWhiteColor];

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
  hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:hu_standardSymbolConfiguration];

  return v4;
}

- (id)_chevronImage
{
  v2 = [MEMORY[0x277D755B8] _systemImageNamed:@"chevron.down"];
  hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v4 = [v2 imageWithConfiguration:hu_standardSymbolConfiguration];

  return v4;
}

@end