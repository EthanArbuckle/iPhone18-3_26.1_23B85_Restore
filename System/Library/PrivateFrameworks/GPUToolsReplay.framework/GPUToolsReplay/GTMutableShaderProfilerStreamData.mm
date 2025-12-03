@interface GTMutableShaderProfilerStreamData
+ (id)dataFromArchivedDataURL:(id)l;
- (BOOL)addAPSCounterData:(id)data;
- (BOOL)addAPSData:(id)data;
- (BOOL)addAPSTimelineData:(id)data;
- (BOOL)addBatchIdFilteredCounterData:(id)data;
- (BOOL)addGPUTimelineData:(id)data;
- (BOOL)addShaderProfilerData:(id)data;
- (GTMutableShaderProfilerStreamData)init;
- (id)_copyForAddAPSData:(id)data prefix:(id)prefix;
- (unint64_t)addString:(id)string;
- (void)_commonInit;
- (void)addCommandBuffers:(id *)buffers count:(unint64_t)count;
- (void)addEncoders:(id *)encoders count:(unint64_t)count;
- (void)addGPUCommands:(id *)commands count:(unint64_t)count;
- (void)addPipelinePerformanceStatisticsData:(id)data;
- (void)addPipelineStates:(id *)states count:(unint64_t)count;
- (void)addShaderFunctionInfo:(id *)info count:(unint64_t)count;
- (void)encodeWithCoder:(id)coder;
- (void)removeAPSCounterData;
- (void)removeAPSData;
- (void)removeAPSTimelineData;
- (void)setBatchIdFilterableCounters:(id)counters;
@end

@implementation GTMutableShaderProfilerStreamData

- (unint64_t)addString:(id)string
{
  stringCopy = string;
  v5 = [(NSMutableDictionary *)self->super._stringDict objectForKeyedSubscript:stringCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [(NSMutableArray *)self->super._strings count];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
    [(NSMutableDictionary *)self->super._stringDict setObject:v8 forKeyedSubscript:stringCopy];

    [(NSMutableArray *)self->super._strings addObject:stringCopy];
  }

  return unsignedIntegerValue;
}

- (void)setBatchIdFilterableCounters:(id)counters
{
  v4 = [counters copy];
  batchIdFilterableCounters = self->super._batchIdFilterableCounters;
  self->super._batchIdFilterableCounters = v4;
}

- (BOOL)addBatchIdFilteredCounterData:(id)data
{
  if (!data)
  {
    return 0;
  }

  v9 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:data requiringSecureCoding:1 error:&v9];
  v5 = v9;
  v6 = v5;
  v7 = v5 == 0;
  if (v5)
  {
    NSLog(&stru_2860BD1F8.isa, v5);
  }

  else
  {
    [(NSLock *)self->_addLock lock];
    [(NSMutableArray *)self->super._archivedBatchIdFilteredCounterData addObject:v4];
    [(NSLock *)self->_addLock unlock];
  }

  return v7;
}

- (void)removeAPSCounterData
{
  [(NSLock *)self->_addLock lock];
  [(NSMutableArray *)self->super._archivedAPSCounterData removeAllObjects];
  [(NSMutableArray *)self->super._tempAPSCounterData removeAllObjects];
  addLock = self->_addLock;

  [(NSLock *)addLock unlock];
}

- (void)removeAPSTimelineData
{
  [(NSLock *)self->_addLock lock];
  [(NSMutableArray *)self->super._archivedAPSTimelineData removeAllObjects];
  [(NSMutableArray *)self->super._tempAPSTimelineData removeAllObjects];
  addLock = self->_addLock;

  [(NSLock *)addLock unlock];
}

- (void)removeAPSData
{
  [(NSLock *)self->_addLock lock];
  [(NSMutableArray *)self->super._archivedAPSData removeAllObjects];
  [(NSMutableArray *)self->super._tempAPSData removeAllObjects];
  addLock = self->_addLock;

  [(NSLock *)addLock unlock];
}

