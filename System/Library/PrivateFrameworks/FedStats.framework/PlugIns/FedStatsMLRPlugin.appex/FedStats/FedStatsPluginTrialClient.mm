@interface FedStatsPluginTrialClient
- (BOOL)fetchAssets:(id)assets error:(id *)error;
- (FedStatsPluginTrialClient)initWithTask:(id)task error:(id *)error;
- (NSDictionary)recipeDictionary;
- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error;
- (id)deploymentIdentifierForRecipe:(id)recipe;
- (id)downloadFactor:(id)factor error:(id *)error;
- (id)experimentIdentifierForRecipe:(id)recipe;
- (id)namespaceIdentifierForRecipe:(id)recipe;
- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error;
- (id)recipeIdentifiers;
- (id)treatmentIdentifierForRecipe:(id)recipe;
- (id)updateMetadataWithDPParameters:(id)parameters;
- (void)loadRecipeWithError:(id *)error;
- (void)removeAssets;
- (void)removeFactor:(id)factor;
@end

@implementation FedStatsPluginTrialClient

- (FedStatsPluginTrialClient)initWithTask:(id)task error:(id *)error
{
  taskCopy = task;
  v50.receiver = self;
  v50.super_class = FedStatsPluginTrialClient;
  v8 = [(FedStatsPluginTrialClient *)&v50 init];
  if (!v8)
  {
    goto LABEL_24;
  }

  errorCopy = error;
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
    if (errorCopy)
    {
      [FedStatsPluginError errorWithCode:300 description:@"Could not find any matching namespace on client"];
      v23 = 0;
      *errorCopy = v4 = 0;
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

    triClient = [taskCopy triClient];
    v15 = [v11 objectAtIndexedSubscript:v4];
    v16 = [triClient levelForFactor:@"recipe" withNamespaceName:v15];

    v17 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = v45;
      v52 = v16;
      v53 = 2112;
      v54 = @"recipe";
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Got level: %@ for factor %@", buf, 0x16u);
    }

    fileValue = [v16 fileValue];
    if (([fileValue hasPath] & 1) == 0)
    {

      goto LABEL_12;
    }

    fileValue2 = [v16 fileValue];
    path = [fileValue2 path];
    v21 = [path rangeOfString:@".recipe"];

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

  fileValue3 = [v16 fileValue];
  path2 = [fileValue3 path];
  v26 = [NSURL fileURLWithPath:path2];
  recipeURL = v8->_recipeURL;
  v8->_recipeURL = v26;

  [(FedStatsPluginTrialClient *)v8 loadRecipeWithError:errorCopy];
  if (v8->_recipeDictionary)
  {
    v28 = [v11 objectAtIndexedSubscript:v4];
    namespaceIdentifier = v8->_namespaceIdentifier;
    v8->_namespaceIdentifier = v28;

    triClient2 = [taskCopy triClient];
    [triClient2 refresh];
    v31 = [v11 objectAtIndexedSubscript:v4];
    v32 = [triClient2 experimentIdentifiersWithNamespaceName:v31];

    if (v32)
    {
      experimentId = [v32 experimentId];
      experimentIdentifier = v8->_experimentIdentifier;
      v8->_experimentIdentifier = experimentId;

      v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v32 deploymentId]);
      stringValue = [v35 stringValue];
      deploymentIdentifier = v8->_deploymentIdentifier;
      v8->_deploymentIdentifier = stringValue;

      treatmentId = [v32 treatmentId];
    }

    else
    {
      v39 = v8->_experimentIdentifier;
      v8->_experimentIdentifier = 0;

      v40 = v8->_deploymentIdentifier;
      v8->_deploymentIdentifier = 0;

      treatmentId = 0;
    }

    treatmentIdentifier = v8->_treatmentIdentifier;
    v8->_treatmentIdentifier = treatmentId;

    triClient3 = [taskCopy triClient];
    trialClient = v8->_trialClient;
    v8->_trialClient = triClient3;

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

