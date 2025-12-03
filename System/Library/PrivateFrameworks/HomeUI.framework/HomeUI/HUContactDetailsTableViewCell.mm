@interface HUContactDetailsTableViewCell
- (CNContact)contact;
- (HUContactDetailsTableViewCell)initWithCoder:(id)coder;
- (HUContactDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)descriptionText;
- (NSString)titleText;
- (UIImage)photo;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContact:(id)contact;
- (void)setDescriptionText:(id)text;
- (void)setPhoto:(id)photo;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
@end

@implementation HUContactDetailsTableViewCell

- (HUContactDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32[2] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HUContactDetailsTableViewCell;
  v4 = [(HUContactDetailsTableViewCell *)&v30 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBDBE8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    avatarView = v4->_avatarView;
    v4->_avatarView = v10;

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v7, v8, v9}];
    photoView = v4->_photoView;
    v4->_photoView = v12;

    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    containerView = v4->_containerView;
    v4->_containerView = v14;

    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v16;

    v18 = *MEMORY[0x277D769D0];
    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_titleLabel setFont:v19];

    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v20;

    v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v18];
    [(UILabel *)v4->_descriptionLabel setFont:v22];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_descriptionLabel setTextColor:systemGrayColor];

    v24 = v4->_containerView;
    v32[0] = v4->_titleLabel;
    v32[1] = v4->_descriptionLabel;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    [(UIView *)v24 naui_addAutoLayoutSubviews:v25];

    contentView = [(HUContactDetailsTableViewCell *)v4 contentView];
    v31[0] = v4->_avatarView;
    v31[1] = v4->_containerView;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [contentView naui_addAutoLayoutSubviews:v27];

    contentView2 = [(HUContactDetailsTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_photoView];
  }

  return v4;
}

- (HUContactDetailsTableViewCell)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithStyle_reuseIdentifier_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUContactDetailsTableViewCell.m" lineNumber:64 description:{@"%s is unavailable; use %@ instead", "-[HUContactDetailsTableViewCell initWithCoder:]", v6}];

  return 0;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUContactDetailsTableViewCell;
  [(HUContactDetailsTableViewCell *)&v4 prepareForReuse];
  [(HUContactDetailsTableViewCell *)self setTitleText:0];
  [(HUContactDetailsTableViewCell *)self setDescriptionText:0];
  avatarView = [(HUContactDetailsTableViewCell *)self avatarView];
  [avatarView setContacts:MEMORY[0x277CBEBF8]];

  [(HUContactDetailsTableViewCell *)self setPhoto:0];
}

