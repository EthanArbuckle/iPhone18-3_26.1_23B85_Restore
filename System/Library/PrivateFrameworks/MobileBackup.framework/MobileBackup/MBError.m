@interface MBError
+ (BOOL)isCancelledError:(id)a3;
+ (BOOL)isCancelledXPCActivityDeferredError:(id)a3;
+ (BOOL)isError:(id)a3 withCode:(int64_t)a4;
+ (BOOL)isError:(id)a3 withCodes:(int64_t)a4;
+ (BOOL)isRetryAfterError:(id)a3 retryAfterDate:(id *)a4;
+ (BOOL)isTransientError:(id)a3;
+ (BOOL)isUnexpectedErrorCode:(int64_t)a3;
+ (id)_errorWithCode:(int64_t)a3 URL:(id)a4 format:(id)a5;
+ (id)_formatErrors:(id)a3 descriptionSelector:(SEL)a4;
+ (id)descriptionForError:(id)a3 paths:(BOOL)a4;
+ (id)errorForHTTPURLResponse:(id)a3 error:(id)a4;
+ (id)errorForNSError:(id)a3 path:(id)a4 description:(id)a5;
+ (id)errorForNSError:(id)a3 path:(id)a4 format:(id)a5;
+ (id)errorWithCode:(int64_t)a3 error:(id)a4 URL:(id)a5 format:(id)a6;
+ (id)errorWithCode:(int64_t)a3 error:(id)a4 format:(id)a5;
+ (id)errorWithCode:(int64_t)a3 error:(id)a4 path:(id)a5 format:(id)a6;
+ (id)errorWithCode:(int64_t)a3 format:(id)a4;
+ (id)errorWithCode:(int64_t)a3 path:(id)a4 format:(id)a5;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 format:(id)a5;
+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 path:(id)a5 format:(id)a6;
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
    v5 = [v3 userInfo];
    v3 = [v5 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  return [a1 isError:v3 withCode:223];
}

+ (int)errnoForError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a3 "domain")])
  {
    goto LABEL_19;
  }

  v4 = [a3 code];
  if (v4 > 7)
  {
    if (v4 > 25)
    {
      switch(v4)
      {
        case 26:
          result = 18;
          goto LABEL_22;
        case 105:
          result = 28;
          goto LABEL_22;
        case 100:
          goto LABEL_21;
      }
    }

    else
    {
      switch(v4)
      {
        case 8:
          result = 93;
          goto LABEL_22;
        case 9:
          goto LABEL_21;
        case 14:
          result = 16;
          goto LABEL_22;
      }
    }

LABEL_19:
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = a3;
      _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "No POSIX code for error: %@", buf, 0xCu);
      _MBLog(@"Df", "No POSIX code for error: %@", v7, v8, v9, v10, v11, v12, a3);
    }

LABEL_21:
    result = 5;
    goto LABEL_22;
  }

  if (v4 <= 4)
  {
    if (v4 == 3)
    {
      result = 17;
      goto LABEL_22;
    }

    if (v4 == 4)
    {
      result = 2;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (v4 == 5)
  {
    result = 20;
  }

  else if (v4 == 6)
  {
    result = 21;
  }

  else
  {
    result = 62;
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int)codeForNSError:(id)a3
{
  v4 = [a3 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    if (([a3 code] | 0x100) == 0x104)
    {
      return 4;
    }

    v9 = [a3 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    if (v10)
    {

      return [MBError codeForNSError:v10];
    }

    return 100;
  }

  v6 = [a3 domain];
  if ([v6 isEqualToString:*MEMORY[0x1E696A978]])
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

  v7 = [a3 domain];
  if (![v7 isEqualToString:*MEMORY[0x1E696A798]])
  {
    if ([objc_msgSend(a3 "domain")])
    {
      return [a3 code];
    }

    return 100;
  }

  v8 = [a3 code];

  return [MBError codeForErrno:v8];
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

  v6 = *MEMORY[0x1E696AA08];
  while (1)
  {
    v7 = [objc_msgSend(v5 "userInfo")];
    if (v7)
    {
      break;
    }

    v5 = [objc_msgSend(v5 "userInfo")];
    if (!v5)
    {
      return 0;
    }
  }

  v9 = v7;
  v10 = [MBHTTPDateFormatter() dateFromString:v7];
  if (v10)
  {
    if (!a4)
    {
      return v10 != 0;
    }
  }

  else
  {
    v11 = [v9 integerValue];
    if (v11 < 1)
    {
      return 0;
    }

    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v11];
    if (!a4)
    {
      return v10 != 0;
    }
  }

  if (!v10)
  {
    return v10 != 0;
  }

  *a4 = v10;
  return 1;
}

+ (id)errorWithCode:(int64_t)a3 format:(id)a4
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a4 arguments:&v10];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = v5;
  result = [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:a3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)errorWithCode:(int64_t)a3 error:(id)a4 format:(id)a5
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a5 arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], a4, *MEMORY[0x1E696AA08], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:a3 userInfo:v8];
}

