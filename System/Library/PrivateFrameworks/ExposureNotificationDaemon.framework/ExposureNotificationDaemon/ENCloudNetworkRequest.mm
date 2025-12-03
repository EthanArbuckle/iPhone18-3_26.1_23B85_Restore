@interface ENCloudNetworkRequest
+ (id)requestWithURL:(id)l httpMethod:(unint64_t)method headers:(id)headers parameters:(id)parameters andBody:(id)body;
- (id)description;
- (id)httpMethodString;
@end

@implementation ENCloudNetworkRequest

+ (id)requestWithURL:(id)l httpMethod:(unint64_t)method headers:(id)headers parameters:(id)parameters andBody:(id)body
{
  bodyCopy = body;
  parametersCopy = parameters;
  headersCopy = headers;
  lCopy = l;
  v15 = objc_alloc_init(ENCloudNetworkRequest);
  uUID = [MEMORY[0x277CCAD70] UUID];
  [(ENCloudNetworkRequest *)v15 setRequestID:uUID];

  [(ENCloudNetworkRequest *)v15 setUrl:lCopy];
  [(ENCloudNetworkRequest *)v15 setHeaders:headersCopy];

  [(ENCloudNetworkRequest *)v15 setParameters:parametersCopy];
  [(ENCloudNetworkRequest *)v15 setHttpMethod:method];
  [(ENCloudNetworkRequest *)v15 setBody:bodyCopy];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA0];
  requestID = [(ENCloudNetworkRequest *)self requestID];
  uUIDString = [requestID UUIDString];
  v6 = [(ENCloudNetworkRequest *)self url];
  httpMethodString = [(ENCloudNetworkRequest *)self httpMethodString];
  headers = [(ENCloudNetworkRequest *)self headers];
  body = [(ENCloudNetworkRequest *)self body];
  v10 = [v3 stringWithFormat:@"ENCloudNetworkRequest[%@] - URL: %@, Method: %@, \n Headers - %@, body - %@", uUIDString, v6, httpMethodString, headers, body];

  return v10;
}

- (id)httpMethodString
{
  if ([(ENCloudNetworkRequest *)self httpMethod])
  {
    return @"POST";
  }

  else
  {
    return @"GET";
  }
}

@end