@interface FedStatsMLRPlugin
+ (id)performWithTrialClient:(id)a3 outError:(id *)a4;
- (id)performTask:(id)a3 outError:(id *)a4;
- (id)performTrialTask:(id)a3 outError:(id *)a4;
- (void)stop;
@end

@implementation FedStatsMLRPlugin

- (id)performTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 parameters];
  v8 = [v7 stringValueForKey:@"namespaceID" defaultValue:&stru_100008378];
  [v6 setNamespaceIdentifier:v8];

  v9 = [v6 namespaceIdentifier];
  v10 = [v9 isEqualToString:&stru_100008378];

  if (v10)
  {
    v11 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000035BC(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (a4)
    {
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = [v5 parameters];
    v21 = [v20 stringValueForKey:@"recipeURL" defaultValue:&stru_100008378];

    if ([v21 isEqualToString:&stru_100008378])
    {
      v22 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100003544(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      if (a4)
      {
        *a4 = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v30 = [NSURL URLWithString:v21];
      [v6 setRecipeURL:v30];

      v31 = [objc_opt_class() performWithTrialClient:v6 outError:a4];
      if (v31)
      {
        v19 = [[MLRTaskResult alloc] initWithJSONResult:&__NSDictionary0__struct unprivatizedVector:0];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  return v19;
}

- (id)performTrialTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100003634();
  }

  v7 = [[FedStatsPluginTrialClient alloc] initWithTask:v5 error:a4];
  if (v7)
  {
    v8 = [objc_opt_class() performWithTrialClient:v7 outError:a4];
  }

  else
  {
    v9 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000036A8(v9);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)performWithTrialClient:(id)a3 outError:(id *)a4
{
  v4 = a3;
  v5 = [v4 recipeIdentifiers];
  v6 = [v5 firstObject];

  v7 = [v4 recipeURL];

  v8 = +[FedStatsPluginLog logger];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000036EC();
    }

    v10 = [FedStatsPluginEngine runAllRecipesWithAssetProvider:v4];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v10 allValues];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v14 += [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v25 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10000372C();
    }

    v24 = objc_opt_new();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000037A0(v9, v17, v18, v19, v20, v21, v22, v23);
    }

    v10 = [FedStatsPluginError errorWithCode:100 description:@"Could not fetch recipeAttachment from Trial Client for registered namespaces"];
    [FedStatsPluginTelemetry reportPluginForAssetProvider:v4 recipeIdentifier:v6 withError:v10];
    v24 = 0;
  }

  return v24;
}

- (void)stop
{
  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100003818();
  }
}

@end