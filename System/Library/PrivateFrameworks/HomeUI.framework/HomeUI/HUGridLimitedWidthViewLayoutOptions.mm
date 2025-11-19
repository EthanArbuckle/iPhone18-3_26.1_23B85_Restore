@interface HUGridLimitedWidthViewLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)a3 columnStyle:(unint64_t)a4 overrideSizeSubclass:(id)a5;
@end

@implementation HUGridLimitedWidthViewLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)a3 columnStyle:(unint64_t)a4 overrideSizeSubclass:(id)a5
{
  width = a3.width;
  v15[3] = *MEMORY[0x277D85DE8];
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___HUGridLimitedWidthViewLayoutOptions;
  v6 = objc_msgSendSuper2(&v13, sel_defaultOptionsForViewSize_columnStyle_overrideSizeSubclass_, a4, a5, a3.width, a3.height);
  v7 = v6;
  if (width <= 500.0)
  {
    v8 = 20.0;
  }

  else
  {
    v8 = (width + -500.0) * 0.5;
  }

  v9 = [v6 viewSizeSubclass];
  v14[0] = &unk_282492288;
  v14[1] = &unk_282492270;
  v15[0] = &unk_282493620;
  v15[1] = &unk_282493630;
  v14[2] = &unk_2824922E8;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  [v7 setSectionLeadingMargin:{HUConstantFloatForViewSizeSubclass(v9, v11)}];

  [v7 sectionLeadingMargin];
  [v7 setSectionTrailingMargin:?];

  return v7;
}

@end