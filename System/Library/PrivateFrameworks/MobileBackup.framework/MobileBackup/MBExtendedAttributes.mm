@interface MBExtendedAttributes
+ (BOOL)hasAttributesForPath:(id)a3 error:(id *)a4;
+ (BOOL)removeAttributeForKey:(id)a3 forFD:(int)a4 error:(id *)a5;
+ (BOOL)removeAttributeForKey:(id)a3 forPathFSR:(const char *)a4 error:(id *)a5;
+ (BOOL)setAttributes:(id)a3 forPathFSR:(const char *)a4 error:(id *)a5;
+ (BOOL)setValue:(id)a3 forKey:(id)a4 forFD:(int)a5 error:(id *)a6;
+ (BOOL)setValue:(id)a3 forKey:(id)a4 forPathFSR:(const char *)a5 error:(id *)a6;
+ (id)attributesForPathFSR:(const char *)a3 error:(id *)a4;
+ (id)keysForFD:(int)a3 error:(id *)a4;
+ (id)keysForPathFSR:(const char *)a3 error:(id *)a4;
+ (id)valueForKey:(id)a3 forPathFSR:(const char *)a4 error:(id *)a5;
+ (int)xattrOptionsForFD:(int)a3;
+ (int)xattrOptionsForPathFSR:(const char *)a3;
+ (unint64_t)sizeOfAttributes:(id)a3;
@end

@implementation MBExtendedAttributes

+ (int)xattrOptionsForPathFSR:(const char *)a3
{
  memset(&v12, 0, sizeof(v12));
  if (lstat(a3, &v12))
  {
    v4 = *__error();
    v5 = MBGetDefaultLog();
    v6 = v5;
    if (v4 == 2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = *__error();
        *buf = 136315394;
        v14 = a3;
        v15 = 1024;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Failed to lstat %s: %{errno}d", buf, 0x12u);
        v10 = *__error();
LABEL_10:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315394;
      v14 = a3;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to lstat %s: %{errno}d", buf, 0x12u);
      v11 = *__error();
      goto LABEL_10;
    }

    return 1;
  }

  if ((v12.st_flags & 0x40000000) != 0)
  {
    return 33;
  }

  else
  {
    return 1;
  }
}

+ (int)xattrOptionsForFD:(int)a3
{
  memset(&v8, 0, sizeof(v8));
  if (!fstat(a3, &v8))
  {
    return (v8.st_flags >> 25) & 0x20;
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *__error();
    *buf = 67109376;
    v10 = a3;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to stat fd %d: %{errno}d", buf, 0xEu);
    v7 = *__error();
    _MBLog();
  }

  return 0;
}

+ (BOOL)hasAttributesForPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = listxattr([v6 fileSystemRepresentation], 0, 0, objc_msgSend(a1, "xattrOptionsForPathFSR:", objc_msgSend(v6, "fileSystemRepresentation")));
  if (v7 < 0 && *__error() != 2)
  {
    if (a4)
    {
      [MBError posixErrorWithPath:v6 format:@"listxattr error"];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v8 = v7 > 0;
  }

  return v8;
}

