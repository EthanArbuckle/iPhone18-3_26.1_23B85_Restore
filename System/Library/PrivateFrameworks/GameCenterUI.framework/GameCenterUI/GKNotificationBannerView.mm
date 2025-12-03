@interface GKNotificationBannerView
- (GKNotificationBannerView)initWithTitle:(id)title image:(id)image message:(id)message useShortBanner:(BOOL)banner;
- (GKNotificationBannerView)initWithTitle:(id)title player:(id)player leadingAccessoryView:(id)view message:(id)message useShortBanner:(BOOL)banner;
- (void)_wasTouched:(id)touched;
- (void)awakeFromNib;
- (void)callCompletionHandler;
- (void)createBackdropViewWithBlurStyle:(int64_t)style;
- (void)createMessageLabel:(id)label withTextStyle:(id)style;
- (void)createTitleLabel:(id)label withTextStyle:(id)style;
- (void)dealloc;
- (void)fadeInWithCompletionHandler:(id)handler;
- (void)fadeOutQuickly:(BOOL)quickly withCompletionHandler:(id)handler;
- (void)hideBanner;
- (void)layoutSubviews;
- (void)showPlayerAvatarAnimationWithCompletionHandler:(id)handler;
- (void)showWithCompletionHandler:(id)handler;
- (void)showWithTouchHandler:(id)handler;
- (void)startLoadingPlayerAvatar;
- (void)transitionToPlayerAvatar;
@end

@implementation GKNotificationBannerView

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = GKNotificationBannerView;
  [(GKNotificationBannerView *)&v4 awakeFromNib];
  [(GKNotificationBannerView *)self bounds];
  self->_preferredBannerWidth = v3;
}

- (void)createBackdropViewWithBlurStyle:(int64_t)style
{
  v10 = [MEMORY[0x277D75210] effectWithStyle:style];
  v4 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v10];
  [(GKNotificationBannerView *)self addSubview:v4];
  if ([(GKNotificationBannerView *)self useShortBanner])
  {
    v5 = 13.0;
  }

  else
  {
    v5 = 24.0;
  }

  layer = [v4 layer];
  [layer setCornerRadius:v5];

  v7 = *MEMORY[0x277CDA138];
  layer2 = [v4 layer];
  [layer2 setCornerCurve:v7];

  layer3 = [v4 layer];
  [layer3 setMasksToBounds:1];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v4 containedWithinParentView:self];
}

- (void)createTitleLabel:(id)label withTextStyle:(id)style
{
  styleCopy = style;
  labelCopy = label;
  v8 = [GKLabel alloc];
  v9 = [(GKLabel *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_titleLabel setBackgroundColor:clearColor];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  if ([(GKNotificationBannerView *)self useShortBanner])
  {
    [styleCopy bannerShortTitle];
  }

  else
  {
    [styleCopy bannerTitle];
  }
  v12 = ;

  v13 = [labelCopy _gkAttributedStringByApplyingStyle:v12];

  [(UILabel *)self->_titleLabel setAttributedText:v13];
  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.6];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"GameCenter.notificationBanner.title"];
  v14 = self->_titleLabel;

  [(GKNotificationBannerView *)self addSubview:v14];
}

