@interface CATInitializingIDSServiceConnectionContentReject
+ (id)instanceWithDictionary:(id)dictionary;
- (CATInitializingIDSServiceConnectionContentReject)initWithConnectionIdentifier:(id)identifier error:(id)error;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentReject

- (CATInitializingIDSServiceConnectionContentReject)initWithConnectionIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = CATInitializingIDSServiceConnectionContentReject;
  v9 = [(CATInitializingIDSServiceConnectionContentReject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionIdentifier, identifier);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  connectionIdentifier = [(CATInitializingIDSServiceConnectionContentReject *)self connectionIdentifier];
  uUIDString = [connectionIdentifier UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"ConnectionIdenfitier"];

  error = [(CATInitializingIDSServiceConnectionContentReject *)self error];
  cat_dictionaryValue = [error cat_dictionaryValue];
  [v3 setObject:cat_dictionaryValue forKeyedSubscript:@"Error"];

  v8 = [v3 copy];

  return v8;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Error"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  cat_errorValue = [v7 cat_errorValue];

  v9 = [dictionaryCopy cat_uuidForKey:@"ConnectionIdenfitier"];

  if (v9)
  {
    v10 = [[self alloc] initWithConnectionIdentifier:v9 error:cat_errorValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end