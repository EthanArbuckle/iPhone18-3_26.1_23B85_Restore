@interface LibraryCollectionViewCell
- (BOOL)_isHovered;
- (LibraryCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_imageView;
- (id)_makeCloseButton;
- (void)_applyTabIcon:(id)icon;
- (void)_applyTabIcon:(id)icon toConfiguration:(id)configuration;
- (void)_didReceiveHoverGesture;
- (void)_installCloseButton;
- (void)_setShowsCloseButton:(BOOL)button;
- (void)_setSupportsHover:(BOOL)hover;
- (void)_setUpCloseButtonConstraintsIfNeeded;
- (void)_updateAccessories:(id)accessories;
- (void)prepareForReuse;
- (void)setAccessories:(id)accessories;
- (void)setCloseHandler:(id)handler;
- (void)setContentConfiguration:(id)configuration;
- (void)setTabIconRegistration:(id)registration;
- (void)updateConfigurationForTabIconRegistration:(id)registration;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation LibraryCollectionViewCell

- (LibraryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = LibraryCollectionViewCell;
  v3 = [(LibraryCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)setAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  [(LibraryCollectionViewCell *)self _updateAccessories:accessoriesCopy];
  v5.receiver = self;
  v5.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v5 setAccessories:accessoriesCopy];
}

- (void)setContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [configurationCopy setAxesPreservingSuperviewLayoutMargins:0];
      [configurationCopy setImageToTextPadding:8.0];
    }
  }

  v5.receiver = self;
  v5.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v5 setContentConfiguration:configurationCopy];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v7.receiver = self;
  v7.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v7 updateConfigurationUsingState:stateCopy];
  accessories = [(LibraryCollectionViewCell *)self accessories];
  [(LibraryCollectionViewCell *)self _updateAccessories:accessories];

  [(LibraryCollectionViewCell *)self _setUpCloseButtonConstraintsIfNeeded];
  if (self->_closeButton && ([stateCopy isEditing] & 1) == 0)
  {
    v6 = ([stateCopy isSelected] & 1) != 0 || -[LibraryCollectionViewCell _isHovered](self, "_isHovered");
  }

  else
  {
    v6 = 0;
  }

  [(LibraryCollectionViewCell *)self _setShowsCloseButton:v6];
}

- (void)_updateAccessories:(id)accessories
{
  v18 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [accessoriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(accessoriesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          contentConfiguration = [(LibraryCollectionViewCell *)self contentConfiguration];
          configurationState = [(LibraryCollectionViewCell *)self configurationState];
          [v10 applyContentConfiguration:contentConfiguration forState:configurationState];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [accessoriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)setCloseHandler:(id)handler
{
  v4 = _Block_copy(handler);
  closeHandler = self->_closeHandler;
  self->_closeHandler = v4;

  v6 = self->_closeHandler;
  closeButton = self->_closeButton;
  if (v6)
  {
    if (closeButton)
    {
      goto LABEL_7;
    }

    _makeCloseButton = [(LibraryCollectionViewCell *)self _makeCloseButton];
    v9 = self->_closeButton;
    self->_closeButton = _makeCloseButton;

    [(LibraryCollectionViewCell *)self _installCloseButton];
  }

  else
  {
    if (!closeButton)
    {
      goto LABEL_7;
    }

    [(LibraryCollectionViewCell *)self _setShowsCloseButton:0];
    [(UIButton *)self->_closeButton removeFromSuperview];
    v10 = self->_closeButton;
    self->_closeButton = 0;

    closeButtonLayoutGuide = self->_closeButtonLayoutGuide;
    self->_closeButtonLayoutGuide = 0;
  }

  [(LibraryCollectionViewCell *)self _setSupportsHover:v6 != 0];
LABEL_7:

  [(LibraryCollectionViewCell *)self setNeedsUpdateConfiguration];
}

- (id)_makeCloseButton
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x277D75220];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
  [plainButtonConfiguration setImage:v4];

  v5 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988] scale:2];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v5];

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v6 = MEMORY[0x277D750C8];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__LibraryCollectionViewCell__makeCloseButton__block_invoke;
  v14 = &unk_2781D5B80;
  objc_copyWeak(&v15, &location);
  v7 = [v6 actionWithHandler:&v11];
  v8 = [v2 buttonWithConfiguration:plainButtonConfiguration primaryAction:{v7, v11, v12, v13, v14}];

  [v8 setAlpha:0.0];
  [v8 setPointerInteractionEnabled:1];
  [v8 setPointerStyleProvider:&__block_literal_global_24];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v8 setTintColor:secondaryLabelColor];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v8;
}

