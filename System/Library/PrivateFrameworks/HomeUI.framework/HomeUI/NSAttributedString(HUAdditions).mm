@interface NSAttributedString(HUAdditions)
+ (id)hu_attributedLinkStringForAttributedString:()HUAdditions linkString:linkURL:;
+ (id)hu_attributedLinkStringForString:()HUAdditions linkString:linkURL:attributes:additionalLinkAttributes:;
+ (id)hu_attributedString:()HUAdditions withAppendedLinkString:linkURL:;
+ (id)hu_attributedStringForString:()HUAdditions withAppendedString:asURL:withAttributes:;
+ (id)hu_attributedStringWithSystemImageNamed:()HUAdditions title:isRTL:;
+ (id)hu_safeAttributedStringWithHTML:()HUAdditions attributes:;
- (double)hu_scaleFactorForBoundingSize:()HUAdditions minimumScaleFactor:maximumNumberOfLines:;
- (id)hu_attributedStringByTrimmingCharactersInCharacterSet:()HUAdditions;
- (id)hu_attributedStringWithDefaultAttributes:()HUAdditions;
- (id)hu_attributedStringWithDefaultAttributes:()HUAdditions inRange:;
- (id)hu_scaledAttributedStringWithBoundingSize:()HUAdditions minimumScaleFactor:maximumNumberOfLines:;
- (uint64_t)hu_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters;
- (uint64_t)hu_attributedStringScaledByFactor:()HUAdditions;
@end

@implementation NSAttributedString(HUAdditions)

- (double)hu_scaleFactorForBoundingSize:()HUAdditions minimumScaleFactor:maximumNumberOfLines:
{
  v11 = objc_alloc_init(MEMORY[0x277D74260]);
  [v11 setMinimumScaleFactor:a4];
  [v11 setMaximumNumberOfLines:a6];
  [self boundingRectWithSize:1 options:v11 context:{a2, a3}];
  [v11 actualScaleFactor];
  v13 = v12;

  return v13;
}

- (uint64_t)hu_attributedStringScaledByFactor:()HUAdditions
{
  v4 = [self length];

  return [self _ui_attributedSubstringFromRange:0 scaledByScaleFactor:{v4, a2}];
}

- (id)hu_scaledAttributedStringWithBoundingSize:()HUAdditions minimumScaleFactor:maximumNumberOfLines:
{
  [self hu_scaleFactorForBoundingSize:? minimumScaleFactor:? maximumNumberOfLines:?];
  v3 = v2;
  selfCopy = self;
  v5 = selfCopy;
  if (v3 < 1.0)
  {
    v6 = [selfCopy hu_attributedStringScaledByFactor:v3];

    v5 = v6;
  }

  return v5;
}

+ (id)hu_attributedStringForString:()HUAdditions withAppendedString:asURL:withAttributes:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [a3 stringByAppendingString:v11];
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v12 attributes:v10];

  v14 = [v12 rangeOfString:v11 options:4];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = *MEMORY[0x277D740E8];
    v20[0] = v9;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [v13 addAttributes:v17 range:{v14, v16}];
  }

  return v13;
}

+ (id)hu_attributedString:()HUAdditions withAppendedLinkString:linkURL:
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 stringByAppendingString:v9];
  v11 = [self hu_attributedLinkStringForString:v10 linkString:v9 linkURL:v8];

  return v11;
}

+ (id)hu_attributedLinkStringForAttributedString:()HUAdditions linkString:linkURL:
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v7];
  string = [v7 string];
  v12 = [string rangeOfString:v8 options:4];
  v14 = v13;

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    string2 = [v7 string];
    NSLog(&cfstr_LinkstringIsEx.isa, v8, string2);
  }

  else
  {
    v16 = *MEMORY[0x277D740E8];
    v19[0] = *MEMORY[0x277D741F0];
    v19[1] = v16;
    v20[0] = &unk_282491EE0;
    v20[1] = v9;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    [v10 addAttributes:v17 range:{v12, v14}];
  }

  return v10;
}

+ (id)hu_attributedLinkStringForString:()HUAdditions linkString:linkURL:attributes:additionalLinkAttributes:
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:&unk_282491EE0 forKey:*MEMORY[0x277D741F0]];
    hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
    [dictionary setObject:hf_keyColor forKey:*MEMORY[0x277D740C0]];

    [dictionary na_safeSetObject:v13 forKey:*MEMORY[0x277D740E8]];
    if (v14)
    {
      [dictionary addEntriesFromDictionary:v14];
    }

    [v17 addAttributes:dictionary range:{v20, v21}];
  }

  return v17;
}

