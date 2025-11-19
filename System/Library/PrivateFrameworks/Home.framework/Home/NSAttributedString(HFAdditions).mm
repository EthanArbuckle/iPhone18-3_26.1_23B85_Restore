@interface NSAttributedString(HFAdditions)
+ (id)hf_attributedLinkStringForAttributedString:()HFAdditions linkString:linkURL:;
+ (id)hf_attributedLinkStringForString:()HFAdditions linkString:linkURL:attributes:additionalLinkAttributes:;
+ (id)hf_attributedString:()HFAdditions withAppendedLinkString:linkURL:;
+ (id)hf_attributedStringForString:()HFAdditions withAppendedString:asURL:withAttributes:;
+ (id)hf_attributedStringWithInflectableAccessoryStatus:()HFAdditions accessoryName:forcePluralAgreement:;
+ (id)hf_attributedStringWithInflectableAccessoryStatus:()HFAdditions accessoryName:forcePluralAgreement:markdownFormat:;
+ (id)hf_attributedStringWithString:()HFAdditions insertingSystemImageNamed:;
+ (id)hf_attributedStringWithSystemImageNamed:()HFAdditions title:isRTL:;
+ (id)hf_loadFromHTMLWithString:()HFAdditions options:;
+ (id)hf_safeAttributedStringWithHTML:()HFAdditions attributes:;
- (double)hf_scaleFactorForBoundingSize:()HFAdditions minimumScaleFactor:maximumNumberOfLines:;
- (id)hf_attributedStringByTrimmingCharactersInCharacterSet:()HFAdditions;
- (id)hf_attributedStringWithDefaultAttributes:()HFAdditions;
- (id)hf_attributedStringWithDefaultAttributes:()HFAdditions inRange:;
- (id)hf_scaledAttributedStringWithBoundingSize:()HFAdditions minimumScaleFactor:maximumNumberOfLines:;
- (uint64_t)hf_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters;
- (uint64_t)hf_attributedStringScaledByFactor:()HFAdditions;
@end

@implementation NSAttributedString(HFAdditions)

- (double)hf_scaleFactorForBoundingSize:()HFAdditions minimumScaleFactor:maximumNumberOfLines:
{
  v11 = objc_alloc_init(MEMORY[0x277D74260]);
  [v11 setMinimumScaleFactor:a4];
  [v11 setMaximumNumberOfLines:a6];
  [a1 boundingRectWithSize:1 options:v11 context:{a2, a3}];
  [v11 actualScaleFactor];
  v13 = v12;

  return v13;
}

- (uint64_t)hf_attributedStringScaledByFactor:()HFAdditions
{
  v4 = [a1 length];

  return [a1 _ui_attributedSubstringFromRange:0 scaledByScaleFactor:{v4, a2}];
}

- (id)hf_scaledAttributedStringWithBoundingSize:()HFAdditions minimumScaleFactor:maximumNumberOfLines:
{
  [a1 hf_scaleFactorForBoundingSize:? minimumScaleFactor:? maximumNumberOfLines:?];
  v3 = v2;
  v4 = a1;
  v5 = v4;
  if (v3 < 1.0)
  {
    v6 = [v4 hf_attributedStringScaledByFactor:v3];

    v5 = v6;
  }

  return v5;
}

+ (id)hf_attributedStringForString:()HFAdditions withAppendedString:asURL:withAttributes:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [a3 stringByAppendingString:v11];
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12 attributes:v10];

  v14 = [v12 rangeOfString:v11 options:4];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = *MEMORY[0x277D740E8];
    v21[0] = v9;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v13 addAttributes:v17 range:{v14, v16}];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)hf_attributedString:()HFAdditions withAppendedLinkString:linkURL:
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 stringByAppendingString:v9];
  v11 = [a1 hf_attributedLinkStringForString:v10 linkString:v9 linkURL:v8];

  return v11;
}

