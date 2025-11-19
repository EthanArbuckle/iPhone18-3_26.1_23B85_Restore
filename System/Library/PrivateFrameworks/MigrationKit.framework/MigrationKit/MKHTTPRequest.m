@interface MKHTTPRequest
- (MKHTTPRequest)initWithHeaders:(id)a3 body:(id)a4 hostname:(id)a5;
- (void)appendData:(id)a3;
- (void)sliceData:(unint64_t)a3;
@end

@implementation MKHTTPRequest

- (MKHTTPRequest)initWithHeaders:(id)a3 body:(id)a4 hostname:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = MKHTTPRequest;
  v11 = [(MKHTTPRequest *)&v18 init];
  v12 = v11;
  if (v11)
  {
    [(MKHTTPRequest *)v11 setHeaders:v8];
    v13 = [MKHTTPParameters alloc];
    v14 = [v8 query];
    v15 = [(MKHTTPParameters *)v13 initWithDictionary:v14];
    [(MKHTTPRequest *)v12 setParameters:v15];

    [(MKHTTPRequest *)v12 setHostname:v10];
    v16 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(MKHTTPRequest *)v12 setBody:v16];

    if ([v9 length])
    {
      [(NSMutableData *)v12->_body appendData:v9];
    }
  }

  return v12;
}

- (void)appendData:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSMutableData *)self->_body appendData:v4];
  }
}

- (void)sliceData:(unint64_t)a3
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v5 = [(NSMutableData *)self->_body length];
  v6 = v5 - a3;
  if (v5 != a3)
  {
    v7 = [(NSMutableData *)self->_body subdataWithRange:a3, v6];
    [v8 appendData:v7];
  }

  [(MKHTTPRequest *)self setBody:v8, v6];
}

@end