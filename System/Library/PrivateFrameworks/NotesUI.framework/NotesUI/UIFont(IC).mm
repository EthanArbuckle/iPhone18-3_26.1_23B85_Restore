@interface UIFont(IC)
+ (double)ic_fontSizeForHeaderImport;
+ (double)ic_fontSizeForSubheaderImport;
+ (double)ic_pointSizeForBodyTextWithContentSizeCategory:()IC;
+ (double)ic_pointSizeForTextStyle:()IC contentSizeCategory:;
+ (double)ic_preferredFontSizeWithBaseSize:()IC withContentSizeCategory:minSize:maxSize:;
+ (id)ic_attachmentBrowserSeeAllButtonFont;
+ (id)ic_attachmentBrowserTitleFont;
+ (id)ic_fontDescriptorTextStyle:()IC withContentSizeCategory:useSingleLineA:bold:;
+ (id)ic_gridViewNoteSubtitleFont;
+ (id)ic_gridViewNoteTitleFont;
+ (id)ic_gridViewSectionTitleFont;
+ (id)ic_groupInsetHeaderFont;
+ (id)ic_listViewDetailFont;
+ (id)ic_listViewTitleFont;
+ (id)ic_navBarButtonFontUsingSingleLineA:()IC;
+ (id)ic_preferredFontForBodyTextWithContentSizeCategory:()IC isForPrint:;
+ (id)ic_preferredFontForBodyTextWithContentSizeCategory:()IC useSingleLineA:;
+ (id)ic_preferredFontForBodyTextWithMaximumContentSizeCategory:()IC;
+ (id)ic_preferredFontForCompatibilityBannerText;
+ (id)ic_preferredFontForDateTextWithZoomFactor:()IC;
+ (id)ic_preferredFontForHeadingTextWithContentSizeCategory:()IC isForPrint:;
+ (id)ic_preferredFontForStyle:()IC contentSizeCategory:isForPrint:;
+ (id)ic_preferredFontForStyle:()IC symbolicTraits:;
+ (id)ic_preferredFontForStyle:()IC symbolicTraits:maxContentSizeCategory:;
+ (id)ic_preferredFontForStyle:()IC withFontWeight:maxContentSizeCategory:;
+ (id)ic_preferredFontForSubheadingTextWithContentSizeCategory:()IC isForPrint:;
+ (id)ic_preferredFontForTextStyle:()IC adjustedForDefaultSize:maxSize:;
+ (id)ic_preferredFontForTextStyle:()IC maxContentSizeCategory:;
+ (id)ic_preferredFontForTitleTextWithContentSizeCategory:()IC isForPrint:isReducedSize:;
+ (id)ic_preferredSingleLineAFontForTextStyle:()IC;
+ (id)ic_preferredSystemFontWithBaseSize:()IC withContentSizeCategory:minSize:;
+ (id)ic_recentlyDeletedHeaderFont;
+ (uint64_t)ic_preferredFontForFixedWidthTextWithContentSizeCategory:()IC;
- (BOOL)ic_hasSymbolicTrait:()IC;
- (id)ic_fontByAddingSymbolicTraits:()IC;
- (id)ic_fontConvertedToSize:()IC;
- (id)ic_fontWithRoundedDesign;
- (id)ic_fontWithSingleLineA;
- (id)ic_fontWithTabularNumbers;
- (id)ic_fontWithoutSingleLineA;
@end

@implementation UIFont(IC)

