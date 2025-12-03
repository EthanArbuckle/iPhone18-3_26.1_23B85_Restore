@interface NgtMenstrualAlgorithmsAnalysis
- (NgtMenstrualAlgorithmsAnalysis)init;
- (NgtMenstrualAlgorithmsAnalysis)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NgtMenstrualAlgorithmsAnalysis

- (NgtMenstrualAlgorithmsAnalysis)init
{
  v13.receiver = self;
  v13.super_class = NgtMenstrualAlgorithmsAnalysis;
  v2 = [(NgtMenstrualAlgorithmsAnalysis *)&v13 init];
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

- (NgtMenstrualAlgorithmsAnalysis)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(NgtMenstrualAlgorithmsAnalysis *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = NSStringFromSelector(sel_menstruationPredictions);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    menstruationPredictions = v5->_menstruationPredictions;
    v5->_menstruationPredictions = v10;

    v12 = NSStringFromSelector(sel_fertilityPredictions);
    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:v12];
    fertilityPredictions = v5->_fertilityPredictions;
    v5->_fertilityPredictions = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_stats);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    stats = v5->_stats;
    v5->_stats = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_deviationAnalysis);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    deviationAnalysis = v5->_deviationAnalysis;
    v5->_deviationAnalysis = v21;

    v23 = NSStringFromSelector(sel_isUserInactive);
    v5->_isUserInactive = [coderCopy decodeBoolForKey:v23];

    v24 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  menstruationPredictions = self->_menstruationPredictions;
  v5 = NSStringFromSelector(sel_menstruationPredictions);
  [coderCopy encodeObject:menstruationPredictions forKey:v5];

  fertilityPredictions = self->_fertilityPredictions;
  v7 = NSStringFromSelector(sel_fertilityPredictions);
  [coderCopy encodeObject:fertilityPredictions forKey:v7];

  stats = self->_stats;
  v9 = NSStringFromSelector(sel_stats);
  [coderCopy encodeObject:stats forKey:v9];

  deviationAnalysis = self->_deviationAnalysis;
  v11 = NSStringFromSelector(sel_deviationAnalysis);
  [coderCopy encodeObject:deviationAnalysis forKey:v11];

  isUserInactive = self->_isUserInactive;
  v13 = NSStringFromSelector(sel_isUserInactive);
  [coderCopy encodeBool:isUserInactive forKey:v13];
}

@end