- (void)createMessageLabel:(id)label withTextStyle:(id)style
{
  styleCopy = style;
  labelCopy = label;
  v8 = [GKLabel alloc];
  v9 = [(GKLabel *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  messageLabel = self->_messageLabel;
  self->_messageLabel = v9;

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_messageLabel setBackgroundColor:clearColor];

  [(UILabel *)self->_messageLabel setNumberOfLines:1];
  [(UILabel *)self->_messageLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_messageLabel setMinimumScaleFactor:0.6];
  bannerMessage = [styleCopy bannerMessage];

  v13 = [labelCopy _gkAttributedStringByApplyingStyle:bannerMessage];

  [(UILabel *)self->_messageLabel setAttributedText:v13];
  [(UILabel *)self->_messageLabel setAccessibilityIdentifier:@"GameCenter.notificationBanner.message"];
  v14 = self->_messageLabel;

  [(GKNotificationBannerView *)self addSubview:v14];
}

- (GKNotificationBannerView)initWithTitle:(id)title player:(id)player leadingAccessoryView:(id)view message:(id)message useShortBanner:(BOOL)banner
{
  titleCopy = title;
  playerCopy = player;
  viewCopy = view;
  messageCopy = message;
  v52.receiver = self;
  v52.super_class = GKNotificationBannerView;
  v16 = [(GKNotificationBannerView *)&v52 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_37;
  }

  v16->_useShortBanner = banner;
  [(GKNotificationBannerView *)v16 setDuration:3.0];
  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  if (GKIsXRUIIdiom())
  {
    v51 = viewCopy;
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    [MEMORY[0x277D75348] blackColor];
    viewCopy2 = view;
    v20 = messageCopy;
    v21 = playerCopy;
    v22 = titleCopy;
    v24 = v23 = textStyle;
    v25 = [v24 colorWithAlphaComponent:0.5];
    cGColor = [v25 CGColor];
    layer = [v19 layer];
    [layer setBackgroundColor:cGColor];

    textStyle = v23;
    titleCopy = v22;
    playerCopy = v21;
    messageCopy = v20;
    view = viewCopy2;
    if ([(GKNotificationBannerView *)v17 useShortBanner])
    {
      v28 = 13.0;
    }

    else
    {
      v28 = 24.0;
    }

    layer2 = [v19 layer];
    [layer2 setCornerRadius:v28];

    layer3 = [v19 layer];
    [layer3 setContinuousCorners:1];

    [(GKNotificationBannerView *)v17 insertSubview:v19 atIndex:0];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [MEMORY[0x277CCAAD0] _gkInstallEdgeConstraintsForView:v19 containedWithinParentView:v17];

    viewCopy = v51;
    if (!playerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  [(GKNotificationBannerView *)v17 createBackdropViewWithBlurStyle:17];
  if (playerCopy)
  {
LABEL_9:
    v31 = objc_alloc_init(GKDashboardPlayerPhotoView);
    playerAvatarView = v17->_playerAvatarView;
    v17->_playerAvatarView = v31;

    [(GKDashboardPlayerPhotoView *)v17->_playerAvatarView setPlayer:playerCopy];
    [(GKNotificationBannerView *)v17 addSubview:v17->_playerAvatarView];
  }

LABEL_10:
  if (viewCopy)
  {
    objc_storeStrong(&v17->_leadingAccessoryView, view);
    [(UIView *)v17->_leadingAccessoryView setAccessibilityIdentifier:@"GameCenter.notificationBanner.image"];
    [(GKNotificationBannerView *)v17 addSubview:v17->_leadingAccessoryView];
  }

  if (titleCopy)
  {
    [(GKNotificationBannerView *)v17 createTitleLabel:titleCopy withTextStyle:textStyle];
  }

  if (messageCopy)
  {
    [(GKNotificationBannerView *)v17 createMessageLabel:messageCopy withTextStyle:textStyle];
  }

  [(GKNotificationBannerView *)v17 setAccessibilityIdentifier:@"UIA.GameCenter.GKNotificationBannerView"];
  [(UILabel *)v17->_titleLabel sizeToFit];
  [(UILabel *)v17->_messageLabel sizeToFit];
  titleLabel = v17->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  messageLabel = v17->_messageLabel;
  if (messageLabel)
  {
    [(UILabel *)messageLabel frame];
    if (v35 < v37)
    {
      v35 = v37;
    }
  }

  if ([(GKNotificationBannerView *)v17 useShortBanner])
  {
    v38 = 15.0;
  }

  else
  {
    v38 = 30.0;
  }

  useShortBanner = [(GKNotificationBannerView *)v17 useShortBanner];
  v40 = 42.0;
  if (useShortBanner)
  {
    v40 = 24.0;
  }

  v41 = v38 + v40;
  useShortBanner2 = [(GKNotificationBannerView *)v17 useShortBanner];
  v43 = 20.0;
  if (useShortBanner2)
  {
    v43 = 8.0;
  }

  v44 = v35 + v41 + v43;
  if ([(GKNotificationBannerView *)v17 useShortBanner])
  {
    v45 = 15.0;
  }

  else
  {
    v45 = 30.0;
  }

  v46 = v45 + v44;
  v17->_preferredBannerWidth = v46;
  useShortBanner3 = [(GKNotificationBannerView *)v17 useShortBanner];
  v48 = 282.0;
  if (useShortBanner3)
  {
    v48 = 260.0;
  }

  if (v46 >= v48)
  {
    v48 = v46;
  }

  v17->_preferredBannerWidth = v48;

LABEL_37:
  return v17;
}

- (GKNotificationBannerView)initWithTitle:(id)title image:(id)image message:(id)message useShortBanner:(BOOL)banner
{
  bannerCopy = banner;
  v10 = MEMORY[0x277D755E8];
  messageCopy = message;
  imageCopy = image;
  titleCopy = title;
  v14 = [[v10 alloc] initWithImage:imageCopy];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v14 setBackgroundColor:clearColor];

  [v14 setContentMode:1];
  [v14 setClipsToBounds:1];
  v16 = [(GKNotificationBannerView *)self initWithTitle:titleCopy player:0 leadingAccessoryView:v14 message:messageCopy useShortBanner:bannerCopy];

  return v16;
}

- (void)startLoadingPlayerAvatar
{
  v3 = [GKDashboardPlayerPhotoView alloc];
  v4 = [(GKDashboardPlayerPhotoView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(GKNotificationBannerView *)self setPlayerAvatarView:v4];

  objc_initWeak(&location, self);
  playerAvatarView = [(GKNotificationBannerView *)self playerAvatarView];
  local = [MEMORY[0x277D0C138] local];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__GKNotificationBannerView_startLoadingPlayerAvatar__block_invoke;
  v7[3] = &unk_279669FE0;
  objc_copyWeak(&v8, &location);
  [playerAvatarView setPlayer:local completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__GKNotificationBannerView_startLoadingPlayerAvatar__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = [v1 canTransitionToPlayerAvatar];

  v3 = objc_loadWeakRetained(&to);
  v4 = v3;
  if (v2)
  {
    [v3 transitionToPlayerAvatar];
  }

  else
  {
    [v3 setCanTransitionToPlayerAvatar:1];
  }

  objc_destroyWeak(&to);
}

- (void)transitionToPlayerAvatar
{
  playerAvatarView = [(GKNotificationBannerView *)self playerAvatarView];
  [playerAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];

  playerAvatarView2 = [(GKNotificationBannerView *)self playerAvatarView];
  layer = [playerAvatarView2 layer];
  [layer setOpacity:0.0];

  playerAvatarView3 = [(GKNotificationBannerView *)self playerAvatarView];
  [(GKNotificationBannerView *)self addSubview:playerAvatarView3];

  leadingAccessoryView = [(GKNotificationBannerView *)self leadingAccessoryView];
  playerAvatarView4 = [(GKNotificationBannerView *)self playerAvatarView];
  centerXAnchor = [playerAvatarView4 centerXAnchor];
  centerXAnchor2 = [leadingAccessoryView centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  [v11 setActive:1];

  playerAvatarView5 = [(GKNotificationBannerView *)self playerAvatarView];
  centerYAnchor = [playerAvatarView5 centerYAnchor];
  centerYAnchor2 = [leadingAccessoryView centerYAnchor];
  v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
  [v15 setActive:1];

  playerAvatarView6 = [(GKNotificationBannerView *)self playerAvatarView];
  widthAnchor = [playerAvatarView6 widthAnchor];
  widthAnchor2 = [leadingAccessoryView widthAnchor];
  v19 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:0.0];
  [v19 setActive:1];

  playerAvatarView7 = [(GKNotificationBannerView *)self playerAvatarView];
  heightAnchor = [playerAvatarView7 heightAnchor];
  widthAnchor3 = [leadingAccessoryView widthAnchor];
  v23 = [heightAnchor constraintEqualToAnchor:widthAnchor3 constant:0.0];
  [v23 setActive:1];

  [MEMORY[0x277CD9FF0] begin];
  v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
  [v24 setRemovedOnCompletion:0];
  v25 = *(MEMORY[0x277CD9DE8] + 80);
  *&v41.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v41.m33 = v25;
  v26 = *(MEMORY[0x277CD9DE8] + 112);
  *&v41.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v41.m43 = v26;
  v27 = *(MEMORY[0x277CD9DE8] + 16);
  *&v41.m11 = *MEMORY[0x277CD9DE8];
  *&v41.m13 = v27;
  v28 = *(MEMORY[0x277CD9DE8] + 48);
  *&v41.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v41.m23 = v28;
  v29 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v41];
  [v24 setFromValue:v29];

  v30 = MEMORY[0x277CCAE60];
  CATransform3DMakeScale(&v41, 0.01, 0.01, 1.0);
  v31 = [v30 valueWithCATransform3D:&v41];
  [v24 setToValue:v31];

  [v24 setDuration:0.12];
  [v24 setRepeatCount:0.0];
  [v24 setAutoreverses:0];
  [v24 setFillMode:*MEMORY[0x277CDA230]];
  v32 = MEMORY[0x277CD9FF0];
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __52__GKNotificationBannerView_transitionToPlayerAvatar__block_invoke;
  v38 = &unk_279669E48;
  v39 = leadingAccessoryView;
  selfCopy = self;
  v33 = leadingAccessoryView;
  [v32 setCompletionBlock:&v35];
  layer2 = [v33 layer];
  [layer2 addAnimation:v24 forKey:@"transform"];

  [MEMORY[0x277CD9FF0] commit];
}

void __52__GKNotificationBannerView_transitionToPlayerAvatar__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  [MEMORY[0x277CD9FF0] begin];
  CATransform3DMakeScale(&v21, 0.01, 0.01, 1.0);
  v2 = [*(a1 + 40) playerAvatarView];
  v3 = [v2 layer];
  v20 = v21;
  [v3 setTransform:&v20];

  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"transform"];
  v5 = MEMORY[0x277CCAE60];
  v6 = [*(a1 + 40) playerAvatarView];
  v7 = [v6 layer];
  v8 = v7;
  if (v7)
  {
    [v7 transform];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  v9 = [v5 valueWithCATransform3D:&v20];
  [v4 setFromValue:v9];

  v10 = *(MEMORY[0x277CD9DE8] + 80);
  *&v20.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v20.m33 = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 112);
  *&v20.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v20.m43 = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 16);
  *&v20.m11 = *MEMORY[0x277CD9DE8];
  *&v20.m13 = v12;
  v13 = *(MEMORY[0x277CD9DE8] + 48);
  *&v20.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v20.m23 = v13;
  v14 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v20];
  [v4 setToValue:v14];

  [v4 setMass:1.0];
  [v4 setStiffness:800.0];
  [v4 setDamping:20.0];
  [v4 setBeginTime:CACurrentMediaTime()];
  [v4 settlingDuration];
  [v4 setDuration:?];
  [v4 setFillMode:*MEMORY[0x277CDA230]];
  [v4 setRemovedOnCompletion:0];
  v15 = [*(a1 + 40) playerAvatarView];
  v16 = [v15 layer];
  [v16 addAnimation:v4 forKey:@"transform"];

  [MEMORY[0x277CD9FF0] commit];
  v17 = [*(a1 + 40) playerAvatarView];
  v18 = [v17 layer];
  LODWORD(v19) = 1.0;
  [v18 setOpacity:v19];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKNotificationBannerView;
  [(GKNotificationBannerView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v114.receiver = self;
  v114.super_class = GKNotificationBannerView;
  [(GKNotificationBannerView *)&v114 layoutSubviews];
  [(GKNotificationBannerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  leadingAccessoryView = [(GKNotificationBannerView *)self leadingAccessoryView];
  if (leadingAccessoryView)
  {
    [(GKNotificationBannerView *)self leadingAccessoryView];
  }

  else
  {
    [(GKNotificationBannerView *)self playerAvatarView];
  }
  v12 = ;

  v13 = 8.0;
  v14 = 8.0;
  if (![(GKNotificationBannerView *)self useShortBanner])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1 || (v14 = 12.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v14 = 11.0;
    }
  }

  v115.origin.x = v4;
  v108 = v6;
  v110 = v8;
  v115.origin.y = v6;
  v115.size.width = v8;
  v115.size.height = v10;
  MidY = CGRectGetMidY(v115);
  useShortBanner = [(GKNotificationBannerView *)self useShortBanner];
  v19 = 21.0;
  if (useShortBanner)
  {
    v19 = 12.0;
  }

  v20 = MidY - v19;
  if ([(GKNotificationBannerView *)self useShortBanner])
  {
    v21 = 24.0;
  }

  else
  {
    v21 = 42.0;
  }

  if ([(GKNotificationBannerView *)self useShortBanner])
  {
    v22 = 24.0;
  }

  else
  {
    v22 = 42.0;
  }

  [v12 setFrame:{v14, v20, v21, v22}];
  [v12 frame];
  MaxX = CGRectGetMaxX(v116);
  useShortBanner2 = [(GKNotificationBannerView *)self useShortBanner];
  v25 = 20.0;
  if (useShortBanner2)
  {
    v25 = 8.0;
  }

  v26 = MaxX + v25;
  if (![(GKNotificationBannerView *)self useShortBanner])
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom2 != 1 || (v13 = 12.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v13 = 11.0;
    }
  }

  v29 = v4 + v26;
  v30 = v109 + 0.0;
  v31 = v26 + v13;
  remainder.origin.x = v29;
  remainder.origin.y = v109 + 0.0;
  v32 = v8;
  v33 = v8 - v31;
  remainder.size.width = v110 - v31;
  remainder.size.height = v10;
  titleLabel = [(GKNotificationBannerView *)self titleLabel];
  if (titleLabel)
  {
    v35 = titleLabel;
    messageLabel = [(GKNotificationBannerView *)self messageLabel];

    if (messageLabel)
    {
      titleLabel2 = [(GKNotificationBannerView *)self titleLabel];
      [titleLabel2 sizeThatFits:{v33, v10}];
      v39 = v38;
      v41 = v40;

      messageLabel2 = [(GKNotificationBannerView *)self messageLabel];
      [messageLabel2 sizeThatFits:{v33, v10}];
      v44 = v43;
      v46 = v45;

      v48 = v30 + floor((v10 - (v41 + v46)) * 0.5);
      if (v39 >= v44)
      {
        v49 = v39;
      }

      else
      {
        v49 = v44;
      }

      if (v33 <= v49)
      {
        v50 = v33;
      }

      else
      {
        v50 = v49;
      }

      remainder.origin.y = v48;
      remainder.size.width = v50;
      remainder.size.height = v41 + v46;
      memset(&slice, 0, sizeof(slice));
      memset(&v111, 0, sizeof(v111));
      v51 = v29;
      v47 = v41 + v46;
      CGRectDivide(*(&v48 - 1), &slice, &remainder, v41, CGRectMinYEdge);
      CGRectDivide(remainder, &v111, &remainder, v46, CGRectMaxYEdge);
      x = slice.origin.x;
      y = slice.origin.y;
      width = slice.size.width;
      height = slice.size.height;
      titleLabel3 = [(GKNotificationBannerView *)self titleLabel];
      [titleLabel3 setFrame:{x, y, width, height}];

      v57 = v111.origin.x;
      v58 = v111.origin.y;
      v59 = v111.size.width;
      v60 = v111.size.height;
      messageLabel3 = [(GKNotificationBannerView *)self messageLabel];
      [messageLabel3 setFrame:{v57, v58, v59, v60}];

      v62 = CGRectGetMaxX(slice);
      v63 = CGRectGetMaxX(v111);
      if (v62 < v63)
      {
        v62 = v63;
      }

      useShortBanner3 = [(GKNotificationBannerView *)self useShortBanner];
      v65 = 8.0;
      if (!useShortBanner3)
      {
        currentDevice3 = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

        if (userInterfaceIdiom3 != 1 || (v65 = 12.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
        {
          v65 = 11.0;
        }
      }

      v68 = v62 + v65;
      v32 = v110;
      goto LABEL_55;
    }
  }

  titleLabel4 = [(GKNotificationBannerView *)self titleLabel];

  if (titleLabel4)
  {
    titleLabel5 = [(GKNotificationBannerView *)self titleLabel];
    [titleLabel5 sizeThatFits:{v33, v10}];
    v72 = v71;

    if (v33 > v72)
    {
      v33 = v72;
    }

    remainder.size.width = v33;
    titleLabel6 = [(GKNotificationBannerView *)self titleLabel];
  }

  else
  {
    messageLabel4 = [(GKNotificationBannerView *)self messageLabel];

    if (!messageLabel4)
    {
      goto LABEL_49;
    }

    messageLabel5 = [(GKNotificationBannerView *)self messageLabel];
    [messageLabel5 sizeThatFits:{v33, v10}];
    v77 = v76;

    if (v33 > v77)
    {
      v33 = v77;
    }

    remainder.size.width = v33;
    titleLabel6 = [(GKNotificationBannerView *)self messageLabel];
  }

  v78 = titleLabel6;
  [titleLabel6 setFrame:{v29, v30, v33, v10}];

LABEL_49:
  v117.origin.x = v29;
  v117.origin.y = v109 + 0.0;
  v117.size.width = v33;
  v117.size.height = v10;
  v79 = CGRectGetMaxX(v117);
  useShortBanner4 = [(GKNotificationBannerView *)self useShortBanner];
  v81 = 8.0;
  if (!useShortBanner4)
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    if (userInterfaceIdiom4 != 1 || (v81 = 12.0, *MEMORY[0x277D0C258] == 1) && (*MEMORY[0x277D0C8F0] & 1) == 0)
    {
      v81 = 11.0;
    }
  }

  v68 = v79 + v81;
LABEL_55:
  if (v68 != 0.0)
  {
    v84 = (v32 - v68) * 0.5;
    [v12 frame];
    [v12 setFrame:v84 + v85];
    titleLabel7 = [(GKNotificationBannerView *)self titleLabel];

    if (titleLabel7)
    {
      titleLabel8 = [(GKNotificationBannerView *)self titleLabel];
      [titleLabel8 frame];
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v95 = v94;

      titleLabel9 = [(GKNotificationBannerView *)self titleLabel];
      [titleLabel9 setFrame:{v84 + v89, v91, v93, v95}];
    }

    messageLabel6 = [(GKNotificationBannerView *)self messageLabel];

    if (messageLabel6)
    {
      messageLabel7 = [(GKNotificationBannerView *)self messageLabel];
      [messageLabel7 frame];
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;

      messageLabel8 = [(GKNotificationBannerView *)self messageLabel];
      [messageLabel8 setFrame:{v84 + v100, v102, v104, v106}];
    }
  }
}

- (void)showPlayerAvatarAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(GKNotificationBannerView *)self startLoadingPlayerAvatar];
  [(GKNotificationBannerView *)self setCompletionHandler:handlerCopy];

  [GKNotificationBannerWindow enqueBanner:self];
}