+ (id)errorWithCode:(int64_t)a3 path:(id)a4 format:(id)a5
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a5 arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], a4, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:a3 userInfo:v8];
}

+ (id)_errorWithCode:(int64_t)a3 URL:(id)a4 format:(id)a5
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a5 arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], a4, *MEMORY[0x1E696A998], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:a3 userInfo:v8];
}

+ (id)errorWithCode:(int64_t)a3 error:(id)a4 path:(id)a5 format:(id)a6
{
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a6 arguments:&v12];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696A578], a4, *MEMORY[0x1E696AA08], a5, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:a3 userInfo:v10];
}

+ (id)errorWithCode:(int64_t)a3 error:(id)a4 URL:(id)a5 format:(id)a6
{
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a6 arguments:&v12];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696A578], a4, *MEMORY[0x1E696AA08], a5, *MEMORY[0x1E696A998], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:a3 userInfo:v10];
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 format:(id)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a5 arguments:&v12];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v7;
  result = [MEMORY[0x1E696ABC0] errorWithDomain:a3 code:a4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)errorWithDomain:(id)a3 code:(int64_t)a4 path:(id)a5 format:(id)a6
{
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a6 arguments:&v12];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E696A578], a5, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:a3 code:a4 userInfo:v10];
}

+ (id)errorWithErrors:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if ([a3 count] == 1)
  {
    v6 = *MEMORY[0x1E69E9840];

    return [a3 objectAtIndexedSubscript:0];
  }

  else
  {
    if (![a3 count])
    {
      [(MBError *)a2 errorWithErrors:a1];
    }

    v8 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if (+[MBError isError:withCode:](MBError, "isError:withCode:", v13, 2) && (v14 = [objc_msgSend(v13 "userInfo")]) != 0)
          {
            [v8 addObjectsFromArray:v14];
          }

          else
          {
            [v8 addObject:v13];
          }
        }

        v10 = [a3 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v10);
    }

    v21 = @"kMBUnderlyingErrorsKey";
    v22 = [v8 copy];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:2 userInfo:v15];
    v16 = *MEMORY[0x1E69E9840];
  }

  return result;
}

+ (id)errorForNSError:(id)a3 path:(id)a4 format:(id)a5
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a5 arguments:&v10];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], a3, *MEMORY[0x1E696AA08], a4, *MEMORY[0x1E696A368], 0}];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"MBErrorDomain" code:+[MBError codeForNSError:](MBError userInfo:{"codeForNSError:", a3), v8}];
}

+ (id)errorForNSError:(id)a3 path:(id)a4 description:(id)a5
{
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a5, *MEMORY[0x1E696A578], a3, *MEMORY[0x1E696AA08], a4, *MEMORY[0x1E696A368], 0}];
  v7 = MEMORY[0x1E696ABC0];
  v8 = [MBError codeForNSError:a3];

  return [v7 errorWithDomain:@"MBErrorDomain" code:v8 userInfo:v6];
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
LABEL_40:

        return [MBError _errorWithCode:v9 URL:v10 format:v8];
      }

      goto LABEL_29;
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
          goto LABEL_39;
        }

        if (v13 == 404)
        {
          v8 = @"Not Found";
          v9 = 4;
          goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 409:
            v8 = @"Conflict";
            v9 = 3;
            goto LABEL_39;
          case 423:
            v8 = @"Locked";
            v9 = 13;
            goto LABEL_39;
          case 424:
            v8 = @"Failed Dependency";
            v9 = 306;
LABEL_39:
            v10 = v14;
            goto LABEL_40;
        }
      }

      v23 = [a3 statusCode];
      return +[MBError _errorWithCode:URL:format:](MBError, "_errorWithCode:URL:format:", 301, v14, @"Client error: %ld %@", v23, [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(a3, "statusCode")}]);
    }

    if ([a3 statusCode] < 500 || objc_msgSend(a3, "statusCode") > 599)
    {
      v7 = [a3 URL];
LABEL_29:
      v24 = [a3 statusCode];
      v22 = @"Unexpected HTTP status code: %ld";
      return [MBError _errorWithCode:302 URL:v7 format:v22, v24, v25];
    }

    v15 = [a3 statusCode];
    if (v15 == 507)
    {
      v10 = [a3 URL];
      v8 = @"Insufficient Storage";
      v9 = 303;
      goto LABEL_40;
    }

    if (v15 != 503)
    {
      v7 = [a3 URL];
      v24 = [a3 statusCode];
      v25 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(a3, "statusCode")}];
      v22 = @"Server error: %ld %@";
      return [MBError _errorWithCode:302 URL:v7 format:v22, v24, v25];
    }

    v16 = [objc_msgSend(a3 "allHeaderFields")];
    v17 = MEMORY[0x1E695DF20];
    v18 = *MEMORY[0x1E696A578];
    v19 = [a3 URL];
    v20 = [v17 dictionaryWithObjectsAndKeys:{@"Service Unavailable", v18, v19, *MEMORY[0x1E696A998], v16, @"RetryAfter", 0}];
    v21 = MEMORY[0x1E696ABC0];

    return [v21 errorWithDomain:@"MBErrorDomain" code:304 userInfo:v20];
  }

  else
  {
    if (!a4)
    {
      [MBError errorForHTTPURLResponse:a2 error:a1];
    }

    v12 = [MBError codeForNSError:a4];

    return [MBError errorWithCode:v12 error:a4 format:@"HTTP connection error"];
  }
}

