@interface DTActivityTraceTapConfig
- (BOOL)enableBacktraceReplacement;
- (BOOL)enableHTTPArchiveLogging;
- (BOOL)enablePowerLog;
- (BOOL)excludeDebug;
- (BOOL)excludeInfo;
- (BOOL)includeEmitLocation;
- (BOOL)includeSenderInfo;
- (BOOL)includeWallTime;
- (BOOL)onlySignposts;
- (BOOL)signpostsAndLogs;
- (BOOL)trackExpiredPIDs;
- (BOOL)trackPIDToExecNameMapping;
- (DTActivityTraceTapConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)targetPID;
- (mach_timebase_info)machTimebase;
- (unint64_t)machContinuousStart;
- (unint64_t)mode;
- (void)setMachContinuousStart:(unint64_t)start;
- (void)setMachTimebase:(mach_timebase_info)timebase;
- (void)setMemoHandler:(id)handler;
- (void)setMode:(unint64_t)mode;
- (void)setOnlySignposts:(BOOL)signposts;
- (void)setPredicateString:(id)string;
- (void)setSignpostsAndLogs:(BOOL)logs;
@end

@implementation DTActivityTraceTapConfig

- (DTActivityTraceTapConfig)init
{
  v5.receiver = self;
  v5.super_class = DTActivityTraceTapConfig;
  v2 = [(DTTapConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DTTapConfig *)v2 _setSerializableObject:&stru_285A19CB8 forKey:@"predicate"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = DTActivityTraceTapConfig;
  v4 = [(DTTapConfig *)&v10 copyWithZone:zone];
  v5 = _Block_copy(self->_memoHandler);
  v6 = *(v4 + 13);
  *(v4 + 13) = v5;

  v7 = _Block_copy(self->_processDetectionCallback);
  v8 = *(v4 + 14);
  *(v4 + 14) = v7;

  objc_storeStrong(v4 + 10, self->_importedFileURL);
  objc_storeStrong(v4 + 11, self->_importForcedStartDate);
  objc_storeStrong(v4 + 12, self->_importForcedEndDate);
  return v4;
}

- (void)setPredicateString:(id)string
{
  if (string)
  {
    [(DTTapConfig *)self _setSerializableObject:string forKey:@"predicate"];
  }
}

- (void)setMode:(unint64_t)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mode];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"mode"];
}

- (unint64_t)mode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"mode"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (void)setOnlySignposts:(BOOL)signposts
{
  signpostsCopy = signposts;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"onlySignposts"];

  if (signpostsCopy)
  {
    v6 = MEMORY[0x277CBEC28];

    [(DTTapConfig *)self _setSerializableObject:v6 forKey:@"signpostsAndLogs"];
  }
}

- (BOOL)onlySignposts
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"onlySignposts"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSignpostsAndLogs:(BOOL)logs
{
  logsCopy = logs;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"signpostsAndLogs"];

  if (logsCopy)
  {
    v6 = MEMORY[0x277CBEC28];

    [(DTTapConfig *)self _setSerializableObject:v6 forKey:@"onlySignposts"];
  }
}

- (BOOL)signpostsAndLogs
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"signpostsAndLogs"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)trackExpiredPIDs
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"trackExpiredPIDs"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)excludeInfo
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"excludeInfo"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)excludeDebug
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"excludeDebug"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)includeSenderInfo
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"includeSenderInfo"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)includeEmitLocation
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"includeEmitLocation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)includeWallTime
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"includeWallTime"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enableHTTPArchiveLogging
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"enableHTTPArchiveLogging"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enableBacktraceReplacement
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"enableBacktraceReplacement"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enablePowerLog
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"enablePowerlogLogging"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int)targetPID
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"targetPID"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)trackPIDToExecNameMapping
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"trackPidToExecNameMapping"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMachTimebase:(mach_timebase_info)timebase
{
  denom = timebase.denom;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"machTimebaseNumer"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:denom];
  [(DTTapConfig *)self _setSerializableObject:v6 forKey:@"machTimebaseDenom"];
}

- (mach_timebase_info)machTimebase
{
  v3 = [(DTTapConfig *)self _getSerializableObjectForKey:@"machTimebaseNumer"];
  unsignedIntValue = [v3 unsignedIntValue];

  v5 = [(DTTapConfig *)self _getSerializableObjectForKey:@"machTimebaseDenom"];
  unsignedIntValue2 = [v5 unsignedIntValue];

  return (unsignedIntValue | (unsignedIntValue2 << 32));
}

- (void)setMachContinuousStart:(unint64_t)start
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:start];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"machContinuousStart"];
}

- (unint64_t)machContinuousStart
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"machContinuousStart"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setMemoHandler:(id)handler
{
  v4 = _Block_copy(handler);
  memoHandler = self->_memoHandler;
  self->_memoHandler = v4;
}

@end