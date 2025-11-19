@interface FCNewsPersonalizationTrainingLegacyBridgeConfiguration
- (FCNewsPersonalizationTrainingLegacyBridgeConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsPersonalizationTrainingLegacyBridgeConfiguration

- (FCNewsPersonalizationTrainingLegacyBridgeConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = FCNewsPersonalizationTrainingLegacyBridgeConfiguration;
  v5 = [(FCNewsPersonalizationTrainingLegacyBridgeConfiguration *)&v26 init];
  if (v5)
  {
    if (NFInternalBuild() && (NewsCoreUserDefaults(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLForKey:@"news.news_personalization.should_override_legacy_bridging_configuration"], v6, v7))
    {
      v8 = NewsCoreUserDefaults();
      v5->_priorStatelessAggregatesWithLegacyAggregates = [v8 BOOLForKey:@"news.news_personalization.prior_stateless_aggregates_with_legacy_aggregates"];

      v9 = NewsCoreUserDefaults();
      v5->_avoidDoubleCountingWhenPrioringWithLegacyAggregates = [v9 BOOLForKey:@"news.news_personalization.avoid_double_counting_when_prioring_with_legacy_aggregates"];

      v10 = NewsCoreUserDefaults();
      v5->_allowAllLegacyAggregatesToActAsPriors = [v10 BOOLForKey:@"news.news_personalization.allow_all_legacy_aggregates_to_act_as_priors"];

      v11 = NewsCoreUserDefaults();
      v12 = [v11 objectForKey:@"news.news_personalization.legacy_multiplier"];
      if (v12)
      {
        v13 = NewsCoreUserDefaults();
        [v13 doubleForKey:@"news.news_personalization.legacy_multiplier"];
        v5->_legacyMultiplier = v14;
      }

      else
      {
        v5->_legacyMultiplier = 1.0;
      }

      v17 = NewsCoreUserDefaults();
      v18 = [v17 objectForKey:@"news.news_personalization.legacy_decay_rate"];
      if (v18)
      {
        v19 = NewsCoreUserDefaults();
        [v19 doubleForKey:@"news.news_personalization.legacy_decay_rate"];
        v5->_legacyDecayRate = v20;
      }

      else
      {
        v5->_legacyDecayRate = 0.98;
      }

      v21 = NewsCoreUserDefaults();
      v5->_createStatelessAggregatesWhichOnlyExistInLegacy = [v21 BOOLForKey:@"news.news_personalization.create_stateless_aggregates_which_only_exist_in_legacy"];

      v22 = NewsCoreUserDefaults();
      v5->_legacyMaxLinearImpressionCount = [v22 integerForKey:@"news.news_personalization.legacy_max_linear_impression_count"];

      v23 = NewsCoreUserDefaults();
      v5->_statelessMaxLinearImpressionCount = [v23 integerForKey:@"news.news_personalization.stateless_max_linear_impression_count"];

      v24 = NewsCoreUserDefaults();
      v5->_disablePrioringBaseline = [v24 BOOLForKey:@"news.news_personalization.disable_prioring_baseline"];
    }

    else
    {
      v5->_priorStatelessAggregatesWithLegacyAggregates = FCAppConfigurationBoolValue(v4, @"priorStatelessAggregatesWithLegacyAggregates2", 0);
      v5->_avoidDoubleCountingWhenPrioringWithLegacyAggregates = FCAppConfigurationBoolValue(v4, @"avoidDoubleCountingWhenPrioringWithLegacyAggregates", 1);
      v5->_allowAllLegacyAggregatesToActAsPriors = FCAppConfigurationBoolValue(v4, @"allowAllLegacyAggregatesToActAsPriors", 0);
      v15 = FCAppConfigurationDoubleValue(v4, @"legacyMultiplier", 1.0);
      if (v15 < 0.0)
      {
        v15 = 1.0;
      }

      v5->_legacyMultiplier = v15;
      v16 = FCAppConfigurationDoubleValue(v4, @"legacyDecayRate", 0.98);
      if (v16 < 0.0)
      {
        v16 = 0.98;
      }

      v5->_legacyDecayRate = v16;
      v5->_createStatelessAggregatesWhichOnlyExistInLegacy = FCAppConfigurationBoolValue(v4, @"createStatelessAggregatesWhichOnlyExistInLegacy2", 0);
      v5->_legacyMaxLinearImpressionCount = FCAppConfigurationIntegerValue(v4, @"legacyMaxLinearImpressionCount", 555);
      v5->_statelessMaxLinearImpressionCount = FCAppConfigurationIntegerValue(v4, @"statelessMaxLinearImpressionCount", 2500);
      v5->_disablePrioringBaseline = FCAppConfigurationBoolValue(v4, @"disablePrioringBaseline", 0);
    }
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; priorStatelessAggregatesWithLegacyAggregates: %d", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration priorStatelessAggregatesWithLegacyAggregates](self, "priorStatelessAggregatesWithLegacyAggregates")];
  [v3 appendFormat:@"; avoidDoubleCountingWhenPrioringWithLegacyAggregates: %d", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration avoidDoubleCountingWhenPrioringWithLegacyAggregates](self, "avoidDoubleCountingWhenPrioringWithLegacyAggregates")];
  [v3 appendFormat:@"; allowAllLegacyAggregatesToActAsPriors: %d", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration allowAllLegacyAggregatesToActAsPriors](self, "allowAllLegacyAggregatesToActAsPriors")];
  [(FCNewsPersonalizationTrainingLegacyBridgeConfiguration *)self legacyMultiplier];
  [v3 appendFormat:@"; legacyMultiplier: %f", v4];
  [(FCNewsPersonalizationTrainingLegacyBridgeConfiguration *)self legacyDecayRate];
  [v3 appendFormat:@"; legacyDecayRate: %f", v5];
  [v3 appendFormat:@"; createStatelessAggregatesWhichOnlyExistInLegacy: %d", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration createStatelessAggregatesWhichOnlyExistInLegacy](self, "createStatelessAggregatesWhichOnlyExistInLegacy")];
  [v3 appendFormat:@"; legacyMaxLinearImpressionCount: %lld", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration legacyMaxLinearImpressionCount](self, "legacyMaxLinearImpressionCount")];
  [v3 appendFormat:@"; statelessMaxLinearImpressionCount: %lld", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration statelessMaxLinearImpressionCount](self, "statelessMaxLinearImpressionCount")];
  [v3 appendFormat:@"; disablePrioringBaseline: %d", -[FCNewsPersonalizationTrainingLegacyBridgeConfiguration disablePrioringBaseline](self, "disablePrioringBaseline")];
  [v3 appendString:@">"];

  return v3;
}

@end