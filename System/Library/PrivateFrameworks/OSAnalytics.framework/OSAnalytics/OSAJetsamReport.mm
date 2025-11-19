@interface OSAJetsamReport
+ (int64_t)_daysSince1970;
+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)a3 error:(id *)a4;
- (BOOL)alreadyDumpedSuspendedJetsamLogToday;
- (BOOL)isActionable;
- (BOOL)saveWithOptions:(id)a3;
- (OSAJetsamReport)initWithIncidentID:(id)a3 visibilityEndowmentState:(id)a4 audioAssertionState:(id)a5;
- (id)additionalIPSMetadata;
- (id)appleCareDetails;
- (unint64_t)getEventPriority:(id)a3 terminationReason:(unint64_t)a4 priority:(int64_t)a5;
- (void)_setDumpedSuspendedJetsamLog;
- (void)dealloc;
- (void)fetchWiredMemoryInfo;
- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4;
- (void)instrumentEvents:(BOOL)a3;
- (void)updateLogLimitFor:(unint64_t)a3;
@end

@implementation OSAJetsamReport

- (void)fetchWiredMemoryInfo
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 unsignedIntValue];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (OSAJetsamReport)initWithIncidentID:(id)a3 visibilityEndowmentState:(id)a4 audioAssertionState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = OSAJetsamReport;
  v12 = [(OSAReport *)&v22 init];
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      objc_storeStrong(&v12->super._incidentID, a3);
    }

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    visibilityEndowmentState = v13->_visibilityEndowmentState;
    v13->_visibilityEndowmentState = v14;

    if (v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    audioAssertionState = v13->_audioAssertionState;
    v13->_audioAssertionState = v16;

    largestActiveApp = v13->_largestActiveApp;
    v13->_largestActiveApp = &stru_1F2411100;

    v19 = objc_opt_new();
    killedActiveApps = v13->_killedActiveApps;
    v13->_killedActiveApps = v19;
  }

  return v13;
}

- (void)dealloc
{
  free(self->_snapshot);
  v3.receiver = self;
  v3.super_class = OSAJetsamReport;
  [(OSAJetsamReport *)&v3 dealloc];
}

- (id)appleCareDetails
{
  v8[3] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_killedActiveApps count])
  {
    v3 = [(NSMutableArray *)self->_killedActiveApps componentsJoinedByString:@"", self->_largestActiveApp];;
    v8[1] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_wiredBytes];
    v8[2] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)additionalIPSMetadata
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"incident_id";
  v3 = [(OSAReport *)self incidentID];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v4 mutableCopy];

  if (self->_aleFlag)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ale_flag"];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)saveWithOptions:(id)a3
{
  v6.receiver = self;
  v6.super_class = OSAJetsamReport;
  v4 = [(OSAReport *)&v6 saveWithOptions:a3];
  [(OSAJetsamReport *)self instrumentEvents:v4];
  return v4;
}

