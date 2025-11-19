@interface FedStatsPluginTrialClient
- (BOOL)fetchAssets:(id)a3 error:(id *)a4;
- (FedStatsPluginTrialClient)initWithTask:(id)a3 error:(id *)a4;
- (NSDictionary)recipeDictionary;
- (id)assetURLForRecipe:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)deploymentIdentifierForRecipe:(id)a3;
- (id)downloadFactor:(id)a3 error:(id *)a4;
- (id)experimentIdentifierForRecipe:(id)a3;
- (id)namespaceIdentifierForRecipe:(id)a3;
- (id)recipeDictionaryForRecipe:(id)a3 error:(id *)a4;
- (id)recipeIdentifiers;
- (id)treatmentIdentifierForRecipe:(id)a3;
- (id)updateMetadataWithDPParameters:(id)a3;
- (void)loadRecipeWithError:(id *)a3;
- (void)removeAssets;
- (void)removeFactor:(id)a3;
@end

@implementation FedStatsPluginTrialClient

- (FedStatsPluginTrialClient)initWithTask:(id)a3 error:(id *)a4
{
  v7 = a3;
  v50.receiver = self;
  v50.super_class = FedStatsPluginTrialClient;
  v8 = [(FedStatsPluginTrialClient *)&v50 init];
  if (!v8)
  {
    goto LABEL_24;
  }

  v46 = a4;
  v9 = +[NSMutableDictionary dictionary];
  assetURLs = v8->_assetURLs;
  v8->_assetURLs = v9;

  v49 = [NSBundle bundleForClass:objc_opt_class()];
  v48 = [v49 pathForResource:@"FedStatsPluginAllowedNamespaces" ofType:@"plist"];
  v47 = [NSDictionary dictionaryWithContentsOfFile:?];
  v11 = [v47 objectForKey:@"allowed-namespaces"];
  if (![v11 count])
  {
LABEL_13:
    if (v46)
    {
      [FedStatsPluginError errorWithCode:300 description:@"Could not find any matching namespace on client"];
      v23 = 0;
      *v46 = v4 = 0;
    }

    else
    {
      v23 = 1;
    }

    goto LABEL_23;
  }

  v4 = 0;
  *&v12 = 138412546;
  v45 = v12;
  while (1)
  {
    v13 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v11 objectAtIndexedSubscript:v4];
      *buf = 138412290;
      v52 = v22;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Checking for namespace: %@", buf, 0xCu);
    }

    v14 = [v7 triClient];
    v15 = [v11 objectAtIndexedSubscript:v4];
    v16 = [v14 levelForFactor:@"recipe" withNamespaceName:v15];

    v17 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = v45;
      v52 = v16;
      v53 = 2112;
      v54 = @"recipe";
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Got level: %@ for factor %@", buf, 0x16u);
    }

    v18 = [v16 fileValue];
    if (([v18 hasPath] & 1) == 0)
    {

      goto LABEL_12;
    }

    v19 = [v16 fileValue];
    v20 = [v19 path];
    v21 = [v20 rangeOfString:@".recipe"];

    if (v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_12:

    v4 = (v4 + 1);
    if (v4 >= [v11 count])
    {
      goto LABEL_13;
    }
  }

  v24 = [v16 fileValue];
  v25 = [v24 path];
  v26 = [NSURL fileURLWithPath:v25];
  recipeURL = v8->_recipeURL;
  v8->_recipeURL = v26;

  [(FedStatsPluginTrialClient *)v8 loadRecipeWithError:v46];
  if (v8->_recipeDictionary)
  {
    v28 = [v11 objectAtIndexedSubscript:v4];
    namespaceIdentifier = v8->_namespaceIdentifier;
    v8->_namespaceIdentifier = v28;

    v30 = [v7 triClient];
    [v30 refresh];
    v31 = [v11 objectAtIndexedSubscript:v4];
    v32 = [v30 experimentIdentifiersWithNamespaceName:v31];

    if (v32)
    {
      v33 = [v32 experimentId];
      experimentIdentifier = v8->_experimentIdentifier;
      v8->_experimentIdentifier = v33;

      v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v32 deploymentId]);
      v36 = [v35 stringValue];
      deploymentIdentifier = v8->_deploymentIdentifier;
      v8->_deploymentIdentifier = v36;

      v38 = [v32 treatmentId];
    }

    else
    {
      v39 = v8->_experimentIdentifier;
      v8->_experimentIdentifier = 0;

      v40 = v8->_deploymentIdentifier;
      v8->_deploymentIdentifier = 0;

      v38 = 0;
    }

    treatmentIdentifier = v8->_treatmentIdentifier;
    v8->_treatmentIdentifier = v38;

    v42 = [v7 triClient];
    trialClient = v8->_trialClient;
    v8->_trialClient = v42;

    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v23 = 0;
