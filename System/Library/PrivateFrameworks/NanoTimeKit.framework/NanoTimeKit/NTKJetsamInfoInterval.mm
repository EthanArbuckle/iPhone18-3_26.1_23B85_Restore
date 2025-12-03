@interface NTKJetsamInfoInterval
- (BOOL)waitUntilDirtyMemoryReaches:(int64_t)reaches maxWaitMS:(int)s;
- (NTKJetsamInfoInterval)initWithLabel:(id)label;
- (jetsam_info)currentInfo;
- (void)logCurrentInterval;
- (void)reset;
@end

@implementation NTKJetsamInfoInterval

- (NTKJetsamInfoInterval)initWithLabel:(id)label
{
  v19 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = NTKJetsamInfoInterval;
  v6 = [(NTKJetsamInfoInterval *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_label, label);
    v8 = objc_opt_new();
    fetcher = v7->_fetcher;
    v7->_fetcher = v8;

    if ([(NTKJetsamInfoFetcher *)v7->_fetcher getInfo:&v7->_startInfo])
    {
      if ([(NTKJetsamInfoFetcher *)v7->_fetcher resetInterval])
      {
        v10 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          label = v7->_label;
          v12 = v7->_startInfo.currentKB * 0.0009765625;
          *buf = 138412546;
          labelCopy2 = label;
          v17 = 2048;
          v18 = v12;
          _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': start footprint: %.3f", buf, 0x16u);
        }
      }
    }
  }

  return v7;
}

- (jetsam_info)currentInfo
{
  retstr->maxLifetimeKB = -1;
  retstr->maxIntervalKB = -1;
  retstr->currentKB = -1;
  return [(NTKJetsamInfoFetcher *)self->_fetcher getInfo:?];
}

- (void)logCurrentInterval
{
  v16 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if ([(NTKJetsamInfoFetcher *)self->_fetcher getInfo:v6])
  {
    v3 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      label = self->_label;
      v5 = self->_startInfo.currentKB * 0.0009765625;
      *buf = 138413058;
      v9 = label;
      v10 = 2048;
      v11 = v5;
      v12 = 2048;
      v13 = v7 * 0.0009765625;
      v14 = 2048;
      v15 = v6[0] * 0.0009765625;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': start footprint: %.3f, max: %.3f, end: %.3f", buf, 0x2Au);
    }
  }
}

- (void)reset
{
  [(NTKJetsamInfoFetcher *)self->_fetcher getInfo:&self->_startInfo];
  fetcher = self->_fetcher;

  [(NTKJetsamInfoFetcher *)fetcher resetInterval];
}

- (BOOL)waitUntilDirtyMemoryReaches:(int64_t)reaches maxWaitMS:(int)s
{
  v21 = *MEMORY[0x277D85DE8];
  [(NTKJetsamInfoInterval *)self currentInfo];
  v7 = v15;
  if (v15 > reaches && s >= 1)
  {
    v9 = 0;
    do
    {
      *__rqtp = xmmword_22DCE9730;
      nanosleep(__rqtp, 0);
      v9 += 100;
      [(NTKJetsamInfoInterval *)self currentInfo];
      v7 = v14;
    }

    while (v14 > reaches && v9 < s);
    v11 = _NTKLoggingObjectForDomain(31, "NTKLoggingDomainJetsam");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      label = self->_label;
      *__rqtp = 138413058;
      *&__rqtp[4] = label;
      *&__rqtp[12] = 2048;
      *&__rqtp[14] = v9;
      v17 = 2048;
      v18 = vcvts_n_f32_s64(reaches, 0xAuLL);
      v19 = 2048;
      v20 = vcvts_n_f32_s64(v14, 0xAuLL);
      _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "jetsam interval '%@': waited %ld ms for footprint to get below %.3fMB, current = %.3fMB", __rqtp, 0x2Au);
    }
  }

  return v7 <= reaches;
}

@end