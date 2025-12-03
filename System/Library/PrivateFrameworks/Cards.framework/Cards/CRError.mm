@interface CRError
+ (id)errorWithCode:(int64_t)code description:(id)description underlyingError:(id)error userInfo:(id)info;
@end

@implementation CRError

+ (id)errorWithCode:(int64_t)code description:(id)description underlyingError:(id)error userInfo:(id)info
{
  descriptionCopy = description;
  errorCopy = error;
  infoCopy = info;
  if (infoCopy)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:infoCopy copyItems:1];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v14 = CRErrorCodeGetName(code);
  v15 = v14;
  if (descriptionCopy && v14)
  {
    descriptionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@: %@", v14, descriptionCopy];
    [v13 setObject:descriptionCopy forKey:*MEMORY[0x277CCA450]];
  }

  else if (v14)
  {
    [v13 setObject:v14 forKey:*MEMORY[0x277CCA450]];
  }

  if (errorCopy)
  {
    [v13 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
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

  v19 = [v17 errorWithDomain:@"com.apple.cards.error" code:code userInfo:v18];

  return v19;
}

@end