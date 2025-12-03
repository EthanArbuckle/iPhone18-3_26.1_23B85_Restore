@interface FCNewsPersonalizationLogisticRegressionClassifierConfiguration
- (FCNewsPersonalizationLogisticRegressionClassifierConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation FCNewsPersonalizationLogisticRegressionClassifierConfiguration

- (FCNewsPersonalizationLogisticRegressionClassifierConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = FCNewsPersonalizationLogisticRegressionClassifierConfiguration;
  v5 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)&v17 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(dictionaryCopy, @"l2Penalty", &unk_1F2E71C18);
    l2Penalty = v5->_l2Penalty;
    v5->_l2Penalty = v6;

    v8 = FCAppConfigurationNumberValue(dictionaryCopy, @"l1Penalty", 0);
    l1Penalty = v5->_l1Penalty;
    v5->_l1Penalty = v8;

    v10 = FCAppConfigurationNumberValue(dictionaryCopy, @"maximumIterations", &unk_1F2E70EF0);
    maximumIterations = v5->_maximumIterations;
    v5->_maximumIterations = v10;

    v12 = FCAppConfigurationNumberValue(dictionaryCopy, @"stepSize", &unk_1F2E71C18);
    stepSize = v5->_stepSize;
    v5->_stepSize = v12;

    v14 = FCAppConfigurationNumberValue(dictionaryCopy, @"convergenceThreshold", &unk_1F2E71C28);
    convergenceThreshold = v5->_convergenceThreshold;
    v5->_convergenceThreshold = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  l2Penalty = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self l2Penalty];
  [v3 appendFormat:@"; l2Penalty: %@", l2Penalty];

  l1Penalty = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self l1Penalty];
  [v3 appendFormat:@"; l1Penalty: %@", l1Penalty];

  maximumIterations = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self maximumIterations];
  [v3 appendFormat:@"; maximumIterations: %@", maximumIterations];

  stepSize = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self stepSize];
  [v3 appendFormat:@"; stepSize: %@", stepSize];

  convergenceThreshold = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self convergenceThreshold];
  [v3 appendFormat:@"; convergenceThreshold: %@", convergenceThreshold];

  [v3 appendString:@">"];

  return v3;
}

@end