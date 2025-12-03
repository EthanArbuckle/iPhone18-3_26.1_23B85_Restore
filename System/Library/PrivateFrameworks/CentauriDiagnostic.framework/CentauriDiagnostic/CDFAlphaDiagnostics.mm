@interface CDFAlphaDiagnostics
- (BOOL)collectLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (void)collectCCMetadataFrom:(id)from to:(id)to;
- (void)collectFWLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (void)collectTextLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (void)collectWLANPacketCapsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
@end

@implementation CDFAlphaDiagnostics

- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  v31 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  v10 = [&unk_28561CED8 objectAtIndexedSubscript:3];
  v11 = [fromCopy URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [&unk_28561CED8 objectAtIndexedSubscript:3];
  v13 = [toCopy URLByAppendingPathComponent:v12 isDirectory:1];

  v26.receiver = self;
  v26.super_class = CDFAlphaDiagnostics;
  v14 = [(CDFSubsystemDiagnostics *)&v26 collectStateSnapshotsFrom:v11 to:v13 runtimeFlags:flags];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = "in";
    if (v14)
    {
      v15 = &unk_2433B42E6;
    }

    *buf = 136315394;
    v28 = "[CDFAlphaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
    v29 = 2082;
    v30 = v15;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for subsystem logs", buf, 0x16u);
  }

  if ((flags & 1) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2)
  {
    v16 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(ap\\d+_(AllPeersVerbose|PrintState)_IO80211PeerManager\\.txt|awdl\\d+_(AllPeersVerbose|PrintState)_IO80211AWDLPeerManager\\.txt|en\\d+_(AllPeersVerbose|PrintState)_IO80211PeerManager\\.txt|nan\\d+_(AllPeersVerbose|PrintState)_IO80211NANPeerManager\\.txt|Apple80211Power\\.txt|AppleWLANCommander\\.txt|AppleWLANInterface(AWDL|Hotspot|STA)\\.txt|AppleWLANRxPktFilter\\.txt|ConfigManagerState\\.txt|CoreState\\.txt|DefaultRxSubQueue\\.txt|IPCAdapter\\.txt|LLWRxSubQueue\\.txt)(\\.synced)?$" from:v11 to:v13];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = "in";
      if (v16)
      {
        v17 = &unk_2433B42E6;
      }

      *buf = 136315394;
      v28 = "[CDFAlphaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v29 = 2082;
      v30 = v17;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for alpha snapshots", buf, 0x16u);
    }

    lastPathComponent = [fromCopy lastPathComponent];
    v19 = [CDFSubsystemDiagnostics isFatalCollection:lastPathComponent];

    if (v19)
    {
      v20 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^Crashlog\\.(WFL2G|WFL5G|WFMAIN|WFP2G|WFP5G|WFRX|WFSC|WFTX)\\.bin(\\.synced)?$|^Crashlog\\.WDMAInfo\\.txt(\\.synced)?$" from:v11 to:v13];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v21 = "in";
        if (v20)
        {
          v21 = &unk_2433B42E6;
        }

        *buf = 136315394;
        v28 = "[CDFAlphaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
        v29 = 2082;
        v30 = v21;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for alpha crashlogs", buf, 0x16u);
      }

      if ([(CDFSubsystemDiagnostics *)self collectCoredumps])
      {
        v22 = [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(COEX\\.rta\\.bin|WFL2G\\.(dmem|imem|mxwrap|recipeoverride|recipeoverridesram|regdump|rtmem|txscr)\\.bin|WFL5G\\.(dmem|imem|mxwrap|recipeoverride|recipeoverridesram|regdump|rtmem|txscr)\\.bin|WFMAIN\\.(dtcm|itcm|mxwrap|regdump|socram|sram|memswapptt)\\.bin|WFP2G\\.(dmem|imem|mxwrap|regdump|rtmem)\\.bin|WFP5G\\.(dmem|imem|mxwrap|regdump|rtmem)\\.bin|WFRX\\.(dmem|imem|mxwrap|regdump|rtmem)\\.bin|WFSC\\.(dmem|imem|mxwrap|regdump|rtmem)\\.bin|WFTX\\.(dmem|imem|mxwrap|regdump|rtmem)\\.bin|MemSwapWorkingCopy\\.bin)(\\.synced)?$" from:v11 to:v13];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = "in";
          if (v22)
          {
            v23 = &unk_2433B42E6;
          }

          *buf = 136315394;
          v28 = "[CDFAlphaDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
          v29 = 2082;
          v30 = v23;
          _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for alpha coredumps", buf, 0x16u);
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)collectTextLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  flagsCopy = flags;
  fromCopy = from;
  toCopy = to;
  v9 = [&unk_28561CED8 objectAtIndexedSubscript:1];
  v10 = [fromCopy URLByAppendingPathComponent:v9 isDirectory:1];

  v11 = [&unk_28561CED8 objectAtIndexedSubscript:1];
  v12 = [toCopy URLByAppendingPathComponent:v11 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE00 from:v10 to:v12 mostRecent:3];
  v13 = [&unk_28561CED8 objectAtIndexedSubscript:2];
  v14 = [fromCopy URLByAppendingPathComponent:v13 isDirectory:1];

  v15 = [&unk_28561CED8 objectAtIndexedSubscript:2];
  v16 = [toCopy URLByAppendingPathComponent:v15 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE18 from:v14 to:v16 mostRecent:3];
  if ((flagsCopy & 1) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2)
  {
    v17 = [&unk_28561CED8 objectAtIndexedSubscript:4];
    v18 = [fromCopy URLByAppendingPathComponent:v17 isDirectory:1];

    [&unk_28561CED8 objectAtIndexedSubscript:4];
    v26 = v12;
    v20 = v19 = v10;
    v21 = [toCopy URLByAppendingPathComponent:v20 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE30 from:v18 to:v21 mostRecent:3];
    v22 = [&unk_28561CED8 objectAtIndexedSubscript:7];
    v23 = [fromCopy URLByAppendingPathComponent:v22 isDirectory:1];

    v24 = [&unk_28561CED8 objectAtIndexedSubscript:7];
    v25 = [toCopy URLByAppendingPathComponent:v24 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE48 from:v23 to:v25 mostRecent:3];
    v10 = v19;
    v12 = v26;
  }
}

