@interface NSString(HFAdditions)
+ (id)hf_formattedPersonNameForFirstName:()HFAdditions lastName:;
+ (id)hf_stringWithFormat:()HFAdditions arguments:;
- (BOOL)hf_containsOnlyDecimalDigits;
- (BOOL)hf_isPhoneNumber;
- (id)hf_SHA1;
- (id)hf_SHA256;
- (id)hf_extractDecimalDigits;
- (id)hf_stringByTransformingFirstWordUsingBlock:()HFAdditions;
- (id)hf_stringByTrimmingTrailingHexCode;
- (id)hf_toHexString:()HFAdditions length:;
- (uint64_t)hf_countForSubstring:()HFAdditions;
- (uint64_t)hf_isEmail;
@end

@implementation NSString(HFAdditions)

- (id)hf_SHA1
{
  v6 = *MEMORY[0x277D85DE8];
  CC_SHA1([a1 UTF8String], objc_msgSend(a1, "hf_UTF8Length"), md);
  v2 = [a1 hf_toHexString:md length:20];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)hf_SHA256
{
  v6 = *MEMORY[0x277D85DE8];
  CC_SHA256([a1 UTF8String], objc_msgSend(a1, "hf_UTF8Length"), md);
  v2 = [a1 hf_toHexString:md length:32];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)hf_isPhoneNumber
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [v2 addCharactersInString:@"+()-"];
  v3 = [MEMORY[0x277CCA900] controlCharacterSet];
  [v2 formUnionWithCharacterSet:v3];

  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v2 formUnionWithCharacterSet:v4];

  v5 = [a1 componentsSeparatedByCharactersInSet:v2];
  v6 = [v5 componentsJoinedByString:&stru_2824B1A78];

  v7 = [v6 length] == 0;
  return v7;
}

- (uint64_t)hf_isEmail
{
  if (qword_280E03028 != -1)
  {
    dispatch_once(&qword_280E03028, &__block_literal_global_108);
  }

  v2 = _MergedGlobals_258;

  return [v2 evaluateWithObject:a1];
}

+ (id)hf_formattedPersonNameForFirstName:()HFAdditions lastName:
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_opt_new();
    [v7 setGivenName:v5];
    [v7 setFamilyName:v6];
    v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v7 style:0 options:0];
  }

  else
  {
    if ([v5 length])
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }

    v8 = v9;
  }

  return v8;
}

