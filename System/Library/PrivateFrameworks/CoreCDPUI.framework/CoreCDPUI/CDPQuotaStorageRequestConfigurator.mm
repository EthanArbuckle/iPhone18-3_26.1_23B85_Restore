@interface CDPQuotaStorageRequestConfigurator
- (BOOL)_isConfigurationValid;
- (CDPQuotaStorageRequestConfigurator)initWithAccount:(id)account appList:(unint64_t)list contentSpecifiesE2EE:(BOOL)e;
- (id)quotaRequest:(id *)request;
@end

@implementation CDPQuotaStorageRequestConfigurator

- (CDPQuotaStorageRequestConfigurator)initWithAccount:(id)account appList:(unint64_t)list contentSpecifiesE2EE:(BOOL)e
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = CDPQuotaStorageRequestConfigurator;
  v10 = [(CDPQuotaStorageRequestConfigurator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_account, account);
    v11->_appList = list;
    v11->_specifyE2EE = e;
  }

  return v11;
}

- (id)quotaRequest:(id *)request
{
  if ([(CDPQuotaStorageRequestConfigurator *)self _isConfigurationValid])
  {
    v5 = [[CDPQuotaStorageAppListRequest alloc] initWithAccount:self->_account appList:self->_appList contentSpecifiesE2EE:self->_specifyE2EE];
  }

  else if (request)
  {
    v6 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    v7 = v6;
    v5 = 0;
    *request = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isConfigurationValid
{
  appList = self->_appList;
  if (appList == 2)
  {
    if (self->_specifyE2EE)
    {
      v3 = _CDPLogSystem();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [(CDPQuotaStorageRequestConfigurator *)v3 _isConfigurationValid:v18];
      }

      goto LABEL_13;
    }
  }

  else if (appList == 1)
  {
    if (self->_specifyE2EE)
    {
      v3 = _CDPLogSystem();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [(CDPQuotaStorageRequestConfigurator *)v3 _isConfigurationValid:v11];
      }

      goto LABEL_13;
    }
  }

  else if (!appList && !self->_specifyE2EE)
  {
    v3 = _CDPLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CDPQuotaStorageRequestConfigurator *)v3 _isConfigurationValid:v4];
    }

LABEL_13:

    return 0;
  }

  return 1;
}

@end