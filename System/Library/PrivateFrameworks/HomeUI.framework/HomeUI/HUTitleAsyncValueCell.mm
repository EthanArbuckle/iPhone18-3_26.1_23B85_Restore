@interface HUTitleAsyncValueCell
- (HUTitleAsyncValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)createSpinner;
- (void)prepareForReuse;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation HUTitleAsyncValueCell

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    spinnerCopy = spinner;
    self->_showSpinner = spinner;
    v6 = !spinner;
    spinnerView = [(HUTitleAsyncValueCell *)self spinnerView];
    [spinnerView setHidden:v6];

    valueLabel = [(HUTitleValueCell *)self valueLabel];
    [valueLabel setHidden:spinnerCopy];

    spinnerView2 = [(HUTitleAsyncValueCell *)self spinnerView];
    v10 = spinnerView2;
    if (v6)
    {
      [spinnerView2 stopAnimating];
    }

    else
    {
      [spinnerView2 startAnimating];
    }
  }
}

- (HUTitleAsyncValueCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HUTitleAsyncValueCell;
  v4 = [(HUTitleValueCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUTitleAsyncValueCell *)v4 createSpinner];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUTitleAsyncValueCell;
  [(HUTitleValueCell *)&v3 prepareForReuse];
  [(HUTitleAsyncValueCell *)self setShowSpinner:1];
}

- (void)createSpinner
{
  v20[2] = *MEMORY[0x277D85DE8];
  spinnerView = [(HUTitleAsyncValueCell *)self spinnerView];

  if (spinnerView)
  {
    NSLog(&cfstr_AlreadyHaveSpi.isa, self);
  }

  v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(HUTitleAsyncValueCell *)self setSpinnerView:v4];

  spinnerView2 = [(HUTitleAsyncValueCell *)self spinnerView];
  [spinnerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HUTitleAsyncValueCell *)self contentView];
  spinnerView3 = [(HUTitleAsyncValueCell *)self spinnerView];
  [contentView addSubview:spinnerView3];

  v18 = MEMORY[0x277CCAAD0];
  spinnerView4 = [(HUTitleAsyncValueCell *)self spinnerView];
  centerYAnchor = [spinnerView4 centerYAnchor];
  contentView2 = [(HUTitleAsyncValueCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v20[0] = v11;
  spinnerView5 = [(HUTitleAsyncValueCell *)self spinnerView];
  trailingAnchor = [spinnerView5 trailingAnchor];
  labelsStackView = [(HUTitleValueCell *)self labelsStackView];
  trailingAnchor2 = [labelsStackView trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v18 activateConstraints:v17];
}

@end