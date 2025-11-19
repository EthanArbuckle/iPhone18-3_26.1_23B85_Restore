@interface HUFontUtilities
+ (UIEdgeInsets)languageAwareOutsetsForString:(id)a3 withFont:(id)a4;
+ (id)_excessiveLineHeightCharacterSet;
+ (id)fontDescriptorWithMonospacedDigitsForFontDescriptor:(id)a3;
@end

@implementation HUFontUtilities

+ (id)_excessiveLineHeightCharacterSet
{
  if (qword_281122528 != -1)
  {
    dispatch_once(&qword_281122528, &__block_literal_global);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

uint64_t __51__HUFontUtilities__excessiveLineHeightCharacterSet__block_invoke()
{
  _MergedGlobals_4 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();

  return MEMORY[0x2821F96F8]();
}

+ (id)fontDescriptorWithMonospacedDigitsForFontDescriptor:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = *MEMORY[0x277D74330];
  v3 = *MEMORY[0x277D74390];
  v12 = *MEMORY[0x277D743A0];
  v13 = v3;
  v14 = &unk_286676B40;
  v15 = &unk_286676B58;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:&v14 forKeys:&v12 count:2];
  v16 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:{1, v12, v13, v14, v15}];
  v18[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v9 = [v5 fontDescriptorByAddingAttributes:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (UIEdgeInsets)languageAwareOutsetsForString:(id)a3 withFont:(id)a4
{
  v5 = a4;
  v13 = *MEMORY[0x277D768C0];
  v14 = *(MEMORY[0x277D768C0] + 16);
  v6 = a3;
  v7 = [objc_opt_class() _excessiveLineHeightCharacterSet];
  v8 = [v6 rangeOfCharacterFromSet:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    CTFontGetLanguageAwareOutsets();
  }

  v10 = *(&v13 + 1);
  v9 = *&v13;
  v12 = *(&v14 + 1);
  v11 = *&v14;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

@end