- (id)hu_attributedStringWithDefaultAttributes:()HUAdditions
{
  v4 = a3;
  v5 = [self hu_attributedStringWithDefaultAttributes:v4 inRange:{0, objc_msgSend(self, "length")}];

  return v5;
}

- (id)hu_attributedStringWithDefaultAttributes:()HUAdditions inRange:
{
  v8 = a3;
  v9 = objc_alloc(MEMORY[0x277CCAB48]);
  string = [self string];
  v11 = [v9 initWithString:string attributes:v8];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__NSAttributedString_HUAdditions__hu_attributedStringWithDefaultAttributes_inRange___block_invoke;
  v24[3] = &unk_277DC1D48;
  v12 = v11;
  v25 = v12;
  [self enumerateAttributesInRange:a4 options:a5 usingBlock:{0, v24}];
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
    v21[2] = __84__NSAttributedString_HUAdditions__hu_attributedStringWithDefaultAttributes_inRange___block_invoke_2;
    v21[3] = &unk_277DC1D70;
    v22 = v17;
    v23 = v12;
    v19 = v17;
    [v23 enumerateAttribute:v18 inRange:a4 options:a5 usingBlock:{0, v21}];
  }

  return v12;
}

- (id)hu_attributedStringByTrimmingCharactersInCharacterSet:()HUAdditions
{
  v4 = a3;
  string = [self string];
  invertedSet = [v4 invertedSet];

  v7 = [string rangeOfCharacterFromSet:invertedSet];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2823E0EE8];
  }

  else
  {
    v9 = v7;
    v10 = [string rangeOfCharacterFromSet:invertedSet options:4];
    v8 = [self attributedSubstringFromRange:{v9, v11 - v9 + v10}];
  }

  v12 = v8;

  return v12;
}

- (uint64_t)hu_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters
{
  if (!hu_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [whitespaceAndNewlineCharacterSet mutableCopy];

    [v3 addCharactersInString:@"\uFFFC"];
    v4 = [v3 copy];
    v5 = hu_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters;
    hu_attributedStringByTrimmingWhitespaceNewlinesAndObjectReplacementCharacters_whitespaceNewlineAndObjectReplacementCharacters = v4;
  }

  return [self hu_attributedStringByTrimmingCharactersInCharacterSet:?];
}

+ (id)hu_safeAttributedStringWithHTML:()HUAdditions attributes:
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v6 stringByReplacingOccurrencesOfString:@"</?\\s*i?frame[^>]*>" withString:&stru_2823E0EE8 options:1025 range:{0, objc_msgSend(v6, "length")}];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"</?\\s*img[^>]*>" withString:&stru_2823E0EE8 options:1025 range:{0, objc_msgSend(v7, "length")}];

  v9 = [v8 dataUsingEncoding:10];
  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v40 = *MEMORY[0x277D74090];
  v41[0] = *MEMORY[0x277D740C8];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v36 = 0;
  v12 = [v10 initWithData:v9 options:v11 documentAttributes:0 error:&v36];
  v13 = v36;
  v14 = [v12 mutableCopy];

  if (v13 || !v14)
  {
    if (v13)
    {
      v30 = HFLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = v13;
        _os_log_error_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_ERROR, "Error creating NSAttributedString from HTML data: %@", buf, 0xCu);
      }
    }

    v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2823E0EE8];
  }

  else
  {
    v32 = v5;
    v15 = [v14 length];
    string = [v14 string];
    v17 = [string rangeOfString:@"\u2028" options:0 range:{0, v15}];
    v19 = v18;

    while (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 replaceCharactersInRange:v17 withString:{v19, @"\n"}];
      v20 = v17 + 1;
      if (v15 == v20)
      {
        break;
      }

      string2 = [v14 string];
      v17 = [string2 rangeOfString:@"\u2028" options:0 range:{v20, v15 - v20}];
      v19 = v22;
    }

    v23 = objc_alloc(MEMORY[0x277CBEB58]);
    v37 = *MEMORY[0x277D74118];
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v25 = [v23 initWithArray:v24];

    v26 = [v14 length];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __78__NSAttributedString_HUAdditions__hu_safeAttributedStringWithHTML_attributes___block_invoke;
    v33[3] = &unk_277DC1D98;
    v27 = v14;
    v34 = v27;
    v35 = v25;
    v28 = v25;
    [v27 enumerateAttributesInRange:0 options:v26 usingBlock:{0, v33}];
    v5 = v32;
    if (v32)
    {
      [v27 addAttributes:v32 range:{0, objc_msgSend(v27, "length")}];
    }

    v29 = v27;
  }

  return v29;
}

+ (id)hu_attributedStringWithSystemImageNamed:()HUAdditions title:isRTL:
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
    v16 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_2823E0EE8];
  }

  return v16;
}

@end