- (void)loadRecipeWithError:(id *)error
{
  p_recipeURL = &self->_recipeURL;
  v6 = [NSData dataWithContentsOfURL:self->_recipeURL options:1 error:error];
  if (v6)
  {
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:error];
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

      if (error)
      {
        *error = [FedStatsPluginError errorWithCode:300 description:@"Recipe is not dictionary format"];
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

- (id)updateMetadataWithDPParameters:(id)parameters
{
  v4 = [parameters mutableCopy];
  [v4 setObject:&stru_100008378 forKeyedSubscript:kDPMetadataVersionHash];
  recipeDictionary = [(FedStatsPluginTrialClient *)self recipeDictionary];
  v6 = kDPMetadataDediscoTaskConfig;
  v7 = [recipeDictionary objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];

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

- (id)downloadFactor:(id)factor error:(id *)error
{
  factorCopy = factor;
  trialClient = self->_trialClient;
  namespaceIdentifier = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  v8 = [(TRIClient *)trialClient factorLevelsWithNamespaceName:namespaceIdentifier];

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
        factor = [v14 factor];
        name = [factor name];
        v17 = [name isEqualToString:factorCopy];

        if (v17)
        {
          level = [v14 level];
          fileValue = [level fileValue];
          hasPath = [fileValue hasPath];

          if (hasPath)
          {
            v24 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              level2 = [v14 level];
              fileValue2 = [level2 fileValue];
              path = [fileValue2 path];
              *buf = 138412290;
              v64 = path;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@ file exists.", buf, 0xCu);
            }

            level3 = [v14 level];
            fileValue3 = [level3 fileValue];
            path2 = [fileValue3 path];

            v19 = v9;
          }

          else
          {

            v30 = dispatch_semaphore_create(0);
            v31 = +[FedStatsPluginLog logger];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              namespaceIdentifier2 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
              *buf = 138412546;
              v64 = factorCopy;
              v65 = 2112;
              v66 = namespaceIdentifier2;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Downloading factor %@ for namespace %@", buf, 0x16u);
            }

            v33 = [[TRIDownloadOptions alloc] initWithAllowsCellular:0 discretionaryBehavior:0];
            v34 = self->_trialClient;
            v62 = factorCopy;
            v35 = [NSArray arrayWithObjects:&v62 count:1];
            namespaceIdentifier3 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
            v37 = dispatch_get_global_queue(0, 0);
            v56[0] = _NSConcreteStackBlock;
            v56[1] = 3221225472;
            v56[2] = sub_100001C60;
            v56[3] = &unk_100008228;
            v57 = factorCopy;
            v53[0] = _NSConcreteStackBlock;
            v53[1] = 3221225472;
            v53[2] = sub_100001CC4;
            v53[3] = &unk_100008250;
            v38 = v57;
            v54 = v38;
            v19 = v30;
            v55 = v19;
            v51 = v33;
            [(TRIClient *)v34 downloadLevelsForFactors:v35 withNamespace:namespaceIdentifier3 queue:v37 options:v33 progress:v56 completion:v53];

            v39 = dispatch_time(0, 600000000000);
            dispatch_semaphore_wait(v19, v39);
            trialClient = [(FedStatsPluginTrialClient *)self trialClient];
            [trialClient refresh];

            trialClient2 = [(FedStatsPluginTrialClient *)self trialClient];
            namespaceIdentifier4 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
            v43 = [trialClient2 levelForFactor:v38 withNamespaceName:namespaceIdentifier4];

            fileValue4 = [v43 fileValue];
            LOBYTE(namespaceIdentifier4) = [fileValue4 hasPath];

            if (namespaceIdentifier4)
            {
              v45 = +[FedStatsPluginLog logger];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                fileValue5 = [v43 fileValue];
                path3 = [fileValue5 path];
                *buf = 138412546;
                v64 = v38;
                v65 = 2112;
                v66 = path3;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Downloaded file for %@: %@", buf, 0x16u);
              }

              fileValue6 = [v43 fileValue];
              path2 = [fileValue6 path];
            }

            else
            {
              namespaceIdentifier5 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
              fileValue6 = [NSString stringWithFormat:@"Factor %@ of namespace %@ does not have a file downloaded", v38, namespaceIdentifier5];

              if (error)
              {
                [FedStatsPluginError errorWithCode:300 description:fileValue6];
                *error = path2 = 0;
              }

              else
              {
                path2 = 0;
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

  namespaceIdentifier6 = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  v19 = [NSString stringWithFormat:@"Could not find any matching factor %@ for namespace %@", factorCopy, namespaceIdentifier6];

  if (error)
  {
    [FedStatsPluginError errorWithCode:300 description:v19];
    *error = path2 = 0;
  }

  else
  {
    path2 = 0;
  }

LABEL_26:

  return path2;
}

- (void)removeFactor:(id)factor
{
  factorCopy = factor;
  v5 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000031E4(factorCopy, self);
  }

  trialClient = self->_trialClient;
  v14 = factorCopy;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  namespaceIdentifier = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  v9 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001EAC;
  v11[3] = &unk_100008250;
  v12 = factorCopy;
  selfCopy = self;
  v10 = factorCopy;
  [(TRIClient *)trialClient removeLevelsForFactors:v7 withNamespace:namespaceIdentifier queue:v9 completion:v11];
}

- (id)recipeIdentifiers
{
  treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v5 = treatmentIdentifier;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error
{
  keyCopy = key;
  recipeCopy = recipe;
  treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v11 = [recipeCopy isEqualToString:treatmentIdentifier];

  if (v11)
  {
    assetURLs = [(FedStatsPluginTrialClient *)self assetURLs];
    v13 = [assetURLs objectForKey:keyCopy];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v15 = [(FedStatsPluginTrialClient *)self downloadFactor:keyCopy error:error];
      if (v15)
      {
        assetURLs2 = [(FedStatsPluginTrialClient *)self assetURLs];
        v17 = [NSURL fileURLWithPath:v15];
        [assetURLs2 setObject:v17 forKey:keyCopy];

        assetURLs3 = [(FedStatsPluginTrialClient *)self assetURLs];
        v14 = [assetURLs3 objectForKey:keyCopy];
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else if (error)
  {
    [FedStatsPluginError errorWithCode:300 description:@"Recipe identifier doesn't match the Trial client"];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error
{
  recipeDictionary = [(FedStatsPluginTrialClient *)self recipeDictionary];

  if (!recipeDictionary)
  {
    [(FedStatsPluginTrialClient *)self loadRecipeWithError:error];
  }

  return [(FedStatsPluginTrialClient *)self recipeDictionary];
}

- (id)treatmentIdentifierForRecipe:(id)recipe
{
  recipeCopy = recipe;
  treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [recipeCopy isEqualToString:treatmentIdentifier];

  if (v6)
  {
    treatmentIdentifier2 = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  }

  else
  {
    treatmentIdentifier2 = 0;
  }

  return treatmentIdentifier2;
}

- (id)experimentIdentifierForRecipe:(id)recipe
{
  recipeCopy = recipe;
  treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [recipeCopy isEqualToString:treatmentIdentifier];

  if (v6)
  {
    experimentIdentifier = [(FedStatsPluginTrialClient *)self experimentIdentifier];
  }

  else
  {
    experimentIdentifier = 0;
  }

  return experimentIdentifier;
}

- (id)deploymentIdentifierForRecipe:(id)recipe
{
  recipeCopy = recipe;
  treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [recipeCopy isEqualToString:treatmentIdentifier];

  if (v6)
  {
    deploymentIdentifier = [(FedStatsPluginTrialClient *)self deploymentIdentifier];
  }

  else
  {
    deploymentIdentifier = 0;
  }

  return deploymentIdentifier;
}

- (id)namespaceIdentifierForRecipe:(id)recipe
{
  recipeCopy = recipe;
  treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
  v6 = [recipeCopy isEqualToString:treatmentIdentifier];

  if (v6)
  {
    namespaceIdentifier = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
  }

  else
  {
    namespaceIdentifier = 0;
  }

  return namespaceIdentifier;
}

- (BOOL)fetchAssets:(id)assets error:(id *)error
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  assetsCopy = assets;
  v7 = [assetsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(assetsCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        treatmentIdentifier = [(FedStatsPluginTrialClient *)self treatmentIdentifier];
        v18 = 0;
        v13 = [(FedStatsPluginTrialClient *)self assetURLForRecipe:treatmentIdentifier forKey:v11 error:&v18];
        v14 = v18;

        if (!v13)
        {
          if (error)
          {
            v16 = [NSString stringWithFormat:@"Cannot get path for asset '%@'", v11];
            *error = [FedStatsPluginError errorWithCode:300 underlyingError:v14 description:v16];
          }

          v15 = 0;
          goto LABEL_13;
        }
      }

      v8 = [assetsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  assetURLs = [(FedStatsPluginTrialClient *)self assetURLs];
  allKeys = [assetURLs allKeys];

  v5 = [allKeys count];
  v6 = +[FedStatsPluginLog logger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_1000033A4(allKeys, self, v6);
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
    namespaceIdentifier = [(FedStatsPluginTrialClient *)self namespaceIdentifier];
    v10 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000027B8;
    v12[3] = &unk_100008278;
    v12[4] = &v13;
    v12[5] = v17;
    [(TRIClient *)trialClient removeLevelsForFactors:allKeys withNamespace:namespaceIdentifier queue:v10 completion:v12];

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