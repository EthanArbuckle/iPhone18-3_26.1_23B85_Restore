@interface MSParsecSearchSessionSuggestion
+ (id)suggestionWithIdentifier:(id)identifier category:(id)category option:(int64_t)option resultDetails:(id)details;
- (MSParsecSearchSessionSuggestion)initWithIdentifier:(id)identifier category:(id)category option:(int64_t)option resultDetails:(id)details;
- (id)_suggestionBundleID;
- (id)feedbackResult;
@end

@implementation MSParsecSearchSessionSuggestion

+ (id)suggestionWithIdentifier:(id)identifier category:(id)category option:(int64_t)option resultDetails:(id)details
{
  identifierCopy = identifier;
  categoryCopy = category;
  detailsCopy = details;
  v13 = [[self alloc] initWithIdentifier:identifierCopy category:categoryCopy option:option resultDetails:detailsCopy];

  return v13;
}

- (MSParsecSearchSessionSuggestion)initWithIdentifier:(id)identifier category:(id)category option:(int64_t)option resultDetails:(id)details
{
  identifierCopy = identifier;
  categoryCopy = category;
  detailsCopy = details;
  v17.receiver = self;
  v17.super_class = MSParsecSearchSessionSuggestion;
  v14 = [(MSParsecSearchSessionSuggestion *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_resultID, identifier);
    objc_storeStrong(&v15->_category, category);
    v15->_option = option;
    objc_storeStrong(&v15->_resultDetails, details);
  }

  return v15;
}

- (id)feedbackResult
{
  v3 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  [v3 setIdentifier:self->_resultID];
  [v3 setSectionBundleIdentifier:self->_category];
  _suggestionBundleID = [(MSParsecSearchSessionSuggestion *)self _suggestionBundleID];
  [v3 setResultBundleId:_suggestionBundleID];

  [v3 setType:2];
  [v3 setMailResultDetails:self->_resultDetails];

  return v3;
}

- (id)_suggestionBundleID
{
  option = [(MSParsecSearchSessionSuggestion *)self option];
  v3 = @"com.apple.mail.search.suggestion";
  if (option == 1)
  {
    v3 = @"com.apple.mail.search.suggestion.vip";
  }

  if (option == 2)
  {
    return @"com.apple.mail.search.suggestion.usertyped";
  }

  else
  {
    return v3;
  }
}

@end