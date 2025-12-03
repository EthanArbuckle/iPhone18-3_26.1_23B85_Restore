@interface BCSError
+ (id)errorWithDomain:(id)domain code:(int64_t)code errorDescription:(id)description;
+ (id)errorWithDomain:(id)domain code:(int64_t)code errorDescription:(id)description localizedDescription:(id)localizedDescription;
+ (id)errorWithError:(id)error;
- (BCSError)initWithError:(id)error;
- (id)errorDescription;
- (id)localizedDescription;
@end

@implementation BCSError

+ (id)errorWithDomain:(id)domain code:(int64_t)code errorDescription:(id)description
{
  if (domain)
  {
    descriptionCopy = description;
    domainCopy = domain;
    if ([(__CFString *)descriptionCopy length])
    {
      v9 = descriptionCopy;
    }

    else
    {
      v9 = &stru_28544C2A0;
    }

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v9, @"BCSErrorDescriptionKey", 0}];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v10];

    v12 = [BCSError errorWithError:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code errorDescription:(id)description localizedDescription:(id)localizedDescription
{
  if (domain)
  {
    localizedDescriptionCopy = localizedDescription;
    descriptionCopy = description;
    domainCopy = domain;
    v12 = [(__CFString *)descriptionCopy length];
    v13 = &stru_28544C2A0;
    if (v12)
    {
      v13 = descriptionCopy;
    }

    v14 = v13;
    if ([(__CFString *)localizedDescriptionCopy length])
    {
      v15 = localizedDescriptionCopy;
    }

    else
    {
      v15 = v14;
    }

    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v14, @"BCSErrorDescriptionKey", v15, *MEMORY[0x277CCA450], 0}];
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:code userInfo:v16];

    v18 = [BCSError errorWithError:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)errorWithError:(id)error
{
  errorCopy = error;
  v4 = [[BCSError alloc] initWithError:errorCopy];

  return v4;
}

- (BCSError)initWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];

  if (domain)
  {
    domain2 = [errorCopy domain];
    code = [errorCopy code];
    userInfo = [errorCopy userInfo];
    v11.receiver = self;
    v11.super_class = BCSError;
    v9 = [(BCSError *)&v11 initWithDomain:domain2 code:code userInfo:userInfo];
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (id)errorDescription
{
  userInfo = [(BCSError *)self userInfo];
  v3 = [userInfo objectForKey:@"BCSErrorDescriptionKey"];

  return v3;
}

- (id)localizedDescription
{
  userInfo = [(BCSError *)self userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277CCA450]];

  if (v4)
  {
    errorDescription = v4;
  }

  else
  {
    errorDescription = [(BCSError *)self errorDescription];
  }

  v6 = errorDescription;

  return v6;
}

@end