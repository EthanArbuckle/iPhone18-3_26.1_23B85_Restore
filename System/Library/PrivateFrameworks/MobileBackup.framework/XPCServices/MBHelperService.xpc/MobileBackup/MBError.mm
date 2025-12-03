@interface MBError
+ (BOOL)isCancelledError:(id)error;
+ (BOOL)isCancelledXPCActivityDeferredError:(id)error;
+ (BOOL)isError:(id)error withCode:(int64_t)code;
+ (BOOL)isError:(id)error withCodes:(int64_t)codes;
+ (BOOL)isRetryAfterError:(id)error retryAfterDate:(id *)date;
+ (BOOL)isTransientError:(id)error;
+ (BOOL)isUnexpectedErrorCode:(int64_t)code;
+ (id)_formatErrors:(id)errors descriptionSelector:(SEL)selector;
+ (id)descriptionForError:(id)error paths:(BOOL)paths;
+ (id)errorForHTTPURLResponse:(id)response error:(id)error;
+ (id)errorForNSError:(id)error path:(id)path description:(id)description;
+ (id)errorWithCode:(int64_t)code format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format;
+ (id)errorWithErrors:(id)errors;
+ (id)loggableDescriptionForError:(id)error;
+ (id)signatureForError:(id)error;
+ (int)codeForNSError:(id)error;
+ (int)errnoForError:(id)error;
@end

@implementation MBError