- (void)showWithCompletionHandler:(id)handler
{
  [(GKNotificationBannerView *)self setCompletionHandler:handler];

  [GKNotificationBannerWindow enqueBanner:self];
}

- (void)showWithTouchHandler:(id)handler
{
  [(GKNotificationBannerView *)self setTouchHandler:handler];

  [GKNotificationBannerWindow enqueBanner:self];
}

- (void)hideBanner
{
  superview = [(GKNotificationBannerView *)self superview];
  [superview _hideBanner:self quickly:1];
}

- (void)_wasTouched:(id)touched
{
  touchHandler = [(GKNotificationBannerView *)self touchHandler];
  if (touchHandler)
  {
    v5 = touchHandler;
    touchHandler[2]();
    [(GKNotificationBannerView *)self setTouchHandler:0];
    touchHandler = v5;
  }
}

- (void)callCompletionHandler
{
  completionHandler = [(GKNotificationBannerView *)self completionHandler];
  if (completionHandler)
  {
    completionHandler[2]();
  }

  [(GKNotificationBannerView *)self setCompletionHandler:0];
  [(GKNotificationBannerView *)self setTouchHandler:0];
}

- (void)fadeInWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(GKNotificationBannerView *)self setAlpha:0.0];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&v12.a = *MEMORY[0x277CBF2C0];
  *&v12.c = v5;
  *&v12.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v13, &v12, 0.93, 0.93);
  v12 = v13;
  [(GKNotificationBannerView *)self setTransform:&v12];
  layer = [(GKNotificationBannerView *)self layer];
  [layer setAllowsGroupOpacity:0];

  v7 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__GKNotificationBannerView_fadeInWithCompletionHandler___block_invoke;
  v11[3] = &unk_2796699A8;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__GKNotificationBannerView_fadeInWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_27966AF50;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 animateWithDuration:38 delay:v11 options:v9 animations:0.5 completion:0.0];
}

