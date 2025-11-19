@interface FCPresentationOperation
- (FCPresentationOperation)initWithConfigDictionary:(id)a3;
@end

@implementation FCPresentationOperation

- (FCPresentationOperation)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = FCPresentationOperation;
  v5 = [(FCPresentationOperation *)&v26 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"handlerUID", 0);
    handlerUID = v5->_handlerUID;
    v5->_handlerUID = v6;

    v8 = FCAppConfigurationStringValue(v4, @"operationUID", 0);
    operationUID = v5->_operationUID;
    v5->_operationUID = v8;

    v5->_requiredAppLaunchCount = FCAppConfigurationIntegerValue(v4, @"requiredAppLaunchCount", 0);
    v10 = [v4 objectForKeyedSubscript:@"maxPrecedingSameSessionPresentations"];
    if (v10)
    {
      v11 = v10;
      v12 = [v4 objectForKeyedSubscript:@"maxPrecedingSameSessionPresentations"];
      v13 = [MEMORY[0x1E695DFB0] null];

      if (v12 == v13)
      {
        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{FCAppConfigurationIntegerValue(v4, @"maxPrecedingSameSessionPresentations", 0)}];
      }
    }

    maxPrecedingSameSessionPresentations = v5->_maxPrecedingSameSessionPresentations;
    v5->_maxPrecedingSameSessionPresentations = v10;

    v15 = [v4 objectForKeyedSubscript:@"maxPresentationAttempts"];
    if (v15)
    {
      v16 = v15;
      v17 = [v4 objectForKeyedSubscript:@"maxPresentationAttempts"];
      v18 = [MEMORY[0x1E695DFB0] null];

      if (v17 == v18)
      {
        v15 = 0;
      }

      else
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInteger:{FCAppConfigurationIntegerValue(v4, @"maxPresentationAttempts", 0)}];
      }
    }

    maxPresentationAttempts = v5->_maxPresentationAttempts;
    v5->_maxPresentationAttempts = v15;

    v5->_endsPresentationSession = FCAppConfigurationBoolValue(v4, @"endsPresentationSession", 0);
    v5->_suppressOnLaunchConditions = FCAppConfigurationIntegerValue(v4, @"suppressOnLaunchConditions", 0);
    v5->_ignoreAfterSuccessfulPresentation = FCAppConfigurationBoolValue(v4, @"ignoreAfterSuccessfulPresentation", 0);
    v20 = [v4 objectForKeyedSubscript:@"maxRetries"];
    if (v20)
    {
      v21 = v20;
      v22 = [v4 objectForKeyedSubscript:@"maxRetries"];
      v23 = [MEMORY[0x1E695DFB0] null];

      if (v22 == v23)
      {
        v20 = 0;
      }

      else
      {
        v20 = [MEMORY[0x1E696AD98] numberWithInteger:{FCAppConfigurationIntegerValue(v4, @"maxRetries", 0)}];
      }
    }

    maxRetries = v5->_maxRetries;
    v5->_maxRetries = v20;
  }

  return v5;
}

@end