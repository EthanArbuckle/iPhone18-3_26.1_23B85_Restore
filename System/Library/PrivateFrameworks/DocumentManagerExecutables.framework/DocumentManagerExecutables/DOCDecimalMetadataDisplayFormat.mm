@interface DOCDecimalMetadataDisplayFormat
- (DOCDecimalMetadataDisplayFormat)init;
- (id)_decimalDefaultFormattedDoubleValue:(double)value;
- (id)_decimalDisplayStringByFormattingDoubleValue:(double)value;
- (id)_decimalLengthFormattedDoubleValue:(double)value;
- (id)_integerFractionalDisplayStringByFormattingDoubleValue:(double)value;
- (id)displayStringForMetadataNumberValue:(id)value;
- (id)displayStringForMetadataStringValue:(id)value;
- (id)displayStringForMetadataValue:(id)value;
- (void)_configureNumberFormatter:(id)formatter;
@end

@implementation DOCDecimalMetadataDisplayFormat

- (DOCDecimalMetadataDisplayFormat)init
{
  v6.receiver = self;
  v6.super_class = DOCDecimalMetadataDisplayFormat;
  v2 = [(DOCDecimalMetadataDisplayFormat *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_prefersIntegerFractionalDisplay = 0;
    v2->_maxFractionalDigits = 4;
    v2->_lengthUnits = 0;
    decimalFormatString = v2->_decimalFormatString;
    v2->_decimalFormatString = 0;
  }

  return v3;
}

- (id)displayStringForMetadataValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DOCDecimalMetadataDisplayFormat *)self displayStringForMetadataStringValue:valueCopy];
LABEL_6:
      v6 = v5;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DOCDecimalMetadataDisplayFormat *)self displayStringForMetadataNumberValue:valueCopy];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)displayStringForMetadataStringValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy componentsSeparatedByString:@"/"];
  v6 = [v5 count];
  v7 = MEMORY[0x277CCA980];
  if (v6 == 2)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v7 decimalNumberWithString:v8];

    v10 = MEMORY[0x277CCA980];
    v11 = [v5 objectAtIndexedSubscript:1];
    v12 = [v10 decimalNumberWithString:v11];

    v13 = [MEMORY[0x277CCA988] decimalNumberHandlerWithRoundingMode:0 scale:0x7FFFLL raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    v14 = [v9 decimalNumberByDividingBy:v12 withBehavior:v13];
  }

  else
  {
    v14 = [MEMORY[0x277CCA980] decimalNumberWithString:valueCopy];
  }

  notANumber = [MEMORY[0x277CCA980] notANumber];
  v16 = [v14 isEqual:notANumber];

  if (v16)
  {

    if (v6 == 2)
    {
      v17 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  [v14 doubleValue];
  v19 = v18;

  if (v6 != 2)
  {
LABEL_8:
    [valueCopy doubleValue];
    v19 = v20;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v17 = [(DOCDecimalMetadataDisplayFormat *)self displayStringForMetadataNumberValue:v21];

LABEL_10:

  return v17;
}

- (id)displayStringForMetadataNumberValue:(id)value
{
  [value doubleValue];
  v5 = v4;
  if ([(DOCDecimalMetadataDisplayFormat *)self prefersIntegerFractionalDisplay])
  {
    v6 = [(DOCDecimalMetadataDisplayFormat *)self _integerFractionalDisplayStringByFormattingDoubleValue:v5];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    v7 = [(DOCDecimalMetadataDisplayFormat *)self _decimalDisplayStringByFormattingDoubleValue:v5];

    v6 = v7;
  }

  return v6;
}

- (id)_integerFractionalDisplayStringByFormattingDoubleValue:(double)value
{
  v4 = value > 0.0 && value < 1.0;
  if (v4 && (LODWORD(v3) = vcvtad_u64_f64(1.0 / value), vabdd_f64(value, 1.0 / v3) < 0.001))
  {
    v5 = objc_opt_new();
    [v5 setNumberStyle:1];
    [v5 setMaximumFractionDigits:0];
    v6 = MEMORY[0x277CCACA8];
    v7 = MEMORY[0x277CCABB8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    v9 = [v7 localizedStringFromNumber:v8 numberStyle:1];
    v10 = [v6 stringWithFormat:@"1/%@", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_decimalDisplayStringByFormattingDoubleValue:(double)value
{
  if ([(DOCDecimalMetadataDisplayFormat *)self lengthUnits])
  {
    [(DOCDecimalMetadataDisplayFormat *)self _decimalLengthFormattedDoubleValue:value];
  }

  else
  {
    [(DOCDecimalMetadataDisplayFormat *)self _decimalDefaultFormattedDoubleValue:value];
  }
  v5 = ;
  decimalFormatString = [(DOCDecimalMetadataDisplayFormat *)self decimalFormatString];
  v7 = [decimalFormatString length];

  if (v7)
  {
    decimalFormatString2 = [(DOCDecimalMetadataDisplayFormat *)self decimalFormatString];
    v9 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:decimalFormatString2 validFormatSpecifiers:@"%@" error:0, v5];

    v5 = v9;
  }

  return v5;
}

- (id)_decimalLengthFormattedDoubleValue:(double)value
{
  v5 = objc_opt_new();
  numberFormatter = [v5 numberFormatter];
  [(DOCDecimalMetadataDisplayFormat *)self _configureNumberFormatter:numberFormatter];

  v7 = [v5 stringFromValue:-[DOCDecimalMetadataDisplayFormat lengthUnits](self unit:{"lengthUnits"), value}];

  return v7;
}

- (id)_decimalDefaultFormattedDoubleValue:(double)value
{
  v5 = objc_opt_new();
  [(DOCDecimalMetadataDisplayFormat *)self _configureNumberFormatter:v5];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

- (void)_configureNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  [formatterCopy setNumberStyle:1];
  [formatterCopy setMaximumFractionDigits:{-[DOCDecimalMetadataDisplayFormat maxFractionalDigits](self, "maxFractionalDigits")}];
}

@end