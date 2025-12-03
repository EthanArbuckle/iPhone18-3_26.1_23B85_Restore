@interface HKMostRecentRangeProviderCurrentValue
- (HKMostRecentRangeProviderCurrentValue)initWithMinimumValue:(id)value maximumValue:(id)maximumValue date:(id)date;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)attributedSupplementaryStringWithDisplayType:(id)type unitController:(id)controller font:(id)font;
@end

@implementation HKMostRecentRangeProviderCurrentValue

- (HKMostRecentRangeProviderCurrentValue)initWithMinimumValue:(id)value maximumValue:(id)maximumValue date:(id)date
{
  valueCopy = value;
  maximumValueCopy = maximumValue;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = HKMostRecentRangeProviderCurrentValue;
  v12 = [(HKMostRecentRangeProviderCurrentValue *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, date);
    v13->_isSingleValue = 0;
    objc_storeStrong(&v13->_minimumValue, value);
    objc_storeStrong(&v13->_maximumValue, maximumValue);
  }

  return v13;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  v15 = [controllerCopy unitForDisplayType:typeCopy];
  presentation = [typeCopy presentation];
  v17 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_minimumValue doubleValueForUnit:v15];
  v18 = [v17 numberWithDouble:?];
  v19 = [presentation adjustedValueForDaemonValue:v18];

  presentation2 = [typeCopy presentation];
  v21 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_maximumValue doubleValueForUnit:v15];
  v22 = [v21 numberWithDouble:?];
  v23 = [presentation2 adjustedValueForDaemonValue:v22];

  v24 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  LOBYTE(v27) = 1;
  v25 = [(HKInteractiveChartNumberRangeFormatter *)v24 attributedStringForMinimumValue:v19 maximumValue:v23 displayType:typeCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy formatForChart:v27 resultIsSingleValue:&self->_isSingleValue];

  return v25;
}

- (id)attributedSupplementaryStringWithDisplayType:(id)type unitController:(id)controller font:(id)font
{
  if (self->_isSingleValue)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AAE8];
    fontCopy = font;
    v8 = [v6 bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"RANGE_ABBREVIATED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v12 = HKAttributedStringAttributesForFont(fontCopy, secondaryLabelColor);

    v5 = [v10 initWithString:v9 attributes:v12];
  }

  return v5;
}

@end