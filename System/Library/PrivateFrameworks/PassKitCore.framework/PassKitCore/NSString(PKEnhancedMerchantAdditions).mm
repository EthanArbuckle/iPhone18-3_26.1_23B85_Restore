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
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceCharacterSet];

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
  jsonArrayValue = [self jsonArrayValue];
  v2 = jsonArrayValue;
  if (jsonArrayValue)
  {
    nonZeroUnsignedLongLongArrayValue = [jsonArrayValue nonZeroUnsignedLongLongArrayValue];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error parsing JSON, expected array", v6, 2u);
    }

    nonZeroUnsignedLongLongArrayValue = 0;
  }

  return nonZeroUnsignedLongLongArrayValue;
}

- (id)jsonNonZeroUnsignedLongLongNSNumberSetValue
{
  jsonNonZeroUnsignedLongLongNSNumberArrayValue = [self jsonNonZeroUnsignedLongLongNSNumberArrayValue];
  if (jsonNonZeroUnsignedLongLongNSNumberArrayValue)
  {
    v2 = [MEMORY[0x1E695DFD8] setWithArray:jsonNonZeroUnsignedLongLongNSNumberArrayValue];
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
  v2 = [self dataUsingEncoding:4];
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
  jsonArrayValue = [self jsonArrayValue];
  v2 = jsonArrayValue;
  if (jsonArrayValue)
  {
    v3 = [jsonArrayValue pk_arrayBySafelyApplyingBlock:&__block_literal_global_345];
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
  if ([self length] > 0x14)
  {
    v3 = [self substringToIndex:20];
    selfCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, @"..."];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end