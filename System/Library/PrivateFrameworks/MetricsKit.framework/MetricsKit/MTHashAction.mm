@interface MTHashAction
- (MTHashAction)initWithField:(id)field configDictionary:(id)dictionary;
- (id)hashOf:(id)of userId:(id)id;
- (id)performAction:(id)action context:(id)context;
@end

@implementation MTHashAction

- (MTHashAction)initWithField:(id)field configDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = MTHashAction;
  v7 = [(MTTreatmentAction *)&v16 initWithField:field configDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"scheme"];
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
    hostProcessBundleIdentifier = [v11 hostProcessBundleIdentifier];
    field = [(MTTreatmentAction *)v7 field];
    v9 = [v10 stringWithFormat:@"%@.%lx", hostProcessBundleIdentifier, objc_msgSend(field, "hash")];

    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

- (id)hashOf:(id)of userId:(id)id
{
  v26[1] = *MEMORY[0x277D85DE8];
  ofCopy = of;
  idCopy = id;
  v8 = +[MTFrameworkEnvironment sharedEnvironment];
  secretStore = [v8 secretStore];

  scheme = [(MTHashAction *)self scheme];
  v25 = @"syncWaitTime";
  v26[0] = &unk_286A4C398;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v12 = [secretStore secretForScheme:scheme options:v11];
  v22 = 0;
  v13 = [v12 resultWithTimeout:&v22 error:5.0];
  v14 = v22;

  if (v13)
  {
    v15 = MEMORY[0x277CCACA8];
    value = [v13 value];
    idCopy = [v15 stringWithFormat:@"%@\n%@\n%@", ofCopy, value, idCopy];

    mt_SHA1Base62String = [idCopy mt_SHA1Base62String];
  }

  else
  {
    idCopy = MTMetricsKitOSLog();
    if (os_log_type_enabled(idCopy, OS_LOG_TYPE_ERROR))
    {
      scheme2 = [(MTHashAction *)self scheme];
      *buf = 138412290;
      v24 = scheme2;
      _os_log_impl(&dword_258F4B000, idCopy, OS_LOG_TYPE_ERROR, "MetricsKit: Failed to retrieve secret salt for scheme %@", buf, 0xCu);
    }

    mt_SHA1Base62String = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return mt_SHA1Base62String;
}

- (id)performAction:(id)action context:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = MTHashAction;
  v7 = [(MTTreatmentAction *)&v14 performAction:action context:contextCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v7 stringValue];
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

    stringValue = [v7 description];
  }

  v9 = stringValue;

  v7 = v9;
LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    metrics = [contextCopy metrics];
    v11 = [metrics objectForKey:@"userId"];

    v12 = [(MTHashAction *)self hashOf:v7 userId:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end