@interface SGModelHyperparameters
+ (unint64_t)strategyForString:(id)a3 modelTypeName:(id)a4;
- (SGModelHyperparameters)initWithDictionary:(id)a3 modelTypeName:(id)a4;
- (_NSRange)characterNGramRange;
- (_NSRange)tokenNGramRange;
- (id)sessionDescriptorForLanguage:(id)a3;
@end

@implementation SGModelHyperparameters

- (_NSRange)tokenNGramRange
{
  length = self->_tokenNGramRange.length;
  location = self->_tokenNGramRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)characterNGramRange
{
  length = self->_characterNGramRange.length;
  location = self->_characterNGramRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)sessionDescriptorForLanguage:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 alloc];
  vectorNormalization = self->_vectorNormalization;
  v8 = [v6 initWithFormat:@"VL=%lu&CL=%lu&CH=%lu&TL=%lu&TH=%lu&SN=%lu&IDL=%lu&IDS=%lu&VN=%ld&FV=%@", self->_vectorLength, self->_characterNGramRange.location, self->_characterNGramRange.length + self->_characterNGramRange.location, self->_tokenNGramRange.location, self->_tokenNGramRange.length + self->_tokenNGramRange.location, self->_vectorizerStrategy, self->_idVectorLength, self->_extraIdOptions, vectorNormalization, self->_featuresVersion];
  v9 = [MEMORY[0x277D41F68] descriptorForName:self->_featuresModelId version:v8 locale:v5];

  return v9;
}

- (SGModelHyperparameters)initWithDictionary:(id)a3 modelTypeName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v41 = MEMORY[0x277D86220];
    v42 = "dictionary";
    goto LABEL_50;
  }

  v46.receiver = self;
  v46.super_class = SGModelHyperparameters;
  self = [(SGModelHyperparameters *)&v46 init];
  if (self)
  {
    v10 = [v9 stringAssertedForKey:@"FEATURES_MODEL_ID"];
    if (!v10)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v41 = MEMORY[0x277D86220];
      v42 = "[dictionary stringAssertedForKey:FEATURES_MODEL_ID]";
      goto LABEL_50;
    }

    featuresModelId = self->_featuresModelId;
    self->_featuresModelId = v10;

    v12 = [v9 stringAssertedForKey:@"FEATURES_VERSION"];
    if (!v12)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v41 = MEMORY[0x277D86220];
      v42 = "[dictionary stringAssertedForKey:FEATURES_VERSION]";
      goto LABEL_50;
    }

    featuresVersion = self->_featuresVersion;
    self->_featuresVersion = v12;

    v14 = [v9 numberAssertedForKey:@"VECTOR_LENGTH"];
    if (!v14)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v41 = MEMORY[0x277D86220];
      v42 = "[dictionary numberAssertedForKey:VECTOR_LENGTH]";
      goto LABEL_50;
    }

    v15 = v14;
    self->_vectorLength = [v14 unsignedIntegerValue];

    v16 = [v9 numberAssertedForKey:@"CHARACTER_N_GRAM_MINIMUM_N"];
    if (!v16)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v41 = MEMORY[0x277D86220];
      v42 = "[dictionary numberAssertedForKey:CHARACTER_N_GRAM_MINIMUM_N]";
      goto LABEL_50;
    }

    v17 = v16;
    v18 = [v16 unsignedIntegerValue];
    v19 = [v9 numberAssertedForKey:@"CHARACTER_N_GRAM_RANGE_N_LENGTH"];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 unsignedIntegerValue];
      self->_characterNGramRange.location = v18;
      self->_characterNGramRange.length = v21;

      v22 = [v9 numberAssertedForKey:@"TOKEN_N_GRAM_MINIMUM_N"];
      if (!v22)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_51;
        }

        *buf = 0;
        v41 = MEMORY[0x277D86220];
        v42 = "[dictionary numberAssertedForKey:TOKEN_N_GRAM_MINIMUM_N]";
        goto LABEL_50;
      }

      v17 = v22;
      v23 = [v22 unsignedIntegerValue];
      v24 = [v9 numberAssertedForKey:@"TOKEN_N_GRAM_RANGE_N_LENGTH"];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 unsignedIntegerValue];
        self->_tokenNGramRange.location = v23;
        self->_tokenNGramRange.length = v26;

        v27 = [v9 stringAssertedForKey:@"VECTORIZER_STRATEGY"];
        self->_vectorizerStrategy = [SGModelHyperparameters strategyForString:v27 modelTypeName:v7];

        v28 = [v9 numberAssertedForKey:@"ID_VECTOR_LENGTH"];
        v29 = [v28 unsignedIntegerValue];
        v30 = 200;
        if (v29)
        {
          v30 = v29;
        }

        self->_idVectorLength = v30;

        v31 = [v9 numberAssertedForKey:@"ID_VECTOR_SHOULD_PAD_TO_LENGTH"];
        self->_extraIdOptions |= [v31 BOOLValue];

        v32 = [v9 numberAssertedForKey:@"ID_VECTOR_SHOULD_APPEND_SENTEND"];
        v33 = [v32 BOOLValue];
        v34 = 2;
        if (!v33)
        {
          v34 = 0;
        }

        self->_extraIdOptions |= v34;

        v35 = [v9 numberAssertedForKey:@"ID_VECTOR_SHOULD_APPEND_SENTSTART"];
        v36 = [v35 BOOLValue];
        v37 = 4;
        if (!v36)
        {
          v37 = 0;
        }

        self->_extraIdOptions |= v37;

        v38 = [v9 numberAssertedForKey:@"VECTOR_NORMALIZATION"];
        v39 = v38;
        if (!v38)
        {
          v38 = &unk_28599AF00;
        }

        self->_vectorNormalization = [v38 unsignedIntegerValue];

        if ([(NSString *)self->_featuresModelId length])
        {
          if ([(NSString *)self->_featuresVersion length])
          {
            if (self->_characterNGramRange.length + self->_characterNGramRange.location >= 0x65)
            {
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                goto LABEL_51;
              }

              *buf = 0;
              v41 = MEMORY[0x277D86220];
              v42 = "NSMaxRange(_characterNGramRange) <= MAXIMUM_NGRAM_LENGTH";
            }

            else
            {
              if (self->_tokenNGramRange.length + self->_tokenNGramRange.location < 0x65)
              {
                if (self->_vectorizerStrategy < 7)
                {
                  goto LABEL_23;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  v41 = MEMORY[0x277D86220];
                  v42 = "_vectorizerStrategy < PMLHashingVectorizerStrategyLimit";
                  goto LABEL_50;
                }

LABEL_51:
                v40 = 0;
                goto LABEL_52;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                goto LABEL_51;
              }

              *buf = 0;
              v41 = MEMORY[0x277D86220];
              v42 = "NSMaxRange(_tokenNGramRange) <= MAXIMUM_NGRAM_LENGTH";
            }
          }

          else
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              goto LABEL_51;
            }

            *buf = 0;
            v41 = MEMORY[0x277D86220];
            v42 = "_featuresVersion.length > 0";
          }
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_51;
          }

          *buf = 0;
          v41 = MEMORY[0x277D86220];
          v42 = "_featuresModelId.length > 0";
        }

