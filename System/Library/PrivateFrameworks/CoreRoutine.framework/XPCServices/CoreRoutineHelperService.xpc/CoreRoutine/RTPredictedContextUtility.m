@interface RTPredictedContextUtility
+ (BOOL)deleteModelWithOutError:(id *)a3;
+ (BOOL)writeModel:(id)a3 error:(id *)a4;
+ (id)modelPath;
+ (id)readAlgorithmStateWithError:(id *)a3;
+ (id)readModelWithError:(id *)a3;
@end

@implementation RTPredictedContextUtility

+ (id)modelPath
{
  v2 = +[NSFileManager routineCacheDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"PredictedContext.bin"];

  return v3;
}

+ (id)readModelWithError:(id *)a3
{
  v4 = [objc_opt_class() modelPath];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (!v6)
  {
    v7 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v7 = [NSData dataWithContentsOfFile:v4 options:0 error:&v10];
  v8 = v10;
  if (a3)
  {
LABEL_5:
    v8 = v8;
    *a3 = v8;
  }

LABEL_6:

  return v7;
}

+ (id)readAlgorithmStateWithError:(id *)a3
{
  v9 = 0;
  v4 = [objc_opt_class() readModelWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [[PCPAlgorithmState alloc] initWithData:v4];
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    v7 = v5;
    *a3 = v5;
  }

LABEL_4:

  return v6;
}

+ (BOOL)writeModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5 || !a4)
  {
    v7 = +[RTPredictedContextUtility modelPath];
    v16 = NSFileProtectionKey;
    v17 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = +[NSFileManager defaultManager];
    v8 = [v10 createFileAtPath:v7 contents:v5 attributes:v9];

    if (a4 && !v8)
    {
      v11 = RTErrorDomain;
      v14 = NSLocalizedDescriptionKey;
      v15 = @"failed to write model";
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *a4 = [NSError errorWithDomain:v11 code:7 userInfo:v12];
    }
  }

  else
  {
    v6 = RTErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v19 = @"nil model";
    v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [NSError errorWithDomain:v6 code:7 userInfo:v7];
    *a4 = LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)deleteModelWithOutError:(id *)a3
{
  v4 = +[RTPredictedContextUtility modelPath];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v14 = 0;
    v8 = [v7 removeItemAtPath:v4 error:&v14];
    v9 = v14;

    if (a3 && (v8 & 1) == 0)
    {
      v10 = v9;
      v8 = 0;
      *a3 = v9;
    }
  }

  else
  {
    if (a3)
    {
      v11 = RTErrorDomain;
      v15 = NSLocalizedDescriptionKey;
      v16 = @"Model file doesn't exist.";
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *a3 = [NSError errorWithDomain:v11 code:0 userInfo:v12];
    }

    v9 = 0;
    v8 = 0;
  }

  return v8;
}

@end