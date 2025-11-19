@interface NSError(FromSYError)
+ (id)errorFromSYErrorInfo:()FromSYError;
@end

@implementation NSError(FromSYError)

+ (id)errorFromSYErrorInfo:()FromSYError
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 userInfo];
    if (v5)
    {
      v6 = [MEMORY[0x1E696ACD0] sy_unarchivedObjectFromData:v5];
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 domain];
    v9 = [v4 code];

    v7 = [a1 errorWithDomain:v8 code:v9 userInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end