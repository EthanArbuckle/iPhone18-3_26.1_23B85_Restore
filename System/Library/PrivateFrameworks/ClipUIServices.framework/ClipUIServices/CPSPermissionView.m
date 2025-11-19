@interface CPSPermissionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CPSPermissionView)initWithFrame:(CGRect)a3;
- (void)configureWithAppName:(id)a3 requestsNotificationPermission:(BOOL)a4 requestsLocationConfirmationPermission:(BOOL)a5;
- (void)layoutSubviews;
- (void)permissionButtonTapped:(id)a3;
- (void)setLocationConfirmationPermissionEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setNotificationPermissionEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)toggleLocationConfirmationPermission;
- (void)toggleNotificationPermission;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionViewAnimated:(BOOL)a3;
@end

@implementation CPSPermissionView

- (CPSPermissionView)initWithFrame:(CGRect)a3
{
  v35[5] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = CPSPermissionView;
  v3 = [(CPSPermissionView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CPSButton);
    permissionButton = v3->_permissionButton;
    v3->_permissionButton = v4;

    [(CPSButton *)v3->_permissionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(CPSButton *)v3->_permissionButton setBackgroundColor:v6];

    [(CPSButton *)v3->_permissionButton setAnimatesAlphaWhenHighlighted:1];
    [(CPSButton *)v3->_permissionButton setContentHorizontalAlignment:1];
    [(CPSButton *)v3->_permissionButton setContentEdgeInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    v7 = [(CPSButton *)v3->_permissionButton titleLabel];
    [v7 setAdjustsFontForContentSizeCategory:1];

    v8 = [(CPSButton *)v3->_permissionButton titleLabel];
    [v8 setNumberOfLines:0];

    v9 = [(CPSButton *)v3->_permissionButton titleLabel];
    [v9 setLineBreakMode:0];

    [(CPSButton *)v3->_permissionButton addTarget:v3 action:sel_permissionButtonTapped_ forControlEvents:64];
    [(CPSPermissionView *)v3 addSubview:v3->_permissionButton];
    v25 = MEMORY[0x277CCAAD0];
    v33 = [(CPSButton *)v3->_permissionButton titleLabel];
    v32 = [v33 leadingAnchor];
    v31 = [(CPSPermissionView *)v3 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v35[0] = v30;
    v29 = [(CPSButton *)v3->_permissionButton titleLabel];
    v28 = [v29 topAnchor];
    v27 = [(CPSPermissionView *)v3 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v35[1] = v26;
    v24 = [(CPSButton *)v3->_permissionButton titleLabel];
    v23 = [v24 bottomAnchor];
    v22 = [(CPSPermissionView *)v3 bottomAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v35[2] = v21;
    v10 = [(CPSButton *)v3->_permissionButton titleLabel];
    v11 = [v10 trailingAnchor];
    v12 = [(CPSPermissionView *)v3 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v35[3] = v13;
    v14 = [(CPSButton *)v3->_permissionButton trailingAnchor];
    v15 = [(CPSButton *)v3->_permissionButton titleLabel];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
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

    v12 = [v11 string];
    [(CPSButton *)self->_permissionButton setExtraTapTargetSubstring:v12];

    v13 = *MEMORY[0x277D740C0];
    v14 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 addAttribute:v13 value:v14 range:{0, objc_msgSend(v8, "length")}];

    v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    [v8 appendAttributedString:v15];

    v16 = [MEMORY[0x277D75348] systemBlueColor];
    [v11 addAttribute:v13 value:v16 range:{0, objc_msgSend(v11, "length")}];

    if (UIAccessibilityButtonShapesEnabled())
    {
      [v11 addAttribute:*MEMORY[0x277D741F0] value:&unk_285688AA0 range:{0, objc_msgSend(v11, "length")}];
    }

    [v8 appendAttributedString:v11];
    v17 = *MEMORY[0x277D740A8];
    v18 = MEMORY[0x277D74300];
    v19 = *MEMORY[0x277D76940];
    v20 = [(CPSPermissionView *)self traitCollection];
    v21 = [v18 _preferredFontForTextStyle:v19 design:0 variant:256 compatibleWithTraitCollection:v20];
    [v8 addAttribute:v17 value:v21 range:{0, objc_msgSend(v8, "length")}];

    v22 = objc_alloc_init(MEMORY[0x277D74240]);
    [v22 setLineBreakMode:0];
    [v22 setLineSpacing:2.0];
    [v8 addAttribute:*MEMORY[0x277D74118] value:v22 range:{0, objc_msgSend(v8, "length")}];
    [(CPSButton *)self->_permissionButton setAttributedTitle:v8 forState:0];
  }
}

- (void)configureWithAppName:(id)a3 requestsNotificationPermission:(BOOL)a4 requestsLocationConfirmationPermission:(BOOL)a5
{
  v8 = a3;
  [(CPSPermissionView *)self layoutIfNeeded];
  appName = self->_appName;
  self->_appName = v8;

  self->_requestsNotificationPermission = a4;
  self->_requestsLocationConfirmationPermission = a5;

  [(CPSPermissionView *)self transitionViewAnimated:0];
}

- (void)permissionButtonTapped:(id)a3
{
  v4 = a3;
  if (self->_requestsNotificationPermission)
  {
    v7 = v4;
    if (self->_requestsLocationConfirmationPermission)
    {
      v5 = [(CPSPermissionView *)self optionsAction];

      v4 = v7;
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = [(CPSPermissionView *)self optionsAction];
      v6[2]();
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

    v7 = v4;
    [(CPSPermissionView *)self toggleLocationConfirmationPermission];
  }

  v4 = v7;
LABEL_9:
}

- (void)setNotificationPermissionEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_notificationPermissionEnabled != a3)
  {
    v4 = a4;
    [(CPSPermissionView *)self layoutIfNeeded];
    self->_notificationPermissionEnabled = a3;

    [(CPSPermissionView *)self transitionViewAnimated:v4];
  }
}

- (void)setLocationConfirmationPermissionEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_locationConfirmationPermissionEnabled != a3)
  {
    v4 = a4;
    [(CPSPermissionView *)self layoutIfNeeded];
    self->_locationConfirmationPermissionEnabled = a3;

    [(CPSPermissionView *)self transitionViewAnimated:v4];
  }
}

- (void)transitionViewAnimated:(BOOL)a3
{
  v3 = a3;
  self->_permissionTextNeedsUpdate = 1;
  [(CPSPermissionView *)self setNeedsLayout];
  if (v3)
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

- (void)traitCollectionDidChange:(id)a3
{
  self->_permissionTextNeedsUpdate = 1;
  [(CPSPermissionView *)self setNeedsLayout];

  [(CPSPermissionView *)self layoutIfNeeded];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CPSPermissionView;
  if ([(CPSPermissionView *)&v11 pointInside:v7 withEvent:x, y])
  {
    v8 = 1;
  }

  else
  {
    permissionButton = self->_permissionButton;
    [(CPSPermissionView *)self convertPoint:permissionButton toView:x, y];
    v8 = [(CPSButton *)permissionButton pointInside:v7 withEvent:?];
  }

  return v8;
}

@end