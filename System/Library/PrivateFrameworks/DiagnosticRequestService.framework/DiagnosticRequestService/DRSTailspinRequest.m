@interface DRSTailspinRequest
+ (BOOL)_shouldScrub;
+ (BOOL)enforceMinTraceBufferDuration;
+ (void)resetEnforceMinTraceBufferDuration;
+ (void)setEnforceMinTraceBufferDuration:(BOOL)a3;
- (BOOL)_dumpTailspinToDirectory:(id)a3;
- (BOOL)_performPostClientLogWork:(id)a3 dampeningOutcome:(unint64_t)a4 isLogUploadEnabled:(BOOL)a5;
- (BOOL)isEqualToRequest:(id)a3;
- (DRSTailspinRequest)initWithXPCDict:(id)a3;
- (id)_initWithTailspinRequestMO_ON_MOC_QUEUE:(id)a3;
- (id)_tailspinOptions;
- (id)debugDescription;
- (id)logType;
- (void)_configureRequestMO:(id)a3;
@end

@implementation DRSTailspinRequest

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(DRSTailspinRequest *)self minMAT];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"-";
  }

  v7 = [(DRSTailspinRequest *)self maxMAT];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
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

  v14 = [(DRSTailspinRequest *)self includeOsSignpost];
  v15 = @"No OSSignpost";
  if (v14)
  {
    v15 = @"OSSignpost";
  }

  v16 = [v11 stringWithFormat:@"%@ %@ %@ %@", v12, v13, v15, v10];

  return v16;
}

- (void)_configureRequestMO:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DRSTailspinRequest;
  [(DRSRequest *)&v8 _configureRequestMO:v4];
  v5 = v4;
  [v5 setIncludeOsLog:{-[DRSTailspinRequest includeOsLog](self, "includeOsLog")}];
  [v5 setIncludeOsSignpost:{-[DRSTailspinRequest includeOsSignpost](self, "includeOsSignpost")}];
  v6 = [(DRSTailspinRequest *)self minMAT];
  [v5 setMinMAT:v6];

  v7 = [(DRSTailspinRequest *)self maxMAT];
  [v5 setMaxMAT:v7];
}

- (DRSTailspinRequest)initWithXPCDict:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DRSTailspinRequest;
  v5 = [(DRSRequest *)&v13 initWithXPCDict:v4];
  if (v5)
  {
    v5->_includeOsSignpost = xpc_dictionary_get_BOOL(v4, "IncludeOSSignpost");
    v5->_includeOsLog = xpc_dictionary_get_BOOL(v4, "IncludeOSLog");
    v6 = xpc_dictionary_get_value(v4, "MinMAT");

    if (v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v4, "MinMAT")}];
      minMAT = v5->_minMAT;
      v5->_minMAT = v7;
    }

    v9 = xpc_dictionary_get_value(v4, "MaxMAT");

    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v4, "MaxMAT")}];
      maxMAT = v5->_maxMAT;
      v5->_maxMAT = v10;
    }

    v5->_scrubbed = [objc_opt_class() _shouldScrub];
  }

  return v5;
}

- (id)_initWithTailspinRequestMO_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DRSTailspinRequest;
  v5 = [(DRSRequest *)&v11 _initWithRequestMO_ON_MOC_QUEUE:v4];
  if (v5)
  {
    v5[145] = [v4 includeOsLog];
    v5[144] = [v4 includeOsSignpost];
    v6 = [v4 minMAT];
    v7 = *(v5 + 19);
    *(v5 + 19) = v6;

    v8 = [v4 maxMAT];
    v9 = *(v5 + 20);
    *(v5 + 20) = v8;

    v5[146] = [v4 scrubbed];
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
  v4 = [(DRSTailspinRequest *)self minMAT];

  if (v4)
  {
    v5 = [(DRSTailspinRequest *)self minMAT];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277D82CF0]];
  }

  v6 = [(DRSTailspinRequest *)self maxMAT];

  if (v6)
  {
    v7 = [(DRSTailspinRequest *)self maxMAT];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277D82CD8]];
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
  v9 = [(DRSRequest *)self teamID];
  v10 = [(DRSRequest *)self issueCategory];
  v11 = [(DRSRequest *)self issueDescription];
  v12 = [v8 stringWithFormat:@"%@/%@: %@", v9, v10, v11];
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

