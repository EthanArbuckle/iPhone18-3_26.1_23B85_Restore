@interface MGRemoteQueryServerHandlerPing
+ (id)handlerForRequest:(id)request;
- (BOOL)validateRequest;
- (NSString)description;
- (id)_initWithRequest:(id)request;
- (int)prepareResponse:(id)response;
- (void)provideResponseData:(id)data;
@end

@implementation MGRemoteQueryServerHandlerPing

- (id)_initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MGRemoteQueryServerHandlerPing;
  v6 = [(MGRemoteQueryServerHandlerPing *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
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

+ (id)handlerForRequest:(id)request
{
  requestCopy = request;
  v5 = [[self alloc] _initWithRequest:requestCopy];

  return v5;
}

- (BOOL)validateRequest
{
  urlPath = [objc_opt_class() urlPath];
  request = [(MGRemoteQueryServerHandlerPing *)self request];
  v5 = [request URL];
  path = [v5 path];
  v7 = [urlPath isEqual:path];

  return v7;
}

- (int)prepareResponse:(id)response
{
  v4 = MEMORY[0x277CBEAC0];
  responseCopy = response;
  dictionary = [v4 dictionary];
  v7 = MEMORY[0x277CCAAA0];
  rq_coded = [dictionary rq_coded];
  v13 = 0;
  v9 = [v7 dataWithJSONObject:rq_coded options:0 error:&v13];

  [(MGRemoteQueryServerHandlerPing *)self setResponsePayload:v9];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v9, "length")];
  v11 = *MEMORY[0x277CD9270];
  [v10 UTF8String];
  nw_http_fields_append();

  return 200;
}

- (void)provideResponseData:(id)data
{
  dataCopy = data;
  if ([(MGRemoteQueryServerHandlerPing *)self replied])
  {
    (*(dataCopy + 2))(dataCopy, 0, 0);
  }

  else
  {
    [(MGRemoteQueryServerHandlerPing *)self setReplied:1];
    responsePayload = [(MGRemoteQueryServerHandlerPing *)self responsePayload];
    (*(dataCopy + 2))(dataCopy, responsePayload, 0);
  }
}

@end