@interface MBError
+ (BOOL)isCancelledError:(id)a3;
+ (BOOL)isCancelledXPCActivityDeferredError:(id)a3;
+ (BOOL)isError:(id)a3 withCode:(int64_t)a4;
+ (BOOL)isError:(id)a3 withCodes:(int64_t)a4;
+ (BOOL)isRetryAfterError:(id)a3 retryAfterDate:(id *)a4;
+ (BOOL)isTransientError:(id)a3;
+ (BOOL)isUnexpectedErrorCode:(int64_t)a3;
+ (id)_formatErrors:(id)a3 descriptionSelector:(SEL)a4;
+ (id)descriptionForError:(id)a3 paths:(BOOL)a4;
+ (id)errorForHTTPURLResponse:(id)a3 error:(id)a4;
+ (id)errorForNSError:(id)a3 path:(id)a4 description:(id)a5;
+ (id)errorWithCode:(int64_t)a3 format:(id)a4;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 format:(id)a5;
+ (id)errorWithErrors:(id)a3;
+ (id)loggableDescriptionForError:(id)a3;
+ (id)signatureForError:(id)a3;
+ (int)codeForNSError:(id)a3;
+ (int)errnoForError:(id)a3;
@end

@implementation MBError

+ (BOOL)isUnexpectedErrorCode:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 207;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

+ (BOOL)isTransientError:(id)a3
{
  v4 = [objc_msgSend(a3 "domain")];
  if (v4)
  {
    v5 = [a3 code];

    LOBYTE(v4) = MBIsTransientErrorCode(v5);
  }

  return v4;
}