LABEL_23:

  if (v23)
  {
LABEL_24:
    v4 = v8;
  }

  return v4;
}

- (NSDictionary)recipeDictionary
{
  recipeDictionary = self->_recipeDictionary;
  if (!recipeDictionary)
  {
    [(FedStatsPluginTrialClient *)self loadRecipeWithError:0];
    recipeDictionary = self->_recipeDictionary;
  }

  return recipeDictionary;
}

- (void)loadRecipeWithError:(id *)a3
{
  p_recipeURL = &self->_recipeURL;
  v6 = [NSData dataWithContentsOfURL:self->_recipeURL options:1 error:a3];
  if (v6)
  {
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:a3];
    recipeDictionary = self->_recipeDictionary;
    p_recipeDictionary = &self->_recipeDictionary;
    *p_recipeDictionary = v7;

    v10 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100002F60(p_recipeURL, p_recipeDictionary);
    }

    v11 = *p_recipeDictionary;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100002FE0(v12);
      }

      v13 = *p_recipeDictionary;
      *p_recipeDictionary = 0;

      if (a3)
      {
        *a3 = [FedStatsPluginError errorWithCode:300 description:@"Recipe is not dictionary format"];
      }
    }
  }

  else
  {
    v14 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100003024(v14);
    }
  }
}

- (id)updateMetadataWithDPParameters:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 setObject:&stru_100008378 forKeyedSubscript:kDPMetadataVersionHash];
  v5 = [(FedStatsPluginTrialClient *)self recipeDictionary];
  v6 = kDPMetadataDediscoTaskConfig;
  v7 = [v5 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];

  if (v7)
  {
    [v4 setObject:v7 forKey:v6];
    v8 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "New metadata: %@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100003068(v6, v8);
    }
  }

  return v4;
}

- (id)downloadFactor:(id)a3 error:(id *)a4
{
  v5 = a3;
  trialClient = self->_trialClient;
  v7 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  v8 = [(TRIClient *)trialClient factorLevelsWithNamespaceName:v7];

  v61 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = [v14 factor];
        v16 = [v15 name];
        v17 = [v16 isEqualToString:v5];

        if (v17)
        {
          v21 = [v14 level];
          v22 = [v21 fileValue];
          v23 = [v22 hasPath];

          if (v23)
          {
            v24 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = [v14 level];
              v26 = [v25 fileValue];
              v27 = [v26 path];
              *buf = 138412290;
              v64 = v27;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@ file exists.", buf, 0xCu);
            }

            v28 = [v14 level];
            v29 = [v28 fileValue];
            v20 = [v29 path];

            v19 = v9;
          }

          else
          {

            v30 = dispatch_semaphore_create(0);
            v31 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
              *buf = 138412546;
              v64 = v5;
              v65 = 2112;
              v66 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Downloading factor %@ for namespace %@", buf, 0x16u);
            }

            v33 = [[TRIDownloadOptions alloc] initWithAllowsCellular:0 discretionaryBehavior:0];
            v34 = self->_trialClient;
            v62 = v5;
            v35 = [NSArray arrayWithObjects:&v62 count:1];
            v36 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
            v37 = dispatch_get_global_queue(0, 0);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_100001C60;
            v56[3] = &unk_100008228;
            v57 = v5;
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_100001CC4;
            v53[3] = &unk_100008250;
            v38 = v57;
            v54 = v38;
            v19 = v30;
            v55 = v19;
            v51 = v33;
            [(TRIClient *)v34 downloadLevelsForFactors:v35 withNamespace:v36 queue:v37 options:v33 progress:v56 completion:v53];

            v39 = dispatch_time(0, 600000000000);
            dispatch_semaphore_wait(v19, v39);
            v40 = [(FedStatsPluginTrialClient *)self trialClient];
            [v40 refresh];

            v41 = [(FedStatsPluginTrialClient *)self trialClient];
            v42 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
            v43 = [v41 levelForFactor:v38 withNamespaceName:v42];

            v44 = [v43 fileValue];
            LOBYTE(v42) = [v44 hasPath];

            if (v42)
            {
              v45 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = [v43 fileValue];
                v47 = [v46 path];
                *buf = 138412546;
                v64 = v38;
                v65 = 2112;
                v66 = v47;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Downloaded file for %@: %@", buf, 0x16u);
              }

              v48 = [v43 fileValue];
              v20 = [v48 path];
            }

            else
            {
              v49 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
              v48 = [NSString stringWithFormat:@"Factor %@ of namespace %@ does not have a file downloaded", v38, v49];

              if (a4)
              {
                [FedStatsPluginError errorWithCode:300 description:v48];
                *a4 = v20 = 0;
              }

              else
              {
                v20 = 0;
              }
            }
          }

          goto LABEL_26;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  v19 = [NSString stringWithFormat:@"Could not find any matching factor %@ for namespace %@", v5, v18];

  if (a4)
  {
    [FedStatsPluginError errorWithCode:300 description:v19];
    *a4 = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

LABEL_26:

  return v20;
}

