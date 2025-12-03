@interface IDSSignInServiceUserInfo
- (IDSSignInServiceUserInfo)initWithUserType:(unint64_t)type status:(unint64_t)status;
- (id)description;
@end

@implementation IDSSignInServiceUserInfo

- (IDSSignInServiceUserInfo)initWithUserType:(unint64_t)type status:(unint64_t)status
{
  if (_IDSRunningInDaemon())
  {
    signInController = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(signInController, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSSignInServiceUserInfo;
    v9 = [(IDSSignInServiceUserInfo *)&v11 init];
    if (v9)
    {
      v9->_type = type;
      v9->_status = status;
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = 0;
  v6 = @"AppleID";
  type = self->_type;
  status = self->_status;
  if (type != 1)
  {
    v6 = 0;
  }

  if (!type)
  {
    v6 = @"Phone";
  }

  if (status <= 3)
  {
    v5 = off_1E743FBD0[status];
  }

  return [v3 stringWithFormat:@"<%@: %p> Type: %@ Status: %@", v4, self, v6, v5];
}

@end