+ (id)hf_attributedLinkStringForAttributedString:()HFAdditions linkString:linkURL:
{
  v23[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v7];
  v11 = [v7 string];
  v12 = [v11 rangeOfString:v8 options:4];
  v14 = v13;

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v7 string];
    NSLog(&cfstr_LinkstringIsEx.isa, v8, v15);
  }

  else
  {
    v22[0] = *MEMORY[0x277D740C0];
    v16 = [MEMORY[0x277D75348] hf_keyColor];
    v17 = *MEMORY[0x277D740E8];
    v23[0] = v16;
    v23[1] = v9;
    v18 = *MEMORY[0x277D741F0];
    v22[1] = v17;
    v22[2] = v18;
    v23[2] = &unk_282524150;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];

    [v10 addAttributes:v19 range:{v12, v14}];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)hf_attributedLinkStringForString:()HFAdditions linkString:linkURL:attributes:additionalLinkAttributes:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = MEMORY[0x277CCAB48];
  v16 = a6;
  v17 = [[v15 alloc] initWithString:v11 attributes:v16];

  v18 = [v11 rangeOfString:v12 options:4];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(&cfstr_LinkstringIsEx.isa, v12, v11);
  }

  else
  {
    v20 = v18;
    v21 = v19;
    v22 = [MEMORY[0x277CBEB38] dictionary];
    [v22 setObject:&unk_282524150 forKey:*MEMORY[0x277D741F0]];
    v23 = [MEMORY[0x277D75348] hf_keyColor];
    [v22 setObject:v23 forKey:*MEMORY[0x277D740C0]];

    [v22 na_safeSetObject:v13 forKey:*MEMORY[0x277D740E8]];
    if (v14)
    {
      [v22 addEntriesFromDictionary:v14];
    }

    [v17 addAttributes:v22 range:{v20, v21}];
  }

  return v17;
}

- (id)hf_attributedStringWithDefaultAttributes:()HFAdditions
{
  v4 = a3;
  v5 = [a1 hf_attributedStringWithDefaultAttributes:v4 inRange:{0, objc_msgSend(a1, "length")}];

  return v5;
}

- (id)hf_attributedStringWithDefaultAttributes:()HFAdditions inRange:
{
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x277CCAB48]);
  v10 = [a1 string];
  v11 = [v9 initWithString:v10 attributes:v8];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__NSAttributedString_HFAdditions__hf_attributedStringWithDefaultAttributes_inRange___block_invoke;
  v24[3] = &unk_277DFC3C8;
  v12 = v11;
  v25 = v12;
  [a1 enumerateAttributesInRange:a4 options:a5 usingBlock:{0, v24}];
  v13 = *MEMORY[0x277D740A8];
  v14 = [v8 objectForKeyedSubscript:*MEMORY[0x277D740A8]];

  if (v14)
  {
    v15 = MEMORY[0x277D755D0];
    v16 = [v8 objectForKeyedSubscript:v13];
    v17 = [v15 configurationWithFont:v16];

    v18 = *MEMORY[0x277D74060];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__NSAttributedString_HFAdditions__hf_attributedStringWithDefaultAttributes_inRange___block_invoke_2;
    v21[3] = &unk_277DFC3F0;
    v22 = v17;
    v23 = v12;
    v19 = v17;
    [v23 enumerateAttribute:v18 inRange:a4 options:a5 usingBlock:{0, v21}];
  }

  return v12;
}

- (id)hf_attributedStringByTrimmingCharactersInCharacterSet:()HFAdditions
{
  v4 = a3;
  v5 = [a1 string];
  v6 = [v4 invertedSet];

  v7 = [v5 rangeOfCharacterFromSet:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2824B1A78];
  }

  else
  {
    v9 = v7;
    v10 = [v5 rangeOfCharacterFromSet:v6 options:4];
    v8 = [a1 attributedSubstringFromRange:{v9, v11 - v9 + v10}];
  }

  v12 = v8;

  return v12;
}

- (uint64_t)hf_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters
{
  if (!hf_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters)
  {
    v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [v2 mutableCopy];

    [v3 addCharactersInString:@"\uFFFC"];
    v4 = [v3 copy];
    v5 = hf_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters;
    hf_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters = v4;
  }

  return [a1 hf_attributedStringByTrimmingCharactersInCharacterSet:?];
}

+ (id)hf_loadFromHTMLWithString:()HFAdditions options:
{
  v3 = a3;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__NSAttributedString_HFAdditions__hf_loadFromHTMLWithString_options___block_invoke;
  v8[3] = &unk_277DF29A0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 futureWithBlock:v8];

  return v6;
}

+ (id)hf_safeAttributedStringWithHTML:()HFAdditions attributes:
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 stringByReplacingOccurrencesOfString:@"</?\\s*i?frame[^>]*>" withString:&stru_2824B1A78 options:1025 range:{0, objc_msgSend(v7, "length")}];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"</?\\s*img[^>]*>" withString:&stru_2824B1A78 options:1025 range:{0, objc_msgSend(v8, "length")}];

  v10 = [a1 hf_loadFromHTMLWithString:v9 options:MEMORY[0x277CBEC10]];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__NSAttributedString_HFAdditions__hf_safeAttributedStringWithHTML_attributes___block_invoke;
  v15[3] = &unk_277DFC468;
  v16 = v6;
  v11 = v6;
  v12 = [v10 flatMap:v15];
  v13 = [v12 recover:&__block_literal_global_119];

  return v13;
}

