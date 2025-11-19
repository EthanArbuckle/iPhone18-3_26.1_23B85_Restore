@interface MCLURLDataLoaderTask
- (BOOL)responseClientError;
- (BOOL)responseOk;
- (BOOL)responseTimeout;
- (MCLURLDataLoaderTask)initWithCoder:(id)a3;
- (MCLURLDataLoaderTask)initWithURLRequest:(id)a3 targetPath:(id)a4 category:(id)a5 completionHandler:(id)a6 receiveData:(id)a7;
- (id)completion;
- (id)contentType;
- (id)description;
- (id)receiveDataHandler;
- (void)applyFileExtension:(id)a3;
- (void)applyMimeType;
- (void)dispatchCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCategory:(id)a3;
- (void)setRequest:(id)a3;
- (void)setResponse:(id)a3;
- (void)setResponseData:(id)a3;
@end

@implementation MCLURLDataLoaderTask

- (MCLURLDataLoaderTask)initWithURLRequest:(id)a3 targetPath:(id)a4 category:(id)a5 completionHandler:(id)a6 receiveData:(id)a7
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v21 = 0;
  objc_storeStrong(&v21, a7);
  v7 = v26;
  v26 = 0;
  v20.receiver = v7;
  v20.super_class = MCLURLDataLoaderTask;
  v26 = [(MCLURLDataLoaderTask *)&v20 init];
  objc_storeStrong(&v26, v26);
  if (v26)
  {
    v8 = [location[0] copy];
    originalRequest = v26->_originalRequest;
    v26->_originalRequest = v8;
    MEMORY[0x277D82BD8](originalRequest);
    objc_storeStrong(&v26->_request, v26->_originalRequest);
    objc_storeStrong(&v26->_category, v23);
    objc_storeStrong(&v26->_targetPath, v24);
    v10 = _Block_copy(v22);
    completion = v26->_completion;
    v26->_completion = v10;
    MEMORY[0x277D82BD8](completion);
    v12 = _Block_copy(v21);
    receiveDataHandler = v26->_receiveDataHandler;
    v26->_receiveDataHandler = v12;
    MEMORY[0x277D82BD8](receiveDataHandler);
  }

  v15 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v15;
}

- (BOOL)responseOk
{
  response = self->_response;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return [(NSHTTPURLResponse *)self->_response expectedContentLength]!= 0;
  }

  v5 = [(NSHTTPURLResponse *)self->_response statusCode]/ 100;
  v3 = 1;
  if (v5 != 2)
  {
    return v5 == 3;
  }

  return v3;
}

- (BOOL)responseClientError
{
  response = self->_response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [(NSHTTPURLResponse *)self->_response statusCode]/ 100 == 4;
  }

  else
  {
    return [(NSHTTPURLResponse *)self->_response expectedContentLength]== 0;
  }
}

- (BOOL)responseTimeout
{
  v3 = [(NSError *)self->_error domain];
  v4 = 0;
  if ([(NSString *)v3 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v4 = [(NSError *)self->_error code]== -1001;
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v5 = [(NSURLRequest *)self->_request URL];
  v4 = [(NSURL *)v5 absoluteString];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, self->_category];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)completion
{
  v2 = _Block_copy(self->_completion);

  return v2;
}

- (void)setRequest:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  request = v6->_request;
  v6->_request = v3;
  MEMORY[0x277D82BD8](request);
  objc_storeStrong(location, 0);
}

- (void)setResponse:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  response = v6->_response;
  v6->_response = v3;
  MEMORY[0x277D82BD8](response);
  objc_storeStrong(location, 0);
}

- (void)setResponseData:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_responseData, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setCategory:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  category = v6->_category;
  v6->_category = v3;
  MEMORY[0x277D82BD8](category);
  objc_storeStrong(location, 0);
}

- (void)dispatchCompletion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_error, location[0]);
  if (v6->_completion)
  {
    (*(v6->_completion + 2))();
    completion = v6->_completion;
    v6->_completion = 0;
    MEMORY[0x277D82BD8](completion);
  }

  if (!location[0])
  {
    LODWORD(v3) = 1.0;
    [(MCLURLDataLoaderTask *)v6 setProgress:v3];
  }

  objc_storeStrong(location, 0);
}

- (id)receiveDataHandler
{
  v2 = _Block_copy(self->_receiveDataHandler);

  return v2;
}

- (id)contentType
{
  v8 = self;
  v7[1] = a2;
  response = self->_response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSHTTPURLResponse *)v8->_response allHeaderFields];
    v7[0] = [(NSDictionary *)v4 objectForKeyedSubscript:@"Content-Type"];
    MEMORY[0x277D82BD8](v4);
    v5 = [v7[0] componentsSeparatedByString:@";"];
    v9 = [v5 firstObject];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(v7, 0);
  }

  else
  {
    v9 = 0;
  }

  v2 = v9;

  return v2;
}

- (void)applyMimeType
{
  v4 = self;
  v3[1] = a2;
  if ([(NSString *)self->_targetPath hasSuffix:@"[content_type]"])
  {
    v2 = [(MCLURLDataLoaderTask *)v4 contentType];
    v3[0] = [MCLURLDataLoader fileExtensionForMimeType:?];
    MEMORY[0x277D82BD8](v2);
    [(MCLURLDataLoaderTask *)v4 applyFileExtension:v3[0]];
    objc_storeStrong(v3, 0);
  }
}

- (void)applyFileExtension:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(NSString *)v7->_targetPath stringByDeletingPathExtension];
  v3 = [(NSString *)v5 stringByAppendingPathExtension:location[0]];
  targetPath = v7->_targetPath;
  v7->_targetPath = v3;
  MEMORY[0x277D82BD8](targetPath);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_category forKey:@"category"];
  [location[0] encodeObject:v4->_originalRequest forKey:@"request"];
  [location[0] encodeObject:v4->_targetPath forKey:@"targetPath"];
  [location[0] encodeObject:v4->_userInfo forKey:@"userInfo"];
  objc_storeStrong(location, 0);
}

- (MCLURLDataLoaderTask)initWithCoder:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] decodeObjectForKey:@"category"];
  v8 = [location[0] decodeObjectForKey:@"request"];
  v7 = [location[0] decodeObjectForKey:@"targetPath"];
  v3 = v11;
  v11 = 0;
  v11 = [(MCLURLDataLoaderTask *)v3 initWithURLRequest:v8 targetPath:v7 category:v9 completionHandler:0 receiveData:?];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v6 = [location[0] decodeObjectForKey:@"userInfo"];
    [(MCLURLDataLoaderTask *)v11 setUserInfo:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v5;
}

@end