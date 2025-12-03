@interface NPSDomainAccessorUtils
+ (BOOL)BOOLForObject:(id)object existsAndHasValidFormat:(BOOL *)format;
+ (double)doubleForObject:(id)object existsAndHasValidFormat:(BOOL *)format;
+ (float)floatForObject:(id)object existsAndHasValidFormat:(BOOL *)format;
+ (id)URLForObject:(id)object;
+ (id)arrayForObject:(id)object;
+ (id)dataForObject:(id)object;
+ (id)dictionaryForObject:(id)object;
+ (id)objectForURL:(id)l;
+ (id)stringArrayForObject:(id)object;
+ (id)stringForObject:(id)object;
+ (int64_t)integerForObject:(id)object existsAndHasValidFormat:(BOOL *)format;
+ (int64_t)longForObject:(id)object existsAndHasValidFormat:(BOOL *)format;
@end

@implementation NPSDomainAccessorUtils

+ (id)stringForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [objectCopy stringValue];
    }

    else
    {
      stringValue = 0;
    }

    objectCopy = stringValue;
  }

  return objectCopy;
}

+ (id)arrayForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)dictionaryForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)dataForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)stringArrayForObject:(id)object
{
  v18 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = objectCopy;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v6 = 0;
            goto LABEL_13;
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v6 = v4;
    }

LABEL_13:
  }

  else
  {

    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (int64_t)integerForObject:(id)object existsAndHasValidFormat:(BOOL *)format
{
  objectCopy = object;
  if (objectCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    integerValue = [objectCopy integerValue];
    if (format)
    {
      v7 = 1;
LABEL_8:
      *format = v7;
    }
  }

  else
  {
    integerValue = 0;
    if (format)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  return integerValue;
}

+ (int64_t)longForObject:(id)object existsAndHasValidFormat:(BOOL *)format
{
  objectCopy = object;
  if (objectCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    longLongValue = [objectCopy longLongValue];
    if (format)
    {
      v7 = 1;
LABEL_8:
      *format = v7;
    }
  }

  else
  {
    longLongValue = 0;
    if (format)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  return longLongValue;
}

+ (float)floatForObject:(id)object existsAndHasValidFormat:(BOOL *)format
{
  objectCopy = object;
  if (objectCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [objectCopy floatValue];
    v7 = v6;
    if (format)
    {
      v8 = 1;
LABEL_8:
      *format = v8;
    }
  }

  else
  {
    v7 = 0.0;
    if (format)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  return v7;
}

+ (double)doubleForObject:(id)object existsAndHasValidFormat:(BOOL *)format
{
  objectCopy = object;
  if (objectCopy && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [objectCopy doubleValue];
    v7 = v6;
    if (format)
    {
      v8 = 1;
LABEL_8:
      *format = v8;
    }
  }

  else
  {
    v7 = 0.0;
    if (format)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  return v7;
}

+ (BOOL)BOOLForObject:(id)object existsAndHasValidFormat:(BOOL *)format
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objectCopy length];
    if (![objectCopy compare:@"YES" options:1 range:{0, v6}] || !objc_msgSend(objectCopy, "compare:options:range:", @"Y", 1, 0, v6) || !objc_msgSend(objectCopy, "compare:options:range:", @"true", 1, 0, v6) || !objc_msgSend(objectCopy, "compare:options:range:", @"1", 1, 0, v6))
    {
      v8 = 1;
      bOOLValue = 1;
      if (!format)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (![objectCopy compare:@"NO" options:1 range:{0, v6}] || !objc_msgSend(objectCopy, "compare:options:range:", @"N", 1, 0, v6) || !objc_msgSend(objectCopy, "compare:options:range:", @"false", 1, 0, v6) || !objc_msgSend(objectCopy, "compare:options:range:", @"0", 1, 0, v6))
    {
      bOOLValue = 0;
      if (!format)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_17:
    if (!format)
    {
      bOOLValue = 0;
      goto LABEL_20;
    }

    v8 = 0;
    bOOLValue = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  bOOLValue = [objectCopy BOOLValue];
  if (format)
  {
LABEL_14:
    v8 = 1;
LABEL_19:
    *format = v8;
  }

LABEL_20:

  return bOOLValue;
}

+ (id)URLForObject:(id)object
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  NSClassFromString(&cfstr_Nsdata.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696ACD0];
    objectCopy = objectCopy;
    v13 = 0;
    v5 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:objectCopy error:&v13];

    stringByExpandingTildeInPath = v13;
    if (stringByExpandingTildeInPath)
    {
      v7 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [objectCopy length];
        *buf = 134217984;
        v15 = v9;
        _os_log_impl(&dword_1C0D93000, v8, OS_LOG_TYPE_DEFAULT, "URL unarchiving fail from %ld bytes of data", buf, 0xCu);
      }
    }

    goto LABEL_7;
  }

  NSClassFromString(&cfstr_Nsstring.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E695DFF8];
    stringByExpandingTildeInPath = [objectCopy stringByExpandingTildeInPath];
    v5 = [v10 fileURLWithPath:stringByExpandingTildeInPath];
LABEL_7:

    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)objectForURL:(id)l
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy isFileURL])
  {
    if (![lCopy isFileReferenceURL])
    {
      absoluteURL = [lCopy absoluteURL];
      path = [absoluteURL path];
      stringByAbbreviatingWithTildeInPath = [path stringByAbbreviatingWithTildeInPath];

      goto LABEL_9;
    }

    v4 = MEMORY[0x1E696ACC8];
    v14 = 0;
    v5 = &v14;
    v6 = &v14;
  }

  else
  {
    v4 = MEMORY[0x1E696ACC8];
    v15 = 0;
    v5 = &v15;
    v6 = &v15;
  }

  stringByAbbreviatingWithTildeInPath = [v4 archivedDataWithRootObject:lCopy requiringSecureCoding:1 error:{v6, v14, v15}];
  v8 = *v5;
  if (!v8)
  {
    goto LABEL_10;
  }

  absoluteURL = v8;
  v10 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = lCopy;
    v18 = 2112;
    v19 = absoluteURL;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "URL archiving of %@ returned error %@", buf, 0x16u);
  }

LABEL_9:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return stringByAbbreviatingWithTildeInPath;
}

@end