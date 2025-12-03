@interface HKCurrentTimeView
- (HKCurrentTimeView)initWithCoder:(id)coder;
- (HKCurrentTimeView)initWithWideHorizontalMargin:(BOOL)margin;
- (HKCurrentTimeViewDelegate)delegate;
- (double)_backgroundAlpha:(BOOL)alpha;
- (double)_currentTimeButtonBaselineToBottom;
- (double)_currentTimeButtonBaselineToTop;
- (double)_foregroundAlpha:(BOOL)alpha;
- (id)_backgroundColor:(BOOL)color;
- (id)_colorIfForeground:(BOOL)foreground enabled:(BOOL)enabled;
- (id)_foregroundColor:(BOOL)color;
- (id)_labelColor:(BOOL)color;
- (id)_tintColor:(BOOL)color;
- (void)_handleContentSizeCategoryDidChange;
- (void)currentTimeButtonTapped:(id)tapped;
- (void)dealloc;
- (void)nextTimeIndexButtonTapped:(id)tapped;
- (void)previousTimeIndexButtonTapped:(id)tapped;
- (void)setCurrentTimeButtonEnabled:(BOOL)enabled;
- (void)setCurrentTimeString:(id)string;
- (void)setDisableControls:(BOOL)controls;
- (void)setNextTimeButtonEnabled:(BOOL)enabled;
- (void)setPreviousTimeButtonEnabled:(BOOL)enabled;
- (void)setupViewWithWideHorizontalMargin:(BOOL)margin;
@end

@implementation HKCurrentTimeView

- (HKCurrentTimeView)initWithWideHorizontalMargin:(BOOL)margin
{
  marginCopy = margin;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v8.receiver = self;
  v8.super_class = HKCurrentTimeView;
  v6 = [(HKCurrentTimeView *)&v8 initWithFrame:?];

  if (v6)
  {
    [(HKCurrentTimeView *)v6 setupViewWithWideHorizontalMargin:marginCopy];
  }

  return v6;
}

