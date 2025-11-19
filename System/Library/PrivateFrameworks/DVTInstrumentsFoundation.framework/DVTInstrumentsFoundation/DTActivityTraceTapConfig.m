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
- (id)copyWithZone:(_NSZone *)a3;
- (int)targetPID;
- (mach_timebase_info)machTimebase;
- (unint64_t)machContinuousStart;
- (unint64_t)mode;
- (void)setMachContinuousStart:(unint64_t)a3;
- (void)setMachTimebase:(mach_timebase_info)a3;
- (void)setMemoHandler:(id)a3;
- (void)setMode:(unint64_t)a3;
- (void)setOnlySignposts:(BOOL)a3;
- (void)setPredicateString:(id)a3;
- (void)setSignpostsAndLogs:(BOOL)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = DTActivityTraceTapConfig;
  v4 = [(DTTapConfig *)&v10 copyWithZone:a3];
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

- (void)setPredicateString:(id)a3
{
  if (a3)
  {
    [(DTTapConfig *)self _setSerializableObject:a3 forKey:@"predicate"];
  }
}

- (void)setMode:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"mode"];
}

- (unint64_t)mode
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"mode"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (void)setOnlySignposts:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"onlySignposts"];

  if (v3)
  {
    v6 = MEMORY[0x277CBEC28];

    [(DTTapConfig *)self _setSerializableObject:v6 forKey:@"signpostsAndLogs"];
  }
}

- (BOOL)onlySignposts
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"onlySignposts"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSignpostsAndLogs:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"signpostsAndLogs"];

  if (v3)
  {
    v6 = MEMORY[0x277CBEC28];

    [(DTTapConfig *)self _setSerializableObject:v6 forKey:@"onlySignposts"];
  }
}

- (BOOL)signpostsAndLogs
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"signpostsAndLogs"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)trackExpiredPIDs
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"trackExpiredPIDs"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)excludeInfo
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"excludeInfo"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)excludeDebug
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"excludeDebug"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)includeSenderInfo
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"includeSenderInfo"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)includeEmitLocation
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"includeEmitLocation"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)includeWallTime
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"includeWallTime"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)enableHTTPArchiveLogging
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"enableHTTPArchiveLogging"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)enableBacktraceReplacement
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"enableBacktraceReplacement"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)enablePowerLog
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"enablePowerlogLogging"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)targetPID
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"targetPID"];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)trackPIDToExecNameMapping
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"trackPidToExecNameMapping"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setMachTimebase:(mach_timebase_info)a3
{
  denom = a3.denom;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:?];
  [(DTTapConfig *)self _setSerializableObject:v5 forKey:@"machTimebaseNumer"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:denom];
  [(DTTapConfig *)self _setSerializableObject:v6 forKey:@"machTimebaseDenom"];
}

- (mach_timebase_info)machTimebase
{
  v3 = [(DTTapConfig *)self _getSerializableObjectForKey:@"machTimebaseNumer"];
  v4 = [v3 unsignedIntValue];

  v5 = [(DTTapConfig *)self _getSerializableObjectForKey:@"machTimebaseDenom"];
  v6 = [v5 unsignedIntValue];

  return (v4 | (v6 << 32));
}

- (void)setMachContinuousStart:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(DTTapConfig *)self _setSerializableObject:v4 forKey:@"machContinuousStart"];
}

- (unint64_t)machContinuousStart
{
  v2 = [(DTTapConfig *)self _getSerializableObjectForKey:@"machContinuousStart"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setMemoHandler:(id)a3
{
  v4 = _Block_copy(a3);
  memoHandler = self->_memoHandler;
  self->_memoHandler = v4;
}

@end