@interface HAMenstrualAlgorithmsAnalysis
- (HAMenstrualAlgorithmsAnalysis)init;
- (HAMenstrualAlgorithmsAnalysis)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAMenstrualAlgorithmsAnalysis

- (HAMenstrualAlgorithmsAnalysis)init
{
  v13.receiver = self;
  v13.super_class = HAMenstrualAlgorithmsAnalysis;
  v2 = [(HAMenstrualAlgorithmsAnalysis *)&v13 init];
  v3 = v2;
  if (v2)
  {
    menstruationPredictions = v2->_menstruationPredictions;
    v5 = MEMORY[0x277CBEBF8];
    v2->_menstruationPredictions = MEMORY[0x277CBEBF8];

    fertilityPredictions = v3->_fertilityPredictions;
    v3->_fertilityPredictions = v5;

    v7 = objc_opt_new();
    stats = v3->_stats;
    v3->_stats = v7;

    v9 = objc_opt_new();
    deviationAnalysis = v3->_deviationAnalysis;
    v3->_deviationAnalysis = v9;

    v11 = v3;
  }

  return v3;
}

- (HAMenstrualAlgorithmsAnalysis)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAMenstrualAlgorithmsAnalysis *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = NSStringFromSelector(sel_menstruationPredictions);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    menstruationPredictions = v5->_menstruationPredictions;
    v5->_menstruationPredictions = v10;

    v12 = NSStringFromSelector(sel_fertilityPredictions);
    v13 = [v4 decodeObjectOfClasses:v8 forKey:v12];
    fertilityPredictions = v5->_fertilityPredictions;
    v5->_fertilityPredictions = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_stats);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    stats = v5->_stats;
    v5->_stats = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_deviationAnalysis);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    deviationAnalysis = v5->_deviationAnalysis;
    v5->_deviationAnalysis = v21;

    v23 = NSStringFromSelector(sel_isUserInactive);
    v5->_isUserInactive = [v4 decodeBoolForKey:v23];

    v24 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  menstruationPredictions = self->_menstruationPredictions;
  v5 = NSStringFromSelector(sel_menstruationPredictions);
  [v14 encodeObject:menstruationPredictions forKey:v5];

  fertilityPredictions = self->_fertilityPredictions;
  v7 = NSStringFromSelector(sel_fertilityPredictions);
  [v14 encodeObject:fertilityPredictions forKey:v7];

  stats = self->_stats;
  v9 = NSStringFromSelector(sel_stats);
  [v14 encodeObject:stats forKey:v9];

  deviationAnalysis = self->_deviationAnalysis;
  v11 = NSStringFromSelector(sel_deviationAnalysis);
  [v14 encodeObject:deviationAnalysis forKey:v11];

  isUserInactive = self->_isUserInactive;
  v13 = NSStringFromSelector(sel_isUserInactive);
  [v14 encodeBool:isUserInactive forKey:v13];
}

@end