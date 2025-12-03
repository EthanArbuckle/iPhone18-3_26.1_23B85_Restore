@interface CKAppGrabberView
+ (double)compactRoundedCornerRadius;
- (CKAppGrabberView)initWithFrame:(CGRect)frame;
- (CKAppGrabberViewDelegate)delegate;
- (double)chevronMaxYInView:(id)view;
- (double)chevronMaxYOffset;
- (double)visualOriginYInView:(id)view;
- (double)visualOriginYOffset;
- (void)closeButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setRoundsTopCorners:(BOOL)corners;
- (void)setShowsAppTitle:(BOOL)title;
- (void)setShowsGrabberPill:(BOOL)pill;
- (void)updateAppTitle:(id)title icon:(id)icon appIdentifier:(id)identifier;
- (void)updateHeaderFrame:(BOOL)frame;
- (void)updateIconImageView:(id)view;
@end

@implementation CKAppGrabberView

- (CKAppGrabberView)initWithFrame:(CGRect)frame
{
  v49.receiver = self;
  v49.super_class = CKAppGrabberView;
  v3 = [(CKAppGrabberView *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKAppGrabberView *)v3 setBackgroundColor:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    headerView = v4->_headerView;
    v4->_headerView = v5;

    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    browserSwitcherBorderColor = [theme browserSwitcherBorderColor];

    if (browserSwitcherBorderColor)
    {
      layer = [(UIView *)v4->_headerView layer];
      v11 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v11 theme];
      browserSwitcherBorderColor2 = [theme2 browserSwitcherBorderColor];
      [layer setBorderColor:{objc_msgSend(browserSwitcherBorderColor2, "CGColor")}];

      layer2 = [(UIView *)v4->_headerView layer];
      LODWORD(v15) = 1041865114;
      [layer2 setShadowOpacity:v15];

      layer3 = [(UIView *)v4->_headerView layer];
      [layer3 setShadowRadius:1.0];

      layer4 = [(UIView *)v4->_headerView layer];
      [layer4 setShadowOffset:{0.0, -1.0}];

      layer5 = [(UIView *)v4->_headerView layer];
      [layer5 setShadowPathIsBounds:1];
    }

    [(CKAppGrabberView *)v4 updateHeaderFrame:1];
    v19 = v4->_headerView;
    v20 = +[CKUIBehavior sharedBehaviors];
    theme3 = [v20 theme];
    appGrabberBackgroundColor = [theme3 appGrabberBackgroundColor];
    [(UIView *)v19 setBackgroundColor:appGrabberBackgroundColor];

    [(UIView *)v4->_headerView setAutoresizingMask:10];
    [(UIView *)v4->_headerView setClipsToBounds:1];
    layer6 = [(UIView *)v4->_headerView layer];
    [layer6 setMaskedCorners:3];

    [(CKAppGrabberView *)v4 addSubview:v4->_headerView];
    v24 = objc_alloc_init(MEMORY[0x1E69DD4F8]);
    chevronView = v4->_chevronView;
    v4->_chevronView = v24;

    [(_UIGrabber *)v4->_chevronView sizeToFit];
    [(UIView *)v4->_headerView addSubview:v4->_chevronView];
    v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, 40.0, 30.0}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v26;

    [(UIView *)v4->_headerView addSubview:v4->_iconImageView];
    v28 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconOutlineView = v4->_iconOutlineView;
    v4->_iconOutlineView = v28;

    v30 = v4->_iconOutlineView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v32 = [whiteColor colorWithAlphaComponent:0.25];
    [(UIImageView *)v30 setTintColor:v32];

    v33 = MEMORY[0x1E69DCAB8];
    v34 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v35 = [v33 imageNamed:@"BorderPath" inBundle:v34];
    v36 = [v35 imageWithRenderingMode:2];

    [(UIImageView *)v4->_iconOutlineView setImage:v36];
    [(UIView *)v4->_headerView addSubview:v4->_iconOutlineView];
    v37 = +[CKUIBehavior sharedBehaviors];
    appLabelFont = [v37 appLabelFont];

    v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    pluginTitleLabel = v4->_pluginTitleLabel;
    v4->_pluginTitleLabel = v39;

    [(UILabel *)v4->_pluginTitleLabel setNumberOfLines:1];
    [(UILabel *)v4->_pluginTitleLabel setAutoresizingMask:34];
    [(UILabel *)v4->_pluginTitleLabel setFont:appLabelFont];
    v41 = v4->_pluginTitleLabel;
    v42 = +[CKUIBehavior sharedBehaviors];
    theme4 = [v42 theme];
    appGrabberTitleColor = [theme4 appGrabberTitleColor];
    [(UILabel *)v41 setTextColor:appGrabberTitleColor];

    [(UILabel *)v4->_pluginTitleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v4->_pluginTitleLabel setBaselineAdjustment:1];
    [(UIView *)v4->_headerView addSubview:v4->_pluginTitleLabel];
    v45 = [CKAppGrabberCloseButton buttonWithType:7];
    closeButton = v4->_closeButton;
    v4->_closeButton = v45;

    [(UIButton *)v4->_closeButton sizeToFit];
    [(UIButton *)v4->_closeButton addTarget:v4 action:sel_closeButtonTapped_ forEvents:64];
    [(UIView *)v4->_headerView addSubview:v4->_closeButton];
    [(CKAppGrabberView *)v4 setAccessibilityIdentifier:@"collapseButtonIdentifier"];
    [(CKAppGrabberView *)v4 setShowsAppTitle:0];
    [(CKAppGrabberView *)v4 setRoundsTopCorners:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_updateIconImageView_ name:*MEMORY[0x1E69A56D0] object:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v63.receiver = self;
  v63.super_class = CKAppGrabberView;
  [(CKAppGrabberView *)&v63 layoutSubviews];
  [(_UIGrabber *)self->_chevronView frame];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_headerView bounds];
  v8 = v7;
  v10 = v9;
  if (CKMainScreenScale_once_78 != -1)
  {
    [CKAppGrabberView layoutSubviews];
  }

  v11 = *&CKMainScreenScale_sMainScreenScale_78;
  if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
  {
    v11 = 1.0;
  }

  [(_UIGrabber *)self->_chevronView setFrame:floor((v8 + (v10 - v4) * 0.5) * v11) / v11, *MEMORY[0x1E69DEA68], v4, v6];
  [(UIView *)self->_headerView bounds];
  v65 = CGRectInset(v64, 16.0, 0.0);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 browserSwitcherExpandedGrabberHeaderHeight];
  v16 = v15;

  [(UIButton *)self->_closeButton frame];
  v18 = v17;
  v59 = v20;
  v60 = v19;
  v62 = v21;
  image = [(UIImageView *)self->_iconImageView image];
  if (image)
  {
    image2 = [(UIImageView *)self->_iconImageView image];
    [image2 size];
    v25 = v24;
    v27 = v26;
  }

  else
  {
    v25 = 40.0;
    v27 = 30.0;
  }

  v28 = v25 == v27;
  if (v25 == v27)
  {
    v29 = 36.0;
  }

  else
  {
    v29 = 30.0;
  }

  if (v28)
  {
    v30 = 36.0;
  }

  else
  {
    v30 = 40.0;
  }

  v31 = MEMORY[0x1E695EFF8];
  v32 = *(MEMORY[0x1E695EFF8] + 8) + v29 * -0.5;
  [(UILabel *)self->_pluginTitleLabel frame];
  v57 = v33;
  v56 = v30;
  rect = v32;
  if ([(CKAppGrabberView *)self _shouldReverseLayoutDirection])
  {
    v34 = *v31 + v30 * -0.5;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = v16;
    MinX = CGRectGetMinX(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = v16;
    MaxX = CGRectGetMaxX(v67);
    v68.origin.x = v34;
    v68.origin.y = v32;
    v68.size.width = v30;
    v68.size.height = v29;
    v36 = MaxX - CGRectGetWidth(v68);
    if (CKMainScreenScale_once_78 != -1)
    {
      [CKAppGrabberView layoutSubviews];
    }

    v37 = *&CKMainScreenScale_sMainScreenScale_78;
    if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
    {
      v37 = 1.0;
    }

    v38 = floor(v36 * v37) / v37;
    v69.origin.x = MinX;
    v69.size.height = v62;
    v39 = v59;
    v69.origin.y = v60;
    v69.size.width = v59;
    v55 = CGRectGetMaxX(v69);
    v70.origin.x = x;
    v40 = y;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = v16;
    v41 = CGRectGetWidth(v70);
    image3 = [(UIImageView *)self->_iconImageView image];

    if (image3)
    {
      v71.origin.x = v38;
      v71.origin.y = rect;
      v43 = v56;
      v71.size.width = v56;
      v71.size.height = v29;
      v41 = v41 - (CGRectGetWidth(v71) + 8.0);
      goto LABEL_29;
    }
  }

  else
  {
    v72.origin.x = x;
    v40 = y;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = v16;
    v44 = CGRectGetMaxX(v72);
    v73.origin.x = v18;
    v73.size.width = v59;
    v73.origin.y = v60;
    v73.size.height = v62;
    v45 = v44 - CGRectGetWidth(v73);
    if (CKMainScreenScale_once_78 != -1)
    {
      [CKAppGrabberView layoutSubviews];
    }

    v46 = *&CKMainScreenScale_sMainScreenScale_78;
    if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
    {
      v46 = 1.0;
    }

    MinX = floor(v45 * v46) / v46;
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = v16;
    v38 = CGRectGetMinX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = v16;
    v47 = CGRectGetMinX(v75);
    v76.origin.x = x;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = v16;
    v41 = CGRectGetWidth(v76);
    image4 = [(UIImageView *)self->_iconImageView image];

    if (image4)
    {
      v77.origin.x = v38;
      v77.origin.y = rect;
      v43 = v56;
      v77.size.width = v56;
      v77.size.height = v29;
      v49 = CGRectGetWidth(v77) + 8.0;
      v55 = v47 + v49;
      v41 = v41 - v49;
      v39 = v59;
      goto LABEL_29;
    }

    v78.origin.x = x;
    v78.origin.y = y;
    v78.size.width = width;
    v78.size.height = v16;
    v55 = CGRectGetMinX(v78);
    v39 = v59;
  }

  v43 = v56;
LABEL_29:
  v79.origin.y = v60;
  v79.origin.x = MinX;
  v79.size.width = v39;
  v79.size.height = v62;
  v50 = CGRectGetWidth(v79);
  if (CKMainScreenScale_once_78 != -1)
  {
    [CKAppGrabberView layoutSubviews];
  }

  v51 = *&CKMainScreenScale_sMainScreenScale_78;
  if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
  {
    v51 = 1.0;
  }

  [(UIImageView *)self->_iconImageView setFrame:v38, floor((v40 + (v16 - v29) * 0.5) * v51) / v51, v43, v29];
  [(UIImageView *)self->_iconImageView frame];
  [(UIImageView *)self->_iconOutlineView setFrame:?];
  if (CKMainScreenScale_once_78 != -1)
  {
    [CKAppGrabberView layoutSubviews];
  }

  v52 = *&CKMainScreenScale_sMainScreenScale_78;
  if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
  {
    v52 = 1.0;
  }

  [(UIButton *)self->_closeButton setFrame:MinX, floor((v40 + (v16 - v62) * 0.5) * v52) / v52, v39];
  if (CKMainScreenScale_once_78 != -1)
  {
    [CKAppGrabberView layoutSubviews];
  }

  v53 = *&CKMainScreenScale_sMainScreenScale_78;
  if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
  {
    v53 = 1.0;
  }

  [(UILabel *)self->_pluginTitleLabel setFrame:v55, floor((v40 + (v16 - v57) * 0.5) * v53) / v53, v41 - (v50 + 8.0)];
}

