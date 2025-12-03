@interface BRShareParticipantCell
- (void)_setupWithAvatar:(BOOL)avatar subtitle:(BOOL)subtitle participantColor:(BOOL)color;
- (void)prepareForReuse;
- (void)setRepresentedValue:(id)value;
@end

@implementation BRShareParticipantCell

- (void)_setupWithAvatar:(BOOL)avatar subtitle:(BOOL)subtitle participantColor:(BOOL)color
{
  colorCopy = color;
  subtitleCopy = subtitle;
  if (avatar)
  {
    subtitleCopy2 = subtitle;
    avatarViewController = self->_avatarViewController;
    if (!avatarViewController)
    {
      v10 = objc_alloc_init(CNAvatarViewController);
      v11 = self->_avatarViewController;
      self->_avatarViewController = v10;

      view = [(CNAvatarViewController *)self->_avatarViewController view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      avatarViewController = self->_avatarViewController;
    }

    view2 = [(CNAvatarViewController *)avatarViewController view];
    [(BRShareParticipantCell *)self addSubview:view2];
    v14 = objc_opt_new();
    heightAnchor = [view2 heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:32.0];
    [v14 addObject:v16];

    widthAnchor = [view2 widthAnchor];
    v18 = [widthAnchor constraintEqualToConstant:32.0];
    [v14 addObject:v18];

    leadingAnchor = [view2 leadingAnchor];
    layoutMarginsGuide = [(BRShareParticipantCell *)self layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v14 addObject:v22];

    topAnchor = [view2 topAnchor];
    topAnchor2 = [(BRShareParticipantCell *)self topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
    [v14 addObject:v25];

    bottomAnchor = [(BRShareParticipantCell *)self bottomAnchor];
    bottomAnchor2 = [view2 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:6.0];
    [v14 addObject:v28];

    v29 = [v14 copy];
    avatarConstraints = self->_avatarConstraints;
    self->_avatarConstraints = v29;

    [NSLayoutConstraint activateConstraints:self->_avatarConstraints];
    subtitleCopy = subtitleCopy2;
  }

  else
  {
    if (!self->_avatarConstraints)
    {
      goto LABEL_8;
    }

    [NSLayoutConstraint deactivateConstraints:?];
    view2 = [(CNAvatarViewController *)self->_avatarViewController view];
    [view2 removeFromSuperview];
  }

LABEL_8:
  if (self->_textConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
  }

  if (!self->_titleLabel)
  {
    v31 = objc_opt_new();
    titleLabel = self->_titleLabel;
    self->_titleLabel = v31;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    [(UILabel *)self->_titleLabel setFont:v33];

    [(UILabel *)self->_titleLabel setLineBreakMode:5];
    [(BRShareParticipantCell *)self addSubview:self->_titleLabel];
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleCopy)
  {
    if (!subtitleLabel)
    {
      v35 = objc_opt_new();
      v36 = self->_subtitleLabel;
      self->_subtitleLabel = v35;

      [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular];
      [(UILabel *)self->_subtitleLabel setFont:v37];

      subtitleLabel = self->_subtitleLabel;
    }

    [(BRShareParticipantCell *)self addSubview:subtitleLabel];
  }

  else
  {
    [(UILabel *)self->_subtitleLabel removeFromSuperview];
  }

  v98 = 64;
  if (colorCopy)
  {
    if (!self->_participantColorView)
    {
      v38 = [[UIView alloc] initWithFrame:{0.0, 0.0, 16.0, 16.0}];
      participantColorView = self->_participantColorView;
      self->_participantColorView = v38;

      [(UIView *)self->_participantColorView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_participantColorView frame];
      v41 = v40 * 0.5;
      layer = [(UIView *)self->_participantColorView layer];
      [layer setCornerRadius:v41];
    }

    contentView = [(BRShareParticipantCell *)self contentView];
    [contentView addSubview:self->_participantColorView];

    v44 = objc_opt_new();
    heightAnchor2 = [(UIView *)self->_participantColorView heightAnchor];
    v46 = [heightAnchor2 constraintEqualToConstant:16.0];
    [v44 addObject:v46];

    widthAnchor2 = [(UIView *)self->_participantColorView widthAnchor];
    v48 = [widthAnchor2 constraintEqualToConstant:16.0];
    [v44 addObject:v48];

    leadingAnchor3 = [(UIView *)self->_participantColorView leadingAnchor];
    titleLabel = [(BRShareParticipantCell *)self titleLabel];
    trailingAnchor = [titleLabel trailingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    [v44 addObject:v52];

    trailingAnchor2 = [(UIView *)self->_participantColorView trailingAnchor];
    contentView2 = [(BRShareParticipantCell *)self contentView];
    trailingAnchor3 = [contentView2 trailingAnchor];
    v56 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
    [v44 addObject:v56];

    centerYAnchor = [(UIView *)self->_participantColorView centerYAnchor];
    contentView3 = [(BRShareParticipantCell *)self contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v60 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    [v44 addObject:v60];

    v61 = [v44 copy];
    participantColorConstraints = self->_participantColorConstraints;
    self->_participantColorConstraints = v61;

    [NSLayoutConstraint activateConstraints:self->_participantColorConstraints];
  }

  else if (self->_participantColorConstraints)
  {
    [NSLayoutConstraint deactivateConstraints:?];
    [(UIView *)self->_participantColorView removeFromSuperview];
  }

  if (!self->_textCenterLayoutGuide)
  {
    v63 = objc_opt_new();
    textCenterLayoutGuide = self->_textCenterLayoutGuide;
    self->_textCenterLayoutGuide = v63;

    [(BRShareParticipantCell *)self addLayoutGuide:self->_textCenterLayoutGuide];
    leadingAnchor4 = [(UILayoutGuide *)self->_textCenterLayoutGuide leadingAnchor];
    layoutMarginsGuide2 = [(BRShareParticipantCell *)self layoutMarginsGuide];
    leadingAnchor5 = [layoutMarginsGuide2 leadingAnchor];
    v68 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:48.0];
    [v68 setActive:1];

    trailingAnchor4 = [(BRShareParticipantCell *)self trailingAnchor];
    trailingAnchor5 = [(UILayoutGuide *)self->_textCenterLayoutGuide trailingAnchor];
    v71 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:32.0];

    LODWORD(v72) = 1147207680;
    [v71 setPriority:v72];
    [v71 setActive:1];
    centerYAnchor3 = [(BRShareParticipantCell *)self centerYAnchor];
    centerYAnchor4 = [(UILayoutGuide *)self->_textCenterLayoutGuide centerYAnchor];
    v75 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v75 setActive:1];
  }

  [NSLayoutConstraint deactivateConstraints:self->_textConstraints, v98];
  v100 = objc_opt_new();
  topAnchor3 = [(UILayoutGuide *)self->_textCenterLayoutGuide topAnchor];
  topAnchor4 = [(UILabel *)self->_titleLabel topAnchor];
  v78 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v100 addObject:v78];

  leadingAnchor6 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor7 = [(UILayoutGuide *)self->_textCenterLayoutGuide leadingAnchor];
  v81 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [v100 addObject:v81];

  trailingAnchor6 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor7 = [(UILayoutGuide *)self->_textCenterLayoutGuide trailingAnchor];
  v84 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  [v100 addObject:v84];

  bottomAnchor3 = [(UILayoutGuide *)self->_textCenterLayoutGuide bottomAnchor];
  if (subtitleCopy)
  {
    bottomAnchor4 = [*(&self->super.super.super.super.isa + v99) bottomAnchor];
    v87 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v100 addObject:v87];

    firstBaselineAnchor = [*(&self->super.super.super.super.isa + v99) firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v90 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:16.0];
    [v100 addObject:v90];

    leadingAnchor8 = [*(&self->super.super.super.super.isa + v99) leadingAnchor];
    leadingAnchor9 = [(UILayoutGuide *)self->_textCenterLayoutGuide leadingAnchor];
    v93 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    [v100 addObject:v93];

    bottomAnchor3 = [*(&self->super.super.super.super.isa + v99) trailingAnchor];
    [(UILayoutGuide *)self->_textCenterLayoutGuide trailingAnchor];
  }

  else
  {
    [(UILabel *)self->_titleLabel bottomAnchor];
  }
  v94 = ;
  v95 = [bottomAnchor3 constraintEqualToAnchor:v94];
  [v100 addObject:v95];

  v96 = [v100 copy];
  textConstraints = self->_textConstraints;
  self->_textConstraints = v96;

  [NSLayoutConstraint activateConstraints:self->_textConstraints];
}

