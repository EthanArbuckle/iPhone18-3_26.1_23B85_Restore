@interface DOCDecimalMetadataDisplayFormat
- (DOCDecimalMetadataDisplayFormat)init;
- (id)_decimalDefaultFormattedDoubleValue:(double)a3;
- (id)_decimalDisplayStringByFormattingDoubleValue:(double)a3;
- (id)_decimalLengthFormattedDoubleValue:(double)a3;
- (id)_integerFractionalDisplayStringByFormattingDoubleValue:(double)a3;
- (id)displayStringForMetadataNumberValue:(id)a3;
- (id)displayStringForMetadataStringValue:(id)a3;
- (id)displayStringForMetadataValue:(id)a3;
- (void)_configureNumberFormatter:(id)a3;
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

- (id)displayStringForMetadataValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DOCDecimalMetadataDisplayFormat *)self displayStringForMetadataStringValue:v4];
LABEL_6:
      v6 = v5;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(DOCDecimalMetadataDisplayFormat *)self displayStringForMetadataNumberValue:v4];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)displayStringForMetadataStringValue:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"/"];
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
    v14 = [MEMORY[0x277CCA980] decimalNumberWithString:v4];
  }

  v15 = [MEMORY[0x277CCA980] notANumber];
  v16 = [v14 isEqual:v15];

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
    [v4 doubleValue];
    v19 = v20;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v17 = [(DOCDecimalMetadataDisplayFormat *)self displayStringForMetadataNumberValue:v21];

LABEL_10:

  return v17;
}

- (id)displayStringForMetadataNumberValue:(id)a3
{
  [a3 doubleValue];
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

- (id)_integerFractionalDisplayStringByFormattingDoubleValue:(double)a3
{
  v4 = a3 > 0.0 && a3 < 1.0;
  if (v4 && (LODWORD(v3) = vcvtad_u64_f64(1.0 / a3), vabdd_f64(a3, 1.0 / v3) < 0.001))
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

- (id)_decimalDisplayStringByFormattingDoubleValue:(double)a3
{
  if ([(DOCDecimalMetadataDisplayFormat *)self lengthUnits])
  {
    [(DOCDecimalMetadataDisplayFormat *)self _decimalLengthFormattedDoubleValue:a3];
  }

  else
  {
    [(DOCDecimalMetadataDisplayFormat *)self _decimalDefaultFormattedDoubleValue:a3];
  }
  v5 = ;
  v6 = [(DOCDecimalMetadataDisplayFormat *)self decimalFormatString];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(DOCDecimalMetadataDisplayFormat *)self decimalFormatString];
    v9 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v5];

    v5 = v9;
  }

  return v5;
}

- (id)_decimalLengthFormattedDoubleValue:(double)a3
{
  v5 = objc_opt_new();
  v6 = [v5 numberFormatter];
  [(DOCDecimalMetadataDisplayFormat *)self _configureNumberFormatter:v6];

  v7 = [v5 stringFromValue:-[DOCDecimalMetadataDisplayFormat lengthUnits](self unit:{"lengthUnits"), a3}];

  return v7;
}

- (id)_decimalDefaultFormattedDoubleValue:(double)a3
{
  v5 = objc_opt_new();
  [(DOCDecimalMetadataDisplayFormat *)self _configureNumberFormatter:v5];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = [v5 stringFromNumber:v6];

  return v7;
}

- (void)_configureNumberFormatter:(id)a3
{
  v4 = a3;
  [v4 setNumberStyle:1];
  [v4 setMaximumFractionDigits:{-[DOCDecimalMetadataDisplayFormat maxFractionalDigits](self, "maxFractionalDigits")}];
}

@end