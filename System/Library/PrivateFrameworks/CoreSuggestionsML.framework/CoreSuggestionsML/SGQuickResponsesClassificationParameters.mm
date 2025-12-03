@interface SGQuickResponsesClassificationParameters
- (SGQuickResponsesClassificationParameters)initWithDictionary:(id)dictionary language:(id)language;
@end

@implementation SGQuickResponsesClassificationParameters

- (SGQuickResponsesClassificationParameters)initWithDictionary:(id)dictionary language:(id)language
{
  v47 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  languageCopy = language;
  v8 = dictionaryCopy;
  v9 = v8;
  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "dictionary";
    goto LABEL_52;
  }

  v42.receiver = self;
  v42.super_class = SGQuickResponsesClassificationParameters;
  self = [(SGQuickResponsesClassificationParameters *)&v42 init];
  if (!self)
  {
    goto LABEL_49;
  }

  v10 = [v9 numberAssertedForKey:@"POSITIVE_SAMPLING_RATE"];
  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "[dictionary numberAssertedForKey:POSITIVE_SAMPLING_RATE]";
    goto LABEL_52;
  }

  v11 = v10;
  [v10 doubleValue];
  self->_positiveSamplingRate = v12;

  v13 = [v9 numberAssertedForKey:@"DYNAMIC_LABEL_SAMPLING_RATE"];
  if (!v13)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "[dictionary numberAssertedForKey:DYNAMIC_LABEL_SAMPLING_RATE]";
    goto LABEL_52;
  }

  v14 = v13;
  [v13 doubleValue];
  self->_dynamicLabelSamplingRate = v15;

  v16 = [v9 numberAssertedForKey:@"NEGATIVE_SAMPLING_RATE"];
  if (!v16)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "[dictionary numberAssertedForKey:NEGATIVE_SAMPLING_RATE]";
    goto LABEL_52;
  }

  v17 = v16;
  [v16 doubleValue];
  self->_negativeSamplingRate = v18;

  positiveSamplingRate = self->_positiveSamplingRate;
  if (positiveSamplingRate < 0.0 || positiveSamplingRate > 1.0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v21 = MEMORY[0x277D86220];
    v22 = "0 <= _positiveSamplingRate && _positiveSamplingRate <= 1";
LABEL_52:
    _os_log_fault_impl(&dword_24799E000, v21, OS_LOG_TYPE_FAULT, v22, buf, 2u);
    goto LABEL_53;
  }

  dynamicLabelSamplingRate = self->_dynamicLabelSamplingRate;
  if (dynamicLabelSamplingRate < 0.0 || dynamicLabelSamplingRate > 1.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "0 <= _dynamicLabelSamplingRate && _dynamicLabelSamplingRate <= 1";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  negativeSamplingRate = self->_negativeSamplingRate;
  if (negativeSamplingRate < 0.0 || negativeSamplingRate > 1.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "0 <= _negativeSamplingRate && _negativeSamplingRate <= 1";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v25 = (1.0 - positiveSamplingRate) * 16.4446468;
  v26 = positiveSamplingRate / -2.22554093 + 1.0;
  if (v25 < v26)
  {
    v26 = v25;
  }

  if (negativeSamplingRate < 1.0 - v26)
  {
    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_negativeSamplingRate;
      v29 = self->_positiveSamplingRate;
      *buf = 134218240;
      v44 = v28;
      v45 = 2048;
      v46 = v29;
      _os_log_impl(&dword_24799E000, v27, OS_LOG_TYPE_DEFAULT, "SGQuickResponsesConfig: negativeSamplingRate=%f and positiveSamplingRate=%f do not satisfy strict DP constraint", buf, 0x16u);
    }
  }

  v30 = [v9 dictAssertedForKey:@"MAX_PROMPT_LENGTH"];
  v31 = [v30 numberAssertedForKey:languageCopy];

  if (!v31)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "[[dictionary dictAssertedForKey: MAX_PROMPT_LENGTH] numberAssertedForKey:language]";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  self->_maxPromptLength = [v31 integerValue];

  v32 = [v9 dictAssertedForKey:@"MAX_REPLY_LENGTH"];
  v33 = [v32 numberAssertedForKey:languageCopy];

  if (!v33)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "[[dictionary dictAssertedForKey: MAX_REPLY_LENGTH] numberAssertedForKey:language]";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  self->_maxReplyLength = [v33 integerValue];

  v34 = [v9 numberAssertedForKey:@"MAX_PROMPT_WINDOW_SECONDS"];
  if (!v34)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "[dictionary numberAssertedForKey:MAX_PROMPT_WINDOW_SECONDS]";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  v35 = v34;
  [v34 doubleValue];
  self->_maxPromptWindowSeconds = v36;

  if (self->_maxPromptWindowSeconds < 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "0 <= _maxPromptWindowSeconds";
      goto LABEL_52;
    }

LABEL_53:
    selfCopy = 0;
    goto LABEL_54;
  }

  v37 = [v9 stringAssertedForKey:@"PROMPT_JOINING_STRING"];
  if (!v37)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v21 = MEMORY[0x277D86220];
      v22 = "[dictionary stringAssertedForKey:PROMPT_JOINING_STRING]";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  promptJoiningString = self->_promptJoiningString;
  self->_promptJoiningString = v37;

LABEL_49:
  self = self;
  selfCopy = self;
LABEL_54:

  v40 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end