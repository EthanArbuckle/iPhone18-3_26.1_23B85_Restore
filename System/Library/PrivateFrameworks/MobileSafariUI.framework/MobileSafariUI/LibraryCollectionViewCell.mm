@interface LibraryCollectionViewCell
- (BOOL)_isHovered;
- (LibraryCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_imageView;
- (id)_makeCloseButton;
- (void)_applyTabIcon:(id)a3;
- (void)_applyTabIcon:(id)a3 toConfiguration:(id)a4;
- (void)_didReceiveHoverGesture;
- (void)_installCloseButton;
- (void)_setShowsCloseButton:(BOOL)a3;
- (void)_setSupportsHover:(BOOL)a3;
- (void)_setUpCloseButtonConstraintsIfNeeded;
- (void)_updateAccessories:(id)a3;
- (void)prepareForReuse;
- (void)setAccessories:(id)a3;
- (void)setCloseHandler:(id)a3;
- (void)setContentConfiguration:(id)a3;
- (void)setTabIconRegistration:(id)a3;
- (void)updateConfigurationForTabIconRegistration:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation LibraryCollectionViewCell

- (LibraryCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = LibraryCollectionViewCell;
  v3 = [(LibraryCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)setAccessories:(id)a3
{
  v4 = a3;
  [(LibraryCollectionViewCell *)self _updateAccessories:v4];
  v5.receiver = self;
  v5.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v5 setAccessories:v4];
}

- (void)setContentConfiguration:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setAxesPreservingSuperviewLayoutMargins:0];
      [v4 setImageToTextPadding:8.0];
    }
  }

  v5.receiver = self;
  v5.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v5 setContentConfiguration:v4];
}

- (void)updateConfigurationUsingState:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LibraryCollectionViewCell;
  [(LibraryCollectionViewCell *)&v7 updateConfigurationUsingState:v4];
  v5 = [(LibraryCollectionViewCell *)self accessories];
  [(LibraryCollectionViewCell *)self _updateAccessories:v5];

  [(LibraryCollectionViewCell *)self _setUpCloseButtonConstraintsIfNeeded];
  if (self->_closeButton && ([v4 isEditing] & 1) == 0)
  {
    v6 = ([v4 isSelected] & 1) != 0 || -[LibraryCollectionViewCell _isHovered](self, "_isHovered");
  }

  else
  {
    v6 = 0;
  }

  [(LibraryCollectionViewCell *)self _setShowsCloseButton:v6];
}

- (void)_updateAccessories:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [(LibraryCollectionViewCell *)self contentConfiguration];
          v12 = [(LibraryCollectionViewCell *)self configurationState];
          [v10 applyContentConfiguration:v11 forState:v12];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)setCloseHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

    v8 = [(LibraryCollectionViewCell *)self _makeCloseButton];
    v9 = self->_closeButton;
    self->_closeButton = v8;

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
  v3 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
  [v3 setImage:v4];

  v5 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988] scale:2];
  [v3 setPreferredSymbolConfigurationForImage:v5];

  [v3 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v6 = MEMORY[0x277D750C8];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __45__LibraryCollectionViewCell__makeCloseButton__block_invoke;
  v14 = &unk_2781D5B80;
  objc_copyWeak(&v15, &location);
  v7 = [v6 actionWithHandler:&v11];
  v8 = [v2 buttonWithConfiguration:v3 primaryAction:{v7, v11, v12, v13, v14}];

  [v8 setAlpha:0.0];
  [v8 setPointerInteractionEnabled:1];
  [v8 setPointerStyleProvider:&__block_literal_global_24];
  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v8 setTintColor:v9];

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
  v5 = [(LibraryCollectionViewCell *)self contentView];
  v3 = [(UIButton *)self->_closeButton superview];

  if (v3 != v5)
  {
    closeButtonLayoutGuide = self->_closeButtonLayoutGuide;
    self->_closeButtonLayoutGuide = 0;

    [v5 addSubview:self->_closeButton];
  }

  [(LibraryCollectionViewCell *)self _setUpCloseButtonConstraintsIfNeeded];
}

- (void)_setUpCloseButtonConstraintsIfNeeded
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (self->_closeButton)
  {
    v3 = [(LibraryCollectionViewCell *)self contentView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 imageLayoutGuide];
      v5 = v4;
      if (v4)
      {
        if (self->_closeButtonLayoutGuide != v4)
        {
          [MEMORY[0x277CCAAD0] deactivateConstraints:self->_closeButtonConstraints];
          v13 = [(UILayoutGuide *)v5 centerXAnchor];
          v6 = [(UIButton *)self->_closeButton centerXAnchor];
          v7 = [v13 constraintEqualToAnchor:v6];
          v14[0] = v7;
          v8 = [(UILayoutGuide *)v5 centerYAnchor];
          v9 = [(UIButton *)self->_closeButton centerYAnchor];
          v10 = [v8 constraintEqualToAnchor:v9];
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
  v2 = [(LibraryCollectionViewCell *)self contentView];
  v3 = [v2 subviews];
  v4 = [v3 safari_firstObjectPassingTest:&__block_literal_global_26];

  return v4;
}

uint64_t __39__LibraryCollectionViewCell__imageView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_setShowsCloseButton:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__LibraryCollectionViewCell__setShowsCloseButton___block_invoke;
  v3[3] = &unk_2781D51B8;
  v3[4] = self;
  v4 = a3;
  [(UIView *)0.2 safari_animate:MEMORY[0x277D75D18] withDuration:!a3 delay:6 options:v3 animations:0 completion:?];
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
  v3 = [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer state];
  if (v3 <= 4 && ((1 << v3) & 0x1A) != 0)
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

- (void)_setSupportsHover:(BOOL)a3
{
  v3 = a3;
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  if (v3)
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

- (void)_applyTabIcon:(id)a3
{
  v5 = a3;
  v4 = [(LibraryCollectionViewCell *)self contentConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(LibraryCollectionViewCell *)self _applyTabIcon:v5 toConfiguration:v4];
    [(LibraryCollectionViewCell *)self setContentConfiguration:v4];
  }
}

- (void)_applyTabIcon:(id)a3 toConfiguration:(id)a4
{
  if (a3)
  {
    v7 = a4;
    [v7 setImage:a3];
  }

  else
  {
    v5 = MEMORY[0x277D755B8];
    v6 = a4;
    v7 = [v5 systemImageNamed:@"globe"];
    [v6 setImage:?];
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

- (void)setTabIconRegistration:(id)a3
{
  v5 = a3;
  v6 = self->_tabIconRegistration;
  if (v6 != v5)
  {
    objc_storeStrong(&self->_tabIconRegistration, a3);
    [(SFTabIconRegistration *)v6 setContentObserver:&__block_literal_global_40];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __52__LibraryCollectionViewCell_setTabIconRegistration___block_invoke_2;
    v11 = &unk_2781D8370;
    objc_copyWeak(&v12, &location);
    [(SFTabIconRegistration *)v5 setContentObserver:&v8];
    if (v5)
    {
      v7 = [(SFTabIconRegistration *)v5 content:v8];
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

- (void)updateConfigurationForTabIconRegistration:(id)a3
{
  tabIconRegistration = self->_tabIconRegistration;
  if (tabIconRegistration)
  {
    v5 = a3;
    v6 = [(SFTabIconRegistration *)tabIconRegistration content];
    [(LibraryCollectionViewCell *)self _applyTabIcon:v6 toConfiguration:v5];
  }
}

@end