@interface PKPaymentSetupFieldBuiltInDateOfBirth
- (BOOL)submissionStringMeetsAllRequirements;
- (PKPaymentSetupFieldBuiltInDateOfBirth)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PKPaymentSetupFieldBuiltInDateOfBirth

- (PKPaymentSetupFieldBuiltInDateOfBirth)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInDateOfBirth;
  v4 = [(PKPaymentSetupFieldDate *)&v7 initWithIdentifier:@"dateOfBirth" type:type];
  if (v4)
  {
    v5 = PKLocalizedPaymentString(&cfstr_DateOfBirth.isa, 0);
    [(PKPaymentSetupField *)v4 _setLocalizedDisplayName:v5];

    [(PKPaymentSetupFieldDate *)v4 setShowsDay:1];
    [(PKPaymentSetupFieldDate *)v4 setShowsYear:1];
    [(PKPaymentSetupFieldDate *)v4 setShowsMonth:1];
    v4->_disallowCurrentYear = 1;
  }

  return v4;
}

- (void)updateWithConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldBuiltInDateOfBirth;
  configurationCopy = configuration;
  [(PKPaymentSetupFieldDate *)&v6 updateWithConfiguration:configurationCopy];
  v5 = [configurationCopy PKIntegerForKey:{@"minimumAge", v6.receiver, v6.super_class}];

  self->_minimumAge = v5;
}

- (BOOL)submissionStringMeetsAllRequirements
{
  currentValue = [(PKPaymentSetupFieldDate *)self currentValue];
  date = [MEMORY[0x1E695DF00] date];
  calendar = [(PKPaymentSetupFieldDate *)self calendar];
  v6 = calendar;
  disallowCurrentYear = self->_disallowCurrentYear;
  if (self->_disallowCurrentYear)
  {
    v8 = 4;
  }

  else
  {
    v8 = 16;
  }

  v9 = [calendar compareDate:currentValue toDate:date toUnitGranularity:v8];
  v10 = [v6 components:4 fromDate:currentValue toDate:date options:0];
  year = [v10 year];
  minimumAge = self->_minimumAge;
  v18.receiver = self;
  v18.super_class = PKPaymentSetupFieldBuiltInDateOfBirth;
  submissionStringMeetsAllRequirements = [(PKPaymentSetupFieldDate *)&v18 submissionStringMeetsAllRequirements];
  v15 = v9 != !disallowCurrentYear && year >= minimumAge;
  if (submissionStringMeetsAllRequirements)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end