+ (BOOL)isCancelledError:(id)a3
{
  if (a3)
  {
    if ([objc_msgSend(a3 "domain")])
    {
      v4 = [a3 code];
      v5 = 0x7F8001u >> (v4 + 54);
      if ((v4 - 202) > 0x16)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

+ (BOOL)isCancelledXPCActivityDeferredError:(id)a3
{
  v3 = a3;
  if ([a1 isError:a3 withCode:202])
  {
    v3 = [objc_msgSend(v3 "userInfo")];
  }

  return [a1 isError:v3 withCode:223];
}

+ (int)errnoForError:(id)a3
{
  if (![objc_msgSend(a3 "domain")])
  {
    goto LABEL_19;
  }

  v4 = [a3 code];
  if (v4 <= 7)
  {
    if (v4 <= 4)
    {
      if (v4 != 3)
      {
        if (v4 == 4)
        {
          return 2;
        }

        goto LABEL_19;
      }

      return 17;
    }

    else if (v4 == 5)
    {
      return 20;
    }

    else if (v4 == 6)
    {
      return 21;
    }

    else
    {
      return 62;
    }
  }

  if (v4 > 25)
  {
    switch(v4)
    {
      case 26:
        return 18;
      case 105:
        return 28;
      case 100:
        return 5;
    }

LABEL_19:
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No POSIX code for error: %@", buf, 0xCu);
      _MBLog(@"Df", "No POSIX code for error: %@", v7, v8, v9, v10, v11, v12, a3);
    }

    return 5;
  }

  if (v4 != 8)
  {
    if (v4 != 9)
    {
      if (v4 == 14)
      {
        return 16;
      }

      goto LABEL_19;
    }

    return 5;
  }

  return 93;
}

+ (int)codeForNSError:(id)a3
{
  if ([objc_msgSend(a3 "domain")])
  {
    if (([a3 code] | 0x100) == 0x104)
    {
      return 4;
    }

    v6 = [objc_msgSend(a3 "userInfo")];
    if (v6)
    {

      return [MBError codeForNSError:v6];
    }

    return 100;
  }

  if ([objc_msgSend(a3 "domain")])
  {
    if ([a3 code] == -999)
    {
      return 202;
    }

    else
    {
      return 300;
    }
  }

  if (![objc_msgSend(a3 "domain")])
  {
    if ([objc_msgSend(a3 "domain")])
    {
      return [a3 code];
    }

    return 100;
  }

  v5 = [a3 code];

  return [MBError codeForErrno:v5];
}

+ (BOOL)isError:(id)a3 withCode:(int64_t)a4
{
  if ([a3 code] != a4)
  {
    return 0;
  }

  v5 = [a3 domain];

  return [v5 isEqualToString:@"MBErrorDomain"];
}

+ (BOOL)isError:(id)a3 withCodes:(int64_t)a4
{
  v6 = [objc_msgSend(a3 "domain")];
  if (v6)
  {
    if ([a3 code] == a4)
    {
LABEL_6:
      LOBYTE(v6) = 1;
    }

    else
    {
      v10 = &v11;
      while (1)
      {
        v7 = v10++;
        if (!*v7)
        {
          break;
        }

        v8 = *v7;
        if ([a3 code] == v8)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (BOOL)isRetryAfterError:(id)a3 retryAfterDate:(id *)a4
{
  v5 = a3;
  if (![MBError isError:a3 withCodes:304, 17, 0])
  {
    return 0;
  }

  while (1)
  {
    v6 = [objc_msgSend(v5 "userInfo")];
    if (v6)
    {
      break;
    }

    v5 = [objc_msgSend(v5 "userInfo")];
    if (!v5)
    {
      return 0;
    }
  }

  v8 = v6;
  v9 = [MBHTTPDateFormatter() dateFromString:v6];
  if (v9)
  {
    if (!a4)
    {
      return v9 != 0;
    }
  }

  else
  {
    v10 = [v8 integerValue];
    if (v10 < 1)
    {
      return 0;
    }

    v9 = [NSDate dateWithTimeIntervalSinceNow:v10];
    if (!a4)
    {
      return v9 != 0;
    }
  }

  if (!v9)
  {
    return v9 != 0;
  }

  *a4 = v9;
  return 1;
}

+ (id)errorWithCode:(int64_t)a3 format:(id)a4
{
  v6 = NSLocalizedDescriptionKey;
  v7 = [[NSString alloc] initWithFormat:a4 arguments:&v8];
  return [NSError errorWithDomain:@"MBErrorDomain" code:a3 userInfo:[NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1]];
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 format:(id)a5
{
  v8 = NSLocalizedDescriptionKey;
  v9 = [[NSString alloc] initWithFormat:a5 arguments:&v10];
  return [NSError errorWithDomain:a3 code:a4 userInfo:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
}

+ (id)errorWithErrors:(id)a3
{
  if ([a3 count] == 1)
  {

    return [a3 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v12 objects:v18 count:16];
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
            objc_enumerationMutation(a3);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (+[MBError isError:withCode:](MBError, "isError:withCode:", v10, 2) && (v11 = [objc_msgSend(v10 "userInfo")]) != 0)
          {
            [v5 addObjectsFromArray:v11];
          }

          else
          {
            [v5 addObject:v10];
          }
        }

        v7 = [a3 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    v16 = @"kMBUnderlyingErrorsKey";
    v17 = [v5 copy];
    return [NSError errorWithDomain:@"MBErrorDomain" code:2 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]];
  }
}

+ (id)errorForNSError:(id)a3 path:(id)a4 description:(id)a5
{
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:a5, NSLocalizedDescriptionKey, a3, NSUnderlyingErrorKey, a4, NSFilePathErrorKey, 0];
  v7 = [MBError codeForNSError:a3];

  return [NSError errorWithDomain:@"MBErrorDomain" code:v7 userInfo:v6];
}

+ (id)errorForHTTPURLResponse:(id)a3 error:(id)a4
{
  if (a3)
  {
    if ([a3 statusCode] >= 200 && objc_msgSend(a3, "statusCode") < 300)
    {
      return 0;
    }

    if ([a3 statusCode] >= 300 && objc_msgSend(a3, "statusCode") <= 399)
    {
      v6 = [a3 statusCode];
      v7 = [a3 URL];
      if (v6 == 330)
      {
        v8 = @"Account Moved";
        v9 = 307;
        v10 = v7;
LABEL_38:

        return [MBError _errorWithCode:v9 URL:v10 format:v8];
      }

      goto LABEL_27;
    }

    if ([a3 statusCode] >= 400 && objc_msgSend(a3, "statusCode") <= 499)
    {
      v13 = [a3 statusCode];
      v14 = [a3 URL];
      if (v13 <= 408)
      {
        if (v13 == 401)
        {
          v8 = @"Unauthorized";
          v9 = 305;
          goto LABEL_37;
        }

        if (v13 == 404)
        {
          v8 = @"Not Found";
          v9 = 4;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 409:
            v8 = @"Conflict";
            v9 = 3;
            goto LABEL_37;
          case 423:
            v8 = @"Locked";
            v9 = 13;
            goto LABEL_37;
          case 424:
            v8 = @"Failed Dependency";
            v9 = 306;
LABEL_37:
            v10 = v14;
            goto LABEL_38;
        }
      }

      return +[MBError _errorWithCode:URL:format:](MBError, "_errorWithCode:URL:format:", 301, v14, @"Client error: %ld %@", [a3 statusCode], +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", objc_msgSend(a3, "statusCode")));
    }

    if ([a3 statusCode] < 500 || objc_msgSend(a3, "statusCode") > 599)
    {
      v7 = [a3 URL];
LABEL_27:
      v18 = [a3 statusCode];
      v17 = @"Unexpected HTTP status code: %ld";
      return [MBError _errorWithCode:302 URL:v7 format:v17, v18, v19];
    }

    v15 = [a3 statusCode];
    if (v15 == 507)
    {
      v10 = [a3 URL];
      v8 = @"Insufficient Storage";
      v9 = 303;
      goto LABEL_38;
    }

    if (v15 != 503)
    {
      v7 = [a3 URL];
      v18 = [a3 statusCode];
      v19 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [a3 statusCode]);
      v17 = @"Server error: %ld %@";
      return [MBError _errorWithCode:302 URL:v7 format:v17, v18, v19];
    }

    v16 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"Service Unavailable", NSLocalizedDescriptionKey, [a3 URL], NSURLErrorKey, objc_msgSend(objc_msgSend(a3, "allHeaderFields"), "objectForKey:", @"Retry-After"), @"RetryAfter", 0);

    return [NSError errorWithDomain:@"MBErrorDomain" code:304 userInfo:v16];
  }

  else
  {
    v12 = [MBError codeForNSError:a4];

    return [MBError errorWithCode:v12 error:a4 format:@"HTTP connection error"];
  }
}

+ (id)signatureForError:(id)a3
{
  v4 = +[NSMutableString string];
  if (a3)
  {
    do
    {
      [v4 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@:%ld", objc_msgSend(a3, "domain"), objc_msgSend(a3, "code"))}];
      v5 = [objc_msgSend(a3 "userInfo")];
      v6 = [a3 userInfo];
      if (v5)
      {
        v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];
      }

      else
      {
        if (![v6 objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"])
        {
          break;
        }

        v7 = [objc_msgSend(objc_msgSend(a3 "userInfo")];
      }

      a3 = v7;
    }

    while (v7);
  }

  v8 = [v4 copy];

  return v8;
}

+ (id)_formatErrors:(id)a3 descriptionSelector:(SEL)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [a3 count];
  v8 = +[NSMutableArray array];
  if (v7 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7;
  }

  if (v7)
  {
    v10 = 0;
    do
    {
      [v8 addObject:{objc_msgSend(a1, "performSelector:withObject:", a4, objc_msgSend(a3, "objectAtIndexedSubscript:", v10++))}];
    }

    while (v9 != v10);
    if (v7 > 3)
    {
      [v8 addObject:@"..."];
    }
  }

  return MBStringWithArray(v8);
}

+ (id)loggableDescriptionForError:(id)a3
{
  if (!a3)
  {
    return @"(null)";
  }

  v5 = +[NSMutableString string];
  [v5 appendFormat:@"%@(%ld)", objc_msgSend(a3, "domain"), objc_msgSend(a3, "code")];
  v6 = [objc_msgSend(a3 "userInfo")];
  if (v6)
  {
    [v5 appendFormat:@" Underlying error: %@", +[MBError loggableDescriptionForError:](MBError, "loggableDescriptionForError:", v6)];
  }

  v7 = [a1 _formatErrors:objc_msgSend(objc_msgSend(a3 descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMMCSErrorUnderlyingErrorArrayKey", "loggableDescriptionForError:"}];
  if (v7)
  {
    [v5 appendFormat:@" Underlying MMCS errors: %@", v7];
  }

  v8 = [a1 _formatErrors:objc_msgSend(objc_msgSend(objc_msgSend(a3 descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"CKPartialErrors", "allValues"), "loggableDescriptionForError:"}];
  if (v8)
  {
    [v5 appendFormat:@" Underlying CloudKit errors: %@", v8];
  }

  v9 = [a1 _formatErrors:objc_msgSend(objc_msgSend(a3 descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMBUnderlyingErrorsKey", "loggableDescriptionForError:"}];
  if (v9)
  {
    [v5 appendFormat:@" Underlying Backup errors: %@", v9];
  }

  return v5;
}

+ (id)descriptionForError:(id)a3 paths:(BOOL)a4
{
  if (!a3)
  {
    return @"(null)";
  }

  v4 = a4;
  v6 = +[NSMutableString string];
  v7 = [a3 localizedDescription];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Unknown error";
  }

  [v6 appendString:v8];
  if (v4)
  {
    v9 = [objc_msgSend(a3 "userInfo")];
    if (v9)
    {
      [v6 appendFormat:@" at path %@", v9];
    }

    v10 = [objc_msgSend(a3 "userInfo")];
    if (v10)
    {
      [v6 appendFormat:@" for URL %@", v10];
    }
  }

  [v6 appendFormat:@" (%@/%d)", objc_msgSend(a3, "domain"), objc_msgSend(a3, "code")];
  v11 = [objc_msgSend(a3 "userInfo")];
  if (v11)
  {
    [v6 appendFormat:@". Underlying error: %@.", +[MBError descriptionForError:](MBError, "descriptionForError:", v11)];
  }

  v12 = [objc_msgSend(a3 "userInfo")];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 count];
    v15 = +[NSMutableArray array];
    if (v14 >= 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = v14;
    }

    if (v14)
    {
      v17 = 0;
      do
      {
        [v15 addObject:{+[MBError descriptionForError:](MBError, "descriptionForError:", objc_msgSend(v13, "objectAtIndexedSubscript:", v17++))}];
      }

      while (v16 != v17);
      if (v14 > 3)
      {
        [v15 addObject:@"..."];
      }
    }

    [v6 appendFormat:@". Underlying MMCS errors: %@.", MBStringWithArray(v15)];
  }

  return v6;
}

@end