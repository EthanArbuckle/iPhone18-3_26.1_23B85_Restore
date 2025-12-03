@interface FCPresentationOperation
- (FCPresentationOperation)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCPresentationOperation

- (FCPresentationOperation)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = FCPresentationOperation;
  v5 = [(FCPresentationOperation *)&v26 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(dictionaryCopy, @"handlerUID", 0);
    handlerUID = v5->_handlerUID;
    v5->_handlerUID = v6;

    v8 = FCAppConfigurationStringValue(dictionaryCopy, @"operationUID", 0);
    operationUID = v5->_operationUID;
    v5->_operationUID = v8;

    v5->_requiredAppLaunchCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"requiredAppLaunchCount", 0);
    v10 = [dictionaryCopy objectForKeyedSubscript:@"maxPrecedingSameSessionPresentations"];
    if (v10)
    {
      v11 = v10;
      v12 = [dictionaryCopy objectForKeyedSubscript:@"maxPrecedingSameSessionPresentations"];
      null = [MEMORY[0x1E695DFB0] null];

      if (v12 == null)
      {
        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{FCAppConfigurationIntegerValue(dictionaryCopy, @"maxPrecedingSameSessionPresentations", 0)}];
      }
    }

    maxPrecedingSameSessionPresentations = v5->_maxPrecedingSameSessionPresentations;
    v5->_maxPrecedingSameSessionPresentations = v10;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"maxPresentationAttempts"];
    if (v15)
    {
      v16 = v15;
      v17 = [dictionaryCopy objectForKeyedSubscript:@"maxPresentationAttempts"];
      null2 = [MEMORY[0x1E695DFB0] null];

      if (v17 == null2)
      {
        v15 = 0;
      }

      else
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{FCAppConfigurationIntegerValue(dictionaryCopy, @"maxPresentationAttempts", 0)}];
      }
    }

    maxPresentationAttempts = v5->_maxPresentationAttempts;
    v5->_maxPresentationAttempts = v15;

    v5->_endsPresentationSession = FCAppConfigurationBoolValue(dictionaryCopy, @"endsPresentationSession", 0);
    v5->_suppressOnLaunchConditions = FCAppConfigurationIntegerValue(dictionaryCopy, @"suppressOnLaunchConditions", 0);
    v5->_ignoreAfterSuccessfulPresentation = FCAppConfigurationBoolValue(dictionaryCopy, @"ignoreAfterSuccessfulPresentation", 0);
    v20 = [dictionaryCopy objectForKeyedSubscript:@"maxRetries"];
    if (v20)
    {
      v21 = v20;
      v22 = [dictionaryCopy objectForKeyedSubscript:@"maxRetries"];
      null3 = [MEMORY[0x1E695DFB0] null];

      if (v22 == null3)
      {
        v20 = 0;
      }

      else
      {
        v20 = [MEMORY[0x1E696AD98] numberWithInteger:{FCAppConfigurationIntegerValue(dictionaryCopy, @"maxRetries", 0)}];
      }
    }

    maxRetries = v5->_maxRetries;
    v5->_maxRetries = v20;
  }

  return v5;
}

@end