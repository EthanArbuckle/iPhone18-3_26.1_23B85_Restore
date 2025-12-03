@interface BRParticipantInfoCell
- (BRParticipantInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)copy:(id)copy;
- (void)prepareForReuse;
- (void)setRepresentedValue:(id)value;
@end

@implementation BRParticipantInfoCell

- (BRParticipantInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v35.receiver = self;
  v35.super_class = BRParticipantInfoCell;
  v4 = [(BRParticipantInfoCell *)&v35 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    accountTypeLabel = v4->_accountTypeLabel;
    v4->_accountTypeLabel = v6;

    v8 = objc_opt_new();
    accountValueLabel = v4->_accountValueLabel;
    v4->_accountValueLabel = v8;

    [(UILabel *)v4->_accountTypeLabel _setTextColorFollowsTintColor:1];
    [(UILabel *)v4->_accountTypeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_accountValueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_accountValueLabel setLineBreakMode:5];
    [(BRParticipantInfoCell *)v4 addSubview:v4->_accountTypeLabel];
    [(BRParticipantInfoCell *)v4 addSubview:v4->_accountValueLabel];
    safeAreaLayoutGuide = [(BRParticipantInfoCell *)v4 safeAreaLayoutGuide];
    leadingAnchor = [(UILabel *)v4->_accountTypeLabel leadingAnchor];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:14.0];
    [v5 addObject:v13];

    leadingAnchor3 = [(UILabel *)v4->_accountValueLabel leadingAnchor];
    leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
    v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:14.0];
    [v5 addObject:v16];

    trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
    trailingAnchor2 = [(UILabel *)v4->_accountTypeLabel trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:14.0];
    [v5 addObject:v19];

    trailingAnchor3 = [safeAreaLayoutGuide trailingAnchor];
    trailingAnchor4 = [(UILabel *)v4->_accountValueLabel trailingAnchor];
    v22 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:14.0];
    [v5 addObject:v22];

    firstBaselineAnchor = [(UILabel *)v4->_accountTypeLabel firstBaselineAnchor];
    topAnchor = [(BRParticipantInfoCell *)v4 topAnchor];
    v25 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:18.0];
    [v5 addObject:v25];

    firstBaselineAnchor2 = [(UILabel *)v4->_accountValueLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(UILabel *)v4->_accountTypeLabel firstBaselineAnchor];
    v28 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:24.0];
    [v5 addObject:v28];

    bottomAnchor = [(BRParticipantInfoCell *)v4 bottomAnchor];
    firstBaselineAnchor4 = [(UILabel *)v4->_accountValueLabel firstBaselineAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor4 constant:16.0];
    [v5 addObject:v31];

    v32 = [UIFont systemFontOfSize:12.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_accountTypeLabel setFont:v32];

    v33 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightRegular];
    [(UILabel *)v4->_accountValueLabel setFont:v33];

    [(UILabel *)v4->_accountValueLabel setText:&stru_10004DE38];
    [NSLayoutConstraint activateConstraints:v5];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(BRParticipantInfoCell *)self setRepresentedValue:0];
  v3.receiver = self;
  v3.super_class = BRParticipantInfoCell;
  [(BRParticipantInfoCell *)&v3 prepareForReuse];
}

- (void)setRepresentedValue:(id)value
{
  valueCopy = value;
  if (self->_representedValue != valueCopy)
  {
    v19 = valueCopy;
    objc_storeStrong(&self->_representedValue, value);
    participant = [(CKShareParticipantContact *)self->_representedValue participant];
    userIdentity = [participant userIdentity];
    lookupInfo = [userIdentity lookupInfo];
    emailAddress = [lookupInfo emailAddress];

    v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = v10;
    if (emailAddress)
    {
      v12 = [v10 localizedStringForKey:@"email" value:@"email" table:@"Localizable"];
      [(UILabel *)self->_accountTypeLabel setText:v12];

      participant2 = [(CKShareParticipantContact *)self->_representedValue participant];
      userIdentity2 = [participant2 userIdentity];
      lookupInfo2 = [userIdentity2 lookupInfo];
      emailAddress2 = [lookupInfo2 emailAddress];
      [(UILabel *)self->_accountValueLabel setText:emailAddress2];
    }

    else
    {
      v17 = [v10 localizedStringForKey:@"Phone number" value:@"Phone number" table:@"Localizable"];
      [(UILabel *)self->_accountTypeLabel setText:v17];

      participant2 = [(CKShareParticipantContact *)self->_representedValue participant];
      userIdentity2 = [participant2 userIdentity];
      lookupInfo2 = [userIdentity2 lookupInfo];
      emailAddress2 = [lookupInfo2 phoneNumber];
      v18 = BRFormatPhoneNumber();
      [(UILabel *)self->_accountValueLabel setText:v18];
    }

    valueCopy = v19;
  }
}

- (void)copy:(id)copy
{
  v5 = +[UIPasteboard generalPasteboard];
  text = [(UILabel *)self->_accountValueLabel text];
  [v5 setValue:text forPasteboardType:kUTTypeText];
}

@end