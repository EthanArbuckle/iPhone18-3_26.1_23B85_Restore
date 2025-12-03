@interface NSError(MGRemoteQueryCoding)
+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding;
- (id)rq_coded;
@end

@implementation NSError(MGRemoteQueryCoding)

- (id)rq_coded
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  domain = [self domain];
  rq_coded = [domain rq_coded];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "code")}];
  rq_coded2 = [v5 rq_coded];

  v4Rq_coded = [rq_coded rq_coded];
  [dictionary setObject:v4Rq_coded forKey:@"domain"];

  v6Rq_coded = [rq_coded2 rq_coded];
  [dictionary setObject:v6Rq_coded forKey:@"code"];

  return dictionary;
}

+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 rq_stringForKey:@"domain"];
  v6 = [v4 rq_numberForKey:@"code"];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:objc_msgSend(v6 userInfo:{"integerValue"), 0}];
  }

  return v8;
}

@end