+ (id)keysForPathFSR:(const char *)a3 error:(id *)a4
{
  v6 = [a1 xattrOptionsForPathFSR:?];
  v7 = listxattr(a3, 0, 0, v6);
  v8 = v7;
  if (v7 >= 1)
  {
    v9 = [NSMutableArray arrayWithCapacity:0];
    v10 = [NSMutableData dataWithLength:v8];
    v11 = listxattr(a3, [v10 mutableBytes], v8, v6);
    if (v11 < 0)
    {
      if (a4)
      {
        v17 = [NSString mb_stringWithFileSystemRepresentation:a3];
        *a4 = [MBError posixErrorWithPath:v17 format:@"listxattr error"];
      }

      v16 = 0;
    }

    else
    {
      v12 = v11;
      [v10 setLength:v11];
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = [v10 bytes];
          v15 = [NSString stringWithUTF8String:&v14[v13]];
          [v9 addObject:v15];
          v13 += strlen(&v14[v13]) + 1;
        }

        while (v13 < v12);
      }

      v16 = v9;
    }

    goto LABEL_13;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v16 = &__NSArray0__struct;
    goto LABEL_14;
  }

  if (a4)
  {
    v9 = [NSString mb_stringWithFileSystemRepresentation:a3];
    [MBError posixErrorWithPath:v9 format:@"listxattr error"];
    *a4 = v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)keysForFD:(int)a3 error:(id *)a4
{
  v6 = [a1 xattrOptionsForFD:?];
  v7 = flistxattr(a3, 0, 0, v6);
  v8 = v7;
  if (v7 < 1)
  {
    if (v7 < 0)
    {
      if (a4)
      {
        [MBError posixErrorWithFormat:@"flistxattr error"];
        *a4 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = [NSMutableArray arrayWithCapacity:0];
    v10 = [NSMutableData dataWithLength:v8];
    v11 = flistxattr(a3, [v10 mutableBytes], v8, v6);
    if (v11 < 0)
    {
      if (a4)
      {
        [MBError posixErrorWithFormat:@"flistxattr error"];
        *a4 = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v12 = v11;
      [v10 setLength:v11];
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = [v10 bytes];
          v15 = [NSString stringWithUTF8String:&v14[v13]];
          [v9 addObject:v15];
          v13 += strlen(&v14[v13]) + 1;
        }

        while (v13 < v12);
      }

      v16 = v9;
    }
  }

  return v16;
}

+ (id)valueForKey:(id)a3 forPathFSR:(const char *)a4 error:(id *)a5
{
  v9 = a3;
  v10 = [a3 UTF8String];
  v11 = [a1 xattrOptionsForPathFSR:a4];
  v12 = getxattr(a4, v10, 0, 0, 0, v11);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12;
    v14 = [NSMutableData dataWithLength:v12];
    v15 = getxattr(a4, v10, [v14 mutableBytes], v13, 0, v11);
    if (v15 < 0)
    {
      if (a5)
      {
        v17 = [NSString mb_stringWithFileSystemRepresentation:a4];
        *a5 = [MBError posixErrorWithPath:v17 format:@"getxattr error"];
      }

      v16 = 0;
    }

    else
    {
      [v14 setLength:v15];
      v14 = v14;
      v16 = v14;
    }

    goto LABEL_9;
  }

  if (a5)
  {
    v14 = [NSString mb_stringWithFileSystemRepresentation:a4];
    [MBError posixErrorWithPath:v14 format:@"getxattr error"];
    *a5 = v16 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

+ (id)attributesForPathFSR:(const char *)a3 error:(id *)a4
{
  v6 = [MBExtendedAttributes keysForPathFSR:"keysForPathFSR:error:" error:?];
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      v24 = a4;
      v8 = [NSMutableDictionary dictionaryWithCapacity:0];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      v11 = &OBJC_METACLASS___MBBackupAttemptSummary;
      if (v10)
      {
        v12 = v10;
        v13 = *v28;
LABEL_5:
        v14 = 0;
        while (1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v27 + 1) + 8 * v14);
          v26 = 0;
          v16 = [&v11[7] valueForKey:v15 forPathFSR:a3 error:{&v26, v22, v23}];
          v17 = v26;
          if (!v16)
          {
            break;
          }

          [v8 setObject:v16 forKeyedSubscript:v15];
LABEL_18:

          if (v12 == ++v14)
          {
            v12 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v12)
            {
              goto LABEL_5;
            }

            goto LABEL_20;
          }
        }

        if ([MBError isError:v17 withCode:8])
        {
          v18 = MBGetDefaultLog();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
LABEL_17:

            v11 = &OBJC_METACLASS___MBBackupAttemptSummary;
            goto LABEL_18;
          }

          *buf = 138412546;
          v32 = v15;
          v33 = 2080;
          v34 = a3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Extended attribute %@ removed while getting all attributes of %s", buf, 0x16u);
          v22 = v15;
          v23 = a3;
        }

        else
        {
          if (![MBError isError:v17 withCode:24])
          {
            if (v24)
            {
              v20 = v17;
              *v24 = v17;
            }

            v19 = 0;
            goto LABEL_26;
          }

          v18 = MBGetDefaultLog();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          *buf = 138412546;
          v32 = v15;
          v33 = 2080;
          v34 = a3;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Skipping -- unable to read extended attribute %@ of %s", buf, 0x16u);
          v22 = v15;
          v23 = a3;
        }

        _MBLog();
        goto LABEL_17;
      }