- (HKCurrentTimeView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HKCurrentTimeView;
  return [(HKCurrentTimeView *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = HKCurrentTimeView;
  [(HKCurrentTimeView *)&v4 dealloc];
}

- (void)setupViewWithWideHorizontalMargin:(BOOL)margin
{
  marginCopy = margin;
  v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  currentTimeButton = self->_currentTimeButton;
  self->_currentTimeButton = v5;

  [(UIButton *)self->_currentTimeButton addTarget:self action:sel_currentTimeButtonTapped_ forControlEvents:64];
  titleLabel = [(UIButton *)self->_currentTimeButton titleLabel];
  _currentTimeButtonFont = [(HKCurrentTimeView *)self _currentTimeButtonFont];
  [titleLabel setFont:_currentTimeButtonFont];

  titleLabel2 = [(UIButton *)self->_currentTimeButton titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  titleLabel3 = [(UIButton *)self->_currentTimeButton titleLabel];
  [titleLabel3 setBaselineAdjustment:1];

  v11 = self->_currentTimeButton;
  v12 = HKHealthKeyColor();
  [(UIButton *)v11 setTitleColor:v12 forState:0];

  [(UIButton *)self->_currentTimeButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKCurrentTimeView *)self addSubview:self->_currentTimeButton];
  v13 = [[HKCurrentTimeChevronButton alloc] initWithChevronDirection:1];
  previousTimeIndexButton = self->_previousTimeIndexButton;
  self->_previousTimeIndexButton = v13;

  [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton addTarget:self action:sel_previousTimeIndexButtonTapped_ forControlEvents:64];
  [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKCurrentTimeView *)self addSubview:self->_previousTimeIndexButton];
  v15 = [[HKCurrentTimeChevronButton alloc] initWithChevronDirection:0];
  nextTimeIndexButton = self->_nextTimeIndexButton;
  self->_nextTimeIndexButton = v15;

  [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton addTarget:self action:sel_nextTimeIndexButtonTapped_ forControlEvents:64];
  [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKCurrentTimeView *)self addSubview:self->_nextTimeIndexButton];
  [(HKCurrentTimeView *)self setPreviousTimeButtonEnabled:0];
  [(HKCurrentTimeView *)self setNextTimeButtonEnabled:0];
  if (marginCopy)
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 3.0;
  }

  leftAnchor = [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton leftAnchor];
  leftAnchor2 = [(HKCurrentTimeView *)self leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v17];
  [v20 setActive:1];

  centerYAnchor = [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton centerYAnchor];
  centerYAnchor2 = [(UIButton *)self->_currentTimeButton centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v23 setActive:1];

  widthAnchor = [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton widthAnchor];
  v25 = [widthAnchor constraintEqualToConstant:54.0];
  [v25 setActive:1];

  rightAnchor = [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton rightAnchor];
  rightAnchor2 = [(HKCurrentTimeView *)self rightAnchor];
  v28 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v17];
  [v28 setActive:1];

  centerYAnchor3 = [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton centerYAnchor];
  centerYAnchor4 = [(UIButton *)self->_currentTimeButton centerYAnchor];
  v31 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v31 setActive:1];

  widthAnchor2 = [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton widthAnchor];
  v33 = [widthAnchor2 constraintEqualToConstant:54.0];
  [v33 setActive:1];

  centerXAnchor = [(UIButton *)self->_currentTimeButton centerXAnchor];
  centerXAnchor2 = [(HKCurrentTimeView *)self centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v36 setActive:1];

  leftAnchor3 = [(UIButton *)self->_currentTimeButton leftAnchor];
  leftAnchor4 = [(HKCurrentTimeView *)self leftAnchor];
  v39 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:v17 + 27.0];
  [v39 setActive:1];

  rightAnchor3 = [(UIButton *)self->_currentTimeButton rightAnchor];
  rightAnchor4 = [(HKCurrentTimeView *)self rightAnchor];
  v42 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-27.0 - v17];
  [v42 setActive:1];

  topAnchor = [(UIButton *)self->_currentTimeButton topAnchor];
  topAnchor2 = [(HKCurrentTimeView *)self topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
  [v45 setActive:1];

  bottomAnchor = [(UIButton *)self->_currentTimeButton bottomAnchor];
  bottomAnchor2 = [(HKCurrentTimeView *)self bottomAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
  [v48 setActive:1];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleContentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)setCurrentTimeString:(id)string
{
  objc_storeStrong(&self->_currentTimeString, string);
  stringCopy = string;
  [(UIButton *)self->_currentTimeButton setTitle:stringCopy forState:0];
}

- (void)setDisableControls:(BOOL)controls
{
  controlsCopy = controls;
  self->_disableControls = controls;
  if (controls)
  {
    omitPrevNextButtons = 1;
    [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton setHidden:1];
  }

  else
  {
    [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton setHidden:self->_omitPrevNextButtons];
    omitPrevNextButtons = self->_omitPrevNextButtons;
  }

  [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton setHidden:omitPrevNextButtons];
  [(UIButton *)self->_currentTimeButton setEnabled:!controlsCopy];

  [(HKCurrentTimeView *)self setNeedsLayout];
}

- (void)setPreviousTimeButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton setEnabled:?];
  imageView = [(HKCurrentTimeChevronButton *)self->_previousTimeIndexButton imageView];
  v6 = [(HKCurrentTimeView *)self _colorIfForeground:1 enabled:enabledCopy];
  [imageView setTintColor:v6];

  previousTimeIndexButton = self->_previousTimeIndexButton;
  v8 = [(HKCurrentTimeView *)self _colorIfForeground:0 enabled:enabledCopy];
  [(HKCurrentTimeChevronButton *)previousTimeIndexButton setTintColor:v8];
}

