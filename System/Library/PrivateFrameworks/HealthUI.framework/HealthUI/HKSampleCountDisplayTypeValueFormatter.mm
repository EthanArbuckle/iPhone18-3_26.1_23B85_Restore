@interface HKSampleCountDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10 formatString:(id)a11;
@end

@implementation HKSampleCountDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10 formatString:(id)a11
{
  v17 = a4;
  v18 = a10;
  v32 = self;
  numberFormatter = self->super.super._numberFormatter;
  v31 = a11;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = HKFormattedStringFromValueWithUnit(v24, v17, v23, v22, 0, numberFormatter);
  v26 = [v22 localizedDisplayNameForDisplayType:v17 unit:v23 value:v24];

  if (v18)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v18 validFormatSpecifiers:@"%@" error:0, v26];

    v26 = v27;
  }

  v28 = [v17 unitIcon];
  v29 = [(HKQuantityDisplayTypeValueFormatter *)v32 attributedStringFromValueString:v25 valueFont:v21 unitString:v26 unitFont:v20 unitIcon:v28 formatForChart:a9 formatString:v31];

  return v29;
}

@end