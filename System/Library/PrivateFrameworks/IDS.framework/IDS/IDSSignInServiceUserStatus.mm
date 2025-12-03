@interface IDSSignInServiceUserStatus
- (IDSSignInServiceUserStatus)initWithServiceType:(unint64_t)type userInfos:(id)infos;
- (id)description;
- (unint64_t)appleIDUserStatus;
- (unint64_t)phoneUserStatus;
@end

@implementation IDSSignInServiceUserStatus

- (IDSSignInServiceUserStatus)initWithServiceType:(unint64_t)type userInfos:(id)infos
{
  infosCopy = infos;
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
    v13.receiver = self;
    v13.super_class = IDSSignInServiceUserStatus;
    v10 = [(IDSSignInServiceUserStatus *)&v13 init];
    v11 = v10;
    if (v10)
    {
      v10->_serviceType = type;
      objc_storeStrong(&v10->_serviceUserInfos, infos);
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"iMessage";
  serviceType = self->_serviceType;
  if (serviceType != 1)
  {
    v5 = 0;
  }

  if (!serviceType)
  {
    v5 = @"FaceTime";
  }

  return [v3 stringWithFormat:@"<%@: %p> Service: %@ Infos: %@", v4, self, v5, self->_serviceUserInfos];
}

- (unint64_t)phoneUserStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_serviceUserInfos;
  status = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (status)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != status; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (![v6 type])
        {
          status = [v6 status];
          goto LABEL_11;
        }
      }

      status = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (status)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return status;
}

- (unint64_t)appleIDUserStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_serviceUserInfos;
  status = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (status)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != status; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 1)
        {
          status = [v6 status];
          goto LABEL_11;
        }
      }

      status = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (status)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return status;
}

@end