@interface MXMUncacheConfiguration
+ (id)configWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation MXMUncacheConfiguration

+ (id)configWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = _MXMGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Invalid dictionary received. Unable to create MXMUncacheConfiguration.", buf, 2u);
    }

    if (a4)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"uncacheConfigDictionary is not a valid dictionary.";
      v7 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a4 = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v7];
    }
  }

  v8 = objc_alloc_init(MXMUncacheConfiguration);
  v9 = [v5 valueForKey:@"filepath"];

  if (v9)
  {
    v10 = [v5 valueForKey:@"filepath"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v32 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithFormat:@"%@ is not a string type.", @"filepath"];
      v33 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      *a4 = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v13];
    }

    v14 = [v5 valueForKey:@"filepath"];
    v15 = [v14 copy];
    [(MXMUncacheConfiguration *)v8 setFilepath:v15];
  }

  v16 = [v5 valueForKey:@"requiredForTestContinuation"];

  if (v16)
  {
    v17 = [v5 valueForKey:@"requiredForTestContinuation"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      v30 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v31 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a4 = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v20];
    }

    v21 = [v5 valueForKey:@"requiredForTestContinuation"];
    if ([v21 unsignedLongValue])
    {
      v22 = [v5 valueForKey:@"requiredForTestContinuation"];
      v23 = [v22 unsignedLongValue];

      if (v23 == 1)
      {
LABEL_18:
        v25 = [v5 valueForKey:@"requiredForTestContinuation"];
        -[MXMUncacheConfiguration setRequiredForTestContinuation:](v8, "setRequiredForTestContinuation:", [v25 BOOLValue]);

        goto LABEL_19;
      }

      v28 = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithFormat:@"%@ is not a BOOLean type.", @"requiredForTestContinuation"];
      v29 = v21;
      v24 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a4 = [NSError errorWithDomain:@"MXMUncacheConfigurationErrorDomain" code:1 userInfo:v24];
    }

    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

@end