- (void)setRepresentedValue:(id)value
{
  valueCopy = value;
  if (self->_representedValue != valueCopy)
  {
    objc_storeStrong(&self->_representedValue, value);
    if (self->_representedValue)
    {
      contact = [(BRShareParticipantCellValue *)valueCopy contact];
      contact3 = contact != 0;
      subtitle = [(BRShareParticipantCellValue *)valueCopy subtitle];
      v9 = [subtitle length] != 0;
      participantColor = [(BRShareParticipantCellValue *)valueCopy participantColor];
      [(BRShareParticipantCell *)self _setupWithAvatar:contact3 subtitle:v9 participantColor:participantColor != 0];
    }

    contact2 = [(BRShareParticipantCellValue *)valueCopy contact];
    if (contact2)
    {
      contact3 = [(BRShareParticipantCellValue *)valueCopy contact];
      v20 = contact3;
      v12 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    avatarViewController = [(BRShareParticipantCell *)self avatarViewController];
    [avatarViewController setContacts:v12];

    if (contact2)
    {
    }

    title = [(BRShareParticipantCellValue *)valueCopy title];
    [(UILabel *)self->_titleLabel setText:title];

    subtitle2 = [(BRShareParticipantCellValue *)valueCopy subtitle];
    [(UILabel *)self->_subtitleLabel setText:subtitle2];

    if ([(BRShareParticipantCellValue *)valueCopy grayedOut])
    {
      +[UIColor secondaryLabelColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v16 = ;
    [(UILabel *)self->_titleLabel setTextColor:v16];
    v17 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_subtitleLabel setTextColor:v17];

    participantColor2 = [(BRShareParticipantCellValue *)self->_representedValue participantColor];
    if (participantColor2)
    {
      [(BRShareParticipantCellValue *)self->_representedValue participantColor];
    }

    else
    {
      +[UIColor clearColor];
    }
    v19 = ;
    [(UIView *)self->_participantColorView setBackgroundColor:v19];
  }
}

- (void)prepareForReuse
{
  [(BRShareParticipantCell *)self setRepresentedValue:0];
  v3.receiver = self;
  v3.super_class = BRShareParticipantCell;
  [(BRShareParticipantCell *)&v3 prepareForReuse];
}

@end