- (BOOL)_dumpTailspinToDirectory:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(DRSRequest *)self requestID];
  v8 = [v7 UUIDString];
  v9 = [v6 initWithFormat:@"dpTailspin_%@.tailspin", v8];

  v10 = [v5 stringByAppendingPathComponent:v9];

  v11 = open([v10 UTF8String], 514, 438);
  if (v11 == -1)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = __error();
    v21 = [v19 initWithFormat:@"Could not open file handle for new tailspin due to error: %s", strerror(*v20)];
    v44 = 0;
    [(DRSRequest *)self updateToState:4352 errorDescription:v21 errorOut:&v44];
    v13 = v44;

    v15 = DPLogHandle_TailspinError();
    if (!os_signpost_enabled(v15))
    {
LABEL_26:
      v37 = 0;
      goto LABEL_27;
    }

    v22 = [(DRSRequest *)self errorDescription];
    *buf = 138543362;
    v47 = v22;
    v23 = "TailspinCreationFailure";
    v24 = "%{public}@";
    v25 = v15;
    goto LABEL_16;
  }

  v12 = v11;
  v13 = [(DRSTailspinRequest *)self _tailspinOptions];
  v14 = tailspin_dump_output_with_options_sync();
  close(v12);
  if ((v14 & 1) == 0)
  {
    [(DRSRequest *)self updateToState:4352 errorDescription:@"Dumping tailspin failed" errorOut:0];
    v26 = DPLogHandle_TailspinError();
    if (os_signpost_enabled(v26))
    {
      v27 = [(DRSRequest *)self errorDescription];
      *buf = 138543362;
      v47 = v27;
      _os_signpost_emit_with_name_impl(&dword_232906000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinCreationFailure", "%{public}@", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v15 fileExistsAtPath:v10])
    {
      v43 = 0;
      v28 = [v15 removeItemAtPath:v10 error:&v43];
      v22 = v43;
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
        v34 = [v22 localizedDescription];
        v35 = v34;
        v36 = @"Unknown";
        if (v34)
        {
          v36 = v34;
        }

        *buf = 138543618;
        v47 = v10;
        v48 = 2114;
        v49 = v36;
        _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedTailspinCleanupFailed", "Failed to remove '%{public}@' due to error: %{public}@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    v22 = DPLogHandle_TailspinError();
    if (!os_signpost_enabled(v22))
    {
LABEL_25:

      goto LABEL_26;
    }

    *buf = 138543362;
    v47 = v10;
    v23 = "FailedTailspinCleanupNotNecessary";
    v24 = "Nothing to remove at '%{public}@";
    v25 = v22;
LABEL_16:
    _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v23, v24, buf, 0xCu);
    goto LABEL_25;
  }

  v15 = [[DRSLog alloc] _initWithLogPath:v10 transferOwnership:1];
  if (!v15)
  {
    v31 = DPLogHandle_TailspinError();
    if (os_signpost_enabled(v31))
    {
      v32 = [0 path];
      v33 = [(DRSRequest *)self requestID];
      *buf = 138543618;
      v47 = v32;
      v48 = 2114;
      v49 = v33;
      _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinSizeError", "Could not lookup size of %{public, name=path}@ for Request ID: %{public}@", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v16 = [(DRSRequest *)self logs];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [(DRSRequest *)self logs];
    [v18 addObject:v15];
  }

  else
  {
    v45 = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [(DRSRequest *)self setLogs:v18];
  }

  v40 = DPLogHandle_Tailspin();
  if (os_signpost_enabled(v40))
  {
    v41 = [(DRSRequest *)self logPath];
    v42 = [(DRSRequest *)self requestID];
    *buf = 138543618;
    v47 = v41;
    v48 = 2114;
    v49 = v42;
    _os_signpost_emit_with_name_impl(&dword_232906000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TailspinSaved", "Tailspin saved to %{public, name=path}@ for Request ID: %{public}@", buf, 0x16u);
  }

  v37 = [(DRSRequest *)self updateToState:1 errorDescription:0 errorOut:0];
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)logType
{
  v2 = [(DRSRequest *)self logs];
  v3 = [v2 count];

  v4 = kDRLogType_Tailspin;
  if (v3 >= 2)
  {
    v4 = kDRLogType_MultipleLogs;
  }

  v5 = *v4;

  return v5;
}

- (BOOL)_performPostClientLogWork:(id)a3 dampeningOutcome:(unint64_t)a4 isLogUploadEnabled:(BOOL)a5
{
  if (a4)
  {
    v6 = DRSRequestStateForDampeningOutcome(a4);

    return [(DRSRequest *)self updateToState:v6 errorDescription:0 errorOut:0];
  }

  else
  {

    return [(DRSTailspinRequest *)self _dumpTailspinToDirectory:a3];
  }
}

- (BOOL)isEqualToRequest:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = DRSTailspinRequest;
  if ([(DRSRequest *)&v26 isEqualToRequest:v4])
  {
    v5 = v4;
    v6 = [(DRSTailspinRequest *)self includeOsSignpost];
    if (v6 != [v5 includeOsSignpost])
    {
      goto LABEL_9;
    }

    v7 = [(DRSTailspinRequest *)self includeOsLog];
    if (v7 != [v5 includeOsLog])
    {
      goto LABEL_9;
    }

    v8 = [(DRSTailspinRequest *)self scrubbed];
    if (v8 != [v5 scrubbed])
    {
      goto LABEL_9;
    }

    v9 = [(DRSTailspinRequest *)self minMAT];
    v10 = [v5 minMAT];
    IsNil = _oneIsNil(v9, v10);

    if (IsNil)
    {
      goto LABEL_9;
    }

    v12 = [(DRSTailspinRequest *)self minMAT];
    if (v12)
    {
      v13 = v12;
      v14 = [(DRSTailspinRequest *)self minMAT];
      v15 = [v5 minMAT];
      v16 = [v14 isEqualToNumber:v15];

      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v17 = [(DRSTailspinRequest *)self maxMAT];
    v18 = [v5 maxMAT];
    v19 = _oneIsNil(v17, v18);

    if ((v19 & 1) == 0)
    {
      v22 = [(DRSTailspinRequest *)self maxMAT];
      if (v22)
      {
        v23 = v22;
        v24 = [(DRSTailspinRequest *)self maxMAT];
        v25 = [v5 maxMAT];
        v20 = [v24 isEqualToNumber:v25];
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

+ (void)setEnforceMinTraceBufferDuration:(BOOL)a3
{
  v4 = +[DRSSystemProfile sharedInstance];
  v5 = [v4 isInternal];

  if (v5)
  {
    v6 = _minBufferDurationQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__DRSTailspinRequest_setEnforceMinTraceBufferDuration___block_invoke;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v8 = a3;
    dispatch_sync(v6, block);
  }
}

+ (void)resetEnforceMinTraceBufferDuration
{
  v2 = _minBufferDurationQueue();
  dispatch_sync(v2, &__block_literal_global_832);
}

@end