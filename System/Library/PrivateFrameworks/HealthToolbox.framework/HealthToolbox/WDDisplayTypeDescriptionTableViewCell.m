@interface WDDisplayTypeDescriptionTableViewCell
- (WDDisplayTypeDescriptionTableViewCell)initWithCoder:(id)a3;
- (WDDisplayTypeDescriptionTableViewCell)initWithDisplayType:(id)a3 showAttributionText:(BOOL)a4 reuseIdentifier:(id)a5;
- (void)setDisplayType:(id)a3;
- (void)setupSubviews;
@end

@implementation WDDisplayTypeDescriptionTableViewCell

- (WDDisplayTypeDescriptionTableViewCell)initWithDisplayType:(id)a3 showAttributionText:(BOOL)a4 reuseIdentifier:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = WDDisplayTypeDescriptionTableViewCell;
  v9 = [(WDDisplayTypeDescriptionTableViewCell *)&v12 initWithStyle:0 reuseIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v9->_showAttributionText = a4;
    [(WDDisplayTypeDescriptionTableViewCell *)v9 setDisplayType:v8];
  }

  return v10;
}

- (WDDisplayTypeDescriptionTableViewCell)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDescriptionTableViewCell;
  return [(WDDisplayTypeDescriptionTableViewCell *)&v4 initWithCoder:a3];
}

- (void)setDisplayType:(id)a3
{
  objc_storeStrong(&self->_displayType, a3);

  [(WDDisplayTypeDescriptionTableViewCell *)self setupSubviews];
}

- (void)setupSubviews
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [WDDisplayTypeDescriptionView alloc];
  v4 = [(WDDisplayTypeDescriptionTableViewCell *)self displayType];
  v5 = [(WDDisplayTypeDescriptionView *)v3 initWithDisplayType:v4 showAttributionText:[(WDDisplayTypeDescriptionTableViewCell *)self showAttributionText] style:0];
  descriptionView = self->_descriptionView;
  self->_descriptionView = v5;

  [(WDDisplayTypeDescriptionView *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  [v7 addSubview:self->_descriptionView];

  v8 = [(WDDisplayTypeDescriptionView *)self->_descriptionView leadingAnchor];
  v9 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  v10 = [v9 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(WDDisplayTypeDescriptionView *)self->_descriptionView trailingAnchor];
  v14 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  v15 = [v14 layoutMarginsGuide];
  v16 = [v15 trailingAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = self->_descriptionView;
  v23 = @"descriptionView";
  v24[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = [(WDDisplayTypeDescriptionTableViewCell *)self contentView];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[descriptionView]|" options:0 metrics:&unk_28642E0B8 views:v19];
  [v20 addConstraints:v21];

  v22 = *MEMORY[0x277D85DE8];
}

@end