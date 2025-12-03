@interface GEOAPUploadHolddown
- (GEOAPUploadHolddown)initWithTimeProvider:(id)provider configProvider:(id)configProvider;
- (double)_mustWait;
- (void)_conditionMet;
- (void)_conditionUnmet;
- (void)createFileConditionMet;
- (void)createFileConditionUnmet;
- (void)urlConditionMet;
- (void)urlConditionUnmet;
@end

@implementation GEOAPUploadHolddown

- (void)createFileConditionMet
{
  self->_canWriteFile = 1;
  [(GEOAPUploadHolddown *)self _conditionMet];
  v3 = sub_10000A4A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(GEOAPUploadHolddown *)self _mustWait];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "create file condition met (value = %llu)", &v5, 0xCu);
  }
}

- (void)createFileConditionUnmet
{
  self->_canWriteFile = 0;
  [(GEOAPUploadHolddown *)self _conditionUnmet];
  v3 = sub_10000A4A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(GEOAPUploadHolddown *)self _mustWait];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "create file condition not met (value = %llu)", &v5, 0xCu);
  }
}

- (void)urlConditionMet
{
  self->_hasURL = 1;
  [(GEOAPUploadHolddown *)self _conditionMet];
  v3 = sub_10000A4A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(GEOAPUploadHolddown *)self _mustWait];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "url condition met (value = %llu)", &v5, 0xCu);
  }
}

- (void)urlConditionUnmet
{
  self->_hasURL = 0;
  [(GEOAPUploadHolddown *)self _conditionUnmet];
  v3 = sub_10000A4A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(GEOAPUploadHolddown *)self _mustWait];
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "url condition not met (value = %llu)", &v5, 0xCu);
  }
}

- (void)_conditionMet
{
  if (self->_hasURL && self->_canWriteFile)
  {
    self->_backoffIdx = 0;
    self->_backoffExpireTime = 0.0;
  }
}

- (void)_conditionUnmet
{
  [(GEOAPUploadHolddown *)self _mustWait];
  if (v3 == 0.0)
  {
    if (self->_backoffIdx >= 4)
    {
      backoffIdx = 4;
    }

    else
    {
      backoffIdx = self->_backoffIdx;
    }

    v5 = dword_100025B70[backoffIdx];
    if (([(GEOAPConfigProviding *)self->_configProvider simulateNoURLs]& 1) != 0 || [(GEOAPConfigProviding *)self->_configProvider simulateFileWriteError])
    {
      v6 = (backoffIdx + 10);
    }

    else
    {
      v6 = v5;
    }

    ++self->_backoffIdx;
    [(GEOAPTimeProviding *)self->_timeProvider now];
    self->_backoffExpireTime = v6 + v7;
  }
}

- (double)_mustWait
{
  [(GEOAPTimeProviding *)self->_timeProvider now];
  backoffExpireTime = self->_backoffExpireTime;
  v5 = backoffExpireTime - v4;
  v6 = backoffExpireTime <= v4;
  result = 0.0;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (GEOAPUploadHolddown)initWithTimeProvider:(id)provider configProvider:(id)configProvider
{
  providerCopy = provider;
  configProviderCopy = configProvider;
  v12.receiver = self;
  v12.super_class = GEOAPUploadHolddown;
  v9 = [(GEOAPUploadHolddown *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timeProvider, provider);
    objc_storeStrong(&v10->_configProvider, configProvider);
    *&v10->_hasURL = 257;
    [(GEOAPUploadHolddown *)v10 _conditionMet];
  }

  return v10;
}

@end