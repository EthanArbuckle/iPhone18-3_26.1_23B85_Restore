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
    cDVStringByAddingPercentEscapesForHREF = [v17 CDVStringByAddingPercentEscapesForHREF];

    v17 = cDVStringByAddingPercentEscapesForHREF;
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
    v26 = [self CDVURLWithScheme:v15 userandpass:v16 host:v17 port:v18 path:v19 parameters:v20 encodePercents:v29];
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
      selfCopy3 = self;
      v28 = 0;
    }

    else
    {
      selfCopy3 = self;
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
    selfCopy3 = self;
    v28 = 0;
  }

  v29 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_28583EAE8];
  if (v48)
  {
    cDVStringByAddingPercentEscapesForUserOrPassword = [v48 CDVStringByAddingPercentEscapesForUserOrPassword];
    [v29 appendString:cDVStringByAddingPercentEscapesForUserOrPassword];

    if (v47)
    {
      [v29 appendString:@":"];
      cDVStringByAddingPercentEscapesForUserOrPassword2 = [v47 CDVStringByAddingPercentEscapesForUserOrPassword];
      [v29 appendString:cDVStringByAddingPercentEscapesForUserOrPassword2];
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
  v34 = [selfCopy3 CDVURLWithScheme:v43 userandpass:v29 host:v19 port:v28 path:v21 parameters:v33 encodePercents:v42];
  absoluteString = [v34 absoluteString];
  v36 = [selfCopy3 initWithString:absoluteString];

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
  scheme = [self scheme];
  cDVPassword = [self CDVPassword];
  host = [self host];
  port = [self port];
  cDVRawPath = [self CDVRawPath];
  query = [self query];
  fragment = [self fragment];
  v13 = [v5 initWithCDVScheme:scheme user:v4 password:cDVPassword host:host port:port path:cDVRawPath query:query fragment:fragment];

  return v13;
}

- (id)CDVURLWithPassword:()CoreDAVExtensions
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  scheme = [self scheme];
  user = [self user];
  host = [self host];
  port = [self port];
  cDVRawPath = [self CDVRawPath];
  query = [self query];
  fragment = [self fragment];
  v13 = [v5 initWithCDVScheme:scheme user:user password:v4 host:host port:port path:cDVRawPath query:query fragment:fragment];

  return v13;
}

- (id)CDVURLWithPath:()CoreDAVExtensions
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  scheme = [self scheme];
  user = [self user];
  cDVPassword = [self CDVPassword];
  host = [self host];
  port = [self port];
  query = [self query];
  fragment = [self fragment];
  v13 = [v5 initWithCDVScheme:scheme user:user password:cDVPassword host:host port:port path:v4 query:query fragment:fragment];

  return v13;
}

- (id)CDVPassword
{
  password = [self password];
  stringByRemovingPercentEncoding = [password stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

- (__CFString)CDVRawPath
{
  v1 = CFURLCopyPath(self);

  return v1;
}

- (id)CDVRawLastPathComponent
{
  cDVRawPath = [self CDVRawPath];
  v3 = [cDVRawPath hasSuffix:@"/"];
  lastPathComponent = [self lastPathComponent];
  v5 = lastPathComponent;
  if (v3 && ([lastPathComponent hasSuffix:@"/"] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/", v5];

    v5 = v6;
  }

  return v5;
}

- (id)CDVRawLastPathComponentPreservingEscapes
{
  cDVRawPath = [self CDVRawPath];
  lastPathComponent = [cDVRawPath lastPathComponent];

  return lastPathComponent;
}

- (id)CDVURLByDeletingLastPathComponent
{
  uRLByDeletingLastPathComponent = [self URLByDeletingLastPathComponent];
  absoluteString = [uRLByDeletingLastPathComponent absoluteString];
  v4 = [absoluteString length];
  absoluteString2 = [self absoluteString];
  v6 = [absoluteString2 length];

  if (v4 > v6)
  {
    selfCopy = self;

    uRLByDeletingLastPathComponent = selfCopy;
  }

  return uRLByDeletingLastPathComponent;
}

- (id)CDVServerURL
{
  scheme = [self scheme];
  if (scheme && (v3 = scheme, [self host], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    port = [self port];

    v6 = MEMORY[0x277CBEBC0];
    v7 = MEMORY[0x277CCACA8];
    scheme2 = [self scheme];
    host = [self host];
    v10 = host;
    if (port)
    {
      port2 = [self port];
      v12 = [v7 stringWithFormat:@"%@://%@:%@/", scheme2, v10, port2];
      v13 = [v6 URLWithString:v12];
    }

    else
    {
      port2 = [v7 stringWithFormat:@"%@://%@/", scheme2, host];
      v13 = [v6 URLWithString:port2];
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
  host = [self host];
  scheme = [self scheme];
  if (a3)
  {
    cDVRawPath = [self CDVRawPath];
  }

  else
  {
    cDVRawPath = &stru_28583EAE8;
  }

  port = [self port];
  v9 = 0;
  if (host && scheme)
  {
    if (port)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%@%@", scheme, host, port, cDVRawPath];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@%@", scheme, host, cDVRawPath, v12];
    }
    v10 = ;
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  }

  return v9;
}

- (uint64_t)CDVIsEqualToURL:()CoreDAVExtensions
{
  v4 = a3;
  absoluteString = [self absoluteString];
  absoluteString2 = [v4 absoluteString];
  if ([absoluteString isEqualToString:absoluteString2])
  {
    v7 = 1;
  }

  else if ([self isFileURL] && objc_msgSend(v4, "isFileURL"))
  {
    path = [self path];
    path2 = [v4 path];
    v7 = [path isEqualToString:path2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)CDVFileSystemSafePath
{
  absoluteString = [self absoluteString];
  v2 = [absoluteString mutableCopy];

  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@":" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"@" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)CDVfixedURLByAppendingPathComponent:()CoreDAVExtensions
{
  v4 = a3;
  absoluteString = [self absoluteString];
  cDVStringByAppendingSlashIfNeeded = [absoluteString CDVStringByAppendingSlashIfNeeded];

  v7 = [cDVStringByAppendingSlashIfNeeded stringByAppendingString:v4];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v8;
}

- (uint64_t)CDVIsSafeRedirectForRequestURL:()CoreDAVExtensions
{
  v4 = a3;
  scheme = [v4 scheme];

  if (scheme)
  {
    scheme2 = [self scheme];
    scheme3 = [v4 scheme];
    v8 = [scheme2 hasPrefix:scheme3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end