- (void)collectWLANPacketCapsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  flagsCopy = flags;
  fromCopy = from;
  toCopy = to;
  if ((flagsCopy & 1) != 0 || [(CDFSubsystemDiagnostics *)self buildEnv]== 2)
  {
    if ((flagsCopy & 0x100) != 0)
    {
      v9 = 10;
    }

    else
    {
      v9 = 1;
    }

    v10 = [&unk_28561CED8 objectAtIndexedSubscript:6];
    v11 = [fromCopy URLByAppendingPathComponent:v10 isDirectory:1];

    v12 = [&unk_28561CED8 objectAtIndexedSubscript:6];
    v13 = [toCopy URLByAppendingPathComponent:v12 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE60 from:v11 to:v13 mostRecent:v9];
    v14 = [&unk_28561CED8 objectAtIndexedSubscript:5];
    v15 = [fromCopy URLByAppendingPathComponent:v14 isDirectory:1];

    v16 = [&unk_28561CED8 objectAtIndexedSubscript:5];
    v17 = [toCopy URLByAppendingPathComponent:v16 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE78 from:v15 to:v17 mostRecent:v9];
    v18 = [&unk_28561CED8 objectAtIndexedSubscript:8];
    v19 = [fromCopy URLByAppendingPathComponent:v18 isDirectory:1];

    v20 = [&unk_28561CED8 objectAtIndexedSubscript:8];
    v21 = [toCopy URLByAppendingPathComponent:v20 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CE90 from:v19 to:v21 mostRecent:v9];
  }
}

- (void)collectFWLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  if (flags)
  {
    if ((flags & 0x100) != 0)
    {
      v7 = 90;
    }

    else
    {
      v7 = 6;
    }

    if ((flags & 0x100) != 0)
    {
      v8 = 10;
    }

    else
    {
      v8 = 7;
    }

    toCopy = to;
    fromCopy = from;
    v11 = [&unk_28561CED8 objectAtIndexedSubscript:9];
    v18 = [fromCopy URLByAppendingPathComponent:v11 isDirectory:1];

    v12 = [&unk_28561CED8 objectAtIndexedSubscript:9];
    v13 = [toCopy URLByAppendingPathComponent:v12 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CEA8 from:v18 to:v13 mostRecent:v8];
    v14 = [&unk_28561CED8 objectAtIndexedSubscript:10];
    v15 = [fromCopy URLByAppendingPathComponent:v14 isDirectory:1];

    v16 = [&unk_28561CED8 objectAtIndexedSubscript:10];
    v17 = [toCopy URLByAppendingPathComponent:v16 isDirectory:1];

    [CDFSubsystemDiagnostics collectFilesWithRegexes:&unk_28561CEC0 from:v15 to:v17 mostRecent:v7];
  }
}

- (void)collectCCMetadataFrom:(id)from to:(id)to
{
  toCopy = to;
  fromCopy = from;
  v7 = [&unk_28561CED8 objectAtIndexedSubscript:0];
  v10 = [fromCopy URLByAppendingPathComponent:v7 isDirectory:1];

  v8 = [&unk_28561CED8 objectAtIndexedSubscript:0];
  v9 = [toCopy URLByAppendingPathComponent:v8 isDirectory:1];

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(system|capture)\\.plist(\\.synced)?$" from:v10 to:v9];
}

- (BOOL)collectLogsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (!([(CDFSubsystemDiagnostics *)self buildEnv]| flags & 1))
  {
    goto LABEL_4;
  }

  if ([CDFSubsystemDiagnostics createSubsystemDirectoryStructure:fromCopy outputDir:toCopy subDirectoryList:&unk_28561CED8])
  {
    [(CDFAlphaDiagnostics *)self collectStateSnapshotsFrom:fromCopy to:toCopy runtimeFlags:flags];
    [(CDFAlphaDiagnostics *)self collectTextLogsFrom:fromCopy to:toCopy runtimeFlags:flags];
    [(CDFAlphaDiagnostics *)self collectCCMetadataFrom:fromCopy to:toCopy];
    [(CDFAlphaDiagnostics *)self collectWLANPacketCapsFrom:fromCopy to:toCopy runtimeFlags:flags];
    [(CDFAlphaDiagnostics *)self collectFWLogsFrom:fromCopy to:toCopy runtimeFlags:flags];
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v10 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[CDFAlphaDiagnostics collectLogsFrom:to:runtimeFlags:]";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create subdirectories", &v13, 0xCu);
    v10 = 0;
  }

LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end