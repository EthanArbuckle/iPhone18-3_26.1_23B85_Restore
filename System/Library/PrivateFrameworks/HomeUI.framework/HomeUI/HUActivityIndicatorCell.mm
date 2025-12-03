@interface HUActivityIndicatorCell
- (HFStringGenerator)descriptionText;
- (HFStringGenerator)titleText;
- (HUActivityIndicatorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)description;
- (UIImage)icon;
- (void)_setupConstraints;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAnimating:(BOOL)animating;
- (void)setDescriptionText:(id)text;
- (void)setDisabled:(BOOL)disabled;
- (void)setIcon:(id)icon;
- (void)setTitleText:(id)text;
@end

@implementation HUActivityIndicatorCell

- (HUActivityIndicatorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = HUActivityIndicatorCell;
  v4 = [(HUActivityIndicatorCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(HUTitleDescriptionContentView);
    titleDescriptionView = v4->_titleDescriptionView;
    v4->_titleDescriptionView = v5;

    [(HUTitleDescriptionContentView *)v4->_titleDescriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(HUActivityIndicatorCell *)v4 contentView];
    [contentView addSubview:v4->_titleDescriptionView];

    v8 = objc_alloc_init(MEMORY[0x277D755E8]);
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v8;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    contentView2 = [(HUActivityIndicatorCell *)v4 contentView];
    [contentView2 addSubview:v4->_iconImageView];

    v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicatorView = v4->_activityIndicatorView;
    v4->_activityIndicatorView = v11;

    [(UIActivityIndicatorView *)v4->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v4->_activityIndicatorView setHidesWhenStopped:1];
    contentView3 = [(HUActivityIndicatorCell *)v4 contentView];
    [contentView3 addSubview:v4->_activityIndicatorView];

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
  contentView = [(HUActivityIndicatorCell *)self contentView];
  [contentView layoutMargins];
  v5 = v4;

  [(HUActivityIndicatorCell *)self setSeparatorInset:0.0, v5 + 35.0, 0.0, 0.0];
  v6.receiver = self;
  v6.super_class = HUActivityIndicatorCell;
  [(HUActivityIndicatorCell *)&v6 layoutSubviews];
}

- (HFStringGenerator)titleText
{
  titleDescriptionView = [(HUActivityIndicatorCell *)self titleDescriptionView];
  titleText = [titleDescriptionView titleText];

  return titleText;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleDescriptionView = [(HUActivityIndicatorCell *)self titleDescriptionView];
  [titleDescriptionView setTitleText:textCopy];
}

- (HFStringGenerator)descriptionText
{
  titleDescriptionView = [(HUActivityIndicatorCell *)self titleDescriptionView];
  descriptionText = [titleDescriptionView descriptionText];

  return descriptionText;
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  titleDescriptionView = [(HUActivityIndicatorCell *)self titleDescriptionView];
  [titleDescriptionView setDescriptionText:textCopy];
}

- (UIImage)icon
{
  iconImageView = [(HUActivityIndicatorCell *)self iconImageView];
  image = [iconImageView image];

  return image;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  iconImageView = [(HUActivityIndicatorCell *)self iconImageView];
  [iconImageView setImage:iconCopy];
}

- (void)setAnimating:(BOOL)animating
{
  animatingCopy = animating;
  self->_animating = animating;
  activityIndicatorView = [(HUActivityIndicatorCell *)self activityIndicatorView];
  v6 = activityIndicatorView;
  if (animatingCopy)
  {
    [activityIndicatorView startAnimating];
  }

  else
  {
    [activityIndicatorView stopAnimating];
  }

  iconImageView = [(HUActivityIndicatorCell *)self iconImageView];
  [iconImageView setHidden:animatingCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  titleText = [(HUActivityIndicatorCell *)self titleText];
  v7 = [v3 stringWithFormat:@"<%@ %p %@ (animating=%d)>", v5, self, titleText, -[HUActivityIndicatorCell isAnimating](self, "isAnimating")];

  return v7;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_disabled = disabled;
  titleDescriptionView = [(HUActivityIndicatorCell *)self titleDescriptionView];
  [titleDescriptionView setDisabled:disabledCopy];
}

- (void)_setupConstraints
{
  v56[10] = *MEMORY[0x277D85DE8];
  v33 = MEMORY[0x277CCAAD0];
  iconImageView = [(HUActivityIndicatorCell *)self iconImageView];
  leadingAnchor = [iconImageView leadingAnchor];
  contentView = [(HUActivityIndicatorCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[0] = v50;
  iconImageView2 = [(HUActivityIndicatorCell *)self iconImageView];
  centerYAnchor = [iconImageView2 centerYAnchor];
  contentView2 = [(HUActivityIndicatorCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide2 centerYAnchor];
  v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[1] = v44;
  iconImageView3 = [(HUActivityIndicatorCell *)self iconImageView];
  widthAnchor = [iconImageView3 widthAnchor];
  v41 = [widthAnchor constraintEqualToConstant:20.0];
  v56[2] = v41;
  iconImageView4 = [(HUActivityIndicatorCell *)self iconImageView];
  heightAnchor = [iconImageView4 heightAnchor];
  v38 = [heightAnchor constraintEqualToConstant:20.0];
  v56[3] = v38;
  titleDescriptionView = [(HUActivityIndicatorCell *)self titleDescriptionView];
  topAnchor = [titleDescriptionView topAnchor];
  contentView3 = [(HUActivityIndicatorCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[4] = v31;
  titleDescriptionView2 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  bottomAnchor = [titleDescriptionView2 bottomAnchor];
  contentView4 = [(HUActivityIndicatorCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v56[5] = v25;
  titleDescriptionView3 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  leadingAnchor3 = [titleDescriptionView3 leadingAnchor];
  iconImageView5 = [(HUActivityIndicatorCell *)self iconImageView];
  trailingAnchor = [iconImageView5 trailingAnchor];
  v20 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
  v56[6] = v20;
  titleDescriptionView4 = [(HUActivityIndicatorCell *)self titleDescriptionView];
  trailingAnchor2 = [titleDescriptionView4 trailingAnchor];
  contentView5 = [(HUActivityIndicatorCell *)self contentView];
  layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide5 trailingAnchor];
  v14 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v56[7] = v14;
  activityIndicatorView = [(HUActivityIndicatorCell *)self activityIndicatorView];
  centerXAnchor = [activityIndicatorView centerXAnchor];
  iconImageView6 = [(HUActivityIndicatorCell *)self iconImageView];
  centerXAnchor2 = [iconImageView6 centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[8] = v6;
  activityIndicatorView2 = [(HUActivityIndicatorCell *)self activityIndicatorView];
  centerYAnchor3 = [activityIndicatorView2 centerYAnchor];
  iconImageView7 = [(HUActivityIndicatorCell *)self iconImageView];
  centerYAnchor4 = [iconImageView7 centerYAnchor];
  v11 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v56[9] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:10];
  [v33 activateConstraints:v12];
}

@end