- (void)setNextTimeButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton setEnabled:?];
  imageView = [(HKCurrentTimeChevronButton *)self->_nextTimeIndexButton imageView];
  v6 = [(HKCurrentTimeView *)self _colorIfForeground:1 enabled:enabledCopy];
  [imageView setTintColor:v6];

  nextTimeIndexButton = self->_nextTimeIndexButton;
  v8 = [(HKCurrentTimeView *)self _colorIfForeground:0 enabled:enabledCopy];
  [(HKCurrentTimeChevronButton *)nextTimeIndexButton setTintColor:v8];
}

- (void)setCurrentTimeButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(UIButton *)self->_currentTimeButton setEnabled:?];
  currentTimeButton = self->_currentTimeButton;
  v6 = [(HKCurrentTimeView *)self _labelColor:enabledCopy];
  [(UIButton *)currentTimeButton setTitleColor:v6 forState:0];
}

- (void)currentTimeButtonTapped:(id)tapped
{
  delegate = [(HKCurrentTimeView *)self delegate];
  [delegate currentTimeViewDidTapOnDateSelector:self];
}

- (void)previousTimeIndexButtonTapped:(id)tapped
{
  delegate = [(HKCurrentTimeView *)self delegate];
  [delegate currentTimeViewDidTapOnPreviousTimeButton:self];
}

- (void)nextTimeIndexButtonTapped:(id)tapped
{
  delegate = [(HKCurrentTimeView *)self delegate];
  [delegate currentTimeViewDidTapOnNextTimeButton:self];
}

- (double)_currentTimeButtonBaselineToTop
{
  _currentTimeButtonFont = [(HKCurrentTimeView *)self _currentTimeButtonFont];
  [_currentTimeButtonFont _scaledValueForValue:27.0];
  v4 = v3;

  return v4;
}

- (double)_currentTimeButtonBaselineToBottom
{
  _currentTimeButtonFont = [(HKCurrentTimeView *)self _currentTimeButtonFont];
  [_currentTimeButtonFont _scaledValueForValue:19.0];
  v4 = v3;

  return v4;
}

- (id)_colorIfForeground:(BOOL)foreground enabled:(BOOL)enabled
{
  if (foreground)
  {
    [(HKCurrentTimeView *)self _foregroundColor:enabled];
  }

  else
  {
    [(HKCurrentTimeView *)self _backgroundColor:enabled];
  }
  v4 = ;

  return v4;
}

- (id)_tintColor:(BOOL)color
{
  if (color)
  {
    HKHealthTintColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v3 = ;

  return v3;
}

- (id)_labelColor:(BOOL)color
{
  if (color)
  {
    HKHealthKeyColor();
  }

  else
  {
    [MEMORY[0x1E69DC888] hk_chartGrayTextColor];
  }
  v3 = ;

  return v3;
}

- (id)_foregroundColor:(BOOL)color
{
  colorCopy = color;
  v5 = [(HKCurrentTimeView *)self _tintColor:?];
  [(HKCurrentTimeView *)self _foregroundAlpha:colorCopy];
  v6 = [v5 colorWithAlphaComponent:?];

  return v6;
}

- (id)_backgroundColor:(BOOL)color
{
  colorCopy = color;
  v5 = [(HKCurrentTimeView *)self _tintColor:?];
  [(HKCurrentTimeView *)self _backgroundAlpha:colorCopy];
  v6 = [v5 colorWithAlphaComponent:?];

  return v6;
}

- (double)_foregroundAlpha:(BOOL)alpha
{
  result = 0.4;
  if (alpha)
  {
    return 1.0;
  }

  return result;
}

- (double)_backgroundAlpha:(BOOL)alpha
{
  result = 0.1;
  if (alpha)
  {
    return 0.05;
  }

  return result;
}

- (void)_handleContentSizeCategoryDidChange
{
  titleLabel = [(UIButton *)self->_currentTimeButton titleLabel];
  _currentTimeButtonFont = [(HKCurrentTimeView *)self _currentTimeButtonFont];
  [titleLabel setFont:_currentTimeButtonFont];
}

- (HKCurrentTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end