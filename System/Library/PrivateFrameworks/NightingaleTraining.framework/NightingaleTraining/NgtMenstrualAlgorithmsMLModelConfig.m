@interface NgtMenstrualAlgorithmsMLModelConfig
- (NgtMenstrualAlgorithmsMLModelConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NgtMenstrualAlgorithmsMLModelConfig

- (NgtMenstrualAlgorithmsMLModelConfig)initWithCoder:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = NgtMenstrualAlgorithmsMLModelConfig;
  v5 = [(NgtMenstrualAlgorithmsMLModelConfig *)&v39 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_heartRateFwEnd10PctModelPath);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    heartRateFwEnd10PctModelPath = v5->_heartRateFwEnd10PctModelPath;
    v5->_heartRateFwEnd10PctModelPath = v11;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_heartRatePeriod10PctModelPath);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    heartRatePeriod10PctModelPath = v5->_heartRatePeriod10PctModelPath;
    v5->_heartRatePeriod10PctModelPath = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_wTmpFwEndLstmModelPath);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    wTmpFwEndLstmModelPath = v5->_wTmpFwEndLstmModelPath;
    v5->_wTmpFwEndLstmModelPath = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_wTmpFwEndRFModelPath);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    wTmpFwEndRFModelPath = v5->_wTmpFwEndRFModelPath;
    v5->_wTmpFwEndRFModelPath = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_wTmpPeriodLstmModelPath);
    v27 = [v4 decodeObjectOfClass:v25 forKey:v26];
    wTmpPeriodLstmModelPath = v5->_wTmpPeriodLstmModelPath;
    v5->_wTmpPeriodLstmModelPath = v27;

    v29 = objc_opt_class();
    v30 = NSStringFromSelector(sel_heartRatePeriodTFModelPaths);
    v31 = [v4 decodeObjectOfClass:v29 forKey:v30];
    heartRatePeriodTFModelPaths = v5->_heartRatePeriodTFModelPaths;
    v5->_heartRatePeriodTFModelPaths = v31;

    v33 = objc_opt_class();
    v34 = NSStringFromSelector(sel_heartRatePeriodEnsembleModelPath);
    v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
    heartRatePeriodEnsembleModelPath = v5->_heartRatePeriodEnsembleModelPath;
    v5->_heartRatePeriodEnsembleModelPath = v35;

    v37 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  heartRateFwEnd10PctModelPath = self->_heartRateFwEnd10PctModelPath;
  v5 = NSStringFromSelector(sel_heartRateFwEnd10PctModelPath);
  [v18 encodeObject:heartRateFwEnd10PctModelPath forKey:v5];

  heartRatePeriod10PctModelPath = self->_heartRatePeriod10PctModelPath;
  v7 = NSStringFromSelector(sel_heartRatePeriod10PctModelPath);
  [v18 encodeObject:heartRatePeriod10PctModelPath forKey:v7];

  wTmpFwEndLstmModelPath = self->_wTmpFwEndLstmModelPath;
  v9 = NSStringFromSelector(sel_wTmpFwEndLstmModelPath);
  [v18 encodeObject:wTmpFwEndLstmModelPath forKey:v9];

  wTmpFwEndRFModelPath = self->_wTmpFwEndRFModelPath;
  v11 = NSStringFromSelector(sel_wTmpFwEndRFModelPath);
  [v18 encodeObject:wTmpFwEndRFModelPath forKey:v11];

  wTmpPeriodLstmModelPath = self->_wTmpPeriodLstmModelPath;
  v13 = NSStringFromSelector(sel_wTmpPeriodLstmModelPath);
  [v18 encodeObject:wTmpPeriodLstmModelPath forKey:v13];

  heartRatePeriodTFModelPaths = self->_heartRatePeriodTFModelPaths;
  v15 = NSStringFromSelector(sel_heartRatePeriodTFModelPaths);
  [v18 encodeObject:heartRatePeriodTFModelPaths forKey:v15];

  heartRatePeriodEnsembleModelPath = self->_heartRatePeriodEnsembleModelPath;
  v17 = NSStringFromSelector(sel_heartRatePeriodEnsembleModelPath);
  [v18 encodeObject:heartRatePeriodEnsembleModelPath forKey:v17];
}

@end