LABEL_50:
        _os_log_fault_impl(&dword_24799E000, v41, OS_LOG_TYPE_FAULT, v42, buf, 2u);
        goto LABEL_51;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
LABEL_39:

        goto LABEL_51;
      }

      *buf = 0;
      v43 = MEMORY[0x277D86220];
      v44 = "[dictionary numberAssertedForKey:TOKEN_N_GRAM_RANGE_N_LENGTH]";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_39;
      }

      *buf = 0;
      v43 = MEMORY[0x277D86220];
      v44 = "[dictionary numberAssertedForKey:CHARACTER_N_GRAM_RANGE_N_LENGTH]";
    }

    _os_log_fault_impl(&dword_24799E000, v43, OS_LOG_TYPE_FAULT, v44, buf, 2u);
    goto LABEL_39;
  }

LABEL_23:
  self = self;
  v40 = self;
LABEL_52:

  return v40;
}

+ (unint64_t)strategyForString:(id)a3 modelTypeName:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 UTF8String];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (strcmp(v8, off_278EB7388[v9]))
    {
      if (++v9 == 7)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_13;
        }

        v14 = 138412290;
        v15 = v5;
        v10 = MEMORY[0x277D86220];
        v11 = "Unknown strategy string %@ when initializing SGQuickResponsesConfig from plist.";
        goto LABEL_12;
      }
    }
  }

  else if ([v6 isEqualToString:@"quickResponsesBinaryLogisticMultiLabel"])
  {
    v9 = 0;
  }

  else
  {
    if (([v6 isEqualToString:@"quickResponsesEspressoClassifierMultiLabel"] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v14 = 138412290;
      v15 = v6;
      v10 = MEMORY[0x277D86220];
      v11 = "Unknown model type name %@ when initializing SGQuickResponsesConfig from plist.";
LABEL_12:
      _os_log_fault_impl(&dword_24799E000, v10, OS_LOG_TYPE_FAULT, v11, &v14, 0xCu);
    }

LABEL_13:
    v9 = 4;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

@end