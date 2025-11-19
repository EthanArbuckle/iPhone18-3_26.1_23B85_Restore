@interface PKPaymentSetupFieldBuiltInCardExpiration
- (PKPaymentSetupFieldBuiltInCardExpiration)initWithIdentifier:(id)a3 type:(unint64_t)a4;
@end

@implementation PKPaymentSetupFieldBuiltInCardExpiration

- (PKPaymentSetupFieldBuiltInCardExpiration)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = PKPaymentSetupFieldBuiltInCardExpiration;
  v4 = [(PKPaymentSetupFieldDate *)&v10 initWithIdentifier:@"cardExpiration" type:a4];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_ExpirationDate.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupField *)v4 setSubmissionKey:@"expiration"];
    [(PKPaymentSetupField *)v4 setSubmissionDestination:@"eligibility"];
    [(PKPaymentSetupField *)v4 setSubmissionSecurity:1];
    [(PKPaymentSetupFieldDate *)v4 setShowsDay:0];
    [(PKPaymentSetupFieldDate *)v4 setShowsMonth:1];
    [(PKPaymentSetupFieldDate *)v4 setShowsYear:1];
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"MM/yy"];
    [(PKPaymentSetupFieldDate *)v4 setSubmissionFormat:@"MM/yy"];
    [(PKPaymentSetupFieldText *)v4 setSecureText:1];
    [(PKPaymentSetupFieldText *)v4 setSecureVisibleText:1];
    v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    [(PKPaymentSetupFieldDate *)v4 setCalendar:v6];
    v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    v8 = PKLocaleWithOverriddenCalendar(v7, v6);
    [(PKPaymentSetupFieldDate *)v4 setLocale:v8];
  }

  return v4;
}

@end