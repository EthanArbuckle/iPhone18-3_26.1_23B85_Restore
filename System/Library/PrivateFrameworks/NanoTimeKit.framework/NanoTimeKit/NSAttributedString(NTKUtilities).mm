@interface NSAttributedString(NTKUtilities)
+ (id)NTKCountdownToDate:()NTKUtilities useShort:withDesignatorFont:;
+ (id)NTKDesignatorAttributedTimeWithDate:()NTKUtilities;
+ (id)NTKHyphenatableString:()NTKUtilities factor:;
+ (id)NTKReplaceTimeDesignatorAttributesFrom:()NTKUtilities withDesignatorFont:;
+ (id)NTKTimeWithDate:()NTKUtilities andDesignatorAttributes:timeZone:options:;
+ (id)NTKTimeWithDate:()NTKUtilities andDesignatorFont:timeZone:options:;
+ (id)_attributedStringFromAttributesTable:()NTKUtilities defaultAttributes:format:arguments:;
+ (id)ntk_attributedStringFromAttributesTable:()NTKUtilities defaultAttributes:markdownFormat:;
+ (id)ntk_attributedStringFromAttributesTable:()NTKUtilities markdownFormat:;
@end

@implementation NSAttributedString(NTKUtilities)

+ (id)NTKDesignatorAttributedTimeWithDate:()NTKUtilities
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CBB6D0];
  v9[0] = MEMORY[0x277CBEC38];
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x277CCA898] NTKTimeWithDate:v4 andDesignatorAttributes:v5 timeZone:0 options:0];

  return v6;
}

+ (id)NTKTimeWithDate:()NTKUtilities andDesignatorFont:timeZone:options:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v15 = *MEMORY[0x277D740A8];
    v16[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277CCA898] NTKTimeWithDate:v9 andDesignatorAttributes:v12 timeZone:v11 options:a6];

  return v13;
}

+ (id)NTKTimeWithDate:()NTKUtilities andDesignatorAttributes:timeZone:options:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_TimeFormatterWithDate_onceToken != -1)
  {
    +[NSAttributedString(NTKUtilities) NTKTimeWithDate:andDesignatorAttributes:timeZone:options:];
  }

  [_TimeFormatterWithDate___formatter setOverrideDate:v9];
  v12 = _TimeFormatterWithDate___formatter;
  [v12 _setUseNarrowDesignatorTextForGerman:(a6 >> 1) & 1];
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEBB0] systemTimeZone];
  }

  [v12 setTimeZone:v11];
  if (a6)
  {
    v13 = [v12 timeText];
    v16 = 0;
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if ((a6 & 4) != 0)
    {
      v13 = [v12 timeAndDesignatorTextWithoutMinutesIfZero];
      v14 = [v12 designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero];
    }

    else
    {
      v13 = [v12 timeAndDesignatorText];
      v14 = [v12 designatorRangeInTimeAndDesignatorText];
    }

    v17 = v14;
    v16 = v15;
  }

  v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v13];
  v19 = v18;
  if (v10 && v16)
  {
    [v18 setAttributes:v10 range:{v17, v16}];
  }

  return v19;
}

+ (id)NTKReplaceTimeDesignatorAttributesFrom:()NTKUtilities withDesignatorFont:
{
  v5 = a4;
  v6 = MEMORY[0x277CCAB48];
  v7 = a3;
  v8 = [[v6 alloc] initWithAttributedString:v7];

  [v8 beginEditing];
  v9 = *MEMORY[0x277CBB6D0];
  v10 = [v8 length];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __94__NSAttributedString_NTKUtilities__NTKReplaceTimeDesignatorAttributesFrom_withDesignatorFont___block_invoke;
  v19 = &unk_27877E740;
  v11 = v8;
  v20 = v11;
  v21 = v5;
  v12 = v5;
  [v11 enumerateAttribute:v9 inRange:0 options:v10 usingBlock:{0x100000, &v16}];
  [v11 endEditing];
  v13 = v21;
  v14 = v11;

  return v11;
}

