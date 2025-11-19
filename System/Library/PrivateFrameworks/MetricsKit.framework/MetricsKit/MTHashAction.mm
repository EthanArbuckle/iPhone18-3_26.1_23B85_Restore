@interface MTHashAction
- (MTHashAction)initWithField:(id)a3 configDictionary:(id)a4;
- (id)hashOf:(id)a3 userId:(id)a4;
- (id)performAction:(id)a3 context:(id)a4;
@end

@implementation MTHashAction

- (MTHashAction)initWithField:(id)a3 configDictionary:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = MTHashAction;
  v7 = [(MTTreatmentAction *)&v16 initWithField:a3 configDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"scheme"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKeyedSubscript:@"namespace"];
      if (v9)
      {
LABEL_7:
        v14 = [[MTIDScheme alloc] initWithNamespace:v9 options:v8];
        [(MTHashAction *)v7 setScheme:v14];

        goto LABEL_8;
      }
    }

    else
    {

      v8 = 0;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = +[MTFrameworkEnvironment sharedEnvironment];
    v12 = [v11 hostProcessBundleIdentifier];
    v13 = [(MTTreatmentAction *)v7 field];
    v9 = [v10 stringWithFormat:@"%@.%lx", v12, objc_msgSend(v13, "hash")];

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (id)hashOf:(id)a3 userId:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[MTFrameworkEnvironment sharedEnvironment];
  v9 = [v8 secretStore];

  v10 = [(MTHashAction *)self scheme];
  v25 = @"syncWaitTime";
  v26[0] = &unk_286A4C398;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [v9 secretForScheme:v10 options:v11];
  v22 = 0;
  v13 = [v12 resultWithTimeout:&v22 error:5.0];
  v14 = v22;

  if (v13)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v13 value];
    v17 = [v15 stringWithFormat:@"%@\n%@\n%@", v6, v16, v7];

    v18 = [v17 mt_SHA1Base62String];
  }

  else
  {
    v17 = MTMetricsKitOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [(MTHashAction *)self scheme];
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&dword_258F4B000, v17, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to retrieve secret salt for scheme %@", buf, 0xCu);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)performAction:(id)a3 context:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = MTHashAction;
  v7 = [(MTTreatmentAction *)&v14 performAction:a3 context:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 stringValue];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v8 = [v7 description];
  }

  v9 = v8;

  v7 = v9;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 metrics];
    v11 = [v10 objectForKey:@"userId"];

    v12 = [(MTHashAction *)self hashOf:v7 userId:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end