@interface SGQuickResponsesPredictionParameters
+ (id)_modelTypeNameForDictionary:(id)a3;
+ (id)_subModelKeyStringForDictionary:(id)a3;
- (SGQuickResponsesPredictionParameters)initWithDictionary:(id)a3;
@end

@implementation SGQuickResponsesPredictionParameters

- (SGQuickResponsesPredictionParameters)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "dictionary";
LABEL_59:
    _os_log_fault_impl(&dword_24799E000, v44, OS_LOG_TYPE_FAULT, v45, buf, 2u);
    goto LABEL_60;
  }

  v68.receiver = self;
  v68.super_class = SGQuickResponsesPredictionParameters;
  self = [(SGQuickResponsesPredictionParameters *)&v68 init];
  if (!self)
  {
    goto LABEL_99;
  }

  v6 = [v5 numberAssertedForKey:@"PERSONALIZATION_IS_DISABLED"];
  if (!v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:PERSONALIZATION_IS_DISABLED]";
    goto LABEL_59;
  }

  v7 = v6;
  self->_isPersonalizationDisabled = [v6 BOOLValue];

  v8 = [v5 numberAssertedForKey:@"REPLY_TEXT_IS_RANDOMIZED"];
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:REPLY_TEXT_IS_RANDOMIZED]";
    goto LABEL_59;
  }

  v9 = v8;
  self->_isReplyTextRandomized = [v8 BOOLValue];

  v10 = [v5 numberAssertedForKey:@"RANKING_AND_RESPONSE_COUNT_IS_PER_CATEGORY"];
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:RANKING_AND_RESPONSE_COUNT_IS_PER_CATEGORY]";
    goto LABEL_59;
  }

  v11 = v10;
  self->_isPerCategory = [v10 BOOLValue];

  v12 = [v5 numberAssertedForKey:@"RANKING_WEIGHT_CATEGORY_AVERAGE"];
  if (!v12)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:RANKING_WEIGHT_CATEGORY_AVERAGE]";
    goto LABEL_59;
  }

  v13 = v12;
  [v12 doubleValue];
  self->_weightForCategoryAverage = v14;

  v15 = [v5 numberAssertedForKey:@"RANKING_WEIGHT_CATEGORY_MAX"];
  if (!v15)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:RANKING_WEIGHT_CATEGORY_MAX]";
    goto LABEL_59;
  }

  v16 = v15;
  [v15 doubleValue];
  self->_weightForCategoryMax = v17;

  v18 = [v5 numberAssertedForKey:@"RESPONSE_COUNT_FACTOR_CLASS_DISCOUNT"];
  if (!v18)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:RESPONSE_COUNT_FACTOR_CLASS_DISCOUNT]";
    goto LABEL_59;
  }

  v19 = v18;
  [v18 doubleValue];
  self->_classDiscount = v20;

  v21 = [v5 numberAssertedForKey:@"RESPONSE_COUNT_FACTOR_RESPONSE_BONUS"];
  if (!v21)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:RESPONSE_COUNT_FACTOR_RESPONSE_BONUS]";
    goto LABEL_59;
  }

  v22 = v21;
  [v21 doubleValue];
  self->_responsesBonus = v23;

  v24 = [v5 numberAssertedForKey:@"MINIMUM_TO_SHOW_THRESHOLD"];
  if (!v24)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:MINIMUM_TO_SHOW_THRESHOLD]";
    goto LABEL_59;
  }

  v25 = v24;
  [v24 doubleValue];
  self->_minToShowThreshold = v26;

  v27 = [v5 numberAssertedForKey:@"DEFAULT_RESPONSES_TO_RETURN"];
  if (!v27)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:DEFAULT_RESPONSES_TO_RETURN]";
    goto LABEL_59;
  }

  v28 = v27;
  self->_defaultResponsesToReturn = [v27 unsignedIntegerValue];

  v29 = [v5 numberAssertedForKey:@"RESPONSES_AT_TOP_WITH_MORE_DIVERSITY"];
  if (!v29)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:RESPONSES_AT_TOP_WITH_MORE_DIVERSITY]";
    goto LABEL_59;
  }

  v30 = v29;
  self->_responsesToShowAtTopForDiversity = [v29 unsignedIntegerValue];

  v31 = 1.0 - self->_weightForCategoryAverage - self->_weightForCategoryMax;
  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  self->_weightForIndividualModel = v31;
  v32 = [v5 numberAssertedForKey:@"PERSONALIZATION_SELECTED_PSEUDOCOUNT_PER_SEMANTIC_CLASS"];
  if (!v32)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:PERSONALIZATION_SELECTED_PSEUDOCOUNT_PER_SEMANTIC_CLASS]";
    goto LABEL_59;
  }

  v33 = v32;
  [v32 doubleValue];
  self->_personalizationSelectedPseudocountPerSemanticClass = v34;

  v35 = [v5 numberAssertedForKey:@"PERSONALIZATION_DISPLAYED_PSEUDOCOUNT"];
  if (!v35)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:PERSONALIZATION_DISPLAYED_PSEUDOCOUNT]";
    goto LABEL_59;
  }

  v36 = v35;
  [v35 doubleValue];
  self->_personalizationDisplayedPseudocount = v37;

  v38 = [v5 numberAssertedForKey:@"PERSONALIZATION_EXPLORATION_FACTOR"];
  if (!v38)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_60;
    }

    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "[dictionary numberAssertedForKey:PERSONALIZATION_EXPLORATION_FACTOR]";
    goto LABEL_59;
  }

  v39 = v38;
  [v38 doubleValue];
  self->_personalizationExplorationFactor = v40;

  v41 = [v5 objectForKeyedSubscript:@"DYNAMIC_LABELS_ENABLED"];
  self->_dynamicLabelsEnabled = [v41 BOOLValue];

  v42 = [v5 objectForKeyedSubscript:@"FILTER_NONCONFIDENT"];
  if (v42)
  {
    v43 = [v5 objectForKeyedSubscript:@"FILTER_NONCONFIDENT"];
    self->_filterNonConfident = [v43 BOOLValue];
  }

  else
  {
    self->_filterNonConfident = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v46 = [v5 objectForKeyedSubscript:@"HAS_NEGATIVE_CLASS"];
  self->_hasNegativeClass = [v46 BOOLValue];

  v47 = [v5 objectForKeyedSubscript:@"NEGATIVE_CLASS_MAXIMUM_TO_PREDICT"];
  [v47 doubleValue];
  self->_negativeClassMaximumToPredict = v48;

  weightForCategoryAverage = self->_weightForCategoryAverage;
  weightForCategoryMax = self->_weightForCategoryMax;
  if (weightForCategoryAverage + weightForCategoryMax >= 1.000001)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "_weightForCategoryAverage + _weightForCategoryMax < 1 + EPSILON_OF_DOUBLE_COMPARISON";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  v51 = 1.0 - weightForCategoryAverage - weightForCategoryMax;
  weightForIndividualModel = self->_weightForIndividualModel;
  if (vabdd_f64(v51, weightForIndividualModel) >= 0.000001)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "fabs(1 - _weightForCategoryAverage - _weightForCategoryMax - _weightForIndividualModel) < EPSILON_OF_DOUBLE_COMPARISON";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (fabs(v51) < 0.000001 || !self->_isPerCategory)
  {
    if (weightForCategoryAverage < 0.0 || weightForCategoryAverage > 1.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "0 <= _weightForCategoryAverage && _weightForCategoryAverage <= 1";
      goto LABEL_59;
    }

    if (weightForCategoryMax < 0.0 || weightForCategoryMax > 1.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "0 <= _weightForCategoryMax && _weightForCategoryMax <= 1";
      goto LABEL_59;
    }

    if (weightForIndividualModel < 0.0 || weightForIndividualModel > 1.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "0 <= _weightForIndividualModel && _weightForIndividualModel <= 1";
      goto LABEL_59;
    }

    classDiscount = self->_classDiscount;
    if (classDiscount < 0.0 || classDiscount > 1.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "0 <= _classDiscount && _classDiscount <= 1";
      goto LABEL_59;
    }

    responsesBonus = self->_responsesBonus;
    if (responsesBonus < 0.0 || responsesBonus > 1.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "0 <= _responsesBonus && _responsesBonus <= 1";
      goto LABEL_59;
    }

    if (self->_personalizationSelectedPseudocountPerSemanticClass > self->_personalizationDisplayedPseudocount)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "_personalizationSelectedPseudocountPerSemanticClass <= _personalizationDisplayedPseudocount";
      goto LABEL_59;
    }

    v56 = [v5 numberAssertedForKey:@"MAX_PROMPT_LENGTH"];
    if (!v56)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "[dictionary numberAssertedForKey:MAX_PROMPT_LENGTH]";
      goto LABEL_59;
    }

    v57 = v56;
    self->_maxPromptLength = [v56 integerValue];

    v58 = [v5 numberAssertedForKey:@"MAX_PROMPT_WINDOW_SECONDS"];
    if (!v58)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "[dictionary numberAssertedForKey:MAX_PROMPT_WINDOW_SECONDS]";
      goto LABEL_59;
    }

    v59 = v58;
    [v58 doubleValue];
    self->_maxPromptWindowSeconds = v60;

    if (self->_maxPromptWindowSeconds < 0.0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "0 <= _maxPromptWindowSeconds";
      goto LABEL_59;
    }

    v61 = [v5 stringAssertedForKey:@"PROMPT_JOINING_STRING"];
    if (!v61)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "[dictionary stringAssertedForKey:PROMPT_JOINING_STRING]";
      goto LABEL_59;
    }

    promptJoiningString = self->_promptJoiningString;
    self->_promptJoiningString = v61;

    if (![(NSString *)self->_promptJoiningString length])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "_promptJoiningString.length";
      goto LABEL_59;
    }

    v63 = [SGQuickResponsesPredictionParameters _modelTypeNameForDictionary:v5];
    modelTypeName = self->_modelTypeName;
    self->_modelTypeName = v63;

    v65 = [SGQuickResponsesPredictionParameters _subModelKeyStringForDictionary:v5];
    subModelKeyString = self->_subModelKeyString;
    self->_subModelKeyString = v65;

    if (![(NSString *)self->_modelTypeName isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"]&& ![(NSString *)self->_modelTypeName isEqualToString:@"quickResponsesBinaryLogisticMultiLabel"])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "[_modelTypeName isEqualToString:SG_QUICK_RESPONSES_MULTICLASS_ESPRESSO_CLASSIFIER] || [_modelTypeName isEqualToString:SG_QUICK_RESPONSES_BINARY_LOGISTIC_MULTI_LABEL]";
      goto LABEL_59;
    }

    if ([(NSString *)self->_modelTypeName isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"]&& ![(NSString *)self->_subModelKeyString length])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_60;
      }

      *buf = 0;
      v44 = MEMORY[0x277D86220];
      v45 = "!([_modelTypeName isEqualToString:SG_QUICK_RESPONSES_MULTICLASS_ESPRESSO_CLASSIFIER] && !_subModelKeyString.length)";
      goto LABEL_59;
    }

LABEL_99:
    self = self;
    v53 = self;
    goto LABEL_100;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v44 = MEMORY[0x277D86220];
    v45 = "!_isPerCategory || fabs(1 - _weightForCategoryAverage - _weightForCategoryMax) < EPSILON_OF_DOUBLE_COMPARISON";
    goto LABEL_59;
  }

LABEL_60:
  v53 = 0;
LABEL_100:

  return v53;
}

+ (id)_subModelKeyStringForDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"SUB_MODEL_KEY_STRING"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_285992FC0;
  }

  v6 = v5;

  return v5;
}

+ (id)_modelTypeNameForDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"MODEL_TYPE_NAME"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"quickResponsesBinaryLogisticMultiLabel";
  }

  v6 = v5;

  return v5;
}

@end