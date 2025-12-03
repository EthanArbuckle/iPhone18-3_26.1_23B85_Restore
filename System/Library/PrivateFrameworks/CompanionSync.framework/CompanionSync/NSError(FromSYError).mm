@interface NSError(FromSYError)
+ (id)errorFromSYErrorInfo:()FromSYError;
@end

@implementation NSError(FromSYError)

+ (id)errorFromSYErrorInfo:()FromSYError
{
  if (a3)
  {
    v4 = a3;
    userInfo = [v4 userInfo];
    if (userInfo)
    {
      v6 = [MEMORY[0x1E696ACD0] sy_unarchivedObjectFromData:userInfo];
    }

    else
    {
      v6 = 0;
    }

    domain = [v4 domain];
    code = [v4 code];

    v7 = [self errorWithDomain:domain code:code userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end