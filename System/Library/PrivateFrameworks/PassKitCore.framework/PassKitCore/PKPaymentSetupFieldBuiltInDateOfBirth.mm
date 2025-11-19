@interface PKPaymentSetupFieldBuiltInDateOfBirth
- (BOOL)submissionStringMeetsAllRequirements;
- (PKPaymentSetupFieldBuiltInDateOfBirth)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PKPaymentSetupFieldBuiltInDateOfBirth

- (PKPaymentSetupFieldBuiltInDateOfBirth)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupFieldBuiltInDateOfBirth;
  v4 = [(PKPaymentSetupFieldDate *)&v7 initWithIdentifier:@"dateOfBirth" type:a4];
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

- (void)updateWithConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldBuiltInDateOfBirth;
  v4 = a3;
  [(PKPaymentSetupFieldDate *)&v6 updateWithConfiguration:v4];
  v5 = [v4 PKIntegerForKey:{@"minimumAge", v6.receiver, v6.super_class}];

  self->_minimumAge = v5;
}

- (BOOL)submissionStringMeetsAllRequirements
{
  v3 = [(PKPaymentSetupFieldDate *)self currentValue];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [(PKPaymentSetupFieldDate *)self calendar];
  v6 = v5;
  disallowCurrentYear = self->_disallowCurrentYear;
  if (self->_disallowCurrentYear)
  {
    v8 = 4;
  }

  else
  {
    v8 = 16;
  }

  v9 = [v5 compareDate:v3 toDate:v4 toUnitGranularity:v8];
  v10 = [v6 components:4 fromDate:v3 toDate:v4 options:0];
  v11 = [v10 year];
  minimumAge = self->_minimumAge;
  v18.receiver = self;
  v18.super_class = PKPaymentSetupFieldBuiltInDateOfBirth;
  v13 = [(PKPaymentSetupFieldDate *)&v18 submissionStringMeetsAllRequirements];
  v15 = v9 != !disallowCurrentYear && v11 >= minimumAge;
  if (v13)
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