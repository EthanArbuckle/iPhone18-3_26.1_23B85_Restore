@interface DRSTailspinRequest
+ (BOOL)_shouldScrub;
+ (BOOL)enforceMinTraceBufferDuration;
+ (void)resetEnforceMinTraceBufferDuration;
+ (void)setEnforceMinTraceBufferDuration:(BOOL)duration;
- (BOOL)_dumpTailspinToDirectory:(id)directory;
- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled;
- (BOOL)isEqualToRequest:(id)request;
- (DRSTailspinRequest)initWithXPCDict:(id)dict;
- (id)_initWithTailspinRequestMO_ON_MOC_QUEUE:(id)e;
- (id)_tailspinOptions;
- (id)debugDescription;
- (id)logType;
- (void)_configureRequestMO:(id)o;
@end

@implementation DRSTailspinRequest

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  minMAT = [(DRSTailspinRequest *)self minMAT];
  v5 = minMAT;
  if (minMAT)
  {
    v6 = minMAT;
  }

  else
  {
    v6 = @"-";
  }

  maxMAT = [(DRSTailspinRequest *)self maxMAT];
  v8 = maxMAT;
  if (maxMAT)
  {
    v9 = maxMAT;
  }

  else
  {
    v9 = @"-";
  }

  v10 = [v3 initWithFormat:@"MAT[%@, %@]", v6, v9];

  v11 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = DRSTailspinRequest;
  v12 = [(DRSRequest *)&v18 debugDescription];
  if ([(DRSTailspinRequest *)self includeOsLog])
  {
    v13 = @"OSLog";
  }

  else
  {
    v13 = @"No OSLog";
  }

  includeOsSignpost = [(DRSTailspinRequest *)self includeOsSignpost];
  v15 = @"No OSSignpost";
  if (includeOsSignpost)
  {
    v15 = @"OSSignpost";
  }

  v16 = [v11 stringWithFormat:@"%@ %@ %@ %@", v12, v13, v15, v10];

  return v16;
}

- (void)_configureRequestMO:(id)o
{
  oCopy = o;
  v8.receiver = self;
  v8.super_class = DRSTailspinRequest;
  [(DRSRequest *)&v8 _configureRequestMO:oCopy];
  v5 = oCopy;
  [v5 setIncludeOsLog:{-[DRSTailspinRequest includeOsLog](self, "includeOsLog")}];
  [v5 setIncludeOsSignpost:{-[DRSTailspinRequest includeOsSignpost](self, "includeOsSignpost")}];
  minMAT = [(DRSTailspinRequest *)self minMAT];
  [v5 setMinMAT:minMAT];

  maxMAT = [(DRSTailspinRequest *)self maxMAT];
  [v5 setMaxMAT:maxMAT];
}

- (DRSTailspinRequest)initWithXPCDict:(id)dict
{
  dictCopy = dict;
  v13.receiver = self;
  v13.super_class = DRSTailspinRequest;
  v5 = [(DRSRequest *)&v13 initWithXPCDict:dictCopy];
  if (v5)
  {
    v5->_includeOsSignpost = xpc_dictionary_get_BOOL(dictCopy, "IncludeOSSignpost");
    v5->_includeOsLog = xpc_dictionary_get_BOOL(dictCopy, "IncludeOSLog");
    v6 = xpc_dictionary_get_value(dictCopy, "MinMAT");

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(dictCopy, "MinMAT")}];
      minMAT = v5->_minMAT;
      v5->_minMAT = v7;
    }

    v9 = xpc_dictionary_get_value(dictCopy, "MaxMAT");

    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(dictCopy, "MaxMAT")}];
      maxMAT = v5->_maxMAT;
      v5->_maxMAT = v10;
    }

    v5->_scrubbed = [objc_opt_class() _shouldScrub];
  }

  return v5;
}

- (id)_initWithTailspinRequestMO_ON_MOC_QUEUE:(id)e
{
  eCopy = e;
  v11.receiver = self;
  v11.super_class = DRSTailspinRequest;
  v5 = [(DRSRequest *)&v11 _initWithRequestMO_ON_MOC_QUEUE:eCopy];
  if (v5)
  {
    v5[145] = [eCopy includeOsLog];
    v5[144] = [eCopy includeOsSignpost];
    minMAT = [eCopy minMAT];
    v7 = *(v5 + 19);
    *(v5 + 19) = minMAT;

    maxMAT = [eCopy maxMAT];
    v9 = *(v5 + 20);
    *(v5 + 20) = maxMAT;

    v5[146] = [eCopy scrubbed];
  }

  return v5;
}

+ (BOOL)_shouldScrub
{
  if (_shouldScrub_onceToken != -1)
  {
    +[DRSTailspinRequest _shouldScrub];
  }

  return (_shouldScrub_shouldScrub & 1) == 0;
}

uint64_t __34__DRSTailspinRequest__shouldScrub__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _shouldScrub_shouldScrub = result;
  return result;
}