void __45__LibraryCollectionViewCell__makeCloseButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained closeHandler];
  v1[2]();
}

id __45__LibraryCollectionViewCell__makeCloseButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 imageView];
  v3 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v2];
  v4 = [MEMORY[0x277D75860] effectWithPreview:v3];
  v5 = MEMORY[0x277D75888];
  [v2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v2 frame];
  v14 = [v5 shapeWithRoundedRect:v7 cornerRadius:{v9, v11, v13, CGRectGetWidth(v18) * 0.5}];
  v15 = [MEMORY[0x277D75890] styleWithEffect:v4 shape:v14];

  return v15;
}

- (void)_installCloseButton
{
  contentView = [(LibraryCollectionViewCell *)self contentView];
  superview = [(UIButton *)self->_closeButton superview];

  if (superview != contentView)
  {
    closeButtonLayoutGuide = self->_closeButtonLayoutGuide;
    self->_closeButtonLayoutGuide = 0;

    [contentView addSubview:self->_closeButton];
  }

  [(LibraryCollectionViewCell *)self _setUpCloseButtonConstraintsIfNeeded];
}

- (void)_setUpCloseButtonConstraintsIfNeeded
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (self->_closeButton)
  {
    contentView = [(LibraryCollectionViewCell *)self contentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageLayoutGuide = [contentView imageLayoutGuide];
      v5 = imageLayoutGuide;
      if (imageLayoutGuide)
      {
        if (self->_closeButtonLayoutGuide != imageLayoutGuide)
        {
          [MEMORY[0x277CCAAD0] deactivateConstraints:self->_closeButtonConstraints];
          centerXAnchor = [(UILayoutGuide *)v5 centerXAnchor];
          centerXAnchor2 = [(UIButton *)self->_closeButton centerXAnchor];
          v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
          v14[0] = v7;
          centerYAnchor = [(UILayoutGuide *)v5 centerYAnchor];
          centerYAnchor2 = [(UIButton *)self->_closeButton centerYAnchor];
          v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
          v14[1] = v10;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
          closeButtonConstraints = self->_closeButtonConstraints;
          self->_closeButtonConstraints = v11;

          objc_storeStrong(&self->_closeButtonLayoutGuide, v5);
          [MEMORY[0x277CCAAD0] activateConstraints:self->_closeButtonConstraints];
        }
      }
    }
  }
}

- (id)_imageView
{
  contentView = [(LibraryCollectionViewCell *)self contentView];
  subviews = [contentView subviews];
  v4 = [subviews safari_firstObjectPassingTest:&__block_literal_global_26];

  return v4;
}

uint64_t __39__LibraryCollectionViewCell__imageView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_setShowsCloseButton:(BOOL)button
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__LibraryCollectionViewCell__setShowsCloseButton___block_invoke;
  v3[3] = &unk_2781D51B8;
  v3[4] = self;
  buttonCopy = button;
  [(UIView *)0.2 safari_animate:MEMORY[0x277D75D18] withDuration:!button delay:6 options:v3 animations:0 completion:?];
}

