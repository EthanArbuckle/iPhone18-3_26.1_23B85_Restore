@interface CATInitializingIDSServiceConnectionContentReject
+ (id)instanceWithDictionary:(id)a3;
- (CATInitializingIDSServiceConnectionContentReject)initWithConnectionIdentifier:(id)a3 error:(id)a4;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentReject

- (CATInitializingIDSServiceConnectionContentReject)initWithConnectionIdentifier:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CATInitializingIDSServiceConnectionContentReject;
  v9 = [(CATInitializingIDSServiceConnectionContentReject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionIdentifier, a3);
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v3 = objc_opt_new();
  v4 = [(CATInitializingIDSServiceConnectionContentReject *)self connectionIdentifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"ConnectionIdenfitier"];

  v6 = [(CATInitializingIDSServiceConnectionContentReject *)self error];
  v7 = [v6 cat_dictionaryValue];
  [v3 setObject:v7 forKeyedSubscript:@"Error"];

  v8 = [v3 copy];

  return v8;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Error"];
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

  v8 = [v7 cat_errorValue];

  v9 = [v4 cat_uuidForKey:@"ConnectionIdenfitier"];

  if (v9)
  {
    v10 = [[a1 alloc] initWithConnectionIdentifier:v9 error:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end