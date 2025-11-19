@interface SGMessageCompletionHandlerParams
- (SGMessageCompletionHandlerParams)initWithError:(id)a3 foundContacts:(id)a4 foundEvents:(id)a5 invalidatedMessageIdentifiers:(id)a6;
@end

@implementation SGMessageCompletionHandlerParams

- (SGMessageCompletionHandlerParams)initWithError:(id)a3 foundContacts:(id)a4 foundEvents:(id)a5 invalidatedMessageIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SGMessageCompletionHandlerParams;
  v15 = [(SGMessageCompletionHandlerParams *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_error, a3);
    v17 = objc_opt_new();
    tuple = v16->_tuple;
    v16->_tuple = v17;

    [(SGRealtimeSuggestionsTuple *)v16->_tuple setContacts:v12];
    [(SGRealtimeSuggestionsTuple *)v16->_tuple setEvents:v13];
    [(SGRealtimeSuggestionsTuple *)v16->_tuple setInvalidatedIdentifiers:v14];
  }

  return v16;
}

@end