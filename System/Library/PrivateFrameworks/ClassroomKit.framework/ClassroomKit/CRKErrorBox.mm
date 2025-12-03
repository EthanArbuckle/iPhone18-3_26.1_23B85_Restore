@interface CRKErrorBox
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKErrorBox)initWithError:(id)error;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKErrorBox

- (CRKErrorBox)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = CRKErrorBox;
  v6 = [(CRKErrorBox *)&v9 init];
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
  v4 = MEMORY[0x277CCABB0];
  error = [(CRKErrorBox *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(error, "code")}];
  [v3 setObject:v6 forKeyedSubscript:@"Code"];

  error2 = [(CRKErrorBox *)self error];
  domain = [error2 domain];
  [v3 setObject:domain forKeyedSubscript:@"Domain"];

  error3 = [(CRKErrorBox *)self error];
  userInfo = [error3 userInfo];
  [v3 setObject:userInfo forKeyedSubscript:@"UserInfo"];

  v11 = [v3 copy];

  return v11;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Domain"];
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

  v8 = [dictionaryCopy objectForKeyedSubscript:@"Code"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"UserInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = 0;
  if (v7 && v10)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:objc_msgSend(v10 userInfo:{"integerValue"), v13}];
    v14 = [[self alloc] initWithError:v15];
  }

  return v14;
}

@end