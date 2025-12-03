@interface FedStatsMLRPlugin
+ (id)performWithTrialClient:(id)client outError:(id *)error;
- (id)performTask:(id)task outError:(id *)error;
- (id)performTrialTask:(id)task outError:(id *)error;
- (void)stop;
@end

@implementation FedStatsMLRPlugin

- (id)performTask:(id)task outError:(id *)error
{
  taskCopy = task;
  v6 = objc_opt_new();
  parameters = [taskCopy parameters];
  v8 = [parameters stringValueForKey:@"namespaceID" defaultValue:&stru_100008378];
  [v6 setNamespaceIdentifier:v8];

  namespaceIdentifier = [v6 namespaceIdentifier];
  v10 = [namespaceIdentifier isEqualToString:&stru_100008378];

  if (v10)
  {
    v11 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000035BC(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (error)
    {
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    parameters2 = [taskCopy parameters];
    v21 = [parameters2 stringValueForKey:@"recipeURL" defaultValue:&stru_100008378];

    if ([v21 isEqualToString:&stru_100008378])
    {
      v22 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100003544(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      if (error)
      {
        *error = v19 = 0;
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

      v31 = [objc_opt_class() performWithTrialClient:v6 outError:error];
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

- (id)performTrialTask:(id)task outError:(id *)error
{
  taskCopy = task;
  v6 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100003634();
  }

  v7 = [[FedStatsPluginTrialClient alloc] initWithTask:taskCopy error:error];
  if (v7)
  {
    v8 = [objc_opt_class() performWithTrialClient:v7 outError:error];
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

+ (id)performWithTrialClient:(id)client outError:(id *)error
{
  clientCopy = client;
  recipeIdentifiers = [clientCopy recipeIdentifiers];
  firstObject = [recipeIdentifiers firstObject];

  recipeURL = [clientCopy recipeURL];

  v8 = +[FedStatsPluginLog logger];
  v9 = v8;
  if (recipeURL)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000036EC();
    }

    v10 = [FedStatsPluginEngine runAllRecipesWithAssetProvider:clientCopy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    allValues = [v10 allValues];
    v12 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v14 += [*(*(&v27 + 1) + 8 * i) unsignedIntegerValue];
        }

        v13 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
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
    [FedStatsPluginTelemetry reportPluginForAssetProvider:clientCopy recipeIdentifier:firstObject withError:v10];
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