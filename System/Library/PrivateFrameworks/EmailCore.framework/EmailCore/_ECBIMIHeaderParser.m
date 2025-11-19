@interface _ECBIMIHeaderParser
+ (BOOL)_indicatorDataHasValidSVGProfile:(id)a3;
+ (BOOL)_versionIsValidWithScanner:(id)a3;
+ (ECBIMIInfo)bimiInfoForHeaders:(uint64_t)a1;
+ (id)_hashFromIndicatorHashHeader:(id)a3 algorithm:(id *)a4;
+ (id)_locationFromLocationHeader:(id)a3 evidenceLocation:(id *)a4;
+ (id)_locationFromScanner:(id)a3 evidenceLocation:(id *)a4;
+ (id)_scanToNextTagForScanner:(id)a3 allowSemicolonSeparator:(BOOL)a4 value:(id *)a5;
+ (id)_scanToNextTagForScanner:(id)a3 url:(id *)a4;
@end

@implementation _ECBIMIHeaderParser

+ (ECBIMIInfo)bimiInfoForHeaders:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
  v5 = [v2 firstHeaderForKey:@"bimi-indicator"];
  v6 = [v5 stringByTrimmingCharactersInSet:v4];
  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v6 ef_stringByRemovingCharactersInSet:v7];

  v9 = [v2 firstHeaderForKey:@"bimi-location"];
  v10 = [v9 ef_stringByTrimmingTrailingCharactersInSet:v4];

  if ([v8 length] || objc_msgSend(v10, "length"))
  {
    if (v8 && (v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v8 options:0]) != 0)
    {
      if (![v3 _indicatorDataHasValidSVGProfile:v11])
      {
        v14 = 0;
        v15 = 0;
        v20 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v12 = 1;
      v13 = v11;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      if (!v10)
      {
LABEL_7:
        v14 = 0;
        v15 = 0;
LABEL_10:
        if (v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = v12;
        }

        if (v16 == 1)
        {
          v22 = v4;
          v17 = [v2 firstHeaderForKey:@"x-bimi-indicator-hash"];
          v23 = 0;
          v18 = [v3 _hashFromIndicatorHashHeader:v17 algorithm:&v23];
          v19 = v23;
          v20 = [[ECBIMIInfo alloc] initWithIndicator:v13 location:v14 evidenceLocation:v15 indicatorHash:v18 hashAlgorithm:v19];

          v11 = v13;
          v4 = v22;
        }

        else
        {
          v14 = 0;
          v20 = 0;
          v11 = v13;
        }

        goto LABEL_17;
      }
    }

    v24 = 0;
    v14 = [v3 _locationFromLocationHeader:v10 evidenceLocation:&v24];
    v15 = v24;
    goto LABEL_10;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

+ (BOOL)_indicatorDataHasValidSVGProfile:(id)a3
{
  v3 = a3;
  v4 = [[_ECSVGProfileExtractor alloc] initWithSVGData:v3];
  v5 = [(_ECSVGProfileExtractor *)v4 namespace];
  if ([v5 ef_caseInsensitiveIsEqualToString:@"http://www.w3.org/2000/svg"])
  {
    v6 = [(_ECSVGProfileExtractor *)v4 version];
    if ([v6 ef_caseInsensitiveIsEqualToString:@"1.2"])
    {
      v7 = [(_ECSVGProfileExtractor *)v4 baseProfile];
      v8 = [v7 ef_caseInsensitiveIsEqualToString:@"tiny-ps"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_locationFromLocationHeader:(id)a3 evidenceLocation:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v6];
  if ([a1 _versionIsValidWithScanner:v7])
  {
    v13 = 0;
    v8 = [a1 _locationFromScanner:v7 evidenceLocation:&v13];
    v9 = v13;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
  if (a4)
  {
LABEL_5:
    v10 = v9;
    *a4 = v9;
  }

LABEL_6:
  v11 = v8;

  return v8;
}

+ (BOOL)_versionIsValidWithScanner:(id)a3
{
  v3 = a3;
  v13 = 0;
  v4 = [v3 scanUpToString:@"=" intoString:&v13];
  v5 = v13;
  if (v4 && ([v3 scanString:@"=" intoString:0] & 1) != 0)
  {
    v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v7 = [v5 ef_stringByTrimmingTrailingCharactersInSet:v6];

    if ([v7 isEqualToString:@"v"])
    {
      v12 = 0;
      LODWORD(v8) = [v3 scanUpToString:@";" intoString:&v12];
      v9 = v12;
      if (v8)
      {
        if ([v3 scanString:@";" intoString:0])
        {
          v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v10 = [v9 ef_stringByTrimmingTrailingCharactersInSet:v8];

          LOBYTE(v8) = [v10 isEqualToString:@"BIMI1"];
          v9 = v10;
        }

        else
        {
          LOBYTE(v8) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
    v7 = v5;
  }

  return v8;
}

+ (id)_locationFromScanner:(id)a3 evidenceLocation:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v7 = [a1 _scanToNextTagForScanner:v6 url:&v26];
  v8 = v26;
  v9 = v8;
  if (v7 && v8)
  {
    if (![v6 isAtEnd])
    {
      v25 = 0;
      v13 = [a1 _scanToNextTagForScanner:v6 url:&v25];
      v14 = v25;
      v15 = v14;
      if (v13 && v14 && [v6 isAtEnd])
      {
        if ([v7 isEqualToString:@"l"] && (v16 = v9, v17 = v15, (objc_msgSend(v13, "isEqualToString:", @"a") & 1) != 0) || objc_msgSend(v7, "isEqualToString:", @"a") && (v16 = v15, v17 = v9, objc_msgSend(v13, "isEqualToString:", @"l")))
        {
          v18 = v9;
          v19 = v15;
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        if (a4)
        {
          v23 = v17;
          *a4 = v17;
        }

        v12 = v16;
      }

      else
      {
        v17 = 0;
        v12 = 0;
        if (a4)
        {
          *a4 = 0;
        }
      }

      goto LABEL_29;
    }

    if ([v7 isEqualToString:@"l"])
    {
      v10 = 0;
      v11 = v9;
    }

    else
    {
      v11 = 0;
      v20 = 0;
      v17 = 0;
      v10 = v9;
      if (![v7 isEqualToString:@"a"])
      {
LABEL_20:
        if (a4)
        {
          v22 = v17;
          *a4 = v17;
        }

        v12 = v20;
LABEL_29:

        goto LABEL_30;
      }
    }

    v21 = v9;
    v20 = v11;
    v17 = v10;
    goto LABEL_20;
  }

  v12 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_30:

  return v12;
}

+ (id)_scanToNextTagForScanner:(id)a3 url:(id *)a4
{
  v8 = 0;
  v5 = [a1 _scanToNextTagForScanner:a3 allowSemicolonSeparator:1 value:&v8];
  v6 = v8;
  if (a4)
  {
    *a4 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  }

  return v5;
}

+ (id)_hashFromIndicatorHashHeader:(id)a3 algorithm:(id *)a4
{
  v17 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v17];
  v6 = 0;
  v7 = 0;
  while (([v5 isAtEnd] & 1) == 0)
  {
    v18 = 0;
    v8 = [a1 _scanToNextTagForScanner:v5 allowSemicolonSeparator:0 value:&v18];
    v9 = v18;
    if ([v8 isEqualToString:@"h"])
    {
      v10 = v6;
      v6 = v9;
      v11 = v7;
    }

    else
    {
      v10 = v7;
      v11 = v9;
      if (![v8 isEqualToString:@"a"])
      {
        goto LABEL_7;
      }
    }

    v12 = v9;

    v7 = v11;
LABEL_7:
  }

  if (v6 && v7)
  {
    if (a4)
    {
      v13 = v7;
      *a4 = v7;
    }

    v14 = v6;
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v14;
}

+ (id)_scanToNextTagForScanner:(id)a3 allowSemicolonSeparator:(BOOL)a4 value:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v23 = 0;
  v8 = [v7 scanUpToString:@"=" intoString:&v23];
  v9 = v23;
  if (v8 && ([v7 scanString:@"=" intoString:0] & 1) != 0)
  {
    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [v9 ef_stringByTrimmingTrailingCharactersInSet:v10];

    v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v13 = [v12 invertedSet];
    v22 = 0;
    v14 = [v7 scanCharactersFromSet:v13 intoString:&v22];
    v15 = v22;

    if (v14)
    {
      v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      [v7 scanCharactersFromSet:v16 intoString:0];

      if (v6)
      {
        v17 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
        [v7 scanCharactersFromSet:v17 intoString:0];
        v18 = [v15 ef_stringByTrimmingTrailingCharactersInSet:v17];

        v15 = v18;
      }

      if (a5)
      {
        v19 = v15;
        *a5 = v15;
      }

      v20 = v11;
    }

    else
    {
      v20 = 0;
      if (a5)
      {
        *a5 = 0;
      }
    }
  }

  else
  {
    v20 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    v11 = v9;
  }

  return v20;
}

@end