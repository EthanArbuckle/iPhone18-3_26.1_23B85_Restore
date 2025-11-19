@interface FHTrialModel
- (FHTrialModel)initWithModelName:(id)a3 fhExperiment:(id)a4 modelFactorName:(id)a5 defaultModel:(id)a6;
- (FHTrialModel)initWithModelName:(id)a3 namespaceName:(id)a4 modelFactorName:(id)a5 defaultModel:(id)a6;
- (void)updateFactors;
@end

@implementation FHTrialModel

- (FHTrialModel)initWithModelName:(id)a3 namespaceName:(id)a4 modelFactorName:(id)a5 defaultModel:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[FHExperiment alloc] initWithClient:0 namespaceName:v12 setRefresh:1 delegate:self];

  v15 = [(FHTrialModel *)self initWithModelName:v13 fhExperiment:v14 modelFactorName:v11 defaultModel:v10];
  return v15;
}

- (FHTrialModel)initWithModelName:(id)a3 fhExperiment:(id)a4 modelFactorName:(id)a5 defaultModel:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_storeStrong(&self->_fhExperiment, a4);
  v14 = a3;
  objc_storeStrong(&self->_modelFactorName, a5);
  v15 = [(FHExperiment *)self->_fhExperiment getFilePathForFactor:v12];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v17 = [v16 URLByStandardizingPath];

    v18 = [v17 scheme];
    v19 = [v18 isEqualToString:@"file"];

    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];

      v17 = v20;
    }

    v21 = [(FHExperiment *)self->_fhExperiment getTrialIdForFactor:v12];
    trialId = self->_trialId;
    self->_trialId = v21;
  }

  else
  {
    v23 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v33 = "[FHTrialModel initWithModelName:fhExperiment:modelFactorName:defaultModel:]";
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_226DD4000, v23, OS_LOG_TYPE_DEBUG, "%s Loading default model %@", buf, 0x16u);
    }

    v17 = v13;
    v24 = self->_trialId;
    self->_trialId = &stru_283A7B918;
  }

  v31.receiver = self;
  v31.super_class = FHTrialModel;
  v25 = [(FHModel *)&v31 initWithModelURL:v17 modelName:v14];

  if (v25)
  {
    v26 = [(FHModel *)v25 mlModel];

    if (!v26)
    {
      v27 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v33 = "[FHTrialModel initWithModelName:fhExperiment:modelFactorName:defaultModel:]";
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_226DD4000, v27, OS_LOG_TYPE_DEBUG, "%s Loading default model %@", buf, 0x16u);
      }

      v28 = v25->_trialId;
      v25->_trialId = &stru_283A7B918;

      [(FHModel *)v25 _loadModel:v13];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)updateFactors
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    modelFactorName = self->_modelFactorName;
    v12 = 136315394;
    v13 = "[FHTrialModel updateFactors]";
    v14 = 2112;
    v15 = modelFactorName;
    _os_log_impl(&dword_226DD4000, v3, OS_LOG_TYPE_DEBUG, "%s Updating trial model with factor name: %@", &v12, 0x16u);
  }

  v5 = [(FHExperiment *)self->_fhExperiment getFilePathForFactor:self->_modelFactorName];
  v6 = [(FHModel *)self compiledModelURL];
  if (v5)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [(FHModel *)self _loadModel:v7];

    if (v8)
    {
      v9 = [(FHExperiment *)self->_fhExperiment getTrialIdForFactor:self->_modelFactorName];
      trialId = self->_trialId;
      self->_trialId = v9;

      [(FHModel *)self _deleteModelFile:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end