- (void)updateIconImageView:(id)view
{
  viewCopy = view;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CKAppGrabberView_updateIconImageView___block_invoke;
  v6[3] = &unk_1E72EB8D0;
  v7 = viewCopy;
  selfCopy = self;
  v5 = viewCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __40__CKAppGrabberView_updateIconImageView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v6 = [v2 valueForKey:@"IMBalloonPluginIdentifierKey"];

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 valueForKey:@"UpdatedIMBalloonPluginIconKey"];

  if ([v6 isEqualToString:*(*(a1 + 40) + 464)])
  {
    v5 = [*(*(a1 + 40) + 408) image];

    if (v4 != v5)
    {
      [*(*(a1 + 40) + 408) setImage:v4];
      [*(a1 + 40) setNeedsLayout];
    }
  }
}

- (void)setShowsGrabberPill:(BOOL)pill
{
  v3 = 0.0;
  if (pill)
  {
    v3 = 1.0;
  }

  [(_UIGrabber *)self->_chevronView setAlpha:v3];
}

- (double)visualOriginYOffset
{
  [(UIView *)self->_headerView frame];

  return CGRectGetMinY(*&v2);
}

- (double)chevronMaxYOffset
{
  [(_UIGrabber *)self->_chevronView frame];
  [(CKAppGrabberView *)self convertRect:self->_headerView fromView:?];

  return CGRectGetMaxY(*&v3);
}

