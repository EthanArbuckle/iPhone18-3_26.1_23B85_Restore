@interface NSDictionary(MSVJSONConvertible)
- (id)msv_initWithJSONValue:()MSVJSONConvertible;
- (id)msv_jsonValue;
@end

@implementation NSDictionary(MSVJSONConvertible)

- (id)msv_jsonValue
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__NSDictionary_MSVJSONConvertible__msv_jsonValue__block_invoke;
  v4[3] = &unk_1E7981E98;
  v4[4] = self;
  v4[5] = a2;
  v2 = [self msv_mapValues:v4];

  return v2;
}

- (id)msv_initWithJSONValue:()MSVJSONConvertible
{
  v5 = a3;
  if (_NSIsNSDictionary())
  {
    v6 = v5;
    if ([v6 count])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__NSDictionary_MSVJSONConvertible__msv_initWithJSONValue___block_invoke;
      v9[3] = &unk_1E7981E98;
      v9[4] = self;
      v9[5] = a2;
      v7 = [v6 msv_mapValues:v9];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end