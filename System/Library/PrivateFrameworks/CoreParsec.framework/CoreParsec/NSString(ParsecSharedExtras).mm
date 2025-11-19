@interface NSString(ParsecSharedExtras)
- (BOOL)parsec_hasLocalizedCaseInsensitivePrefix:()ParsecSharedExtras;
- (id)parsec_base64DecodedData;
- (id)parsec_readableURLStringAfterRemovingSubdomains;
- (uint64_t)parsec_hasPrefix:()ParsecSharedExtras;
@end

@implementation NSString(ParsecSharedExtras)

- (id)parsec_readableURLStringAfterRemovingSubdomains
{
  v2 = [a1 copy];
  v3 = [MEMORY[0x1E695DFF8] parsec_hostAndPortRangeFromURLString:v2];
  v5 = v4;
  v6 = [v2 parsec_hasPrefix:@"http://"];
  v7 = [v2 parsec_hasPrefix:@"https://"];
  v8 = v7;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && ((v6 | v7) & 1) != 0)
  {
    v9 = [a1 rangeOfString:@":" options:4 range:{v3, v5}];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      v11 = v3 + v5 - v9;
      if ([a1 rangeOfString:@"]" options:0 range:{v9, v11}] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [v2 stringByReplacingCharactersInRange:v10 withString:{v11, &stru_1F277AB70}];

        v5 -= v11;
        v2 = v12;
      }
    }
  }

  if (v6)
  {
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_15;
    }
  }

  else if ((v8 & (v3 != 0x7FFFFFFFFFFFFFFFLL)) == 0)
  {
    goto LABEL_15;
  }

  v13 = [v2 substringWithRange:{v3, v5}];
  v14 = @"www.";
  if (([v13 parsec_hasPrefix:@"www."] & 1) != 0 || (v14 = @"m.", objc_msgSend(v13, "parsec_hasPrefix:", @"m.")))
  {
    v15 = [v13 parsec_getHighLevelDomainFromHost];
    v16 = [v13 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [v2 stringByReplacingCharactersInRange:v3 withString:{-[__CFString length](v14, "length"), &stru_1F277AB70}];

      v2 = v17;
    }
  }

LABEL_15:

  return v2;
}

- (id)parsec_base64DecodedData
{
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:a1 options:0];

  return v1;
}

- (BOOL)parsec_hasLocalizedCaseInsensitivePrefix:()ParsecSharedExtras
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 length], v6 <= objc_msgSend(a1, "length")))
  {
    v8 = [MEMORY[0x1E695DF58] currentLocale];
    v7 = [a1 compare:v5 options:1 range:0 locale:{v6, v8}] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)parsec_hasPrefix:()ParsecSharedExtras
{
  if (a3)
  {
    return [a1 hasPrefix:?];
  }

  else
  {
    return 0;
  }
}

@end