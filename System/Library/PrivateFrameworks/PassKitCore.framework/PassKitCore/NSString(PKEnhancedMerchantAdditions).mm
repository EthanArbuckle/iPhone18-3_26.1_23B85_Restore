@interface NSString(PKEnhancedMerchantAdditions)
- (id)jsonArrayValue;
- (id)jsonNonZeroUnsignedLongLongNSNumberArrayValue;
- (id)jsonNonZeroUnsignedLongLongNSNumberSetValue;
- (id)jsonStringSetValue;
- (id)nonZeroUnsignedLongLongNSNumberValue;
- (id)truncatedStringWithEllipsis;
@end

@implementation NSString(PKEnhancedMerchantAdditions)

- (id)nonZeroUnsignedLongLongNSNumberValue
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  v4 = [MEMORY[0x1E696AE88] scannerWithString:v3];
  v8 = 0;
  v5 = 0;
  if ([v4 scanUnsignedLongLong:&v8])
  {
    v6 = v8 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  return v5;
}

- (id)jsonNonZeroUnsignedLongLongNSNumberArrayValue
{
  v1 = [a1 jsonArrayValue];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 nonZeroUnsignedLongLongArrayValue];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error parsing JSON, expected array", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)jsonNonZeroUnsignedLongLongNSNumberSetValue
{
  v1 = [a1 jsonNonZeroUnsignedLongLongNSNumberArrayValue];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)jsonArrayValue
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ACB0];
  v2 = [a1 dataUsingEncoding:4];
  v10 = 0;
  v3 = [v1 JSONObjectWithData:v2 options:0 error:&v10];
  v4 = v10;

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error parsing JSON: %@", buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v3;
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (id)jsonStringSetValue
{
  v1 = [a1 jsonArrayValue];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 pk_arrayBySafelyApplyingBlock:&__block_literal_global_345];
    v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Error parsing JSON, expected array", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)truncatedStringWithEllipsis
{
  if ([a1 length] > 0x14)
  {
    v3 = [a1 substringToIndex:20];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, @"..."];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end