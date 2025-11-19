@interface MSParsecSearchSessionSuggestion
+ (id)suggestionWithIdentifier:(id)a3 category:(id)a4 option:(int64_t)a5 resultDetails:(id)a6;
- (MSParsecSearchSessionSuggestion)initWithIdentifier:(id)a3 category:(id)a4 option:(int64_t)a5 resultDetails:(id)a6;
- (id)_suggestionBundleID;
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionSuggestion

+ (id)suggestionWithIdentifier:(id)a3 category:(id)a4 option:(int64_t)a5 resultDetails:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[a1 alloc] initWithIdentifier:v10 category:v11 option:a5 resultDetails:v12];

  return v13;
}

- (MSParsecSearchSessionSuggestion)initWithIdentifier:(id)a3 category:(id)a4 option:(int64_t)a5 resultDetails:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MSParsecSearchSessionSuggestion;
  v14 = [(MSParsecSearchSessionSuggestion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resultID, a3);
    objc_storeStrong(&v15->_category, a4);
    v15->_option = a5;
    objc_storeStrong(&v15->_resultDetails, a6);
  }

  return v15;
}

- (id)feedbackResult
{
  v3 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  [v3 setIdentifier:self->_resultID];
  [v3 setSectionBundleIdentifier:self->_category];
  v4 = [(MSParsecSearchSessionSuggestion *)self _suggestionBundleID];
  [v3 setResultBundleId:v4];

  [v3 setType:2];
  [v3 setMailResultDetails:self->_resultDetails];

  return v3;
}

- (id)_suggestionBundleID
{
  v2 = [(MSParsecSearchSessionSuggestion *)self option];
  v3 = @"com.apple.mail.search.suggestion";
  if (v2 == 1)
  {
    v3 = @"com.apple.mail.search.suggestion.vip";
  }

  if (v2 == 2)
  {
    return @"com.apple.mail.search.suggestion.usertyped";
  }

  else
  {
    return v3;
  }
}

@end