+ (id)hf_attributedStringWithString:()HFAdditions insertingSystemImageNamed:
{
  v5 = a4;
  v6 = MEMORY[0x277CCAB48];
  v7 = a3;
  v8 = [[v6 alloc] initWithString:v7];
  v9 = [v7 rangeOfString:@"%@"];
  v11 = v10;

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x277D755B8] systemImageNamed:v5];
    v13 = [MEMORY[0x277D74270] textAttachmentWithImage:v12];
    v14 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v13];
    [v8 replaceCharactersInRange:v9 withAttributedString:{v11, v14}];
  }

  v15 = [v8 copy];

  return v15;
}

+ (id)hf_attributedStringWithSystemImageNamed:()HFAdditions title:isRTL:
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D74270]);
    v10 = [MEMORY[0x277D755B8] systemImageNamed:v7];
    v11 = [v10 imageWithRenderingMode:2];
    [v9 setImage:v11];

    v12 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
    v13 = [v12 mutableCopy];

    if (a5)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", v8];
      v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v14];
      [v13 insertAttributedString:v15 atIndex:0];
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v8];
      v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v14];
      [v13 appendAttributedString:v15];
    }

    v16 = [v13 copy];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2824B1A78];
  }

  return v16;
}

+ (id)hf_attributedStringWithInflectableAccessoryStatus:()HFAdditions accessoryName:forcePluralAgreement:
{
  v7 = MEMORY[0x277CCA8D8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 mainBundle];
  if (a5)
  {
    v11 = @"HFAccessoryStatusInflectionWithNameFormat_PluralAgreement";
  }

  else
  {
    v11 = @"HFAccessoryStatusInflectionWithNameFormat";
  }

  v12 = _HFLocalizedStringWithDefaultValue(v11, v11, 1);
  v13 = [v10 localizedAttributedStringForKey:v12 value:&stru_2824B1A78 table:0];

  v14 = [MEMORY[0x277CCA898] hf_attributedStringWithInflectableAccessoryStatus:v9 accessoryName:v8 forcePluralAgreement:a5 markdownFormat:v13];

  return v14;
}

+ (id)hf_attributedStringWithInflectableAccessoryStatus:()HFAdditions accessoryName:forcePluralAgreement:markdownFormat:
{
  v67 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v43 = a4;
  v42 = a6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(__CFString *)v11 length])
  {
    v29 = objc_alloc(MEMORY[0x277CCA898]);
    v30 = &stru_2824B1A78;
LABEL_21:
    v28 = [v29 initWithString:v30];
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v43 length] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(v42, "string"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, !v13))
  {
    v29 = objc_alloc(MEMORY[0x277CCA898]);
    v30 = v11;
    goto LABEL_21;
  }

  if ([(__CFString *)v11 containsString:@"%"])
  {
    v14 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
    v40 = v11;
    v15 = [(__CFString *)v11 componentsSeparatedByCharactersInSet:v14];

    v16 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v44 objects:v66 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      v20 = *MEMORY[0x277CCA290];
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          if ([v22 containsString:@"%"])
          {
            [v16 na_safeAddObject:v22];
          }

          else
          {
            v23 = MEMORY[0x277CCA898];
            v63 = v43;
            v64 = v20;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
            v65 = v24;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            v26 = [v23 localizedAttributedStringWithFormat:v42 context:v25, v22];
            v27 = [v26 string];

            [v16 na_safeAddObject:v27];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v44 objects:v66 count:16];
      }

      while (v18);
    }

    v11 = [v16 componentsJoinedByString:@" "];

    v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11];
  }

  else
  {
    v33 = v11;
    v34 = MEMORY[0x277CCA898];
    v35 = *MEMORY[0x277CCA290];
    v60 = v43;
    v61 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v62 = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v28 = [v34 localizedAttributedStringWithFormat:v42 context:v37, v33];

    v38 = HFLogForCategory(0);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = NSStringFromSelector(a2);
      *buf = 138413570;
      v49 = a1;
      v50 = 2112;
      v51 = v39;
      v52 = 2112;
      v53 = v43;
      v54 = 2112;
      v55 = v33;
      v56 = 2112;
      v57 = v28;
      v58 = 1024;
      v59 = a5;
      _os_log_debug_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEBUG, "%@: %@ accessoryName: %@ | accessoryStatus: %@ | outputString: %@ | forcePluralAgreement:%{BOOL}d", buf, 0x3Au);
    }

    v11 = v33;
  }

LABEL_22:

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

@end