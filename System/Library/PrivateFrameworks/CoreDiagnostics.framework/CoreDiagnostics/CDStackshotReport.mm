@interface CDStackshotReport
- (id)appleCareDetails;
- (id)exceptionCodesDescription;
- (id)getStackshotData;
- (id)getVMStatistics;
- (id)initForPid:(int)pid process:(id)process withReason:(id)reason exceptionCode:(int64_t *)code exceptionCodeCount:(unsigned int)count stackshotFlags:(unsigned int)flags;
- (id)reportNamePrefix;
- (void)acquireStackshot;
- (void)addCustomField:(const char *)field value:(id)value into:(id)into;
- (void)dealloc;
- (void)decodeKCDataWithBlock:(id)block withTuning:(id)tuning usingCatalog:(id)catalog;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)queryThermalData;
- (void)useStackshotBuffer:(const void *)buffer size:(unsigned int)size frontmostPids:(id)pids atTime:(double)time machTime:(unint64_t)machTime sequence:(unsigned int)sequence isSnapshotDead:(BOOL)dead;
@end

@implementation CDStackshotReport

- (id)initForPid:(int)pid process:(id)process withReason:(id)reason exceptionCode:(int64_t *)code exceptionCodeCount:(unsigned int)count stackshotFlags:(unsigned int)flags
{
  processCopy = process;
  reasonCopy = reason;
  v27.receiver = self;
  v27.super_class = CDStackshotReport;
  v17 = [(OSAReport *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->_pid = pid;
    objc_storeStrong(&v17->_appName, process);
    [(CDStackshotReport *)v18 setReason:reasonCopy];
    v19 = objc_opt_new();
    frontmostPids = v18->_frontmostPids;
    v18->_frontmostPids = v19;

    v18->_ss_sequence = -1;
    v18->_exceptionCodeCount = count;
    v21 = malloc_type_calloc(8uLL, count, 0xDA47F5F1uLL);
    v18->_exceptionCodes = v21;
    memcpy(v21, code, 8 * v18->_exceptionCodeCount);
    if ((flags & 0x80000000) != 0)
    {
      [*(&v18->super.super.isa + *MEMORY[0x1E69B7C28]) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B7C68]];
    }

    v18->_flags = flags & 0x7FFFFFFF;
    v18->_jetsamLevel = -1;
    v22 = objc_opt_new();
    extras = v18->_extras;
    v18->_extras = v22;

    v18->_capture_absoluteTime = mach_absolute_time();
    *(&v18->super.super.isa + *MEMORY[0x1E69B7C18]) = CFAbsoluteTimeGetCurrent();
    mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
    appleInternal = [mEMORY[0x1E69B7C10] appleInternal];

    if (appleInternal)
    {
      v18->_includeSyslog = 1;
    }

    if (initForPid_process_withReason_exceptionCode_exceptionCodeCount_stackshotFlags__onceToken != -1)
    {
      [CDStackshotReport initForPid:process:withReason:exceptionCode:exceptionCodeCount:stackshotFlags:];
    }
  }

  return v18;
}

void __99__CDStackshotReport_initForPid_process_withReason_exceptionCode_exceptionCodeCount_stackshotFlags___block_invoke()
{
  v0 = [MEMORY[0x1E69B7C10] sharedInstance];
  v1 = [v0 getTaskingKey:@"stackshot_tuning"];
  v2 = tasked_tuning;
  tasked_tuning = v1;

  if (tasked_tuning)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = tasked_tuning;
      tasked_tuning = 0;
    }
  }
}

- (void)dealloc
{
  if (self->_stackshot_config)
  {
    stackshot_config_dealloc();
  }

  free(self->_exceptionCodes);
  v3.receiver = self;
  v3.super_class = CDStackshotReport;
  [(CDStackshotReport *)&v3 dealloc];
}

- (id)appleCareDetails
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (self->_pid)
  {
    v3 = [objc_alloc(MEMORY[0x1E69D4F38]) initWithPid:self->_pid];
    v4 = v3;
    if (v3)
    {
      userAppName = [v3 userAppName];
      v6 = CFURLCreateWithFileSystemPath(0, userAppName, kCFURLPOSIXPathStyle, 1u);
      if (v6)
      {
        v7 = v6;
        v8 = _CFBundleCopyBundleURLForExecutableURL();
        if (v8)
        {
          v9 = v8;
          v10 = CFBundleCreate(0, v8);
          if (v10)
          {
            v11 = v10;
            v12 = CFBundleGetIdentifier(v10);
            CFRelease(v11);
          }

          else
          {
            v12 = 0;
          }

          CFRelease(v9);
        }

        else
        {
          v12 = 0;
        }

        CFRelease(v7);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  appName = self->_appName;
  if (appName)
  {
    v20[0] = &unk_1F5514450;
    v20[1] = appName;
    v14 = &stru_1F550D880;
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = &stru_1F550D880;
    }

    v20[2] = v15;
    reason = self->_reason;
    if (reason)
    {
      v14 = [(NSString *)reason stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    }

    v20[3] = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    if (reason)
    {
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)reportNamePrefix
{
  appName = self->_appName;
  if (appName)
  {
    appName = [MEMORY[0x1E696AEC0] stringWithFormat:@"stacks+%@", appName];
  }

  else
  {
    appName = @"stacks";
  }

  if (self->_ss_sequence == -1)
  {
    v5 = &stru_1F550D880;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%u", self->_ss_sequence];
  }

  v6 = [(__CFString *)appName stringByAppendingString:v5];

  return v6;
}

- (void)queryThermalData
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&queryThermalData_queried > 30.0)
  {
    queryThermalData_queried = *&Current;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__CDStackshotReport_queryThermalData__block_invoke;
    v4[3] = &unk_1E8585348;
    v4[4] = self;
    [MEMORY[0x1E69B7C08] executeWithTimeout:2000 Code:v4];
  }
}

uint64_t __37__CDStackshotReport_queryThermalData__block_invoke(uint64_t a1)
{
  result = OSThermalNotificationCurrentLevel();
  *(*(a1 + 32) + 120) = result;
  return result;
}

- (void)useStackshotBuffer:(const void *)buffer size:(unsigned int)size frontmostPids:(id)pids atTime:(double)time machTime:(unint64_t)machTime sequence:(unsigned int)sequence isSnapshotDead:(BOOL)dead
{
  pidsCopy = pids;
  if (self->_stackshot_config)
  {
    stackshot_config_dealloc();
    self->_stackshot_config = 0;
  }

  self->_ss_trace_buffer = buffer;
  self->_ss_trace_length = size;
  self->_ss_sequence = sequence;
  if (!self->_pid)
  {
    self->_pid = -1;
  }

  [(NSMutableArray *)self->_frontmostPids removeAllObjects];
  [(NSMutableArray *)self->_frontmostPids addObjectsFromArray:pidsCopy];
  *(&self->super.super.isa + *MEMORY[0x1E69B7C18]) = time;
  self->_capture_absoluteTime = machTime;
  self->_dead_snapshot = dead;
}

- (void)acquireStackshot
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69B7C30];
  [*(&self->super.super.isa + v3) removeAllObjects];
  if (self->_stackshot_config)
  {
    stackshot_config_dealloc();
    self->_stackshot_config = 0;
  }

  self->_ss_trace_buffer = 0;
  self->_ss_trace_length = 0;
  self->_capture_absoluteTime = mach_absolute_time();
  *(&self->super.super.isa + *MEMORY[0x1E69B7C18]) = CFAbsoluteTimeGetCurrent();
  v4 = stackshot_config_create();
  if (v4)
  {
    v5 = v4;
    flags = self->_flags;
    self->_flags = flags | 0x10000;
    if ((flags & 0xFFFEFFFF) == 0)
    {
      self->_flags = 73743;
      v7 = [tasked_tuning objectForKeyedSubscript:@"uuid_faulting"];
      v8 = v7;
      if (!v7 || [v7 BOOLValue])
      {
        self->_flags |= 0x200000u;
      }

      v9 = [tasked_tuning objectForKeyedSubscript:@"waitinfos"];
      v10 = v9;
      if (!v9 || [v9 BOOLValue])
      {
        self->_flags |= 0x1000000u;
      }

      v11 = [tasked_tuning objectForKeyedSubscript:@"shared_cache_layout"];
      v12 = v11;
      if (!v11 || [v11 BOOLValue])
      {
        self->_flags |= 0x80000u;
      }

      v13 = self->_flags;
    }

    if (stackshot_config_set_flags())
    {
      v14 = *(&self->super.super.isa + v3);
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set flags for stackshot config"];
      [v14 addObject:v15];

LABEL_17:
      stackshot_config_dealloc();
      goto LABEL_19;
    }

    v31 = stackshot_capture_with_config();
    if (v31)
    {
      v32 = v31;
      v33 = *(&self->super.super.isa + v3);
      v34 = MEMORY[0x1E696AEC0];
      v35 = geteuid();
      v36 = [v34 stringWithFormat:@"Stackshot syscall failed (from euid %d) with error %d: %s", v35, v32, strerror(v32)];
      [v33 addObject:v36];

      if (v32 == 2 && (self->_flags & 0x8000) != 0)
      {
        [*(&self->super.super.isa + v3) addObject:@"Stackshot key-combo received while a prior stackshot was still processing."];
      }

      goto LABEL_17;
    }

    self->_stackshot_config = v5;
    self->_ss_trace_buffer = stackshot_config_get_stackshot_buffer();
    stackshot_config = self->_stackshot_config;
    self->_ss_trace_length = stackshot_config_get_stackshot_size();
    if ((self->_flags & 0x10000) == 0)
    {
      self->_jetsamLevel = memorystatus_control();
    }
  }

  else
  {
    v16 = *(&self->super.super.isa + v3);
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate memory for stackshot config"];
    [v16 addObject:v17];
  }

LABEL_19:
  [(NSMutableArray *)self->_frontmostPids removeAllObjects];
  v18 = memorystatus_control();
  if (v18 < 1)
  {
    v30 = *(&self->super.super.isa + v3);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"No jetsam status list available (size query returned %d)", (2 * v18)];
    v37 = LABEL_44:;
    [v30 addObject:v37];

    goto LABEL_47;
  }

  v19 = malloc_type_malloc((2 * v18), 0xC6CDE087uLL);
  if (!v19)
  {
    v30 = *(&self->super.super.isa + v3);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to allocate memory for jetsam status list", v42];
    goto LABEL_44;
  }

  v20 = v19;
  v21 = memorystatus_control();
  if (v21 >= 25)
  {
    v22 = v21 / 0x18uLL;
    v23 = v20 + 4;
    while (1)
    {
      v24 = *(v23 + 4);
      v25 = *(v23 - 1);
      if (!proc_name(*(v23 - 1), &buffer, 0x20u) || (buffer == 0x6F42676E69727053 ? (v26 = v44 == 6582881) : (v26 = 0), !v26))
      {
        if ((v24 & 0x100) != 0)
        {
          if (*v23 != 100 && (v24 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v24 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      frontmostPids = self->_frontmostPids;
      v29 = [MEMORY[0x1E696AD98] numberWithInt:v25];
      [(NSMutableArray *)frontmostPids addObject:v29];

LABEL_36:
      v23 += 24;
      if (!--v22)
      {
        goto LABEL_46;
      }
    }
  }

  v38 = *(&self->super.super.isa + v3);
  v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get jetsam status list (query returned %d)", v21];
  [v38 addObject:v39];

LABEL_46:
  free(v20);
LABEL_47:
  [(CDStackshotReport *)self queryThermalData];
  v40 = *MEMORY[0x1E69E9840];
}

- (id)getStackshotData
{
  if (self->_ss_trace_buffer && self->_ss_trace_length)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v83[10] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v82[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v83[0] = incidentID;
  v82[1] = @"crashReporterKey";
  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  crashReporterKey = [mEMORY[0x1E69B7C10] crashReporterKey];
  v83[1] = crashReporterKey;
  v82[2] = @"product";
  mEMORY[0x1E69B7C10]2 = [MEMORY[0x1E69B7C10] sharedInstance];
  modelCode = [mEMORY[0x1E69B7C10]2 modelCode];
  v83[2] = modelCode;
  v82[3] = @"build";
  mEMORY[0x1E69B7C10]3 = [MEMORY[0x1E69B7C10] sharedInstance];
  productNameVersionBuildString = [mEMORY[0x1E69B7C10]3 productNameVersionBuildString];
  v83[3] = productNameVersionBuildString;
  v82[4] = @"kernel";
  kernelVersionDescription = [objc_opt_class() kernelVersionDescription];
  v9 = kernelVersionDescription;
  v10 = tasked_tuning;
  if (!tasked_tuning)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v83[4] = kernelVersionDescription;
  v83[5] = v10;
  v82[5] = @"tuning";
  v82[6] = @"exception";
  exceptionCodesDescription = [(CDStackshotReport *)self exceptionCodesDescription];
  v12 = exceptionCodesDescription;
  reason = self->_reason;
  if (!reason)
  {
    reason = &stru_1F550D880;
  }

  v83[6] = exceptionCodesDescription;
  v83[7] = reason;
  v82[7] = @"reason";
  v82[8] = @"frontmostPids";
  v83[8] = self->_frontmostPids;
  v82[9] = @"codeSigningMonitor";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "codeSigningMonitor")}];
  v83[9] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:10];
  blockCopy[2](blockCopy, v15);

  v16 = MEMORY[0x1E69B7C00];
  problemType = [(CDStackshotReport *)self problemType];
  v18 = [v16 commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v18);

  if (self->_pid)
  {
    v80 = @"pid";
    v19 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v81 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    blockCopy[2](blockCopy, v20);
  }

  additionalPayload = self->_additionalPayload;
  if (additionalPayload)
  {
    v78 = @"additionalPayload";
    v79 = additionalPayload;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_thermalSensorValues)
  {
    v76 = @"thermalData";
    v74[0] = @"thermalLevel";
    v23 = [MEMORY[0x1E696AD98] numberWithInt:self->_thermalNotificationCurrentLevel];
    v74[1] = @"sensors";
    v75[0] = v23;
    v75[1] = self->_thermalSensorValues;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
    v77 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    blockCopy[2](blockCopy, v25);
  }

  if ([objc_opt_class() isInLDM])
  {
    blockCopy[2](blockCopy, &unk_1F5514598);
  }

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &unk_1F55145C0);
  }

  if (!+[_TtC15CoreDiagnostics11DeviceState isCustomerFused])
  {
    blockCopy[2](blockCopy, &unk_1F55145E8);
  }

  bootProgressRegister = [objc_opt_class() bootProgressRegister];
  v27 = bootProgressRegister;
  if (bootProgressRegister)
  {
    v72 = @"bootProgressRegister";
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", objc_msgSend(bootProgressRegister, "unsignedLongLongValue")];
    v73 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    blockCopy[2](blockCopy, v29);
  }

  v30 = +[_TtC15CoreDiagnostics22AppleIntelligenceState getAppleIntelligenceAvailability];
  if ([v30 count])
  {
    v70 = @"appleIntelligenceStatus";
    v71 = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    blockCopy[2](blockCopy, v31);
  }

  v32 = objc_alloc_init(MEMORY[0x1E69B7BF0]);
  if (*self->_exceptionCodes == 3131746989)
  {
    v33 = &unk_1F5514610;
  }

  else
  {
    v33 = tasked_tuning;
  }

  v34 = v33;
  [(CDStackshotReport *)self decodeKCDataWithBlock:blockCopy withTuning:v34 usingCatalog:v32];
  v68 = @"date";
  v35 = *(&self->super.super.isa + *MEMORY[0x1E69B7C18]);
  v36 = OSADateFormat();
  v69 = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  blockCopy[2](blockCopy, v37);

  v66 = @"absoluteTime";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_capture_absoluteTime];
  v67 = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  blockCopy[2](blockCopy, v39);

  v64 = @"binaryImages";
  reportUsedImages = [v32 reportUsedImages];
  v65 = reportUsedImages;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  blockCopy[2](blockCopy, v41);

  v42 = *MEMORY[0x1E69B7C30];
  [v32 appendNotesTo:*(&self->super.super.isa + v42)];

  if (self->_includeSyslog && includeSection(tasked_tuning, @"syslog"))
  {
    v43 = [(OSAReport *)self getSyslogForPids:0 andOptionalSenders:0 additionalPredicates:0];
    v44 = v43;
    if (v43)
    {
      v62[0] = @"syslog";
      reverseObjectEnumerator = [v43 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v62[1] = &unk_1F5514480;
      v63[0] = allObjects;
      v63[1] = &unk_1F5514468;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
      blockCopy[2](blockCopy, v46);
    }

    else
    {
      [*(&self->super.super.isa + v42) addObject:@"Syslog query timed out"];
    }
  }

  if ([*(&self->super.super.isa + v42) count])
  {
    v47 = *(&self->super.super.isa + v42);
    v60 = @"notes";
    v61 = v47;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    blockCopy[2](blockCopy, v48);
  }

  if ([(NSMutableDictionary *)self->_extras count])
  {
    extras = self->_extras;
    v58 = @"additionalDetails";
    v59 = extras;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    blockCopy[2](blockCopy, v50);
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (id)exceptionCodesDescription
{
  if (self->_exceptionCodeCount)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (self->_exceptionCodeCount)
    {
      v4 = 0;
      do
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%08x", self->_exceptionCodes[v4]];
        [array addObject:v5];

        ++v4;
      }

      while (v4 < self->_exceptionCodeCount);
    }

    v6 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = &stru_1F550D880;
  }

  return v6;
}

