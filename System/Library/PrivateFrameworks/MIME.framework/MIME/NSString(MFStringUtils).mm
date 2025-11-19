@interface NSString(MFStringUtils)
+ (id)mf_stringWithData:()MFStringUtils encoding:;
- (uint64_t)mf_caseInsensitiveCompareExcludingXDash:()MFStringUtils;
- (uint64_t)mf_copyDisplayString;
- (uint64_t)mf_copyDisplayStringInRange:()MFStringUtils;
- (void)mf_dataUsingEncoding:()MFStringUtils allowLossyConversion:;
@end

@implementation NSString(MFStringUtils)

+ (id)mf_stringWithData:()MFStringUtils encoding:
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:a3 encoding:a4];

  return v4;
}

- (uint64_t)mf_caseInsensitiveCompareExcludingXDash:()MFStringUtils
{
  if (a1 == a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v5 = [a1 rangeOfString:@"x-" options:9];
  v7 = v6;
  v8 = [a3 rangeOfString:@"x-" options:9];
  if ((v7 != 0) != (v9 != 0))
  {
    if (v7)
    {
      v10 = v5 + v7;
      v11 = [a1 length] - v10;

      return [a1 compare:a3 options:9 range:{v10, v11}];
    }

    result = [a3 compare:a1 options:9 range:{v8 + v9, objc_msgSend(a3, "length") - (v8 + v9)}];
    if (result != -1)
    {
      if (result == 1)
      {
        return -1;
      }

      return result;
    }

    return 1;
  }

  return [a1 compare:a3 options:1];
}

- (void)mf_dataUsingEncoding:()MFStringUtils allowLossyConversion:
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [(__CFString *)a1 length];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v8 = CFStringConvertNSStringEncodingToEncoding(a3);
  if (!CFStringIsEncodingAvailable(v8))
  {
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = a3;
      _os_log_impl(&dword_1D36B2000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Unknown encoding %lu", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v9 = -1;
  }

  else
  {
    v9 = 63;
  }

  if (a4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v23.location = 0;
  v23.length = v7;
  if (MFStringGetBytes(a1, v23, v8, v10, 1u, 0, 0, &v19) != v7)
  {
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v11 = objc_allocWithZone(MFMutableData);
  v12 = [v11 initWithLength:v19];
  v13 = v12;
  if (v19)
  {
    v14 = [v12 mutableBytes];
    v24.location = 0;
    v24.length = v7;
    if (MFStringGetBytes(a1, v24, v8, v10, 1u, v14, v19, &v19) == v7)
    {
      [v13 setLength:v19];
      goto LABEL_12;
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@: didn't convert all characters", _NSMethodExceptionProem()}];

    goto LABEL_16;
  }

LABEL_12:
  v15 = v13;
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

- (uint64_t)mf_copyDisplayStringInRange:()MFStringUtils
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
  {
    v7 = [a1 substringWithRange:?];
    v8 = [v7 _lp_userVisibleHost];
    if (([v7 isEqualToString:v8] & 1) == 0)
    {
      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", objc_msgSend(a1, "substringWithRange:", 0, a3), v8];
    }
  }

  return [a1 copy];
}

- (uint64_t)mf_copyDisplayString
{
  v2 = [a1 length];

  return [a1 mf_copyDisplayStringInRange:{0, v2}];
}

@end