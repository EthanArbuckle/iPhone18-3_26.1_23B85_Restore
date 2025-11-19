@interface CPLMomentShareFeature
- (BOOL)disableFeatureInStore:(id)a3 error:(id *)a4;
- (BOOL)enableFeatureInStore:(id)a3 error:(id *)a4;
- (BOOL)handleScopeWhenFeatureIsDisabled:(id)a3 scopeType:(int64_t)a4 store:(id)a5 error:(id *)a6;
@end

@implementation CPLMomentShareFeature

- (BOOL)handleScopeWhenFeatureIsDisabled:(id)a3 scopeType:(int64_t)a4 store:(id)a5 error:(id *)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    context = objc_autoreleasePoolPush();
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLFeaturesOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v9 scopeIdentifier];
        v13 = [CPLScopeChange descriptionForScopeType:a4];
        *buf = 138412546;
        *&buf[4] = v12;
        v40 = 2112;
        v41 = v13;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEFAULT, "Automatically disabling %@ because feature for %@ is disabled", buf, 0x16u);
      }
    }

    v14 = [v10 scopes];
    v15 = [v10 downloadQueue];
    v16 = [MEMORY[0x1E695DF00] date];
    v17 = [v14 flagsForScope:v9];
    [v17 setValue:1 forFlag:262152];
    v38 = 0;
    v18 = [v14 updateFlags:v17 forScope:v9 error:&v38];
    v19 = v38;
    v20 = v19;
    if (v18)
    {
      v37 = v19;
      v21 = [v14 setDisabledDate:v16 forScope:v9 error:&v37];
      v22 = v37;

      if (v21)
      {
        v34 = a6;
        v23 = 0;
        v20 = v22;
        do
        {
          v24 = v20;
          v25 = v23;
          *buf = 0;
          v26 = [v9 localIndex];
          v36 = v20;
          v21 = [v15 deleteRecordsForScopeIndex:v26 maxCount:100 deletedCount:buf error:&v36];
          v20 = v36;

          if (!v21)
          {
            break;
          }

          v23 = *buf + v25;
        }

        while (*buf > 0);
        if (v25 > 0)
        {
          v27 = v21;
        }

        else
        {
          v27 = 0;
        }

        if (v27 == 1)
        {
          a6 = v34;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v28 = __CPLFeaturesOSLogDomain();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v9 scopeIdentifier];
              *buf = 134218242;
              *&buf[4] = v25;
              v40 = 2112;
              v41 = v29;
              v30 = v29;
              _os_log_impl(&dword_1DC05A000, v28, OS_LOG_TYPE_DEFAULT, "Removed %ld background downloads from queue for %@", buf, 0x16u);
            }
          }

          LOBYTE(v21) = 1;
        }

        else
        {
          a6 = v34;
        }
      }

      else
      {
        v20 = v22;
      }
    }

    else
    {
      LOBYTE(v21) = 0;
    }

    objc_autoreleasePoolPop(context);
    if (a6 && (v21 & 1) == 0)
    {
      v31 = v20;
      LOBYTE(v21) = 0;
      *a6 = v20;
    }
  }

  else
  {
    v20 = 0;
    LOBYTE(v21) = 1;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)enableFeatureInStore:(id)a3 error:(id *)a4
{
  v25 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = [v26 scopes];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v4 enumeratorForScopesIncludeInactive:0];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v32;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v31 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = [v10 scopeType];
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v13 = [v4 flagsForScope:v10];
        if ([v13 valueForFlag:0x40000])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v14 = __CPLFeaturesOSLogDomain();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v10 scopeIdentifier];
              *buf = 138412290;
              v36 = v15;
              _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Enabling %@", buf, 0xCu);
            }
          }

          [v13 setValue:0 forFlag:{262152, v25}];
          v30 = v7;
          v16 = [v4 updateFlags:v13 forScope:v10 error:&v30];
          v17 = v30;

          if ((v16 & 1) == 0)
          {

            objc_autoreleasePoolPop(v11);
            v7 = v17;
LABEL_28:

            v22 = 0;
            goto LABEL_29;
          }

          v29 = v17;
          v18 = [v4 setDisabledDate:0 forScope:v10 error:&v29];
          v7 = v29;

          objc_autoreleasePoolPop(v11);
          if ((v18 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_20;
        }
      }

      else if (!v12)
      {
        v28 = v7;
        v19 = [v4 setScopeNeedsUpdateFromTransport:v10 error:&v28];
        v20 = v28;

        objc_autoreleasePoolPop(v11);
        v7 = v20;
        if ((v19 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      objc_autoreleasePoolPop(v11);
LABEL_20:
      if (v6 == ++v9)
      {
        v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_24;
      }
    }
  }

  v7 = 0;
LABEL_24:

  if (v25)
  {
    v21 = v7;
    *v25 = v7;
  }

  v22 = 1;
LABEL_29:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)disableFeatureInStore:(id)a3 error:(id *)a4
{
  v33 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 scopes];
  v34 = v4;
  v6 = [v4 downloadQueue];
  v37 = [MEMORY[0x1E695DF00] date];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [v5 enumeratorForScopesIncludeInactive:0];
  v7 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v43;
    v35 = v5;
LABEL_3:
    v11 = 0;
    v36 = v8;
    while (1)
    {
      if (*v43 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v42 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      if (([v12 scopeType] & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v14 = __CPLFeaturesOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 scopeIdentifier];
            *buf = 138412290;
            *&buf[4] = v15;
            _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_DEFAULT, "Disabling %@", buf, 0xCu);
          }
        }

        v16 = [v5 flagsForScope:{v12, v33}];
        [v16 setValue:1 forFlag:262152];
        v41 = v9;
        v17 = [v5 updateFlags:v16 forScope:v12 error:&v41];
        v18 = v41;

        if (!v17)
        {
          v9 = v18;
LABEL_34:

          objc_autoreleasePoolPop(v13);
LABEL_35:

          v30 = 0;
          goto LABEL_36;
        }

        v40 = v18;
        v19 = [v5 setDisabledDate:v37 forScope:v12 error:&v40];
        v9 = v40;

        if (!v19)
        {
          goto LABEL_34;
        }

        v20 = v10;
        v21 = 0;
        do
        {
          v22 = v9;
          v23 = v21;
          *buf = 0;
          v24 = [v12 localIndex];
          v39 = v9;
          v25 = [v6 deleteRecordsForScopeIndex:v24 maxCount:100 deletedCount:buf error:&v39];
          v9 = v39;

          if (!v25)
          {
            break;
          }

          v21 = *buf + v23;
        }

        while (*buf > 0);
        if (v23 > 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (v26 != 1 || (_CPLSilentLogging & 1) != 0)
        {

          objc_autoreleasePoolPop(v13);
          v10 = v20;
          v5 = v35;
          v8 = v36;
          if ((v25 & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_26;
        }

        v27 = __CPLFeaturesOSLogDomain();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v12 scopeIdentifier];
          *buf = 134218242;
          *&buf[4] = v23;
          v47 = 2112;
          v48 = v28;
          _os_log_impl(&dword_1DC05A000, v27, OS_LOG_TYPE_DEFAULT, "Removed %ld background downloads from queue for %@", buf, 0x16u);
        }

        v10 = v20;
        v5 = v35;
        v8 = v36;
      }

      objc_autoreleasePoolPop(v13);
LABEL_26:
      if (++v11 == v8)
      {
        v8 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_30;
      }
    }
  }

  v9 = 0;
LABEL_30:

  if (v33)
  {
    v29 = v9;
    *v33 = v9;
  }

  v30 = 1;
LABEL_36:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

@end