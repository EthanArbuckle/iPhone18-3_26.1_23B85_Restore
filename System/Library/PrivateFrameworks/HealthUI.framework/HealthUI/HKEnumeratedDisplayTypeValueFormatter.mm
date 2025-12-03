@interface HKEnumeratedDisplayTypeValueFormatter
- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart;
@end

@implementation HKEnumeratedDisplayTypeValueFormatter

- (id)attributedStringFromValue:(id)value displayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont formatForChart:(BOOL)chart
{
  v10 = MEMORY[0x1E696AD98];
  fontCopy = font;
  typeCopy = type;
  v13 = [v10 numberWithInteger:{objc_msgSend(value, "integerValue")}];
  hk_enumeratedValueLabels = [typeCopy hk_enumeratedValueLabels];

  v15 = [hk_enumeratedValueLabels objectForKeyedSubscript:v13];
  if (!v15)
  {
    v15 = HKLocalizedNoDataString();
  }

  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v18 = HKAttributedStringAttributesForFont(fontCopy, labelColor);

  v19 = [v16 initWithString:v15 attributes:v18];

  return v19;
}

@end