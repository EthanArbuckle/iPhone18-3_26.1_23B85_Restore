@interface MUPlaceRibbonItemView
- (MUPlaceRibbonItemView)initWithFrame:(CGRect)frame;
- (void)_handleTap;
- (void)_setAXIdentifierWithItemType:(id)type;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateGestureRecognizers;
- (void)_updateValueText;
- (void)ribbonItemViewModelDidUpdate:(id)update;
- (void)setViewModel:(id)model;
@end

@implementation MUPlaceRibbonItemView

- (void)ribbonItemViewModelDidUpdate:(id)update
{
  updateCopy = update;
  invalidationHandler = [(MUPlaceRibbonItemView *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(MUPlaceRibbonItemView *)self invalidationHandler];
    invalidationHandler2[2]();
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

- (void)_setAXIdentifierWithItemType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v5 = typeCopy;
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
  actionHandler = [(MUPlaceRibbonItemView *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(MUPlaceRibbonItemView *)self actionHandler];
    actionHandler2[2](actionHandler2, self);
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (![(MUPlaceRibbonItemViewModel *)self->_viewModel isEqual:?])
  {
    objc_storeStrong(&self->_viewModel, model);
    [(MUPlaceRibbonItemViewModel *)self->_viewModel setUpdateDelegate:self];
    [(MUPlaceRibbonItemView *)self _updateAppearance];
    typeStringForAX = [(MUPlaceRibbonItemViewModel *)self->_viewModel typeStringForAX];
    [(MUPlaceRibbonItemView *)self _setAXIdentifierWithItemType:typeStringForAX];
  }
}

- (void)_updateValueText
{
  v11[1] = *MEMORY[0x1E69E9840];
  valueStringProvider = [(MUPlaceRibbonItemViewModel *)self->_viewModel valueStringProvider];
  v4 = valueStringProvider[2]();

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
    string = [v4 string];
    [(MULabelViewProtocol *)self->_valueLabel setAccessibilityLabel:string];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_updateGestureRecognizers
{
  isTappable = [(MUPlaceRibbonItemViewModel *)self->_viewModel isTappable];
  tapRecognizer = self->_tapRecognizer;
  if (isTappable)
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
  titleStringProvider = [(MUPlaceRibbonItemViewModel *)self->_viewModel titleStringProvider];

  if (titleStringProvider)
  {
    titleStringProvider2 = [(MUPlaceRibbonItemViewModel *)self->_viewModel titleStringProvider];
    v5 = titleStringProvider2[2]();
    [(MULabelViewProtocol *)self->_titleLabel setAttributedText:v5];
  }

  valueStringProvider = [(MUPlaceRibbonItemViewModel *)self->_viewModel valueStringProvider];

  if (valueStringProvider)
  {
    [(MUPlaceRibbonItemView *)self _updateValueText];
  }

  preferredAccessibilityValue = [(MUPlaceRibbonItemViewModel *)self->_viewModel preferredAccessibilityValue];
  v8 = [preferredAccessibilityValue length];

  if (v8)
  {
    preferredAccessibilityValue2 = [(MUPlaceRibbonItemViewModel *)self->_viewModel preferredAccessibilityValue];
    [(MULabelViewProtocol *)self->_valueLabel setAccessibilityLabel:preferredAccessibilityValue2];
  }

  [(NSLayoutConstraint *)self->_titleLabelLeadingConstraint setActive:0];
  shouldCenterContents = [(MUPlaceRibbonItemViewModel *)self->_viewModel shouldCenterContents];
  titleLabel = self->_titleLabel;
  if (shouldCenterContents)
  {
    [(MULabelViewProtocol *)titleLabel setTextAlignment:1];
    [(MULabelViewProtocol *)self->_valueLabel setTextAlignment:1];
    trailingAnchor = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
    trailingAnchor2 = [(MUPlaceRibbonItemView *)self trailingAnchor];
    [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  }

  else
  {
    [(MULabelViewProtocol *)titleLabel setTextAlignment:0];
    [(MULabelViewProtocol *)self->_valueLabel setTextAlignment:0];
    trailingAnchor = [(MULabelViewProtocol *)self->_titleLabel trailingAnchor];
    trailingAnchor2 = [(MUPlaceRibbonItemView *)self trailingAnchor];
    [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
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
  selfCopy = self;
  topAnchor = [(MULabelViewProtocol *)valueLabel topAnchor];
  bottomAnchor = [(MULabelViewProtocol *)selfCopy->_titleLabel bottomAnchor];
  v7 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:2.0];

  LODWORD(v8) = 1148829696;
  v28 = v7;
  [v7 setPriority:v8];
  v24 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(MULabelViewProtocol *)selfCopy->_titleLabel leadingAnchor];
  leadingAnchor2 = [(MUPlaceRibbonItemView *)selfCopy leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v34[0] = v31;
  trailingAnchor = [(MULabelViewProtocol *)selfCopy->_titleLabel trailingAnchor];
  trailingAnchor2 = [(MUPlaceRibbonItemView *)selfCopy trailingAnchor];
  v27 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:0.0];
  v34[1] = v27;
  topAnchor2 = [(MULabelViewProtocol *)selfCopy->_titleLabel topAnchor];
  topAnchor3 = [(MUPlaceRibbonItemView *)selfCopy topAnchor];
  v23 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v34[2] = v23;
  v34[3] = v7;
  topAnchor4 = [(MULabelViewProtocol *)self->_valueLabel topAnchor];
  bottomAnchor2 = [(MULabelViewProtocol *)selfCopy->_titleLabel bottomAnchor];
  v20 = [topAnchor4 constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:2.0];
  v34[4] = v20;
  leadingAnchor3 = [(MULabelViewProtocol *)self->_valueLabel leadingAnchor];
  leadingAnchor4 = [(MUPlaceRibbonItemView *)selfCopy leadingAnchor];
  v11 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  v34[5] = v11;
  trailingAnchor3 = [(MULabelViewProtocol *)self->_valueLabel trailingAnchor];
  trailingAnchor4 = [(MUPlaceRibbonItemView *)selfCopy trailingAnchor];
  v14 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  v34[6] = v14;
  bottomAnchor3 = [(MULabelViewProtocol *)self->_valueLabel bottomAnchor];
  bottomAnchor4 = [(MUPlaceRibbonItemView *)selfCopy bottomAnchor];

  v17 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
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

- (MUPlaceRibbonItemView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MUPlaceRibbonItemView;
  v3 = [(MUPlaceRibbonItemView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceRibbonItemView *)v3 _setupSubviews];
    [(MUPlaceRibbonItemView *)v4 _setupConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateAppearance name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

@end