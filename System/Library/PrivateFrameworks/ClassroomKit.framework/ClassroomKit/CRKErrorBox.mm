@interface CRKErrorBox
+ (id)instanceWithDictionary:(id)a3;
- (CRKErrorBox)initWithError:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKErrorBox

- (CRKErrorBox)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKErrorBox;
  v6 = [(CRKErrorBox *)&v9 init];
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
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CRKErrorBox *)self error];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "code")}];
  [v3 setObject:v6 forKeyedSubscript:@"Code"];

  v7 = [(CRKErrorBox *)self error];
  v8 = [v7 domain];
  [v3 setObject:v8 forKeyedSubscript:@"Domain"];

  v9 = [(CRKErrorBox *)self error];
  v10 = [v9 userInfo];
  [v3 setObject:v10 forKeyedSubscript:@"UserInfo"];

  v11 = [v3 copy];

  return v11;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Domain"];
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

  v8 = [v4 objectForKeyedSubscript:@"Code"];
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

  v11 = [v4 objectForKeyedSubscript:@"UserInfo"];

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
    v14 = [[a1 alloc] initWithError:v15];
  }

  return v14;
}

@end