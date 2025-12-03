@interface NSError
+ (id)FPSAPS_errorDescriptionForCode:(int64_t)code;
+ (id)FPSAPS_errorWithCode:(int64_t)code;
+ (id)FPSAPS_errorWithCode:(int64_t)code andDescription:(id)description;
+ (id)MFAA_errorWithDomain:(id)domain code:(int64_t)code;
+ (id)MFAA_errorWithDomain:(id)domain code:(int64_t)code description:(id)description;
+ (id)MFAA_errorWithDomain:(id)domain code:(int64_t)code failureReason:(id)reason;
@end

@implementation NSError

+ (id)MFAA_errorWithDomain:(id)domain code:(int64_t)code
{
  domainCopy = domain;
  v6 = errorDescription(domainCopy, code);
  v7 = [NSError MFAA_errorWithDomain:domainCopy code:code description:v6];

  return v7;
}

+ (id)MFAA_errorWithDomain:(id)domain code:(int64_t)code description:(id)description
{
  domainCopy = domain;
  descriptionCopy = description;
  v9 = descriptionCopy;
  if (descriptionCopy)
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = descriptionCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSError errorWithDomain:domainCopy code:code userInfo:v10];

  return v11;
}

+ (id)MFAA_errorWithDomain:(id)domain code:(int64_t)code failureReason:(id)reason
{
  domainCopy = domain;
  reasonCopy = reason;
  if (reasonCopy)
  {
    v13[0] = NSLocalizedDescriptionKey;
    v9 = errorDescription(domainCopy, code);
    v13[1] = NSLocalizedFailureReasonErrorKey;
    v14[0] = v9;
    v14[1] = reasonCopy;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSError errorWithDomain:domainCopy code:code userInfo:v10];

  return v11;
}

+ (id)FPSAPS_errorDescriptionForCode:(int64_t)code
{
  if (code < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  else
  {
    return *(&off_100080B78 + code + 7);
  }
}

+ (id)FPSAPS_errorWithCode:(int64_t)code
{
  v4 = [NSError FPSAPS_errorDescriptionForCode:?];
  v5 = [NSError FPSAPS_errorWithCode:code andDescription:v4];

  return v5;
}

+ (id)FPSAPS_errorWithCode:(int64_t)code andDescription:(id)description
{
  descriptionCopy = description;
  v6 = descriptionCopy;
  if (descriptionCopy)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = descriptionCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:code userInfo:v7];

  return v8;
}

@end