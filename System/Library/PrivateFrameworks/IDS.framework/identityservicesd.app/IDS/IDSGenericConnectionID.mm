@interface IDSGenericConnectionID
+ (id)idWithAccount:(id)account service:(id)service name:(id)name;
- (BOOL)isEqual:(id)equal;
- (IDSGenericConnectionID)initWithAccount:(id)account service:(id)service name:(id)name;
- (id)description;
- (id)serviceConnectorServiceForAccount;
@end

@implementation IDSGenericConnectionID

+ (id)idWithAccount:(id)account service:(id)service name:(id)name
{
  nameCopy = name;
  serviceCopy = service;
  accountCopy = account;
  v10 = [[IDSGenericConnectionID alloc] initWithAccount:accountCopy service:serviceCopy name:nameCopy];

  return v10;
}

- (id)serviceConnectorServiceForAccount
{
  account = self->_account;
  if (account && self->_service && (v4 = self->_name) != 0)
  {
    v5 = [NSString stringWithFormat:@"%@/%@/%@", account, self->_service, v4];
  }

  else
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_account;
      service = self->_service;
      name = self->_name;
      *buf = 138413314;
      selfCopy = self;
      v13 = 2112;
      v14 = 0;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = service;
      v19 = 2112;
      v20 = name;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ returning serviceConnectorServiceForAccountString=%@._account=%@;_service=%@;_name=%@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [NSString stringWithFormat:@"IDSGenericConnectionID[%@, %@, %@] @%p (%lu)", self->_account, self->_service, self->_name, self, self->_hash];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (IDSGenericConnectionID)initWithAccount:(id)account service:(id)service name:(id)name
{
  accountCopy = account;
  serviceCopy = service;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = IDSGenericConnectionID;
  v11 = [(IDSGenericConnectionID *)&v21 init];
  if (v11)
  {
    v12 = [accountCopy copy];
    account = v11->_account;
    v11->_account = v12;

    v14 = [serviceCopy copy];
    service = v11->_service;
    v11->_service = v14;

    v16 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v16;

    v18 = [(NSString *)v11->_account hash];
    v19 = [(NSString *)v11->_service hash]^ v18;
    v11->_hash = v19 ^ [(NSString *)v11->_name hash];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    account = self->_account;
    account = [v7 account];
    if ([(NSString *)account isEqualToString:account])
    {
      service = self->_service;
      service = [v7 service];
      if ([(NSString *)service isEqualToString:service])
      {
        name = self->_name;
        name = [v7 name];
        v6 = [(NSString *)name isEqualToString:name];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end