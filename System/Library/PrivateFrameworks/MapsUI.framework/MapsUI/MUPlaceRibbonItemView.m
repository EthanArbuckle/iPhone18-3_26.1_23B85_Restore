@interface MUPlaceRibbonItemView
- (MUPlaceRibbonItemView)initWithFrame:(CGRect)a3;
- (void)_handleTap;
- (void)_setAXIdentifierWithItemType:(id)a3;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateGestureRecognizers;
- (void)_updateValueText;
- (void)ribbonItemViewModelDidUpdate:(id)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUPlaceRibbonItemView

- (void)ribbonItemViewModelDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceRibbonItemView *)self invalidationHandler];

  if (v5)
  {
    v6 = [(MUPlaceRibbonItemView *)self invalidationHandler];
    v6[2]();
  }

  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DD250];
  valueLabel = self->_valueLabel;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MUPlaceRibbonItemView_ribbonItemViewModelDidUpdate___block_invoke;
  v9[3] = &unk_1E821BAC8;
  objc_copyWeak(&v10, &location);
  [v7 transitionWithView:valueLabel duration:5242880 options:v9 animations:0 completion:0.300000012];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __54__MUPlaceRibbonItemView_ribbonItemViewModelDidUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateAppearance];
    WeakRetained = v2;
  }
}

- (void)_setAXIdentifierWithItemType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Unknown";
  }

  v7 = v5;
  v6 = [@"RibbonItemType" stringByAppendingString:?];
  [(MUPlaceRibbonItemView *)self setAccessibilityIdentifier:v6];
}

- (void)_handleTap
{
  v3 = [(MUPlaceRibbonItemView *)self actionHandler];

  if (v3)
  {
    v4 = [(MUPlaceRibbonItemView *)self actionHandler];
    v4[2](v4, self);
  }
}

- (void)setViewModel:(id)a3
{
  v6 = a3;
  if (![(MUPlaceRibbonItemViewModel *)self->_viewModel isEqual:?])
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUPlaceRibbonItemViewModel *)self->_viewModel setUpdateDelegate:self];
    [(MUPlaceRibbonItemView *)self _updateAppearance];
    v5 = [(MUPlaceRibbonItemViewModel *)self->_viewModel typeStringForAX];
    [(MUPlaceRibbonItemView *)self _setAXIdentifierWithItemType:v5];
  }
}

- (void)_updateValueText
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceRibbonItemViewModel *)self->_viewModel valueStringProvider];
  v4 = v3[2]();

  if ([v4 length])
  {
    if ([(MUPlaceRibbonItemViewModel *)self->_viewModel isTappable]&& UIAccessibilityButtonShapesEnabled())
    {
      v5 = [v4 mutableCopy];
      v10 = *MEMORY[0x1E69DB758];
      v11[0] = &unk_1F450DC10;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      [v5 addAttributes:v6 range:{0, objc_msgSend(v5, "length")}];

      v7 = [v5 copy];
      v4 = v7;
    }

    [(MULabelViewProtocol *)self->_valueLabel setAttributedText:v4];
    v8 = [v4 string];
    [(MULabelViewProtocol *)self->_valueLabel setAccessibilityLabel:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateGestureRecognizers
{
  v3 = [(MUPlaceRibbonItemViewModel *)self->_viewModel isTappable];
  tapRecognizer = self->_tapRecognizer;
  if (v3)
  {
    if (!tapRecognizer)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD060]);
      v6 = self->_tapRecognizer;
      self->_tapRecognizer = v5;

      [(UITapGestureRecognizer *)self->_tapRecognizer addTarget:self action:sel__handleTap];
      tapRecognizer = self->_tapRecognizer;
    }

    [(MUPlaceRibbonItemView *)self addGestureRecognizer:tapRecognizer];
    selectRecognizer = self->_selectRecognizer;
    if (!selectRecognizer)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DD060]);
      v9 = self->_selectRecognizer;
      self->_selectRecognizer = v8;

      [(UITapGestureRecognizer *)self->_selectRecognizer addTarget:self action:sel__handleTap];
      [(UITapGestureRecognizer *)self->_selectRecognizer setAllowedPressTypes:&unk_1F450E260];
      [(UITapGestureRecognizer *)self->_selectRecognizer setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
      selectRecognizer = self->_selectRecognizer;
    }

    [(MUPlaceRibbonItemView *)self addGestureRecognizer:selectRecognizer];
  }

  else
  {
    [(MUPlaceRibbonItemView *)self removeGestureRecognizer:tapRecognizer];
    v10 = self->_selectRecognizer;

    [(MUPlaceRibbonItemView *)self removeGestureRecognizer:v10];
  }
}

