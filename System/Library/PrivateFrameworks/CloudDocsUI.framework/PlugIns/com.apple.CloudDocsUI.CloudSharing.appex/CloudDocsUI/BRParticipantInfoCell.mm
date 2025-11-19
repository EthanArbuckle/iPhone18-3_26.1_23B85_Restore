@interface BRParticipantInfoCell
- (BRParticipantInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)copy:(id)a3;
- (void)prepareForReuse;
- (void)setRepresentedValue:(id)a3;
@end

@implementation BRParticipantInfoCell

- (BRParticipantInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v35.receiver = self;
  v35.super_class = BRParticipantInfoCell;
  v4 = [(BRParticipantInfoCell *)&v35 initWithStyle:0 reuseIdentifier:a4];
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
    v10 = [(BRParticipantInfoCell *)v4 safeAreaLayoutGuide];
    v11 = [(UILabel *)v4->_accountTypeLabel leadingAnchor];
    v12 = [v10 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:14.0];
    [v5 addObject:v13];

    v14 = [(UILabel *)v4->_accountValueLabel leadingAnchor];
    v15 = [v10 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:14.0];
    [v5 addObject:v16];

    v17 = [v10 trailingAnchor];
    v18 = [(UILabel *)v4->_accountTypeLabel trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:14.0];
    [v5 addObject:v19];

    v20 = [v10 trailingAnchor];
    v21 = [(UILabel *)v4->_accountValueLabel trailingAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:14.0];
    [v5 addObject:v22];

    v23 = [(UILabel *)v4->_accountTypeLabel firstBaselineAnchor];
    v24 = [(BRParticipantInfoCell *)v4 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:18.0];
    [v5 addObject:v25];

    v26 = [(UILabel *)v4->_accountValueLabel firstBaselineAnchor];
    v27 = [(UILabel *)v4->_accountTypeLabel firstBaselineAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:24.0];
    [v5 addObject:v28];

    v29 = [(BRParticipantInfoCell *)v4 bottomAnchor];
    v30 = [(UILabel *)v4->_accountValueLabel firstBaselineAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];
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

- (void)setRepresentedValue:(id)a3
{
  v5 = a3;
  if (self->_representedValue != v5)
  {
    v19 = v5;
    objc_storeStrong(&self->_representedValue, a3);
    v6 = [(CKShareParticipantContact *)self->_representedValue participant];
    v7 = [v6 userIdentity];
    v8 = [v7 lookupInfo];
    v9 = [v8 emailAddress];

    v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 localizedStringForKey:@"email" value:@"email" table:@"Localizable"];
      [(UILabel *)self->_accountTypeLabel setText:v12];

      v13 = [(CKShareParticipantContact *)self->_representedValue participant];
      v14 = [v13 userIdentity];
      v15 = [v14 lookupInfo];
      v16 = [v15 emailAddress];
      [(UILabel *)self->_accountValueLabel setText:v16];
    }

    else
    {
      v17 = [v10 localizedStringForKey:@"Phone number" value:@"Phone number" table:@"Localizable"];
      [(UILabel *)self->_accountTypeLabel setText:v17];

      v13 = [(CKShareParticipantContact *)self->_representedValue participant];
      v14 = [v13 userIdentity];
      v15 = [v14 lookupInfo];
      v16 = [v15 phoneNumber];
      v18 = BRFormatPhoneNumber();
      [(UILabel *)self->_accountValueLabel setText:v18];
    }

    v5 = v19;
  }
}

- (void)copy:(id)a3
{
  v5 = +[UIPasteboard generalPasteboard];
  v4 = [(UILabel *)self->_accountValueLabel text];
  [v5 setValue:v4 forPasteboardType:kUTTypeText];
}

@end