+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = memorystatus_control();
  if ((v5 & 0x80000000) != 0)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = __error();
    [v8 stringWithFormat:@"memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) failed: %s", strerror(*v9), v22];
    goto LABEL_13;
  }

  v6 = v5;
  if (!v5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"kernel returned (0) from memorystatus_control(MEMORYSTATUS_CMD_GET_JETSAM_SNAPSHOT) -- no jetsam data available", v21, v22];
    goto LABEL_13;
  }

  v7 = v5;
  if (v5 >= 0xC9 && __ROR8__(0x8E38E38E38E38E39 * (v5 - 200), 5) >= 0xE38E38E38E38E4uLL)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"memorystatus_control gave snapshot size (%lu) not multiple of jetsam entry type (%lu)", v5 - 200, 288];
    v14 = LABEL_13:;
    goto LABEL_14;
  }

  v10 = malloc_type_malloc(v5, 0x19E0B1BAuLL);
  if (v10)
  {
    v11 = memorystatus_control();
    if (v11 != v6)
    {
      v18 = v11;
      v19 = MEMORY[0x1E696AEC0];
      v20 = __error();
      v14 = [v19 stringWithFormat:@"memorystatus_control returned unexpected value - %d: %s", v18, strerror(*v20)];
      free(v10);
LABEL_14:
      v10 = 0;
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v12 = (v6 - 200) / 0x120;
    var4 = v10->var4;
    if (v12 >= var4)
    {
      v14 = 0;
      goto LABEL_19;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got fewer jetsam entries from the kernel received %zu, expected %zu", (v7 - 200) / 0x120uLL, var4];;
    v10->var4 = v12;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to allocate %d bytes for jetsam snapshot", v6];
    if (!v14)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v14;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (a4)
  {
    v15 = v14;
    *a4 = v14;
  }

LABEL_19:

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)getEventPriority:(id)a3 terminationReason:(unint64_t)a4 priority:(int64_t)a5
{
  if ([&unk_1F241F188 containsObject:a3])
  {
    self->_aleFlag = 1;
    return 3;
  }

  else if (a4 <= 0x11 && ((1 << a4) & 0x20284) != 0)
  {
    return 0;
  }

  else if (a5 <= 89)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)updateLogLimitFor:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = 0;
      v4 = &unk_1F241E7E8;
      v6 = @"298_HIGH_PRIORITY";
    }

    else
    {
      if (a3 != 3)
      {
        return;
      }

      v4 = 0;
      v5 = 1;
      v6 = @"298_ALE";
    }

LABEL_10:
    [(NSMutableDictionary *)self->super._logWritingOptions setObject:v6 forKeyedSubscript:@"LogType"];
    if (v5)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!a3)
  {
    v5 = 0;
    v4 = &unk_1F241E7D0;
    v6 = @"298_LOW_PRIORITY";
    goto LABEL_10;
  }

  if (a3 != 1)
  {
    return;
  }

  v4 = &unk_1F241E7E8;
LABEL_12:
  logWritingOptions = self->super._logWritingOptions;

  [(NSMutableDictionary *)logWritingOptions setObject:v4 forKeyedSubscript:@"set-log-limit"];
}

