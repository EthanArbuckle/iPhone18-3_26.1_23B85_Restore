@interface MKHTTPRequest
- (MKHTTPRequest)initWithHeaders:(id)headers body:(id)body hostname:(id)hostname;
- (void)appendData:(id)data;
- (void)sliceData:(unint64_t)data;
@end

@implementation MKHTTPRequest

- (MKHTTPRequest)initWithHeaders:(id)headers body:(id)body hostname:(id)hostname
{
  headersCopy = headers;
  bodyCopy = body;
  hostnameCopy = hostname;
  v18.receiver = self;
  v18.super_class = MKHTTPRequest;
  v11 = [(MKHTTPRequest *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(MKHTTPRequest *)v11 setHeaders:headersCopy];
    v13 = [MKHTTPParameters alloc];
    query = [headersCopy query];
    v15 = [(MKHTTPParameters *)v13 initWithDictionary:query];
    [(MKHTTPRequest *)v12 setParameters:v15];

    [(MKHTTPRequest *)v12 setHostname:hostnameCopy];
    v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(MKHTTPRequest *)v12 setBody:v16];

    if ([bodyCopy length])
    {
      [(NSMutableData *)v12->_body appendData:bodyCopy];
    }
  }

  return v12;
}

- (void)appendData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    [(NSMutableData *)self->_body appendData:dataCopy];
  }
}

- (void)sliceData:(unint64_t)data
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v5 = [(NSMutableData *)self->_body length];
  v6 = v5 - data;
  if (v5 != data)
  {
    v7 = [(NSMutableData *)self->_body subdataWithRange:data, v6];
    [v8 appendData:v7];
  }

  [(MKHTTPRequest *)self setBody:v8, v6];
}

@end