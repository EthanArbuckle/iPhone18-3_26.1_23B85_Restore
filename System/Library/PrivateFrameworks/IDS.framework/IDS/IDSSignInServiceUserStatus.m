@interface IDSSignInServiceUserStatus
- (IDSSignInServiceUserStatus)initWithServiceType:(unint64_t)a3 userInfos:(id)a4;
- (id)description;
- (unint64_t)appleIDUserStatus;
- (unint64_t)phoneUserStatus;
@end

@implementation IDSSignInServiceUserStatus

- (IDSSignInServiceUserStatus)initWithServiceType:(unint64_t)a3 userInfos:(id)a4
{
  v7 = a4;
  if (_IDSRunningInDaemon())
  {
    v8 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    v9 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = IDSSignInServiceUserStatus;
    v10 = [(IDSSignInServiceUserStatus *)&v13 init];
    v11 = v10;
    if (v10)
    {
      v10->_serviceType = a3;
      objc_storeStrong(&v10->_serviceUserInfos, a4);
    }

    self = v11;
    v9 = self;
  }

  return v9;
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
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (![v6 type])
        {
          v3 = [v6 status];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)appleIDUserStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_serviceUserInfos;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 1)
        {
          v3 = [v6 status];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

@end