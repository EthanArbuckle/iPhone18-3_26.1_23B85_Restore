@interface NSDictionary
+ (id)MI_dictionaryByMergingDictionaries:(id)dictionaries;
+ (id)MI_dictionaryWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)metadata format:(unint64_t)format error:(id *)error;
- (BOOL)MI_writeToURL:(id)l format:(unint64_t)format options:(unint64_t)options error:(id *)error;
@end

@implementation NSDictionary

+ (id)MI_dictionaryWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  v17 = 0;
  v7 = [NSData dataWithContentsOfURL:l options:2 error:&v17];
  v8 = v17;
  if (v7)
  {
    v16 = 0;
    v9 = [NSPropertyListSerialization propertyListWithData:v7 options:options format:0 error:&v16];
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
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = [NSError errorWithDomain:NSCocoaErrorDomain code:2048 userInfo:0];

      v13 = 0;
      if (!error)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    if (!error)
    {
      goto LABEL_12;
    }
  }

  if (!v13)
  {
    v14 = v8;
    *error = v8;
  }

LABEL_12:

  return v13;
}

+ (id)MI_dictionaryByMergingDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dictionariesCopy;
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

- (BOOL)MI_writeToURL:(id)l format:(unint64_t)format options:(unint64_t)options error:(id *)error
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

- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)metadata format:(unint64_t)format error:(id *)error
{
  metadataCopy = metadata;
  v17 = 0;
  v9 = [NSPropertyListSerialization dataWithPropertyList:self format:format options:0 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v16 = v10;
    v12 = [v9 MI_writeAtomicallyToURLMatchingCurrentFileMetadata:metadataCopy error:&v16];
    v13 = v16;

    v11 = v13;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v12 & 1) == 0)
  {
    v14 = v11;
    *error = v11;
  }

LABEL_7:

  return v12;
}

@end