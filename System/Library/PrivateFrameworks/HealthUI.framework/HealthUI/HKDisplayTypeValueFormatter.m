@interface HKDisplayTypeValueFormatter
- (HKDisplayTypeValueFormatter)initWithNumberFormatter:(id)a3;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8;
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8 unitFormatString:(id)a9;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6;
- (id)stringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5;
@end

@implementation HKDisplayTypeValueFormatter

- (HKDisplayTypeValueFormatter)initWithNumberFormatter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKDisplayTypeValueFormatter;
  v6 = [(HKDisplayTypeValueFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_numberFormatter, a3);
  }

  return v7;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6
{
  v10 = MEMORY[0x1E69DB878];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 systemFontOfSize:0.0];
  v16 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:v14 displayType:v13 unit:v12 unitController:v11 valueFont:v15 unitFont:v15];

  v17 = [v16 string];

  return v17;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v14 unitForDisplayType:v15];
  v18 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:v16 displayType:v15 unit:v17 unitController:v14 valueFont:v13 unitFont:v12];

  return v18;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v16 unitForDisplayType:v17];
  LOBYTE(v22) = a8;
  v20 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:v18 displayType:v17 unit:v19 unitController:v16 valueFont:v15 unitFont:v14 formatForChart:v22];

  return v20;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8 unitFormatString:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v19 unitForDisplayType:v20];
  LOBYTE(v25) = a8;
  v23 = [(HKDisplayTypeValueFormatter *)self attributedStringFromValue:v21 displayType:v20 unit:v22 unitController:v19 valueFont:v18 unitFont:v17 formatForChart:v25 unitFormatString:v16];

  return v23;
}

- (id)stringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 unitForDisplayType:v9];
  v12 = [(HKDisplayTypeValueFormatter *)self stringFromValue:v10 displayType:v9 unit:v11 unitController:v8];

  return v12;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unit:(id)a5 unitController:(id)a6 valueFont:(id)a7 unitFont:(id)a8 formatForChart:(BOOL)a9 unitFormatString:(id)a10
{
  objc_opt_class();
  OUTLINED_FUNCTION_2_2();
  return 0;
}

@end