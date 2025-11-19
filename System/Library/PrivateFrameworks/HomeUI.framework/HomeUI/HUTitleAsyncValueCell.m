@interface HUTitleAsyncValueCell
- (HUTitleAsyncValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)createSpinner;
- (void)prepareForReuse;
- (void)setShowSpinner:(BOOL)a3;
@end

@implementation HUTitleAsyncValueCell

- (void)setShowSpinner:(BOOL)a3
{
  if (self->_showSpinner != a3)
  {
    v4 = a3;
    self->_showSpinner = a3;
    v6 = !a3;
    v7 = [(HUTitleAsyncValueCell *)self spinnerView];
    [v7 setHidden:v6];

    v8 = [(HUTitleValueCell *)self valueLabel];
    [v8 setHidden:v4];

    v9 = [(HUTitleAsyncValueCell *)self spinnerView];
    v10 = v9;
    if (v6)
    {
      [v9 stopAnimating];
    }

    else
    {
      [v9 startAnimating];
    }
  }
}

- (HUTitleAsyncValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HUTitleAsyncValueCell;
  v4 = [(HUTitleValueCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v3 = [(HUTitleAsyncValueCell *)self spinnerView];

  if (v3)
  {
    NSLog(&cfstr_AlreadyHaveSpi.isa, self);
  }

  v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(HUTitleAsyncValueCell *)self setSpinnerView:v4];

  v5 = [(HUTitleAsyncValueCell *)self spinnerView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(HUTitleAsyncValueCell *)self contentView];
  v7 = [(HUTitleAsyncValueCell *)self spinnerView];
  [v6 addSubview:v7];

  v18 = MEMORY[0x277CCAAD0];
  v19 = [(HUTitleAsyncValueCell *)self spinnerView];
  v8 = [v19 centerYAnchor];
  v9 = [(HUTitleAsyncValueCell *)self contentView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v20[0] = v11;
  v12 = [(HUTitleAsyncValueCell *)self spinnerView];
  v13 = [v12 trailingAnchor];
  v14 = [(HUTitleValueCell *)self labelsStackView];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v20[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v18 activateConstraints:v17];
}

@end