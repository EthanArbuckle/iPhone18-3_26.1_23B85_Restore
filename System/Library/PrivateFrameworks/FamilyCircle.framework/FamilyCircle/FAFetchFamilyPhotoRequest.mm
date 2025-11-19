@interface FAFetchFamilyPhotoRequest
- (FAFetchFamilyPhotoRequest)init;
- (FAFetchFamilyPhotoRequest)initWithConnectionProvider:(id)a3;
- (FAFetchFamilyPhotoRequest)initWithFamilyMemberDSID:(id)a3 size:(unint64_t)a4 localFallback:(BOOL)a5 connectionProvider:(id)a6;
- (FAFetchFamilyPhotoRequest)initWithFamilyMemberHashedDSID:(id)a3 size:(unint64_t)a4 localFallback:(BOOL)a5 connectionProvider:(id)a6;
- (id)requestOptions;
- (void)startRequestWithCompletionHandler:(id)a3;
@end

@implementation FAFetchFamilyPhotoRequest

- (FAFetchFamilyPhotoRequest)initWithFamilyMemberDSID:(id)a3 size:(unint64_t)a4 localFallback:(BOOL)a5 connectionProvider:(id)a6
{
  v10 = a3;
  v11 = [(FAFetchFamilyPhotoRequest *)self initWithConnectionProvider:a6];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_memberDSID, a3);
    v12->_requestedSize = a4;
    v13 = v12;
  }

  return v12;
}

- (FAFetchFamilyPhotoRequest)initWithFamilyMemberHashedDSID:(id)a3 size:(unint64_t)a4 localFallback:(BOOL)a5 connectionProvider:(id)a6
{
  v10 = a3;
  v11 = [(FAFetchFamilyPhotoRequest *)self initWithConnectionProvider:a6];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_memberHashedDSID, a3);
    v12->_requestedSize = a4;
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

- (FAFetchFamilyPhotoRequest)initWithConnectionProvider:(id)a3
{
  v4.receiver = self;
  v4.super_class = FAFetchFamilyPhotoRequest;
  result = [(FAFamilyCircleRequest *)&v4 initWithConnectionProvider:a3];
  result->_monogramDiameter = 40.0;
  result->_useMonogramAsLastResort = 1;
  return result;
}

- (id)requestOptions
{
  v17.receiver = self;
  v17.super_class = FAFetchFamilyPhotoRequest;
  v3 = [(FAFamilyCircleRequest *)&v17 requestOptions];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAFetchFamilyPhotoRequest backgroundType](self, "backgroundType")}];
  [v4 setObject:v5 forKeyedSubscript:@"backgroundType"];

  v6 = MEMORY[0x1E696AD98];
  [(FAFetchFamilyPhotoRequest *)self monogramDiameter];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"monogramDiameter"];

  v8 = [(FAFetchFamilyPhotoRequest *)self fullname];

  if (v8)
  {
    v9 = [(FAFetchFamilyPhotoRequest *)self fullname];
    [v4 setObject:v9 forKeyedSubscript:@"fullname"];
  }

  v10 = [(FAFetchFamilyPhotoRequest *)self emailAddress];

  if (v10)
  {
    v11 = [(FAFetchFamilyPhotoRequest *)self emailAddress];
    [v4 setObject:v11 forKeyedSubscript:@"emailAddress"];
  }

  v12 = [(FAFetchFamilyPhotoRequest *)self phoneNumber];

  if (v12)
  {
    v13 = [(FAFetchFamilyPhotoRequest *)self phoneNumber];
    [v4 setObject:v13 forKeyedSubscript:@"phoneNumber"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[FAFetchFamilyPhotoRequest useMonogramAsLastResort](self, "useMonogramAsLastResort")}];
  [v4 setObject:v14 forKeyedSubscript:@"useMonogramAsLastResort"];

  v15 = [v4 copy];

  return v15;
}

- (void)startRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v17 = v6;
  v7 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v16];
  v8 = [(FAFetchFamilyPhotoRequest *)self memberDSID];
  v9 = [(FAFetchFamilyPhotoRequest *)self memberHashedDSID];
  v10 = [(FAFetchFamilyPhotoRequest *)self requestedSize];
  v11 = [(FAFetchFamilyPhotoRequest *)self localFallback];
  v12 = [(FAFetchFamilyPhotoRequest *)self requestOptions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__FAFetchFamilyPhotoRequest_startRequestWithCompletionHandler___block_invoke_20;
  v14[3] = &unk_1E7CA5700;
  v15 = v6;
  v13 = v6;
  [v7 fetchFamilyMemberPhotoWithDSID:v8 hashedDSID:v9 size:v10 localFallback:v11 options:v12 replyBlock:v14];
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