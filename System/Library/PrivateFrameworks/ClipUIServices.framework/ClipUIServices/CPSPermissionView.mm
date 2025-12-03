@interface CPSPermissionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CPSPermissionView)initWithFrame:(CGRect)frame;
- (void)configureWithAppName:(id)name requestsNotificationPermission:(BOOL)permission requestsLocationConfirmationPermission:(BOOL)confirmationPermission;
- (void)layoutSubviews;
- (void)permissionButtonTapped:(id)tapped;
- (void)setLocationConfirmationPermissionEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setNotificationPermissionEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)toggleLocationConfirmationPermission;
- (void)toggleNotificationPermission;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionViewAnimated:(BOOL)animated;
@end

@implementation CPSPermissionView

- (CPSPermissionView)initWithFrame:(CGRect)frame
{
  v35[5] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = CPSPermissionView;
  v3 = [(CPSPermissionView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CPSButton);
    permissionButton = v3->_permissionButton;
    v3->_permissionButton = v4;

    [(CPSButton *)v3->_permissionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSButton *)v3->_permissionButton setBackgroundColor:clearColor];

    [(CPSButton *)v3->_permissionButton setAnimatesAlphaWhenHighlighted:1];
    [(CPSButton *)v3->_permissionButton setContentHorizontalAlignment:1];
    [(CPSButton *)v3->_permissionButton setContentEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    titleLabel = [(CPSButton *)v3->_permissionButton titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    titleLabel2 = [(CPSButton *)v3->_permissionButton titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(CPSButton *)v3->_permissionButton titleLabel];
    [titleLabel3 setLineBreakMode:0];

    [(CPSButton *)v3->_permissionButton addTarget:v3 action:sel_permissionButtonTapped_ forControlEvents:64];
    [(CPSPermissionView *)v3 addSubview:v3->_permissionButton];
    v25 = MEMORY[0x277CCAAD0];
    titleLabel4 = [(CPSButton *)v3->_permissionButton titleLabel];
    leadingAnchor = [titleLabel4 leadingAnchor];
    leadingAnchor2 = [(CPSPermissionView *)v3 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v35[0] = v30;
    titleLabel5 = [(CPSButton *)v3->_permissionButton titleLabel];
    topAnchor = [titleLabel5 topAnchor];
    topAnchor2 = [(CPSPermissionView *)v3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v35[1] = v26;
    titleLabel6 = [(CPSButton *)v3->_permissionButton titleLabel];
    bottomAnchor = [titleLabel6 bottomAnchor];
    bottomAnchor2 = [(CPSPermissionView *)v3 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[2] = v21;
    titleLabel7 = [(CPSButton *)v3->_permissionButton titleLabel];
    trailingAnchor = [titleLabel7 trailingAnchor];
    trailingAnchor2 = [(CPSPermissionView *)v3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[3] = v13;
    trailingAnchor3 = [(CPSButton *)v3->_permissionButton trailingAnchor];
    titleLabel8 = [(CPSButton *)v3->_permissionButton titleLabel];
    trailingAnchor4 = [titleLabel8 trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v35[4] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
    [v25 activateConstraints:v18];

    v19 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CPSPermissionView;
  [(CPSPermissionView *)&v23 layoutSubviews];
  if (self->_permissionTextNeedsUpdate)
  {
    self->_permissionTextNeedsUpdate = 0;
    requestsNotificationPermission = self->_requestsNotificationPermission;
    if (requestsNotificationPermission == self->_requestsLocationConfirmationPermission && !self->_requestsNotificationPermission)
    {
      v11 = 0;
      v8 = 0;
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x277CCAB48]);
      v5 = MEMORY[0x277CCACA8];
      v6 = _CPSLocalizedString();
      v7 = [v5 stringWithFormat:v6, self->_appName];
      v8 = [v4 initWithString:v7];

      v9 = objc_alloc(MEMORY[0x277CCAB48]);
      v10 = _CPSLocalizedString();
      v11 = [v9 initWithString:v10];
    }

    string = [v11 string];
    [(CPSButton *)self->_permissionButton setExtraTapTargetSubstring:string];

    v13 = *MEMORY[0x277D740C0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 addAttribute:v13 value:secondaryLabelColor range:{0, objc_msgSend(v8, "length")}];

    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    [v8 appendAttributedString:v15];

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v11 addAttribute:v13 value:systemBlueColor range:{0, objc_msgSend(v11, "length")}];

    if (UIAccessibilityButtonShapesEnabled())
    {
      [v11 addAttribute:*MEMORY[0x277D741F0] value:&unk_285688AA0 range:{0, objc_msgSend(v11, "length")}];
    }

    [v8 appendAttributedString:v11];
    v17 = *MEMORY[0x277D740A8];
    v18 = MEMORY[0x277D74300];
    v19 = *MEMORY[0x277D76940];
    traitCollection = [(CPSPermissionView *)self traitCollection];
    v21 = [v18 _preferredFontForTextStyle:v19 design:0 variant:256 compatibleWithTraitCollection:traitCollection];
    [v8 addAttribute:v17 value:v21 range:{0, objc_msgSend(v8, "length")}];

    v22 = objc_alloc_init(MEMORY[0x277D74240]);
    [v22 setLineBreakMode:0];
    [v22 setLineSpacing:2.0];
    [v8 addAttribute:*MEMORY[0x277D74118] value:v22 range:{0, objc_msgSend(v8, "length")}];
    [(CPSButton *)self->_permissionButton setAttributedTitle:v8 forState:0];
  }
}

- (void)configureWithAppName:(id)name requestsNotificationPermission:(BOOL)permission requestsLocationConfirmationPermission:(BOOL)confirmationPermission
{
  nameCopy = name;
  [(CPSPermissionView *)self layoutIfNeeded];
  appName = self->_appName;
  self->_appName = nameCopy;

  self->_requestsNotificationPermission = permission;
  self->_requestsLocationConfirmationPermission = confirmationPermission;

  [(CPSPermissionView *)self transitionViewAnimated:0];
}

- (void)permissionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_requestsNotificationPermission)
  {
    v7 = tappedCopy;
    if (self->_requestsLocationConfirmationPermission)
    {
      optionsAction = [(CPSPermissionView *)self optionsAction];

      tappedCopy = v7;
      if (!optionsAction)
      {
        goto LABEL_9;
      }

      optionsAction2 = [(CPSPermissionView *)self optionsAction];
      optionsAction2[2]();
    }

    else
    {
      [(CPSPermissionView *)self toggleNotificationPermission];
    }
  }

  else
  {
    if (!self->_requestsLocationConfirmationPermission)
    {
      goto LABEL_9;
    }

    v7 = tappedCopy;
    [(CPSPermissionView *)self toggleLocationConfirmationPermission];
  }

  tappedCopy = v7;
LABEL_9:
}

- (void)setNotificationPermissionEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_notificationPermissionEnabled != enabled)
  {
    animatedCopy = animated;
    [(CPSPermissionView *)self layoutIfNeeded];
    self->_notificationPermissionEnabled = enabled;

    [(CPSPermissionView *)self transitionViewAnimated:animatedCopy];
  }
}

- (void)setLocationConfirmationPermissionEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_locationConfirmationPermissionEnabled != enabled)
  {
    animatedCopy = animated;
    [(CPSPermissionView *)self layoutIfNeeded];
    self->_locationConfirmationPermissionEnabled = enabled;

    [(CPSPermissionView *)self transitionViewAnimated:animatedCopy];
  }
}

- (void)transitionViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->_permissionTextNeedsUpdate = 1;
  [(CPSPermissionView *)self setNeedsLayout];
  if (animatedCopy)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__CPSPermissionView_transitionViewAnimated___block_invoke;
    v5[3] = &unk_278DD2268;
    v5[4] = self;
    [MEMORY[0x277D75D18] transitionWithView:self duration:5242880 options:v5 animations:0 completion:0.35];
  }

  else
  {

    [(CPSPermissionView *)self layoutIfNeeded];
  }
}

- (void)toggleNotificationPermission
{
  v3 = [(CPSPermissionView *)self notificationPermissionEnabled]^ 1;

  [(CPSPermissionView *)self setNotificationPermissionEnabled:v3 animated:0];
}

- (void)toggleLocationConfirmationPermission
{
  v3 = [(CPSPermissionView *)self locationConfirmationPermissionEnabled]^ 1;

  [(CPSPermissionView *)self setLocationConfirmationPermissionEnabled:v3 animated:0];
}

- (void)traitCollectionDidChange:(id)change
{
  self->_permissionTextNeedsUpdate = 1;
  [(CPSPermissionView *)self setNeedsLayout];

  [(CPSPermissionView *)self layoutIfNeeded];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = CPSPermissionView;
  if ([(CPSPermissionView *)&v11 pointInside:eventCopy withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    permissionButton = self->_permissionButton;
    [(CPSPermissionView *)self convertPoint:permissionButton toView:x, y];
    v8 = [(CPSButton *)permissionButton pointInside:eventCopy withEvent:?];
  }

  return v8;
}

@end