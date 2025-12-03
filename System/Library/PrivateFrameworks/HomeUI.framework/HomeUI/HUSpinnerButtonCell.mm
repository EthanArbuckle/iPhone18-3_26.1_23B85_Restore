@interface HUSpinnerButtonCell
- (CGRect)_separatorFrame;
- (HUSpinnerButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)createSpinner;
- (void)prepareForReuse;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation HUSpinnerButtonCell

- (HUSpinnerButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = HUSpinnerButtonCell;
  v4 = [(HUButtonCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUButtonCell *)v4 setTextAlignment:4];
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    traitCollection = [(HUSpinnerButtonCell *)v5 traitCollection];
    [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
    v9 = v8;

    contentView = [(HUSpinnerButtonCell *)v5 contentView];
    heightAnchor = [contentView heightAnchor];
    v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:v9];
    [v12 setActive:1];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUSpinnerButtonCell;
  [(HUButtonCell *)&v3 prepareForReuse];
  [(HUButtonCell *)self setTextAlignment:4];
  [(HUSpinnerButtonCell *)self setShowSpinner:0];
  [(HUSpinnerButtonCell *)self setUseFullWidthSeparator:0];
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    self->_showSpinner = spinner;
    if (spinner)
    {
      [(HUSpinnerButtonCell *)self createSpinner];
      spinner = [(HUSpinnerButtonCell *)self spinner];
      [spinner startAnimating];
    }

    else
    {
      spinner2 = [(HUSpinnerButtonCell *)self spinner];
      [spinner2 removeFromSuperview];

      [(HUSpinnerButtonCell *)self setSpinner:0];
      [(HUSpinnerButtonCell *)self setNeedsUpdateConstraints];
    }

    [(HUButtonCell *)self setHideTitle:self->_showSpinner];
    v6 = !self->_showSpinner;

    [(HUSpinnerButtonCell *)self setUserInteractionEnabled:v6];
  }
}

- (CGRect)_separatorFrame
{
  v11.receiver = self;
  v11.super_class = HUSpinnerButtonCell;
  [(HUSpinnerButtonCell *)&v11 _separatorFrame];
  v4 = v3;
  v6 = v5;
  [(HUSpinnerButtonCell *)self bounds];
  v8 = 0.0;
  v9 = v4;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)createSpinner
{
  if (self->_spinner)
  {
    NSLog(&cfstr_AlreadyHaveSpi.isa, a2, self);
  }

  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v3;

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(HUSpinnerButtonCell *)self contentView];
  [contentView addSubview:self->_spinner];

  leadingAnchor = [(UIActivityIndicatorView *)self->_spinner leadingAnchor];
  contentView2 = [(HUSpinnerButtonCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v9 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  [v9 setActive:1];

  trailingAnchor = [(UIActivityIndicatorView *)self->_spinner trailingAnchor];
  contentView3 = [(HUSpinnerButtonCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v13 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  [v13 setActive:1];

  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  contentView4 = [(HUSpinnerButtonCell *)self contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v17 setActive:1];

  topAnchor = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  contentView5 = [(HUSpinnerButtonCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v21 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [v21 setActive:1];

  bottomAnchor = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  contentView6 = [(HUSpinnerButtonCell *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  [v25 setActive:1];

  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  contentView7 = [(HUSpinnerButtonCell *)self contentView];
  centerYAnchor2 = [contentView7 centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v28 setActive:1];
}

@end