- (id)ic_fontWithSingleLineA
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (ic_fontWithSingleLineA_onceToken != -1)
  {
    [UIFont(IC) ic_fontWithSingleLineA];
  }

  v2 = [[ICFontCacheKey alloc] initWithFont:self];
  if (ic_fontWithSingleLineA_disableSingleLineA != 1 || (([self ic_fontHasSingleLineA] & 1) == 0 ? (v3 = self) : (objc_msgSend(self, "ic_fontWithoutSingleLineA"), v3 = objc_claimAutoreleasedReturnValue()), (v4 = v3) == 0))
  {
    if ([self ic_fontHasSingleLineA])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [ic_fontWithSingleLineA_singleLineACache objectForKey:v2];
    }

    v4 = selfCopy;
    if (!selfCopy)
    {
      v16 = *MEMORY[0x1E69DB8B0];
      v6 = *MEMORY[0x1E69DB900];
      v13[0] = *MEMORY[0x1E69DB908];
      v13[1] = v6;
      v14[0] = &unk_1F4FC3E58;
      v14[1] = &unk_1F4FC3E70;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
      v15 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      v17[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

      fontDescriptor = [self fontDescriptor];
      v11 = [fontDescriptor fontDescriptorByAddingAttributes:v9];

      v4 = [MEMORY[0x1E69DB878] fontWithDescriptor:v11 size:0.0];
      [ic_fontWithSingleLineA_singleLineACache setObject:v4 forKey:v2];

      if (!v4)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((singleLineAFont) != nil)" functionName:"-[UIFont(IC) ic_fontWithSingleLineA]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "singleLineAFont"}];
      }
    }
  }

  return v4;
}

- (id)ic_fontWithoutSingleLineA
{
  selfCopy = self;
  if ([selfCopy ic_fontHasSingleLineA])
  {
    fontDescriptor = [selfCopy fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    v4 = [fontAttributes mutableCopy];

    [v4 removeObjectForKey:*MEMORY[0x1E69DB8B0]];
    v5 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:v4];
    v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];

    selfCopy = v6;
  }

  return selfCopy;
}