uint64_t __56__GKNotificationBannerView_fadeInWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  *&v5.a = *MEMORY[0x277CBF2C0];
  *&v5.c = v2;
  *&v5.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v6, &v5, 1.0, 1.0);
  v3 = *(a1 + 32);
  v5 = v6;
  return [v3 setTransform:&v5];
}

uint64_t __56__GKNotificationBannerView_fadeInWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:1];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)fadeOutQuickly:(BOOL)quickly withCompletionHandler:(id)handler
{
  quicklyCopy = quickly;
  handlerCopy = handler;
  layer = [(GKNotificationBannerView *)self layer];
  [layer setAllowsGroupOpacity:0];

  v8 = MEMORY[0x277D75D18];
  if (quicklyCopy)
  {
    v9 = 0.1;
  }

  else
  {
    v9 = 0.5;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__GKNotificationBannerView_fadeOutQuickly_withCompletionHandler___block_invoke;
  v13[3] = &unk_2796699A8;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__GKNotificationBannerView_fadeOutQuickly_withCompletionHandler___block_invoke_2;
  v11[3] = &unk_27966AF50;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v8 animateWithDuration:38 delay:v13 options:v11 animations:v9 completion:0.0];
}

uint64_t __65__GKNotificationBannerView_fadeOutQuickly_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  *&v5.a = *MEMORY[0x277CBF2C0];
  *&v5.c = v2;
  *&v5.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v6, &v5, 0.93, 0.93);
  v3 = *(a1 + 32);
  v5 = v6;
  return [v3 setTransform:&v5];
}

uint64_t __65__GKNotificationBannerView_fadeOutQuickly_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupOpacity:1];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end