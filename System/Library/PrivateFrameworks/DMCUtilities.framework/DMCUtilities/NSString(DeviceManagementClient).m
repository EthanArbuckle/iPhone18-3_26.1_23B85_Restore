@interface NSString(DeviceManagementClient)
- (id)dmc_substringWithPattern:()DeviceManagementClient;
@end

@implementation NSString(DeviceManagementClient)

- (id)dmc_substringWithPattern:()DeviceManagementClient
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:a3 options:16 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[NSString(DeviceManagementClient) dmc_substringWithPattern:]";
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_ERROR, "%s Failed to create regex with error: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v8 = [v4 firstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 rangeAtIndex:1];
      v7 = [a1 substringWithRange:{v10, v11}];
    }

    else
    {
      v7 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

@end