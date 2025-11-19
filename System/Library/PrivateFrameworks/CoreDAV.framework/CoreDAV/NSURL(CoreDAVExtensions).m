@interface NSURL(CoreDAVExtensions)
+ (id)CDVDefaultPortForScheme:()CoreDAVExtensions;
+ (id)CDVURLWithScheme:()CoreDAVExtensions host:port:path:;
+ (id)CDVURLWithScheme:()CoreDAVExtensions user:password:host:port:path:;
- (__CFString)CDVRawPath;
- (id)CDVFileSystemSafePath;
- (id)CDVPassword;
- (id)CDVRawLastPathComponent;
- (id)CDVRawLastPathComponentPreservingEscapes;
- (id)CDVServerURL;
- (id)CDVServerURLWithPath:()CoreDAVExtensions;
- (id)CDVURLByDeletingLastPathComponent;
- (id)CDVURLWithPassword:()CoreDAVExtensions;
- (id)CDVURLWithPath:()CoreDAVExtensions;
- (id)CDVURLWithScheme:()CoreDAVExtensions userandpass:host:port:path:parameters:encodePercents:;
- (id)CDVURLWithUser:()CoreDAVExtensions;
- (id)CDVfixedURLByAppendingPathComponent:()CoreDAVExtensions;
- (uint64_t)CDVIsEqualToURL:()CoreDAVExtensions;
- (uint64_t)CDVIsSafeRedirectForRequestURL:()CoreDAVExtensions;
- (uint64_t)initWithCDVScheme:()CoreDAVExtensions user:password:host:port:path:query:fragment:;
@end

@implementation NSURL(CoreDAVExtensions)

+ (id)CDVURLWithScheme:()CoreDAVExtensions user:password:host:port:path:
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [objc_alloc(objc_opt_class()) initWithCDVScheme:v18 user:v17 password:v16 host:v15 port:v14 path:v13 query:0 fragment:0];

  return v19;
}

+ (id)CDVURLWithScheme:()CoreDAVExtensions host:port:path:
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [objc_alloc(objc_opt_class()) initWithCDVScheme:v12 user:0 password:0 host:v11 port:v10 path:v9 query:0 fragment:0];

  return v13;
}

- (id)CDVURLWithScheme:()CoreDAVExtensions userandpass:host:port:path:parameters:encodePercents:
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v15];
  [v21 appendString:@"://"];
  [v21 appendString:v16];
  if (a9)
  {
    v22 = [v17 CDVStringByAddingPercentEscapesForHREF];

    v17 = v22;
  }

  [v21 appendString:v17];
  if (v18)
  {
    [v21 appendString:v18];
  }

  if (v19)
  {
    if (a9)
    {
      [v19 CDVStringByAddingPercentEscapesForHREFIncludingPercent];
    }

    else
    {
      [v19 CDVStringByAddingPercentEscapesForHREF];
    }
    v23 = ;
    [v21 appendString:v23];
  }

  [v21 appendString:v20];
  v24 = [MEMORY[0x277CBEBC0] URLWithString:v21];
  v25 = v24;
  if (v24 || (a9 & 1) != 0)
  {
    v26 = v24;
  }

  else
  {
    LOBYTE(v29) = 1;
    v26 = [a1 CDVURLWithScheme:v15 userandpass:v16 host:v17 port:v18 path:v19 parameters:v20 encodePercents:v29];
  }

  v27 = v26;

  return v27;
}

- (uint64_t)initWithCDVScheme:()CoreDAVExtensions user:password:host:port:path:query:fragment:
{
  v16 = a3;
  v48 = a4;
  v17 = a5;
  v18 = v16;
  v47 = v17;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v46 = a9;
  v22 = a10;
  if (!v18 || (v23 = v22, ![v18 length]))
  {
    v38 = MEMORY[0x277CBEAD8];
    v39 = *MEMORY[0x277CBE660];
    v40 = @"The value for 'scheme' should be non-nil and non-empty";
    goto LABEL_26;
  }

  v45 = v23;
  if (!v19 || ![v19 length])
  {
    v38 = MEMORY[0x277CBEAD8];
    v39 = *MEMORY[0x277CBE660];
    v40 = @"The value for 'host' should be non-nil and non-empty";
LABEL_26:
    v41 = [v38 exceptionWithName:v39 reason:v40 userInfo:0];
    objc_exception_throw(v41);
  }

  v43 = v18;
  v44 = v21;
  if (v20)
  {
    v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:0];
    if ([v20 compare:v24] == -1)
    {
      v25 = a1;
      v28 = 0;
    }

    else
    {
      v25 = a1;
      v26 = [objc_opt_class() CDVDefaultPortForScheme:v18];
      if (v26 && (v27 = [v20 unsignedLongValue], v27 == objc_msgSend(v26, "unsignedLongValue")))
      {
        v28 = 0;
      }

      else
      {
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@":%lu", objc_msgSend(v20, "unsignedLongValue")];
      }
    }
  }

  else
  {
    v25 = a1;
    v28 = 0;
  }

  v29 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_28583EAE8];
  if (v48)
  {
    v30 = [v48 CDVStringByAddingPercentEscapesForUserOrPassword];
    [v29 appendString:v30];

    if (v47)
    {
      [v29 appendString:@":"];
      v31 = [v47 CDVStringByAddingPercentEscapesForUserOrPassword];
      [v29 appendString:v31];
    }

    [v29 appendString:@"@"];
  }

  v32 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_28583EAE8];
  v33 = v32;
  if (v46)
  {
    [v32 appendString:@"?"];
    [v33 appendString:v46];
  }

  if (v45)
  {
    [v33 appendString:@"#"];
    [v33 appendString:v45];
  }

  LOBYTE(v42) = 0;
  v34 = [v25 CDVURLWithScheme:v43 userandpass:v29 host:v19 port:v28 path:v21 parameters:v33 encodePercents:v42];
  v35 = [v34 absoluteString];
  v36 = [v25 initWithString:v35];

  return v36;
}

