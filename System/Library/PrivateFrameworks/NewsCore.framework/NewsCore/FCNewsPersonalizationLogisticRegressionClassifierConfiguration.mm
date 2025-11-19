@interface FCNewsPersonalizationLogisticRegressionClassifierConfiguration
- (FCNewsPersonalizationLogisticRegressionClassifierConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationLogisticRegressionClassifierConfiguration

- (FCNewsPersonalizationLogisticRegressionClassifierConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = FCNewsPersonalizationLogisticRegressionClassifierConfiguration;
  v5 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)&v17 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(v4, @"l2Penalty", &unk_1F2E71C18);
    l2Penalty = v5->_l2Penalty;
    v5->_l2Penalty = v6;

    v8 = FCAppConfigurationNumberValue(v4, @"l1Penalty", 0);
    l1Penalty = v5->_l1Penalty;
    v5->_l1Penalty = v8;

    v10 = FCAppConfigurationNumberValue(v4, @"maximumIterations", &unk_1F2E70EF0);
    maximumIterations = v5->_maximumIterations;
    v5->_maximumIterations = v10;

    v12 = FCAppConfigurationNumberValue(v4, @"stepSize", &unk_1F2E71C18);
    stepSize = v5->_stepSize;
    v5->_stepSize = v12;

    v14 = FCAppConfigurationNumberValue(v4, @"convergenceThreshold", &unk_1F2E71C28);
    convergenceThreshold = v5->_convergenceThreshold;
    v5->_convergenceThreshold = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self l2Penalty];
  [v3 appendFormat:@"; l2Penalty: %@", v4];

  v5 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self l1Penalty];
  [v3 appendFormat:@"; l1Penalty: %@", v5];

  v6 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self maximumIterations];
  [v3 appendFormat:@"; maximumIterations: %@", v6];

  v7 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self stepSize];
  [v3 appendFormat:@"; stepSize: %@", v7];

  v8 = [(FCNewsPersonalizationLogisticRegressionClassifierConfiguration *)self convergenceThreshold];
  [v3 appendFormat:@"; convergenceThreshold: %@", v8];

  [v3 appendString:@">"];

  return v3;
}

@end