@interface CDFControlDiagnostics
- (BOOL)collectLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
- (BOOL)collectStateSnapshotsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
- (void)collectCCMetadataFrom:(id)a3 to:(id)a4;
- (void)collectFWLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
- (void)collectLPMDebugDataFrom:(id)a3 to:(id)a4;
- (void)collectTextLogsFrom:(id)a3 to:(id)a4;
@end

@implementation CDFControlDiagnostics

- (BOOL)collectStateSnapshotsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [&unk_28561CD88 objectAtIndexedSubscript:4];
  v11 = [v8 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CD88 objectAtIndexedSubscript:4];
  v13 = [v9 URLByAppendingPathComponent:v12 isDirectory:1];

  v26.receiver = self;
  v26.super_class = CDFControlDiagnostics;
  v14 = [(CDFSubsystemDiagnostics *)&v26 collectStateSnapshotsFrom:v11 to:v13 runtimeFlags:a5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = "in";
    if (v14)
    {
      v15 = &unk_2433B42E6;
    }

    *buf = 136315394;
    v28 = "[CDFControlDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
    v29 = 2082;
    v30 = v15;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for subsystem logs", buf, 0x16u);
  }

  v16 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AppleCentauriManagerStateDump|CentauriMemoryAccessLog)\\.txt(\\.synced)?$" from:v11 to:v13];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v17 = "in";
    if (v16)
    {
      v17 = &unk_2433B42E6;
    }

    *buf = 136315394;
    v28 = "[CDFControlDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
    v29 = 2082;
    v30 = v17;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for control snapshots", buf, 0x16u);
  }

  v18 = [v8 lastPathComponent];
  v19 = [CDFSubsystemDiagnostics isFatalCollection:v18];

  if (v19 && ((a5 & 3) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2))
  {
    v20 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(Crashlog\\.CTRL\\.bin|Crashlog\\.WDMAInfo\\.txt)(\\.synced)?$" from:v11 to:v13];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = "in";
      if (v20)
      {
        v21 = &unk_2433B42E6;
      }

      *buf = 136315394;
      v28 = "[CDFControlDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v29 = 2082;
      v30 = v21;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for control crashlogs", buf, 0x16u);
    }

    if ([(CDFSubsystemDiagnostics *)self collectCoredumps])
    {
      v22 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(COEX\\.rta\\.bin|CTRL\\.regdump\\.bin|CTRL\\.sram\\.clientport\\.bin|CTRL\\.sram\\.loadport\\.bin|MemSwapWorkingCopy\\.bin|CTRL\\.memswapptt\\.bin)(\\.synced)?$" from:v11 to:v13];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v23 = "in";
        if (v22)
        {
          v23 = &unk_2433B42E6;
        }

        *buf = 136315394;
        v28 = "[CDFControlDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
        v29 = 2082;
        v30 = v23;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for control coredumps", buf, 0x16u);
      }
    }

    if ((a5 & 2) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2)
    {
      [(CDFControlDiagnostics *)self collectLPMDebugDataFrom:v11 to:v13];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)collectTextLogsFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [&unk_28561CD88 objectAtIndexedSubscript:1];
  v18 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CD88 objectAtIndexedSubscript:1];
  v9 = [v5 URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD28 from:v18 to:v9 mostRecent:3];
  v10 = [&unk_28561CD88 objectAtIndexedSubscript:2];
  v11 = [v6 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CD88 objectAtIndexedSubscript:2];
  v13 = [v5 URLByAppendingPathComponent:v12 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD40 from:v11 to:v13 mostRecent:3];
  v14 = [&unk_28561CD88 objectAtIndexedSubscript:3];
  v15 = [v6 URLByAppendingPathComponent:v14 isDirectory:1];

  v16 = [&unk_28561CD88 objectAtIndexedSubscript:3];
  v17 = [v5 URLByAppendingPathComponent:v16 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD58 from:v15 to:v17 mostRecent:3];
}

