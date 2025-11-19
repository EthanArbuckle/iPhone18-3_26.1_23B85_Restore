@interface CMSError
+ (id)_descriptionForErrorCode:(int64_t)a3;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5;
@end

@implementation CMSError

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  v6 = [CMSError _descriptionForErrorCode:a4];
  v7 = [CMSError errorWithDomain:v5 code:a4 description:v6];

  return v7;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v16[0] = a5;
  v8 = MEMORY[0x277CBEAC0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v7 errorWithDomain:v10 code:a4 userInfo:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_descriptionForErrorCode:(int64_t)a3
{
  if (a3 <= 1000)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        return @"ImageURL is Nil";
      }

      if (a3 == 1000)
      {
        return @"Playback queue unavailable";
      }
    }

    else
    {
      if (a3 == 1)
      {
        return @"Invalid XPC connection";
      }

      if (a3 == 2)
      {
        return @"Unsupported parameter value passed";
      }
    }

    return @"Unknown error occurred";
  }

  if (a3 > 1002)
  {
    if (a3 == 1003)
    {
      return @"Multi stream limit reached";
    }

    if (a3 == 1004)
    {
      return @"Maximum number of content items allowed in a single queue segment exceeded";
    }

    return @"Unknown error occurred";
  }

  if (a3 == 1001)
  {
    return @"Remote destination not found";
  }

  else
  {
    return @"Send Playback Queue failed";
  }
}

@end