- (BOOL)addAPSCounterData:(id)data
{
  dataCopy = data;
  [(NSLock *)self->_addLock lock];
  if (self->super._tempAPSCounterData)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    LOBYTE(v5) = 0;
    goto LABEL_7;
  }

  v6 = objc_opt_new();
  tempAPSCounterData = self->super._tempAPSCounterData;
  self->super._tempAPSCounterData = v6;

  if (!dataCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [(GTMutableShaderProfilerStreamData *)self _copyForAddAPSData:dataCopy prefix:@"Counters_"];
  if (v5)
  {
    [(NSMutableArray *)self->super._tempAPSCounterData addObject:v5];

    LOBYTE(v5) = 1;
  }

LABEL_7:
  [(NSLock *)self->_addLock unlock];

  return v5;
}

- (BOOL)addAPSTimelineData:(id)data
{
  dataCopy = data;
  [(NSLock *)self->_addLock lock];
  if (self->super._tempAPSTimelineData)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    LOBYTE(v5) = 0;
    goto LABEL_7;
  }

  v6 = objc_opt_new();
  tempAPSTimelineData = self->super._tempAPSTimelineData;
  self->super._tempAPSTimelineData = v6;

  if (!dataCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [(GTMutableShaderProfilerStreamData *)self _copyForAddAPSData:dataCopy prefix:@"Timeline_"];
  if (v5)
  {
    [(NSMutableArray *)self->super._tempAPSTimelineData addObject:v5];

    LOBYTE(v5) = 1;
  }

LABEL_7:
  [(NSLock *)self->_addLock unlock];

  return v5;
}

- (BOOL)addAPSData:(id)data
{
  dataCopy = data;
  [(NSLock *)self->_addLock lock];
  if (self->super._tempAPSData)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    LOBYTE(v5) = 0;
    goto LABEL_7;
  }

  v6 = objc_opt_new();
  tempAPSData = self->super._tempAPSData;
  self->super._tempAPSData = v6;

  if (!dataCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = [(GTMutableShaderProfilerStreamData *)self _copyForAddAPSData:dataCopy prefix:@"Profiling_"];
  if (v5)
  {
    [(NSMutableArray *)self->super._tempAPSData addObject:v5];

    LOBYTE(v5) = 1;
  }

LABEL_7:
  [(NSLock *)self->_addLock unlock];

  return v5;
}

- (id)_copyForAddAPSData:(id)data prefix:(id)prefix
{
  prefixCopy = prefix;
  dataCopy = data;
  _setupDataPath = [(GTShaderProfilerStreamData *)self _setupDataPath];
  v9 = [dataCopy mutableCopy];

  v10 = [v9 objectForKeyedSubscript:@"ShaderProfilerData"];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v10 length:{"bytes"), objc_msgSend(v10, "length")}];
    [v9 setObject:v12 forKeyedSubscript:@"ShaderProfilerData"];
  }

  v13 = [v9 objectForKeyedSubscript:@"APSTraceDataFile"];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_10;
  }

  lastPathComponent = [v13 lastPathComponent];
  v16 = [prefixCopy stringByAppendingString:lastPathComponent];

  v17 = [_setupDataPath URLByAppendingPathComponent:v16];
  path = [v17 path];

  v19 = [(GTShaderProfilerStreamData *)self supportsFileFormatV2]? v16 : path;
  [v9 setObject:v19 forKeyedSubscript:@"APSTraceDataFile"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [defaultManager fileExistsAtPath:path];

  if (v21)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 removeItemAtPath:path error:0];
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  [defaultManager3 copyItemAtPath:v14 toPath:path error:&v27];
  v24 = v27;

  v25 = 0;
  if (!v24)
  {
LABEL_10:
    v25 = v9;
  }

  return v25;
}

- (BOOL)addGPUTimelineData:(id)data
{
  if (!data)
  {
    return 0;
  }

  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:data requiringSecureCoding:1 error:&v8];
  v5 = v8;
  v6 = v5 == 0;
  if (!v5)
  {
    [(NSLock *)self->_addLock lock];
    [(NSMutableArray *)self->super._archivedGPUTimelineData addObject:v4];
    [(NSLock *)self->_addLock unlock];
  }

  return v6;
}

- (BOOL)addShaderProfilerData:(id)data
{
  if (!data)
  {
    return 0;
  }

  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:data requiringSecureCoding:1 error:&v8];
  v5 = v8;
  v6 = v5 == 0;
  if (!v5)
  {
    [(NSLock *)self->_addLock lock];
    [(NSMutableArray *)self->super._archivedShaderProfilerData addObject:v4];
    [(NSLock *)self->_addLock unlock];
  }

  return v6;
}