- (id)getVMStatistics
{
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:22];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *host_info64_out = 0u;
  v31 = 0u;
  host_info64_outCnt = 40;
  v3 = MEMORY[0x1DA7386D0]();
  if (host_statistics64(v3, 4, host_info64_out, &host_info64_outCnt))
  {
    [v2 setObject:@"host_statistics64 failed" forKeyedSubscript:@"error"];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[0]];
    [v2 setObject:v4 forKeyedSubscript:@"free_count"];

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[1]];
    [v2 setObject:v5 forKeyedSubscript:@"active_count"];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[2]];
    [v2 setObject:v6 forKeyedSubscript:@"inactive_count"];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:host_info64_out[3]];
    [v2 setObject:v7 forKeyedSubscript:@"wire_count"];

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v31];
    [v2 setObject:v8 forKeyedSubscript:@"zero_fill_count"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v31 + 1)];
    [v2 setObject:v9 forKeyedSubscript:@"reactivations"];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v32];
    [v2 setObject:v10 forKeyedSubscript:@"pageins"];

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v32 + 1)];
    [v2 setObject:v11 forKeyedSubscript:@"pageouts"];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v33];
    [v2 setObject:v12 forKeyedSubscript:@"faults"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v33 + 1)];
    [v2 setObject:v13 forKeyedSubscript:@"cow_faults"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v34];
    [v2 setObject:v14 forKeyedSubscript:@"lookups"];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v34 + 1)];
    [v2 setObject:v15 forKeyedSubscript:@"hits"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v35];
    [v2 setObject:v16 forKeyedSubscript:@"purges"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v35)];
    [v2 setObject:v17 forKeyedSubscript:@"purgeable_count"];

    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v35)];
    [v2 setObject:v18 forKeyedSubscript:@"speculative_count"];

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v36];
    [v2 setObject:v19 forKeyedSubscript:@"decompressions"];

    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v36 + 1)];
    [v2 setObject:v20 forKeyedSubscript:@"compressions"];

    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v37];
    [v2 setObject:v21 forKeyedSubscript:@"swapins"];

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v37 + 1)];
    [v2 setObject:v22 forKeyedSubscript:@"swapouts"];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v38];
    [v2 setObject:v23 forKeyedSubscript:@"compressor_page_count"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD1(v38)];
    [v2 setObject:v24 forKeyedSubscript:@"throttled_count"];

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DWORD2(v38)];
    [v2 setObject:v25 forKeyedSubscript:@"external_page_count"];

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v38)];
    [v2 setObject:v26 forKeyedSubscript:@"internal_page_count"];

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v39];
    [v2 setObject:v27 forKeyedSubscript:@"total_uncompressed_pages_in_compressor"];
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], v3);

  return v2;
}

uint64_t __55__CDStackshotReport_resampleUUIDsForTask_usingCatalog___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) isAddressInTargetedCache:a2];
  if ((result & 1) == 0)
  {
    v7 = *(a1 + 40);

    return [v7 addImage:a3 address:a2 size:0];
  }

  return result;
}

