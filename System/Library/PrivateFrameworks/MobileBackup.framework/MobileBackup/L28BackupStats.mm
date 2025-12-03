@interface L28BackupStats
+ (id)l28BackupStatsForAccount:(id)account snapshotFormat:(int64_t)format backupReason:(int64_t)reason backupError:(id)error error:(id *)a7;
- (L28BackupStats)initWithPlistDict:(id)dict;
- (id)_dictionaryRepresentation;
- (id)l28StatsTelemetryPolicy:(int64_t)policy plistPath:(id)path snapshotFormat:(int64_t)format backupReason:(int64_t)reason backupError:(id)error error:(id *)a8;
- (void)_nullifyL28Stats;
- (void)computeStatsOnL28BackupHistory;
- (void)updateL28HistoryWithCurrentBackupState:(BOOL)state snapshotFormat:(int64_t)format isSuccessful:(BOOL)successful quotaExceeded:(BOOL)exceeded osVersion:(id)version currentDay:(int64_t)day isNewDay:(BOOL)newDay;
@end

@implementation L28BackupStats

+ (id)l28BackupStatsForAccount:(id)account snapshotFormat:(int64_t)format backupReason:(int64_t)reason backupError:(id)error error:(id *)a7
{
  accountCopy = account;
  errorCopy = error;
  persona = [accountCopy persona];
  l28BackupTelemetryPlistPath = [persona l28BackupTelemetryPlistPath];

  if (!l28BackupTelemetryPlistPath)
  {
    __assert_rtn("+[L28BackupStats l28BackupStatsForAccount:snapshotFormat:backupReason:backupError:error:]", "MBL28BackupStats.m", 161, "plistPath");
  }

  v15 = +[NSDate date];
  absoluteDay = [v15 absoluteDay];

  v17 = [NSData dataWithContentsOfFile:l28BackupTelemetryPlistPath];
  if (!v17)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v18 = [NSPropertyListSerialization propertyListWithData:v17 options:2 format:0 error:a7];
  if (v18)
  {
LABEL_8:
    v21 = [[L28BackupStats alloc] initWithPlistDict:v18];
    v22 = v21;
    if (v21)
    {
      v20 = [(L28BackupStats *)v21 l28StatsTelemetryPolicy:absoluteDay plistPath:l28BackupTelemetryPlistPath snapshotFormat:format backupReason:reason backupError:errorCopy error:a7];
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_12;
  }

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *a7;
    *buf = 138412546;
    v26 = l28BackupTelemetryPlistPath;
    v27 = 2112;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error deserializing plist %@ : %@", buf, 0x16u);
    v24 = *a7;
    _MBLog();
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (L28BackupStats)initWithPlistDict:(id)dict
{
  dictCopy = dict;
  v15.receiver = self;
  v15.super_class = L28BackupStats;
  v5 = [(L28BackupStats *)&v15 init];
  if (v5)
  {
    v6 = [L28BackupBuffer alloc];
    v7 = [dictCopy objectForKeyedSubscript:@"L28Buffer"];
    v8 = [dictCopy objectForKeyedSubscript:@"L28BufferNextDayIndex"];
    intValue = [v8 intValue];
    v10 = [dictCopy objectForKeyedSubscript:@"L28BufferEndDay"];
    v11 = -[L28BackupBuffer _initWithBuffer:nextDayIndex:endDay:](v6, "_initWithBuffer:nextDayIndex:endDay:", v7, intValue, [v10 integerValue]);
    buffer = v5->_buffer;
    v5->_buffer = v11;

    v13 = [dictCopy objectForKeyedSubscript:@"L28lastTelemetryDay"];
    v5->_lastTelemetryDay = [v13 intValue];

    [(L28BackupStats *)v5 _nullifyL28Stats];
  }

  return v5;
}

- (id)l28StatsTelemetryPolicy:(int64_t)policy plistPath:(id)path snapshotFormat:(int64_t)format backupReason:(int64_t)reason backupError:(id)error error:(id *)a8
{
  pathCopy = path;
  errorCopy = error;
  lastTelemetryDay = self->_lastTelemetryDay;
  if (lastTelemetryDay != policy)
  {
    self->_lastTelemetryDay = policy;
    [(L28BackupStats *)self computeStatsOnL28BackupHistory];
  }

  IsManual = MBBackupReasonIsManual();
  v15 = [MBError isCKError:errorCopy withCode:25];
  v16 = MBProductVersion();
  LOBYTE(v30) = lastTelemetryDay != policy;
  [(L28BackupStats *)self updateL28HistoryWithCurrentBackupState:IsManual snapshotFormat:format isSuccessful:errorCopy == 0 quotaExceeded:v15 osVersion:v16 currentDay:policy isNewDay:v30];

  v17 = +[NSMutableDictionary dictionary];
  _slots = [(L28BackupBuffer *)self->_buffer _slots];
  [v17 setObject:_slots forKeyedSubscript:@"L28Buffer"];

  v19 = [NSNumber numberWithInt:[(L28BackupBuffer *)self->_buffer nextDayIndex]];
  [v17 setObject:v19 forKeyedSubscript:@"L28BufferNextDayIndex"];

  v20 = [NSNumber numberWithInteger:[(L28BackupBuffer *)self->_buffer endDay]];
  [v17 setObject:v20 forKeyedSubscript:@"L28BufferEndDay"];

  v21 = [NSNumber numberWithInteger:self->_lastTelemetryDay];
  [v17 setObject:v21 forKeyedSubscript:@"L28lastTelemetryDay"];

  v22 = [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:a8];
  v23 = v22;
  if (v22)
  {
    v24 = pathCopy;
    if ([v22 writeToFile:pathCopy atomically:1])
    {
      if (lastTelemetryDay != policy)
      {
        _dictionaryRepresentation = [(L28BackupStats *)self _dictionaryRepresentation];
        goto LABEL_14;
      }
    }

    else
    {
      v28 = MBGetDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Error writing plist to file", buf, 2u);
        _MBLog();
      }
    }
  }

  else
  {
    v26 = MBGetDefaultLog();
    v24 = pathCopy;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *a8;
      *buf = 138412290;
      v35 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Error serializing dictionary: %@", buf, 0xCu);
      v31 = *a8;
      _MBLog();
    }
  }

  _dictionaryRepresentation = 0;
LABEL_14:

  return _dictionaryRepresentation;
}

