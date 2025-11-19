@interface NSError(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
- (id)msv_jsonValue;
- (id)msv_userInfoJSONValue;
@end

@implementation NSError(MSVJSONConvertible)

- (id)msv_userInfoJSONValue
{
  v1 = [a1 userInfo];
  v2 = [v1 msv_filter:&__block_literal_global_42];

  v3 = [v2 msv_compactMapValues:&__block_literal_global_44];

  return v3;
}

- (id)msv_jsonValue
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"domain";
  v2 = [a1 domain];
  v9[0] = v2;
  v8[1] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "code")}];
  v9[1] = v3;
  v8[2] = @"userInfo";
  v4 = [a1 msv_userInfoJSONValue];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)msv_initWithJSONValue:()MSVJSONConvertible
{
  v4 = a3;
  if (_NSIsNSDictionary())
  {
    v5 = v4;
    if ([v5 count])
    {
      v6 = [v5 objectForKeyedSubscript:@"domain"];
      v7 = [v5 objectForKeyedSubscript:@"code"];
      v8 = [v7 integerValue];

      v9 = [v5 objectForKeyedSubscript:@"userInfo"];
      v10 = [v9 msv_compactMapValues:&__block_literal_global_2451];

      v11 = [a1 initWithDomain:v6 code:v8 userInfo:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end