- (void)addCustomField:(const char *)field value:(id)value into:(id)into
{
  valueCopy = value;
  intoCopy = into;
  if (field && valueCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:field];
    if (v9)
    {
      if ([intoCopy count] && (objc_msgSend(intoCopy, "top"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        data = [v10 data];
        [data setObject:valueCopy forKeyedSubscript:v9];
      }

      else
      {
        [(NSMutableDictionary *)self->_extras setObject:valueCopy forKeyedSubscript:v9];
      }
    }
  }
}

- (void)decodeKCDataWithBlock:(id)block withTuning:(id)tuning usingCatalog:(id)catalog
{
  v572[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  tuningCopy = tuning;
  catalogCopy = catalog;
  ss_trace_buffer = self->_ss_trace_buffer;
  if (!ss_trace_buffer || (ss_trace_length = self->_ss_trace_length, !ss_trace_length))
  {
    v15 = *(&self->super.super.isa + *MEMORY[0x1E69B7C30]);
    v16 = @"missing stackshot buffer or size";
LABEL_10:
    [v15 addObject:v16];
    goto LABEL_11;
  }

  v13 = &ss_trace_buffer[ss_trace_length];
  v14 = ss_trace_buffer + 16;
  if (ss_trace_buffer + 16 > &ss_trace_buffer[ss_trace_length] || &v14[*(ss_trace_buffer + 1)] > v13 || *ss_trace_buffer != 1503811591)
  {
    v15 = *(&self->super.super.isa + *MEMORY[0x1E69B7C30]);
    v16 = @"non-parseable kc snapshot buffer";
    goto LABEL_10;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  if (self->_dead_snapshot)
  {
    v491 = 0;
  }

  else
  {
    v491 = excludeSection(tuningCopy, @"sampleTruncatedStacks") ^ 1;
  }

  v510 = blockCopy;
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  v509 = objc_opt_new();
  array6 = [MEMORY[0x1E695DF70] array];
  array7 = [MEMORY[0x1E695DF70] array];
  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  appleInternal = [mEMORY[0x1E69B7C10] appleInternal];

  v19 = *MEMORY[0x1E69E9A60];
  CSSymbolicatorGetFlagsForNListOnlyData();
  v20 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v493 = v21;
  v494 = v20;
  if (CSIsNull())
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
    }
  }

  v508 = objc_alloc_init(MEMORY[0x1E69B7BF8]);
  [v508 parseKCdata:{ss_trace_buffer, v13}];
  v511 = 0;
  v506 = 0;
  v507 = 0;
  v497 = 0;
  v501 = 0;
  v504 = 0;
  v499 = 0;
  v484 = 0;
  v485 = 0;
  v495 = 0;
  v496 = 0;
  v513 = 0;
  v516 = 0;
  v460 = 0;
  v492 = 0;
  v24 = *MEMORY[0x1E695E468];
  v483 = 1;
  v25 = 0x1E695D000uLL;
  v515 = tuningCopy;
  v519 = catalogCopy;
  selfCopy = self;
  while (1)
  {
    v26 = *(ss_trace_buffer + 1);
    if (&v14[v26] > v13)
    {
LABEL_669:
      [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
    }

    v27 = *ss_trace_buffer;
    if (*ss_trace_buffer == -242132755)
    {
      break;
    }

    if ((v27 & 0xFFFFFFF0) == 0x20)
    {
      v28 = 17;
    }

    else
    {
      v28 = v27;
    }

    if (v28 > 2113)
    {
      switch(v28)
      {
        case 2305:
          if (!includeSection(tuningCopy, @"ioStats"))
          {
            goto LABEL_623;
          }

          v29 = [array3 top];
          if (!v29)
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v30 = v29;
          data = [v29 data];

          if (data)
          {
            v520 = v13;
            array8 = [MEMORY[0x1E695DF70] array];
            v33 = (ss_trace_buffer + 80);
            v34 = 4;
            do
            {
              v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v33 - 4)];
              v549[0] = v35;
              v36 = *v33++;
              v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v36];
              v549[1] = v37;
              v38 = [*(v25 + 3784) arrayWithObjects:v549 count:2];
              [array8 addObject:v38];

              v25 = 0x1E695D000uLL;
              --v34;
            }

            while (v34);
            v547[0] = @"reads";
            v486 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
            v546[0] = v486;
            v479 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 3)];
            v546[1] = v479;
            v476 = [MEMORY[0x1E695DEC8] arrayWithObjects:v546 count:2];
            v548[0] = v476;
            v547[1] = @"writes";
            v473 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 4)];
            v545[0] = v473;
            v471 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 5)];
            v545[1] = v471;
            v469 = [MEMORY[0x1E695DEC8] arrayWithObjects:v545 count:2];
            v548[1] = v469;
            v547[2] = @"paging";
            v467 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 14)];
            v544[0] = v467;
            v465 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 15)];
            v544[1] = v465;
            v463 = [MEMORY[0x1E695DEC8] arrayWithObjects:v544 count:2];
            v548[2] = v463;
            v547[3] = @"nonpaging";
            v461 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 16)];
            v543[0] = v461;
            v456 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 17)];
            v543[1] = v456;
            v455 = [MEMORY[0x1E695DEC8] arrayWithObjects:v543 count:2];
            v548[3] = v455;
            v547[4] = @"data";
            v454 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 18)];
            v542[0] = v454;
            v453 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 19)];
            v542[1] = v453;
            v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v542 count:2];
            v548[4] = v39;
            v547[5] = @"metadata";
            v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 20)];
            v541[0] = v40;
            v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 21)];
            v541[1] = v41;
            v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v541 count:2];
            v547[6] = @"priorities";
            v548[5] = v42;
            v548[6] = array8;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v548 forKeys:v547 count:7];
            data2 = [v30 data];
            [data2 setObject:v43 forKeyedSubscript:@"ioStats"];

            v25 = 0x1E695D000;
            tuningCopy = v515;
            catalogCopy = v519;
            v13 = v520;
          }

          goto LABEL_334;
        case 2306:
          v526 = v13;
          v571 = @"memoryStatus";
          v569[0] = @"memoryPressure";
          v140 = [MEMORY[0x1E696AD98] numberWithBool:self->_jetsamLevel > 0];
          v570[0] = v140;
          v569[1] = @"memoryPages";
          v567[0] = @"free";
          v481 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 5)];
          v568[0] = v481;
          v567[1] = @"active";
          v477 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 6)];
          v568[1] = v477;
          v567[2] = @"inactive";
          v474 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 7)];
          v568[2] = v474;
          v567[3] = @"purgeable";
          v472 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 8)];
          v568[3] = v472;
          v567[4] = @"wired";
          v470 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 9)];
          v568[4] = v470;
          v567[5] = @"speculative";
          v468 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 10)];
          v568[5] = v468;
          v567[6] = @"throttled";
          v466 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 11)];
          v568[6] = v466;
          v567[7] = @"fileBacked";
          v464 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 12)];
          v568[7] = v464;
          v462 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v568 forKeys:v567 count:8];
          v570[1] = v462;
          v569[2] = @"compressions";
          v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 13)];
          v570[2] = v141;
          v569[3] = @"decompressions";
          v142 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 14)];
          v570[3] = v142;
          v569[4] = @"compressorSize";
          v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 15)];
          v570[4] = v143;
          v569[5] = @"busyBufferCount";
          v144 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 16)];
          v570[5] = v144;
          v569[6] = @"memoryPressureDetails";
          v145 = ss_trace_buffer[76];
          v489 = v140;
          if (ss_trace_buffer[76])
          {
            v565[0] = @"pagesWanted";
            v459 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 17)];
            v566[0] = v459;
            v565[1] = @"pagesReclaimed";
            v458 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 18)];
            v566[1] = v458;
            v457 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v566 forKeys:v565 count:2];
            v146 = v457;
          }

          else
          {
            v146 = MEMORY[0x1E695E0F8];
          }

          v570[6] = v146;
          v569[7] = @"pageSize";
          v218 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v499];
          v570[7] = v218;
          v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v570 forKeys:v569 count:8];
          v572[0] = v219;
          v220 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v572 forKeys:&v571 count:1];
          v510[2](v510, v220);

          if (v145)
          {
          }

          tuningCopy = v515;
          catalogCopy = v519;
          v13 = v526;
          self = selfCopy;
          goto LABEL_468;
        case 2307:
        case 2308:
        case 2311:
        case 2314:
        case 2315:
        case 2316:
        case 2317:
        case 2322:
        case 2323:
        case 2324:
        case 2325:
        case 2326:
        case 2327:
        case 2328:
        case 2334:
        case 2335:
        case 2336:
        case 2339:
        case 2340:
        case 2341:
        case 2342:
        case 2343:
        case 2350:
        case 2351:
        case 2353:
        case 2354:
        case 2355:
        case 2356:
        case 2357:
        case 2358:
        case 2359:
        case 2361:
        case 2362:
        case 2363:
        case 2364:
        case 2365:
        case 2366:
        case 2367:
        case 2368:
        case 2369:
        case 2370:
        case 2375:
          goto LABEL_61;
        case 2309:
          v524 = v13;
          v86 = [array3 top];
          if (!v86 || (v87 = v86, [v86 type] != 2307))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v88 = *(ss_trace_buffer + 25);
          if (v88 == self->_pid)
          {
            goto LABEL_345;
          }

          if (v88)
          {
            goto LABEL_107;
          }

          if (!excludeSection(tuningCopy, @"kernel"))
          {
            goto LABEL_345;
          }

          v88 = *(ss_trace_buffer + 25);
LABEL_107:
          frontmostPids = self->_frontmostPids;
          v90 = [MEMORY[0x1E696AD98] numberWithInt:v88];
          if ([(NSMutableArray *)frontmostPids containsObject:v90])
          {
          }

          else
          {
            if (!*(ss_trace_buffer + 25))
            {

LABEL_518:
              v293 = [array3 top];
              [v293 omit];
              v13 = v524;
              goto LABEL_482;
            }

            v267 = excludeSection(tuningCopy, @"allPids");

            if (v267)
            {
              goto LABEL_518;
            }
          }

LABEL_345:
          [v87 setPid:*(ss_trace_buffer + 25)];
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          data3 = [v87 data];
          [data3 setObject:dictionary forKeyedSubscript:@"threadById"];

          v270 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 25)];
          data4 = [v87 data];
          [data4 setObject:v270 forKeyedSubscript:@"pid"];

          v272 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 104];
          data5 = [v87 data];
          [data5 setObject:v272 forKeyedSubscript:@"procname"];

          v274 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 19)];
          data6 = [v87 data];
          [data6 setObject:v274 forKeyedSubscript:@"pageFaults"];

          v276 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 20)];
          data7 = [v87 data];
          [data7 setObject:v276 forKeyedSubscript:@"pageIns"];

          v278 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 21)];
          data8 = [v87 data];
          [data8 setObject:v278 forKeyedSubscript:@"copyOnWriteFaults"];

          v280 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 22)];
          data9 = [v87 data];
          [data9 setObject:v280 forKeyedSubscript:@"timesThrottled"];

          v282 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 23)];
          data10 = [v87 data];
          [data10 setObject:v282 forKeyedSubscript:@"timesDidThrottle"];

          v284 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llX", *(ss_trace_buffer + 3)];
          data11 = [v87 data];
          [data11 setObject:v284 forKeyedSubscript:@"rawFlags"];

          v286 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 34)];
          data12 = [v87 data];
          [data12 setObject:v286 forKeyedSubscript:@"userID"];

          v288 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 35)];
          data13 = [v87 data];
          [data13 setObject:v288 forKeyedSubscript:@"groupID"];

          if (*(ss_trace_buffer + 18))
          {
            v290 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
            data14 = [v87 data];
            [data14 setObject:v290 forKeyedSubscript:@"suspendCount"];
          }

          array9 = [MEMORY[0x1E695DF70] array];
          v293 = array9;
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 4) != 0)
          {
            [array9 addObject:@"rsrcFlagged"];
            v294 = *(ss_trace_buffer + 3);
            if ((v294 & 8) == 0)
            {
LABEL_349:
              if ((v294 & 0x10) == 0)
              {
                goto LABEL_350;
              }

              goto LABEL_365;
            }
          }

          else if ((v294 & 8) == 0)
          {
            goto LABEL_349;
          }

          [v293 addObject:@"terminatedSnapshot"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x10) == 0)
          {
LABEL_350:
            if ((v294 & 0x20) == 0)
            {
              goto LABEL_351;
            }

            goto LABEL_366;
          }

LABEL_365:
          [v293 addObject:@"suspended"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x20) == 0)
          {
LABEL_351:
            if ((v294 & 0x40) == 0)
            {
              goto LABEL_352;
            }

            goto LABEL_367;
          }

LABEL_366:
          [v293 addObject:@"frozen"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x40) == 0)
          {
LABEL_352:
            if ((v294 & 0x80) == 0)
            {
              goto LABEL_353;
            }

            goto LABEL_368;
          }

LABEL_367:
          [v293 addObject:@"darwinBG"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x80) == 0)
          {
LABEL_353:
            if ((v294 & 0x100) == 0)
            {
              goto LABEL_354;
            }

            goto LABEL_369;
          }

LABEL_368:
          [v293 addObject:@"extDarwinBG"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x100) == 0)
          {
LABEL_354:
            if ((v294 & 0x200) == 0)
            {
              goto LABEL_355;
            }

            goto LABEL_370;
          }

LABEL_369:
          [v293 addObject:@"visVisible"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x200) == 0)
          {
LABEL_355:
            if ((v294 & 0x400) == 0)
            {
              goto LABEL_356;
            }

            goto LABEL_371;
          }

LABEL_370:
          [v293 addObject:@"visNonvisible"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x400) == 0)
          {
LABEL_356:
            if ((v294 & 0x800) == 0)
            {
              goto LABEL_357;
            }

            goto LABEL_372;
          }

LABEL_371:
          [v293 addObject:@"foreground"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x800) == 0)
          {
LABEL_357:
            if ((v294 & 0x1000) == 0)
            {
              goto LABEL_358;
            }

            goto LABEL_373;
          }

LABEL_372:
          [v293 addObject:@"boosted"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x1000) == 0)
          {
LABEL_358:
            if ((v294 & 0x4000) == 0)
            {
              goto LABEL_359;
            }

            goto LABEL_374;
          }

LABEL_373:
          [v293 addObject:@"suppressed"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x4000) == 0)
          {
LABEL_359:
            if ((v294 & 0x8000) == 0)
            {
              goto LABEL_360;
            }

            goto LABEL_375;
          }

LABEL_374:
          [v293 addObject:@"isImpDonor"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x8000) == 0)
          {
LABEL_360:
            if ((v294 & 0x10000) == 0)
            {
              goto LABEL_361;
            }

            goto LABEL_376;
          }

LABEL_375:
          [v293 addObject:@"isLiveImpDonor"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x10000) == 0)
          {
LABEL_361:
            if ((v294 & 0x80000) == 0)
            {
              goto LABEL_381;
            }

            goto LABEL_377;
          }

LABEL_376:
          [v293 addObject:@"dirty"];
          v294 = *(ss_trace_buffer + 3);
          if ((v294 & 0x80000) == 0)
          {
            goto LABEL_381;
          }

