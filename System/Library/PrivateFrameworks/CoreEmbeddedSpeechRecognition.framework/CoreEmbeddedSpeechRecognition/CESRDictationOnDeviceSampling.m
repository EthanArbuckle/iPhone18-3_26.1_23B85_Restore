@interface CESRDictationOnDeviceSampling
+ (BOOL)_isInternalInstall;
+ (BOOL)_isSamplingAllowed;
+ (id)_readDictationSampledPlist;
+ (id)sharedManager;
- (BOOL)_isSamplingDateCurrent;
- (BOOL)isRequestSelectedForSamplingFromConfigForLanguage:(id)a3;
- (CESRDictationOnDeviceSampling)init;
- (void)_setRequestCount:(int64_t)a3;
- (void)_setSamplingDateToCurrentDate;
- (void)_updateDictationSampledPlist;
- (void)incrementSampledRequestCount;
@end

@implementation CESRDictationOnDeviceSampling

- (BOOL)_isSamplingDateCurrent
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  LOBYTE(self) = [v3 isDateInToday:self->_samplingDate];

  return self;
}

- (void)_setSamplingDateToCurrentDate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  samplingDate = self->_samplingDate;
  self->_samplingDate = v3;

  v6 = self->_samplingDate;
  dictationSamplingVariables = self->_dictationSamplingVariables;
  v7 = [MEMORY[0x277CEF290] sampledCurrentSamplingDateKey];
  [(NSMutableDictionary *)dictationSamplingVariables setObject:v6 forKeyedSubscript:v7];
}

- (void)_setRequestCount:(int64_t)a3
{
  self->_numberOfRequestsTillNow = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [(NSMutableDictionary *)self->_dictationSamplingVariables setObject:v4 forKeyedSubscript:@"numberOfRequestsTillNow"];
}

- (void)_updateDictationSampledPlist
{
  v3 = [(NSMutableDictionary *)self->_dictationSamplingVariables copy];
  fileQueue = self->_fileQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CESRDictationOnDeviceSampling__updateDictationSampledPlist__block_invoke;
  block[3] = &unk_27857FFE8;
  v7 = v3;
  v5 = v3;
  dispatch_async(fileQueue, block);
}

void __61__CESRDictationOnDeviceSampling__updateDictationSampledPlist__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEF290] createSamplingDirectory];
  if (v2)
  {
    v3 = [MEMORY[0x277CEF290] sampledPlistFileName];
    v4 = [v2 stringByAppendingPathComponent:v3];

    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v15 = 0;
    v7 = [v5 writeToURL:v6 error:&v15];
    v8 = v15;

    v9 = *MEMORY[0x277CEF0E8];
    v10 = *MEMORY[0x277CEF0E8];
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[CESRDictationOnDeviceSampling _updateDictationSampledPlist]_block_invoke";
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Wrote updated sampling variables to plist: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = v9;
      v14 = [v8 description];
      *buf = 136315650;
      v17 = "[CESRDictationOnDeviceSampling _updateDictationSampledPlist]_block_invoke";
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v14;
      _os_log_error_impl(&dword_225EEB000, v13, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to write sampling variables to plist: %@, error: %@", buf, 0x20u);
    }
  }

  else
  {
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CESRDictationOnDeviceSampling _updateDictationSampledPlist]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to create the sampling directory.", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRequestSelectedForSamplingFromConfigForLanguage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (!+[CESRDictationOnDeviceSampling _isSamplingAllowed])
  {
    goto LABEL_26;
  }

  if (a3 && (!self->_numberOfRequestsTillNow || ![(CESRDictationOnDeviceSampling *)self _isSamplingDateCurrent]))
  {
    self->_isDeviceSampledFromConfig = 1;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(NSMutableDictionary *)self->_dictationSamplingVariables setObject:v5 forKeyedSubscript:@"isDeviceSampledFromConfig"];

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      isDeviceSampledFromConfig = self->_isDeviceSampledFromConfig;
      v19 = 136315394;
      v20 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v21 = 1024;
      v22 = isDeviceSampledFromConfig;
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Dictation Sampling: isDeviceSampledFromConfig = %d", &v19, 0x12u);
    }
  }

  if (!self->_isDeviceSampledFromConfig && !+[CESRDictationOnDeviceSampling _isInternalInstall])
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v15 = "%s Dictation Sampling: Device is not participating in sampling today.";
      v16 = v14;
LABEL_25:
      _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, v15, &v19, 0xCu);
    }

