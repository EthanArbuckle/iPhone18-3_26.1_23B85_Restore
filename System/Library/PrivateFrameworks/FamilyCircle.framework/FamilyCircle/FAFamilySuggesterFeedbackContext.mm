@interface FAFamilySuggesterFeedbackContext
- (FAFamilySuggesterFeedbackContext)initWithMegadomeFeedbackEventID:(int64_t)a3;
- (FAFamilySuggesterFeedbackContext)initWithPredictionContext:(id)a3 suggestions:(id)a4;
@end

@implementation FAFamilySuggesterFeedbackContext

- (FAFamilySuggesterFeedbackContext)initWithPredictionContext:(id)a3 suggestions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FAFamilySuggesterFeedbackContext;
  v9 = [(FAFamilySuggesterFeedbackContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peopleSuggesterPredictionContext, a3);
    objc_storeStrong(&v10->_peopleSuggesterSuggestions, a4);
    v10->_megadomeFeedbackEventId = -1;
  }

  return v10;
}

- (FAFamilySuggesterFeedbackContext)initWithMegadomeFeedbackEventID:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = FAFamilySuggesterFeedbackContext;
  v4 = [(FAFamilySuggesterFeedbackContext *)&v9 init];
  v5 = v4;
  if (v4)
  {
    peopleSuggesterPredictionContext = v4->_peopleSuggesterPredictionContext;
    v4->_peopleSuggesterPredictionContext = 0;

    peopleSuggesterSuggestions = v5->_peopleSuggesterSuggestions;
    v5->_peopleSuggesterSuggestions = 0;

    v5->_megadomeFeedbackEventId = a3;
  }

  return v5;
}

@end