@interface NSDictionary
+ (id)IX_dictionaryWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)IX_writeToURL:(id)l format:(unint64_t)format options:(unint64_t)options error:(id *)error;
@end

@implementation NSDictionary

+ (id)IX_dictionaryWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  v15 = 0;
  v7 = [NSData dataWithContentsOfURL:l options:2 error:&v15];
  v8 = v15;
  if (v7)
  {
    v14 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v7 options:options format:0 error:&v14];
    v10 = v14;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v8 = v10;
      v9 = v11;
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:0];

      v11 = 0;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v11)
  {
    v12 = v8;
    *error = v8;
  }

LABEL_10:

  return v11;
}

- (BOOL)IX_writeToURL:(id)l format:(unint64_t)format options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v19 = 0;
  v11 = [NSPropertyListSerialization dataWithPropertyList:self format:format options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [v11 writeToURL:lCopy options:options error:&v18];
    v15 = v18;

    v13 = v15;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
    v16 = v13;
    *error = v13;
  }

LABEL_7:

  return v14;
}

@end