LABEL_20:

      v19 = v8;
LABEL_26:
      v7 = v25;
    }

    else
    {
      v19 = &__NSDictionary0__struct;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)setValue:(id)a3 forKey:(id)a4 forPathFSR:(const char *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a4 UTF8String];
  v13 = [v11 bytes];
  v14 = [v11 length];

  v15 = setxattr(a5, v12, v13, v14, 0, 1);
  v16 = v15;
  if (a6 && v15)
  {
    v17 = [NSString mb_stringWithFileSystemRepresentation:a5];
    *a6 = [MBError posixErrorWithPath:v17 format:@"setxattr error"];
  }

  return v16 == 0;
}

+ (BOOL)setValue:(id)a3 forKey:(id)a4 forFD:(int)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a4 UTF8String];
  v13 = [v11 bytes];
  v14 = [v11 length];

  v15 = fsetxattr(a5, v12, v13, v14, 0, 0);
  v16 = v15;
  if (a6 && v15)
  {
    *a6 = [MBError posixErrorWithFormat:@"fsetxattr error"];
  }

  return v16 == 0;
}

+ (BOOL)setAttributes:(id)a3 forPathFSR:(const char *)a4 error:(id *)a5
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v25 = a5;
    v10 = *v27;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v21, v22, v23, v24}];
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v13 length];
          *buf = 138412802;
          v31 = v12;
          v32 = 2080;
          v33 = a4;
          v34 = 2048;
          v35 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Setting %@ xattr at %s (%ld)", buf, 0x20u);
          v22 = a4;
          v23 = [v13 length];
          v21 = v12;
          _MBLog();
        }

        if (setxattr(a4, [v12 UTF8String], objc_msgSend(v13, "bytes"), objc_msgSend(v13, "length"), 0, 1))
        {
          if (*__error() != 1 || ![v12 isEqualToString:@"com.apple.FinderInfo"])
          {
            if (v25)
            {
              v19 = [NSString mb_stringWithFileSystemRepresentation:a4];
              *v25 = [MBError posixErrorWithPath:v19 format:@"setxattr error"];
            }

            v18 = 0;
            goto LABEL_20;
          }

          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *__error();
            *buf = 136315906;
            v31 = a4;
            v32 = 2112;
            v33 = v12;
            v34 = 2112;
            v35 = v13;
            v36 = 1024;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "setxattr(%s, %@, %@) error: %{errno}d", buf, 0x26u);
            v23 = v13;
            v24 = *__error();
            v21 = a4;
            v22 = v12;
            _MBLog();
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_20:

  return v18;
}

+ (BOOL)removeAttributeForKey:(id)a3 forPathFSR:(const char *)a4 error:(id *)a5
{
  v7 = removexattr(a4, [a3 UTF8String], 1);
  v8 = v7;
  if (a5 && v7)
  {
    v9 = [NSString mb_stringWithFileSystemRepresentation:a4];
    *a5 = [MBError posixErrorWithPath:v9 format:@"removexattr error"];
  }

  return v8 == 0;
}

+ (BOOL)removeAttributeForKey:(id)a3 forFD:(int)a4 error:(id *)a5
{
  v6 = fremovexattr(a4, [a3 UTF8String], 0);
  v7 = v6;
  if (a5 && v6)
  {
    *a5 = [MBError posixErrorWithFormat:@"fremovexattr error"];
  }

  return v7 == 0;
}

+ (unint64_t)sizeOfAttributes:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = &v6[[v9 lengthOfBytesUsingEncoding:4]];
        v11 = [v3 objectForKeyedSubscript:v9];
        v6 = [v11 length] + v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end