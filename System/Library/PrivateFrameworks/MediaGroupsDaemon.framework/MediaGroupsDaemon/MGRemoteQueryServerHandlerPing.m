@interface MGRemoteQueryServerHandlerPing
+ (id)handlerForRequest:(id)a3;
- (BOOL)validateRequest;
- (NSString)description;
- (id)_initWithRequest:(id)a3;
- (int)prepareResponse:(id)a3;
- (void)provideResponseData:(id)a3;
@end

@implementation MGRemoteQueryServerHandlerPing

- (id)_initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MGRemoteQueryServerHandlerPing;
  v6 = [(MGRemoteQueryServerHandlerPing *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

+ (id)handlerForRequest:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithRequest:v4];

  return v5;
}

- (BOOL)validateRequest
{
  v3 = [objc_opt_class() urlPath];
  v4 = [(MGRemoteQueryServerHandlerPing *)self request];
  v5 = [v4 URL];
  v6 = [v5 path];
  v7 = [v3 isEqual:v6];

  return v7;
}

- (int)prepareResponse:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = MEMORY[0x277CCAAA0];
  v8 = [v6 rq_coded];
  v13 = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:&v13];

  [(MGRemoteQueryServerHandlerPing *)self setResponsePayload:v9];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v9, "length")];
  v11 = *MEMORY[0x277CD9270];
  [v10 UTF8String];
  nw_http_fields_append();

  return 200;
}

- (void)provideResponseData:(id)a3
{
  v5 = a3;
  if ([(MGRemoteQueryServerHandlerPing *)self replied])
  {
    (*(v5 + 2))(v5, 0, 0);
  }

  else
  {
    [(MGRemoteQueryServerHandlerPing *)self setReplied:1];
    v4 = [(MGRemoteQueryServerHandlerPing *)self responsePayload];
    (*(v5 + 2))(v5, v4, 0);
  }
}

@end