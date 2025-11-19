@interface FACircleStateResponse
- (BOOL)success;
- (FACircleStateResponse)initWithCoder:(id)a3;
- (FACircleStateResponse)initWithLoadSuccess:(BOOL)a3 error:(id)a4 userInfo:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)success;
@end

@implementation FACircleStateResponse

- (FACircleStateResponse)initWithLoadSuccess:(BOOL)a3 error:(id)a4 userInfo:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = FACircleStateResponse;
  v11 = [(FACircleStateResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_loadSuccess = a3;
    objc_storeStrong(&v11->_error, a4);
    objc_storeStrong(&v12->_userInfo, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  loadSuccess = self->_loadSuccess;
  v5 = a3;
  [v5 encodeBool:loadSuccess forKey:@"loadSuccess"];
  [v5 encodeObject:self->_error forKey:@"error"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
}

- (FACircleStateResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FACircleStateResponse *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v5->_loadSuccess = [v4 decodeBoolForKey:@"loadSuccess"];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;

    v14 = [v4 decodeObjectOfClasses:v10 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v14;
  }

  return v5;
}

- (BOOL)success
{
  v3 = [(FACircleStateResponse *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"success"];
  v5 = [v4 BOOLValue];

  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FACircleStateResponse *)self success];
  }

  return [(FACircleStateResponse *)self loadSuccess]& v5;
}

- (id)description
{
  if (self->_loadSuccess)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"loadSuccess: %@\nerror: %@\nuserInfo: %@", v2, self->_error, self->_userInfo];
}

- (void)success
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [a1 loadSuccess];
  v6 = @"NO";
  v10 = "[FACircleStateResponse success]";
  if (v5)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v9 = 136315650;
  v11 = 2112;
  v12 = v7;
  if (a2)
  {
    v6 = @"YES";
  }

  v13 = 2112;
  v14 = v6;
  _os_log_debug_impl(&dword_1B70B0000, a3, OS_LOG_TYPE_DEBUG, "%s %@ && %@", &v9, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

@end