- (void)instrumentEvents:(BOOL)a3
{
  v52 = *MEMORY[0x1E69E9840];
  snapshot = self->_snapshot;
  if (snapshot)
  {
    if (snapshot->var4)
    {
      v4 = self;
      v5 = 0;
      v6 = 0;
      v7 = &unk_1F241E800;
      if (a3)
      {
        v7 = &unk_1F241E7D0;
      }

      v35 = v7;
      do
      {
        v8 = snapshot + v5 * 288;
        if (snapshot->var5[v5].var8)
        {
          v44 = v6;
          v9 = processName();
          v45 = killDescription(*(v8 + 35));
          info = 0;
          v10 = 0;
          if (!mach_timebase_info(&info) && info.denom)
          {
            v10 = (((snapshot->var5[v5].var23 - snapshot->var5[v5].var22) * info.numer / info.denom / 0xF4240) / 1000.0);
          }

          audioAssertionState = v4->_audioAssertionState;
          v12 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 50)];
          v13 = [(NSSet *)audioAssertionState containsObject:v12];

          visibilityEndowmentState = v4->_visibilityEndowmentState;
          v15 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 50)];
          v16 = [(NSSet *)visibilityEndowmentState containsObject:v15];

          v17 = snapshot + v5 * 288;
          memset(out, 0, 37);
          uuid_unparse_lower(snapshot->var5[v5].var6, out);
          v49[0] = @"name";
          v49[1] = @"reason";
          v50[0] = v9;
          v50[1] = v45;
          v49[2] = @"priority";
          v43 = [MEMORY[0x1E696AD98] numberWithInt:snapshot->var5[v5].var2];
          v50[2] = v43;
          v49[3] = @"uptime";
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
          v50[3] = v42;
          v49[4] = @"audio";
          v41 = [MEMORY[0x1E696AD98] numberWithBool:v13];
          v50[4] = v41;
          v49[5] = @"visible";
          v40 = [MEMORY[0x1E696AD98] numberWithBool:v16];
          v50[5] = v40;
          v49[6] = @"uuid";
          v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
          v50[6] = v39;
          v49[7] = @"max_pages";
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:snapshot->var5[v5].var10];
          v50[7] = v38;
          v49[8] = @"suspended";
          v37 = [MEMORY[0x1E696AD98] numberWithBool:snapshot->var5[v5].var3 & 1];
          v50[8] = v37;
          v49[9] = @"frozen";
          v18 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 1) & 1];
          v50[9] = v18;
          v49[10] = @"thawed";
          v19 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 2) & 1];
          v50[10] = v19;
          v49[11] = @"tracked";
          v20 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 3) & 1];
          v50[11] = v20;
          v49[12] = @"can_idle_exit";
          v21 = [MEMORY[0x1E696AD98] numberWithBool:(snapshot->var5[v5].var3 >> 4) & 1];
          v50[12] = v21;
          v49[13] = @"dirty";
          v22 = [MEMORY[0x1E696AD98] numberWithBool:(*(v17 + 61) >> 5) & 1];
          v50[13] = v22;
          v49[14] = @"assertion";
          v23 = [MEMORY[0x1E696AD98] numberWithBool:(*(v17 + 61) >> 6) & 1];
          v49[15] = @"logwritten";
          v50[14] = v23;
          v50[15] = v35;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:16];
          v25 = v24 = v9;
          AnalyticsSendEvent();

          v26 = v24;
          if (OSARTCIsProcessOfInterest(v24))
          {
            v47[0] = @"crk";
            v27 = +[OSASystemConfiguration sharedInstance];
            v28 = [v27 crashReporterKey];
            v48[0] = v28;
            v47[1] = @"dirty";
            v29 = [MEMORY[0x1E696AD98] numberWithBool:(*(v17 + 61) >> 5) & 1];
            v30 = v29;
            if (v26)
            {
              v31 = v26;
            }

            else
            {
              v31 = @"<unknown>";
            }

            v48[1] = v29;
            v48[2] = v31;
            v47[2] = @"name";
            v47[3] = @"reason";
            if (v45)
            {
              v32 = v45;
            }

            else
            {
              v32 = @"<unknown>";
            }

            v48[3] = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:4];
            rtcsc_send(2004, 2004, v33);
          }

          v4 = self;
          snapshot = self->_snapshot;
          v6 = v44;
        }

        ++v6;
        ++v5;
      }

      while (snapshot->var4 > v6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [OSAJetsamReport instrumentEvents:];
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (BOOL)alreadyDumpedSuspendedJetsamLogToday
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"lastSuspendedLogDumpedDaySince1970"];

  if (v3)
  {
    v4 = [v3 integerValue];
    v5 = v4 == +[OSAJetsamReport _daysSince1970];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setDumpedSuspendedJetsamLog
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setInteger:+[OSAJetsamReport _daysSince1970](OSAJetsamReport forKey:{"_daysSince1970"), @"lastSuspendedLogDumpedDaySince1970"}];
}

- (BOOL)isActionable
{
  if (!self->_snapshot)
  {
    return 0;
  }

  if (self->_killed_or_suspended_count)
  {
    if (!self->_isSuspendedOnlyJetsam || [(OSAReport *)self isAppleTV]|| ![(OSAJetsamReport *)self alreadyDumpedSuspendedJetsamLogToday])
    {
      return 1;
    }

    v3 = @"suspended-only jetsam log already dumped today";
  }

  else
  {
    v3 = @"No processes were jettisoned (either killed or suspended)";
  }

  notes = self->super._notes;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v3];
  [(NSMutableArray *)notes addObject:v6];

  return 0;
}

