@interface DMCAppIdentifier
+ (id)newAppIdentifierWithIdentifier:(id)a3;
- (DMCAppIdentifier)initWithBundleID:(id)a3 personaID:(id)a4;
- (NSString)identifier;
@end

@implementation DMCAppIdentifier

+ (id)newAppIdentifierWithIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([0-9a-zA-Z\\-\\.]+)(\\s(.*))?" options:0 error:0];
  v6 = [v5 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 rangeAtIndex:1];
    v10 = [v3 substringWithRange:{v8, v9}];
    [v4 setBundleID:v10];

    if ([v7 numberOfRanges] != 4)
    {
      goto LABEL_12;
    }

    [v7 rangeAtIndex:2];
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = [v7 rangeAtIndex:3];
    v14 = [v3 substringWithRange:{v12, v13}];
    v15 = [v14 dataUsingEncoding:4];
    v24 = 0;
    v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v24];
    v17 = v24;
    if (v17)
    {
      v18 = *DMCLogObjects();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v26 = v3;
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "DMCAppIdentifier (%{public}@): Failed to create json from data with error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v20 = [v16 objectForKeyedSubscript:@"personaID"];
      [v4 setPersonaID:v20];
    }

    if (!v17)
    {
LABEL_12:
      v21 = v4;
      goto LABEL_13;
    }
  }

  else
  {
    v19 = *DMCLogObjects();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v3;
      _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "DMCAppIdentifier (%{public}@): Failed to find bundleID", buf, 0xCu);
    }
  }

  v21 = 0;
LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (DMCAppIdentifier)initWithBundleID:(id)a3 personaID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DMCAppIdentifier;
  v9 = [(DMCAppIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, a3);
    objc_storeStrong(&v10->_personaID, a4);
  }

  return v10;
}

- (NSString)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(DMCAppIdentifier *)self bundleID];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_new();
  v6 = [(DMCAppIdentifier *)self personaID];
  [v5 setObject:v6 forKeyedSubscript:@"personaID"];

  if ([v5 count])
  {
    v14 = 0;
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:0 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v8;
        _os_log_impl(&dword_1B1630000, v9, OS_LOG_TYPE_ERROR, "DMCAppIdentifier: Failed to create data from json object with error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
      [v4 appendFormat:@" %@", v10];
    }
  }

  v11 = [v4 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end