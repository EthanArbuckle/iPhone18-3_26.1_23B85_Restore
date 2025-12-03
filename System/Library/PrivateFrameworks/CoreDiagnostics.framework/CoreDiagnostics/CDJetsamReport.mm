@interface CDJetsamReport
+ (int64_t)_daysSince1970;
+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)flags error:(id *)error;
- (BOOL)alreadyDumpedSuspendedJetsamLogToday;
- (BOOL)isActionable;
- (BOOL)saveWithOptions:(id)options;
- (CDJetsamReport)initWithIncidentID:(id)d visibilityEndowmentState:(id)state audioAssertionState:(id)assertionState;
- (id)additionalIPSMetadata;
- (id)appleCareDetails;
- (unint64_t)getEventPriority:(id)priority terminationReason:(unint64_t)reason priority:(int64_t)a5;
- (void)_setDumpedSuspendedJetsamLog;
- (void)dealloc;
- (void)fetchWiredMemoryInfo;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)instrumentEvents:(BOOL)events;
- (void)updateLogLimitFor:(unint64_t)for;
@end

@implementation CDJetsamReport

- (CDJetsamReport)initWithIncidentID:(id)d visibilityEndowmentState:(id)state audioAssertionState:(id)assertionState
{
  dCopy = d;
  stateCopy = state;
  assertionStateCopy = assertionState;
  v22.receiver = self;
  v22.super_class = CDJetsamReport;
  v12 = [(OSAReport *)&v22 init];
  v13 = v12;
  if (v12)
  {
    if (dCopy)
    {
      objc_storeStrong((&v12->super.super.isa + *MEMORY[0x1E69B7C20]), d);
    }

    if (stateCopy)
    {
      v14 = stateCopy;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    visibilityEndowmentState = v13->_visibilityEndowmentState;
    v13->_visibilityEndowmentState = v14;

    if (assertionStateCopy)
    {
      v16 = assertionStateCopy;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    audioAssertionState = v13->_audioAssertionState;
    v13->_audioAssertionState = v16;

    largestActiveApp = v13->_largestActiveApp;
    v13->_largestActiveApp = &stru_1F550D880;

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
  v3.super_class = CDJetsamReport;
  [(CDJetsamReport *)&v3 dealloc];
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
  v8 = *MEMORY[0x1E69B7C48];
  incidentID = [(OSAReport *)self incidentID];
  v9[0] = incidentID;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v4 mutableCopy];

  if (self->_aleFlag)
  {
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ale_flag"];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)saveWithOptions:(id)options
{
  v6.receiver = self;
  v6.super_class = CDJetsamReport;
  v4 = [(OSAReport *)&v6 saveWithOptions:options];
  [(CDJetsamReport *)self instrumentEvents:v4];
  return v4;
}

+ (jetsam_snapshot)fetchSnapshotWithFlags:(unsigned int)flags error:(id *)error
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
    var4 = LABEL_13:;
    goto LABEL_14;
  }

  v10 = malloc_type_malloc(v5, 0xC6E11B53uLL);
  if (v10)
  {
    v11 = memorystatus_control();
    if (v11 != v6)
    {
      v18 = v11;
      v19 = MEMORY[0x1E696AEC0];
      v20 = __error();
      var4 = [v19 stringWithFormat:@"memorystatus_control returned unexpected value - %d: %s", v18, strerror(*v20)];
      free(v10);
LABEL_14:
      v10 = 0;
      if (!var4)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v12 = (v6 - 200) / 0x120;
    var4 = v10->var4;
    if (v12 >= var4)
    {
      var4 = 0;
      goto LABEL_19;
    }

    var4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got fewer jetsam entries from the kernel received %zu, expected %zu", (v7 - 200) / 0x120uLL, var4];;
    v10->var4 = v12;
    if (!var4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    var4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to allocate %d bytes for jetsam snapshot", v6];
    if (!var4)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = var4;
    _os_log_impl(&dword_1D97FA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (error)
  {
    v15 = var4;
    *error = var4;
  }

LABEL_19:

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)getEventPriority:(id)priority terminationReason:(unint64_t)reason priority:(int64_t)a5
{
  if ([&unk_1F5514330 containsObject:priority])
  {
    self->_aleFlag = 1;
    return 3;
  }

  else if (reason <= 0x11 && ((1 << reason) & 0x20284) != 0)
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

- (void)updateLogLimitFor:(unint64_t)for
{
  if (for > 1)
  {
    if (for == 2)
    {
      v6 = 0;
      v5 = &unk_1F55143C0;
      v7 = @"298_HIGH_PRIORITY";
    }

    else
    {
      if (for != 3)
      {
        return;
      }

      v5 = 0;
      v6 = 1;
      v7 = @"298_ALE";
    }

LABEL_10:
    v4 = *MEMORY[0x1E69B7C28];
    [*(&self->super.super.isa + v4) setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B7C50]];
    if (v6)
    {
      return;
    }

    goto LABEL_12;
  }

  if (!for)
  {
    v6 = 0;
    v5 = &unk_1F55143A8;
    v7 = @"298_LOW_PRIORITY";
    goto LABEL_10;
  }

  if (for != 1)
  {
    return;
  }

  v4 = *MEMORY[0x1E69B7C28];
  v5 = &unk_1F55143C0;
LABEL_12:
  v8 = *(&self->super.super.isa + v4);
  v9 = *MEMORY[0x1E69B7C80];

  [v8 setObject:v5 forKeyedSubscript:v9];
}

- (void)instrumentEvents:(BOOL)events
{
  v52 = *MEMORY[0x1E69E9840];
  snapshot = self->_snapshot;
  if (snapshot)
  {
    if (snapshot->var4)
    {
      selfCopy2 = self;
      v5 = 0;
      v6 = 0;
      v7 = &unk_1F55143D8;
      if (events)
      {
        v7 = &unk_1F55143A8;
      }

      v35 = v7;
      do
      {
        v8 = snapshot + v5 * 288;
        if (snapshot->var5[v5].var8)
        {
          v44 = v6;
          v9 = processName((v8 + 200));
          v45 = killDescription(*(v8 + 35));
          info = 0;
          v10 = 0;
          if (!mach_timebase_info(&info) && info.denom)
          {
            v10 = (((snapshot->var5[v5].var23 - snapshot->var5[v5].var22) * info.numer / info.denom / 0xF4240) / 1000.0);
          }

          audioAssertionState = selfCopy2->_audioAssertionState;
          v12 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 50)];
          v13 = [(NSSet *)audioAssertionState containsObject:v12];

          visibilityEndowmentState = selfCopy2->_visibilityEndowmentState;
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
          if (OSARTCIsProcessOfInterest())
          {
            v47[0] = @"crk";
            mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
            crashReporterKey = [mEMORY[0x1E69B7C10] crashReporterKey];
            v48[0] = crashReporterKey;
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
            rtcsc_send();
          }

          selfCopy2 = self;
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
    [CDJetsamReport instrumentEvents:];
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)fetchWiredMemoryInfo
{
  v7 = *MEMORY[0x1E69E9840];
  [self unsignedIntValue];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)alreadyDumpedSuspendedJetsamLogToday
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"lastSuspendedLogDumpedDaySince1970"];

  if (v3)
  {
    integerValue = [v3 integerValue];
    v5 = integerValue == +[CDJetsamReport _daysSince1970];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setDumpedSuspendedJetsamLog
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:+[CDJetsamReport _daysSince1970](CDJetsamReport forKey:{"_daysSince1970"), @"lastSuspendedLogDumpedDaySince1970"}];
}

- (BOOL)isActionable
{
  if (!self->_snapshot)
  {
    return 0;
  }

  if (self->_killed_or_suspended_count)
  {
    if (!self->_isSuspendedOnlyJetsam || [(OSAReport *)self isAppleTV]|| ![(CDJetsamReport *)self alreadyDumpedSuspendedJetsamLogToday])
    {
      return 1;
    }

    v3 = @"suspended-only jetsam log already dumped today";
  }

  else
  {
    v3 = @"No processes were jettisoned (either killed or suspended)";
  }

  v5 = *(&self->super.super.isa + *MEMORY[0x1E69B7C30]);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v3];
  [v5 addObject:v6];

  return 0;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  v158[7] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v157[0] = @"incident";
  incidentID = [(OSAReport *)self incidentID];
  v158[0] = incidentID;
  v157[1] = @"crashReporterKey";
  mEMORY[0x1E69B7C10] = [MEMORY[0x1E69B7C10] sharedInstance];
  crashReporterKey = [mEMORY[0x1E69B7C10] crashReporterKey];
  v158[1] = crashReporterKey;
  v157[2] = @"product";
  mEMORY[0x1E69B7C10]2 = [MEMORY[0x1E69B7C10] sharedInstance];
  modelCode = [mEMORY[0x1E69B7C10]2 modelCode];
  v158[2] = modelCode;
  v157[3] = @"build";
  mEMORY[0x1E69B7C10]3 = [MEMORY[0x1E69B7C10] sharedInstance];
  productNameVersionBuildString = [mEMORY[0x1E69B7C10]3 productNameVersionBuildString];
  v158[3] = productNameVersionBuildString;
  v157[4] = @"kernel";
  kernelVersionDescription = [objc_opt_class() kernelVersionDescription];
  v158[4] = kernelVersionDescription;
  v157[5] = @"date";
  v10 = *(&self->super.super.isa + *MEMORY[0x1E69B7C18]);
  v11 = OSADateFormat();
  v158[5] = v11;
  v157[6] = @"codeSigningMonitor";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "codeSigningMonitor")}];
  v158[6] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v158 forKeys:v157 count:7];
  blockCopy[2](blockCopy, v13);

  v14 = blockCopy;
  v15 = MEMORY[0x1E69B7C00];
  problemType = [(CDJetsamReport *)self problemType];
  v17 = [v15 commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v17);

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &unk_1F5514570);
  }

  if ([(NSString *)self->_event_reason length]| self->_event_code)
  {
    event_reason = self->_event_reason;
    if (!event_reason)
    {
      event_reason = &stru_1F550D880;
    }

    v156[0] = event_reason;
    v155[0] = @"eventReason";
    v155[1] = @"eventCode";
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    v155[2] = &unk_1F5514438;
    v156[1] = v19;
    v156[2] = &unk_1F55143A8;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:3];
    blockCopy[2](blockCopy, v20);
  }

  v21 = +[_TtC15CoreDiagnostics22AppleIntelligenceState getAppleIntelligenceAvailability];
  if ([v21 count])
  {
    v153 = @"appleIntelligenceStatus";
    v154 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_snapshot)
  {
    info = 0;
    mach_timebase_info(&info);
    v108 = blockCopy;
    v107 = v21;
    if (info.denom)
    {
      v23 = ((self->_snapshot->var1 - self->_snapshot->var0) * info.numer / info.denom + 500000) / 0xF4240;
    }

    else
    {
      v23 = 0xFFFFFFFFLL;
    }

    v151[0] = @"timeDelta";
    v130 = [MEMORY[0x1E696AD98] numberWithInt:v23];
    v152[0] = v130;
    v151[1] = @"memoryStatus";
    v149[0] = @"memoryPages";
    v147[0] = @"free";
    v127 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var0];
    v148[0] = v127;
    v147[1] = @"active";
    v124 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var1];
    v148[1] = v124;
    v147[2] = @"inactive";
    v121 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var2];
    v148[2] = v121;
    v147[3] = @"purgeable";
    v118 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var4];
    v148[3] = v118;
    v147[4] = @"wired";
    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var5];
    v148[4] = v116;
    v147[5] = @"speculative";
    v114 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var6];
    v148[5] = v114;
    v147[6] = @"throttled";
    v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var3];
    v148[6] = v111;
    v147[7] = @"fileBacked";
    v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var7];
    v148[7] = v109;
    v147[8] = @"anonymous";
    v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var8];
    v148[8] = v106;
    v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v148 forKeys:v147 count:9];
    v150[0] = v105;
    v149[1] = @"compressions";
    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var10];
    v150[1] = v104;
    v149[2] = @"decompressions";
    v103 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var3.var11];
    v150[2] = v103;
    v149[3] = @"compressorSize";
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_snapshot->var3.var9];
    v24 = v113 = self;
    v150[3] = v24;
    v149[4] = @"uncompressed";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v113->_snapshot->var3.var12];
    v150[4] = v25;
    v149[5] = @"zoneMapSize";
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v113->_snapshot->var3.var13];
    v150[5] = v26;
    v149[6] = @"zoneMapCap";
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v113->_snapshot->var3.var14];
    v150[6] = v27;
    v149[7] = @"largestZone";
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v113->_snapshot->var3.var16];
    v150[7] = v28;
    v149[8] = @"largestZoneSize";
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v113->_snapshot->var3.var15];
    v150[8] = v29;
    v149[9] = @"pageSize";
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*MEMORY[0x1E69E9AB0]];
    v150[9] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:10];
    v152[1] = v31;
    v151[2] = @"genCounter";
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v113->_snapshot->var2];
    largestProcess = v113->_largestProcess;
    v152[2] = v32;
    v152[3] = largestProcess;
    v151[3] = @"largestProcess";
    v151[4] = &unk_1F5514438;
    v152[4] = &unk_1F55143A8;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:5];
    v108[2](v108, v34);

    self = v113;
    array = [MEMORY[0x1E695DF70] array];
    mEMORY[0x1E69B7C10]4 = [MEMORY[0x1E69B7C10] sharedInstance];
    appleInternal = [mEMORY[0x1E69B7C10]4 appleInternal];

    snapshot = v113->_snapshot;
    if (snapshot->var4)
    {
      v37 = 0;
      v38 = 0;
      do
      {
        v128 = v38;
        v39 = snapshot + v37;
        memset(out, 0, 37);
        uuid_unparse_lower(&snapshot->var5[0].var6[v37], out);
        array2 = [MEMORY[0x1E695DF70] array];
        v41 = array2;
        v42 = *(&snapshot->var5[0].var3 + v37);
        if (v42)
        {
          [array2 addObject:@"suspended"];
          v42 = *(v39 + 61);
        }

        if ((v42 & 0x80) != 0)
        {
          [v41 addObject:@"active"];
        }

        v43 = snapshot + v37;
        v44 = *&snapshot->var5[0].var6[v37 + 16];
        if (v44)
        {
          [v41 addObject:@"audio"];
          v44 = *(v43 + 34);
          if ((v44 & 4) == 0)
          {
LABEL_21:
            if ((v44 & 2) != 0)
            {
              goto LABEL_71;
            }

            goto LABEL_22;
          }
        }

        else if ((v44 & 4) == 0)
        {
          goto LABEL_21;
        }

        [v41 addObject:@"accessory"];
        v44 = *(v43 + 34);
        if ((v44 & 2) != 0)
        {
LABEL_71:
          [v41 addObject:@"location"];
          if ((*(v43 + 34) & 0x10) == 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          [v41 addObject:@"bluetooth"];
          goto LABEL_24;
        }

LABEL_22:
        if ((v44 & 0x10) != 0)
        {
          goto LABEL_23;
        }

LABEL_24:
        visibilityEndowmentState = self->_visibilityEndowmentState;
        v46 = [MEMORY[0x1E696AD98] numberWithInt:*(v39 + 50)];
        LOBYTE(visibilityEndowmentState) = [(NSSet *)visibilityEndowmentState containsObject:v46];

        v47 = @"frontmost";
        if ((visibilityEndowmentState & 1) != 0 || (v47 = @"background", (v43[272] & 8) != 0))
        {
          [v41 addObject:v47];
        }

        v48 = *(v43 + 34);
        if ((v48 & 0x100) != 0)
        {
          [v41 addObject:@"resume"];
          v48 = *(v43 + 34);
          if ((v48 & 0x200) == 0)
          {
LABEL_29:
            if ((v48 & 0x800) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_75;
          }
        }

        else if ((v48 & 0x200) == 0)
        {
          goto LABEL_29;
        }

        [v41 addObject:@"suspending"];
        v48 = *(v43 + 34);
        if ((v48 & 0x800) == 0)
        {
LABEL_30:
          if ((v48 & 0x2000) == 0)
          {
            goto LABEL_32;
          }

LABEL_31:
          [v41 addObject:@"continuous"];
          goto LABEL_32;
        }

LABEL_75:
        [v41 addObject:@"periodic"];
        if ((*(v43 + 34) & 0x2000) != 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        if (![v41 count])
        {
          if (strcmp(&snapshot->var5[0].var1[v37], "SpringBoard"))
          {
            v49 = @"background";
            if (*(v43 + 34) || ([v41 addObject:@"daemon"], v49 = @"idle", (*(v39 + 61) & 0x30) == 0x10))
            {
              [v41 addObject:v49];
            }
          }
        }

        v144[0] = @"name";
        v119 = processName((v39 + 200));
        v145[0] = v119;
        v144[1] = @"pid";
        v117 = [MEMORY[0x1E696AD98] numberWithInt:*(v39 + 50)];
        v145[1] = v117;
        v144[2] = @"uuid";
        v115 = [MEMORY[0x1E696AEC0] stringWithUTF8String:out];
        v145[2] = v115;
        v144[3] = @"cpuTime";
        v131 = v37;
        v125 = snapshot;
        v50 = snapshot + v37;
        [MEMORY[0x1E696AD98] numberWithDouble:*(&snapshot->var5[0].var26.tv_usec + v37) / 1000000.0 + *(&snapshot->var5[0].var26.tv_sec + v37)];
        v52 = v51 = v41;
        v145[3] = v52;
        v144[4] = @"rpages";
        v53 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&snapshot->var5[0].var9 + v37)];
        v145[4] = v53;
        v144[5] = @"purgeable";
        v54 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v50 + 38)];
        v145[5] = v54;
        v144[6] = @"lifetimeMax";
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v50 + 37)];
        v145[6] = v55;
        v144[7] = @"fds";
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v50 + 62)];
        v145[7] = v56;
        v145[8] = v51;
        v122 = v51;
        v144[8] = @"states";
        v144[9] = @"age";
        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_snapshot->var0 - *(v50 + 49)];
        v145[9] = v57;
        v144[10] = @"priority";
        v58 = [MEMORY[0x1E696AD98] numberWithInt:*(v50 + 60)];
        v145[10] = v58;
        v144[11] = @"freeze_skip_reason:";
        v59 = *(v50 + 63);
        v60 = @"(unknown-reason)";
        if (v59 <= 0xAu)
        {
          v60 = off_1E8585278[v59 & 0xF];
        }

        v145[11] = v60;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:12];
        v62 = [v61 mutableCopy];

        if (*(v50 + 51))
        {
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v62 setObject:v63 forKeyedSubscript:@"idleDelta"];
        }

        v64 = v125 + v131;
        v65 = *(&v125->var5[0].var23 + v131);
        self = v113;
        if (v65)
        {
          v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v65 - v113->_snapshot->var0];
          [v62 setObject:v66 forKeyedSubscript:@"killDelta"];

          v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v64 + 384)];
          [v62 setObject:v67 forKeyedSubscript:@"genCount"];
        }

        v68 = *(v64 + 280);
        if (v68)
        {
          v69 = killDescription(v68);
          [v62 setObject:v69 forKeyedSubscript:@"reason"];
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v71 = v125 + v131;
        if (*(&v125->var5[0].var12 + v131) || *(v71 + 320))
        {
          v72 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          v143[0] = v72;
          v73 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v71 + 320)];
          v143[1] = v73;
          v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:2];
          [dictionary setObject:v74 forKeyedSubscript:@"internal"];
        }

        if (*(&v125->var5[0].var28 + v131))
        {
          v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [dictionary setObject:v75 forKeyedSubscript:@"frozen_to_swap_pages"];
        }

        v76 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(&v125->var5[0].var20 + v131)];
        [v62 setObject:v76 forKeyedSubscript:@"mem_regions"];

        if (appleInternal)
        {
          v77 = v125 + v131;
          if (*(&v125->var5[0].var14 + v131) || *(v77 + 336))
          {
            v78 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v142[0] = v78;
            v79 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v77 + 336)];
            v142[1] = v79;
            v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
            [dictionary setObject:v80 forKeyedSubscript:@"purgeable_nv"];
          }

          v81 = v125 + v131;
          if (*(&v125->var5[0].var16 + v131) || *(v81 + 352))
          {
            v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            v141[0] = v82;
            v83 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v81 + 352)];
            v141[1] = v83;
            v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:2];
            [dictionary setObject:v84 forKeyedSubscript:@"alternate"];
          }

          if (*(&v125->var5[0].var18 + v131))
          {
            v85 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [dictionary setObject:v85 forKeyedSubscript:@"iokit"];
          }

          if (*(&v125->var5[0].var19 + v131))
          {
            v86 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [dictionary setObject:v86 forKeyedSubscript:@"table"];
          }

          if (*(&v125->var5[0].var31 + v131))
          {
            v87 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
            [v62 setObject:v87 forKeyedSubscript:@"neuralPages"];
          }
        }

        if ([dictionary count])
        {
          [v62 setObject:dictionary forKeyedSubscript:@"physicalPages"];
        }

        v88 = v125 + v131;
        if (*(&v125->var5[0].var25 + v131))
        {
          v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
          [v62 setObject:v89 forKeyedSubscript:@"coalition"];
        }

        v90 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v88 + 456)];
        [v62 setObject:v90 forKeyedSubscript:@"csFlags"];

        v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v88 + 464)];
        [v62 setObject:v91 forKeyedSubscript:@"csTrustLevel"];

        [array addObject:v62];
        v38 = v128 + 1;
        snapshot = v113->_snapshot;
        v37 = v131 + 288;
      }

      while (snapshot->var4 > v128 + 1);
    }

    v139[0] = @"processes";
    v139[1] = &unk_1F5514438;
    v140[0] = array;
    v140[1] = &unk_1F55143A8;
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:2];
    v14 = v108;
    v108[2](v108, v92);

    v21 = v107;
  }

  mEMORY[0x1E69B7C10]5 = [MEMORY[0x1E69B7C10] sharedInstance];
  appleInternal2 = [mEMORY[0x1E69B7C10]5 appleInternal];

  if (appleInternal2)
  {
    if ([(NSMutableArray *)self->_zones count])
    {
      zones = self->_zones;
      v137 = @"zones";
      v138 = zones;
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      v14[2](v14, v96);
    }

    if ([(NSMutableArray *)self->_tags count])
    {
      tags = self->_tags;
      v135 = @"tags";
      v136 = tags;
      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v14[2](v14, v98);
    }
  }

  v99 = *MEMORY[0x1E69B7C30];
  if ([*(&self->super.super.isa + v99) count])
  {
    v100 = *(&self->super.super.isa + v99);
    v133 = @"notes";
    v134 = v100;
    v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
    v14[2](v14, v101);
  }

  if (self->_isSuspendedOnlyJetsam)
  {
    [(CDJetsamReport *)self _setDumpedSuspendedJetsamLog];
  }

  v102 = *MEMORY[0x1E69E9840];
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