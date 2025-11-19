@interface HKEnumeratedDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8;
@end

@implementation HKEnumeratedDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)a3 displayType:(id)a4 unitController:(id)a5 valueFont:(id)a6 unitFont:(id)a7 formatForChart:(BOOL)a8
{
  v10 = MEMORY[0x1E696AD98];
  v11 = a6;
  v12 = a4;
  v13 = [v10 numberWithInteger:{objc_msgSend(a3, "integerValue")}];
  v14 = [v12 hk_enumeratedValueLabels];

  v15 = [v14 objectForKeyedSubscript:v13];
  if (!v15)
  {
    v15 = HKLocalizedNoDataString();
  }

  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v17 = [MEMORY[0x1E69DC888] labelColor];
  v18 = HKAttributedStringAttributesForFont(v11, v17);

  v19 = [v16 initWithString:v15 attributes:v18];

  return v19;
}

@end