LABEL_377:
          if ((v294 & 0x20000) != 0)
          {
            [v293 addObject:@"exceededWQConstrainedLimit"];
            v294 = *(ss_trace_buffer + 3);
          }

          if ((v294 & 0x40000) != 0)
          {
            [v293 addObject:@"exceededWQTotalLimit"];
            v294 = *(ss_trace_buffer + 3);
          }

LABEL_381:
          if ((v294 & 0x700000) != 0)
          {
            0x700000 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uuidFaultFlags0x%08llX", v294 & 0x700000];
            [v293 addObject:0x700000];

            v294 = *(ss_trace_buffer + 3);
          }

          if ((v294 & 0x200000) != 0)
          {
            v296 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v87, "pid")}];
            [array5 addObject:v296];

            [v87 setInvalid_images:{objc_msgSend(v87, "invalid_images") + objc_msgSend(array2, "count")}];
            if ((excludeSection(v515, @"uuidResampling") & 1) == 0 && !self->_dead_snapshot)
            {
              v297 = -[CDStackshotReport resampleUUIDsForTask:usingCatalog:](self, "resampleUUIDsForTask:usingCatalog:", [v87 pid], catalogCopy);
              v298 = [v297 count];
              v299 = [v297 count];
              invalid_images = [v87 invalid_images];
              v301 = @"resampledAllImages";
              if (v299 != invalid_images)
              {
                v302 = [v297 count];
                if (v302 <= [v87 invalid_images])
                {
                  v301 = @"resampleIncomplete";
                }

                else
                {
                  v301 = @"resampledExtraImages";
                }
              }

              [v293 addObject:v301];
              if ([v297 count])
              {
                v303 = [v297 valueForKey:@"details"];
                data15 = [v87 data];
                [data15 setObject:v303 forKeyedSubscript:@"resampled_images"];

                self = selfCopy;
                [array addObjectsFromArray:v297];
              }

              v484 = (v484 + v298);
            }
          }

          else if ([array2 count])
          {
            [array addObjectsFromArray:array2];
            [array sortByAddressAndSetInferredSizes];
          }

          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x1000000) != 0)
          {
            [v293 addObject:@"TALEngaged"];
            v305 = *(ss_trace_buffer + 3);
            if ((v305 & 0x4000000) == 0)
            {
LABEL_397:
              if ((v305 & 0x8000000) == 0)
              {
                goto LABEL_398;
              }

              goto LABEL_419;
            }
          }

          else if ((v305 & 0x4000000) == 0)
          {
            goto LABEL_397;
          }

          [v293 addObject:@"isDirtyTracked"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x8000000) == 0)
          {
LABEL_398:
            if ((v305 & 0x10000000) == 0)
            {
              goto LABEL_399;
            }

            goto LABEL_420;
          }

LABEL_419:
          [v293 addObject:@"allowIdleExit"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x10000000) == 0)
          {
LABEL_399:
            if ((v305 & 0x20000000) == 0)
            {
              goto LABEL_400;
            }

            goto LABEL_421;
          }

LABEL_420:
          [v293 addObject:@"isTranslated"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x20000000) == 0)
          {
LABEL_400:
            if ((v305 & 0x40000000) == 0)
            {
              goto LABEL_401;
            }

            goto LABEL_422;
          }

LABEL_421:
          [v293 addObject:@"sharedRegionNone"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x40000000) == 0)
          {
LABEL_401:
            if ((v305 & 0x80000000) == 0)
            {
              goto LABEL_402;
            }

            goto LABEL_423;
          }

LABEL_422:
          [v293 addObject:@"sharedRegionSystem"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x80000000) == 0)
          {
LABEL_402:
            if ((v305 & 0x100000000) == 0)
            {
              goto LABEL_403;
            }

            goto LABEL_424;
          }

LABEL_423:
          [v293 addObject:@"sharedRegionOther"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x100000000) == 0)
          {
LABEL_403:
            if ((v305 & 0x200000000) == 0)
            {
              goto LABEL_404;
            }

            goto LABEL_425;
          }

LABEL_424:
          [v293 addObject:@"dyldCompactInfoNone"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x200000000) == 0)
          {
LABEL_404:
            if ((v305 & 0x400000000) == 0)
            {
              goto LABEL_405;
            }

            goto LABEL_426;
          }

LABEL_425:
          [v293 addObject:@"dyldCompactInfoTooBig"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x400000000) == 0)
          {
LABEL_405:
            if ((v305 & 0x800000000) == 0)
            {
              goto LABEL_406;
            }

            goto LABEL_427;
          }

LABEL_426:
          [v293 addObject:@"dyldCompactInfoFaultedIn"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x800000000) == 0)
          {
LABEL_406:
            if ((v305 & 0x1000000000) == 0)
            {
              goto LABEL_407;
            }

            goto LABEL_428;
          }

LABEL_427:
          [v293 addObject:@"dyldCompactInfoMissing"];
          v305 = *(ss_trace_buffer + 3);
          if ((v305 & 0x1000000000) == 0)
          {
LABEL_407:
            if ((v305 & 0x8000000000) == 0)
            {
              goto LABEL_409;
            }

LABEL_408:
            [v293 addObject:@"runawayMitigation"];
            goto LABEL_409;
          }

LABEL_428:
          [v293 addObject:@"dyldCompactInfoTriedFault"];
          if ((*(ss_trace_buffer + 3) & 0x8000000000) != 0)
          {
            goto LABEL_408;
          }

LABEL_409:
          if ([v293 count])
          {
            data16 = [v87 data];
            [data16 setObject:v293 forKeyedSubscript:@"flags"];
          }

          if (*(ss_trace_buffer + 7))
          {
            v307 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            data17 = [v87 data];
            [data17 setObject:v307 forKeyedSubscript:@"residentMemoryBytes"];
          }

          v309 = self->_frontmostPids;
          v310 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 25)];
          LODWORD(v309) = [(NSMutableArray *)v309 containsObject:v310];

          if (v309)
          {
            data18 = [v87 data];
            [data18 setObject:&unk_1F5514468 forKeyedSubscript:@"frontmost"];
          }

          v312 = *(ss_trace_buffer + 4);
          v506 = *(ss_trace_buffer + 5);
          problemType = [(CDStackshotReport *)self problemType];
          v507 = v312;
          if ([problemType isEqualToString:@"409"])
          {
          }

          else
          {
            problemType2 = [(CDStackshotReport *)self problemType];
            v315 = [problemType2 isEqualToString:@"509"];

            if (!v315)
            {
              goto LABEL_432;
            }
          }

          v316 = [objc_opt_class() reduceToTwoSigFigures:(*(&self->super.super.isa + *MEMORY[0x1E69B7C18]) - (*(ss_trace_buffer + 6) - v24))];
          data19 = [v87 data];
          [data19 setObject:v316 forKeyedSubscript:@"processUptime"];

LABEL_432:
          v318 = v513;
          if (v516)
          {
            v318 = v516;
          }

          v319 = v318;
          v320 = v319;
          if (v319)
          {
            [catalogCopy targetSharedCache:-[SharedCacheEntry original](v319 withSlide:"original") + 8 atBaseAddress:{-[SharedCacheEntry sharedCacheSlide](v319, "sharedCacheSlide"), -[SharedCacheEntry original](v319, "original")[32]}];
            if ([(SharedCacheEntry *)v320 layout])
            {
              v25 = 0x1E695D000;
              if ([(SharedCacheEntry *)v320 isDefaultSharedCache])
              {
                if ((v460 & 1) == 0)
                {
                  [catalogCopy setRootedCacheLibs:-[SharedCacheEntry layout](v320 count:{"layout"), -[SharedCacheEntry layoutImageCount](v320, "layoutImageCount")}];
                }

                v460 = 1;
              }

              else
              {
                [catalogCopy setRootedCacheLibs:-[SharedCacheEntry layout](v320 count:{"layout"), -[SharedCacheEntry layoutImageCount](v320, "layoutImageCount")}];
                v460 = 0;
              }

              v13 = v524;
            }

            else
            {
              v13 = v524;
              v25 = 0x1E695D000;
            }
          }

          else
          {
            v13 = v524;
            v25 = 0x1E695D000;
            if (v483)
            {
              [*(&self->super.super.isa + *MEMORY[0x1E69B7C30]) addObject:@"no shared cache available from the kernel snapshot -- this may impact symbolication"];
            }

            v483 = 0;
          }

LABEL_482:
          tuningCopy = v515;
          goto LABEL_623;
        case 2310:
          v525 = v13;
          v96 = [array3 top];
          if (!v96 || (v97 = v96, [v96 type] != 2308))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v98 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          data20 = [v97 data];
          [data20 setObject:v98 forKeyedSubscript:@"id"];

          v100 = *(ss_trace_buffer + 26);
          array10 = [MEMORY[0x1E695DF70] array];
          v102 = array10;
          if (v100)
          {
            [array10 addObject:@"TH_WAIT"];
            if ((v100 & 2) == 0)
            {
LABEL_116:
              if ((v100 & 4) == 0)
              {
                goto LABEL_117;
              }

              goto LABEL_232;
            }
          }

          else if ((v100 & 2) == 0)
          {
            goto LABEL_116;
          }

          [v102 addObject:@"TH_SUSP"];
          if ((v100 & 4) == 0)
          {
LABEL_117:
            if ((v100 & 8) == 0)
            {
              goto LABEL_118;
            }

            goto LABEL_233;
          }

LABEL_232:
          [v102 addObject:@"TH_RUN"];
          if ((v100 & 8) == 0)
          {
LABEL_118:
            if ((v100 & 0x10) == 0)
            {
              goto LABEL_119;
            }

            goto LABEL_234;
          }

LABEL_233:
          [v102 addObject:@"TH_UNINT"];
          if ((v100 & 0x10) == 0)
          {
LABEL_119:
            if ((v100 & 0x20) == 0)
            {
              goto LABEL_120;
            }

            goto LABEL_235;
          }

LABEL_234:
          [v102 addObject:@"TH_TERMINATE"];
          if ((v100 & 0x20) == 0)
          {
LABEL_120:
            if ((v100 & 0x80) == 0)
            {
              goto LABEL_122;
            }

LABEL_121:
            [v102 addObject:@"TH_IDLE"];
            goto LABEL_122;
          }

LABEL_235:
          [v102 addObject:@"TH_TERMINATE2"];
          if ((v100 & 0x80) != 0)
          {
            goto LABEL_121;
          }

