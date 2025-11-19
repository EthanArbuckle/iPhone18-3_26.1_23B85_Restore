@interface PKPaymentSetupFieldDate
- (BOOL)submissionStringMeetsAllRequirements;
- (NSDate)defaultDate;
- (PKPaymentSetupFieldDate)initWithIdentifier:(id)a3 type:(unint64_t)a4;
- (id)_defaultValueAsDateForCurrentLocale;
- (id)_submissionStringForValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)displayString;
- (void)_commonUpdate;
- (void)setCurrentValue:(id)a3;
- (void)updateWithAttribute:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation PKPaymentSetupFieldDate

- (PKPaymentSetupFieldDate)initWithIdentifier:(id)a3 type:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldDate;
  v4 = [(PKPaymentSetupFieldText *)&v9 initWithIdentifier:a3 type:a4];
  v5 = v4;
  if (v4)
  {
    v4->_showsDay = 0;
    v4->_showsMonth = 1;
    v4->_showsYear = 1;
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"MM/yy"];
    [(PKPaymentSetupFieldDate *)v5 setSubmissionFormat:@"MM/yy"];
    v6 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(PKPaymentSetupFieldDate *)v5 setLocale:v6];

    v7 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [(PKPaymentSetupFieldDate *)v5 setCalendar:v7];
  }

  return v5;
}

- (void)setCurrentValue:(id)a3
{
  if (self->super.super._currentValue != a3)
  {
    v5 = [a3 copyWithZone:0];
    currentValue = self->super.super._currentValue;
    self->super.super._currentValue = v5;

    v7 = [(PKPaymentSetupField *)self attribute];
    [v7 setCurrentValue:self->super.super._currentValue];

    [(PKPaymentSetupField *)self noteCurrentValueChanged];
  }
}

- (id)displayString
{
  displayDateFormatter = self->_displayDateFormatter;
  if (!displayDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_displayDateFormatter;
    self->_displayDateFormatter = v4;

    displayDateFormatter = self->_displayDateFormatter;
  }

  v6 = [(PKPaymentSetupFieldDate *)self locale];
  [(NSDateFormatter *)displayDateFormatter setLocale:v6];

  v7 = MEMORY[0x1E696AB78];
  v8 = [(PKPaymentSetupField *)self displayFormat];
  v9 = [(NSDateFormatter *)self->_displayDateFormatter locale];
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:v9];

  [(NSDateFormatter *)self->_displayDateFormatter setDateFormat:v10];
  v11 = [(PKPaymentSetupFieldDate *)self currentValue];
  if (!v11)
  {
    v11 = [(PKPaymentSetupFieldDate *)self defaultDate];
  }

  v12 = [(NSDateFormatter *)self->_displayDateFormatter stringFromDate:v11];

  return v12;
}

- (id)_submissionStringForValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (qword_1EB5B7C90 != -1)
    {
      dispatch_once(&qword_1EB5B7C90, &__block_literal_global_718);
    }

    v5 = _MergedGlobals_10;
    v6 = [(PKPaymentSetupFieldDate *)self submissionFormat];
    [v5 setDateFormat:v6];

    v7 = [_MergedGlobals_10 stringFromDate:v4];
    v8 = [v7 pk_zString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __53__PKPaymentSetupFieldDate__submissionStringForValue___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_10;
  _MergedGlobals_10 = v0;

  v2 = _MergedGlobals_10;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
}

- (id)_defaultValueAsDateForCurrentLocale
{
  if (qword_1EB5B7CA0 != -1)
  {
    dispatch_once(&qword_1EB5B7CA0, &__block_literal_global_723);
  }

  v3 = qword_1EB5B7C98;
  v4 = [(PKPaymentSetupFieldDate *)self submissionFormat];
  [v3 setDateFormat:v4];

  v5 = qword_1EB5B7C98;
  v6 = [(PKPaymentSetupField *)self defaultValue];
  v7 = [v5 dateFromString:v6];

  return v7;
}