uint64_t __50__LibraryCollectionViewCell__setShowsCloseButton___block_invoke(uint64_t a1)
{
  v2 = (*(a1 + 40) ^ 1u);
  v3 = [*(a1 + 32) _imageView];
  [v3 setAlpha:v2];

  LOBYTE(v4) = *(a1 + 40);
  v5 = v4;
  v6 = *(*(a1 + 32) + 872);

  return [v6 setAlpha:v5];
}

- (void)_didReceiveHoverGesture
{
  state = [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer state];
  if (state <= 4 && ((1 << state) & 0x1A) != 0)
  {

    [(LibraryCollectionViewCell *)self setNeedsUpdateConfiguration];
  }
}

- (BOOL)_isHovered
{
  [(LibraryCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer locationInView:self];
  v15.x = v11;
  v15.y = v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v13 = CGRectContainsPoint(v16, v15);
  if (v13)
  {
    LOBYTE(v13) = ([(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer state]- 1) < 2;
  }

  return v13;
}

- (void)_setSupportsHover:(BOOL)hover
{
  hoverCopy = hover;
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  if (hoverCopy)
  {
    if (!hoverGestureRecognizer)
    {
      v6 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__didReceiveHoverGesture];
      v7 = self->_hoverGestureRecognizer;
      self->_hoverGestureRecognizer = v6;

      v8 = self->_hoverGestureRecognizer;

      [(LibraryCollectionViewCell *)self addGestureRecognizer:v8];
    }
  }

  else if (hoverGestureRecognizer)
  {
    [(LibraryCollectionViewCell *)self removeGestureRecognizer:?];
    v9 = self->_hoverGestureRecognizer;
    self->_hoverGestureRecognizer = 0;
  }
}

- (void)_applyTabIcon:(id)icon
{
  iconCopy = icon;
  contentConfiguration = [(LibraryCollectionViewCell *)self contentConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LibraryCollectionViewCell *)self _applyTabIcon:iconCopy toConfiguration:contentConfiguration];
    [(LibraryCollectionViewCell *)self setContentConfiguration:contentConfiguration];
  }
}

- (void)_applyTabIcon:(id)icon toConfiguration:(id)configuration
{
  if (icon)
  {
    configurationCopy = configuration;
    [configurationCopy setImage:icon];
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    configurationCopy2 = configuration;
    configurationCopy = [v5 systemImageNamed:@"globe"];
    [configurationCopy2 setImage:?];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v5 prepareForReuse];
  tabIconRegistration = self->_tabIconRegistration;
  self->_tabIconRegistration = 0;

  closeButtonLayoutGuide = self->_closeButtonLayoutGuide;
  self->_closeButtonLayoutGuide = 0;
}

- (void)setTabIconRegistration:(id)registration
{
  registrationCopy = registration;
  v6 = self->_tabIconRegistration;
  if (v6 != registrationCopy)
  {
    objc_storeStrong(&self->_tabIconRegistration, registration);
    [(SFTabIconRegistration *)v6 setContentObserver:&__block_literal_global_40];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __52__LibraryCollectionViewCell_setTabIconRegistration___block_invoke_2;
    v11 = &unk_2781D8370;
    objc_copyWeak(&v12, &location);
    [(SFTabIconRegistration *)registrationCopy setContentObserver:&v8];
    if (registrationCopy)
    {
      v7 = [(SFTabIconRegistration *)registrationCopy content:v8];
      [(LibraryCollectionViewCell *)self _applyTabIcon:v7];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __52__LibraryCollectionViewCell_setTabIconRegistration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applyTabIcon:v3];
}

- (void)updateConfigurationForTabIconRegistration:(id)registration
{
  tabIconRegistration = self->_tabIconRegistration;
  if (tabIconRegistration)
  {
    registrationCopy = registration;
    content = [(SFTabIconRegistration *)tabIconRegistration content];
    [(LibraryCollectionViewCell *)self _applyTabIcon:content toConfiguration:registrationCopy];
  }
}

@end