LABEL_122:
          data21 = [v97 data];
          [data21 setObject:v102 forKeyedSubscript:@"state"];

          v104 = *(ss_trace_buffer + 3);
          if (v104)
          {
            v105 = [catalogCopy searchFrame:v104 in:array result:0];
            data22 = [v97 data];
            [data22 setObject:v105 forKeyedSubscript:@"waitEvent"];
          }

          v107 = [MEMORY[0x1E696AD98] numberWithShort:*(ss_trace_buffer + 57)];
          data23 = [v97 data];
          [data23 setObject:v107 forKeyedSubscript:@"schedPriority"];

          v109 = [MEMORY[0x1E696AD98] numberWithShort:*(ss_trace_buffer + 56)];
          data24 = [v97 data];
          [data24 setObject:v109 forKeyedSubscript:@"basePriority"];

          if (ss_trace_buffer[117])
          {
            v111 = DecodeQOS(ss_trace_buffer[117]);
            data25 = [v97 data];
            [data25 setObject:v111 forKeyedSubscript:@"qosRequested"];
          }

          if (ss_trace_buffer[118])
          {
            v113 = DecodeQOS(ss_trace_buffer[118]);
            data26 = [v97 data];
            [data26 setObject:v113 forKeyedSubscript:@"qosOverride"];
          }

          if (ss_trace_buffer[116])
          {
            v115 = DecodeQOS(ss_trace_buffer[116]);
            data27 = [v97 data];
            [data27 setObject:v115 forKeyedSubscript:@"qosEffective"];
          }

          v117 = *(ss_trace_buffer + 27);
          if (v117)
          {
            v118 = DecodeThreadFlags(v117, 0);
            data28 = [v97 data];
            [data28 setObject:v118 forKeyedSubscript:@"schedFlags"];
          }

          v120 = *(ss_trace_buffer + 10);
          if (v120)
          {
            v121 = DecodeThreadFlags(v120, 1);
            data29 = [v97 data];
            [data29 setObject:v121 forKeyedSubscript:@"snapshotFlags"];
          }

          v123 = *(ss_trace_buffer + 4);
          if (v123)
          {
            v124 = [catalogCopy searchFrame:v123 in:array result:0];
            data30 = [v97 data];
            [data30 setObject:v124 forKeyedSubscript:@"continuation"];
          }

          if (ss_trace_buffer[80] < 0)
          {
            if (v491)
            {
              parent = [array3 parent];
              data31 = [v97 data];
              truncated_threads = [parent truncated_threads];
              v213 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
              [truncated_threads setObject:data31 forKeyedSubscript:v213];
            }

            else
            {
              parent = [v97 data];
              [parent setObject:@"Unmapped pages caused truncated backtrace (resampling disabled)" forKeyedSubscript:@"notice"];
            }

            v126 = v511;
            v501 = (v501 + 1);
          }

          else
          {
            v126 = v511;
          }

          v247 = *(ss_trace_buffer + 8);
          v248 = *(ss_trace_buffer + 9);
          if (v126)
          {
            v249 = v247 * *v126 / v126[1];
          }

          else
          {
            v249 = *(ss_trace_buffer + 8);
          }

          v250 = [MEMORY[0x1E696AD98] numberWithDouble:v249 / 1000000000.0];
          data32 = [v97 data];
          [data32 setObject:v250 forKeyedSubscript:@"userTime"];

          v252 = *(ss_trace_buffer + 9);
          if (v126)
          {
            v252 = v252 * *v126 / v126[1];
          }

          v253 = [MEMORY[0x1E696AD98] numberWithDouble:v252 / 1000000000.0];
          data33 = [v97 data];
          [data33 setObject:v253 forKeyedSubscript:@"systemTime"];

          v255 = selfCopy->_capture_absoluteTime - *(ss_trace_buffer + 11);
          if (v126)
          {
            v255 = v255 * *v126 / v126[1];
          }

          v25 = 0x1E695D000;
          v256 = [MEMORY[0x1E696AD98] numberWithDouble:v255 / 1000000000.0];
          data34 = [v97 data];
          [data34 setObject:v256 forKeyedSubscript:@"lastRunTime"];

          v258 = *(ss_trace_buffer + 12);
          if (v258 != -1)
          {
            v259 = selfCopy->_capture_absoluteTime - v258;
            if (v511)
            {
              v259 = v259 * *v511 / v511[1];
            }

            v260 = [MEMORY[0x1E696AD98] numberWithDouble:v259 / 1000000000.0];
            data35 = [v97 data];
            [data35 setObject:v260 forKeyedSubscript:@"lastMadeRunnableTime"];
          }

          v504 = (v504 + 1);
          v507 += v247;
          v506 += v248;

          catalogCopy = v519;
          v13 = v525;
LABEL_334:
          self = selfCopy;
          goto LABEL_623;
        case 2312:
        case 2319:
        case 2331:
        case 2332:
        case 2333:
        case 2338:
        case 2345:
        case 2346:
        case 2347:
        case 2348:
        case 2349:
        case 2372:
          goto LABEL_623;
        case 2313:
          v91 = v13;
          v132 = [array3 top];
          if ([v132 type] != 2308)
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v133 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 16];
          v134 = v133;
          if (v133)
          {
            v135 = v133;
          }

          else
          {
            v135 = @"<unprintable>";
          }

          data36 = [v132 data];
          v137 = data36;
          v138 = v135;
          v139 = @"name";
          goto LABEL_164;
        case 2318:
          if (!appleInternal)
          {
            goto LABEL_623;
          }

          v563 = @"bootArgs";
          v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 16];
          v564 = v49;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
          v128 = v127 = v13;
          v510[2](v510, v128);

          v13 = v127;
          goto LABEL_140;
        case 2320:
          v499 = *(ss_trace_buffer + 4);
          goto LABEL_623;
        case 2321:
          self->_jetsamLevel = *(ss_trace_buffer + 4);
          goto LABEL_623;
        case 2329:
          v129 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          [(CDStackshotReport *)self addCustomField:"user_usec" value:v129 into:array3];

          v25 = 0x1E695D000;
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 3)];
          selfCopy4 = self;
          v72 = "system_usec";
          v130 = v49;
          v131 = array3;
          goto LABEL_455;
        case 2330:
          v174 = *(ss_trace_buffer + 2);
          if (v511)
          {
            v174 = v174 * *v511 / v511[1];
          }

          v175 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v174];
          [(CDStackshotReport *)self addCustomField:"stackshot_duration_nsec" value:v175 into:array3];

          v176 = *(ss_trace_buffer + 3);
          if (v511)
          {
            v176 = v176 * *v511 / v511[1];
          }

          v25 = 0x1E695D000;
          v177 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v176];
          [(CDStackshotReport *)self addCustomField:"stackshot_duration_outer_nsec" value:v177 into:array3];

          v178 = *ss_trace_buffer;
          if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
          {
            v178 = 17;
          }

          if (v178 <= 2309)
          {
            if (v178 == 17 || v178 == 19)
            {
              v179 = *(ss_trace_buffer + 1);
              goto LABEL_450;
            }

LABEL_444:
            v208 = *(ss_trace_buffer + 1);
            goto LABEL_448;
          }

          if (v178 == 2310)
          {
            v208 = *(ss_trace_buffer + 1);
            if (v208 == 112)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_451;
              }

              v208 = 112;
            }
          }

          else
          {
            if (v178 != 2312)
            {
              goto LABEL_444;
            }

            v208 = *(ss_trace_buffer + 1);
            if (v208 == 32)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_451;
              }

              v208 = 32;
            }
          }

LABEL_448:
          v53 = v208 >= (*(ss_trace_buffer + 2) & 0xFu);
          v179 = v208 - (*(ss_trace_buffer + 2) & 0xF);
          if (!v53)
          {
            v179 = 0;
          }

LABEL_450:
          if (v179 < 0x11)
          {
            goto LABEL_623;
          }

LABEL_451:
          v321 = *(ss_trace_buffer + 4);
          if (v511)
          {
            v321 = v321 * *v511 / v511[1];
          }

          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v321];
          selfCopy4 = self;
          v72 = "stackshot_duration_prior_nsec";
          goto LABEL_454;
        case 2337:
          v171 = [array3 top];
          if (!v171 || (v49 = v171, [v171 type] != 2307) && objc_msgSend(v49, "type") != 2353)
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v172 = *ss_trace_buffer;
          if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
          {
            v172 = 17;
          }

          if (v172 <= 2309)
          {
            if (v172 == 17 || v172 == 19)
            {
              v173 = *(ss_trace_buffer + 1);
              goto LABEL_462;
            }

LABEL_456:
            v209 = *(ss_trace_buffer + 1);
            goto LABEL_460;
          }

          if (v172 == 2310)
          {
            v209 = *(ss_trace_buffer + 1);
            if (v209 == 112)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_463;
              }

              v209 = 112;
            }
          }

          else
          {
            if (v172 != 2312)
            {
              goto LABEL_456;
            }

            v209 = *(ss_trace_buffer + 1);
            if (v209 == 32)
            {
              if ((ss_trace_buffer[8] & 0x8F) == 0)
              {
                goto LABEL_463;
              }

              v209 = 32;
            }
          }

LABEL_460:
          v53 = v209 >= (*(ss_trace_buffer + 2) & 0xFu);
          v173 = v209 - (*(ss_trace_buffer + 2) & 0xF);
          if (!v53)
          {
            v173 = 0;
          }

LABEL_462:
          if (v173 < 8)
          {
            goto LABEL_478;
          }

LABEL_463:
          [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          v323 = v322 = v13;
          data37 = [v49 data];
          v325 = data37;
          v326 = v323;
          v327 = @"jetsamCoalition";
LABEL_477:
          [data37 setObject:v326 forKeyedSubscript:v327];

          v25 = 0x1E695D000;
          v13 = v322;
          goto LABEL_478;
        case 2344:
          v91 = v13;
          v132 = [array3 top];
          if ([v132 type] != 2308)
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v169 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 16];
          v134 = v169;
          if (v169)
          {
            v170 = v169;
          }

          else
          {
            v170 = @"<unknown>";
          }

          data36 = [v132 data];
          v137 = data36;
          v138 = v170;
          v139 = @"dispatch_queue_label";
LABEL_164:
          [data36 setObject:v138 forKeyedSubscript:v139];

          self = selfCopy;
          goto LABEL_467;
        case 2352:
          v154 = v13;
          v155 = [array3 top];
          if (!v155 || (v156 = v155, [v155 type] != 2353))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          [v156 setPid:*(ss_trace_buffer + 10)];
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          data38 = [v156 data];
          [data38 setObject:dictionary2 forKeyedSubscript:@"threadById"];

          v159 = [MEMORY[0x1E696AD98] numberWithInt:*(ss_trace_buffer + 10)];
          data39 = [v156 data];
          [data39 setObject:v159 forKeyedSubscript:@"pid"];

          v161 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 44];
          data40 = [v156 data];
          [data40 setObject:v161 forKeyedSubscript:@"procname"];

          v163 = *(&self->super.super.isa + *MEMORY[0x1E69B7C30]);
          v164 = MEMORY[0x1E696AEC0];
          data41 = [v156 data];
          v166 = [data41 objectForKeyedSubscript:@"pid"];
          v167 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 4)];
          v167 = [v164 stringWithFormat:@"Process %@ is in transition type %@", v166, v167];
          [v163 addObject:v167];

          self = selfCopy;
          catalogCopy = v519;
          v13 = v154;
          v25 = 0x1E695D000;
          tuningCopy = v515;
          goto LABEL_623;
        case 2360:
          v74 = [array3 top];
          if (!v74 || (v49 = v74, [v74 type] != 2307))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v75 = *(ss_trace_buffer + 2);
          if (!v75 || !*(ss_trace_buffer + 3) || !*(ss_trace_buffer + 5) || !*(ss_trace_buffer + 4))
          {
            goto LABEL_478;
          }

          v523 = v13;
          if (v511)
          {
            v75 = v75 * *v511 / v511[1];
          }

          v76 = [MEMORY[0x1E696AD98] numberWithDouble:v75 / 1000000000.0];
          data42 = [v49 data];
          [data42 setObject:v76 forKeyedSubscript:@"suspensionLastStart"];

          v78 = *(ss_trace_buffer + 3);
          if (v511)
          {
            v78 = v78 * *v511 / v511[1];
          }

          v79 = [MEMORY[0x1E696AD98] numberWithDouble:v78 / 1000000000.0];
          data43 = [v49 data];
          [data43 setObject:v79 forKeyedSubscript:@"suspensionLastEnd"];

          v81 = *(ss_trace_buffer + 5);
          if (v511)
          {
            v81 = v81 * *v511 / v511[1];
          }

          v82 = [MEMORY[0x1E696AD98] numberWithDouble:v81 / 1000000000.0];
          data44 = [v49 data];
          [data44 setObject:v82 forKeyedSubscript:@"suspensionDuration"];

          v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 4)];
          data45 = [v49 data];
          [data45 setObject:v84 forKeyedSubscript:@"suspensionCount"];

          v13 = v523;
