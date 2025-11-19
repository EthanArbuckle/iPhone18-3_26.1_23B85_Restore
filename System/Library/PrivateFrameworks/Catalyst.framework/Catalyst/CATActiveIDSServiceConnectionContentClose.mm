@interface CATActiveIDSServiceConnectionContentClose
+ (id)instanceWithDictionary:(id)a3;
- (CATActiveIDSServiceConnectionContentClose)initWithError:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CATActiveIDSServiceConnectionContentClose

- (CATActiveIDSServiceConnectionContentClose)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATActiveIDSServiceConnectionContentClose;
  v6 = [(CATActiveIDSServiceConnectionContentClose *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CATActiveIDSServiceConnectionContentClose *)self error];
  v5 = [v4 cat_dictionaryValue];
  [v3 setObject:v5 forKeyedSubscript:@"Error"];

  v6 = [v3 copy];

  return v6;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"Error"];
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

  v7 = [v6 cat_errorValue];

  v8 = [[a1 alloc] initWithError:v7];

  return v8;
}

@end