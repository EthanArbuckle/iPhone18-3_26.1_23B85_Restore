@interface PKPaymentSetupFieldLabel
- (id)copyWithZone:(_NSZone *)zone;
- (void)_commonUpdate;
- (void)updateWithAttribute:(id)attribute;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PKPaymentSetupFieldLabel

- (void)updateWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldLabel;
  [(PKPaymentSetupField *)&v6 updateWithAttribute:attributeCopy];
  [(PKPaymentSetupFieldLabel *)self _commonUpdate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    defaultValue = [attributeCopy defaultValue];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(PKPaymentSetupField *)self setDefaultValue:defaultValue];
    }
  }
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = PKPaymentSetupFieldLabel;
  [(PKPaymentSetupField *)&v17 updateWithConfiguration:configurationCopy];
  v5 = [configurationCopy PKStringForKey:@"buttonTitle"];
  if (v5)
  {
    [(PKPaymentSetupFieldLabel *)self setButtonTitle:v5];
  }

  v6 = [configurationCopy PKStringForKey:@"detailTitle"];
  if (v6)
  {
    [(PKPaymentSetupFieldLabel *)self setDetailTitle:v6];
  }

  v7 = [configurationCopy PKStringForKey:@"detailSubtitle"];
  if (v7)
  {
    [(PKPaymentSetupFieldLabel *)self setDetailSubtitle:v7];
  }

  v8 = [configurationCopy PKStringForKey:@"detailBody"];
  if (v8)
  {
    [(PKPaymentSetupFieldLabel *)self setDetailBody:v8];
  }

  v9 = [configurationCopy PKStringForKey:@"businessChatIdentifier"];
  if (v9)
  {
    [(PKPaymentSetupFieldLabel *)self setBusinessChatIdentifier:v9];
  }

  v10 = [configurationCopy PKStringForKey:@"businessChatButtonTitle"];
  if (v10)
  {
    [(PKPaymentSetupFieldLabel *)self setBusinessChatButtonTitle:v10];
  }

  v16 = v6;
  v11 = [configurationCopy PKStringForKey:@"businessChatIntentName"];
  if (v11)
  {
    [(PKPaymentSetupFieldLabel *)self setBusinessChatIntentName:v11];
  }

  v12 = v5;
  v13 = [configurationCopy PKStringForKey:@"alignment"];
  v14 = v13;
  if (v13)
  {
    [(PKPaymentSetupFieldLabel *)self setAlingment:PKPaymentSetupFieldLabelAlignmentFromString(v13)];
  }

  v15 = [configurationCopy PKArrayContaining:objc_opt_class() forKey:@"links"];
  if (v15)
  {
    [(PKPaymentSetupFieldLabel *)self setLinks:v15];
  }

  [(PKPaymentSetupFieldLabel *)self _commonUpdate];
}

- (void)_commonUpdate
{
  [(PKPaymentSetupField *)self _setLocalizedDisplayName:0];
  [(PKPaymentSetupField *)self setLocalizedPlaceholder:0];
  [(PKPaymentSetupField *)self setDisplayFormat:0];
  [(PKPaymentSetupField *)self setSubmissionKey:0];
  [(PKPaymentSetupField *)self setSubmissionDestination:0];

  [(PKPaymentSetupField *)self setSubmissionSecurity:0];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23.receiver = self;
  v23.super_class = PKPaymentSetupFieldLabel;
  v5 = [(PKPaymentSetupField *)&v23 copyWithZone:?];
  v6 = [(NSString *)self->_buttonTitle copyWithZone:zone];
  v7 = v5[21];
  v5[21] = v6;

  v8 = [(NSString *)self->_detailTitle copyWithZone:zone];
  v9 = v5[22];
  v5[22] = v8;

  v10 = [(NSString *)self->_detailSubtitle copyWithZone:zone];
  v11 = v5[23];
  v5[23] = v10;

  v12 = [(NSString *)self->_detailBody copyWithZone:zone];
  v13 = v5[24];
  v5[24] = v12;

  v14 = [(NSString *)self->_businessChatButtonTitle copyWithZone:zone];
  v15 = v5[25];
  v5[25] = v14;

  v16 = [(NSString *)self->_businessChatIdentifier copyWithZone:zone];
  v17 = v5[26];
  v5[26] = v16;

  v18 = [(NSString *)self->_businessChatIntentName copyWithZone:zone];
  v19 = v5[27];
  v5[27] = v18;

  v5[28] = self->_alingment;
  v20 = [(NSArray *)self->_links copyWithZone:zone];
  v21 = v5[29];
  v5[29] = v20;

  return v5;
}

@end