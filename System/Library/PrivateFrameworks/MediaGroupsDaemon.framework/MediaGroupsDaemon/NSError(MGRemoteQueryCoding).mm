@interface NSError(MGRemoteQueryCoding)
+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding;
- (id)rq_coded;
@end

@implementation NSError(MGRemoteQueryCoding)

- (id)rq_coded
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 domain];
  v4 = [v3 rq_coded];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "code")}];
  v6 = [v5 rq_coded];

  v7 = [v4 rq_coded];
  [v2 setObject:v7 forKey:@"domain"];

  v8 = [v6 rq_coded];
  [v2 setObject:v8 forKey:@"code"];

  return v2;
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