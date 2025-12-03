@interface NSError
+ (id)storeError:(int64_t)error underlyingError:(id)underlyingError description:(id)description;
@end

@implementation NSError

+ (id)storeError:(int64_t)error underlyingError:(id)underlyingError description:(id)description
{
  underlyingErrorCopy = underlyingError;
  descriptionCopy = description;
  v9 = descriptionCopy;
  if (!(underlyingErrorCopy | descriptionCopy))
  {
    v13 = 0;
    goto LABEL_10;
  }

  if (!descriptionCopy)
  {
    v20 = NSUnderlyingErrorKey;
    v21 = underlyingErrorCopy;
    v10 = &v21;
    v11 = &v20;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  if (!underlyingErrorCopy)
  {
    v18 = NSLocalizedDescriptionKey;
    v19 = descriptionCopy;
    v10 = &v19;
    v11 = &v18;
    goto LABEL_8;
  }

  v16[0] = NSUnderlyingErrorKey;
  v16[1] = NSLocalizedDescriptionKey;
  v17[0] = underlyingErrorCopy;
  v17[1] = descriptionCopy;
  v10 = v17;
  v11 = v16;
  v12 = 2;
LABEL_9:
  v13 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];
LABEL_10:
  v14 = [NSError errorWithDomain:@"ThreadCredentialsStore" code:error userInfo:v13];

  return v14;
}

@end