- (id)_tailspinOptions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  minMAT = [(DRSTailspinRequest *)self minMAT];

  if (minMAT)
  {
    minMAT2 = [(DRSTailspinRequest *)self minMAT];
    [v3 setObject:minMAT2 forKeyedSubscript:*MEMORY[0x277D82CF0]];
  }

  maxMAT = [(DRSTailspinRequest *)self maxMAT];

  if (maxMAT)
  {
    maxMAT2 = [(DRSTailspinRequest *)self maxMAT];
    [v3 setObject:maxMAT2 forKeyedSubscript:*MEMORY[0x277D82CD8]];
  }

  if ([(DRSTailspinRequest *)self includeOsLog])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CC0]];
  }

  if ([(DRSTailspinRequest *)self includeOsSignpost])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CC8]];
  }

  if ([objc_opt_class() _shouldScrub])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82D18]];
  }

  if (([objc_opt_class() enforceMinTraceBufferDuration] & 1) == 0)
  {
    [v3 setObject:&unk_2847FF750 forKeyedSubscript:*MEMORY[0x277D82CF8]];
  }

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D82CB8]];
  v8 = MEMORY[0x277CCACA8];
  teamID = [(DRSRequest *)self teamID];
  issueCategory = [(DRSRequest *)self issueCategory];
  issueDescription = [(DRSRequest *)self issueDescription];
  v12 = [v8 stringWithFormat:@"%@/%@: %@", teamID, issueCategory, issueDescription];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277D82D08]];

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_dumpTailspinToDirectory:(id)directory
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  directoryCopy = directory;
  v6 = [v4 alloc];
  requestID = [(DRSRequest *)self requestID];
  uUIDString = [requestID UUIDString];
  v9 = [v6 initWithFormat:@"dpTailspin_%@.tailspin", uUIDString];

  v10 = [directoryCopy stringByAppendingPathComponent:v9];

  v11 = open([v10 UTF8String], 514, 438);
  if (v11 == -1)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = __error();
    v21 = [v19 initWithFormat:@"Could not open file handle for new tailspin due to error: %s", strerror(*v20)];
    v44 = 0;
    [(DRSRequest *)self updateToState:4352 errorDescription:v21 errorOut:&v44];
    _tailspinOptions = v44;

    defaultManager = DPLogHandle_TailspinError();
    if (!os_signpost_enabled(defaultManager))
    {
LABEL_26:
      v37 = 0;
      goto LABEL_27;
    }

    errorDescription = [(DRSRequest *)self errorDescription];
    *buf = 138543362;
    v47 = errorDescription;
    v23 = "TailspinCreationFailure";
    v24 = "%{public}@";
    v25 = defaultManager;
    goto LABEL_16;
  }

  v12 = v11;
  _tailspinOptions = [(DRSTailspinRequest *)self _tailspinOptions];
  v14 = tailspin_dump_output_with_options_sync();
  close(v12);
  if ((v14 & 1) == 0)
  {
    [(DRSRequest *)self updateToState:4352 errorDescription:@"Dumping tailspin failed" errorOut:0];
    v26 = DPLogHandle_TailspinError();
    if (os_signpost_enabled(v26))
    {
      errorDescription2 = [(DRSRequest *)self errorDescription];
      *buf = 138543362;
      v47 = errorDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinCreationFailure", "%{public}@", buf, 0xCu);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v10])
    {
      v43 = 0;
      v28 = [defaultManager removeItemAtPath:v10 error:&v43];
      errorDescription = v43;
      v29 = DPLogHandle_TailspinError();
      v30 = os_signpost_enabled(v29);
      if (v28)
      {
        if (v30)
        {
          *buf = 138543362;
          v47 = v10;
          _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedTailspinCleanup", "Removed failed tailspin file: '%{public}@'", buf, 0xCu);
        }
      }

      else if (v30)
      {
        localizedDescription = [errorDescription localizedDescription];
        v35 = localizedDescription;
        v36 = @"Unknown";
        if (localizedDescription)
        {
          v36 = localizedDescription;
        }

        *buf = 138543618;
        v47 = v10;
        v48 = 2114;
        v49 = v36;
        _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedTailspinCleanupFailed", "Failed to remove '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    errorDescription = DPLogHandle_TailspinError();
    if (!os_signpost_enabled(errorDescription))
    {
LABEL_25:

      goto LABEL_26;
    }

    *buf = 138543362;
    v47 = v10;
    v23 = "FailedTailspinCleanupNotNecessary";
    v24 = "Nothing to remove at '%{public}@";
    v25 = errorDescription;
LABEL_16:
    _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v23, v24, buf, 0xCu);
    goto LABEL_25;
  }

  defaultManager = [[DRSLog alloc] _initWithLogPath:v10 transferOwnership:1];
  if (!defaultManager)
  {
    v31 = DPLogHandle_TailspinError();
    if (os_signpost_enabled(v31))
    {
      path = [0 path];
      requestID2 = [(DRSRequest *)self requestID];
      *buf = 138543618;
      v47 = path;
      v48 = 2114;
      v49 = requestID2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinSizeError", "Could not lookup size of %{public, name=path}@ for Request ID: %{public}@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  logs = [(DRSRequest *)self logs];
  v17 = [logs count];

  if (v17)
  {
    logs2 = [(DRSRequest *)self logs];
    [logs2 addObject:defaultManager];
  }

  else
  {
    v45 = defaultManager;
    logs2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [(DRSRequest *)self setLogs:logs2];
  }

  v40 = DPLogHandle_Tailspin();
  if (os_signpost_enabled(v40))
  {
    logPath = [(DRSRequest *)self logPath];
    requestID3 = [(DRSRequest *)self requestID];
    *buf = 138543618;
    v47 = logPath;
    v48 = 2114;
    v49 = requestID3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinSaved", "Tailspin saved to %{public, name=path}@ for Request ID: %{public}@", buf, 0x16u);
  }

  v37 = [(DRSRequest *)self updateToState:1 errorDescription:0 errorOut:0];
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)logType
{
  logs = [(DRSRequest *)self logs];
  v3 = [logs count];

  v4 = kDRLogType_Tailspin;
  if (v3 >= 2)
  {
    v4 = kDRLogType_MultipleLogs;
  }

  v5 = *v4;

  return v5;
}

- (BOOL)_performPostClientLogWork:(id)work dampeningOutcome:(unint64_t)outcome isLogUploadEnabled:(BOOL)enabled
{
  if (outcome)
  {
    v6 = DRSRequestStateForDampeningOutcome(outcome);

    return [(DRSRequest *)self updateToState:v6 errorDescription:0 errorOut:0];
  }

  else
  {

    return [(DRSTailspinRequest *)self _dumpTailspinToDirectory:work];
  }
}

- (BOOL)isEqualToRequest:(id)request
{
  requestCopy = request;
  v26.receiver = self;
  v26.super_class = DRSTailspinRequest;
  if ([(DRSRequest *)&v26 isEqualToRequest:requestCopy])
  {
    v5 = requestCopy;
    includeOsSignpost = [(DRSTailspinRequest *)self includeOsSignpost];
    if (includeOsSignpost != [v5 includeOsSignpost])
    {
      goto LABEL_9;
    }

    includeOsLog = [(DRSTailspinRequest *)self includeOsLog];
    if (includeOsLog != [v5 includeOsLog])
    {
      goto LABEL_9;
    }

    scrubbed = [(DRSTailspinRequest *)self scrubbed];
    if (scrubbed != [v5 scrubbed])
    {
      goto LABEL_9;
    }

    minMAT = [(DRSTailspinRequest *)self minMAT];
    minMAT2 = [v5 minMAT];
    IsNil = _oneIsNil(minMAT, minMAT2);

    if (IsNil)
    {
      goto LABEL_9;
    }

    minMAT3 = [(DRSTailspinRequest *)self minMAT];
    if (minMAT3)
    {
      v13 = minMAT3;
      minMAT4 = [(DRSTailspinRequest *)self minMAT];
      minMAT5 = [v5 minMAT];
      v16 = [minMAT4 isEqualToNumber:minMAT5];

      if (!v16)
      {
        goto LABEL_9;
      }
    }

    maxMAT = [(DRSTailspinRequest *)self maxMAT];
    maxMAT2 = [v5 maxMAT];
    v19 = _oneIsNil(maxMAT, maxMAT2);

    if ((v19 & 1) == 0)
    {
      maxMAT3 = [(DRSTailspinRequest *)self maxMAT];
      if (maxMAT3)
      {
        v23 = maxMAT3;
        maxMAT4 = [(DRSTailspinRequest *)self maxMAT];
        maxMAT5 = [v5 maxMAT];
        v20 = [maxMAT4 isEqualToNumber:maxMAT5];
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
LABEL_9:
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

+ (BOOL)enforceMinTraceBufferDuration
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = _minBufferDurationQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__DRSTailspinRequest_enforceMinTraceBufferDuration__block_invoke;
  block[3] = &unk_27899EDD0;
  block[4] = &v5;
  dispatch_sync(v2, block);

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)setEnforceMinTraceBufferDuration:(BOOL)duration
{
  v4 = +[DRSSystemProfile sharedInstance];
  isInternal = [v4 isInternal];

  if (isInternal)
  {
    v6 = _minBufferDurationQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DRSTailspinRequest_setEnforceMinTraceBufferDuration___block_invoke;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    durationCopy = duration;
    dispatch_sync(v6, block);
  }
}

+ (void)resetEnforceMinTraceBufferDuration
{
  v2 = _minBufferDurationQueue();
  dispatch_sync(v2, &__block_literal_global_832);
}

@end