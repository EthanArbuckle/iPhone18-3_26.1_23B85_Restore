@interface CDFBetaDiagnostics
- (BOOL)collectLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
- (BOOL)collectStateSnapshotsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
- (void)collectCCMetadataFrom:(id)a3 to:(id)a4;
- (void)collectFWLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
- (void)collectTextLogsFrom:(id)a3 to:(id)a4;
@end

@implementation CDFBetaDiagnostics

- (BOOL)collectStateSnapshotsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [&unk_28561CDE8 objectAtIndexedSubscript:3];
  v11 = [v8 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CDE8 objectAtIndexedSubscript:3];
  v13 = [v9 URLByAppendingPathComponent:v12 isDirectory:1];

  v24.receiver = self;
  v24.super_class = CDFBetaDiagnostics;
  v14 = [(CDFSubsystemDiagnostics *)&v24 collectStateSnapshotsFrom:v11 to:v13 runtimeFlags:a5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = "in";
    if (v14)
    {
      v15 = &unk_2433B42E6;
    }

    *buf = 136315394;
    v26 = "[CDFBetaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for subsystem logs", buf, 0x16u);
  }

  v16 = [v8 lastPathComponent];
  v17 = [CDFSubsystemDiagnostics isFatalCollection:v16];

  if (v17 && ((a5 & 2) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2))
  {
    v18 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^Crashlog\\.(BT2G|BT5G|BTLPS|BTMAIN|BTS)\\.bin(\\.synced)?$|^Crashlog\\.WDMAInfo\\.txt(\\.synced)?$" from:v11 to:v13];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = "in";
      if (v18)
      {
        v19 = &unk_2433B42E6;
      }

      *buf = 136315394;
      v26 = "[CDFBetaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v27 = 2082;
      v28 = v19;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for beta crashlogs", buf, 0x16u);
    }

    if ([(CDFSubsystemDiagnostics *)self collectCoredumps])
    {
      v20 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(COEX\\.rta\\.bin|BT2G\\.(dmem|imem|mxwrap)\\.bin|BT5G\\.(dmem|imem|mxwrap)\\.bin|BTLPS\\.(dmem|imem|mxwrap|regdump)\\.bin|BTMAIN\\.(apiram|dtcm|itcm|memswapptt|mxwrap|regdump|sram)\\.bin|BTSEC\\.(dtcm|itcm|mxwrap|regdump)\\.bin|MemSwapWorkingCopy\\.bin)(\\.synced)?$" from:v11 to:v13];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = "in";
        if (v20)
        {
          v21 = &unk_2433B42E6;
        }

        *buf = 136315394;
        v26 = "[CDFBetaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
        v27 = 2082;
        v28 = v21;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for beta coredumps", buf, 0x16u);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)collectTextLogsFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [&unk_28561CDE8 objectAtIndexedSubscript:1];
  v14 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CDE8 objectAtIndexedSubscript:1];
  v9 = [v5 URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CDA0 from:v14 to:v9 mostRecent:3];
  v10 = [&unk_28561CDE8 objectAtIndexedSubscript:2];
  v11 = [v6 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CDE8 objectAtIndexedSubscript:2];
  v13 = [v5 URLByAppendingPathComponent:v12 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CDB8 from:v11 to:v13 mostRecent:3];
}

- (void)collectFWLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  v5 = a5;
  if ((a5 & 2) != 0)
  {
    v7 = a4;
    v8 = a3;
    v9 = [&unk_28561CDE8 objectAtIndexedSubscript:4];
    v13 = [v8 URLByAppendingPathComponent:v9 isDirectory:1];

    v10 = [&unk_28561CDE8 objectAtIndexedSubscript:4];
    v11 = [v7 URLByAppendingPathComponent:v10 isDirectory:1];

    if ((v5 & 0x100) != 0)
    {
      v12 = 20;
    }

    else
    {
      v12 = 5;
    }

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CDD0 from:v13 to:v11 mostRecent:v12];
  }
}

- (void)collectCCMetadataFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [&unk_28561CDE8 objectAtIndexedSubscript:0];
  v10 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CDE8 objectAtIndexedSubscript:0];
  v9 = [v5 URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(system|capture)\\.plist(\\.synced)?$" from:v10 to:v9];
}

- (BOOL)collectLogsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!([(CDFSubsystemDiagnostics *)self buildEnv]| a5 & 2))
  {
    goto LABEL_4;
  }

  if ([CDFSubsystemDiagnostics createSubsystemDirectoryStructure:v8 outputDir:v9 subDirectoryList:&unk_28561CDE8])
  {
    [(CDFBetaDiagnostics *)self collectStateSnapshotsFrom:v8 to:v9 runtimeFlags:a5];
    [(CDFBetaDiagnostics *)self collectTextLogsFrom:v8 to:v9];
    [(CDFBetaDiagnostics *)self collectCCMetadataFrom:v8 to:v9];
    [(CDFBetaDiagnostics *)self collectFWLogsFrom:v8 to:v9 runtimeFlags:a5];
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v10 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CDFBetaDiagnostics collectLogsFrom:to:runtimeFlags:]";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create subdirectories", &v13, 0xCu);
    v10 = 0;
  }

LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end