- (void)updateL28HistoryWithCurrentBackupState:(BOOL)state snapshotFormat:(int64_t)format isSuccessful:(BOOL)successful quotaExceeded:(BOOL)exceeded osVersion:(id)version currentDay:(int64_t)day isNewDay:(BOOL)newDay
{
  exceededCopy = exceeded;
  successfulCopy = successful;
  stateCopy = state;
  if (newDay)
  {
    versionCopy = version;
    v27 = +[NSMutableDictionary dictionary];
  }

  else
  {
    buffer = self->_buffer;
    versionCopy2 = version;
    _latestBackup = [(L28BackupBuffer *)buffer _latestBackup];
    v27 = [_latestBackup mutableCopy];
  }

  v20 = [NSNumber numberWithLongLong:format];
  [v27 setObject:v20 forKeyedSubscript:@"snapshotFormat"];

  [v27 setObject:version forKeyedSubscript:@"osVersion"];
  v21 = [v27 objectForKeyedSubscript:@"isQuotaExceeded"];
  v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 BOOLValue] | exceededCopy);
  [v27 setObject:v22 forKeyedSubscript:@"isQuotaExceeded"];

  v23 = [v27 objectForKeyedSubscript:@"successfulBackupCount"];
  v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 intValue] + successfulCopy);
  [v27 setObject:v24 forKeyedSubscript:@"successfulBackupCount"];

  v25 = [v27 objectForKeyedSubscript:@"successfulBackupManualCount"];
  v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v25 intValue] + (stateCopy && successfulCopy));
  [v27 setObject:v26 forKeyedSubscript:@"successfulBackupManualCount"];

  [(L28BackupBuffer *)self->_buffer _updateCurrentMetrics:v27 forDay:day];
}