LABEL_26:
    v9 = 0;
    goto LABEL_27;
  }

  if (![(CESRDictationOnDeviceSampling *)self _isSamplingDateCurrent])
  {
    [(CESRDictationOnDeviceSampling *)self _setSamplingDateToCurrentDate];
    [(CESRDictationOnDeviceSampling *)self _setRequestCount:0];
  }

  if (+[CESRDictationOnDeviceSampling _isInternalInstall])
  {
    v8 = *MEMORY[0x277CEF0E8];
    v9 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v10 = "%s Dictation Sampling: Selected for sampling. Sampling from an internal install.";
LABEL_22:
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, v10, &v19, 0xCu);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  numberOfRequestsTillNow = self->_numberOfRequestsTillNow;
  if (numberOfRequestsTillNow)
  {
    v12 = arc4random_uniform(numberOfRequestsTillNow + 1) + 1;
    v8 = *MEMORY[0x277CEF0E8];
    v13 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
    if (v12 <= 1)
    {
      if (!v13)
      {
        v9 = 1;
        goto LABEL_27;
      }

      v19 = 136315138;
      v20 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v10 = "%s Dictation Sampling: Selected for sampling.";
      v9 = 1;
      goto LABEL_22;
    }

    if (v13)
    {
      v19 = 136315138;
      v20 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
      v15 = "%s Dictation Sampling: Not selected for sampling.";
      v16 = v8;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v8 = *MEMORY[0x277CEF0E8];
  v9 = 1;
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v19 = 136315138;
    v20 = "[CESRDictationOnDeviceSampling isRequestSelectedForSamplingFromConfigForLanguage:]";
    v10 = "%s Dictation Sampling: Selected for sampling. The count of sampled requests was 0.";
    goto LABEL_22;
  }

LABEL_27:
  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)incrementSampledRequestCount
{
  v7 = *MEMORY[0x277D85DE8];
  ++self->_numberOfRequestsTillNow;
  [(CESRDictationOnDeviceSampling *)self _setRequestCount:?];
  [(CESRDictationOnDeviceSampling *)self _updateDictationSampledPlist];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CESRDictationOnDeviceSampling incrementSampledRequestCount]";
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Incremented the count of sampled requests by 1.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (CESRDictationOnDeviceSampling)init
{
  v17.receiver = self;
  v17.super_class = CESRDictationOnDeviceSampling;
  v2 = [(CESRDictationOnDeviceSampling *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CESRDictationOnDeviceSampling file queue", v3);
    fileQueue = v2->_fileQueue;
    v2->_fileQueue = v4;

    v6 = [objc_opt_class() _readDictationSampledPlist];
    dictationSamplingVariables = v2->_dictationSamplingVariables;
    v2->_dictationSamplingVariables = v6;

    v2->_isDeviceSampledFromConfig = 1;
    if ([(NSMutableDictionary *)v2->_dictationSamplingVariables count])
    {
      v8 = v2->_dictationSamplingVariables;
      v9 = [MEMORY[0x277CEF290] sampledCurrentSamplingDateKey];
      v10 = [(NSMutableDictionary *)v8 objectForKey:v9];
      samplingDate = v2->_samplingDate;
      v2->_samplingDate = v10;

      v12 = [(NSMutableDictionary *)v2->_dictationSamplingVariables objectForKey:@"numberOfRequestsTillNow"];
      v2->_numberOfRequestsTillNow = [v12 integerValue];

      v13 = [(NSMutableDictionary *)v2->_dictationSamplingVariables objectForKey:@"isDeviceSampledFromConfig"];
      v14 = v13;
      if (v13)
      {
        isDeviceSampledFromConfig = [v13 BOOLValue];
      }

      else
      {
        isDeviceSampledFromConfig = v2->_isDeviceSampledFromConfig;
      }

      v2->_isDeviceSampledFromConfig = isDeviceSampledFromConfig;
    }

    else
    {
      [(CESRDictationOnDeviceSampling *)v2 _setSamplingDateToCurrentDate];
      [(CESRDictationOnDeviceSampling *)v2 _setRequestCount:0];
    }
  }

  return v2;
}

+ (id)_readDictationSampledPlist
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEF290] sampledLibraryDirectoryPath];
  v3 = [MEMORY[0x277CEF290] sampledPlistFileName];
  v4 = [v2 stringByAppendingPathComponent:v3];

  v5 = MEMORY[0x277CBEB38];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v14 = 0;
  v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v14];
  v8 = v14;

  if (v8)
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "+[CESRDictationOnDeviceSampling _readDictationSampledPlist]";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to read plist at path: %@, error: %@", buf, 0x20u);
    }

    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    v10 = [v7 mutableCopy];
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (BOOL)_isSamplingAllowed
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v2 isDictationOnDeviceSamplingDisabled])
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "+[CESRDictationOnDeviceSampling _isSamplingAllowed]";
      v4 = "%s Dictation Sampling: Not sampling. Sampling is explicitly disabled.";
LABEL_11:
      _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, v4, &v8, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([v2 isDictationHIPAACompliant])
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "+[CESRDictationOnDeviceSampling _isSamplingAllowed]";
      v4 = "%s Dictation Sampling: Not sampling. Request is HIPAA compliant.";
      goto LABEL_11;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  if ([v2 siriDataSharingOptInStatus] != 1)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "+[CESRDictationOnDeviceSampling _isSamplingAllowed]";
      v4 = "%s Dictation Sampling: Not sampling. User is not opted-in.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = 1;
LABEL_13:

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (BOOL)_isInternalInstall
{
  if (_isInternalInstall_onceToken != -1)
  {
    dispatch_once(&_isInternalInstall_onceToken, &__block_literal_global_9);
  }

  return _isInternalInstall_isInternalInstall;
}

uint64_t __51__CESRDictationOnDeviceSampling__isInternalInstall__block_invoke()
{
  result = AFIsInternalInstall();
  _isInternalInstall_isInternalInstall = result;
  return result;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_729 != -1)
  {
    dispatch_once(&sharedManager_onceToken_729, &__block_literal_global_730);
  }

  v3 = sharedManager_sharedMyManager_731;

  return v3;
}

uint64_t __46__CESRDictationOnDeviceSampling_sharedManager__block_invoke()
{
  sharedManager_sharedMyManager_731 = objc_alloc_init(CESRDictationOnDeviceSampling);

  return MEMORY[0x2821F96F8]();
}

@end