- (void)removeFactor:(id)a3
{
  v4 = a3;
  v5 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000031E4(v4, self);
  }

  trialClient = self->_trialClient;
  v14 = v4;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001EAC;
  v11[3] = &unk_100008250;
  v12 = v4;
  v13 = self;
  v10 = v4;
  [(TRIClient *)trialClient removeLevelsForFactors:v7 withNamespace:v8 queue:v9 completion:v11];
}

- (id)recipeIdentifiers
{
  v2 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)assetURLForRecipe:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v12 = [(FedStatsPluginTrialClient *)self assetURLs];
    v13 = [v12 objectForKey:v8];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v15 = [(FedStatsPluginTrialClient *)self downloadFactor:v8 error:a5];
      if (v15)
      {
        v16 = [(FedStatsPluginTrialClient *)self assetURLs];
        v17 = [NSURL fileURLWithPath:v15];
        [v16 setObject:v17 forKey:v8];

        v18 = [(FedStatsPluginTrialClient *)self assetURLs];
        v14 = [v18 objectForKey:v8];
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else if (a5)
  {
    [FedStatsPluginError errorWithCode:300 description:@"Recipe identifier doesn't match the Trial client"];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)recipeDictionaryForRecipe:(id)a3 error:(id *)a4
{
  v6 = [(FedStatsPluginTrialClient *)self recipeDictionary];

  if (!v6)
  {
    [(FedStatsPluginTrialClient *)self loadRecipeWithError:a4];
  }

  return [(FedStatsPluginTrialClient *)self recipeDictionary];
}

- (id)treatmentIdentifierForRecipe:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)experimentIdentifierForRecipe:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(FedStatsPluginTrialClient *)self experimentIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)deploymentIdentifierForRecipe:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(FedStatsPluginTrialClient *)self deploymentIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)namespaceIdentifierForRecipe:(id)a3
{
  v4 = a3;
  v5 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)fetchAssets:(id)a3 error:(id *)a4
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
        v18 = 0;
        v13 = [(FedStatsPluginTrialClient *)self assetURLForRecipe:v12 forKey:v11 error:&v18];
        v14 = v18;

        if (!v13)
        {
          if (a4)
          {
            v16 = [NSString stringWithFormat:@"Cannot get path for asset '%@'", v11];
            *a4 = [FedStatsPluginError errorWithCode:300 underlyingError:v14 description:v16];
          }

          v15 = 0;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  return v15;
}

- (void)removeAssets
{
  v3 = [(FedStatsPluginTrialClient *)self assetURLs];
  v4 = [v3 allKeys];

  v5 = [v4 count];
  v6 = +[FedStatsPluginLog logger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_1000033A4(v4, self, v6);
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1000027A0;
    v17[4] = sub_1000027B0;
    v18 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    trialClient = self->_trialClient;
    v9 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
    v10 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000027B8;
    v12[3] = &unk_100008278;
    v12[4] = &v13;
    v12[5] = v17;
    [(TRIClient *)trialClient removeLevelsForFactors:v4 withNamespace:v9 queue:v10 completion:v12];

    if ((v14[3] & 1) == 0)
    {
      v11 = +[FedStatsPluginLog logger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000346C(v11);
      }
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(v17, 8);
  }

  else
  {
    if (v7)
    {
      sub_1000034B0(self);
    }
  }
}

@end