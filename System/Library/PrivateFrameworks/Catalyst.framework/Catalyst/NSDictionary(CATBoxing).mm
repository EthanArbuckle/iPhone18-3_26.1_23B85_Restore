@interface NSDictionary(CATBoxing)
- (id)cat_errorValue;
@end

@implementation NSDictionary(CATBoxing)

- (id)cat_errorValue
{
  v2 = [self objectForKeyedSubscript:@"Domain"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [self objectForKeyedSubscript:@"Code"];
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

  v8 = [self objectForKeyedSubscript:@"UserInfo"];
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

  v11 = 0;
  if (v4)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:v4 code:objc_msgSend(v7 userInfo:{"integerValue"), v10}];
  }

  return v11;
}

@end