- (void)computeStatsOnL28BackupHistory
{
  [(L28BackupStats *)self _nullifyL28Stats];
  nextDayIndex = [(L28BackupBuffer *)self->_buffer nextDayIndex];
  v28 = 0;
  v29 = 0;
  v4 = 0;
  v30 = 0;
  for (i = 27; i != -1; --i)
  {
    0x1C = [(L28BackupBuffer *)self->_buffer _slotAtIndex:nextDayIndex % 0x1C];
    v7 = [0x1C objectForKeyedSubscript:@"init"];
    bOOLValue = [v7 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v9 = [0x1C objectForKeyedSubscript:@"successfulBackupCount"];
      intValue = [v9 intValue];

      if (intValue < 1)
      {
        maxIntervalBetweenSuccessfulBackups = self->_maxIntervalBetweenSuccessfulBackups;
        if (maxIntervalBetweenSuccessfulBackups <= v30 + 1)
        {
          maxIntervalBetweenSuccessfulBackups = v30 + 1;
        }

        self->_maxIntervalBetweenSuccessfulBackups = maxIntervalBetweenSuccessfulBackups;
        ++v30;
      }

      else
      {
        self->_lastSuccessfulBackup = i;
        v11 = [0x1C objectForKeyedSubscript:@"successfulBackupCount"];
        self->_successfulBackupCount += [v11 intValue];

        v12 = [0x1C objectForKeyedSubscript:@"successfulBackupManualCount"];
        self->_successfulManualBackupCount += [v12 intValue];

        v30 = 0;
      }

      if ([0x1C count])
      {
        v14 = [0x1C objectForKeyedSubscript:@"isQuotaExceeded"];

        if (v14)
        {
          if (self->_isQuotaExceeded)
          {
            self->_isQuotaExceeded = 1;
          }

          else
          {
            v15 = [0x1C objectForKeyedSubscript:@"isQuotaExceeded"];
            self->_isQuotaExceeded = [v15 BOOLValue];
          }
        }

        v16 = [0x1C objectForKeyedSubscript:@"osVersion"];

        if (v16)
        {
          v17 = v4;
          v18 = [0x1C objectForKeyedSubscript:@"osVersion"];
          v19 = [v18 componentsSeparatedByString:@"."];
          firstObject = [v19 firstObject];

          if (!v29)
          {
            v29 = v18;
            v21 = firstObject;

            v28 = v21;
          }

          v4 = v17;
          if (self->_singleOSVersionMinor)
          {
            v22 = [v18 isEqualToString:v29];
          }

          else
          {
            v22 = 0;
          }

          self->_singleOSVersionMinor = v22;
          if (self->_singleOSVersionMajor)
          {
            v23 = [firstObject isEqualToString:v28];
          }

          else
          {
            v23 = 0;
          }

          self->_singleOSVersionMajor = v23;
        }

        v24 = [0x1C objectForKeyedSubscript:@"snapshotFormat"];
        v25 = v24;
        if (v24)
        {
          if (!v4)
          {
            v4 = v24;
          }

          if (self->_singleSnapshotFormat)
          {
            v26 = [v25 isEqualToNumber:v4];
          }

          else
          {
            v26 = 0;
          }

          self->_singleSnapshotFormat = v26;
        }
      }

      backupHistorySize = self->_backupHistorySize;
      if (backupHistorySize <= 0x1B)
      {
        self->_backupHistorySize = backupHistorySize + 1;
      }
    }

    ++nextDayIndex;
  }
}

- (void)_nullifyL28Stats
{
  *&self->_lastSuccessfulBackup = 0xFFFFFFFFLL;
  *&self->_backupHistorySize = 0;
  self->_maxIntervalBetweenSuccessfulBackups = -1;
  *&self->_isQuotaExceeded = 16843008;
}

- (id)_dictionaryRepresentation
{
  v3 = [NSNumber numberWithInt:self->_lastSuccessfulBackup, @"L28LastSuccessfulBackup"];
  v15[0] = v3;
  v14[1] = @"L28SuccessfulBackupCount";
  v4 = [NSNumber numberWithUnsignedInt:self->_successfulBackupCount];
  v15[1] = v4;
  v14[2] = @"L28MaxIntervalBetweenSuccessfulBackups";
  v5 = [NSNumber numberWithInt:self->_maxIntervalBetweenSuccessfulBackups];
  v15[2] = v5;
  v14[3] = @"L28IsQuotaExceeded";
  v6 = [NSNumber numberWithBool:self->_isQuotaExceeded];
  v15[3] = v6;
  v14[4] = @"L28SingleOSVersionMinor";
  v7 = [NSNumber numberWithBool:self->_singleOSVersionMinor];
  v15[4] = v7;
  v14[5] = @"L28SingleOSVersionMajor";
  v8 = [NSNumber numberWithBool:self->_singleOSVersionMajor];
  v15[5] = v8;
  v14[6] = @"L28BackupHistorySize";
  v9 = [NSNumber numberWithUnsignedInt:self->_backupHistorySize];
  v15[6] = v9;
  v14[7] = @"L28SuccessfulManualBackupCount";
  v10 = [NSNumber numberWithUnsignedInt:self->_successfulManualBackupCount];
  v15[7] = v10;
  v14[8] = @"L28SingleSnapshotFormat";
  v11 = [NSNumber numberWithBool:self->_singleSnapshotFormat];
  v15[8] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:9];

  return v12;
}

@end