+ (id)ic_preferredSingleLineAFontForTextStyle:()IC
{
  v1 = [self preferredFontForTextStyle:?];
  ic_fontWithSingleLineA = [v1 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

- (id)ic_fontWithTabularNumbers
{
  v13[1] = *MEMORY[0x1E69E9840];
  fontDescriptor = [self fontDescriptor];
  v12 = *MEMORY[0x1E69DB8B0];
  v2 = *MEMORY[0x1E69DB900];
  v9[0] = *MEMORY[0x1E69DB908];
  v9[1] = v2;
  v10[0] = &unk_1F4FC3E88;
  v10[1] = &unk_1F4FC3EA0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = [fontDescriptor fontDescriptorByAddingAttributes:v5];

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (id)ic_fontConvertedToSize:()IC
{
  ic_fontHasSingleLineA = [self ic_fontHasSingleLineA];
  v5 = MEMORY[0x1E69DB878];
  fontDescriptor = [self fontDescriptor];
  v7 = [v5 fontWithDescriptor:fontDescriptor size:a2];

  if (ic_fontHasSingleLineA)
  {
    ic_fontWithSingleLineA = [v7 ic_fontWithSingleLineA];

    v7 = ic_fontWithSingleLineA;
  }

  return v7;
}

+ (id)ic_preferredFontForDateTextWithZoomFactor:()IC
{
  v2 = [objc_opt_class() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v5 = [v3 systemFontOfSize:round(v4 * 0.882352941 * self)];
  ic_fontWithSingleLineA = [v5 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_preferredFontForCompatibilityBannerText
{
  v0 = [objc_opt_class() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v3 = [v1 systemFontOfSize:round(v2 * 0.882352941)];

  return v3;
}

+ (id)ic_preferredFontForStyle:()IC withFontWeight:maxContentSizeCategory:
{
  v6 = MEMORY[0x1E69DB880];
  v7 = a4;
  v8 = a3;
  v9 = [v6 preferredFontDescriptorWithTextStyle:v8];
  [self ic_pointSizeForTextStyle:v8 contentSizeCategory:v7];
  v11 = v10;

  v12 = MEMORY[0x1E69DB878];
  [v9 pointSize];
  v13 = [v12 systemFontOfSize:? weight:?];
  v14 = [MEMORY[0x1E69DCA40] metricsForTextStyle:v8];

  v15 = [v14 scaledFontForFont:v13 maximumPointSize:v11];

  return v15;
}

+ (id)ic_preferredFontForStyle:()IC symbolicTraits:
{
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
  v6 = [v5 ic_fontByAddingSymbolicTraits:a4];

  return v6;
}

+ (id)ic_preferredFontForStyle:()IC symbolicTraits:maxContentSizeCategory:
{
  v6 = [MEMORY[0x1E69DB878] ic_preferredFontForTextStyle:a3 maxContentSizeCategory:a5];
  v7 = [v6 ic_fontByAddingSymbolicTraits:a4];

  return v7;
}

+ (id)ic_listViewTitleFont
{
  v0 = [objc_opt_class() preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  ic_fontWithSingleLineA = [v0 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_listViewDetailFont
{
  v0 = [objc_opt_class() preferredFontForTextStyle:*MEMORY[0x1E69DDD78]];
  ic_fontWithSingleLineA = [v0 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_attachmentBrowserTitleFont
{
  v0 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDC8] addingSymbolicTraits:2 options:0];
  v1 = [objc_opt_class() fontWithDescriptor:v0 size:0.0];

  return v1;
}

+ (id)ic_attachmentBrowserSeeAllButtonFont
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  ic_fontWithSingleLineA = [v0 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_gridViewSectionTitleFont
{
  v0 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB980]];
  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v2 = [defaultMetrics scaledFontForFont:v0];

  ic_fontWithSingleLineA = [v2 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_gridViewNoteTitleFont
{
  v0 = [objc_opt_class() systemFontOfSize:15.0];
  ic_fontWithSingleLineA = [v0 ic_fontWithSingleLineA];

  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v3 = [defaultMetrics scaledFontForFont:ic_fontWithSingleLineA];

  return v3;
}

+ (id)ic_gridViewNoteSubtitleFont
{
  v0 = [objc_opt_class() systemFontOfSize:12.0];
  ic_fontWithSingleLineA = [v0 ic_fontWithSingleLineA];

  defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
  v3 = [defaultMetrics scaledFontForFont:ic_fontWithSingleLineA];

  return v3;
}

+ (id)ic_groupInsetHeaderFont
{
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
  v1 = MEMORY[0x1E69DB878];
  [v0 pointSize];
  v2 = [v1 systemFontOfSize:? weight:?];
  ic_fontWithSingleLineA = [v2 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_navBarButtonFontUsingSingleLineA:()IC
{
  v4 = [objc_opt_class() systemFontOfSize:17.0];
  v5 = v4;
  if (a3)
  {
    ic_fontWithSingleLineA = [v4 ic_fontWithSingleLineA];
  }

  else
  {
    ic_fontWithSingleLineA = v4;
  }

  v7 = ic_fontWithSingleLineA;

  return v7;
}

+ (id)ic_recentlyDeletedHeaderFont
{
  v0 = MEMORY[0x1E69DB878];
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v2 = [v0 ic_preferredSystemFontWithBaseSize:preferredContentSizeCategory withContentSizeCategory:13.0 minSize:13.0];

  ic_fontWithSingleLineA = [v2 ic_fontWithSingleLineA];

  return ic_fontWithSingleLineA;
}

+ (id)ic_fontDescriptorTextStyle:()IC withContentSizeCategory:useSingleLineA:bold:
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = CTFontDescriptorCreateWithTextStyle();
  }

  else
  {
    v11 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v9];
  }

  v12 = v11;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a5)
  {
    v30 = *MEMORY[0x1E69DB8B0];
    v14 = *MEMORY[0x1E69DB900];
    v27[0] = *MEMORY[0x1E69DB908];
    v27[1] = v14;
    v28[0] = &unk_1F4FC3E58;
    v28[1] = &unk_1F4FC3E70;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v29 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v31[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v13 addEntriesFromDictionary:v17];
  }

  if (a6)
  {
    v25 = *MEMORY[0x1E69DB8F0];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:{*MEMORY[0x1E69DB958], *MEMORY[0x1E69DB8F8], *MEMORY[0x1E69DB990], *MEMORY[0x1E69DB930]}];
    v24[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:2];
    v26 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v13 addEntriesFromDictionary:v20];
  }

  if ([v13 count])
  {
    v21 = [v12 fontDescriptorByAddingAttributes:v13];

    v12 = v21;
  }

  return v12;
}

+ (double)ic_pointSizeForBodyTextWithContentSizeCategory:()IC
{
  v3 = [self ic_fontDescriptorForBodyTextWithContentSizeCategory:a3 useSingleLineA:0 bold:0];
  [v3 pointSize];
  v5 = v4;

  return v5;
}

+ (double)ic_pointSizeForTextStyle:()IC contentSizeCategory:
{
  if (a3 && a4)
  {
    v4 = CTFontDescriptorCreateWithTextStyle();
  }

  else
  {
    v4 = [objc_opt_class() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  v5 = v4;
  [v4 pointSize];
  v7 = v6;

  return v7;
}

+ (id)ic_preferredFontForTitleTextWithContentSizeCategory:()IC isForPrint:isReducedSize:
{
  v7 = [self ic_fontDescriptorForBodyTextWithContentSizeCategory:a3 useSingleLineA:1 bold:1];
  [v7 pointSize];
  if ((a4 & 1) == 0)
  {
    if (a5)
    {
      v9 = 1.41176471;
    }

    else
    {
      v9 = 1.64705882;
    }

    v8 = round(v8 * v9);
  }

  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:v8];

  return v10;
}

+ (id)ic_preferredFontForHeadingTextWithContentSizeCategory:()IC isForPrint:
{
  v5 = [self ic_fontDescriptorForBodyTextWithContentSizeCategory:a3 useSingleLineA:1 bold:1];
  [v5 pointSize];
  v7 = round(v6 * 1.29411765);
  if (a4)
  {
    v7 = 14.0;
  }

  v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:v7];

  return v8;
}

+ (id)ic_preferredFontForSubheadingTextWithContentSizeCategory:()IC isForPrint:
{
  v5 = [self ic_fontDescriptorForBodyTextWithContentSizeCategory:a3 useSingleLineA:1 bold:1];
  v6 = 0.0;
  if (a4)
  {
    v6 = 12.0;
  }

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:v6];

  return v7;
}

+ (id)ic_preferredFontForBodyTextWithContentSizeCategory:()IC isForPrint:
{
  v5 = [self ic_fontDescriptorForBodyTextWithContentSizeCategory:a3 useSingleLineA:1 bold:0];
  v6 = 0.0;
  if (a4)
  {
    v6 = 12.0;
  }

  v7 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:v6];

  return v7;
}

+ (id)ic_preferredFontForBodyTextWithContentSizeCategory:()IC useSingleLineA:
{
  v4 = [self ic_fontDescriptorForBodyTextWithContentSizeCategory:a3 useSingleLineA:a4 bold:0];
  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)ic_preferredFontForBodyTextWithMaximumContentSizeCategory:()IC
{
  v4 = ICContentSizeCategoryMinSystemPreferenceAnd(a3);
  [self ic_pointSizeForBodyTextWithContentSizeCategory:v4];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:?];

  return v5;
}

+ (uint64_t)ic_preferredFontForFixedWidthTextWithContentSizeCategory:()IC
{
  [self ic_pointSizeForBodyTextWithContentSizeCategory:?];
  v2 = v1 * 0.882352941;
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DB978];

  return [v3 monospacedSystemFontOfSize:v2 weight:v4];
}

+ (double)ic_fontSizeForHeaderImport
{
  ic_preferredFontForSubheadingText = [self ic_preferredFontForSubheadingText];
  [ic_preferredFontForSubheadingText pointSize];
  v3 = v2;

  return v3;
}

+ (double)ic_fontSizeForSubheaderImport
{
  ic_preferredFontForBodyText = [self ic_preferredFontForBodyText];
  [ic_preferredFontForBodyText pointSize];
  v3 = v2;

  return v3;
}

+ (id)ic_preferredFontForTextStyle:()IC adjustedForDefaultSize:maxSize:
{
  v7 = a5;
  v8 = CTFontDescriptorCreateWithTextStyle();
  [v8 pointSize];
  v10 = self - v9;
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];

  [v11 pointSize];
  v13 = v10 + v12;
  if (v13 >= a2)
  {
    v13 = a2;
  }

  v14 = [v11 fontWithSize:ceil(v13)];

  return v14;
}

+ (id)ic_preferredFontForTextStyle:()IC maxContentSizeCategory:
{
  v6 = MEMORY[0x1E69DCA40];
  v7 = a4;
  v8 = a3;
  defaultMetrics = [v6 defaultMetrics];
  [self ic_pointSizeForTextStyle:v8 contentSizeCategory:v7];
  v11 = v10;

  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v8];

  v13 = [defaultMetrics scaledFontForFont:v12 maximumPointSize:v11];

  return v13;
}

+ (id)ic_preferredSystemFontWithBaseSize:()IC withContentSizeCategory:minSize:
{
  [self ic_preferredFontSizeWithBaseSize:a2 withContentSizeCategory:a3 minSize:a2 * 1.8 maxSize:?];
  v5 = v4;
  v6 = [objc_opt_class() systemFontOfSize:a2];
  v7 = [v6 fontWithSize:v5];

  return v7;
}

+ (double)ic_preferredFontSizeWithBaseSize:()IC withContentSizeCategory:minSize:maxSize:
{
  v9 = a6;
  v10 = *MEMORY[0x1E69DDC70];
  if (([v9 isEqualToString:*MEMORY[0x1E69DDC70]] & 1) == 0)
  {
    v11 = ICContentSizeCategories();
    v12 = [v11 indexOfObject:v9];
    v13 = [v11 indexOfObject:v10];
    v14 = v12 >= v13;
    if (v12 >= v13)
    {
      v15 = a3 - self;
    }

    else
    {
      v15 = self - a2;
    }

    v16 = MEMORY[0x1E69DDC68];
    if (v12 >= v13)
    {
      v16 = MEMORY[0x1E69DDC60];
    }

    v17 = *v16;
    v18 = MEMORY[0x1E69DDC78];
    if (v14)
    {
      v18 = MEMORY[0x1E69DDC20];
    }

    v19 = v15 / ICContentSizeCategoryStepsBetweenCategories(v17, *v18);
    v20 = self + v19 * ICContentSizeCategoryStepsBetweenCategories(v10, v9);
    self = roundf(v20);
  }

  return self;
}

- (BOOL)ic_hasSymbolicTrait:()IC
{
  fontDescriptor = [self fontDescriptor];
  symbolicTraits = [fontDescriptor symbolicTraits];

  return (symbolicTraits & a3) != 0;
}

- (id)ic_fontByAddingSymbolicTraits:()IC
{
  fontDescriptor = [self fontDescriptor];
  v6 = [fontDescriptor fontDescriptorWithSymbolicTraits:a3];

  v7 = MEMORY[0x1E69DB878];
  [self pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  return v8;
}

- (id)ic_fontWithRoundedDesign
{
  fontDescriptor = [self fontDescriptor];
  v2 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x1E69DB8D8]];

  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

+ (id)ic_preferredFontForStyle:()IC contentSizeCategory:isForPrint:
{
  v7 = a4;
  if (a3 > 3)
  {
    if ((a3 - 100) < 4)
    {
LABEL_11:
      v8 = [MEMORY[0x1E69DB878] ic_preferredFontForBodyTextWithContentSizeCategory:v7 isForPrint:a5];
      goto LABEL_12;
    }

    if (a3 != 4)
    {
      if (a3 != 5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E69DB878] ic_preferredFontForFixedWidthTextWithContentSizeCategory:v7];
LABEL_12:
    v9 = v8;
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (a3 > 1)
  {
    if (a3 != 2)
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x1E69DB878] ic_preferredFontForSubheadingTextWithContentSizeCategory:v7 isForPrint:a5];
    goto LABEL_12;
  }

  if (!a3)
  {
    v8 = [MEMORY[0x1E69DB878] ic_preferredFontForTitleTextWithContentSizeCategory:v7 isForPrint:a5];
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v8 = [MEMORY[0x1E69DB878] ic_preferredFontForHeadingTextWithContentSizeCategory:v7 isForPrint:a5];
    goto LABEL_12;
  }

LABEL_13:
  [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((result) != nil)" functionName:"+[UIFont(IC) ic_preferredFontForStyle:contentSizeCategory:isForPrint:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "result"}];
  v9 = 0;
LABEL_14:

  return v9;
}

@end