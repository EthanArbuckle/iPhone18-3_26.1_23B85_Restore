@interface SGMessageCompletionHandlerParams
- (SGMessageCompletionHandlerParams)initWithError:(id)error foundContacts:(id)contacts foundEvents:(id)events invalidatedMessageIdentifiers:(id)identifiers;
@end

@implementation SGMessageCompletionHandlerParams

- (SGMessageCompletionHandlerParams)initWithError:(id)error foundContacts:(id)contacts foundEvents:(id)events invalidatedMessageIdentifiers:(id)identifiers
{
  errorCopy = error;
  contactsCopy = contacts;
  eventsCopy = events;
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = SGMessageCompletionHandlerParams;
  v15 = [(SGMessageCompletionHandlerParams *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_error, error);
    v17 = objc_opt_new();
    tuple = v16->_tuple;
    v16->_tuple = v17;

    [(SGRealtimeSuggestionsTuple *)v16->_tuple setContacts:contactsCopy];
    [(SGRealtimeSuggestionsTuple *)v16->_tuple setEvents:eventsCopy];
    [(SGRealtimeSuggestionsTuple *)v16->_tuple setInvalidatedIdentifiers:identifiersCopy];
  }

  return v16;
}

@end