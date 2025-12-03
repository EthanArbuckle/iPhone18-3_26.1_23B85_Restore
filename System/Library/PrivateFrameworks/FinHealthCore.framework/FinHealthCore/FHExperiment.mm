@interface FHExperiment
- (FHExperiment)initWithClient:(id)client namespaceName:(id)name setRefresh:(BOOL)refresh delegate:(id)delegate;
- (FHTRIClientUpdateDelegate)delegate;
- (id)getDirectoryForFactor:(id)factor;
- (id)getFilePathForFactor:(id)factor;
- (id)getLevelForFactor:(id)factor;
- (id)getTrialIdForFactor:(id)factor;
@end

@implementation FHExperiment

- (FHExperiment)initWithClient:(id)client namespaceName:(id)name setRefresh:(BOOL)refresh delegate:(id)delegate
{
  refreshCopy = refresh;
  clientCopy = client;
  nameCopy = name;
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = FHExperiment;
  v13 = [(FHExperiment *)&v27 init];
  if (v13)
  {
    if (clientCopy)
    {
      client = clientCopy;
    }

    else
    {
      client = [MEMORY[0x277D73660] client];
    }

    triClient = v13->_triClient;
    v13->_triClient = client;

    v16 = [nameCopy copy];
    namespaceName = v13->_namespaceName;
    v13->_namespaceName = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    factorMetadatas = v13->_factorMetadatas;
    v13->_factorMetadatas = v18;

    objc_storeWeak(&v13->_delegate, delegateCopy);
    if (refreshCopy)
    {
      objc_initWeak(&location, v13);
      v20 = v13->_triClient;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65__FHExperiment_initWithClient_namespaceName_setRefresh_delegate___block_invoke;
      v23[3] = &unk_2785CB530;
      objc_copyWeak(&v25, &location);
      v24 = nameCopy;
      v21 = [(TRIClient *)v20 addUpdateHandlerForNamespaceName:v24 usingBlock:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  return v13;
}

void __65__FHExperiment_initWithClient_namespaceName_setRefresh_delegate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v11 = 136315394;
    v12 = "[FHExperiment initWithClient:namespaceName:setRefresh:delegate:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_226DD4000, v3, OS_LOG_TYPE_DEBUG, "%s Trial update for namespace: %@", &v11, 0x16u);
  }

  if (WeakRetained)
  {
    [WeakRetained refresh];
    v5 = [WeakRetained delegate];
    if (v5)
    {
      v6 = v5;
      v7 = [WeakRetained delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [WeakRetained delegate];
        [v9 updateFactors];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getLevelForFactor:(id)factor
{
  v39 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  v5 = [(TRIClient *)self->_triClient levelForFactor:factorCopy withNamespaceName:self->_namespaceName];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_factorMetadatas];
  v7 = v6;
  if (v5)
  {
    v8 = [(TRIClient *)self->_triClient experimentIdentifiersWithNamespaceName:self->_namespaceName];
    v9 = [v8 copy];

    v10 = [(TRIClient *)self->_triClient rolloutIdentifiersWithNamespaceName:self->_namespaceName];
    v11 = [v10 copy];

    metadata = [v5 metadata];
    v13 = metadata;
    if (v9 && ([metadata objectForKey:@"factorType"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"exp"), v14, v15))
    {
      v32 = v11;
      v16 = MEMORY[0x277CCACA8];
      experimentId = [v9 experimentId];
      treatmentId = [v9 treatmentId];
      v19 = [v16 stringWithFormat:@"e:%@:%@", experimentId, treatmentId];
    }

    else
    {
      if (!v11)
      {
        v19 = &stru_283A7B918;
LABEL_14:
        [v13 setObject:v19 forKey:@"trialId"];
        v26 = [v13 copy];
        [v7 setObject:v26 forKey:factorCopy];

        v27 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v34 = "[FHExperiment getLevelForFactor:]";
          v35 = 2112;
          v36 = factorCopy;
          v37 = 2112;
          v38 = v5;
          _os_log_impl(&dword_226DD4000, v27, OS_LOG_TYPE_DEBUG, "%s Factor %@ level %@", buf, 0x20u);
        }

        goto LABEL_17;
      }

      v32 = v11;
      metadata2 = [v5 metadata];
      v21 = [metadata2 objectForKey:@"factorType"];
      v22 = [v21 isEqualToString:@"rollout"];

      if (!v22)
      {
        v19 = &stru_283A7B918;
        goto LABEL_13;
      }

      v23 = MEMORY[0x277CCACA8];
      experimentId = [v32 rolloutId];
      treatmentId = [v32 factorPackId];
      rampId = [v32 rampId];
      v19 = [v23 stringWithFormat:@"r:%@:%@:%@", experimentId, treatmentId, rampId];
    }

LABEL_13:
    v11 = v32;
    goto LABEL_14;
  }

  [v6 removeObjectForKey:factorCopy];
  v9 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    namespaceName = self->_namespaceName;
    *buf = 136315650;
    v34 = "[FHExperiment getLevelForFactor:]";
    v35 = 2112;
    v36 = factorCopy;
    v37 = 2112;
    v38 = namespaceName;
    _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "%s No level found for factor %@ in namespace %@", buf, 0x20u);
  }

LABEL_17:

  v28 = [v7 copy];
  factorMetadatas = self->_factorMetadatas;
  self->_factorMetadatas = v28;

  v30 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getTrialIdForFactor:(id)factor
{
  v3 = [(NSDictionary *)self->_factorMetadatas objectForKey:factor];
  v4 = [v3 objectForKey:@"trialId"];

  return v4;
}

- (id)getFilePathForFactor:(id)factor
{
  v3 = [(FHExperiment *)self getLevelForFactor:factor];
  v4 = v3;
  if (v3)
  {
    if ([v3 levelOneOfCase] == 101)
    {
      directoryValue = [v4 directoryValue];
      path = [directoryValue path];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [defaultManager contentsOfDirectoryAtPath:path error:0];

      v9 = MEMORY[0x277CCACA8];
      v10 = [v8 objectAtIndex:0];
      v6Path = [v9 stringWithFormat:@"%@/%@", path, v10];
    }

    else
    {
      path = [v4 fileValue];
      v6Path = [path path];
    }
  }

  else
  {
    v6Path = 0;
  }

  return v6Path;
}

- (id)getDirectoryForFactor:(id)factor
{
  v3 = [(FHExperiment *)self getLevelForFactor:factor];
  v4 = v3;
  if (v3)
  {
    directoryValue = [v3 directoryValue];
    path = [directoryValue path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (FHTRIClientUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end