+ (BOOL)isUnexpectedErrorCode:(int64_t)code
{
  if (code)
  {
    v3 = code == 207;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

+ (BOOL)isTransientError:(id)error
{
  v4 = [objc_msgSend(error "domain")];
  if (v4)
  {
    code = [error code];

    LOBYTE(v4) = MBIsTransientErrorCode(code);
  }

  return v4;
}

+ (BOOL)isCancelledError:(id)error
{
  if (error)
  {
    if ([objc_msgSend(error "domain")])
    {
      code = [error code];
      v5 = 0x7F8001u >> (code + 54);
      if ((code - 202) > 0x16)
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

+ (BOOL)isCancelledXPCActivityDeferredError:(id)error
{
  errorCopy = error;
  if ([self isError:error withCode:202])
  {
    errorCopy = [objc_msgSend(errorCopy "userInfo")];
  }

  return [self isError:errorCopy withCode:223];
}

+ (int)errnoForError:(id)error
{
  if (![objc_msgSend(error "domain")])
  {
    goto LABEL_19;
  }

  code = [error code];
  if (code <= 7)
  {
    if (code <= 4)
    {
      if (code != 3)
      {
        if (code == 4)
        {
          return 2;
        }

        goto LABEL_19;
      }

      return 17;
    }

    else if (code == 5)
    {
      return 20;
    }

    else if (code == 6)
    {
      return 21;
    }

    else
    {
      return 62;
    }
  }

  if (code > 25)
  {
    switch(code)
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
      errorCopy = error;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No POSIX code for error: %@", buf, 0xCu);
      _MBLog(@"Df", "No POSIX code for error: %@", v7, v8, v9, v10, v11, v12, error);
    }

    return 5;
  }

  if (code != 8)
  {
    if (code != 9)
    {
      if (code == 14)
      {
        return 16;
      }

      goto LABEL_19;
    }

    return 5;
  }

  return 93;
}

+ (int)codeForNSError:(id)error
{
  if ([objc_msgSend(error "domain")])
  {
    if (([error code] | 0x100) == 0x104)
    {
      return 4;
    }

    v6 = [objc_msgSend(error "userInfo")];
    if (v6)
    {

      return [MBError codeForNSError:v6];
    }

    return 100;
  }

  if ([objc_msgSend(error "domain")])
  {
    if ([error code] == -999)
    {
      return 202;
    }

    else
    {
      return 300;
    }
  }

  if (![objc_msgSend(error "domain")])
  {
    if ([objc_msgSend(error "domain")])
    {
      return [error code];
    }

    return 100;
  }

  code = [error code];

  return [MBError codeForErrno:code];
}

+ (BOOL)isError:(id)error withCode:(int64_t)code
{
  if ([error code] != code)
  {
    return 0;
  }

  domain = [error domain];

  return [domain isEqualToString:@"MBErrorDomain"];
}

+ (BOOL)isError:(id)error withCodes:(int64_t)codes
{
  v6 = [objc_msgSend(error "domain")];
  if (v6)
  {
    if ([error code] == codes)
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
        if ([error code] == v8)
        {
          goto LABEL_6;
        }
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

+ (BOOL)isRetryAfterError:(id)error retryAfterDate:(id *)date
{
  errorCopy = error;
  if (![MBError isError:error withCodes:304, 17, 0])
  {
    return 0;
  }

  while (1)
  {
    v6 = [objc_msgSend(errorCopy "userInfo")];
    if (v6)
    {
      break;
    }

    errorCopy = [objc_msgSend(errorCopy "userInfo")];
    if (!errorCopy)
    {
      return 0;
    }
  }

  v8 = v6;
  v9 = [MBHTTPDateFormatter() dateFromString:v6];
  if (v9)
  {
    if (!date)
    {
      return v9 != 0;
    }
  }

  else
  {
    integerValue = [v8 integerValue];
    if (integerValue < 1)
    {
      return 0;
    }

    v9 = [NSDate dateWithTimeIntervalSinceNow:integerValue];
    if (!date)
    {
      return v9 != 0;
    }
  }

  if (!v9)
  {
    return v9 != 0;
  }

  *date = v9;
  return 1;
}

+ (id)errorWithCode:(int64_t)code format:(id)format
{
  v6 = NSLocalizedDescriptionKey;
  v7 = [[NSString alloc] initWithFormat:format arguments:&v8];
  return [NSError errorWithDomain:@"MBErrorDomain" code:code userInfo:[NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1]];
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format
{
  v8 = NSLocalizedDescriptionKey;
  v9 = [[NSString alloc] initWithFormat:format arguments:&v10];
  return [NSError errorWithDomain:domain code:code userInfo:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1]];
}

+ (id)errorWithErrors:(id)errors
{
  if ([errors count] == 1)
  {

    return [errors objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [errors countByEnumeratingWithState:&v12 objects:v18 count:16];
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
            objc_enumerationMutation(errors);
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

        v7 = [errors countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }

    v16 = @"kMBUnderlyingErrorsKey";
    v17 = [v5 copy];
    return [NSError errorWithDomain:@"MBErrorDomain" code:2 userInfo:[NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1]];
  }
}

+ (id)errorForNSError:(id)error path:(id)path description:(id)description
{
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:description, NSLocalizedDescriptionKey, error, NSUnderlyingErrorKey, path, NSFilePathErrorKey, 0];
  v7 = [MBError codeForNSError:error];

  return [NSError errorWithDomain:@"MBErrorDomain" code:v7 userInfo:v6];
}

+ (id)errorForHTTPURLResponse:(id)response error:(id)error
{
  if (response)
  {
    if ([response statusCode] >= 200 && objc_msgSend(response, "statusCode") < 300)
    {
      return 0;
    }

    if ([response statusCode] >= 300 && objc_msgSend(response, "statusCode") <= 399)
    {
      statusCode = [response statusCode];
      v7 = [response URL];
      if (statusCode == 330)
      {
        v8 = @"Account Moved";
        v9 = 307;
        v10 = v7;
LABEL_38:

        return [MBError _errorWithCode:v9 URL:v10 format:v8];
      }

      goto LABEL_27;
    }

    if ([response statusCode] >= 400 && objc_msgSend(response, "statusCode") <= 499)
    {
      statusCode2 = [response statusCode];
      v14 = [response URL];
      if (statusCode2 <= 408)
      {
        if (statusCode2 == 401)
        {
          v8 = @"Unauthorized";
          v9 = 305;
          goto LABEL_37;
        }

        if (statusCode2 == 404)
        {
          v8 = @"Not Found";
          v9 = 4;
          goto LABEL_37;
        }
      }

      else
      {
        switch(statusCode2)
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

      return +[MBError _errorWithCode:URL:format:](MBError, "_errorWithCode:URL:format:", 301, v14, @"Client error: %ld %@", [response statusCode], +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", objc_msgSend(response, "statusCode")));
    }

    if ([response statusCode] < 500 || objc_msgSend(response, "statusCode") > 599)
    {
      v7 = [response URL];
LABEL_27:
      statusCode3 = [response statusCode];
      v17 = @"Unexpected HTTP status code: %ld";
      return [MBError _errorWithCode:302 URL:v7 format:v17, statusCode3, v19];
    }

    statusCode4 = [response statusCode];
    if (statusCode4 == 507)
    {
      v10 = [response URL];
      v8 = @"Insufficient Storage";
      v9 = 303;
      goto LABEL_38;
    }

    if (statusCode4 != 503)
    {
      v7 = [response URL];
      statusCode3 = [response statusCode];
      v19 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [response statusCode]);
      v17 = @"Server error: %ld %@";
      return [MBError _errorWithCode:302 URL:v7 format:v17, statusCode3, v19];
    }

    v16 = +[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"Service Unavailable", NSLocalizedDescriptionKey, [response URL], NSURLErrorKey, objc_msgSend(objc_msgSend(response, "allHeaderFields"), "objectForKey:", @"Retry-After"), @"RetryAfter", 0);

    return [NSError errorWithDomain:@"MBErrorDomain" code:304 userInfo:v16];
  }

  else
  {
    v12 = [MBError codeForNSError:error];

    return [MBError errorWithCode:v12 error:error format:@"HTTP connection error"];
  }
}

+ (id)signatureForError:(id)error
{
  v4 = +[NSMutableString string];
  if (error)
  {
    do
    {
      [v4 appendString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/%@:%ld", objc_msgSend(error, "domain"), objc_msgSend(error, "code"))}];
      v5 = [objc_msgSend(error "userInfo")];
      userInfo = [error userInfo];
      if (v5)
      {
        v7 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
      }

      else
      {
        if (![userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"])
        {
          break;
        }

        v7 = [objc_msgSend(objc_msgSend(error "userInfo")];
      }

      error = v7;
    }

    while (v7);
  }

  v8 = [v4 copy];

  return v8;
}

+ (id)_formatErrors:(id)errors descriptionSelector:(SEL)selector
{
  if (!errors)
  {
    return 0;
  }

  v7 = [errors count];
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
      [v8 addObject:{objc_msgSend(self, "performSelector:withObject:", selector, objc_msgSend(errors, "objectAtIndexedSubscript:", v10++))}];
    }

    while (v9 != v10);
    if (v7 > 3)
    {
      [v8 addObject:@"..."];
    }
  }

  return MBStringWithArray(v8);
}

+ (id)loggableDescriptionForError:(id)error
{
  if (!error)
  {
    return @"(null)";
  }

  v5 = +[NSMutableString string];
  [v5 appendFormat:@"%@(%ld)", objc_msgSend(error, "domain"), objc_msgSend(error, "code")];
  v6 = [objc_msgSend(error "userInfo")];
  if (v6)
  {
    [v5 appendFormat:@" Underlying error: %@", +[MBError loggableDescriptionForError:](MBError, "loggableDescriptionForError:", v6)];
  }

  v7 = [self _formatErrors:objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMMCSErrorUnderlyingErrorArrayKey", "loggableDescriptionForError:"}];
  if (v7)
  {
    [v5 appendFormat:@" Underlying MMCS errors: %@", v7];
  }

  v8 = [self _formatErrors:objc_msgSend(objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"CKPartialErrors", "allValues"), "loggableDescriptionForError:"}];
  if (v8)
  {
    [v5 appendFormat:@" Underlying CloudKit errors: %@", v8];
  }

  v9 = [self _formatErrors:objc_msgSend(objc_msgSend(error descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMBUnderlyingErrorsKey", "loggableDescriptionForError:"}];
  if (v9)
  {
    [v5 appendFormat:@" Underlying Backup errors: %@", v9];
  }

  return v5;
}

+ (id)descriptionForError:(id)error paths:(BOOL)paths
{
  if (!error)
  {
    return @"(null)";
  }

  pathsCopy = paths;
  v6 = +[NSMutableString string];
  localizedDescription = [error localizedDescription];
  if (localizedDescription)
  {
    v8 = localizedDescription;
  }

  else
  {
    v8 = @"Unknown error";
  }

  [v6 appendString:v8];
  if (pathsCopy)
  {
    v9 = [objc_msgSend(error "userInfo")];
    if (v9)
    {
      [v6 appendFormat:@" at path %@", v9];
    }

    v10 = [objc_msgSend(error "userInfo")];
    if (v10)
    {
      [v6 appendFormat:@" for URL %@", v10];
    }
  }

  [v6 appendFormat:@" (%@/%d)", objc_msgSend(error, "domain"), objc_msgSend(error, "code")];
  v11 = [objc_msgSend(error "userInfo")];
  if (v11)
  {
    [v6 appendFormat:@". Underlying error: %@.", +[MBError descriptionForError:](MBError, "descriptionForError:", v11)];
  }

  v12 = [objc_msgSend(error "userInfo")];
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