@interface NSError
@end

@implementation NSError

id __63__NSError_MPCPlaybackEngineEventPayload__mpc_userInfoJSONValue__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (!_NSIsNSString())
  {
    v7 = 0;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E696AA08]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_10:
      v6 = [v5 mpc_jsonValue];
      goto LABEL_12;
    }
  }

  if (![v4 isEqualToString:*MEMORY[0x1E696A750]] || !_NSIsNSArray())
  {
    if (![v4 isEqualToString:*MEMORY[0x1E696A998]] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v6 = _MPCJSONSanitizedValue(v5);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v6 = [v5 msv_compactMap:&__block_literal_global_64];
LABEL_12:
  v7 = v6;
LABEL_13:

  return v7;
}

id __63__NSError_MPCPlaybackEngineEventPayload__mpc_userInfoJSONValue__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mpc_jsonValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __68__NSError_MPCPlaybackEngineEventPayload__mpc_userInfoFromJSONValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E696AA08]])
  {
    v6 = MEMORY[0x1E696ABC0];
LABEL_3:
    v7 = [v6 payloadValueFromJSONValue:v5];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E696A750]])
  {
    v7 = [v5 msv_map:&__block_literal_global_69];
  }

  else
  {
    if ([v4 isEqualToString:*MEMORY[0x1E696A998]])
    {
      v6 = MEMORY[0x1E695DFF8];
      goto LABEL_3;
    }

    v7 = v5;
  }

LABEL_9:
  v8 = v7;

  return v8;
}

@end