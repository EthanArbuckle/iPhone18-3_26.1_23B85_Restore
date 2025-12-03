@interface NSError(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
- (id)msv_jsonValue;
- (id)msv_userInfoJSONValue;
@end

@implementation NSError(MSVJSONConvertible)

- (id)msv_userInfoJSONValue
{
  userInfo = [self userInfo];
  v2 = [userInfo msv_filter:&__block_literal_global_42];

  v3 = [v2 msv_compactMapValues:&__block_literal_global_44];

  return v3;
}

- (id)msv_jsonValue
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"domain";
  domain = [self domain];
  v9[0] = domain;
  v8[1] = @"code";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  v9[1] = v3;
  v8[2] = @"userInfo";
  msv_userInfoJSONValue = [self msv_userInfoJSONValue];
  v9[2] = msv_userInfoJSONValue;
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
      integerValue = [v7 integerValue];

      v9 = [v5 objectForKeyedSubscript:@"userInfo"];
      v10 = [v9 msv_compactMapValues:&__block_literal_global_2451];

      v11 = [self initWithDomain:v6 code:integerValue userInfo:v10];
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