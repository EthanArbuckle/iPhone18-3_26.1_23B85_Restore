@interface CDFControlDiagnostics
- (BOOL)collectLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (void)collectCCMetadataFrom:(id)from to:(id)to;
- (void)collectFWLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (void)collectLPMDebugDataFrom:(id)from to:(id)to;
- (void)collectTextLogsFrom:(id)from to:(id)to;
@end

@implementation CDFControlDiagnostics

- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  v31 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v10 = [&unk_28561CD88 objectAtIndexedSubscript:4];
  v11 = [fromCopy URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CD88 objectAtIndexedSubscript:4];
  v13 = [toCopy URLByAppendingPathComponent:v12 isDirectory:1];

  v26.receiver = self;
  v26.super_class = CDFControlDiagnostics;
  v14 = [(CDFSubsystemDiagnostics *)&v26 collectStateSnapshotsFrom:v11 to:v13 runtimeFlags:flags];
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

  lastPathComponent = [fromCopy lastPathComponent];
  v19 = [CDFSubsystemDiagnostics isFatalCollection:lastPathComponent];

  if (v19 && ((flags & 3) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2))
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

    if ((flags & 2) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2)
    {
      [(CDFControlDiagnostics *)self collectLPMDebugDataFrom:v11 to:v13];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)collectTextLogsFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  v7 = [&unk_28561CD88 objectAtIndexedSubscript:1];
  v18 = [fromCopy URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CD88 objectAtIndexedSubscript:1];
  v9 = [toCopy URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD28 from:v18 to:v9 mostRecent:3];
  v10 = [&unk_28561CD88 objectAtIndexedSubscript:2];
  v11 = [fromCopy URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CD88 objectAtIndexedSubscript:2];
  v13 = [toCopy URLByAppendingPathComponent:v12 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD40 from:v11 to:v13 mostRecent:3];
  v14 = [&unk_28561CD88 objectAtIndexedSubscript:3];
  v15 = [fromCopy URLByAppendingPathComponent:v14 isDirectory:1];

  v16 = [&unk_28561CD88 objectAtIndexedSubscript:3];
  v17 = [toCopy URLByAppendingPathComponent:v16 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD58 from:v15 to:v17 mostRecent:3];
}

- (void)collectFWLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  if ((flags & 3) != 0)
  {
    if ((flags & 0x100) != 0)
    {
      v7 = 20;
    }

    else
    {
      v7 = 3;
    }

    toCopy = to;
    fromCopy = from;
    v10 = [&unk_28561CD88 objectAtIndexedSubscript:5];
    v13 = [fromCopy URLByAppendingPathComponent:v10 isDirectory:1];

    v11 = [&unk_28561CD88 objectAtIndexedSubscript:5];
    v12 = [toCopy URLByAppendingPathComponent:v11 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CD70 from:v13 to:v12 mostRecent:v7];
  }
}

- (void)collectCCMetadataFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  v7 = [&unk_28561CD88 objectAtIndexedSubscript:0];
  v10 = [fromCopy URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CD88 objectAtIndexedSubscript:0];
  v9 = [toCopy URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(system|capture)\\.plist(\\.synced)?$" from:v10 to:v9];
}

- (BOOL)collectLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (!([(CDFSubsystemDiagnostics *)self buildEnv]| flags & 3))
  {
    goto LABEL_4;
  }

  if ([CDFSubsystemDiagnostics createSubsystemDirectoryStructure:fromCopy outputDir:toCopy subDirectoryList:&unk_28561CD88])
  {
    [(CDFControlDiagnostics *)self collectStateSnapshotsFrom:fromCopy to:toCopy runtimeFlags:flags];
    [(CDFControlDiagnostics *)self collectTextLogsFrom:fromCopy to:toCopy];
    [(CDFControlDiagnostics *)self collectCCMetadataFrom:fromCopy to:toCopy];
    [(CDFControlDiagnostics *)self collectFWLogsFrom:fromCopy to:toCopy runtimeFlags:flags];
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

- (void)collectLPMDebugDataFrom:(id)from to:(id)to
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  lastPathComponent = [fromCopy lastPathComponent];
  v9 = [lastPathComponent containsString:@"StateSnapshots"];

  if (v9)
  {
    lastPathComponent2 = [toCopy lastPathComponent];
    v11 = [lastPathComponent2 containsString:@"StateSnapshots"];

    if (v11)
    {
      v12 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^Crashlog\\.(BT2G|BT5G|BTLPS|BTMAIN|BTS)\\.bin(\\.synced)?$|^Crashlog\\.WDMAInfo\\.txt(\\.synced)?$" from:fromCopy to:toCopy];
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
        v14 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(COEX\\.rta\\.bin|BT2G\\.(dmem|imem|mxwrap)\\.bin|BT5G\\.(dmem|imem|mxwrap)\\.bin|BTLPS\\.(dmem|imem|mxwrap|regdump)\\.bin|BTMAIN\\.(apiram|dtcm|itcm|memswapptt|mxwrap|regdump|sram)\\.bin|BTSEC\\.(dtcm|itcm|mxwrap|regdump)\\.bin)(\\.synced)?$" from:fromCopy to:toCopy];
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