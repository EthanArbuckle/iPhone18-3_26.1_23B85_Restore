@interface IMEventListenerResponse
- (IMEventListenerResponse)initWithSuccess:(BOOL)a3 userInfo:(id)a4 error:(id)a5;
- (NSString)description;
@end

@implementation IMEventListenerResponse

- (IMEventListenerResponse)initWithSuccess:(BOOL)a3 userInfo:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = IMEventListenerResponse;
  v11 = [(IMEventListenerResponse *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userInfo, a4);
    objc_storeStrong(&v12->_error, a5);
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    v12->_success = v13;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(IMEventListenerResponse *)self didSucceed])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(IMEventListenerResponse *)self error];
  v6 = [(IMEventListenerResponse *)self userInfo];
  v7 = [v3 stringWithFormat:@"command succeeded: %@, error: %@, userInfo: %@", v4, v5, v6];

  return v7;
}

@end