- (void)addPipelinePerformanceStatisticsData:(id)data
{
  v4 = [data copy];
  pipelinePerformanceStatistics = self->super._pipelinePerformanceStatistics;
  self->super._pipelinePerformanceStatistics = v4;
}

- (void)addShaderFunctionInfo:(id *)info count:(unint64_t)count
{
  functionInfoData = self->super._functionInfoData;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:info length:48 * count];
  [(NSMutableData *)functionInfoData appendData:v5];
}

- (void)addCommandBuffers:(id *)buffers count:(unint64_t)count
{
  commandBufferInfoData = self->super._commandBufferInfoData;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:buffers length:32 * count];
  [(NSMutableData *)commandBufferInfoData appendData:v5];
}

- (void)addPipelineStates:(id *)states count:(unint64_t)count
{
  pipelineStateInfoData = self->super._pipelineStateInfoData;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:states length:40 * count];
  [(NSMutableData *)pipelineStateInfoData appendData:v5];
}

- (void)addEncoders:(id *)encoders count:(unint64_t)count
{
  encoderInfoData = self->super._encoderInfoData;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:encoders length:40 * count];
  [(NSMutableData *)encoderInfoData appendData:v5];
}

- (void)addGPUCommands:(id *)commands count:(unint64_t)count
{
  gpuCommandInfoData = self->super._gpuCommandInfoData;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:commands length:32 * count];
  [(NSMutableData *)gpuCommandInfoData appendData:v5];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = GTMutableShaderProfilerStreamData;
  [(GTShaderProfilerStreamData *)&v3 encodeWithCoder:coder];
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  gpuCommandInfoData = self->super._gpuCommandInfoData;
  self->super._gpuCommandInfoData = v3;

  v5 = objc_opt_new();
  encoderInfoData = self->super._encoderInfoData;
  self->super._encoderInfoData = v5;

  v7 = objc_opt_new();
  pipelineStateInfoData = self->super._pipelineStateInfoData;
  self->super._pipelineStateInfoData = v7;

  v9 = objc_opt_new();
  commandBufferInfoData = self->super._commandBufferInfoData;
  self->super._commandBufferInfoData = v9;

  v11 = objc_opt_new();
  archivedShaderProfilerData = self->super._archivedShaderProfilerData;
  self->super._archivedShaderProfilerData = v11;

  v13 = objc_opt_new();
  archivedGPUTimelineData = self->super._archivedGPUTimelineData;
  self->super._archivedGPUTimelineData = v13;

  v15 = objc_opt_new();
  archivedBatchIdFilteredCounterData = self->super._archivedBatchIdFilteredCounterData;
  self->super._archivedBatchIdFilteredCounterData = v15;

  v17 = objc_opt_new();
  archivedAPSData = self->super._archivedAPSData;
  self->super._archivedAPSData = v17;

  v19 = objc_opt_new();
  archivedAPSCounterData = self->super._archivedAPSCounterData;
  self->super._archivedAPSCounterData = v19;

  v21 = objc_opt_new();
  archivedAPSTimelineData = self->super._archivedAPSTimelineData;
  self->super._archivedAPSTimelineData = v21;

  v23 = objc_opt_new();
  functionInfoData = self->super._functionInfoData;
  self->super._functionInfoData = v23;

  v25 = objc_opt_new();
  strings = self->super._strings;
  self->super._strings = v25;

  v27 = objc_opt_new();
  stringDict = self->super._stringDict;
  self->super._stringDict = v27;

  self->super._profiledExecutionMode = 0;
  *&self->super._profiledPerformanceState = 2;
  v29 = objc_opt_new();
  addLock = self->_addLock;
  self->_addLock = v29;
}

- (GTMutableShaderProfilerStreamData)init
{
  v5.receiver = self;
  v5.super_class = GTMutableShaderProfilerStreamData;
  v2 = [(GTShaderProfilerStreamData *)&v5 initWithNewFileFormatV2Support:0];
  v3 = v2;
  if (v2)
  {
    [(GTMutableShaderProfilerStreamData *)v2 _commonInit];
  }

  return v3;
}

+ (id)dataFromArchivedDataURL:(id)l
{
  v11 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l options:0 error:&v11];
  v4 = v11;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v10 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v10];
    v5 = v10;
    v7 = objc_opt_new();
    v8 = v6[42];
    v6[42] = v7;

    v6[1] = 5;
  }

  return v6;
}

@end