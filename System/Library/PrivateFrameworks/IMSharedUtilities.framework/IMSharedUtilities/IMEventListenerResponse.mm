@interface IMEventListenerResponse
- (IMEventListenerResponse)initWithSuccess:(BOOL)success userInfo:(id)info error:(id)error;
- (NSString)description;
@end

@implementation IMEventListenerResponse

- (IMEventListenerResponse)initWithSuccess:(BOOL)success userInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = IMEventListenerResponse;
  v11 = [(IMEventListenerResponse *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userInfo, info);
    objc_storeStrong(&v12->_error, error);
    if (errorCopy)
    {
      successCopy = 0;
    }

    else
    {
      successCopy = success;
    }

    v12->_success = successCopy;
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

  error = [(IMEventListenerResponse *)self error];
  userInfo = [(IMEventListenerResponse *)self userInfo];
  v7 = [v3 stringWithFormat:@"command succeeded: %@, error: %@, userInfo: %@", v4, error, userInfo];

  return v7;
}

@end