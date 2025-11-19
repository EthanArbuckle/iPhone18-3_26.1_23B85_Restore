@interface BRShareParticipantCell
- (void)_setupWithAvatar:(BOOL)a3 subtitle:(BOOL)a4 participantColor:(BOOL)a5;
- (void)prepareForReuse;
- (void)setRepresentedValue:(id)a3;
@end

@implementation BRShareParticipantCell

- (void)_setupWithAvatar:(BOOL)a3 subtitle:(BOOL)a4 participantColor:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  if (a3)
  {
    v8 = a4;
    avatarViewController = self->_avatarViewController;
    if (!avatarViewController)
    {
      v10 = objc_alloc_init(CNAvatarViewController);
      v11 = self->_avatarViewController;
      self->_avatarViewController = v10;

      v12 = [(CNAvatarViewController *)self->_avatarViewController view];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

      avatarViewController = self->_avatarViewController;
    }

    v13 = [(CNAvatarViewController *)avatarViewController view];
    [(BRShareParticipantCell *)self addSubview:v13];
    v14 = objc_opt_new();
    v15 = [v13 heightAnchor];
    v16 = [v15 constraintEqualToConstant:32.0];
    [v14 addObject:v16];

    v17 = [v13 widthAnchor];
    v18 = [v17 constraintEqualToConstant:32.0];
    [v14 addObject:v18];

    v19 = [v13 leadingAnchor];
    v20 = [(BRShareParticipantCell *)self layoutMarginsGuide];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v14 addObject:v22];

    v23 = [v13 topAnchor];
    v24 = [(BRShareParticipantCell *)self topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:6.0];
    [v14 addObject:v25];

    v26 = [(BRShareParticipantCell *)self bottomAnchor];
    v27 = [v13 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];
    [v14 addObject:v28];

    v29 = [v14 copy];
    avatarConstraints = self->_avatarConstraints;
    self->_avatarConstraints = v29;

    [NSLayoutConstraint activateConstraints:self->_avatarConstraints];
    v6 = v8;
  }

  else
  {
    if (!self->_avatarConstraints)
    {
      goto LABEL_8;
    }

    [NSLayoutConstraint deactivateConstraints:?];
    v13 = [(CNAvatarViewController *)self->_avatarViewController view];
    [v13 removeFromSuperview];
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
  if (v6)
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
  if (v5)
  {
    if (!self->_participantColorView)
    {
      v38 = [[UIView alloc] initWithFrame:{0.0, 0.0, 16.0, 16.0}];
      participantColorView = self->_participantColorView;
      self->_participantColorView = v38;

      [(UIView *)self->_participantColorView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_participantColorView frame];
      v41 = v40 * 0.5;
      v42 = [(UIView *)self->_participantColorView layer];
      [v42 setCornerRadius:v41];
    }

    v43 = [(BRShareParticipantCell *)self contentView];
    [v43 addSubview:self->_participantColorView];

    v44 = objc_opt_new();
    v45 = [(UIView *)self->_participantColorView heightAnchor];
    v46 = [v45 constraintEqualToConstant:16.0];
    [v44 addObject:v46];

    v47 = [(UIView *)self->_participantColorView widthAnchor];
    v48 = [v47 constraintEqualToConstant:16.0];
    [v44 addObject:v48];

    v49 = [(UIView *)self->_participantColorView leadingAnchor];
    v50 = [(BRShareParticipantCell *)self titleLabel];
    v51 = [v50 trailingAnchor];
    v52 = [v49 constraintEqualToAnchor:v51 constant:8.0];
    [v44 addObject:v52];

    v53 = [(UIView *)self->_participantColorView trailingAnchor];
    v54 = [(BRShareParticipantCell *)self contentView];
    v55 = [v54 trailingAnchor];
    v56 = [v53 constraintEqualToAnchor:v55 constant:-8.0];
    [v44 addObject:v56];

    v57 = [(UIView *)self->_participantColorView centerYAnchor];
    v58 = [(BRShareParticipantCell *)self contentView];
    v59 = [v58 centerYAnchor];
    v60 = [v57 constraintEqualToAnchor:v59 constant:0.0];
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
    v65 = [(UILayoutGuide *)self->_textCenterLayoutGuide leadingAnchor];
    v66 = [(BRShareParticipantCell *)self layoutMarginsGuide];
    v67 = [v66 leadingAnchor];
    v68 = [v65 constraintEqualToAnchor:v67 constant:48.0];
    [v68 setActive:1];

    v69 = [(BRShareParticipantCell *)self trailingAnchor];
    v70 = [(UILayoutGuide *)self->_textCenterLayoutGuide trailingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70 constant:32.0];

    LODWORD(v72) = 1147207680;
    [v71 setPriority:v72];
    [v71 setActive:1];
    v73 = [(BRShareParticipantCell *)self centerYAnchor];
    v74 = [(UILayoutGuide *)self->_textCenterLayoutGuide centerYAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];
    [v75 setActive:1];
  }

  [NSLayoutConstraint deactivateConstraints:self->_textConstraints, v98];
  v100 = objc_opt_new();
  v76 = [(UILayoutGuide *)self->_textCenterLayoutGuide topAnchor];
  v77 = [(UILabel *)self->_titleLabel topAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];
  [v100 addObject:v78];

  v79 = [(UILabel *)self->_titleLabel leadingAnchor];
  v80 = [(UILayoutGuide *)self->_textCenterLayoutGuide leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  [v100 addObject:v81];

  v82 = [(UILabel *)self->_titleLabel trailingAnchor];
  v83 = [(UILayoutGuide *)self->_textCenterLayoutGuide trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];
  [v100 addObject:v84];

  v85 = [(UILayoutGuide *)self->_textCenterLayoutGuide bottomAnchor];
  if (v6)
  {
    v86 = [*(&self->super.super.super.super.isa + v99) bottomAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    [v100 addObject:v87];

    v88 = [*(&self->super.super.super.super.isa + v99) firstBaselineAnchor];
    v89 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
    v90 = [v88 constraintEqualToAnchor:v89 constant:16.0];
    [v100 addObject:v90];

    v91 = [*(&self->super.super.super.super.isa + v99) leadingAnchor];
    v92 = [(UILayoutGuide *)self->_textCenterLayoutGuide leadingAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];
    [v100 addObject:v93];

    v85 = [*(&self->super.super.super.super.isa + v99) trailingAnchor];
    [(UILayoutGuide *)self->_textCenterLayoutGuide trailingAnchor];
  }

  else
  {
    [(UILabel *)self->_titleLabel bottomAnchor];
  }
  v94 = ;
  v95 = [v85 constraintEqualToAnchor:v94];
  [v100 addObject:v95];

  v96 = [v100 copy];
  textConstraints = self->_textConstraints;
  self->_textConstraints = v96;

  [NSLayoutConstraint activateConstraints:self->_textConstraints];
}

- (void)setRepresentedValue:(id)a3
{
  v6 = a3;
  if (self->_representedValue != v6)
  {
    objc_storeStrong(&self->_representedValue, a3);
    if (self->_representedValue)
    {
      v7 = [(BRShareParticipantCellValue *)v6 contact];
      v3 = v7 != 0;
      v8 = [(BRShareParticipantCellValue *)v6 subtitle];
      v9 = [v8 length] != 0;
      v10 = [(BRShareParticipantCellValue *)v6 participantColor];
      [(BRShareParticipantCell *)self _setupWithAvatar:v3 subtitle:v9 participantColor:v10 != 0];
    }

    v11 = [(BRShareParticipantCellValue *)v6 contact];
    if (v11)
    {
      v3 = [(BRShareParticipantCellValue *)v6 contact];
      v20 = v3;
      v12 = [NSArray arrayWithObjects:&v20 count:1];
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v13 = [(BRShareParticipantCell *)self avatarViewController];
    [v13 setContacts:v12];

    if (v11)
    {
    }

    v14 = [(BRShareParticipantCellValue *)v6 title];
    [(UILabel *)self->_titleLabel setText:v14];

    v15 = [(BRShareParticipantCellValue *)v6 subtitle];
    [(UILabel *)self->_subtitleLabel setText:v15];

    if ([(BRShareParticipantCellValue *)v6 grayedOut])
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

    v18 = [(BRShareParticipantCellValue *)self->_representedValue participantColor];
    if (v18)
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