- (void)collectFWLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  if ((a5 & 3) != 0)
  {
    if ((a5 & 0x100) != 0)
    {
      v7 = 20;
    }

    else
    {
      v7 = 3;
    }

    v8 = a4;
    v9 = a3;
    v10 = [&unk_28561CD88 objectAtIndexedSubscript:5];
    v13 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];

    v11 = [&unk_28561CD88 objectAtIndexedSubscript:5];
    v12 = [v8 URLByAppendingPathComponent:v11 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD70 from:v13 to:v12 mostRecent:v7];
  }
}

- (void)collectCCMetadataFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [&unk_28561CD88 objectAtIndexedSubscript:0];
  v10 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CD88 objectAtIndexedSubscript:0];
  v9 = [v5 URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(system|capture)\\.plist(\\.synced)?$" from:v10 to:v9];
}

- (BOOL)collectLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!([(CDFSubsystemDiagnostics *)self buildEnv]| a5 & 3))
  {
    goto LABEL_4;
  }

  if ([CDFSubsystemDiagnostics createSubsystemDirectoryStructure:v8 outputDir:v9 subDirectoryList:&unk_28561CD88])
  {
    [(CDFControlDiagnostics *)self collectStateSnapshotsFrom:v8 to:v9 runtimeFlags:a5];
    [(CDFControlDiagnostics *)self collectTextLogsFrom:v8 to:v9];
    [(CDFControlDiagnostics *)self collectCCMetadataFrom:v8 to:v9];
    [(CDFControlDiagnostics *)self collectFWLogsFrom:v8 to:v9 runtimeFlags:a5];
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v10 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CDFControlDiagnostics collectLogsFrom:to:runtimeFlags:]";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create subdirectories", &v13, 0xCu);
    v10 = 0;
  }

LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)collectLPMDebugDataFrom:(id)a3 to:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 lastPathComponent];
  v9 = [v8 containsString:@"StateSnapshots"];

  if (v9)
  {
    v10 = [v7 lastPathComponent];
    v11 = [v10 containsString:@"StateSnapshots"];

    if (v11)
    {
      v12 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^Crashlog\\.(BT2G|BT5G|BTLPS|BTMAIN|BTS)\\.bin(\\.synced)?$|^Crashlog\\.WDMAInfo\\.txt(\\.synced)?$" from:v6 to:v7];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v13 = "in";
        if (v12)
        {
          v13 = &unk_2433B42E6;
        }

        v17 = 136315394;
        v18 = "[CDFControlDiagnostics collectLPMDebugDataFrom:to:]";
        v19 = 2082;
        v20 = v13;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for lpm related beta crashlogs", &v17, 0x16u);
      }

      if ([(CDFSubsystemDiagnostics *)self collectCoredumps])
      {
        v14 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(COEX\\.rta\\.bin|BT2G\\.(dmem|imem|mxwrap)\\.bin|BT5G\\.(dmem|imem|mxwrap)\\.bin|BTLPS\\.(dmem|imem|mxwrap|regdump)\\.bin|BTMAIN\\.(apiram|dtcm|itcm|memswapptt|mxwrap|regdump|sram)\\.bin|BTSEC\\.(dtcm|itcm|mxwrap|regdump)\\.bin)(\\.synced)?$" from:v6 to:v7];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v15 = "in";
          if (v14)
          {
            v15 = &unk_2433B42E6;
          }

          v17 = 136315394;
          v18 = "[CDFControlDiagnostics collectLPMDebugDataFrom:to:]";
          v19 = 2082;
          v20 = v15;
          _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for beta coredumps", &v17, 0x16u);
        }
      }
    }

    else
    {
      [CDFControlDiagnostics collectLPMDebugDataFrom:to:];
    }
  }

  else
  {
    [CDFControlDiagnostics collectLPMDebugDataFrom:to:];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)collectLPMDebugDataFrom:to:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[CDFControlDiagnostics collectLPMDebugDataFrom:to:]";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid src dir", &v1, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)collectLPMDebugDataFrom:to:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[CDFControlDiagnostics collectLPMDebugDataFrom:to:]";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid dest dir", &v1, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end