- (NSString)titleText
{
  titleLabel = [(HUContactDetailsTableViewCell *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleLabel = [(HUContactDetailsTableViewCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (NSString)descriptionText
{
  descriptionLabel = [(HUContactDetailsTableViewCell *)self descriptionLabel];
  text = [descriptionLabel text];

  return text;
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  descriptionLabel = [(HUContactDetailsTableViewCell *)self descriptionLabel];
  [descriptionLabel setText:textCopy];
}

- (CNContact)contact
{
  avatarView = [(HUContactDetailsTableViewCell *)self avatarView];
  contacts = [avatarView contacts];
  firstObject = [contacts firstObject];

  return firstObject;
}

- (void)setContact:(id)contact
{
  v9 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v4 = MEMORY[0x277CBEA60];
  contactCopy2 = contact;
  v6 = [v4 arrayWithObjects:&contactCopy count:1];

  v7 = [(HUContactDetailsTableViewCell *)self avatarView:contactCopy];
  [v7 setContacts:v6];
}

- (UIImage)photo
{
  photoView = [(HUContactDetailsTableViewCell *)self photoView];
  image = [photoView image];

  return image;
}

- (void)setPhoto:(id)photo
{
  photoCopy = photo;
  photoView = [(HUContactDetailsTableViewCell *)self photoView];
  [photoView setImage:photoCopy];

  photoView2 = [(HUContactDetailsTableViewCell *)self photoView];
  [photoView2 setHidden:photoCopy == 0];

  avatarView = [(HUContactDetailsTableViewCell *)self avatarView];
  [avatarView setHidden:photoCopy != 0];
}

- (void)updateConstraints
{
  constraints = [(HUContactDetailsTableViewCell *)self constraints];

  if (!constraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    avatarView = [(HUContactDetailsTableViewCell *)self avatarView];
    leadingAnchor = [avatarView leadingAnchor];
    contentView = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v10];

    avatarView2 = [(HUContactDetailsTableViewCell *)self avatarView];
    widthAnchor = [avatarView2 widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:42.0];
    [array addObject:v13];

    containerView = [(HUContactDetailsTableViewCell *)self containerView];
    leadingAnchor3 = [containerView leadingAnchor];
    avatarView3 = [(HUContactDetailsTableViewCell *)self avatarView];
    trailingAnchor = [avatarView3 trailingAnchor];
    v18 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
    [array addObject:v18];

    containerView2 = [(HUContactDetailsTableViewCell *)self containerView];
    trailingAnchor2 = [containerView2 trailingAnchor];
    contentView2 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v24 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [array addObject:v24];

    titleLabel = [(HUContactDetailsTableViewCell *)self titleLabel];
    leadingAnchor4 = [titleLabel leadingAnchor];
    containerView3 = [(HUContactDetailsTableViewCell *)self containerView];
    leadingAnchor5 = [containerView3 leadingAnchor];
    v29 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    [array addObject:v29];

    titleLabel2 = [(HUContactDetailsTableViewCell *)self titleLabel];
    trailingAnchor4 = [titleLabel2 trailingAnchor];
    containerView4 = [(HUContactDetailsTableViewCell *)self containerView];
    trailingAnchor5 = [containerView4 trailingAnchor];
    v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [array addObject:v34];

    descriptionLabel = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    leadingAnchor6 = [descriptionLabel leadingAnchor];
    containerView5 = [(HUContactDetailsTableViewCell *)self containerView];
    leadingAnchor7 = [containerView5 leadingAnchor];
    v39 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [array addObject:v39];

    descriptionLabel2 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    trailingAnchor6 = [descriptionLabel2 trailingAnchor];
    containerView6 = [(HUContactDetailsTableViewCell *)self containerView];
    trailingAnchor7 = [containerView6 trailingAnchor];
    v44 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [array addObject:v44];

    avatarView4 = [(HUContactDetailsTableViewCell *)self avatarView];
    topAnchor = [avatarView4 topAnchor];
    contentView3 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v50 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [array addObject:v50];

    avatarView5 = [(HUContactDetailsTableViewCell *)self avatarView];
    bottomAnchor = [avatarView5 bottomAnchor];
    contentView4 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v56 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    [array addObject:v56];

    avatarView6 = [(HUContactDetailsTableViewCell *)self avatarView];
    centerYAnchor = [avatarView6 centerYAnchor];
    contentView5 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide5 = [contentView5 layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide5 centerYAnchor];
    v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v62];

    avatarView7 = [(HUContactDetailsTableViewCell *)self avatarView];
    heightAnchor = [avatarView7 heightAnchor];
    v65 = [heightAnchor constraintEqualToConstant:42.0];
    [array addObject:v65];

    containerView7 = [(HUContactDetailsTableViewCell *)self containerView];
    topAnchor3 = [containerView7 topAnchor];
    contentView6 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide6 = [contentView6 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide6 topAnchor];
    v71 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [array addObject:v71];

    containerView8 = [(HUContactDetailsTableViewCell *)self containerView];
    bottomAnchor3 = [containerView8 bottomAnchor];
    contentView7 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide7 = [contentView7 layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide7 bottomAnchor];
    v77 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    [array addObject:v77];

    containerView9 = [(HUContactDetailsTableViewCell *)self containerView];
    centerYAnchor3 = [containerView9 centerYAnchor];
    contentView8 = [(HUContactDetailsTableViewCell *)self contentView];
    layoutMarginsGuide8 = [contentView8 layoutMarginsGuide];
    centerYAnchor4 = [layoutMarginsGuide8 centerYAnchor];
    v83 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [array addObject:v83];

    titleLabel3 = [(HUContactDetailsTableViewCell *)self titleLabel];
    topAnchor5 = [titleLabel3 topAnchor];
    containerView10 = [(HUContactDetailsTableViewCell *)self containerView];
    topAnchor6 = [containerView10 topAnchor];
    v88 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [array addObject:v88];

    titleLabel4 = [(HUContactDetailsTableViewCell *)self titleLabel];
    bottomAnchor5 = [titleLabel4 bottomAnchor];
    descriptionLabel3 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    topAnchor7 = [descriptionLabel3 topAnchor];
    v93 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7];
    [array addObject:v93];

    descriptionLabel4 = [(HUContactDetailsTableViewCell *)self descriptionLabel];
    bottomAnchor6 = [descriptionLabel4 bottomAnchor];
    containerView11 = [(HUContactDetailsTableViewCell *)self containerView];
    bottomAnchor7 = [containerView11 bottomAnchor];
    v98 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    [array addObject:v98];

    [(HUContactDetailsTableViewCell *)self setConstraints:array];
    v99 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUContactDetailsTableViewCell *)self constraints];
    [v99 activateConstraints:constraints2];
  }

  v101.receiver = self;
  v101.super_class = HUContactDetailsTableViewCell;
  [(HUContactDetailsTableViewCell *)&v101 updateConstraints];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUContactDetailsTableViewCell;
  [(HUContactDetailsTableViewCell *)&v18 layoutSubviews];
  avatarView = [(HUContactDetailsTableViewCell *)self avatarView];
  [avatarView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  photoView = [(HUContactDetailsTableViewCell *)self photoView];
  [photoView setFrame:{v5, v7, v9, v11}];

  photoView2 = [(HUContactDetailsTableViewCell *)self photoView];
  [photoView2 bounds];
  v15 = v14 * 0.5;
  photoView3 = [(HUContactDetailsTableViewCell *)self photoView];
  layer = [photoView3 layer];
  [layer setCornerRadius:v15];
}

@end