LABEL_140:
          v25 = 0x1E695D000;
          goto LABEL_478;
        case 2371:
          v91 = v13;
          if ([array3 count])
          {
            v93 = [array3 top];
          }

          else
          {
            v93 = 0;
          }

          v215 = objc_alloc_init(SharedCacheEntry);
          [(SharedCacheEntry *)v215 setSharedCacheInfo:ss_trace_buffer + 16];
          v216 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 14)];
          if ([v93 type] == 2370)
          {
            [v93 setPid:*(ss_trace_buffer + 14)];
          }

          [v509 setObject:v215 forKeyedSubscript:v216];
          if ([(SharedCacheEntry *)v215 isDefaultSharedCache])
          {
            v217 = v215;

            v513 = v217;
            self = selfCopy;
          }

          goto LABEL_250;
        case 2373:
          v91 = v13;
          v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 4)];
          v181 = [v509 objectForKeyedSubscript:v180];
          v182 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v181, "sharedCacheID")}];
          v183 = [v182 isEqual:v180];

          if (v183)
          {
            v184 = v181;

            if ([array3 count])
            {
              v185 = [array3 top];
              v186 = appleInternal;
              if (!v185)
              {
                v186 = 0;
              }

              if (v186 == 1)
              {
                memset(out, 0, sizeof(out));
                uuid_unparse(([(SharedCacheEntry *)v184 original]+ 8), out);
                v560[0] = @"uuid";
                v517 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
                v561[0] = v517;
                v560[1] = @"slide";
                v187 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SharedCacheEntry original](v184, "original")[32]}];
                v561[1] = v187;
                v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v561 forKeys:v560 count:2];
                data46 = [v185 data];
                [data46 setObject:v188 forKeyedSubscript:@"taskSpecificSharedCache"];

                tuningCopy = v515;
                catalogCopy = v519;
              }
            }

            else
            {
              v185 = 0;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [CDStackshotReport decodeKCDataWithBlock:buf withTuning:v180 usingCatalog:&v559];
            }

            v184 = v516;
          }

          self = selfCopy;

          v516 = v184;
          goto LABEL_467;
        case 2374:
          v147 = v13;
          v148 = [array3 top];
          if (!v148 || (v149 = v148, [v148 type] != 2307))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v150 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          data47 = [v149 data];
          [data47 setObject:v150 forKeyedSubscript:@"csFlags"];

          v152 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 6)];
          data48 = [v149 data];
          [data48 setObject:v152 forKeyedSubscript:@"csTrustLevel"];

          v13 = v147;
          goto LABEL_468;
        case 2376:
          v91 = v13;
          v92 = [array3 top];
          if (!v92 || (v93 = v92, [v92 type] != 2308))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v94 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
          data49 = [v93 data];
          [data49 setObject:v94 forKeyedSubscript:@"exclaveScid"];

          v492 = *(ss_trace_buffer + 6);
LABEL_250:

LABEL_467:
          v13 = v91;
LABEL_468:
          v25 = 0x1E695D000;
          goto LABEL_623;
        default:
          if (v28 != 2114)
          {
            if (v28 == 1503811591)
            {
              goto LABEL_623;
            }

LABEL_61:
            v53 = v26 >= (*(ss_trace_buffer + 2) & 0xFu);
            LODWORD(v26) = v26 - (*(ss_trace_buffer + 2) & 0xF);
            if (v53)
            {
              v26 = v26;
            }

            else
            {
              v26 = 0;
            }

            NSLog(&cfstr_UnknownKcdataX.isa, v28, v26, v28);
            goto LABEL_623;
          }

          v190 = [array3 top];
          if (!v190 || (v49 = v190, [v190 type] != 2307))
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v191 = *ss_trace_buffer;
          if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
          {
            v191 = 17;
          }

          if (v191 <= 2309)
          {
            if (v191 == 17 || v191 == 19)
            {
              v192 = *(ss_trace_buffer + 1);
              goto LABEL_475;
            }

            goto LABEL_469;
          }

          if (v191 != 2310)
          {
            if (v191 != 2312)
            {
LABEL_469:
              v214 = *(ss_trace_buffer + 1);
              goto LABEL_473;
            }

            v214 = *(ss_trace_buffer + 1);
            if (v214 != 32)
            {
              goto LABEL_473;
            }

            if ((ss_trace_buffer[8] & 0x8F) != 0)
            {
              v214 = 32;
              goto LABEL_473;
            }

LABEL_476:
            [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
            v323 = v322 = v13;
            data37 = [v49 data];
            v325 = data37;
            v326 = v323;
            v327 = @"codeSigningAuxiliaryInfo";
            goto LABEL_477;
          }

          v214 = *(ss_trace_buffer + 1);
          if (v214 == 112)
          {
            if ((ss_trace_buffer[8] & 0x8F) == 0)
            {
              goto LABEL_476;
            }

            v214 = 112;
          }

LABEL_473:
          v53 = v214 >= (*(ss_trace_buffer + 2) & 0xFu);
          v192 = v214 - (*(ss_trace_buffer + 2) & 0xF);
          if (!v53)
          {
            v192 = 0;
          }

LABEL_475:
          if (v192 < 8)
          {
            goto LABEL_478;
          }

          goto LABEL_476;
      }
    }

    if (v28 > 19)
    {
      if (v28 <= 50)
      {
        if (v28 == 20)
        {
          v54 = [array3 pop];
          v55 = *(ss_trace_buffer + 1);
          if (v55 != [v54 tag])
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          if ([v54 type] != 2308)
          {
            if ([v54 type] == 2307 || objc_msgSend(v54, "type") == 2353)
            {
              data50 = [v54 data];

              if (data50)
              {
                v521 = v13;
                v194 = v507;
                if (v511)
                {
                  v194 = v507 * *v511 / v511[1];
                }

                v195 = [MEMORY[0x1E696AD98] numberWithDouble:v194 / 1000000000.0];
                data51 = [v54 data];
                [data51 setObject:v195 forKeyedSubscript:@"userTimeTask"];

                v197 = v506;
                if (v511)
                {
                  v197 = v506 * *v511 / v511[1];
                }

                v198 = [MEMORY[0x1E696AD98] numberWithDouble:v197 / 1000000000.0];
                data52 = [v54 data];
                [data52 setObject:v198 forKeyedSubscript:@"systemTimeTask"];

                if ([v54 unindexed_frames])
                {
                  v200 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "unindexed_frames")}];
                  data53 = [v54 data];
                  [data53 setObject:v200 forKeyedSubscript:@"unindexed_frames"];

                  v496 = [v54 unindexed_frames] + v496;
                  v202 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "pid")}];
                  [array6 addObject:v202];
                }

                truncated_threads2 = [v54 truncated_threads];
                v204 = [truncated_threads2 count];

                if (v204 && ([MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "pid")}], v205 = objc_claimAutoreleasedReturnValue(), objc_msgSend(array4, "addObject:", v205), v205, (excludeSection(tuningCopy, @"stackResampling") & 1) == 0))
                {
                  v335 = [v54 pid];
                  truncated_threads3 = [v54 truncated_threads];
                  v493 = [(CDStackshotReport *)self resampleTruncatedBacktracesForTask:v335 forThreads:truncated_threads3 usingCatalog:catalogCopy in:array usingSymbolicator:v494, v493];

                  if (v493)
                  {
                    v337 = [MEMORY[0x1E696AD98] numberWithInt:v493];
                    data54 = [v54 data];
                    [data54 setObject:v337 forKeyedSubscript:@"unindexed_rs_frames"];

                    v495 = (v493 + v495);
                    v493 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "pid")}];
                    [array7 addObject:v493];

                    LODWORD(v493) = 1;
                  }
                }

                else
                {
                  LODWORD(v493) = 0;
                }

                if (appleInternal && (([v54 unindexed_frames] == 0) & ~v493) == 0)
                {
                  v339 = [array valueForKey:@"details"];
                  data55 = [v54 data];
                  [data55 setObject:v339 forKeyedSubscript:@"process_images"];
                }

                if ([v54 invalid_images])
                {
                  v341 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v54, "invalid_images")}];
                  data56 = [v54 data];
                  [data56 setObject:v341 forKeyedSubscript:@"invalid_images"];

                  v485 = [v54 invalid_images] + v485;
                }

                if ((v497 & 1) == 0)
                {
                  v552 = &unk_1F5514498;
                  v553 = @"processByPid";
                  v343 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v553 forKeys:&v552 count:1];
                  v510[2](v510, v343);
                }

                v498 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v54, "pid")];
                v550[0] = v498;
                data57 = [v54 data];
                v551[0] = data57;
                v550[1] = &unk_1F5514480;
                v345 = MEMORY[0x1E696AD98];
                pid = selfCopy->_pid;
                v347 = [v54 pid];
                if (pid == v347)
                {
                  v348 = 1;
                }

                else
                {
                  v349 = selfCopy->_frontmostPids;
                  v350 = MEMORY[0x1E696AD98];
                  v351 = [v54 pid];
                  v352 = v350;
                  tuningCopy = v515;
                  v452 = [v352 numberWithInt:v351];
                  v348 = [(NSMutableArray *)v349 containsObject:?];
                }

                v353 = [v345 numberWithInt:v348];
                v551[1] = v353;
                v354 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v551 forKeys:v550 count:2];
                v510[2](v510, v354);

                if (pid != v347)
                {
                }

                v497 = 1;
                catalogCopy = v519;
                goto LABEL_621;
              }
            }

            else
            {
              v328 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                type = [v54 type];
                *out = 67109120;
                *&out[4] = type;
                _os_log_impl(&dword_1D97FA000, v328, OS_LOG_TYPE_DEFAULT, "Unknown KCDATA CONTAINER %X", out, 8u);
              }
            }

LABEL_622:

            goto LABEL_623;
          }

          if (![array3 count])
          {
            [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
          }

          v521 = v13;
          data58 = [v54 data];
          v57 = [data58 objectForKeyedSubscript:@"id"];

          data59 = [v54 data];
          v59 = [data59 objectForKeyedSubscript:@"exclaveScid"];

          if (!v59)
          {
            goto LABEL_618;
          }

          v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llX", objc_msgSend(v59, "unsignedLongLongValue")];
          data60 = [v54 data];
          [data60 setObject:v60 forKeyedSubscript:@"exclaveScid"];

          [v508 setThreadId:v57 withScId:v59];
          v62 = [v508 getFramesForThread:v57 usingCatalog:catalogCopy];
          if (![v62 count])
          {
            goto LABEL_617;
          }

          data61 = [v54 data];
          v64 = [data61 objectForKeyedSubscript:@"kernelFrames"];

          array11 = [MEMORY[0x1E695DF70] array];
          v488 = v57;
          if ([v64 count] < v492)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              unsignedLongLongValue = [v57 unsignedLongLongValue];
              *out = 67109376;
              *&out[4] = v492;
              *&out[8] = 2048;
              *&out[10] = unsignedLongLongValue;
              _os_log_error_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exclave frames offset of %d for thread %llu is invalid", out, 0x12u);
            }

            v66 = *(&selfCopy->super.super.isa + *MEMORY[0x1E69B7C30]);
            v492 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %llu with %lu kernel frames has exclave frames but invalid exclave frame offset of %d. Skipping adding exclave frames into kernel frames ", objc_msgSend(v57, "unsignedLongLongValue"), objc_msgSend(v64, "count"), v492];
            [v66 addObject:v492];
            tuningCopy = v515;
LABEL_616:

            v57 = v488;
LABEL_617:

            catalogCopy = v519;
LABEL_618:
            v410 = [array3 top];
            data62 = [v410 data];

            if (data62)
            {
              data63 = [v410 data];
              [data63 objectForKeyedSubscript:@"threadById"];
              v413 = v59;
              v415 = v414 = v57;

              data64 = [v54 data];
              v414 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v414];
              [v415 setObject:data64 forKeyedSubscript:v414];

              catalogCopy = v519;
              v57 = v414;
              v59 = v413;
            }

