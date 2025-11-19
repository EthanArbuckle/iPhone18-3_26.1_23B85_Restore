@interface MKHTTPProxyAuthorization
- (MKHTTPProxyAuthorization)initWithHeaderValue:(id)a3;
@end

@implementation MKHTTPProxyAuthorization

- (MKHTTPProxyAuthorization)initWithHeaderValue:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MKHTTPProxyAuthorization;
  v5 = [(MKHTTPProxyAuthorization *)&v16 init];
  if (v5)
  {
    if (![v4 hasPrefix:@"Bearer "])
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    v6 = [v4 substringWithRange:{objc_msgSend(@"Bearer ", "length"), objc_msgSend(v4, "length") - objc_msgSend(@"Bearer ", "length")}];
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:0];
    v15 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v15];
    v9 = v15;
    if (v9)
    {
      v10 = +[MKLog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(MKHTTPContentPayload *)v5 initWithHeaderValue:v9, v10];
      }

LABEL_11:

      goto LABEL_12;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = +[MKLog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(MKHTTPContentPayload *)v5 initWithHeaderValue:v10];
      }

      goto LABEL_11;
    }

    v11 = [v8 objectForKeyedSubscript:@"identifier"];
    [(MKHTTPProxyAuthorization *)v5 setIdentifier:v11];

    v12 = [v8 objectForKeyedSubscript:@"signature"];
    [(MKHTTPProxyAuthorization *)v5 setSignature:v12];
  }

  v13 = v5;
LABEL_13:

  return v13;
}

@end