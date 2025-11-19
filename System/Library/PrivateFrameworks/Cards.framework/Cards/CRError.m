@interface CRError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingError:(id)a5 userInfo:(id)a6;
@end

@implementation CRError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingError:(id)a5 userInfo:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v11 copyItems:1];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v14 = CRErrorCodeGetName(a3);
  v15 = v14;
  if (v9 && v14)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@: %@", v14, v9];
    [v13 setObject:v16 forKey:*MEMORY[0x277CCA450]];
  }

  else if (v14)
  {
    [v13 setObject:v14 forKey:*MEMORY[0x277CCA450]];
  }

  if (v10)
  {
    [v13 setObject:v10 forKey:*MEMORY[0x277CCA7E8]];
  }

  v17 = MEMORY[0x277CCA9B8];
  if ([v13 count])
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v17 errorWithDomain:@"com.apple.cards.error" code:a3 userInfo:v18];

  return v19;
}

@end