+ (id)CDVDefaultPortForScheme:()CoreDAVExtensions
{
  v3 = a3;
  if ([v3 isEqualToString:@"http"])
  {
    v4 = 80;
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"https"])
  {
    v4 = 443;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"ftp"])
  {
    v4 = 21;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (id)CDVURLWithUser:()CoreDAVExtensions
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [a1 scheme];
  v7 = [a1 CDVPassword];
  v8 = [a1 host];
  v9 = [a1 port];
  v10 = [a1 CDVRawPath];
  v11 = [a1 query];
  v12 = [a1 fragment];
  v13 = [v5 initWithCDVScheme:v6 user:v4 password:v7 host:v8 port:v9 path:v10 query:v11 fragment:v12];

  return v13;
}

- (id)CDVURLWithPassword:()CoreDAVExtensions
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [a1 scheme];
  v7 = [a1 user];
  v8 = [a1 host];
  v9 = [a1 port];
  v10 = [a1 CDVRawPath];
  v11 = [a1 query];
  v12 = [a1 fragment];
  v13 = [v5 initWithCDVScheme:v6 user:v7 password:v4 host:v8 port:v9 path:v10 query:v11 fragment:v12];

  return v13;
}

- (id)CDVURLWithPath:()CoreDAVExtensions
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [a1 scheme];
  v7 = [a1 user];
  v8 = [a1 CDVPassword];
  v9 = [a1 host];
  v10 = [a1 port];
  v11 = [a1 query];
  v12 = [a1 fragment];
  v13 = [v5 initWithCDVScheme:v6 user:v7 password:v8 host:v9 port:v10 path:v4 query:v11 fragment:v12];

  return v13;
}

- (id)CDVPassword
{
  v1 = [a1 password];
  v2 = [v1 stringByRemovingPercentEncoding];

  return v2;
}

- (__CFString)CDVRawPath
{
  v1 = CFURLCopyPath(a1);

  return v1;
}

- (id)CDVRawLastPathComponent
{
  v2 = [a1 CDVRawPath];
  v3 = [v2 hasSuffix:@"/"];
  v4 = [a1 lastPathComponent];
  v5 = v4;
  if (v3 && ([v4 hasSuffix:@"/"] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/", v5];

    v5 = v6;
  }

  return v5;
}

- (id)CDVRawLastPathComponentPreservingEscapes
{
  v1 = [a1 CDVRawPath];
  v2 = [v1 lastPathComponent];

  return v2;
}

- (id)CDVURLByDeletingLastPathComponent
{
  v2 = [a1 URLByDeletingLastPathComponent];
  v3 = [v2 absoluteString];
  v4 = [v3 length];
  v5 = [a1 absoluteString];
  v6 = [v5 length];

  if (v4 > v6)
  {
    v7 = a1;

    v2 = v7;
  }

  return v2;
}

- (id)CDVServerURL
{
  v2 = [a1 scheme];
  if (v2 && (v3 = v2, [a1 host], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [a1 port];

    v6 = MEMORY[0x277CBEBC0];
    v7 = MEMORY[0x277CCACA8];
    v8 = [a1 scheme];
    v9 = [a1 host];
    v10 = v9;
    if (v5)
    {
      v11 = [a1 port];
      v12 = [v7 stringWithFormat:@"%@://%@:%@/", v8, v10, v11];
      v13 = [v6 URLWithString:v12];
    }

    else
    {
      v11 = [v7 stringWithFormat:@"%@://%@/", v8, v9];
      v13 = [v6 URLWithString:v11];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)CDVServerURLWithPath:()CoreDAVExtensions
{
  v5 = [a1 host];
  v6 = [a1 scheme];
  if (a3)
  {
    v7 = [a1 CDVRawPath];
  }

  else
  {
    v7 = &stru_28583EAE8;
  }

  v8 = [a1 port];
  v9 = 0;
  if (v5 && v6)
  {
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%@%@", v6, v5, v8, v7];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@%@", v6, v5, v7, v12];
    }
    v10 = ;
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  }

  return v9;
}

- (uint64_t)CDVIsEqualToURL:()CoreDAVExtensions
{
  v4 = a3;
  v5 = [a1 absoluteString];
  v6 = [v4 absoluteString];
  if ([v5 isEqualToString:v6])
  {
    v7 = 1;
  }

  else if ([a1 isFileURL] && objc_msgSend(v4, "isFileURL"))
  {
    v8 = [a1 path];
    v9 = [v4 path];
    v7 = [v8 isEqualToString:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)CDVFileSystemSafePath
{
  v1 = [a1 absoluteString];
  v2 = [v1 mutableCopy];

  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"@" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)CDVfixedURLByAppendingPathComponent:()CoreDAVExtensions
{
  v4 = a3;
  v5 = [a1 absoluteString];
  v6 = [v5 CDVStringByAppendingSlashIfNeeded];

  v7 = [v6 stringByAppendingString:v4];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v8;
}

- (uint64_t)CDVIsSafeRedirectForRequestURL:()CoreDAVExtensions
{
  v4 = a3;
  v5 = [v4 scheme];

  if (v5)
  {
    v6 = [a1 scheme];
    v7 = [v4 scheme];
    v8 = [v6 hasPrefix:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end