@interface CATActiveIDSServiceConnectionContentClose
+ (id)instanceWithDictionary:(id)dictionary;
- (CATActiveIDSServiceConnectionContentClose)initWithError:(id)error;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentClose

- (CATActiveIDSServiceConnectionContentClose)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CATActiveIDSServiceConnectionContentClose;
  v6 = [(CATActiveIDSServiceConnectionContentClose *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  error = [(CATActiveIDSServiceConnectionContentClose *)self error];
  cat_dictionaryValue = [error cat_dictionaryValue];
  [v3 setObject:cat_dictionaryValue forKeyedSubscript:@"Error"];

  v6 = [v3 copy];

  return v6;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"Error"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  cat_errorValue = [v6 cat_errorValue];

  v8 = [[self alloc] initWithError:cat_errorValue];

  return v8;
}

@end