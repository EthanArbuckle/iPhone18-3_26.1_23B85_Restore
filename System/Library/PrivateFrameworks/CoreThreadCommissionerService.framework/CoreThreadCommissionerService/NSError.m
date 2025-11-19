@interface NSError
+ (id)storeError:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
@end

@implementation NSError

+ (id)storeError:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (!(v7 | v8))
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (!v8)
  {
    v20 = NSUnderlyingErrorKey;
    v21 = v7;
    v10 = &v21;
    v11 = &v20;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  if (!v7)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = v8;
    v10 = &v19;
    v11 = &v18;
    goto LABEL_8;
  }

  v16[0] = NSUnderlyingErrorKey;
  v16[1] = NSLocalizedDescriptionKey;
  v17[0] = v7;
  v17[1] = v8;
  v10 = v17;
  v11 = v16;
  v12 = 2;
LABEL_9:
  v13 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];
LABEL_10:
  v14 = [NSError errorWithDomain:@"ThreadCredentialsStore" code:a3 userInfo:v13];

  return v14;
}

@end