LABEL_621:
            self = selfCopy;
            v13 = v521;
            v25 = 0x1E695D000;
            goto LABEL_622;
          }

          if (v64)
          {
            if ([v64 count])
            {
              v330 = 0;
              do
              {
                if (v492 == v330)
                {
                  [array11 addObjectsFromArray:v62];
                }

                v331 = [v64 objectAtIndexedSubscript:v330];
                [array11 addObject:v331];

                ++v330;
              }

              while ([v64 count] > v330);
            }

            if ([v64 count] == v492)
            {
              [array11 addObjectsFromArray:v62];
            }

            tuningCopy = v515;
            if (!v492)
            {
              v332 = *(&selfCopy->super.super.isa + *MEMORY[0x1E69B7C30]);
              v333 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %llu has an incorrect exclave frame offset %d", objc_msgSend(v488, "unsignedLongLongValue"), 0];
              v334 = v332;
              tuningCopy = v515;
              [v334 addObject:v333];
              goto LABEL_614;
            }
          }

          else
          {
            v408 = v62;

            v409 = *(&selfCopy->super.super.isa + *MEMORY[0x1E69B7C30]);
            v333 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %llu has exclave frames but no kernel frames", objc_msgSend(v57, "unsignedLongLongValue")];
            [v409 addObject:v333];
            array11 = v408;
LABEL_614:
          }

          v492 = [v54 data];
          [v492 setObject:array11 forKeyedSubscript:@"kernelFrames"];
          goto LABEL_616;
        }

        if (v28 != 50)
        {
          goto LABEL_61;
        }

        v511 = (ss_trace_buffer + 16);
      }

      else
      {
        switch(v28)
        {
          case 0x33:
            self->_capture_absoluteTime = *(ss_trace_buffer + 2);
            break;
          case 0x35:
            *(&self->super.super.isa + *MEMORY[0x1E69B7C18]) = *(ss_trace_buffer + 2) / 1000000.0 - v24;
            break;
          case 0x840:
            v48 = [array3 top];
            if (!v48 || (v49 = v48, [v48 type] != 2307))
            {
              [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
            }

            v50 = *ss_trace_buffer;
            if ((*ss_trace_buffer & 0xFFFFFFF0) == 0x20)
            {
              v50 = 17;
            }

            if (v50 > 2309)
            {
              if (v50 == 2310)
              {
                v207 = *(ss_trace_buffer + 1);
                if (v207 == 112)
                {
                  if ((ss_trace_buffer[8] & 0x8F) == 0)
                  {
                    goto LABEL_342;
                  }

                  v207 = 112;
                }
              }

              else
              {
                if (v50 != 2312)
                {
                  goto LABEL_335;
                }

                v207 = *(ss_trace_buffer + 1);
                if (v207 == 32)
                {
                  if ((ss_trace_buffer[8] & 0x8F) == 0)
                  {
                    goto LABEL_342;
                  }

                  v207 = 32;
                }
              }
            }

            else
            {
              if (v50 == 17 || v50 == 19)
              {
                v51 = *(ss_trace_buffer + 1);
LABEL_341:
                if (v51 < 0x10)
                {
                  goto LABEL_478;
                }

LABEL_342:
                [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 2)];
                v263 = v262 = v13;
                data65 = [v49 data];
                [data65 setObject:v263 forKeyedSubscript:@"jitStartAddress"];

                v265 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 3)];
                data66 = [v49 data];
                [data66 setObject:v265 forKeyedSubscript:@"jitEndAddress"];

                v25 = 0x1E695D000;
                v13 = v262;
                [array addJITImage:*(ss_trace_buffer + 2) size:*(ss_trace_buffer + 3) - *(ss_trace_buffer + 2)];
                goto LABEL_478;
              }

LABEL_335:
              v207 = *(ss_trace_buffer + 1);
            }

            v53 = v207 >= (*(ss_trace_buffer + 2) & 0xFu);
            v51 = v207 - (*(ss_trace_buffer + 2) & 0xF);
            if (!v53)
            {
              v51 = 0;
            }

            goto LABEL_341;
          default:
            goto LABEL_61;
        }
      }
    }

    else if (v28 <= 2)
    {
      if (v28 == 1)
      {
        if (ss_trace_buffer != -48)
        {
          v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ss_trace_buffer + 48];
          goto LABEL_86;
        }
      }

      else
      {
        if (v28 != 2)
        {
          goto LABEL_61;
        }

        if (ss_trace_buffer != -48)
        {
          v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(ss_trace_buffer + 12)];
LABEL_86:
          v49 = v52;
          v72 = ss_trace_buffer + 16;
          selfCopy4 = self;
LABEL_454:
          v130 = v49;
          v131 = array3;
LABEL_455:
          [(CDStackshotReport *)selfCopy4 addCustomField:v72 value:v130 into:v131];
LABEL_478:
        }
      }
    }

    else
    {
      switch(v28)
      {
        case 3:
          if (ss_trace_buffer != -48)
          {
            v52 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(ss_trace_buffer + 6)];
            goto LABEL_86;
          }

          break;
        case 0x11:
          v522 = v13;
          v68 = *(ss_trace_buffer + 1);
          v69 = HIDWORD(v68);
          v480 = v68;
          if (v27 != 17)
          {
            v70 = array3;
            if (!v68)
            {
              goto LABEL_490;
            }

            v71 = (v26 - (*ss_trace_buffer & 0xF)) / v68;
            goto LABEL_520;
          }

          v70 = array3;
          if (SHIDWORD(v68) > 2313)
          {
            if (SHIDWORD(v68) <= 2315)
            {
              if (HIDWORD(v68) != 2314)
              {
                goto LABEL_489;
              }
            }

            else if (HIDWORD(v68) != 2316)
            {
              if (HIDWORD(v68) != 2317)
              {
                if (HIDWORD(v68) == 2369)
                {
                  v71 = 48;
                  goto LABEL_520;
                }

LABEL_490:
                v71 = 0;
                goto LABEL_520;
              }

LABEL_489:
              v71 = 16;
              goto LABEL_520;
            }

LABEL_491:
            v71 = 8;
            goto LABEL_520;
          }

          if (SHIDWORD(v68) <= 2073)
          {
            if (HIDWORD(v68) == 48)
            {
              v71 = 20;
            }

            else
            {
              if (HIDWORD(v68) != 49)
              {
                goto LABEL_490;
              }

              v71 = 24;
            }

            goto LABEL_520;
          }

          if (HIDWORD(v68) == 2074)
          {
            goto LABEL_491;
          }

          if (HIDWORD(v68) != 2311)
          {
            goto LABEL_490;
          }

          v71 = 4;
LABEL_520:
          if ([v70 count])
          {
            v490 = [v70 top];
          }

          else
          {
            v490 = 0;
          }

          if (v69 <= 2325)
          {
            v355 = v490;
            if (v69 <= 2322)
            {
              if ((v69 - 48) >= 2)
              {
                if (v69 == 2311)
                {
                  if (!v490 || [v490 type] != 2307 && objc_msgSend(v490, "type") != 2353)
                  {
                    [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
                  }

                  data67 = [v490 data];

                  if (data67)
                  {
                    array12 = [MEMORY[0x1E695DF70] array];
                    data68 = [v490 data];
                    [data68 setObject:array12 forKeyedSubscript:@"donatingPids"];

                    if (v480)
                    {
                      v359 = (ss_trace_buffer + 16);
                      v360 = v480;
                      do
                      {
                        v361 = *v359++;
                        v362 = [MEMORY[0x1E696AD98] numberWithInt:v361];
                        [array12 addObject:v362];

                        --v360;
                      }

                      while (v360);
                    }

                    self = selfCopy;
                    v25 = 0x1E695D000;
                    v355 = v490;
                  }

                  goto LABEL_611;
                }

LABEL_612:
                v407 = kcdata_iter_size(ss_trace_buffer);
                v355 = v490;
                NSLog(&cfstr_UnknownKcdataA.isa, v69, v480, v407, *(ss_trace_buffer + 1));
LABEL_611:

                tuningCopy = v515;
                v13 = v522;
                break;
              }

LABEL_573:
              if (!v355 || [v355 type] != 2307 && objc_msgSend(v355, "type") != 2353)
              {
                [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              goto LABEL_611;
            }

            if (v69 == 2323)
            {
              if (!v490 || [v490 type] != 2308)
              {
                [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              array13 = [MEMORY[0x1E695DF70] array];
              data69 = [v490 data];
              [data69 setObject:array13 forKeyedSubscript:@"kernelFrames"];

              if (v480)
              {
                v395 = (ss_trace_buffer + 16);
                v396 = v480;
                do
                {
                  v397 = *v395++;
                  v398 = [catalogCopy searchFrame:v397 in:array result:0];
                  [array13 addObject:v398];

                  --v396;
                }

                while (v396);
              }
            }

            else
            {
              if (v69 != 2324)
              {
                if (!v490 || [v490 type] != 2308)
                {
                  [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
                }

                parent2 = [array3 parent];
                array14 = [MEMORY[0x1E695DF70] array];
                data70 = [v490 data];
                [data70 setObject:array14 forKeyedSubscript:@"userFrames"];

                if (v480)
                {
                  v371 = 0;
                  v372 = ss_trace_buffer + 16;
                  v373 = v480;
                  do
                  {
                    v374 = v371;
                    v375 = *v372;
                    v531 = v371;
                    v376 = [v519 searchFrame:v375 in:array result:&v531];
                    v371 = v531;

                    [array14 addObject:v376];
                    if (!v371 && *v372)
                    {
                      [parent2 setUnindexed_frames:{objc_msgSend(parent2, "unindexed_frames") + 1}];
                    }

                    ++v372;
                    --v373;
                  }

                  while (v373);
                  goto LABEL_585;
                }

                goto LABEL_586;
              }

              if (!v490 || [v490 type] != 2308)
              {
                [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              array13 = [MEMORY[0x1E695DF70] array];
              data71 = [v490 data];
              [data71 setObject:array13 forKeyedSubscript:@"kernelFrames"];

              if (v480)
              {
                v403 = (ss_trace_buffer + 16);
                v404 = v480;
                do
                {
                  v405 = *v403++;
                  v406 = [catalogCopy searchFrame:v405 in:array result:0];
                  [array13 addObject:v406];

                  --v404;
                }

                while (v404);
              }
            }

            self = selfCopy;
LABEL_610:
            v25 = 0x1E695D000;
            goto LABEL_611;
          }

          if (v69 > 2344)
          {
            if (v69 != 2345)
            {
              v355 = v490;
              if (v69 != 2350)
              {
                if (v69 == 2361)
                {
                  if (!v490 || [v490 type] != 2307)
                  {
                    [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
                  }

                  array15 = [MEMORY[0x1E695DF70] array];
                  if (v480)
                  {
                    v378 = v480;
                    v379 = ss_trace_buffer + 36;
                    do
                    {
                      if (*(v379 - 12) && *(v379 - 1) && *v379 && *(v379 - 20))
                      {
                        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
                        v381 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v379 - 12)];
                        [dictionary3 setObject:v381 forKeyedSubscript:@"suspensionThreadID"];

                        v382 = [MEMORY[0x1E696AD98] numberWithInt:*(v379 - 1)];
                        [dictionary3 setObject:v382 forKeyedSubscript:@"suspensionProcID"];

                        v383 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v379];
                        [dictionary3 setObject:v383 forKeyedSubscript:@"suspensionProcName"];

                        v384 = *(v379 - 20);
                        if (v511)
                        {
                          v384 = v384 * *v511 / v511[1];
                        }

                        v385 = [MEMORY[0x1E696AD98] numberWithDouble:v384 / 1000000000.0];
                        [dictionary3 setObject:v385 forKeyedSubscript:@"suspensionTime"];

                        [array15 addObject:dictionary3];
                        self = selfCopy;
                        v25 = 0x1E695D000;
                        v355 = v490;
                      }

                      v379 += 85;
                      --v378;
                    }

                    while (v378);
                  }

                  if ([array15 count])
                  {
                    data72 = [v355 data];
                    [data72 setObject:array15 forKeyedSubscript:@"suspensionSources"];
                  }

                  catalogCopy = v519;
                  goto LABEL_611;
                }

                goto LABEL_612;
              }

              goto LABEL_573;
            }

            v355 = v490;
            if (!v490 || [v490 type] != 2307 && objc_msgSend(v490, "type") != 2353)
            {
              [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
            }

            data73 = [v490 data];

            if (!data73)
            {
              goto LABEL_611;
            }

            data74 = [v490 data];
            [data74 addTurnstileInfoDesc:ss_trace_buffer + 16 count:v480 elSize:v71];
          }

          else
          {
            if (v69 == 2326)
            {
              if (!v490 || [v490 type] != 2308)
              {
                [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
              }

              parent2 = [v70 parent];
              array14 = [MEMORY[0x1E695DF70] array];
              data75 = [v490 data];
              [data75 setObject:array14 forKeyedSubscript:@"userFrames"];

              v355 = v490;
              if (v480)
              {
                v371 = 0;
                v388 = (ss_trace_buffer + 16);
                v389 = v480;
                do
                {
                  v390 = v371;
                  v391 = *v388;
                  v532 = v371;
                  v392 = [v519 searchFrame:v391 in:array result:&v532];
                  v371 = v532;

                  [array14 addObject:v392];
                  if (!v371 && *v388)
                  {
                    [parent2 setUnindexed_frames:{objc_msgSend(parent2, "unindexed_frames") + 1}];
                  }

                  ++v388;
                  --v389;
                }

                while (v389);
LABEL_585:

                self = selfCopy;
                v355 = v490;
              }

LABEL_586:

              catalogCopy = v519;
              goto LABEL_610;
            }

            if (v69 != 2333)
            {
              v355 = v490;
              if (v69 != 2343)
              {
                goto LABEL_612;
              }

              if (!v490 || [v490 type] != 2370)
              {
                goto LABEL_611;
              }

              v363 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v490, "pid")}];
              v364 = [v509 objectForKeyedSubscript:v363];
              v365 = v364;
              if (v364 && ([MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v364, "sharedCacheID")}], v366 = objc_claimAutoreleasedReturnValue(), v367 = objc_msgSend(v366, "isEqual:", v363), v366, v367))
              {
                [v365 setSharedCacheLayout:ss_trace_buffer + 16 andCount:v480];
              }

              else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                [CDStackshotReport decodeKCDataWithBlock:v556 withTuning:v363 usingCatalog:&v557];
              }

              self = selfCopy;
              goto LABEL_610;
            }

            v355 = v490;
            if (!v490 || [v490 type] != 2307 && objc_msgSend(v490, "type") != 2353)
            {
              [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
            }

            data76 = [v490 data];

            if (!data76)
            {
              goto LABEL_611;
            }

            data74 = [v490 data];
            [data74 addWaitInfoDesc:ss_trace_buffer + 16 count:v480 elSize:v71];
          }

          goto LABEL_611;
        case 0x13:
          v45 = [objc_alloc(MEMORY[0x1E69B7BE8]) initWithKCData:{ss_trace_buffer, v13}];
          [array3 push:v45];

          if (*(ss_trace_buffer + 4) == 2307)
          {
            v487 = *(ss_trace_buffer + 2);

            [array removeAllObjects];
            [array2 removeAllObjects];
            v46 = &v14[*(ss_trace_buffer + 1)];
            v47 = v46 + 16;
            if ((v46 + 16) > v13)
            {
              v516 = 0;
LABEL_315:
              catalogCopy = v519;
              break;
            }

            v516 = 0;
            v221 = 1;
            v527 = v13;
            while (2)
            {
              if (&v47[*(v46 + 1)] > v13 || (v222 = *v46, *v46 == -242132755))
              {
LABEL_314:
                tuningCopy = v515;
                goto LABEL_315;
              }

              if ((v222 & 0xFFFFFFF0) == 0x20)
              {
                v222 = 17;
              }

              if (v222 > 19)
              {
                switch(v222)
                {
                  case 20:
                    if (!--v221)
                    {
                      goto LABEL_314;
                    }

                    break;
                  case 2332:
                    [v519 setKernelCache:v46 + 24 address:*(v46 + 2) size:0];
                    break;
                  case 2373:
                    v223 = v13;
                    v224 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v46 + 4)];
                    v225 = [v509 objectForKeyedSubscript:v224];
                    v226 = v225;
                    if (v225 && ([MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v225, "sharedCacheID")}], v227 = objc_claimAutoreleasedReturnValue(), v228 = objc_msgSend(v227, "isEqual:", v224), v227, v228))
                    {
                      v229 = v226;

                      v230 = [array3 count];
                      if (v230)
                      {
                        v230 = [array3 top];
                        v231 = appleInternal;
                        if (!v230)
                        {
                          v231 = 0;
                        }

                        if (v231 == 1)
                        {
                          memset(out, 0, sizeof(out));
                          v518 = v230;
                          uuid_unparse(([(SharedCacheEntry *)v229 original]+ 8), out);
                          v554[0] = @"uuid";
                          v478 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
                          v555[0] = v478;
                          v554[1] = @"slide";
                          v475 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SharedCacheEntry original](v229, "original")[32]}];
                          v555[1] = v475;
                          v482 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v555 forKeys:v554 count:2];
                          data77 = [v518 data];
                          [data77 setObject:v482 forKeyedSubscript:@"taskSpecificSharedCache"];

                          v230 = v518;
                        }
                      }

                      self = selfCopy;
                    }

                    else
                    {
                      v243 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                      {
                        *out = 138412290;
                        *&out[4] = v224;
                        _os_log_impl(&dword_1D97FA000, v243, OS_LOG_TYPE_DEFAULT, "Expected a task specific shared cache with id %@ but none was found", out, 0xCu);
                      }

                      v229 = v516;
                      self = selfCopy;
                    }

                    v516 = v229;
                    v13 = v223;
