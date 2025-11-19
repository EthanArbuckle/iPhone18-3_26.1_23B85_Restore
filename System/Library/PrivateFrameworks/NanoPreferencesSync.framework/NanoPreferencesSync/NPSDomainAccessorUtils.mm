@interface NPSDomainAccessorUtils
+ (BOOL)BOOLForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4;
+ (double)doubleForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4;
+ (float)floatForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4;
+ (id)URLForObject:(id)a3;
+ (id)arrayForObject:(id)a3;
+ (id)dataForObject:(id)a3;
+ (id)dictionaryForObject:(id)a3;
+ (id)objectForURL:(id)a3;
+ (id)stringArrayForObject:(id)a3;
+ (id)stringForObject:(id)a3;
+ (int64_t)integerForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4;
+ (int64_t)longForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4;
@end

@implementation NPSDomainAccessorUtils

+ (id)stringForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 stringValue];
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  return v3;
}

+ (id)arrayForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)dictionaryForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)dataForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)stringArrayForObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
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

+ (int64_t)integerForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4
{
  v5 = a3;
  if (v5 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v6 = [v5 integerValue];
    if (a4)
    {
      v7 = 1;
LABEL_8:
      *a4 = v7;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  return v6;
}

+ (int64_t)longForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4
{
  v5 = a3;
  if (v5 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v6 = [v5 longLongValue];
    if (a4)
    {
      v7 = 1;
LABEL_8:
      *a4 = v7;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  return v6;
}

+ (float)floatForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4
{
  v5 = a3;
  if (v5 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v5 floatValue];
    v7 = v6;
    if (a4)
    {
      v8 = 1;
LABEL_8:
      *a4 = v8;
    }
  }

  else
  {
    v7 = 0.0;
    if (a4)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  return v7;
}

+ (double)doubleForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4
{
  v5 = a3;
  if (v5 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v5 doubleValue];
    v7 = v6;
    if (a4)
    {
      v8 = 1;
LABEL_8:
      *a4 = v8;
    }
  }

  else
  {
    v7 = 0.0;
    if (a4)
    {
      v8 = 0;
      goto LABEL_8;
    }
  }

  return v7;
}

+ (BOOL)BOOLForObject:(id)a3 existsAndHasValidFormat:(BOOL *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 length];
    if (![v5 compare:@"YES" options:1 range:{0, v6}] || !objc_msgSend(v5, "compare:options:range:", @"Y", 1, 0, v6) || !objc_msgSend(v5, "compare:options:range:", @"true", 1, 0, v6) || !objc_msgSend(v5, "compare:options:range:", @"1", 1, 0, v6))
    {
      v8 = 1;
      v7 = 1;
      if (!a4)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (![v5 compare:@"NO" options:1 range:{0, v6}] || !objc_msgSend(v5, "compare:options:range:", @"N", 1, 0, v6) || !objc_msgSend(v5, "compare:options:range:", @"false", 1, 0, v6) || !objc_msgSend(v5, "compare:options:range:", @"0", 1, 0, v6))
    {
      v7 = 0;
      if (!a4)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_17:
    if (!a4)
    {
      v7 = 0;
      goto LABEL_20;
    }

    v8 = 0;
    v7 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = [v5 BOOLValue];
  if (a4)
  {
LABEL_14:
    v8 = 1;
LABEL_19:
    *a4 = v8;
  }

LABEL_20:

  return v7;
}

+ (id)URLForObject:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  NSClassFromString(&cfstr_Nsdata.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E696ACD0];
    v3 = v3;
    v13 = 0;
    v5 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];

    v6 = v13;
    if (v6)
    {
      v7 = nps_daemon_log;
      if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v3 length];
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
    v6 = [v3 stringByExpandingTildeInPath];
    v5 = [v10 fileURLWithPath:v6];
LABEL_7:

    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)objectForURL:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isFileURL])
  {
    if (![v3 isFileReferenceURL])
    {
      v9 = [v3 absoluteURL];
      v11 = [v9 path];
      v7 = [v11 stringByAbbreviatingWithTildeInPath];

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

  v7 = [v4 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:{v6, v14, v15}];
  v8 = *v5;
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1C0D93000, v10, OS_LOG_TYPE_DEFAULT, "URL archiving of %@ returned error %@", buf, 0x16u);
  }

LABEL_9:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

@end