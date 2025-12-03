@interface MKHTTPHeaders
- (MKHTTPHeaders)init;
- (MKHTTPHeaders)initWithArray:(id)array;
- (MKHTTPHeaders)initWithMultipartHeaderArray:(id)array;
- (id)pairsFromArray:(id)array byKey:(id)key atIndex:(int64_t)index;
- (id)responseHeadersData;
- (void)close:(BOOL)close;
- (void)setStatusCode:(unint64_t)code;
@end

@implementation MKHTTPHeaders

- (MKHTTPHeaders)init
{
  v6.receiver = self;
  v6.super_class = MKHTTPHeaders;
  v2 = [(MKHTTPHeaders *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MKHTTPHeaders *)v2 setVersion:@"HTTP/1.1"];
    [(MKHTTPHeaders *)v3 setStatusCode:200];
    [(MKHTTPHeaders *)v3 setContentType:@"application/octet-stream"];
    [(MKHTTPHeaders *)v3 setConnection:@"close"];
    v4 = objc_alloc_init(MKHTTPServerTiming);
    [(MKHTTPHeaders *)v3 setServerTiming:v4];
  }

  return v3;
}

- (MKHTTPHeaders)initWithMultipartHeaderArray:(id)array
{
  arrayCopy = array;
  [arrayCopy insertObject:&stru_286A8E730 atIndex:0];
  v5 = [(MKHTTPHeaders *)self initWithArray:arrayCopy];

  return v5;
}

- (MKHTTPHeaders)initWithArray:(id)array
{
  v81 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v79.receiver = self;
  v79.super_class = MKHTTPHeaders;
  v5 = [(MKHTTPHeaders *)&v79 init];
  if (v5)
  {
    firstObject = [arrayCopy firstObject];
    v7 = [firstObject componentsSeparatedByString:@" "];

    if ([v7 count] == 3)
    {
      v74 = arrayCopy;
      v8 = [v7 objectAtIndexedSubscript:0];
      [(MKHTTPHeaders *)v5 setMethod:v8];

      v9 = objc_alloc(MEMORY[0x277CCACE0]);
      v10 = [v7 objectAtIndexedSubscript:1];
      v11 = [v9 initWithString:v10];

      path = [v11 path];
      [(MKHTTPHeaders *)v5 setPath:path];

      if (![(NSString *)v5->_path length])
      {
        [(MKHTTPHeaders *)v5 setPath:@"/"];
      }

      v13 = [(NSString *)v5->_path stringByReplacingOccurrencesOfString:@"+" withString:@" "];
      stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];
      [(MKHTTPHeaders *)v5 setPath:stringByRemovingPercentEncoding];

      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      queryItems = [v11 queryItems];
      v17 = [queryItems countByEnumeratingWithState:&v75 objects:v80 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v76;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v76 != v19)
            {
              objc_enumerationMutation(queryItems);
            }

            v21 = *(*(&v75 + 1) + 8 * i);
            name = [v21 name];
            value = [v21 value];
            if (value)
            {
              v24 = value;
            }

            else
            {
              v24 = &stru_286A8E730;
            }

            [v15 setObject:v24 forKey:name];
          }

          v18 = [queryItems countByEnumeratingWithState:&v75 objects:v80 count:16];
        }

        while (v18);
      }

      [(MKHTTPHeaders *)v5 setQuery:v15];
      v25 = [v7 objectAtIndexedSubscript:2];
      [(MKHTTPHeaders *)v5 setVersion:v25];

      arrayCopy = v74;
    }

    v26 = [(MKHTTPHeaders *)v5 pairsFromArray:arrayCopy byKey:@": " atIndex:1];
    v27 = [v26 objectForKey:@"content-length"];
    -[MKHTTPHeaders setContentLength:](v5, "setContentLength:", [v27 longLongValue]);

    v28 = [v26 objectForKey:@"content-type"];
    if ([v28 hasPrefix:@"multipart/"])
    {
      v29 = [v28 componentsSeparatedByString:@" "];;
      if ([v29 count] >= 2)
      {
        v30 = [v29 objectAtIndexedSubscript:0];
        [(MKHTTPHeaders *)v5 setContentType:v30];

        v31 = [(MKHTTPHeaders *)v5 pairsFromArray:v29 byKey:@"=" atIndex:1];
        v32 = [v31 objectForKey:@"boundary"];
        [(MKHTTPHeaders *)v5 setBoundary:v32];

        boundary = [(MKHTTPHeaders *)v5 boundary];
        v34 = [boundary hasPrefix:@""];

        if (v34)
        {
          boundary2 = [(MKHTTPHeaders *)v5 boundary];
          v36 = [boundary2 substringFromIndex:1];
          [(MKHTTPHeaders *)v5 setBoundary:v36];
        }

        boundary3 = [(MKHTTPHeaders *)v5 boundary];
        v38 = [boundary3 hasSuffix:@""];

        if (v38)
        {
          boundary4 = [(MKHTTPHeaders *)v5 boundary];
          boundary5 = [(MKHTTPHeaders *)v5 boundary];
          v41 = [boundary5 length] - 1;

          v42 = [boundary4 substringToIndex:v41];
          [(MKHTTPHeaders *)v5 setBoundary:v42];
        }
      }
    }

    else
    {
      [(MKHTTPHeaders *)v5 setContentType:v28];
    }

    v43 = [v26 objectForKey:@"host"];
    [(MKHTTPHeaders *)v5 setHost:v43];

    v44 = [v26 objectForKey:@"accept"];
    [(MKHTTPHeaders *)v5 setAccept:v44];

    v45 = [v26 objectForKey:@"userAgent"];
    [(MKHTTPHeaders *)v5 setUserAgent:v45];

    v46 = [v26 objectForKey:@"authorization"];
    [(MKHTTPHeaders *)v5 setAuthorization:v46];

    v47 = [v26 objectForKey:@"connection"];
    [(MKHTTPHeaders *)v5 setConnection:v47];

    lowercaseString = [(NSString *)v5->_connection lowercaseString];
    -[MKHTTPHeaders setIsClosed:](v5, "setIsClosed:", [lowercaseString isEqualToString:@"keep-alive"] ^ 1);

    v49 = [MKHTTPRange alloc];
    v50 = [v26 objectForKeyedSubscript:@"range"];
    v51 = [(MKHTTPRange *)v49 initWithHeaderValue:v50];
    [(MKHTTPHeaders *)v5 setRange:v51];

    v52 = [MKHTTPContentRange alloc];
    v53 = [v26 objectForKey:@"content-range"];
    v54 = [(MKHTTPContentRange *)v52 initWithHeaderValue:v53];
    [(MKHTTPHeaders *)v5 setContentRange:v54];

    v55 = [MKHTTPContentDisposition alloc];
    v56 = [v26 objectForKey:@"content-disposition"];
    v57 = [(MKHTTPContentDisposition *)v55 initWithHeaderValue:v56];
    [(MKHTTPHeaders *)v5 setContentDisposition:v57];

    v58 = [MKHTTPProxyAuthorization alloc];
    v59 = [v26 objectForKey:@"proxy-authorization"];
    v60 = [(MKHTTPProxyAuthorization *)v58 initWithHeaderValue:v59];
    [(MKHTTPHeaders *)v5 setProxyAuthorization:v60];

    v61 = [MKHTTPContentPayload alloc];
    v62 = [v26 objectForKey:@"migrationkit-content-payload"];
    v63 = [(MKHTTPContentPayload *)v61 initWithHeaderValue:v62];
    [(MKHTTPHeaders *)v5 setContentPayload:v63];

    v64 = [MKHTTPContentDate alloc];
    v65 = [v26 objectForKey:@"migrationkit-content-date"];
    v66 = [(MKHTTPContentDate *)v64 initWithHeaderValue:v65];
    [(MKHTTPHeaders *)v5 setContentDate:v66];

    v67 = [v26 objectForKey:@"transfer-encoding"];
    lowercaseString2 = [v67 lowercaseString];

    [(MKHTTPHeaders *)v5 setTransferEncoding:0];
    if ([lowercaseString2 containsString:@"chunked"])
    {
      [(MKHTTPHeaders *)v5 setTransferEncoding:[(MKHTTPHeaders *)v5 transferEncoding]| 1];
    }

    if (!v5->_path)
    {
      v69 = [v26 objectForKey:@"migrationkit-path"];
      [(MKHTTPHeaders *)v5 setPath:v69];

      v70 = [(NSString *)v5->_path stringByReplacingOccurrencesOfString:@"+" withString:@" "];
      stringByRemovingPercentEncoding2 = [v70 stringByRemovingPercentEncoding];
      [(MKHTTPHeaders *)v5 setPath:stringByRemovingPercentEncoding2];
    }
  }

  v72 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)pairsFromArray:(id)array byKey:(id)key atIndex:(int64_t)index
{
  arrayCopy = array;
  keyCopy = key;
  for (i = objc_alloc_init(MEMORY[0x277CBEB38]); index < [arrayCopy count]; ++index)
  {
    v10 = [arrayCopy objectAtIndexedSubscript:index];
    v11 = [v10 componentsSeparatedByString:keyCopy];
    if ([v11 count] == 2)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v11 objectAtIndexedSubscript:1];
      lowercaseString = [v12 lowercaseString];

      [i setObject:v13 forKey:lowercaseString];
    }
  }

  return i;
}

