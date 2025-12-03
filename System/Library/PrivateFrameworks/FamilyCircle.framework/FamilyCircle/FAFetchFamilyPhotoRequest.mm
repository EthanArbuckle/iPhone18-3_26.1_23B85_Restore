@interface FAFetchFamilyPhotoRequest
- (FAFetchFamilyPhotoRequest)init;
- (FAFetchFamilyPhotoRequest)initWithConnectionProvider:(id)provider;
- (FAFetchFamilyPhotoRequest)initWithFamilyMemberDSID:(id)d size:(unint64_t)size localFallback:(BOOL)fallback connectionProvider:(id)provider;
- (FAFetchFamilyPhotoRequest)initWithFamilyMemberHashedDSID:(id)d size:(unint64_t)size localFallback:(BOOL)fallback connectionProvider:(id)provider;
- (id)requestOptions;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAFetchFamilyPhotoRequest

- (FAFetchFamilyPhotoRequest)initWithFamilyMemberDSID:(id)d size:(unint64_t)size localFallback:(BOOL)fallback connectionProvider:(id)provider
{
  dCopy = d;
  v11 = [(FAFetchFamilyPhotoRequest *)self initWithConnectionProvider:provider];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_memberDSID, d);
    v12->_requestedSize = size;
    v13 = v12;
  }

  return v12;
}

- (FAFetchFamilyPhotoRequest)initWithFamilyMemberHashedDSID:(id)d size:(unint64_t)size localFallback:(BOOL)fallback connectionProvider:(id)provider
{
  dCopy = d;
  v11 = [(FAFetchFamilyPhotoRequest *)self initWithConnectionProvider:provider];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_memberHashedDSID, d);
    v12->_requestedSize = size;
    v13 = v12;
  }

  return v12;
}

- (FAFetchFamilyPhotoRequest)init
{
  v3 = +[_FAFamilyCircleRequestConnectionProvider sharedInstance];
  v4 = [(FAFetchFamilyPhotoRequest *)self initWithConnectionProvider:v3];

  return v4;
}

- (FAFetchFamilyPhotoRequest)initWithConnectionProvider:(id)provider
{
  v4.receiver = self;
  v4.super_class = FAFetchFamilyPhotoRequest;
  result = [(FAFamilyCircleRequest *)&v4 initWithConnectionProvider:provider];
  result->_monogramDiameter = 40.0;
  result->_useMonogramAsLastResort = 1;
  return result;
}

- (id)requestOptions
{
  v17.receiver = self;
  v17.super_class = FAFetchFamilyPhotoRequest;
  requestOptions = [(FAFamilyCircleRequest *)&v17 requestOptions];
  v4 = [requestOptions mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAFetchFamilyPhotoRequest backgroundType](self, "backgroundType")}];
  [v4 setObject:v5 forKeyedSubscript:@"backgroundType"];

  v6 = MEMORY[0x1E696AD98];
  [(FAFetchFamilyPhotoRequest *)self monogramDiameter];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"monogramDiameter"];

  fullname = [(FAFetchFamilyPhotoRequest *)self fullname];

  if (fullname)
  {
    fullname2 = [(FAFetchFamilyPhotoRequest *)self fullname];
    [v4 setObject:fullname2 forKeyedSubscript:@"fullname"];
  }

  emailAddress = [(FAFetchFamilyPhotoRequest *)self emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [(FAFetchFamilyPhotoRequest *)self emailAddress];
    [v4 setObject:emailAddress2 forKeyedSubscript:@"emailAddress"];
  }

  phoneNumber = [(FAFetchFamilyPhotoRequest *)self phoneNumber];

  if (phoneNumber)
  {
    phoneNumber2 = [(FAFetchFamilyPhotoRequest *)self phoneNumber];
    [v4 setObject:phoneNumber2 forKeyedSubscript:@"phoneNumber"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FAFetchFamilyPhotoRequest useMonogramAsLastResort](self, "useMonogramAsLastResort")}];
  [v4 setObject:v14 forKeyedSubscript:@"useMonogramAsLastResort"];

  v15 = [v4 copy];

  return v15;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v5, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyPhotoRequest - startRequestWithCompletionHandler:", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__FAFetchFamilyPhotoRequest_startRequestWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E7CA46D8;
  v6 = handlerCopy;
  v17 = v6;
  v7 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v16];
  memberDSID = [(FAFetchFamilyPhotoRequest *)self memberDSID];
  memberHashedDSID = [(FAFetchFamilyPhotoRequest *)self memberHashedDSID];
  requestedSize = [(FAFetchFamilyPhotoRequest *)self requestedSize];
  localFallback = [(FAFetchFamilyPhotoRequest *)self localFallback];
  requestOptions = [(FAFetchFamilyPhotoRequest *)self requestOptions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__FAFetchFamilyPhotoRequest_startRequestWithCompletionHandler___block_invoke_20;
  v14[3] = &unk_1E7CA5700;
  v15 = v6;
  v13 = v6;
  [v7 fetchFamilyMemberPhotoWithDSID:memberDSID hashedDSID:memberHashedDSID size:requestedSize localFallback:localFallback options:requestOptions replyBlock:v14];
}

void __63__FAFetchFamilyPhotoRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FARemoveFamilyMemberRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

@end