- (void)_updateAppearance
{
  v3 = [(MUPlaceRibbonItemViewModel *)self->_viewModel titleStringProvider];

  if (v3)
  {
    v4 = [(MUPlaceRibbonItemViewModel *)self->_viewModel titleStringProvider];
    v5 = v4[2]();
    [(MULabelViewProtocol *)self->_titleLabel setAttributedText:v5];
  }

  v6 = [(MUPlaceRibbonItemViewModel *)self->_viewModel valueStringProvider];

  if (v6)
  {
    [(MUPlaceRibbonItemView *)self _updateValueText];
  }

  v7 = [(MUPlaceRibbonItemViewModel *)self->_viewModel preferredAccessibilityValue];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(MUPlaceRibbonItemViewModel *)self->_viewModel preferredAccessibilityValue];
    [(MULabelViewProtocol *)self->_valueLabel setAccessibilityLabel:v9];
  }

  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setActive:0];
  v10 = [(MUPlaceRibbonItemViewModel *)self->_viewModel shouldCenterContents];
  titleLabel = self->_titleLabel;
  if (v10)
  {
    [(MULabelViewProtocol *)titleLabel setTextAlignment:1];
    [(MULabelViewProtocol *)self->_valueLabel setTextAlignment:1];
    v12 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
    v13 = [(MUPlaceRibbonItemView *)self trailingAnchor];
    [v12 constraintEqualToAnchor:v13];
  }

  else
  {
    [(MULabelViewProtocol *)titleLabel setTextAlignment:0];
    [(MULabelViewProtocol *)self->_valueLabel setTextAlignment:0];
    v12 = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
    v13 = [(MUPlaceRibbonItemView *)self trailingAnchor];
    [v12 constraintLessThanOrEqualToAnchor:v13];
  }
  v14 = ;
  titleLabelLeadingConstraint = self->_titleLabelLeadingConstraint;
  self->_titleLabelLeadingConstraint = v14;

  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setActive:1];

  [(MUPlaceRibbonItemView *)self _updateGestureRecognizers];
}

- (void)_setupConstraints
{
  v34[8] = *MEMORY[0x1E69E9840];
  valueLabel = self->_valueLabel;
  v4 = self;
  v5 = [(MULabelViewProtocol *)valueLabel topAnchor];
  v6 = [(MULabelViewProtocol *)v4->_titleLabel bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:2.0];

  LODWORD(v8) = 1148829696;
  v28 = v7;
  [v7 setPriority:v8];
  v24 = MEMORY[0x1E696ACD8];
  v33 = [(MULabelViewProtocol *)v4->_titleLabel leadingAnchor];
  v32 = [(MUPlaceRibbonItemView *)v4 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:0.0];
  v34[0] = v31;
  v30 = [(MULabelViewProtocol *)v4->_titleLabel trailingAnchor];
  v29 = [(MUPlaceRibbonItemView *)v4 trailingAnchor];
  v27 = [v30 constraintLessThanOrEqualToAnchor:v29 constant:0.0];
  v34[1] = v27;
  v26 = [(MULabelViewProtocol *)v4->_titleLabel topAnchor];
  v25 = [(MUPlaceRibbonItemView *)v4 topAnchor];
  v23 = [v26 constraintEqualToAnchor:v25];
  v34[2] = v23;
  v34[3] = v7;
  v22 = [(MULabelViewProtocol *)self->_valueLabel topAnchor];
  v21 = [(MULabelViewProtocol *)v4->_titleLabel bottomAnchor];
  v20 = [v22 constraintGreaterThanOrEqualToAnchor:v21 constant:2.0];
  v34[4] = v20;
  v9 = [(MULabelViewProtocol *)self->_valueLabel leadingAnchor];
  v10 = [(MUPlaceRibbonItemView *)v4 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];
  v34[5] = v11;
  v12 = [(MULabelViewProtocol *)self->_valueLabel trailingAnchor];
  v13 = [(MUPlaceRibbonItemView *)v4 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
  v34[6] = v14;
  v15 = [(MULabelViewProtocol *)self->_valueLabel bottomAnchor];
  v16 = [(MUPlaceRibbonItemView *)v4 bottomAnchor];

  v17 = [v15 constraintLessThanOrEqualToAnchor:v16];
  v34[7] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:8];
  [v24 activateConstraints:v18];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_setupSubviews
{
  v3 = [MUInfoCardStyle vibrantLabelForProminence:1];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(MULabelViewProtocol *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_titleLabel setNumberOfLines:1];
  [(MULabelViewProtocol *)self->_titleLabel setAccessibilityIdentifier:@"RibbonItemTitle"];
  [(MUPlaceRibbonItemView *)self addSubview:self->_titleLabel];
  v5 = [MUInfoCardStyle labelForProminence:0];
  valueLabel = self->_valueLabel;
  self->_valueLabel = v5;

  [(MULabelViewProtocol *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MULabelViewProtocol *)self->_valueLabel setNumberOfLines:1];
  [(MULabelViewProtocol *)self->_valueLabel setAccessibilityIdentifier:@"RibbonItemValue"];
  [(MUPlaceRibbonItemView *)self addSubview:self->_valueLabel];

  MURegisterForButtonShapeEnablementChanges(self, sel__updateValueText);
}

- (MUPlaceRibbonItemView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MUPlaceRibbonItemView;
  v3 = [(MUPlaceRibbonItemView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceRibbonItemView *)v3 _setupSubviews];
    [(MUPlaceRibbonItemView *)v4 _setupConstraints];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__updateAppearance name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

@end