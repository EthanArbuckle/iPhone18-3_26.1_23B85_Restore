@interface L28BackupStats
+ (id)l28BackupStatsForAccount:(id)a3 snapshotFormat:(int64_t)a4 backupReason:(int64_t)a5 backupError:(id)a6 error:(id *)a7;
- (L28BackupStats)initWithPlistDict:(id)a3;
- (id)_dictionaryRepresentation;
- (id)l28StatsTelemetryPolicy:(int64_t)a3 plistPath:(id)a4 snapshotFormat:(int64_t)a5 backupReason:(int64_t)a6 backupError:(id)a7 error:(id *)a8;
- (void)_nullifyL28Stats;
- (void)computeStatsOnL28BackupHistory;
- (void)updateL28HistoryWithCurrentBackupState:(BOOL)a3 snapshotFormat:(int64_t)a4 isSuccessful:(BOOL)a5 quotaExceeded:(BOOL)a6 osVersion:(id)a7 currentDay:(int64_t)a8 isNewDay:(BOOL)a9;
@end

@implementation L28BackupStats

+ (id)l28BackupStatsForAccount:(id)a3 snapshotFormat:(int64_t)a4 backupReason:(int64_t)a5 backupError:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = [v11 persona];
  v14 = [v13 l28BackupTelemetryPlistPath];

  if (!v14)
  {
    __assert_rtn("+[L28BackupStats l28BackupStatsForAccount:snapshotFormat:backupReason:backupError:error:]", "MBL28BackupStats.m", 161, "plistPath");
  }

  v15 = +[NSDate date];
  v16 = [v15 absoluteDay];

  v17 = [NSData dataWithContentsOfFile:v14];
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
      v20 = [(L28BackupStats *)v21 l28StatsTelemetryPolicy:v16 plistPath:v14 snapshotFormat:a4 backupReason:a5 backupError:v12 error:a7];
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
    v26 = v14;
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

- (L28BackupStats)initWithPlistDict:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = L28BackupStats;
  v5 = [(L28BackupStats *)&v15 init];
  if (v5)
  {
    v6 = [L28BackupBuffer alloc];
    v7 = [v4 objectForKeyedSubscript:@"L28Buffer"];
    v8 = [v4 objectForKeyedSubscript:@"L28BufferNextDayIndex"];
    v9 = [v8 intValue];
    v10 = [v4 objectForKeyedSubscript:@"L28BufferEndDay"];
    v11 = -[L28BackupBuffer _initWithBuffer:nextDayIndex:endDay:](v6, "_initWithBuffer:nextDayIndex:endDay:", v7, v9, [v10 integerValue]);
    buffer = v5->_buffer;
    v5->_buffer = v11;

    v13 = [v4 objectForKeyedSubscript:@"L28lastTelemetryDay"];
    v5->_lastTelemetryDay = [v13 intValue];

    [(L28BackupStats *)v5 _nullifyL28Stats];
  }

  return v5;
}

