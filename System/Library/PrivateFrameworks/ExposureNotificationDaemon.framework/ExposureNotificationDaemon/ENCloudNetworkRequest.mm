@interface ENCloudNetworkRequest
+ (id)requestWithURL:(id)a3 httpMethod:(unint64_t)a4 headers:(id)a5 parameters:(id)a6 andBody:(id)a7;
- (id)description;
- (id)httpMethodString;
@end

@implementation ENCloudNetworkRequest

+ (id)requestWithURL:(id)a3 httpMethod:(unint64_t)a4 headers:(id)a5 parameters:(id)a6 andBody:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(ENCloudNetworkRequest);
  v16 = [MEMORY[0x277CCAD70] UUID];
  [(ENCloudNetworkRequest *)v15 setRequestID:v16];

  [(ENCloudNetworkRequest *)v15 setUrl:v14];
  [(ENCloudNetworkRequest *)v15 setHeaders:v13];

  [(ENCloudNetworkRequest *)v15 setParameters:v12];
  [(ENCloudNetworkRequest *)v15 setHttpMethod:a4];
  [(ENCloudNetworkRequest *)v15 setBody:v11];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA0];
  v4 = [(ENCloudNetworkRequest *)self requestID];
  v5 = [v4 UUIDString];
  v6 = [(ENCloudNetworkRequest *)self url];
  v7 = [(ENCloudNetworkRequest *)self httpMethodString];
  v8 = [(ENCloudNetworkRequest *)self headers];
  v9 = [(ENCloudNetworkRequest *)self body];
  v10 = [v3 stringWithFormat:@"ENCloudNetworkRequest[%@] - URL: %@, Method: %@, \n Headers - %@, body - %@", v5, v6, v7, v8, v9];

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