void __62__PKPaymentSetupFieldDate__defaultValueAsDateForCurrentLocale__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1EB5B7C98;
  qword_1EB5B7C98 = v0;

  v2 = qword_1EB5B7C98;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
}

- (BOOL)submissionStringMeetsAllRequirements
{
  v2 = [(PKPaymentSetupField *)self submissionString];
  v3 = [v2 length] != 0;

  return v3;
}

- (NSDate)defaultDate
{
  defaultDate = self->_defaultDate;
  if (!defaultDate)
  {
    v4 = [(PKPaymentSetupFieldDate *)self _defaultValueAsDateForCurrentLocale];
    v5 = self->_defaultDate;
    self->_defaultDate = v4;

    defaultDate = self->_defaultDate;
  }

  return defaultDate;
}

- (void)updateWithAttribute:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldDate;
  [(PKPaymentSetupFieldText *)&v8 updateWithAttribute:v4];
  [(PKPaymentSetupFieldDate *)self _commonUpdate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    -[PKPaymentSetupFieldDate setShowsDay:](self, "setShowsDay:", [v5 requireDay]);
    -[PKPaymentSetupFieldDate setShowsMonth:](self, "setShowsMonth:", [v5 requireMonth]);
    -[PKPaymentSetupFieldDate setShowsYear:](self, "setShowsYear:", [v5 requireYear]);
    v6 = [v5 defaultValue];
    if (v6)
    {
      objc_storeStrong(&self->_defaultDate, v6);
    }

    v7 = [(PKPaymentSetupFieldDate *)self defaultDate];

    if (v7)
    {
      [v5 setCurrentValue:v7];
    }
  }
}

- (void)updateWithConfiguration:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFieldDate;
  [(PKPaymentSetupFieldText *)&v12 updateWithConfiguration:v4];
  [(PKPaymentSetupFieldDate *)self _commonUpdate];
  v5 = [v4 PKNumberForKey:@"showsDay"];
  v6 = v5;
  if (v5)
  {
    -[PKPaymentSetupFieldDate setShowsDay:](self, "setShowsDay:", [v5 BOOLValue]);
  }

  v7 = [v4 PKNumberForKey:@"showsMonth"];
  v8 = v7;
  if (v7)
  {
    -[PKPaymentSetupFieldDate setShowsMonth:](self, "setShowsMonth:", [v7 BOOLValue]);
  }

  v9 = [v4 PKNumberForKey:@"showsYear"];
  v10 = v9;
  if (v9)
  {
    -[PKPaymentSetupFieldDate setShowsYear:](self, "setShowsYear:", [v9 BOOLValue]);
  }

  v11 = [v4 PKStringForKey:@"submissionFormat"];
  if (v11)
  {
    [(PKPaymentSetupFieldDate *)self setSubmissionFormat:v11];
  }
}

- (void)_commonUpdate
{
  [(PKPaymentSetupFieldText *)self setMinLength:0];
  [(PKPaymentSetupFieldText *)self setMaxLength:0];
  [(PKPaymentSetupFieldText *)self setSecureText:1];
  [(PKPaymentSetupFieldText *)self setSecureVisibleText:1];
  [(PKPaymentSetupFieldText *)self setNumeric:0];

  [(PKPaymentSetupFieldText *)self setLuhnCheck:0];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldDate;
  v4 = [(PKPaymentSetupFieldText *)&v6 copyWithZone:a3];
  *(v4 + 288) = self->_showsDay;
  *(v4 + 289) = self->_showsMonth;
  *(v4 + 290) = self->_showsYear;
  objc_storeStrong(v4 + 37, self->_submissionFormat);
  objc_storeStrong(v4 + 38, self->_defaultDate);
  objc_storeStrong(v4 + 39, self->_calendar);
  objc_storeStrong(v4 + 40, self->_locale);
  objc_storeStrong(v4 + 35, self->_displayDateFormatter);
  return v4;
}

@end