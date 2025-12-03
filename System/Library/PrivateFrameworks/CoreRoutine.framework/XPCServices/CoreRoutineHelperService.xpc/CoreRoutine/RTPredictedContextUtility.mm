@interface RTPredictedContextUtility
+ (BOOL)deleteModelWithOutError:(id *)error;
+ (BOOL)writeModel:(id)model error:(id *)error;
+ (id)modelPath;
+ (id)readAlgorithmStateWithError:(id *)error;
+ (id)readModelWithError:(id *)error;
@end

@implementation RTPredictedContextUtility

+ (id)modelPath
{
  v2 = +[NSFileManager routineCacheDirectoryPath];
  v3 = [v2 stringByAppendingPathComponent:@"PredictedContext.bin"];

  return v3;
}

+ (id)readModelWithError:(id *)error
{
  modelPath = [objc_opt_class() modelPath];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:modelPath];

  if (!v6)
  {
    v7 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  v7 = [NSData dataWithContentsOfFile:modelPath options:0 error:&v10];
  v8 = v10;
  if (error)
  {
LABEL_5:
    v8 = v8;
    *error = v8;
  }

LABEL_6:

  return v7;
}

+ (id)readAlgorithmStateWithError:(id *)error
{
  v9 = 0;
  v4 = [objc_opt_class() readModelWithError:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [[PCPAlgorithmState alloc] initWithData:v4];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (error)
  {
LABEL_3:
    v7 = v5;
    *error = v5;
  }

LABEL_4:

  return v6;
}

+ (BOOL)writeModel:(id)model error:(id *)error
{
  modelCopy = model;
  if (modelCopy || !error)
  {
    v7 = +[RTPredictedContextUtility modelPath];
    v16 = NSFileProtectionKey;
    v17 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = +[NSFileManager defaultManager];
    v8 = [v10 createFileAtPath:v7 contents:modelCopy attributes:v9];

    if (error && !v8)
    {
      v11 = RTErrorDomain;
      v14 = NSLocalizedDescriptionKey;
      v15 = @"failed to write model";
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [NSError errorWithDomain:v11 code:7 userInfo:v12];
    }
  }

  else
  {
    v6 = RTErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v19 = @"nil model";
    v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [NSError errorWithDomain:v6 code:7 userInfo:v7];
    *error = LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)deleteModelWithOutError:(id *)error
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

    if (error && (v8 & 1) == 0)
    {
      v10 = v9;
      v8 = 0;
      *error = v9;
    }
  }

  else
  {
    if (error)
    {
      v11 = RTErrorDomain;
      v15 = NSLocalizedDescriptionKey;
      v16 = @"Model file doesn't exist.";
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      *error = [NSError errorWithDomain:v11 code:0 userInfo:v12];
    }

    v9 = 0;
    v8 = 0;
  }

  return v8;
}

@end