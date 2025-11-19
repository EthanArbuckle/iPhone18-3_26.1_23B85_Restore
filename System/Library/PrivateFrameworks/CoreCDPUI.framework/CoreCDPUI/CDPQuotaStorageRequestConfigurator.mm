@interface CDPQuotaStorageRequestConfigurator
- (BOOL)_isConfigurationValid;
- (CDPQuotaStorageRequestConfigurator)initWithAccount:(id)a3 appList:(unint64_t)a4 contentSpecifiesE2EE:(BOOL)a5;
- (id)quotaRequest:(id *)a3;
@end

@implementation CDPQuotaStorageRequestConfigurator

- (CDPQuotaStorageRequestConfigurator)initWithAccount:(id)a3 appList:(unint64_t)a4 contentSpecifiesE2EE:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CDPQuotaStorageRequestConfigurator;
  v10 = [(CDPQuotaStorageRequestConfigurator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_account, a3);
    v11->_appList = a4;
    v11->_specifyE2EE = a5;
  }

  return v11;
}

- (id)quotaRequest:(id *)a3
{
  if ([(CDPQuotaStorageRequestConfigurator *)self _isConfigurationValid])
  {
    v5 = [[CDPQuotaStorageAppListRequest alloc] initWithAccount:self->_account appList:self->_appList contentSpecifiesE2EE:self->_specifyE2EE];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5004];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
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