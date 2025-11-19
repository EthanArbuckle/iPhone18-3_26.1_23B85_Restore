@interface MXMTerminateProcessConfiguration
+ (id)configWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation MXMTerminateProcessConfiguration

+ (id)configWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = _MXMGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Invalid dictionary received. Unable to create MXMTerminateProcessConfiguration.", buf, 2u);
    }

    if (a4)
    {
      v41 = NSLocalizedDescriptionKey;
      v42 = @"terminateProcessConfigDictionary is not a valid dictionary.";
      v7 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a4 = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v7];
    }
  }

  v8 = objc_alloc_init(MXMTerminateProcessConfiguration);
  v9 = [v5 valueForKey:@"processName"];

  if (v9)
  {
    v10 = [v5 valueForKey:@"processName"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v39 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithFormat:@"%@ is not a string type.", @"processName"];
      v40 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *a4 = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v13];
    }

    v14 = [v5 valueForKey:@"processName"];
    [(MXMTerminateProcessConfiguration *)v8 setProcessName:v14];
  }

  v15 = [v5 valueForKey:@"timeout"];

  if (v15)
  {
    v16 = [v5 valueForKey:@"timeout"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if ((v17 & 1) == 0)
    {
      v37 = NSLocalizedDescriptionKey;
      v18 = [NSString stringWithFormat:@"%@ is not a double type.", @"timeout"];
      v38 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a4 = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v19];
    }

    v20 = [v5 valueForKey:@"timeout"];
    [v20 doubleValue];
    [(MXMTerminateProcessConfiguration *)v8 setTimeout:?];
  }

  v21 = [v5 valueForKey:@"requiredForTestContinuation"];

  if (v21)
  {
    v22 = [v5 valueForKey:@"requiredForTestContinuation"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      v35 = NSLocalizedDescriptionKey;
      v24 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v36 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      *a4 = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v25];
    }

    v26 = [v5 valueForKey:@"requiredForTestContinuation"];
    if ([v26 unsignedLongValue])
    {
      v27 = [v5 valueForKey:@"requiredForTestContinuation"];
      v28 = [v27 unsignedLongValue];

      if (v28 == 1)
      {
LABEL_22:
        v30 = [v5 valueForKey:@"requiredForTestContinuation"];
        -[MXMTerminateProcessConfiguration setRequiredForTestContinuation:](v8, "setRequiredForTestContinuation:", [v30 BOOLValue]);

        goto LABEL_23;
      }

      v33 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v34 = v26;
      v29 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *a4 = [NSError errorWithDomain:@"MXMTerminateProcessConfigurationErrorDomain" code:1 userInfo:v29];
    }

    goto LABEL_22;
  }

LABEL_23:

  return v8;
}

@end