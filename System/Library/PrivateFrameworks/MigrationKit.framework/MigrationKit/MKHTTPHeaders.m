@interface MKHTTPHeaders
- (MKHTTPHeaders)init;
- (MKHTTPHeaders)initWithArray:(id)a3;
- (MKHTTPHeaders)initWithMultipartHeaderArray:(id)a3;
- (id)pairsFromArray:(id)a3 byKey:(id)a4 atIndex:(int64_t)a5;
- (id)responseHeadersData;
- (void)close:(BOOL)a3;
- (void)setStatusCode:(unint64_t)a3;
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

- (MKHTTPHeaders)initWithMultipartHeaderArray:(id)a3
{
  v4 = a3;
  [v4 insertObject:&stru_286A8E730 atIndex:0];
  v5 = [(MKHTTPHeaders *)self initWithArray:v4];

  return v5;
}

- (MKHTTPHeaders)initWithArray:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v79.receiver = self;
  v79.super_class = MKHTTPHeaders;
  v5 = [(MKHTTPHeaders *)&v79 init];
  if (v5)
  {
    v6 = [v4 firstObject];
    v7 = [v6 componentsSeparatedByString:@" "];

    if ([v7 count] == 3)
    {
      v74 = v4;
      v8 = [v7 objectAtIndexedSubscript:0];
      [(MKHTTPHeaders *)v5 setMethod:v8];

      v9 = objc_alloc(MEMORY[0x277CCACE0]);
      v10 = [v7 objectAtIndexedSubscript:1];
      v11 = [v9 initWithString:v10];

      v12 = [v11 path];
      [(MKHTTPHeaders *)v5 setPath:v12];

      if (![(NSString *)v5->_path length])
      {
        [(MKHTTPHeaders *)v5 setPath:@"/"];
      }

      v13 = [(NSString *)v5->_path stringByReplacingOccurrencesOfString:@"+" withString:@" "];
      v14 = [v13 stringByRemovingPercentEncoding];
      [(MKHTTPHeaders *)v5 setPath:v14];

      v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v16 = [v11 queryItems];
      v17 = [v16 countByEnumeratingWithState:&v75 objects:v80 count:16];
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
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v75 + 1) + 8 * i);
            v22 = [v21 name];
            v23 = [v21 value];
            if (v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = &stru_286A8E730;
            }

            [v15 setObject:v24 forKey:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v75 objects:v80 count:16];
        }

        while (v18);
      }

      [(MKHTTPHeaders *)v5 setQuery:v15];
      v25 = [v7 objectAtIndexedSubscript:2];
      [(MKHTTPHeaders *)v5 setVersion:v25];

      v4 = v74;
    }

    v26 = [(MKHTTPHeaders *)v5 pairsFromArray:v4 byKey:@": " atIndex:1];
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

        v33 = [(MKHTTPHeaders *)v5 boundary];
        v34 = [v33 hasPrefix:@""];

        if (v34)
        {
          v35 = [(MKHTTPHeaders *)v5 boundary];
          v36 = [v35 substringFromIndex:1];
          [(MKHTTPHeaders *)v5 setBoundary:v36];
        }

        v37 = [(MKHTTPHeaders *)v5 boundary];
        v38 = [v37 hasSuffix:@""];

        if (v38)
        {
          v39 = [(MKHTTPHeaders *)v5 boundary];
          v40 = [(MKHTTPHeaders *)v5 boundary];
          v41 = [v40 length] - 1;

          v42 = [v39 substringToIndex:v41];
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

    v48 = [(NSString *)v5->_connection lowercaseString];
    -[MKHTTPHeaders setIsClosed:](v5, "setIsClosed:", [v48 isEqualToString:@"keep-alive"] ^ 1);

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
    v68 = [v67 lowercaseString];

    [(MKHTTPHeaders *)v5 setTransferEncoding:0];
    if ([v68 containsString:@"chunked"])
    {
      [(MKHTTPHeaders *)v5 setTransferEncoding:[(MKHTTPHeaders *)v5 transferEncoding]| 1];
    }

    if (!v5->_path)
    {
      v69 = [v26 objectForKey:@"migrationkit-path"];
      [(MKHTTPHeaders *)v5 setPath:v69];

      v70 = [(NSString *)v5->_path stringByReplacingOccurrencesOfString:@"+" withString:@" "];
      v71 = [v70 stringByRemovingPercentEncoding];
      [(MKHTTPHeaders *)v5 setPath:v71];
    }
  }

  v72 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)pairsFromArray:(id)a3 byKey:(id)a4 atIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  for (i = objc_alloc_init(MEMORY[0x277CBEB38]); a5 < [v7 count]; ++a5)
  {
    v10 = [v7 objectAtIndexedSubscript:a5];
    v11 = [v10 componentsSeparatedByString:v8];
    if ([v11 count] == 2)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = [v11 objectAtIndexedSubscript:1];
      v14 = [v12 lowercaseString];

      [i setObject:v13 forKey:v14];
    }
  }

  return i;
}

- (void)setStatusCode:(unint64_t)a3
{
  self->_statusCode = a3;
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
    v6 = [v5 stringValue];
    [v4 setObject:v6 forKeyedSubscript:@"Content-Length"];
  }

  contentType = self->_contentType;
  if (contentType)
  {
    [v4 setObject:contentType forKeyedSubscript:@"Content-Type"];
  }

  v8 = [(MKHTTPHeaders *)self connection];
  [v4 setObject:v8 forKeyedSubscript:@"Connection"];

  v9 = [(MKHTTPServerTiming *)self->_serverTiming value];
  if ([v9 length])
  {
    [v4 setObject:v9 forKeyedSubscript:@"Server-Timing"];
  }

  v22 = v9;
  version = self->_version;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_statusCode];
  v23 = self;
  [v3 appendFormat:@"%@ %@ %@%@", version, v11, self->_statusText, @"\r\n"];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v4 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v4 objectForKeyedSubscript:v17];
        [v3 appendFormat:@"%@: %@%@", v17, v18, @"\r\n"];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (!v23->_usesMultipart)
  {
    [v3 appendString:@"\r\n"];
  }

  v19 = [v3 dataUsingEncoding:4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)close:(BOOL)a3
{
  if (a3)
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