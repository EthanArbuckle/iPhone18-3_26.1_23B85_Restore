@interface MKHTTPResponse
- (MKHTTPResponse)init;
- (id)responseData;
@end

@implementation MKHTTPResponse

- (MKHTTPResponse)init
{
  v5.receiver = self;
  v5.super_class = MKHTTPResponse;
  v2 = [(MKHTTPResponse *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MKHTTPHeaders);
    [(MKHTTPResponse *)v2 setHeaders:v3];
  }

  return v2;
}

- (id)responseData
{
  body = self->_body;
  if (body)
  {
    [(MKHTTPHeaders *)self->_headers setContentLength:[(NSData *)body length]];
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v5 = [(MKHTTPHeaders *)self->_headers responseHeadersData];
  [v4 appendData:v5];

  if (self->_body)
  {
    [v4 appendData:?];
  }

  return v4;
}

@end