- (double)visualOriginYInView:(id)view
{
  headerView = self->_headerView;
  viewCopy = view;
  [(UIView *)headerView frame];
  [viewCopy convertRect:self fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;

  return CGRectGetMinY(*&v14);
}

- (double)chevronMaxYInView:(id)view
{
  chevronView = self->_chevronView;
  viewCopy = view;
  [(_UIGrabber *)chevronView frame];
  [viewCopy convertRect:self->_headerView fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;

  return CGRectGetMaxY(*&v14);
}

- (void)updateAppTitle:(id)title icon:(id)icon appIdentifier:(id)identifier
{
  titleCopy = title;
  iconCopy = icon;
  identifierCopy = identifier;
  text = [(UILabel *)self->_pluginTitleLabel text];
  if (([text isEqualToString:titleCopy] & 1) == 0)
  {

    goto LABEL_5;
  }

  image = [(UIImageView *)self->_iconImageView image];

  if (image != iconCopy)
  {
LABEL_5:
    [(UILabel *)self->_pluginTitleLabel setText:titleCopy];
    [(UILabel *)self->_pluginTitleLabel sizeToFit];
    objc_storeStrong(&self->_appIdentifier, identifier);
    [(UIImageView *)self->_iconImageView setImage:iconCopy];
    [(CKAppGrabberView *)self setNeedsLayout];
  }
}

- (void)closeButtonTapped:(id)tapped
{
  delegate = [(CKAppGrabberView *)self delegate];
  [delegate appGrabberViewCloseButtonTapped:self];
}

+ (double)compactRoundedCornerRadius
{
  if (!CKIsRunningInMessages())
  {
    return *MEMORY[0x1E69DEA60];
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 0.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return *MEMORY[0x1E69DEA60];
  }

  return result;
}

- (void)setRoundsTopCorners:(BOOL)corners
{
  cornersCopy = corners;
  self->_roundsTopCorners = corners;
  v5 = objc_opt_class();
  if (cornersCopy)
  {
    [v5 roundedCornerRadius];
  }

  else
  {
    [v5 compactRoundedCornerRadius];
  }

  v7 = v6;
  layer = [(UIView *)self->_headerView layer];
  [layer setCornerRadius:v7];
}

- (void)setShowsAppTitle:(BOOL)title
{
  titleCopy = title;
  self->_showsAppTitle = title;
  [(CKAppGrabberView *)self updateHeaderFrame:!title];
  if (titleCopy)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(UIImageView *)self->_iconImageView setAlpha:v5];
  [(UILabel *)self->_pluginTitleLabel setAlpha:v5];
  [(UIButton *)self->_closeButton setAlpha:v5];
  traitCollection = [(CKAppGrabberView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  image = [(UIImageView *)self->_iconImageView image];
  [image size];
  v10 = v9;
  v12 = v11 == 30.0;

  v13 = userInterfaceStyle == 2 && titleCopy;
  if (v10 != 40.0)
  {
    v13 = 0;
  }

  if (v13 && v12)
  {
    v14 = v5;
  }

  else
  {
    v14 = 0.0;
  }

  iconOutlineView = self->_iconOutlineView;

  [(UIImageView *)iconOutlineView setAlpha:v14];
}

- (void)updateHeaderFrame:(BOOL)frame
{
  frameCopy = frame;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = v5;
  if (frameCopy)
  {
    [v5 browserSwitcherCompactGrabberVisibleHeight];
  }

  else
  {
    [v5 browserSwitcherExpandedGrabberHeaderHeight];
  }

  v8 = v7;

  [(CKAppGrabberView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v13 = CGRectGetHeight(v18);
  if (CKPixelWidth_once_10 != -1)
  {
    [CKAppGrabberView updateHeaderFrame:];
  }

  v14 = v13 - v8 + *&CKPixelWidth_sPixel_10;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v15 = CGRectGetWidth(v19);
  headerView = self->_headerView;

  [(UIView *)headerView setFrame:0.0, v14, v15, v8];
}

- (CKAppGrabberViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end