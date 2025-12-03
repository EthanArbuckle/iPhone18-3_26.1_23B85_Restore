@interface PKPaymentSetupFieldDate
- (BOOL)submissionStringMeetsAllRequirements;
- (NSDate)defaultDate;
- (PKPaymentSetupFieldDate)initWithIdentifier:(id)identifier type:(unint64_t)type;
- (id)_defaultValueAsDateForCurrentLocale;
- (id)_submissionStringForValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayString;
- (void)_commonUpdate;
- (void)setCurrentValue:(id)value;
- (void)updateWithAttribute:(id)attribute;
- (void)updateWithConfiguration:(id)configuration;
@end

@implementation PKPaymentSetupFieldDate

- (PKPaymentSetupFieldDate)initWithIdentifier:(id)identifier type:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupFieldDate;
  v4 = [(PKPaymentSetupFieldText *)&v9 initWithIdentifier:identifier type:type];
  v5 = v4;
  if (v4)
  {
    v4->_showsDay = 0;
    v4->_showsMonth = 1;
    v4->_showsYear = 1;
    [(PKPaymentSetupField *)v4 setDisplayFormat:@"MM/yy"];
    [(PKPaymentSetupFieldDate *)v5 setSubmissionFormat:@"MM/yy"];
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(PKPaymentSetupFieldDate *)v5 setLocale:autoupdatingCurrentLocale];

    autoupdatingCurrentCalendar = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
    [(PKPaymentSetupFieldDate *)v5 setCalendar:autoupdatingCurrentCalendar];
  }

  return v5;
}

- (void)setCurrentValue:(id)value
{
  if (self->super.super._currentValue != value)
  {
    v5 = [value copyWithZone:0];
    currentValue = self->super.super._currentValue;
    self->super.super._currentValue = v5;

    attribute = [(PKPaymentSetupField *)self attribute];
    [attribute setCurrentValue:self->super.super._currentValue];

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

  locale = [(PKPaymentSetupFieldDate *)self locale];
  [(NSDateFormatter *)displayDateFormatter setLocale:locale];

  v7 = MEMORY[0x1E696AB78];
  displayFormat = [(PKPaymentSetupField *)self displayFormat];
  locale2 = [(NSDateFormatter *)self->_displayDateFormatter locale];
  v10 = [v7 dateFormatFromTemplate:displayFormat options:0 locale:locale2];

  [(NSDateFormatter *)self->_displayDateFormatter setDateFormat:v10];
  currentValue = [(PKPaymentSetupFieldDate *)self currentValue];
  if (!currentValue)
  {
    currentValue = [(PKPaymentSetupFieldDate *)self defaultDate];
  }

  v12 = [(NSDateFormatter *)self->_displayDateFormatter stringFromDate:currentValue];

  return v12;
}

- (id)_submissionStringForValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    if (qword_1EB5B7C90 != -1)
    {
      dispatch_once(&qword_1EB5B7C90, &__block_literal_global_718);
    }

    v5 = _MergedGlobals_10;
    submissionFormat = [(PKPaymentSetupFieldDate *)self submissionFormat];
    [v5 setDateFormat:submissionFormat];

    v7 = [_MergedGlobals_10 stringFromDate:valueCopy];
    pk_zString = [v7 pk_zString];
  }

  else
  {
    pk_zString = 0;
  }

  return pk_zString;
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
  submissionFormat = [(PKPaymentSetupFieldDate *)self submissionFormat];
  [v3 setDateFormat:submissionFormat];

  v5 = qword_1EB5B7C98;
  defaultValue = [(PKPaymentSetupField *)self defaultValue];
  v7 = [v5 dateFromString:defaultValue];

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
  submissionString = [(PKPaymentSetupField *)self submissionString];
  v3 = [submissionString length] != 0;

  return v3;
}

- (NSDate)defaultDate
{
  defaultDate = self->_defaultDate;
  if (!defaultDate)
  {
    _defaultValueAsDateForCurrentLocale = [(PKPaymentSetupFieldDate *)self _defaultValueAsDateForCurrentLocale];
    v5 = self->_defaultDate;
    self->_defaultDate = _defaultValueAsDateForCurrentLocale;

    defaultDate = self->_defaultDate;
  }

  return defaultDate;
}

- (void)updateWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  v8.receiver = self;
  v8.super_class = PKPaymentSetupFieldDate;
  [(PKPaymentSetupFieldText *)&v8 updateWithAttribute:attributeCopy];
  [(PKPaymentSetupFieldDate *)self _commonUpdate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = attributeCopy;
    -[PKPaymentSetupFieldDate setShowsDay:](self, "setShowsDay:", [v5 requireDay]);
    -[PKPaymentSetupFieldDate setShowsMonth:](self, "setShowsMonth:", [v5 requireMonth]);
    -[PKPaymentSetupFieldDate setShowsYear:](self, "setShowsYear:", [v5 requireYear]);
    defaultValue = [v5 defaultValue];
    if (defaultValue)
    {
      objc_storeStrong(&self->_defaultDate, defaultValue);
    }

    defaultDate = [(PKPaymentSetupFieldDate *)self defaultDate];

    if (defaultDate)
    {
      [v5 setCurrentValue:defaultDate];
    }
  }
}

- (void)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = PKPaymentSetupFieldDate;
  [(PKPaymentSetupFieldText *)&v12 updateWithConfiguration:configurationCopy];
  [(PKPaymentSetupFieldDate *)self _commonUpdate];
  v5 = [configurationCopy PKNumberForKey:@"showsDay"];
  v6 = v5;
  if (v5)
  {
    -[PKPaymentSetupFieldDate setShowsDay:](self, "setShowsDay:", [v5 BOOLValue]);
  }

  v7 = [configurationCopy PKNumberForKey:@"showsMonth"];
  v8 = v7;
  if (v7)
  {
    -[PKPaymentSetupFieldDate setShowsMonth:](self, "setShowsMonth:", [v7 BOOLValue]);
  }

  v9 = [configurationCopy PKNumberForKey:@"showsYear"];
  v10 = v9;
  if (v9)
  {
    -[PKPaymentSetupFieldDate setShowsYear:](self, "setShowsYear:", [v9 BOOLValue]);
  }

  v11 = [configurationCopy PKStringForKey:@"submissionFormat"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupFieldDate;
  v4 = [(PKPaymentSetupFieldText *)&v6 copyWithZone:zone];
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