- (id)l28StatsTelemetryPolicy:(int64_t)a3 plistPath:(id)a4 snapshotFormat:(int64_t)a5 backupReason:(int64_t)a6 backupError:(id)a7 error:(id *)a8
{
  v33 = a4;
  v12 = a7;
  lastTelemetryDay = self->_lastTelemetryDay;
  if (lastTelemetryDay != a3)
  {
    self->_lastTelemetryDay = a3;
    [(L28BackupStats *)self computeStatsOnL28BackupHistory];
  }

  IsManual = MBBackupReasonIsManual();
  v15 = [MBError isCKError:v12 withCode:25];
  v16 = MBProductVersion();
  LOBYTE(v30) = lastTelemetryDay != a3;
  [(L28BackupStats *)self updateL28HistoryWithCurrentBackupState:IsManual snapshotFormat:a5 isSuccessful:v12 == 0 quotaExceeded:v15 osVersion:v16 currentDay:a3 isNewDay:v30];

  v17 = +[NSMutableDictionary dictionary];
  v18 = [(L28BackupBuffer *)self->_buffer _slots];
  [v17 setObject:v18 forKeyedSubscript:@"L28Buffer"];

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
    v24 = v33;
    if ([v22 writeToFile:v33 atomically:1])
    {
      if (lastTelemetryDay != a3)
      {
        v25 = [(L28BackupStats *)self _dictionaryRepresentation];
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
    v24 = v33;
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

  v25 = 0;
LABEL_14:

  return v25;
}

- (void)updateL28HistoryWithCurrentBackupState:(BOOL)a3 snapshotFormat:(int64_t)a4 isSuccessful:(BOOL)a5 quotaExceeded:(BOOL)a6 osVersion:(id)a7 currentDay:(int64_t)a8 isNewDay:(BOOL)a9
{
  v11 = a6;
  v12 = a5;
  v14 = a3;
  if (a9)
  {
    v16 = a7;
    v27 = +[NSMutableDictionary dictionary];
  }

  else
  {
    buffer = self->_buffer;
    v18 = a7;
    v19 = [(L28BackupBuffer *)buffer _latestBackup];
    v27 = [v19 mutableCopy];
  }

  v20 = [NSNumber numberWithLongLong:a4];
  [v27 setObject:v20 forKeyedSubscript:@"snapshotFormat"];

  [v27 setObject:a7 forKeyedSubscript:@"osVersion"];
  v21 = [v27 objectForKeyedSubscript:@"isQuotaExceeded"];
  v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v21 BOOLValue] | v11);
  [v27 setObject:v22 forKeyedSubscript:@"isQuotaExceeded"];

  v23 = [v27 objectForKeyedSubscript:@"successfulBackupCount"];
  v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 intValue] + v12);
  [v27 setObject:v24 forKeyedSubscript:@"successfulBackupCount"];

  v25 = [v27 objectForKeyedSubscript:@"successfulBackupManualCount"];
  v26 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v25 intValue] + (v14 && v12));
  [v27 setObject:v26 forKeyedSubscript:@"successfulBackupManualCount"];

  [(L28BackupBuffer *)self->_buffer _updateCurrentMetrics:v27 forDay:a8];
}

- (void)computeStatsOnL28BackupHistory
{
  [(L28BackupStats *)self _nullifyL28Stats];
  v3 = [(L28BackupBuffer *)self->_buffer nextDayIndex];
  v28 = 0;
  v29 = 0;
  v4 = 0;
  v30 = 0;
  for (i = 27; i != -1; --i)
  {
    v6 = [(L28BackupBuffer *)self->_buffer _slotAtIndex:v3 % 0x1C];
    v7 = [v6 objectForKeyedSubscript:@"init"];
    v8 = [v7 BOOLValue];

    if ((v8 & 1) == 0)
    {
      v9 = [v6 objectForKeyedSubscript:@"successfulBackupCount"];
      v10 = [v9 intValue];

      if (v10 < 1)
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
        v11 = [v6 objectForKeyedSubscript:@"successfulBackupCount"];
        self->_successfulBackupCount += [v11 intValue];

        v12 = [v6 objectForKeyedSubscript:@"successfulBackupManualCount"];
        self->_successfulManualBackupCount += [v12 intValue];

        v30 = 0;
      }

      if ([v6 count])
      {
        v14 = [v6 objectForKeyedSubscript:@"isQuotaExceeded"];

        if (v14)
        {
          if (self->_isQuotaExceeded)
          {
            self->_isQuotaExceeded = 1;
          }

          else
          {
            v15 = [v6 objectForKeyedSubscript:@"isQuotaExceeded"];
            self->_isQuotaExceeded = [v15 BOOLValue];
          }
        }

        v16 = [v6 objectForKeyedSubscript:@"osVersion"];

        if (v16)
        {
          v17 = v4;
          v18 = [v6 objectForKeyedSubscript:@"osVersion"];
          v19 = [v18 componentsSeparatedByString:@"."];
          v20 = [v19 firstObject];

          if (!v29)
          {
            v29 = v18;
            v21 = v20;

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
            v23 = [v20 isEqualToString:v28];
          }

          else
          {
            v23 = 0;
          }

          self->_singleOSVersionMajor = v23;
        }

        v24 = [v6 objectForKeyedSubscript:@"snapshotFormat"];
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

    ++v3;
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