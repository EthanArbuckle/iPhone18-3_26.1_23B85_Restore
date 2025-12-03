@interface FHTrialModel
- (FHTrialModel)initWithModelName:(id)name fhExperiment:(id)experiment modelFactorName:(id)factorName defaultModel:(id)model;
- (FHTrialModel)initWithModelName:(id)name namespaceName:(id)namespaceName modelFactorName:(id)factorName defaultModel:(id)model;
- (void)updateFactors;
@end

@implementation FHTrialModel

- (FHTrialModel)initWithModelName:(id)name namespaceName:(id)namespaceName modelFactorName:(id)factorName defaultModel:(id)model
{
  modelCopy = model;
  factorNameCopy = factorName;
  namespaceNameCopy = namespaceName;
  nameCopy = name;
  v14 = [[FHExperiment alloc] initWithClient:0 namespaceName:namespaceNameCopy setRefresh:1 delegate:self];

  v15 = [(FHTrialModel *)self initWithModelName:nameCopy fhExperiment:v14 modelFactorName:factorNameCopy defaultModel:modelCopy];
  return v15;
}

- (FHTrialModel)initWithModelName:(id)name fhExperiment:(id)experiment modelFactorName:(id)factorName defaultModel:(id)model
{
  v36 = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  factorNameCopy = factorName;
  modelCopy = model;
  objc_storeStrong(&self->_fhExperiment, experiment);
  nameCopy = name;
  objc_storeStrong(&self->_modelFactorName, factorName);
  v15 = [(FHExperiment *)self->_fhExperiment getFilePathForFactor:factorNameCopy];
  if (v15)
  {
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    uRLByStandardizingPath = [v16 URLByStandardizingPath];

    scheme = [uRLByStandardizingPath scheme];
    v19 = [scheme isEqualToString:@"file"];

    if ((v19 & 1) == 0)
    {
      v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];

      uRLByStandardizingPath = v20;
    }

    v21 = [(FHExperiment *)self->_fhExperiment getTrialIdForFactor:factorNameCopy];
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
      v35 = modelCopy;
      _os_log_impl(&dword_226DD4000, v23, OS_LOG_TYPE_DEBUG, "%s Loading default model %@", buf, 0x16u);
    }

    uRLByStandardizingPath = modelCopy;
    v24 = self->_trialId;
    self->_trialId = &stru_283A7B918;
  }

  v31.receiver = self;
  v31.super_class = FHTrialModel;
  v25 = [(FHModel *)&v31 initWithModelURL:uRLByStandardizingPath modelName:nameCopy];

  if (v25)
  {
    mlModel = [(FHModel *)v25 mlModel];

    if (!mlModel)
    {
      v27 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v33 = "[FHTrialModel initWithModelName:fhExperiment:modelFactorName:defaultModel:]";
        v34 = 2112;
        v35 = modelCopy;
        _os_log_impl(&dword_226DD4000, v27, OS_LOG_TYPE_DEBUG, "%s Loading default model %@", buf, 0x16u);
      }

      v28 = v25->_trialId;
      v25->_trialId = &stru_283A7B918;

      [(FHModel *)v25 _loadModel:modelCopy];
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
  compiledModelURL = [(FHModel *)self compiledModelURL];
  if (v5)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v8 = [(FHModel *)self _loadModel:v7];

    if (v8)
    {
      v9 = [(FHExperiment *)self->_fhExperiment getTrialIdForFactor:self->_modelFactorName];
      trialId = self->_trialId;
      self->_trialId = v9;

      [(FHModel *)self _deleteModelFile:compiledModelURL];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end