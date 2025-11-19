@interface BMMiningTaskConfig
- (BMMiningTaskConfig)init;
- (BOOL)loadBMMiningTaskConfig:(id)a3;
- (void)loadDefaultConfig;
- (void)registerWithTrial;
- (void)updateFactorLevels;
- (void)updateFactorLevelsFromFilePath:(id)a3;
@end

@implementation BMMiningTaskConfig

- (BMMiningTaskConfig)init
{
  v5.receiver = self;
  v5.super_class = BMMiningTaskConfig;
  v2 = [(BMMiningTaskConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BMMiningTaskConfig *)v2 loadDefaultConfig];
    [(BMMiningTaskConfig *)v3 registerWithTrial];
  }

  return v3;
}

- (void)registerWithTrial
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getTRIClientClass_softClass;
  v20 = getTRIClientClass_softClass;
  if (!getTRIClientClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getTRIClientClass_block_invoke;
    v15 = &unk_278D066F0;
    v16 = &v17;
    __getTRIClientClass_block_invoke(buf);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = [v3 clientWithIdentifier:210];
  trialClient = self->_trialClient;
  self->_trialClient = v5;

  if (self->_trialClient)
  {
    v7 = BMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241ACA000, v7, OS_LOG_TYPE_INFO, "Trial: get trial client", buf, 2u);
    }

    [(BMMiningTaskConfig *)self updateFactorLevels];
    objc_initWeak(buf, self);
    v8 = self->_trialClient;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __39__BMMiningTaskConfig_registerWithTrial__block_invoke;
    v10[3] = &unk_278D06720;
    objc_copyWeak(&v11, buf);
    v9 = [(TRIClient *)v8 addUpdateHandlerForNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER" usingBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __39__BMMiningTaskConfig_registerWithTrial__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained updateFactorLevels];
    WeakRetained = v2;
  }
}

- (void)updateFactorLevels
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = BMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241ACA000, v3, OS_LOG_TYPE_INFO, "Try to load psConfig", buf, 2u);
  }

  v4 = [(TRIClient *)self->_trialClient newTrackingId];
  trialTrackingID = self->_trialTrackingID;
  self->_trialTrackingID = v4;

  v28 = -1;
  trialClient = self->_trialClient;
  v26 = 0;
  v27 = 0;
  v7 = [(TRIClient *)trialClient trialIdentifiersWithNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER" experimentId:&v27 deploymentId:&v28 treatmentId:&v26];
  v8 = v27;
  v9 = v27;
  v10 = v26;
  v11 = v26;
  objc_storeStrong(&self->_experimentID, v8);
  self->_deploymentID = v28;
  objc_storeStrong(&self->_treatmentID, v10);
  v12 = BMLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = self->_trialTrackingID;
    treatmentID = self->_treatmentID;
    experimentID = self->_experimentID;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentID];
    *buf = 138413058;
    v30 = v13;
    v31 = 2112;
    v32 = treatmentID;
    v33 = 2112;
    v34 = experimentID;
    v35 = 2112;
    v36 = v16;
    _os_log_impl(&dword_241ACA000, v12, OS_LOG_TYPE_INFO, "TrackingID:%@, TreatmentID:%@, ExperimentID:%@ DeploymentID:%@", buf, 0x2Au);
  }

  if (v7)
  {
    v17 = [(TRIClient *)self->_trialClient levelForFactor:@"psConfigFactor" withNamespaceName:@"COREML_SYSTEMS_PEOPLE_SUGGESTER"];
    v18 = [v17 fileValue];
    v19 = [v18 path];

    v20 = BMLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v19;
      _os_log_impl(&dword_241ACA000, v20, OS_LOG_TYPE_INFO, "Get config path:%@", buf, 0xCu);
    }

    if (![(BMMiningTaskConfig *)self loadBMMiningTaskConfig:v19])
    {
      v21 = BMLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(BMMiningTaskConfig *)v21 updateFactorLevels];
      }

      [(BMMiningTaskConfig *)self loadDefaultConfig];
    }

    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", self->_treatmentID, self->_experimentID];
    trialID = self->_trialID;
    self->_trialID = v22;
  }

  else
  {
    v24 = BMLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241ACA000, v24, OS_LOG_TYPE_INFO, "Can not find valid treat&experiment id, try to load default psConfig", buf, 2u);
    }

    [(BMMiningTaskConfig *)self loadDefaultConfig];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)updateFactorLevelsFromFilePath:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BMLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_241ACA000, v5, OS_LOG_TYPE_INFO, "Updating from override config path:%@", &v9, 0xCu);
  }

  if ([(BMMiningTaskConfig *)self loadBMMiningTaskConfig:v4])
  {
    trialID = self->_trialID;
    self->_trialID = @"Override";
  }

  else
  {
    v7 = BMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMMiningTaskConfig updateFactorLevelsFromFilePath:v7];
    }

    [(BMMiningTaskConfig *)self loadDefaultConfig];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadDefaultConfig
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v5 pathForResource:@"com.apple.BehaviorMiner.Config.Default" ofType:@"plist"];
  [(BMMiningTaskConfig *)self loadBMMiningTaskConfig:v3];
  trialID = self->_trialID;
  self->_trialID = @"Default";
}

- (BOOL)loadBMMiningTaskConfig:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v15 = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v15];
  v7 = v15;
  [(BMMiningTaskConfig *)self setBmMiningTaskConfig:v6];

  v8 = [(BMMiningTaskConfig *)self bmMiningTaskConfig];

  if (v8)
  {
    v9 = [(BMMiningTaskConfig *)self bmMiningTaskConfig];
    v10 = [v9 objectForKeyedSubscript:@"interactionExtractedTopicFromAttachmentFactorInUse"];
    -[BMMiningTaskConfig setInteractionExtractedTopicFromAttachmentFactorInUse:](self, "setInteractionExtractedTopicFromAttachmentFactorInUse:", [v10 BOOLValue]);

    v11 = BMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(BMMiningTaskConfig *)self bmMiningTaskConfig];
      *buf = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_241ACA000, v11, OS_LOG_TYPE_INFO, "Loaded bmMiningTaskConfig with contents:%@, loaded from path:%@", buf, 0x16u);
    }
  }

  else
  {
    v11 = BMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BMMiningTaskConfig *)v4 loadBMMiningTaskConfig:v7, v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

- (void)loadBMMiningTaskConfig:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241ACA000, log, OS_LOG_TYPE_ERROR, "Failed to load trial config with path:%@, with error：%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end