@interface IDSSignInServiceUserInfo
- (IDSSignInServiceUserInfo)initWithUserType:(unint64_t)a3 status:(unint64_t)a4;
- (id)description;
@end

@implementation IDSSignInServiceUserInfo

- (IDSSignInServiceUserInfo)initWithUserType:(unint64_t)a3 status:(unint64_t)a4
{
  if (_IDSRunningInDaemon())
  {
    v7 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    v8 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSSignInServiceUserInfo;
    v9 = [(IDSSignInServiceUserInfo *)&v11 init];
    if (v9)
    {
      v9->_type = a3;
      v9->_status = a4;
    }

    self = v9;
    v8 = self;
  }

  return v8;
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