+ (id)NTKCountdownToDate:()NTKUtilities useShort:withDesignatorFont:
{
  v45[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = MEMORY[0x277CBEA80];
  v9 = a3;
  v10 = [v8 currentCalendar];
  v11 = [MEMORY[0x277CBB700] now];
  v12 = [v10 components:126 fromDate:v11];
  v13 = [v10 components:126 fromDate:v9];

  v14 = [v10 components:96 fromDateComponents:v12 toDateComponents:v13 options:0];
  v15 = [v14 hour];
  v16 = [v14 minute];
  if (v15 < 0 || (v17 = v16, v16 < 0))
  {
    v20 = objc_alloc_init(MEMORY[0x277CCA898]);
    goto LABEL_24;
  }

  if (!(v15 | v16))
  {
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = NTKClockFaceLocalizedString(@"COUNTDOWN_NOW", @"now");
    v20 = [v18 initWithString:v19];
LABEL_23:

    goto LABEL_24;
  }

  v20 = objc_opt_new();
  if (v15)
  {
    v41 = a4;
    if (a4)
    {
      v21 = @"COUNTDOWN_HOUR_SHORT";
    }

    else
    {
      v22 = @"COUNTDOWN_HOUR_MULTIPLE";
      if (v15 == 1)
      {
        v22 = @"COUNTDOWN_HOUR_SINGLE";
      }

      v21 = v22;
    }

    v40 = NTKClockFaceLocalizedString(v21, @"hrs");

    v23 = objc_alloc(MEMORY[0x277CCA898]);
    v24 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%d", v15];
    v25 = [v23 initWithString:v24];
    [v20 appendAttributedString:v25];

    v26 = objc_alloc(MEMORY[0x277CCAB48]);
    v44 = *MEMORY[0x277D740A8];
    v45[0] = v7;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v28 = [v26 initWithString:v40 attributes:v27];

    [v20 appendAttributedString:v28];
    a4 = v41;
  }

  if (v17)
  {
    if ([v20 length])
    {
      v29 = a4;
      v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
      [v20 appendAttributedString:v30];

      a4 = v29;
    }

    if (a4)
    {
      v31 = @"COUNTDOWN_MINUTE_SHORT";
    }

    else
    {
      v32 = @"COUNTDOWN_MINUTE_MULTIPLE";
      if (v17 == 1)
      {
        v32 = @"COUNTDOWN_MINUTE_SINGLE";
      }

      v31 = v32;
    }

    v19 = NTKClockFaceLocalizedString(v31, @"mins");

    v33 = objc_alloc(MEMORY[0x277CCA898]);
    v34 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%ld", v17];
    v35 = [v33 initWithString:v34];
    [v20 appendAttributedString:v35];

    v36 = objc_alloc(MEMORY[0x277CCAB48]);
    v42 = *MEMORY[0x277D740A8];
    v43 = v7;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v38 = [v36 initWithString:v19 attributes:v37];

    [v20 appendAttributedString:v38];
    goto LABEL_23;
  }

LABEL_24:

  return v20;
}

+ (id)NTKHyphenatableString:()NTKUtilities factor:
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = MEMORY[0x277D74240];
    v6 = a4;
    *&v7 = a1;
    v8 = [v5 NTKHyphenationParagraphStyleWithFactor:v7];
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v13 = *MEMORY[0x277D74118];
    v14[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v11 = [v9 initWithString:v6 attributes:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_attributedStringFromAttributesTable:()NTKUtilities defaultAttributes:format:arguments:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v11 arguments:a6];
  v13 = objc_alloc_init(MEMORY[0x277CCA8A0]);
  [v13 setAllowsExtendedAttributes:1];
  v40[0] = 0;
  v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithMarkdownString:v12 options:v13 baseURL:0 error:v40];
  v15 = v40[0];
  v16 = v15;
  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v20 = [v14 length];
    v21 = objc_alloc(MEMORY[0x277CCAB48]);
    v22 = [v14 string];
    v23 = [v21 initWithString:v22 attributes:v10];

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__NSAttributedString_NTKUtilities___attributedStringFromAttributesTable_defaultAttributes_format_arguments___block_invoke;
    aBlock[3] = &unk_27877E768;
    v33 = v9;
    v35 = &v36;
    v18 = v23;
    v34 = v18;
    v24 = _Block_copy(aBlock);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __108__NSAttributedString_NTKUtilities___attributedStringFromAttributesTable_defaultAttributes_format_arguments___block_invoke_2;
    v30[3] = &unk_27877E790;
    v25 = v24;
    v31 = v25;
    [v14 enumerateAttribute:@"attributes" inRange:0 options:v20 usingBlock:{0, v30}];
    v37[3] = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __108__NSAttributedString_NTKUtilities___attributedStringFromAttributesTable_defaultAttributes_format_arguments___block_invoke_3;
    v28[3] = &unk_27877E7B8;
    v26 = v25;
    v29 = v26;
    [v14 enumerateAttributesInRange:0 options:v20 usingBlock:{0, v28}];
    v19 = [v18 copy];

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v18 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NSAttributedString(NTKUtilities) _attributedStringFromAttributesTable:v16 defaultAttributes:v18 format:? arguments:?];
    }

    v19 = 0;
  }

  return v19;
}

+ (id)ntk_attributedStringFromAttributesTable:()NTKUtilities defaultAttributes:markdownFormat:
{
  v9 = [a1 ntk_attributedStringFromAttributesTable:a3 defaultAttributes:a4 markdownFormat:a5 arguments:&a9];

  return v9;
}

+ (id)ntk_attributedStringFromAttributesTable:()NTKUtilities markdownFormat:
{
  v11 = a4;
  v12 = a3;
  v13 = [v12 objectForKeyedSubscript:@"default"];
  v14 = [a1 ntk_attributedStringFromAttributesTable:v12 defaultAttributes:v13 markdownFormat:v11 arguments:&a9];

  return v14;
}

+ (void)_attributedStringFromAttributesTable:()NTKUtilities defaultAttributes:format:arguments:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "parsing markdown failed, error = %@", &v2, 0xCu);
}

@end