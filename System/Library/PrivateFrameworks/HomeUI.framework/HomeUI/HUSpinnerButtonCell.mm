@interface HUSpinnerButtonCell
- (CGRect)_separatorFrame;
- (HUSpinnerButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)createSpinner;
- (void)prepareForReuse;
- (void)setShowSpinner:(BOOL)a3;
@end

@implementation HUSpinnerButtonCell

- (HUSpinnerButtonCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = HUSpinnerButtonCell;
  v4 = [(HUButtonCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HUButtonCell *)v4 setTextAlignment:4];
    v6 = [MEMORY[0x277D756E0] cellConfiguration];
    v7 = [(HUSpinnerButtonCell *)v5 traitCollection];
    [v6 _minimumHeightForTraitCollection:v7];
    v9 = v8;

    v10 = [(HUSpinnerButtonCell *)v5 contentView];
    v11 = [v10 heightAnchor];
    v12 = [v11 constraintGreaterThanOrEqualToConstant:v9];
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

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    self->_showSpinner = a3;
    if (a3)
    {
      [(HUSpinnerButtonCell *)self createSpinner];
      v4 = [(HUSpinnerButtonCell *)self spinner];
      [v4 startAnimating];
    }

    else
    {
      v5 = [(HUSpinnerButtonCell *)self spinner];
      [v5 removeFromSuperview];

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
  v5 = [(HUSpinnerButtonCell *)self contentView];
  [v5 addSubview:self->_spinner];

  v6 = [(UIActivityIndicatorView *)self->_spinner leadingAnchor];
  v7 = [(HUSpinnerButtonCell *)self contentView];
  v8 = [v7 leadingAnchor];
  v9 = [v6 constraintGreaterThanOrEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(UIActivityIndicatorView *)self->_spinner trailingAnchor];
  v11 = [(HUSpinnerButtonCell *)self contentView];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintLessThanOrEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v15 = [(HUSpinnerButtonCell *)self contentView];
  v16 = [v15 centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  v19 = [(HUSpinnerButtonCell *)self contentView];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v23 = [(HUSpinnerButtonCell *)self contentView];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintLessThanOrEqualToAnchor:v24];
  [v25 setActive:1];

  v29 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  v26 = [(HUSpinnerButtonCell *)self contentView];
  v27 = [v26 centerYAnchor];
  v28 = [v29 constraintEqualToAnchor:v27];
  [v28 setActive:1];
}

@end