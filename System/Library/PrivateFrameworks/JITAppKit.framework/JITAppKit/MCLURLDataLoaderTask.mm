@interface MCLURLDataLoaderTask
- (BOOL)responseClientError;
- (BOOL)responseOk;
- (BOOL)responseTimeout;
- (MCLURLDataLoaderTask)initWithCoder:(id)coder;
- (MCLURLDataLoaderTask)initWithURLRequest:(id)request targetPath:(id)path category:(id)category completionHandler:(id)handler receiveData:(id)data;
- (id)completion;
- (id)contentType;
- (id)description;
- (id)receiveDataHandler;
- (void)applyFileExtension:(id)extension;
- (void)applyMimeType;
- (void)dispatchCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setCategory:(id)category;
- (void)setRequest:(id)request;
- (void)setResponse:(id)response;
- (void)setResponseData:(id)data;
@end

@implementation MCLURLDataLoaderTask

- (MCLURLDataLoaderTask)initWithURLRequest:(id)request targetPath:(id)path category:(id)category completionHandler:(id)handler receiveData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v24 = 0;
  objc_storeStrong(&v24, path);
  v23 = 0;
  objc_storeStrong(&v23, category);
  v22 = 0;
  objc_storeStrong(&v22, handler);
  v21 = 0;
  objc_storeStrong(&v21, data);
  v7 = selfCopy;
  selfCopy = 0;
  v20.receiver = v7;
  v20.super_class = MCLURLDataLoaderTask;
  selfCopy = [(MCLURLDataLoaderTask *)&v20 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v8 = [location[0] copy];
    originalRequest = selfCopy->_originalRequest;
    selfCopy->_originalRequest = v8;
    MEMORY[0x277D82BD8](originalRequest);
    objc_storeStrong(&selfCopy->_request, selfCopy->_originalRequest);
    objc_storeStrong(&selfCopy->_category, v23);
    objc_storeStrong(&selfCopy->_targetPath, v24);
    v10 = _Block_copy(v22);
    completion = selfCopy->_completion;
    selfCopy->_completion = v10;
    MEMORY[0x277D82BD8](completion);
    v12 = _Block_copy(v21);
    receiveDataHandler = selfCopy->_receiveDataHandler;
    selfCopy->_receiveDataHandler = v12;
    MEMORY[0x277D82BD8](receiveDataHandler);
  }

  v15 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  domain = [(NSError *)self->_error domain];
  v4 = 0;
  if ([(NSString *)domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    v4 = [(NSError *)self->_error code]== -1001;
  }

  MEMORY[0x277D82BD8](domain);
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v5 = [(NSURLRequest *)self->_request URL];
  absoluteString = [(NSURL *)v5 absoluteString];
  v6 = [v3 stringWithFormat:@"%@ - %@", absoluteString, self->_category];
  MEMORY[0x277D82BD8](absoluteString);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)completion
{
  v2 = _Block_copy(self->_completion);

  return v2;
}

- (void)setRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v3 = [location[0] copy];
  request = selfCopy->_request;
  selfCopy->_request = v3;
  MEMORY[0x277D82BD8](request);
  objc_storeStrong(location, 0);
}

- (void)setResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v3 = [location[0] copy];
  response = selfCopy->_response;
  selfCopy->_response = v3;
  MEMORY[0x277D82BD8](response);
  objc_storeStrong(location, 0);
}

- (void)setResponseData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  objc_storeStrong(&selfCopy->_responseData, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setCategory:(id)category
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, category);
  v3 = [location[0] copy];
  category = selfCopy->_category;
  selfCopy->_category = v3;
  MEMORY[0x277D82BD8](category);
  objc_storeStrong(location, 0);
}

- (void)dispatchCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_storeStrong(&selfCopy->_error, location[0]);
  if (selfCopy->_completion)
  {
    (*(selfCopy->_completion + 2))();
    completion = selfCopy->_completion;
    selfCopy->_completion = 0;
    MEMORY[0x277D82BD8](completion);
  }

  if (!location[0])
  {
    LODWORD(v3) = 1.0;
    [(MCLURLDataLoaderTask *)selfCopy setProgress:v3];
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
  selfCopy = self;
  v7[1] = a2;
  response = self->_response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [(NSHTTPURLResponse *)selfCopy->_response allHeaderFields];
    v7[0] = [(NSDictionary *)allHeaderFields objectForKeyedSubscript:@"Content-Type"];
    MEMORY[0x277D82BD8](allHeaderFields);
    v5 = [v7[0] componentsSeparatedByString:@";"];
    firstObject = [v5 firstObject];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(v7, 0);
  }

  else
  {
    firstObject = 0;
  }

  v2 = firstObject;

  return v2;
}

- (void)applyMimeType
{
  selfCopy = self;
  v3[1] = a2;
  if ([(NSString *)self->_targetPath hasSuffix:@"[content_type]"])
  {
    contentType = [(MCLURLDataLoaderTask *)selfCopy contentType];
    v3[0] = [MCLURLDataLoader fileExtensionForMimeType:?];
    MEMORY[0x277D82BD8](contentType);
    [(MCLURLDataLoaderTask *)selfCopy applyFileExtension:v3[0]];
    objc_storeStrong(v3, 0);
  }
}

- (void)applyFileExtension:(id)extension
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, extension);
  stringByDeletingPathExtension = [(NSString *)selfCopy->_targetPath stringByDeletingPathExtension];
  v3 = [(NSString *)stringByDeletingPathExtension stringByAppendingPathExtension:location[0]];
  targetPath = selfCopy->_targetPath;
  selfCopy->_targetPath = v3;
  MEMORY[0x277D82BD8](targetPath);
  MEMORY[0x277D82BD8](stringByDeletingPathExtension);
  objc_storeStrong(location, 0);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_category forKey:@"category"];
  [location[0] encodeObject:selfCopy->_originalRequest forKey:@"request"];
  [location[0] encodeObject:selfCopy->_targetPath forKey:@"targetPath"];
  [location[0] encodeObject:selfCopy->_userInfo forKey:@"userInfo"];
  objc_storeStrong(location, 0);
}

- (MCLURLDataLoaderTask)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v9 = [location[0] decodeObjectForKey:@"category"];
  v8 = [location[0] decodeObjectForKey:@"request"];
  v7 = [location[0] decodeObjectForKey:@"targetPath"];
  v3 = selfCopy;
  selfCopy = 0;
  selfCopy = [(MCLURLDataLoaderTask *)v3 initWithURLRequest:v8 targetPath:v7 category:v9 completionHandler:0 receiveData:?];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v6 = [location[0] decodeObjectForKey:@"userInfo"];
    [(MCLURLDataLoaderTask *)selfCopy setUserInfo:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end