@interface NSError
+ (id)FPSAPS_errorDescriptionForCode:(int64_t)a3;
+ (id)FPSAPS_errorWithCode:(int64_t)a3;
+ (id)FPSAPS_errorWithCode:(int64_t)a3 andDescription:(id)a4;
+ (id)MFAA_errorWithDomain:(id)a3 code:(int64_t)a4;
+ (id)MFAA_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5;
+ (id)MFAA_errorWithDomain:(id)a3 code:(int64_t)a4 failureReason:(id)a5;
@end

@implementation NSError

+ (id)MFAA_errorWithDomain:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  v6 = errorDescription(v5, a4);
  v7 = [NSError MFAA_errorWithDomain:v5 code:a4 description:v6];

  return v7;
}

+ (id)MFAA_errorWithDomain:(id)a3 code:(int64_t)a4 description:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v13 = NSLocalizedDescriptionKey;
    v14 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSError errorWithDomain:v7 code:a4 userInfo:v10];

  return v11;
}

+ (id)MFAA_errorWithDomain:(id)a3 code:(int64_t)a4 failureReason:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    v13[0] = NSLocalizedDescriptionKey;
    v9 = errorDescription(v7, a4);
    v13[1] = NSLocalizedFailureReasonErrorKey;
    v14[0] = v9;
    v14[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSError errorWithDomain:v7 code:a4 userInfo:v10];

  return v11;
}

+ (id)FPSAPS_errorDescriptionForCode:(int64_t)a3
{
  if (a3 < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  else
  {
    return *(&off_100080B78 + a3 + 7);
  }
}

+ (id)FPSAPS_errorWithCode:(int64_t)a3
{
  v4 = [NSError FPSAPS_errorDescriptionForCode:?];
  v5 = [NSError FPSAPS_errorWithCode:a3 andDescription:v4];

  return v5;
}

+ (id)FPSAPS_errorWithCode:(int64_t)a3 andDescription:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSError errorWithDomain:@"FairPlaySAPSessionErrorDomain" code:a3 userInfo:v7];

  return v8;
}

@end