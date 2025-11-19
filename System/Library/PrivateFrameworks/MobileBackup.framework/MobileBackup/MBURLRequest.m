@interface MBURLRequest
+ (MBURLRequest)requestWithMethod:(id)a3 URL:(id)a4;
+ (MBURLRequest)requestWithURL:(id)a3;
+ (id)request;
- (MBURLRequest)init;
- (NSDictionary)headers;
- (id)NSURLRequest;
- (void)dealloc;
@end

@implementation MBURLRequest

+ (id)request
{
  v2 = objc_alloc_init(MBURLRequest);

  return v2;
}

+ (MBURLRequest)requestWithURL:(id)a3
{
  v4 = +[MBURLRequest request];
  [(MBURLRequest *)v4 setURL:a3];
  return v4;
}

+ (MBURLRequest)requestWithMethod:(id)a3 URL:(id)a4
{
  v6 = +[MBURLRequest request];
  [(MBURLRequest *)v6 setMethod:a3];
  [(MBURLRequest *)v6 setURL:a4];
  return v6;
}

- (MBURLRequest)init
{
  v5.receiver = self;
  v5.super_class = MBURLRequest;
  v2 = [(MBURLRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_method = @"GET";
    v2->_headers = objc_alloc_init(NSMutableDictionary);
    v3->_log = 1;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBURLRequest;
  [(MBURLRequest *)&v3 dealloc];
}

- (NSDictionary)headers
{
  v2 = [(NSMutableDictionary *)self->_headers copy];

  return v2;
}

- (id)NSURLRequest
{
  v3 = [NSMutableURLRequest requestWithURL:self->_URL];
  [(NSMutableURLRequest *)v3 setCachePolicy:1];
  [(NSMutableURLRequest *)v3 setTimeoutInterval:30.0];
  [(NSMutableURLRequest *)v3 setHTTPBody:self->_data];
  [(NSMutableURLRequest *)v3 setHTTPMethod:self->_method];
  [(NSMutableURLRequest *)v3 setHTTPShouldUsePipelining:1];
  [(NSMutableURLRequest *)v3 setAllHTTPHeaderFields:self->_headers];
  if (self->_MMePreAuth)
  {
    [(NSMutableURLRequest *)v3 _setProperty:&__kCFBooleanTrue forKey:kCFURLRequestPreAuthXMMeAuthToken];
  }

  if (MBIsInternalInstall() && [(NSURL *)self->_URL user]&& [(NSURL *)self->_URL password])
  {
    v4 = [NSString stringWithFormat:@"Basic %@", [(NSData *)[[NSString stringWithFormat:?], "dataUsingEncoding:", 4], "base64EncodedStringWithOptions:", 0]];
    [(NSMutableURLRequest *)v3 setValue:v4 forHTTPHeaderField:@"Authorization"];
    [(NSMutableDictionary *)self->_headers setObject:v4 forKeyedSubscript:@"Authorization"];
  }

  v5 = MBProductVersion();
  v6 = MBBuildVersion();
  v7 = [NSString stringWithFormat:@"%@/%@ (%@; %@)", @"MobileBackup", v5, v6, MBProductType()];
  [(NSMutableURLRequest *)v3 setValue:v7 forHTTPHeaderField:@"User-Agent"];
  [(NSMutableDictionary *)self->_headers setObject:v7 forKeyedSubscript:@"User-Agent"];
  v8 = [[AKAppleIDSession alloc] initWithIdentifier:@"com.apple.MobileBackup"];
  v9 = [v8 appleIDHeadersForRequest:v3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        [(NSMutableURLRequest *)v3 setValue:v15 forHTTPHeaderField:v14];
        [(NSMutableDictionary *)self->_headers setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v3;
}

@end