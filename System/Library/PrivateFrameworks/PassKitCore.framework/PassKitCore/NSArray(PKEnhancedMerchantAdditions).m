@interface NSArray(PKEnhancedMerchantAdditions)
- (id)deepCopyWithZone:()PKEnhancedMerchantAdditions;
- (id)jsonString;
- (id)nonZeroUnsignedLongLongSetValue;
- (id)stringSetValue;
@end

@implementation NSArray(PKEnhancedMerchantAdditions)

- (id)jsonString
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:0 error:&v7];
  v2 = v7;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v2;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Error serializing to JSON: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];
  }

  return v5;
}

- (id)deepCopyWithZone:()PKEnhancedMerchantAdditions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__NSArray_PKEnhancedMerchantAdditions__deepCopyWithZone___block_invoke;
  v5[3] = &__block_descriptor_40_e8__16__0_8l;
  v5[4] = a3;
  v3 = [a1 pk_arrayBySafelyApplyingBlock:v5];

  return v3;
}

- (id)nonZeroUnsignedLongLongSetValue
{
  v1 = [a1 nonZeroUnsignedLongLongArrayValue];
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

- (id)stringSetValue
{
  v1 = [a1 stringArrayValue];
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

@end