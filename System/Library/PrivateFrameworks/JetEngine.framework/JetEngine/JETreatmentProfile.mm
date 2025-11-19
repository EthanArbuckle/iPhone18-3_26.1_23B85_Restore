@interface JETreatmentProfile
+ (id)treatmentProfileWithConfiguration:(id)a3 topic:(id)a4;
- (JETreatmentProfile)initWithConfigDictionary:(id)a3 topic:(id)a4;
- (id)performTreatments:(id)a3;
@end

@implementation JETreatmentProfile

+ (id)treatmentProfileWithConfiguration:(id)a3 topic:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = [[JETreatmentProfile alloc] initWithConfigDictionary:v8 topic:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (JETreatmentProfile)initWithConfigDictionary:(id)a3 topic:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = JETreatmentProfile;
  v8 = [(JETreatmentProfile *)&v33 init];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = [v6 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && [v10 integerValue] > 1)
  {
    v14 = [v6 objectForKeyedSubscript:@"treatments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"treatments"];

    if (v16 && !v15)
    {
      v11 = JEMetricsOSLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v12 = "JetEngine: Treatment profile doesn't have valid treatments configuration";
      goto LABEL_9;
    }

    v27 = v10;
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [JETreatment treatmentWithConfiguration:*(*(&v28 + 1) + 8 * i) topic:v7];
          if (v23)
          {
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v20);
    }

    v24 = [v17 copy];
    treatments = v8->_treatments;
    v8->_treatments = v24;

LABEL_28:
    v13 = v8;
    goto LABEL_29;
  }

  v11 = JEMetricsOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v12 = "JetEngine: Treatment profile configuration is empty or the format version is not supported";
LABEL_9:
    _os_log_impl(&dword_1AB012000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
  }

LABEL_10:

  v13 = 0;
LABEL_29:

  return v13;
}

- (id)performTreatments:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (self)
  {
    treatments = self->_treatments;
  }

  else
  {
    treatments = 0;
  }

  v6 = treatments;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v8 = v4;
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
    v8 = v4;
    while (2)
    {
      v11 = 0;
      v12 = v8;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        if (!v12)
        {
          v8 = 0;
          goto LABEL_13;
        }

        v8 = [*(*(&v14 + 1) + 8 * v11) performTreatment:{v12, v14}];

        ++v11;
        v12 = v8;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

@end