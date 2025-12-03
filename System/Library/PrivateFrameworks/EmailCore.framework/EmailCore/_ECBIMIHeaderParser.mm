@interface _ECBIMIHeaderParser
+ (BOOL)_indicatorDataHasValidSVGProfile:(id)profile;
+ (BOOL)_versionIsValidWithScanner:(id)scanner;
+ (ECBIMIInfo)bimiInfoForHeaders:(uint64_t)headers;
+ (id)_hashFromIndicatorHashHeader:(id)header algorithm:(id *)algorithm;
+ (id)_locationFromLocationHeader:(id)header evidenceLocation:(id *)location;
+ (id)_locationFromScanner:(id)scanner evidenceLocation:(id *)location;
+ (id)_scanToNextTagForScanner:(id)scanner allowSemicolonSeparator:(BOOL)separator value:(id *)value;
+ (id)_scanToNextTagForScanner:(id)scanner url:(id *)url;
@end

@implementation _ECBIMIHeaderParser

+ (ECBIMIInfo)bimiInfoForHeaders:(uint64_t)headers
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
  v5 = [v2 firstHeaderForKey:@"bimi-indicator"];
  v6 = [v5 stringByTrimmingCharactersInSet:v4];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v6 ef_stringByRemovingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

+ (BOOL)_indicatorDataHasValidSVGProfile:(id)profile
{
  profileCopy = profile;
  v4 = [[_ECSVGProfileExtractor alloc] initWithSVGData:profileCopy];
  namespace = [(_ECSVGProfileExtractor *)v4 namespace];
  if ([namespace ef_caseInsensitiveIsEqualToString:@"http://www.w3.org/2000/svg"])
  {
    version = [(_ECSVGProfileExtractor *)v4 version];
    if ([version ef_caseInsensitiveIsEqualToString:@"1.2"])
    {
      baseProfile = [(_ECSVGProfileExtractor *)v4 baseProfile];
      v8 = [baseProfile ef_caseInsensitiveIsEqualToString:@"tiny-ps"];
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

+ (id)_locationFromLocationHeader:(id)header evidenceLocation:(id *)location
{
  headerCopy = header;
  v7 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:headerCopy];
  if ([self _versionIsValidWithScanner:v7])
  {
    v13 = 0;
    v8 = [self _locationFromScanner:v7 evidenceLocation:&v13];
    v9 = v13;
    if (!location)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v8 = 0;
  if (location)
  {
LABEL_5:
    v10 = v9;
    *location = v9;
  }

LABEL_6:
  v11 = v8;

  return v8;
}

+ (BOOL)_versionIsValidWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v13 = 0;
  v4 = [scannerCopy scanUpToString:@"=" intoString:&v13];
  v5 = v13;
  if (v4 && ([scannerCopy scanString:@"=" intoString:0] & 1) != 0)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v7 = [v5 ef_stringByTrimmingTrailingCharactersInSet:whitespaceCharacterSet];

    if ([v7 isEqualToString:@"v"])
    {
      v12 = 0;
      LODWORD(whitespaceCharacterSet2) = [scannerCopy scanUpToString:@";" intoString:&v12];
      v9 = v12;
      if (whitespaceCharacterSet2)
      {
        if ([scannerCopy scanString:@";" intoString:0])
        {
          whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v10 = [v9 ef_stringByTrimmingTrailingCharactersInSet:whitespaceCharacterSet2];

          LOBYTE(whitespaceCharacterSet2) = [v10 isEqualToString:@"BIMI1"];
          v9 = v10;
        }

        else
        {
          LOBYTE(whitespaceCharacterSet2) = 0;
        }
      }
    }

    else
    {
      LOBYTE(whitespaceCharacterSet2) = 0;
    }
  }

  else
  {
    LOBYTE(whitespaceCharacterSet2) = 0;
    v7 = v5;
  }

  return whitespaceCharacterSet2;
}

+ (id)_locationFromScanner:(id)scanner evidenceLocation:(id *)location
{
  scannerCopy = scanner;
  v26 = 0;
  v7 = [self _scanToNextTagForScanner:scannerCopy url:&v26];
  v8 = v26;
  v9 = v8;
  if (v7 && v8)
  {
    if (![scannerCopy isAtEnd])
    {
      v25 = 0;
      v13 = [self _scanToNextTagForScanner:scannerCopy url:&v25];
      v14 = v25;
      v15 = v14;
      if (v13 && v14 && [scannerCopy isAtEnd])
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

        if (location)
        {
          v23 = v17;
          *location = v17;
        }

        v12 = v16;
      }

      else
      {
        v17 = 0;
        v12 = 0;
        if (location)
        {
          *location = 0;
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
        if (location)
        {
          v22 = v17;
          *location = v17;
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
  if (location)
  {
    *location = 0;
  }

LABEL_30:

  return v12;
}

+ (id)_scanToNextTagForScanner:(id)scanner url:(id *)url
{
  v8 = 0;
  v5 = [self _scanToNextTagForScanner:scanner allowSemicolonSeparator:1 value:&v8];
  v6 = v8;
  if (url)
  {
    *url = [MEMORY[0x277CBEBC0] URLWithString:v6];
  }

  return v5;
}

+ (id)_hashFromIndicatorHashHeader:(id)header algorithm:(id *)algorithm
{
  headerCopy = header;
  v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:headerCopy];
  v6 = 0;
  v7 = 0;
  while (([v5 isAtEnd] & 1) == 0)
  {
    v18 = 0;
    v8 = [self _scanToNextTagForScanner:v5 allowSemicolonSeparator:0 value:&v18];
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
    if (algorithm)
    {
      v13 = v7;
      *algorithm = v7;
    }

    v14 = v6;
  }

  else
  {
    v14 = 0;
    if (algorithm)
    {
      *algorithm = 0;
    }
  }

  return v14;
}

+ (id)_scanToNextTagForScanner:(id)scanner allowSemicolonSeparator:(BOOL)separator value:(id *)value
{
  separatorCopy = separator;
  scannerCopy = scanner;
  v23 = 0;
  v8 = [scannerCopy scanUpToString:@"=" intoString:&v23];
  v9 = v23;
  if (v8 && ([scannerCopy scanString:@"=" intoString:0] & 1) != 0)
  {
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [v9 ef_stringByTrimmingTrailingCharactersInSet:whitespaceCharacterSet];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    invertedSet = [whitespaceCharacterSet2 invertedSet];
    v22 = 0;
    v14 = [scannerCopy scanCharactersFromSet:invertedSet intoString:&v22];
    v15 = v22;

    if (v14)
    {
      whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      [scannerCopy scanCharactersFromSet:whitespaceCharacterSet3 intoString:0];

      if (separatorCopy)
      {
        v17 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];;
        [scannerCopy scanCharactersFromSet:v17 intoString:0];
        v18 = [v15 ef_stringByTrimmingTrailingCharactersInSet:v17];

        v15 = v18;
      }

      if (value)
      {
        v19 = v15;
        *value = v15;
      }

      v20 = v11;
    }

    else
    {
      v20 = 0;
      if (value)
      {
        *value = 0;
      }
    }
  }

  else
  {
    v20 = 0;
    if (value)
    {
      *value = 0;
    }

    v11 = v9;
  }

  return v20;
}

@end