LABEL_312:
                    v25 = 0x1E695D000;
                    break;
                }

LABEL_313:
                v46 = &v47[*(v46 + 1)];
                v47 = v46 + 16;
                if ((v46 + 16) > v13)
                {
                  goto LABEL_314;
                }

                continue;
              }

              break;
            }

            if (v222 != 17)
            {
              if (v222 == 19)
              {
                ++v221;
                if (*(v46 + 4) == 2356)
                {
                  v233 = [array3 top];
                  [v233 data];
                  v235 = v234 = v13;
                  [v235 parsePortLabelContainer:{v46, v234}];

                  v13 = v234;
                  v25 = 0x1E695D000;
                }
              }

              goto LABEL_313;
            }

            v236 = *(v46 + 1);
            v237 = HIDWORD(v236);
            if (HIDWORD(v236) != 48)
            {
              if (HIDWORD(v236) == 2350 || HIDWORD(v236) == 49)
              {
                v238 = [array3 top];
                if (v236)
                {
                  v239 = v236;
                  v240 = (v46 + 24);
                  do
                  {
                    if (uuid_is_null(v240))
                    {
                      if (!*(v240 - 1))
                      {
                        [v238 setInvalid_images:{objc_msgSend(v238, "invalid_images") + 1}];
                        goto LABEL_290;
                      }

                      v241 = array2;
                    }

                    else
                    {
                      v241 = array;
                    }

                    [v241 addImage:v240 address:? size:?];
LABEL_290:
                    v240 += 24;
                    --v239;
                  }

                  while (v239);
                }

                [array sortByAddressAndSetInferredSizes];
                self = selfCopy;
                if (!v487)
                {
                  if (v237 == 2350)
                  {
                    v242 = array;
                    [v519 setKernelTextExecImages:array];
                    goto LABEL_309;
                  }

LABEL_308:
                  v242 = array;
                  [v519 setKernelImages:array];
LABEL_309:
                  [v242 removeAllObjects];
                }

LABEL_310:
              }

              v13 = v527;
              goto LABEL_312;
            }

            v238 = [array3 top];
            if (!v236)
            {
LABEL_307:
              [array sortByAddressAndSetInferredSizes];
              if (!v487)
              {
                goto LABEL_308;
              }

              goto LABEL_310;
            }

            v244 = v236;
            v245 = (v46 + 20);
            while (2)
            {
              if (uuid_is_null(v245))
              {
                if (*(v245 - 1))
                {
                  v246 = array2;
                  goto LABEL_304;
                }

                [v238 setInvalid_images:{objc_msgSend(v238, "invalid_images") + 1}];
              }

              else
              {
                v246 = array;
LABEL_304:
                [v246 addImage:v245 address:? size:?];
              }

              v245 += 20;
              if (!--v244)
              {
                goto LABEL_307;
              }

              continue;
            }
          }

          break;
        default:
          goto LABEL_61;
      }
    }

LABEL_623:
    ss_trace_buffer = &v14[*(ss_trace_buffer + 1)];
    v14 = ss_trace_buffer + 16;
    if ((ss_trace_buffer + 16) > v13)
    {
      goto LABEL_669;
    }
  }

  if ([array3 count])
  {
    [CDStackshotReport decodeKCDataWithBlock:withTuning:usingCatalog:];
  }

  v419 = *MEMORY[0x1E69B7C30];
  [v508 appendNotesTo:*(&self->super.super.isa + v419)];
  blockCopy = v510;
  if (v497)
  {
    v539 = &unk_1F55144B0;
    v540 = &stru_1F550D880;
    v420 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
    v510[2](v510, v420);
  }

  if (v513)
  {
    v421 = appleInternal;
  }

  else
  {
    v421 = 0;
  }

  if (v421 == 1)
  {
    memset(out, 0, sizeof(out));
    uuid_unparse(([(SharedCacheEntry *)v513 original]+ 8), out);
    v537 = @"systemDefaultSharedCache";
    v535[0] = @"uuid";
    v422 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
    v536[0] = v422;
    v535[1] = @"slide";
    v423 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SharedCacheEntry original](v513, "original")[32]}];
    v536[1] = v423;
    v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v536 forKeys:v535 count:2];
    v538 = v424;
    v425 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v538 forKeys:&v537 count:1];
    v510[2](v510, v425);

    self = selfCopy;
  }

  if (v501)
  {
    v426 = *(&self->super.super.isa + v419);
    v427 = MEMORY[0x1E696AEC0];
    v428 = [array4 count];
    sortedPids = [array4 sortedPids];
    v429 = [v427 stringWithFormat:@"resampled %d of %d threads with truncated backtraces from %d pids: %@", v501, v504, v428, sortedPids];
    [v426 addObject:v429];

    self = selfCopy;
    if (v491)
    {
      v533 = @"postSampleVMStats";
      getVMStatistics = [(CDStackshotReport *)selfCopy getVMStatistics];
      v534 = getVMStatistics;
      v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v534 forKeys:&v533 count:1];
      v510[2](v510, v432);
    }
  }

  v433 = array5;
  if ([array5 count])
  {
    v434 = *(&self->super.super.isa + v419);
    v435 = MEMORY[0x1E696AEC0];
    v436 = [array5 count];
    sortedPids2 = [array5 sortedPids];
    v451 = v436;
    v433 = array5;
    v437 = [v435 stringWithFormat:@"resampled %d of %d images missing from %d pids: %@", v484, v485, v451, sortedPids2];
    [v434 addObject:v437];

    self = selfCopy;
  }

  if (v496)
  {
    v439 = *(&self->super.super.isa + v419);
    v440 = MEMORY[0x1E696AEC0];
    v441 = [array6 count];
    sortedPids3 = [array6 sortedPids];
    v449 = v441;
    v433 = array5;
    v442 = [v440 stringWithFormat:@"%d unindexed user-stack frames from %d pids: %@", v496, v449, sortedPids3];
    [v439 addObject:v442];

    self = selfCopy;
  }

  if (v495)
  {
    v444 = *(&self->super.super.isa + v419);
    v445 = MEMORY[0x1E696AEC0];
    v446 = [array7 count];
    sortedPids4 = [array7 sortedPids];
    v450 = v446;
    v433 = array5;
    v447 = [v445 stringWithFormat:@"%d unindexed re-sampled frames from %d pids: %@", v495, v450, sortedPids4];
    [v444 addObject:v447];
  }

  [array4 count];
  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)decodeKCDataWithBlock:(uint8_t *)buf withTuning:(uint64_t)a2 usingCatalog:(void *)a3 .cold.25(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Expected a task specific shared cache with ID %{public}@ but none was found", buf, 0xCu);
}

@end