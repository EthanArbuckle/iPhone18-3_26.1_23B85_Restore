@interface DMCBacktraceLogger
+ (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size;
+ (BOOL)dumpStackshotToPath:(id)path fileName:(id)name;
+ (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread;
+ (id)callerOfCurrentMethod;
+ (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count;
- (id)getBacktraceFromTrackedThread;
- (void)trackCurrentThread;
@end

@implementation DMCBacktraceLogger

+ (id)callerOfCurrentMethod
{
  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
  if ([callStackSymbols count] >= 3)
  {
    v4 = [callStackSymbols objectAtIndexedSubscript:2];
    v3 = [v4 dmc_substringWithPattern:@".*0x[a-f0-9]*\\s(.*)\\s\\+.*"];
  }

  else
  {
    v3 = @"Unknown";
  }

  return v3;
}

+ (BOOL)dumpStackshotToPath:(id)path fileName:(id)name
{
  v48 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  nameCopy = name;
  v8 = MEMORY[0x1E696AEC0];
  callerOfCurrentMethod = [self callerOfCurrentMethod];
  v10 = [v8 stringWithFormat:@"Requested by: %@", callerOfCurrentMethod];
  v11 = WriteStackshotReport();

  if (v11)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v44 = 0;
    v13 = [defaultManager contentsOfDirectoryAtPath:@"/private/var/mobile/Library/Logs/CrashReporter" error:&v44];
    v14 = v44;
    v15 = v14 == 0;
    if (v14)
    {
      v16 = *DMCLogObjects();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v14;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Failed to grab all files under crash report folder: %{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

    v39 = objc_opt_new();
    [v39 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v13;
    v18 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v34 = v13;
      v35 = v14 == 0;
      v36 = defaultManager;
      v37 = pathCopy;
      v20 = 0;
      v21 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          v24 = [v23 dmc_substringWithPattern:@"stacks-([0-9-]*).*ips"];
          v25 = [v39 dateFromString:v24];
          v26 = [v17 laterDate:v25];

          if (v26 != v17)
          {
            v27 = v25;

            v28 = v23;
            v17 = v27;
            v20 = v28;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v19);

      if (!v20)
      {
        pathCopy = v37;
        defaultManager = v36;
        v15 = v35;
        v14 = 0;
        v13 = v34;
        goto LABEL_23;
      }

      defaultManager = v36;
      pathCopy = v37;
      v14 = 0;
      if (([v36 fileExistsAtPath:v37 isDirectory:0] & 1) == 0)
      {
        [v36 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:0];
      }

      v29 = [v37 stringByAppendingPathComponent:nameCopy];
      v30 = [@"/private/var/mobile/Library/Logs/CrashReporter" stringByAppendingPathComponent:v20];
      DMCSafelyCopyItemAtPathToDestinationPathFM(v36, v30, v29, 0);

      v31 = *DMCLogObjects();
      v15 = v35;
      v13 = v34;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v47 = v29;
        _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_DEFAULT, "DMCBacktraceLogger: stackshot collected. Location: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v20 = 0;
      v29 = obj;
    }

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  v15 = 0;
LABEL_25:

  v32 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)trackCurrentThread
{
  v3 = MEMORY[0x1B2731710](self, a2);

  [(DMCBacktraceLogger *)self setTrackedThread:v3];
}

- (id)getBacktraceFromTrackedThread
{
  trackedThread = [(DMCBacktraceLogger *)self trackedThread];

  return [DMCBacktraceLogger _getBacktraceFromThread:trackedThread bufferSize:15];
}

+ (__darwin_arm_thread_state64)_getThreadStateForThread:(SEL)thread
{
  *&retstr->__lr = 0u;
  *&retstr->__pc = 0u;
  *&retstr->__x[26] = 0u;
  *&retstr->__x[28] = 0u;
  *&retstr->__x[22] = 0u;
  *&retstr->__x[24] = 0u;
  *&retstr->__x[18] = 0u;
  *&retstr->__x[20] = 0u;
  *&retstr->__x[14] = 0u;
  *&retstr->__x[16] = 0u;
  *&retstr->__x[10] = 0u;
  *&retstr->__x[12] = 0u;
  *&retstr->__x[6] = 0u;
  *&retstr->__x[8] = 0u;
  *&retstr->__x[2] = 0u;
  *&retstr->__x[4] = 0u;
  *retstr->__x = 0u;
  old_stateCnt = 68;
  result = thread_get_state(a4, 6, retstr, &old_stateCnt);
  if (result)
  {
    v5 = *DMCLogObjects();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v6 = 0;
      _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_ERROR, "Failed to get thread state", v6, 2u);
    }
  }

  return result;
}

+ (BOOL)_copyFrameInformation:(unint64_t)information destination:(unint64_t)destination size:(unint64_t)size
{
  v15 = *MEMORY[0x1E69E9840];
  outsize = 0;
  v6 = vm_read_overwrite(*MEMORY[0x1E69E9A60], information, size, destination, &outsize);
  if (v6)
  {
    v7 = *DMCLogObjects();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      informationCopy = information;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "Failed to copy frame information from 0x%lx, result: %d", buf, 0x12u);
    }
  }

  result = v6 == 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)_symbolicateBuffer:(const unint64_t *)buffer symbolsBuffer:(dl_info *)symbolsBuffer count:(int)count
{
  if (count >= 1)
  {
    v7 = 0;
    v8 = 8 * count;
    symbolsBufferCopy = symbolsBuffer;
    do
    {
      if (v7)
      {
        v10 = ((buffer[v7 / 8] & 0xFFFFFFFFFFFFFFFCLL) - 1);
        symbolsBufferCopy2 = symbolsBufferCopy;
      }

      else
      {
        v10 = *buffer;
        symbolsBufferCopy2 = symbolsBuffer;
      }

      dladdr(v10, symbolsBufferCopy2);
      v7 += 8;
      ++symbolsBufferCopy;
    }

    while (v8 != v7);
  }
}

@end