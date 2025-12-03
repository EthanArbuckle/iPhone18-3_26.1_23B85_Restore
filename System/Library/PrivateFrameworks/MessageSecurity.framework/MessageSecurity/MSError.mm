@interface MSError
+ (id)MSErrorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error description:(id)description;
+ (id)MSErrorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error description:(id)description arguments:(char *)arguments;
+ (id)MSErrorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error description:(id)description;
@end

@implementation MSError

+ (id)MSErrorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error description:(id)description arguments:(char *)arguments
{
  domainCopy = domain;
  errorCopy = error;
  descriptionCopy = description;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = v16;
  if (errorCopy)
  {
    [v16 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  if (descriptionCopy)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:descriptionCopy arguments:arguments];
    [v17 setObject:v18 forKey:*MEMORY[0x277CCA450]];
    if (!level)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v18 = 0;
  if (level)
  {
LABEL_5:
    _MSLog(level, v18);
  }

LABEL_6:
  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v17];

  return v19;
}

+ (id)MSErrorWithDomain:(id)domain code:(int64_t)code errorLevel:(unint64_t)level underlyingError:(id)error description:(id)description
{
  v7 = [MSError MSErrorWithDomain:domain code:code errorLevel:level underlyingError:error description:description arguments:&v10];

  return v7;
}

+ (id)MSErrorWithDomain:(id)domain code:(int64_t)code underlyingError:(id)error description:(id)description
{
  v6 = [MSError MSErrorWithDomain:domain code:code errorLevel:5 underlyingError:error description:description arguments:&v9];

  return v6;
}

@end