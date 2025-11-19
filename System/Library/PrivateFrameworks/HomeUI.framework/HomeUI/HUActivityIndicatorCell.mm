@interface HUActivityIndicatorCell
- (HFStringGenerator)descriptionText;
- (HFStringGenerator)titleText;
- (HUActivityIndicatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)description;
- (UIImage)icon;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnimating:(BOOL)a3;
- (void)setDescriptionText:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setTitleText:(id)a3;
@end

@implementation HUActivityIndicatorCell

- (HUActivityIndicatorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = HUActivityIndicatorCell;
  v4 = [(HUActivityIndicatorCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(HUTitleDescriptionContentView);
    titleDescriptionView = v4->_titleDescriptionView;
    v4->_titleDescriptionView = v5;

    [(HUTitleDescriptionContentView *)v4->_titleDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUActivityIndicatorCell *)v4 contentView];
    [v7 addSubview:v4->_titleDescriptionView];

    v8 = objc_alloc_init(MEMORY[0x277D755E8]);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v8;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    v10 = [(HUActivityIndicatorCell *)v4 contentView];
    [v10 addSubview:v4->_iconImageView];

    v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicatorView = v4->_activityIndicatorView;
    v4->_activityIndicatorView = v11;

    [(UIActivityIndicatorView *)v4->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v4->_activityIndicatorView setHidesWhenStopped:1];
    v13 = [(HUActivityIndicatorCell *)v4 contentView];
    [v13 addSubview:v4->_activityIndicatorView];

    [(HUActivityIndicatorCell *)v4 _setupConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUActivityIndicatorCell;
  [(HUActivityIndicatorCell *)&v3 prepareForReuse];
  [(HUActivityIndicatorCell *)self setTitleText:0];
  [(HUActivityIndicatorCell *)self setDescriptionText:0];
  [(HUActivityIndicatorCell *)self setIcon:0];
  [(HUActivityIndicatorCell *)self setAnimating:0];
}

- (void)layoutSubviews
{
  v3 = [(HUActivityIndicatorCell *)self contentView];
  [v3 layoutMargins];
  v5 = v4;

  [(HUActivityIndicatorCell *)self setSeparatorInset:0.0, v5 + 35.0, 0.0, 0.0];
  v6.receiver = self;
  v6.super_class = HUActivityIndicatorCell;
  [(HUActivityIndicatorCell *)&v6 layoutSubviews];
}

- (HFStringGenerator)titleText
{
  v2 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  v3 = [v2 titleText];

  return v3;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  [v5 setTitleText:v4];
}

- (HFStringGenerator)descriptionText
{
  v2 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  v3 = [v2 descriptionText];

  return v3;
}

- (void)setDescriptionText:(id)a3
{
  v4 = a3;
  v5 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  [v5 setDescriptionText:v4];
}

- (UIImage)icon
{
  v2 = [(HUActivityIndicatorCell *)self iconImageView];
  v3 = [v2 image];

  return v3;
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  v5 = [(HUActivityIndicatorCell *)self iconImageView];
  [v5 setImage:v4];
}

- (void)setAnimating:(BOOL)a3
{
  v3 = a3;
  self->_animating = a3;
  v5 = [(HUActivityIndicatorCell *)self activityIndicatorView];
  v6 = v5;
  if (v3)
  {
    [v5 startAnimating];
  }

  else
  {
    [v5 stopAnimating];
  }

  v7 = [(HUActivityIndicatorCell *)self iconImageView];
  [v7 setHidden:v3];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HUActivityIndicatorCell *)self titleText];
  v7 = [v3 stringWithFormat:@"<%@ %p %@ (animating=%d)>", v5, self, v6, -[HUActivityIndicatorCell isAnimating](self, "isAnimating")];

  return v7;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  self->_disabled = a3;
  v4 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  [v4 setDisabled:v3];
}

- (void)_setupConstraints
{
  v56[10] = *MEMORY[0x277D85DE8];
  v33 = MEMORY[0x277CCAAD0];
  v55 = [(HUActivityIndicatorCell *)self iconImageView];
  v53 = [v55 leadingAnchor];
  v54 = [(HUActivityIndicatorCell *)self contentView];
  v52 = [v54 layoutMarginsGuide];
  v51 = [v52 leadingAnchor];
  v50 = [v53 constraintEqualToAnchor:v51];
  v56[0] = v50;
  v49 = [(HUActivityIndicatorCell *)self iconImageView];
  v47 = [v49 centerYAnchor];
  v48 = [(HUActivityIndicatorCell *)self contentView];
  v46 = [v48 layoutMarginsGuide];
  v45 = [v46 centerYAnchor];
  v44 = [v47 constraintEqualToAnchor:v45];
  v56[1] = v44;
  v43 = [(HUActivityIndicatorCell *)self iconImageView];
  v42 = [v43 widthAnchor];
  v41 = [v42 constraintEqualToConstant:20.0];
  v56[2] = v41;
  v40 = [(HUActivityIndicatorCell *)self iconImageView];
  v39 = [v40 heightAnchor];
  v38 = [v39 constraintEqualToConstant:20.0];
  v56[3] = v38;
  v37 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  v35 = [v37 topAnchor];
  v36 = [(HUActivityIndicatorCell *)self contentView];
  v34 = [v36 layoutMarginsGuide];
  v32 = [v34 topAnchor];
  v31 = [v35 constraintEqualToAnchor:v32];
  v56[4] = v31;
  v30 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  v28 = [v30 bottomAnchor];
  v29 = [(HUActivityIndicatorCell *)self contentView];
  v27 = [v29 layoutMarginsGuide];
  v26 = [v27 bottomAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v56[5] = v25;
  v24 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  v22 = [v24 leadingAnchor];
  v23 = [(HUActivityIndicatorCell *)self iconImageView];
  v21 = [v23 trailingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:15.0];
  v56[6] = v20;
  v19 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  v17 = [v19 trailingAnchor];
  v18 = [(HUActivityIndicatorCell *)self contentView];
  v16 = [v18 layoutMarginsGuide];
  v15 = [v16 trailingAnchor];
  v14 = [v17 constraintEqualToAnchor:v15];
  v56[7] = v14;
  v13 = [(HUActivityIndicatorCell *)self activityIndicatorView];
  v3 = [v13 centerXAnchor];
  v4 = [(HUActivityIndicatorCell *)self iconImageView];
  v5 = [v4 centerXAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v56[8] = v6;
  v7 = [(HUActivityIndicatorCell *)self activityIndicatorView];
  v8 = [v7 centerYAnchor];
  v9 = [(HUActivityIndicatorCell *)self iconImageView];
  v10 = [v9 centerYAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v56[9] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:10];
  [v33 activateConstraints:v12];
}

@end