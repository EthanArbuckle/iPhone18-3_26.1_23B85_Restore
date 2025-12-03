@interface CMSError
+ (id)_descriptionForErrorCode:(int64_t)code;
+ (id)errorWithDomain:(id)domain code:(int64_t)code;
+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description;
@end

@implementation CMSError

+ (id)errorWithDomain:(id)domain code:(int64_t)code
{
  domainCopy = domain;
  v6 = [CMSError _descriptionForErrorCode:code];
  v7 = [CMSError errorWithDomain:domainCopy code:code description:v6];

  return v7;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v16[0] = description;
  v8 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  domainCopy = domain;
  v11 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v7 errorWithDomain:domainCopy code:code userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_descriptionForErrorCode:(int64_t)code
{
  if (code <= 1000)
  {
    if (code > 2)
    {
      if (code == 3)
      {
        return @"ImageURL is Nil";
      }

      if (code == 1000)
      {
        return @"Playback queue unavailable";
      }
    }

    else
    {
      if (code == 1)
      {
        return @"Invalid XPC connection";
      }

      if (code == 2)
      {
        return @"Unsupported parameter value passed";
      }
    }

    return @"Unknown error occurred";
  }

  if (code > 1002)
  {
    if (code == 1003)
    {
      return @"Multi stream limit reached";
    }

    if (code == 1004)
    {
      return @"Maximum number of content items allowed in a single queue segment exceeded";
    }

    return @"Unknown error occurred";
  }

  if (code == 1001)
  {
    return @"Remote destination not found";
  }

  else
  {
    return @"Send Playback Queue failed";
  }
}

@end