- (void)generateLogAtLevel:(BOOL)a3 withBlock:(id)a4
{
  v146[7] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v145[0] = @"incident";
  v119 = [(OSAReport *)self incidentID];
  v146[0] = v119;
  v145[1] = @"crashReporterKey";
  v118 = +[OSASystemConfiguration sharedInstance];
  v115 = [v118 crashReporterKey];
  v146[1] = v115;
  v145[2] = @"product";
  v112 = +[OSASystemConfiguration sharedInstance];
  v6 = [v112 modelCode];
  v146[2] = v6;
  v145[3] = @"build";
  v7 = +[OSASystemConfiguration sharedInstance];
  v8 = [v7 productNameVersionBuildString];
  v146[3] = v8;
  v145[4] = @"kernel";
  v9 = [objc_opt_class() kernelVersionDescription];
  v146[4] = v9;
  v145[5] = @"date";
  v10 = OSADateFormat(1u, self->super._capture_time);
  v146[5] = v10;
  v145[6] = @"codeSigningMonitor";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "codeSigningMonitor")}];
  v146[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:v145 count:7];
  v5[2](v5, v12);

  v13 = v5;
  v14 = [(OSAJetsamReport *)self problemType];
  v15 = [OSALog commonFieldsForBody:v14];
  v5[2](v5, v15);

  if ([objc_opt_class() isDeveloperMode])
  {
    v5[2](v5, &unk_1F241EDB0);
  }

  if ([(NSString *)self->_event_reason length]| self->_event_code)
  {
    event_reason = self->_event_reason;
    if (!event_reason)
    {
      event_reason = &stru_1F2411100;
    }

    v144[0] = event_reason;
    v143[0] = @"eventReason";
    v143[1] = @"eventCode";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v143[2] = &unk_1F241E860;
    v144[1] = v17;
    v144[2] = &unk_1F241E7D0;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:3];
    v5[2](v5, v18);
  }

  if (self->_snapshot)
  {
    info = 0;
    mach_timebase_info(&info);
    v96 = v5;
    if (info.denom)
    {
      v19 = ((self->_snapshot->var1 - self->_snapshot->var0) * info.numer / info.denom + 500000) / 0xF4240;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
    }

    v141[0] = @"timeDelta";
    v120 = [MEMORY[0x1E696AD98] numberWithInt:v19];
    v142[0] = v120;
    v141[1] = @"memoryStatus";
    v139[0] = @"memoryPages";
    v137[0] = @"free";
    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var0];
    v138[0] = v116;
    v137[1] = @"active";
    v113 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var1];
    v138[1] = v113;
    v137[2] = @"inactive";
    v110 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var2];
    v138[2] = v110;
    v137[3] = @"purgeable";
    v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var4];
    v138[3] = v108;
    v137[4] = @"wired";
    v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var5];
    v138[4] = v106;
    v137[5] = @"speculative";
    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var6];
    v138[5] = v104;
    v137[6] = @"throttled";
    v102 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var3];
    v138[6] = v102;
    v137[7] = @"fileBacked";
    v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var7];
    v138[7] = v99;
    v137[8] = @"anonymous";
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var8];
    v138[8] = v97;
    v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:9];
    v140[0] = v95;
    v139[1] = @"compressions";
    v94 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var10];
    v140[1] = v94;
    v139[2] = @"decompressions";
    v93 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var11];
    v140[2] = v93;
    v139[3] = @"compressorSize";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var9];
    v140[3] = v20;
    v139[4] = @"uncompressed";
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var12];
    v140[4] = v21;
    v139[5] = @"zoneMapSize";
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var13];
    v140[5] = v22;
    v139[6] = @"zoneMapCap";
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var14];
    v140[6] = v23;
    v139[7] = @"largestZone";
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_snapshot->var3.var16];
    v140[7] = v24;
    v139[8] = @"largestZoneSize";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var15];
    v140[8] = v25;
    v139[9] = @"pageSize";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*MEMORY[0x1E69E9AB0]];
    v140[9] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:10];
    v142[1] = v27;
    v141[2] = @"genCounter";
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var2];
    v28 = v101 = self;
    largestProcess = v101->_largestProcess;
    v142[2] = v28;
    v142[3] = largestProcess;
    v141[3] = @"largestProcess";
    v141[4] = &unk_1F241E860;
    v142[4] = &unk_1F241E7D0;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:5];
    v96[2](v96, v30);

    self = v101;
    v100 = [MEMORY[0x1E695DF70] array];
    v31 = +[OSASystemConfiguration sharedInstance];
    v98 = [v31 appleInternal];

    snapshot = v101->_snapshot;
    if (snapshot->var4)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v114 = v34;
        v35 = snapshot + v33;
        memset(out, 0, 37);
        uuid_unparse_lower(&snapshot->var5[0].var6[v33], out);
        v36 = [MEMORY[0x1E695DF70] array];
        v37 = v36;
        v38 = *(&snapshot->var5[0].var3 + v33);
        if (v38)
        {
          [v36 addObject:@"suspended"];
          v38 = *(v35 + 61);
        }

        if ((v38 & 0x80) != 0)
        {
          [v37 addObject:@"active"];
        }

        v39 = snapshot + v33;
        v40 = *&snapshot->var5[0].var6[v33 + 16];
        if (v40)
        {
          [v37 addObject:@"audio"];
          v40 = *(v39 + 34);
          if ((v40 & 4) == 0)
          {
LABEL_19:
            if ((v40 & 2) != 0)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }
        }

        else if ((v40 & 4) == 0)
        {
          goto LABEL_19;
        }

        [v37 addObject:@"accessory"];
        v40 = *(v39 + 34);
        if ((v40 & 2) != 0)
        {
LABEL_67:
          [v37 addObject:@"location"];
          if ((*(v39 + 34) & 0x10) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          [v37 addObject:@"bluetooth"];
          goto LABEL_22;
        }

LABEL_20:
        if ((v40 & 0x10) != 0)
        {
          goto LABEL_21;
        }

LABEL_22:
        visibilityEndowmentState = self->_visibilityEndowmentState;
        [MEMORY[0x1E696AD98] numberWithInt:*(v35 + 50)];
        v42 = v121 = v37;
        LOBYTE(visibilityEndowmentState) = [(NSSet *)visibilityEndowmentState containsObject:v42];

        v43 = @"frontmost";
        if ((visibilityEndowmentState & 1) != 0 || (v43 = @"background", (v39[272] & 8) != 0))
        {
          [v121 addObject:v43];
        }

        v44 = *(v39 + 34);
        if ((v44 & 0x100) != 0)
        {
          [v121 addObject:@"resume"];
          v44 = *(v39 + 34);
          if ((v44 & 0x200) == 0)
          {
LABEL_27:
            if ((v44 & 0x800) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_71;
          }
        }

        else if ((v44 & 0x200) == 0)
        {
          goto LABEL_27;
        }

        [v121 addObject:@"suspending"];
        v44 = *(v39 + 34);
        if ((v44 & 0x800) == 0)
        {
LABEL_28:
          if ((v44 & 0x2000) == 0)
          {
            goto LABEL_30;
          }

LABEL_29:
          [v121 addObject:@"continuous"];
          goto LABEL_30;
        }

LABEL_71:
        [v121 addObject:@"periodic"];
        if ((*(v39 + 34) & 0x2000) != 0)
        {
          goto LABEL_29;
        }

LABEL_30:
        if (![v121 count])
        {
          if (strcmp(&snapshot->var5[0].var1[v33], "SpringBoard"))
          {
            v45 = @"background";
            if (*(v39 + 34) || ([v121 addObject:@"daemon"], v45 = @"idle", (*(v35 + 61) & 0x30) == 0x10))
            {
              [v121 addObject:v45];
            }
          }
        }

        v134[0] = @"name";
        v109 = processName();
        v135[0] = v109;
        v134[1] = @"pid";
        v107 = [MEMORY[0x1E696AD98] numberWithInt:*(v35 + 50)];
        v135[1] = v107;
        v134[2] = @"uuid";
        v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
        v135[2] = v105;
        v134[3] = @"cpuTime";
        v117 = v33;
        v111 = snapshot;
        v46 = (snapshot + v33);
        v103 = [MEMORY[0x1E696AD98] numberWithDouble:v46[54] / 1000000.0 + v46[53]];
        v135[3] = v103;
        v134[4] = @"rpages";
        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[36]];
        v135[4] = v47;
        v134[5] = @"purgeable";
        v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[38]];
        v135[5] = v48;
        v134[6] = @"lifetimeMax";
        v49 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v46[37]];
        v135[6] = v49;
        v134[7] = @"fds";
        v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v46 + 62)];
        v135[7] = v50;
        v135[8] = v121;
        v134[8] = @"states";
        v134[9] = @"age";
        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var0 - v46[49]];
        v135[9] = v51;
        v134[10] = @"priority";
        v52 = [MEMORY[0x1E696AD98] numberWithInt:*(v46 + 60)];
        v135[10] = v52;
        v134[11] = @"freeze_skip_reason:";
        v53 = freezeSkipReason(*(v46 + 252));
        v135[11] = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:v134 count:12];
        v55 = [v54 mutableCopy];

        if (v46[51])
        {
          v56 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v55 setObject:v56 forKeyedSubscript:@"idleDelta"];
        }

        v57 = v46[50];
        self = v101;
        if (v57)
        {
          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v57 - v101->_snapshot->var0];
          [v55 setObject:v58 forKeyedSubscript:@"killDelta"];

          v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v111->var5[0].var21 + v117)];
          [v55 setObject:v59 forKeyedSubscript:@"genCount"];
        }

        v60 = *(&v111->var5[0].var8 + v117);
        if (v60)
        {
          v61 = killDescription(v60);
          [v55 setObject:v61 forKeyedSubscript:@"reason"];
        }

        v62 = [MEMORY[0x1E695DF90] dictionary];
        if (*(&v111->var5[0].var12 + v117) || *(&v111->var5[0].var13 + v117))
        {
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          v133[0] = v63;
          v64 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v111->var5[0].var13 + v117)];
          v133[1] = v64;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
          [v62 setObject:v65 forKeyedSubscript:@"internal"];
        }

        if (*(&v111->var5[0].var28 + v117))
        {
          v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v62 setObject:v66 forKeyedSubscript:@"frozen_to_swap_pages"];
        }

        v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v111->var5[0].var20 + v117)];
        [v55 setObject:v67 forKeyedSubscript:@"mem_regions"];

        if (v98)
        {
          v68 = v111 + v117;
          if (*(&v111->var5[0].var14 + v117) || *(v68 + 336))
          {
            v69 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v132[0] = v69;
            v70 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v68 + 336)];
            v132[1] = v70;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
            [v62 setObject:v71 forKeyedSubscript:@"purgeable_nv"];
          }

          v72 = v111 + v117;
          if (*(&v111->var5[0].var16 + v117) || *(v72 + 352))
          {
            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v131[0] = v73;
            v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v72 + 352)];
            v131[1] = v74;
            v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
            [v62 setObject:v75 forKeyedSubscript:@"alternate"];
          }

          if (*(&v111->var5[0].var18 + v117))
          {
            v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [v62 setObject:v76 forKeyedSubscript:@"iokit"];
          }

          if (*(&v111->var5[0].var19 + v117))
          {
            v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [v62 setObject:v77 forKeyedSubscript:@"table"];
          }

          if (*(&v111->var5[0].var31 + v117))
          {
            v78 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [v55 setObject:v78 forKeyedSubscript:@"neuralPages"];
          }
        }

        if ([v62 count])
        {
          [v55 setObject:v62 forKeyedSubscript:@"physicalPages"];
        }

        v79 = v111 + v117;
        if (*(&v111->var5[0].var25 + v117))
        {
          v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v55 setObject:v80 forKeyedSubscript:@"coalition"];
        }

        v81 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v79 + 456)];
        [v55 setObject:v81 forKeyedSubscript:@"csFlags"];

        v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v79 + 464)];
        [v55 setObject:v82 forKeyedSubscript:@"csTrustLevel"];

        [v100 addObject:v55];
        v34 = v114 + 1;
        snapshot = v101->_snapshot;
        v33 = v117 + 288;
      }

      while (snapshot->var4 > v114 + 1);
    }

    v129[0] = @"processes";
    v129[1] = &unk_1F241E860;
    v130[0] = v100;
    v130[1] = &unk_1F241E7D0;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
    v13 = v96;
    v96[2](v96, v83);
  }

  v84 = +[OSASystemConfiguration sharedInstance];
  v85 = [v84 appleInternal];

  if (v85)
  {
    if ([(NSMutableArray *)self->_zones count])
    {
      zones = self->_zones;
      v127 = @"zones";
      v128 = zones;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      v13[2](v13, v87);
    }

    if ([(NSMutableArray *)self->_tags count])
    {
      tags = self->_tags;
      v125 = @"tags";
      v126 = tags;
      v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v13[2](v13, v89);
    }
  }

  if ([(NSMutableArray *)self->super._notes count])
  {
    notes = self->super._notes;
    v123 = @"notes";
    v124 = notes;
    v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v13[2](v13, v91);
  }

  if (self->_isSuspendedOnlyJetsam)
  {
    [(OSAJetsamReport *)self _setDumpedSuspendedJetsamLog];
  }

  v92 = *MEMORY[0x1E69E9840];
}

+ (int64_t)_daysSince1970
{
  result = time(0);
  if (result >= 0)
  {
    return result / 0x15180uLL;
  }

  return result;
}

@end