- (void)setStatusCode:(unint64_t)code
{
  self->_statusCode = code;
  v4 = [MKHTTPStatusText statusText:?];
  [(MKHTTPHeaders *)self setStatusText:v4];
}

- (id)responseHeadersData
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!self->_usesMultipart)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_contentLength];
    stringValue = [v5 stringValue];
    [v4 setObject:stringValue forKeyedSubscript:@"Content-Length"];
  }

  contentType = self->_contentType;
  if (contentType)
  {
    [v4 setObject:contentType forKeyedSubscript:@"Content-Type"];
  }

  connection = [(MKHTTPHeaders *)self connection];
  [v4 setObject:connection forKeyedSubscript:@"Connection"];

  value = [(MKHTTPServerTiming *)self->_serverTiming value];
  if ([value length])
  {
    [v4 setObject:value forKeyedSubscript:@"Server-Timing"];
  }

  v22 = value;
  version = self->_version;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_statusCode];
  selfCopy = self;
  [v3 appendFormat:@"%@ %@ %@%@", version, v11, self->_statusText, @"\r\n"];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [v4 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v4 objectForKeyedSubscript:v17];
        [v3 appendFormat:@"%@: %@%@", v17, v18, @"\r\n"];
      }

      v14 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (!selfCopy->_usesMultipart)
  {
    [v3 appendString:@"\r\n"];
  }

  v19 = [v3 dataUsingEncoding:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)close:(BOOL)close
{
  if (close)
  {
    v3 = @"close";
  }

  else
  {
    v3 = @"keep-alive";
  }

  [(MKHTTPHeaders *)self setConnection:v3];
}

@end