- (id)hf_stringByTransformingFirstWordUsingBlock:()HFAdditions
{
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v24 = "";
  v25 = xmmword_20DD974F0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  v5 = [a1 length];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NSString_HFAdditions__hf_stringByTransformingFirstWordUsingBlock___block_invoke;
  v11[3] = &unk_277DFB188;
  v13 = &v21;
  v14 = &v15;
  v6 = v4;
  v12 = v6;
  [a1 enumerateSubstringsInRange:0 options:v5 usingBlock:{3, v11}];
  v7 = v22[4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = a1;
  }

  else
  {
    v8 = [a1 stringByReplacingCharactersInRange:v7 withString:{v22[5], v16[5]}];
  }

  v9 = v8;

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (id)hf_extractDecimalDigits
{
  v2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [v2 invertedSet];
  v4 = [a1 componentsSeparatedByCharactersInSet:v3];
  v5 = [v4 componentsJoinedByString:&stru_2824B1A78];

  return v5;
}

- (BOOL)hf_containsOnlyDecimalDigits
{
  v2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v3 = [v2 invertedSet];

  v4 = [a1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(a1, "length") != 0;
  return v4;
}

- (id)hf_toHexString:()HFAdditions length:
{
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:2 * a4];
  if (a4)
  {
    v7 = a4;
    do
    {
      [v6 appendFormat:@"%02x", *a3];
      *a3++ = 0;
      --v7;
    }

    while (v7);
  }

  return v6;
}

- (uint64_t)hf_countForSubstring:()HFAdditions
{
  v1 = [a1 componentsSeparatedByString:?];
  v2 = [v1 count] - 1;

  return v2;
}

- (id)hf_stringByTrimmingTrailingHexCode
{
  v2 = [MEMORY[0x277CCAB50] whitespaceCharacterSet];
  [v2 addCharactersInString:@"-"];
  v3 = [a1 componentsSeparatedByCharactersInSet:v2];
  v4 = [v3 lastObject];
  v5 = [v4 uppercaseString];

  v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEF"];
  v7 = [v6 invertedSet];

  v8 = [v5 rangeOfCharacterFromSet:v7];
  if ([v3 count] >= 2)
  {
    if ([v5 length] == 2)
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_4:
        v9 = [a1 substringToIndex:{objc_msgSend(a1, "length") - objc_msgSend(v5, "length")}];
        v10 = [v9 stringByTrimmingCharactersInSet:v2];

        goto LABEL_10;
      }
    }

    else if ([v5 length] == 4 && v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  v10 = a1;
LABEL_10:

  return v10;
}

+ (id)hf_stringWithFormat:()HFAdditions arguments:
{
  v6 = a3;
  v7 = a4;
  if (![v7 count] || !objc_msgSend(v6, "length"))
  {
    goto LABEL_5;
  }

  if ([v7 count] >= 0x15)
  {
    v8 = NSStringFromSelector(a2);
    NSLog(&cfstr_DoesnTSupportM.isa, v8, v7);

LABEL_5:
    v9 = v6;
    goto LABEL_6;
  }

  v35 = MEMORY[0x277CCACA8];
  v11 = [v7 count];
  if (v11)
  {
    v12 = [v7 objectAtIndexedSubscript:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 count];
  if (v13 < 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v7 objectAtIndexedSubscript:1];
  }

  v15 = [v7 count];
  if (v15 < 3)
  {
    v53 = 0;
  }

  else
  {
    v53 = [v7 objectAtIndexedSubscript:2];
  }

  v37 = [v7 count];
  if (v37 < 4)
  {
    v52 = 0;
  }

  else
  {
    v52 = [v7 objectAtIndexedSubscript:3];
  }

  v36 = [v7 count];
  if (v36 < 5)
  {
    v51 = 0;
  }

  else
  {
    v51 = [v7 objectAtIndexedSubscript:4];
  }

  v34 = [v7 count];
  if (v34 < 6)
  {
    v50 = 0;
  }

  else
  {
    v50 = [v7 objectAtIndexedSubscript:5];
  }

  v33 = [v7 count];
  if (v33 < 7)
  {
    v49 = 0;
  }

  else
  {
    v49 = [v7 objectAtIndexedSubscript:6];
  }

  v32 = [v7 count];
  if (v32 < 8)
  {
    v48 = 0;
  }

  else
  {
    v48 = [v7 objectAtIndexedSubscript:7];
  }

  v31 = [v7 count];
  if (v31 < 9)
  {
    v47 = 0;
  }

  else
  {
    v47 = [v7 objectAtIndexedSubscript:8];
  }

  v30 = [v7 count];
  if (v30 < 0xA)
  {
    v46 = 0;
  }

  else
  {
    v46 = [v7 objectAtIndexedSubscript:9];
  }

  v29 = [v7 count];
  if (v29 < 0xB)
  {
    v45 = 0;
  }

  else
  {
    v45 = [v7 objectAtIndexedSubscript:10];
  }

  v28 = [v7 count];
  if (v28 < 0xC)
  {
    v44 = 0;
  }

  else
  {
    v44 = [v7 objectAtIndexedSubscript:11];
  }

  v27 = [v7 count];
  if (v27 < 0xD)
  {
    v43 = 0;
  }

  else
  {
    v43 = [v7 objectAtIndexedSubscript:12];
  }

  v26 = [v7 count];
  if (v26 < 0xE)
  {
    v42 = 0;
  }

  else
  {
    v42 = [v7 objectAtIndexedSubscript:13];
  }

  v25 = [v7 count];
  if (v25 < 0xF)
  {
    v41 = 0;
  }

  else
  {
    v41 = [v7 objectAtIndexedSubscript:14];
  }

  v24 = [v7 count];
  if (v24 < 0x10)
  {
    v40 = 0;
  }

  else
  {
    v40 = [v7 objectAtIndexedSubscript:15];
  }

  v23 = [v7 count];
  if (v23 < 0x11)
  {
    v39 = 0;
  }

  else
  {
    v39 = [v7 objectAtIndexedSubscript:16];
  }

  v16 = [v7 count];
  if (v16 < 0x12)
  {
    v38 = 0;
  }

  else
  {
    v38 = [v7 objectAtIndexedSubscript:17];
  }

  v17 = [v7 count];
  if (v17 < 0x13)
  {
    v18 = 0;
  }

  else
  {
    v18 = [v7 objectAtIndexedSubscript:18];
  }

  v22 = v12;
  if ([v7 count] <= 0x13)
  {
    v9 = [v35 localizedStringWithFormat:v6, v12, v14, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v18, 0];
  }

  else
  {
    [v7 objectAtIndexedSubscript:19];
    v21 = v13;
    v20 = v19 = v11;
    v9 = [v35 localizedStringWithFormat:v6, v12, v14, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v18, v20];

    v11 = v19;
    v13 = v21;
  }

  if (v17 >= 0x13)
  {
  }

  if (v16 >= 0x12)
  {
  }

  if (v23 >= 0x11)
  {
  }

  if (v24 >= 0x10)
  {
  }

  if (v25 >= 0xF)
  {
  }

  if (v26 >= 0xE)
  {
  }

  if (v27 >= 0xD)
  {
  }

  if (v28 >= 0xC)
  {
  }

  if (v29 >= 0xB)
  {
  }

  if (v30 >= 0xA)
  {
  }

  if (v31 >= 9)
  {
  }

  if (v32 >= 8)
  {
  }

  if (v33 >= 7)
  {
  }

  if (v34 >= 6)
  {
  }

  if (v36 >= 5)
  {
  }

  if (v37 >= 4)
  {
  }

  if (v15 >= 3)
  {
  }

  if (v13 >= 2)
  {
  }

  if (v11)
  {
  }

LABEL_6:

  return v9;
}

@end