+ (id)signatureForError:(id)a3
{
  v4 = [MEMORY[0x1E696AD60] string];
  if (a3)
  {
    v5 = *MEMORY[0x1E696AA08];
    do
    {
      [v4 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"/%@:%ld", objc_msgSend(a3, "domain"), objc_msgSend(a3, "code"))}];
      v6 = [objc_msgSend(a3 "userInfo")];
      v7 = [a3 userInfo];
      if (v6)
      {
        v8 = [v7 objectForKeyedSubscript:v5];
      }

      else
      {
        if (![v7 objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"])
        {
          break;
        }

        v8 = [objc_msgSend(objc_msgSend(a3 "userInfo")];
      }

      a3 = v8;
    }

    while (v8);
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)_formatErrors:(id)a3 descriptionSelector:(SEL)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [a3 count];
  v8 = [MEMORY[0x1E695DF70] array];
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

  v5 = [MEMORY[0x1E696AD60] string];
  [v5 appendFormat:@"%@(%ld)", objc_msgSend(a3, "domain"), objc_msgSend(a3, "code")];
  v6 = [a3 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v7)
  {
    [v5 appendFormat:@" Underlying error: %@", +[MBError loggableDescriptionForError:](MBError, "loggableDescriptionForError:", v7)];
  }

  v8 = [a1 _formatErrors:objc_msgSend(objc_msgSend(a3 descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMMCSErrorUnderlyingErrorArrayKey", sel_loggableDescriptionForError_}];
  if (v8)
  {
    [v5 appendFormat:@" Underlying MMCS errors: %@", v8];
  }

  v9 = [a1 _formatErrors:objc_msgSend(objc_msgSend(objc_msgSend(a3 descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"CKPartialErrors", "allValues"), sel_loggableDescriptionForError_}];
  if (v9)
  {
    [v5 appendFormat:@" Underlying CloudKit errors: %@", v9];
  }

  v10 = [a1 _formatErrors:objc_msgSend(objc_msgSend(a3 descriptionSelector:{"userInfo"), "objectForKeyedSubscript:", @"kMBUnderlyingErrorsKey", sel_loggableDescriptionForError_}];
  if (v10)
  {
    [v5 appendFormat:@" Underlying Backup errors: %@", v10];
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
  v6 = [MEMORY[0x1E696AD60] string];
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
    v9 = [a3 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A368]];
    if (v10)
    {
      [v6 appendFormat:@" at path %@", v10];
    }

    v11 = [a3 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A998]];
    if (v12)
    {
      [v6 appendFormat:@" for URL %@", v12];
    }
  }

  [v6 appendFormat:@" (%@/%d)", objc_msgSend(a3, "domain"), objc_msgSend(a3, "code")];
  v13 = [a3 userInfo];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v14)
  {
    [v6 appendFormat:@". Underlying error: %@.", +[MBError descriptionForError:](MBError, "descriptionForError:", v14)];
  }

  v15 = [objc_msgSend(a3 "userInfo")];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 count];
    v18 = [MEMORY[0x1E695DF70] array];
    if (v17 >= 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = v17;
    }

    if (v17)
    {
      v20 = 0;
      do
      {
        [v18 addObject:{+[MBError descriptionForError:](MBError, "descriptionForError:", objc_msgSend(v16, "objectAtIndexedSubscript:", v20++))}];
      }

      while (v19 != v20);
      if (v17 > 3)
      {
        [v18 addObject:@"..."];
      }
    }

    [v6 appendFormat:@". Underlying MMCS errors: %@.", MBStringWithArray(v18)];
  }

  return v6;
}

+ (uint64_t)errorWithErrors:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MBError.m" lineNumber:378 description:@"Expected at least one underlying error"];
}

+ (uint64_t)errorForHTTPURLResponse:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MBError.m" lineNumber:540 description:@"No response or error"];
}

@end