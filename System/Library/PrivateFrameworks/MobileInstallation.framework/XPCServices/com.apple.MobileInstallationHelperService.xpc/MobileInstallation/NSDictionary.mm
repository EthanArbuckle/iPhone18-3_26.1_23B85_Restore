@interface NSDictionary
+ (id)MI_dictionaryByMergingDictionaries:(id)a3;
+ (id)MI_dictionaryWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)a3 format:(unint64_t)a4 error:(id *)a5;
- (BOOL)MI_writeToURL:(id)a3 format:(unint64_t)a4 options:(unint64_t)a5 error:(id *)a6;
@end

@implementation NSDictionary

+ (id)MI_dictionaryWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v17 = 0;
  v7 = [NSData dataWithContentsOfURL:a3 options:2 error:&v17];
  v8 = v17;
  if (v7)
  {
    v16 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v7 options:a4 format:0 error:&v16];
    v10 = v16;

    objc_opt_class();
    v11 = v9;
    v12 = 0;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = v11;
      v8 = v10;
      v11 = v13;
      if (!a5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:0];

      v13 = 0;
      if (!a5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }
  }

  if (!v13)
  {
    v14 = v8;
    *a5 = v8;
  }

LABEL_12:

  return v13;
}

+ (id)MI_dictionaryByMergingDictionaries:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addEntriesFromDictionary:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [v4 copy];

  return v10;
}

- (BOOL)MI_writeToURL:(id)a3 format:(unint64_t)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v19 = 0;
  v11 = [NSPropertyListSerialization dataWithPropertyList:self format:a4 options:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v18 = v12;
    v14 = [v11 writeToURL:v10 options:a5 error:&v18];
    v15 = v18;

    v13 = v15;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_7;
    }
  }

  if ((v14 & 1) == 0)
  {
    v16 = v13;
    *a6 = v13;
  }

LABEL_7:

  return v14;
}

- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)a3 format:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v17 = 0;
  v9 = [NSPropertyListSerialization dataWithPropertyList:self format:a4 options:0 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v16 = v10;
    v12 = [v9 MI_writeAtomicallyToURLMatchingCurrentFileMetadata:v8 error:&v16];
    v13 = v16;

    v11 = v13;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if ((v12 & 1) == 0)
  {
    v14 = v11;
    *a5 = v11;
  }

LABEL_7:

  return v12;
}

@end