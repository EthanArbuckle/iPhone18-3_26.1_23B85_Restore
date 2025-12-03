@interface DSSSharingModeService
+ (id)sharedInstance;
- (DSSSharingModeService)init;
- (void)dealloc;
- (void)emitAXOpened;
- (void)emitAXOpened:(BOOL)opened;
- (void)emitGuestBeganInitialEnrollment:(BOOL)enrollment;
- (void)emitGuestReEnrolled:(unint64_t)enrolled;
- (void)emitOpenedApps:(id)apps;
- (void)emitScreenMirroring;
- (void)emitScreenMirroring:(BOOL)mirroring;
- (void)emitSessionEnded:(id)ended;
- (void)emitSessionStarted:(unint64_t)started withOpenedApps:(id)apps;
- (void)emitTCCShown:(id)shown;
- (void)resetCAMetrics;
- (void)sharingModeDidEnd:(id)end;
- (void)sharingModeDidStart:(unint64_t)start withOpenedApps:(id)apps;
@end

@implementation DSSSharingModeService

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[DSSSharingModeService sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __39__DSSSharingModeService_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(DSSSharingModeService);

  return MEMORY[0x2821F96F8]();
}

- (DSSSharingModeService)init
{
  v8.receiver = self;
  v8.super_class = DSSSharingModeService;
  v2 = [(DSSSharingModeService *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"SharingMode_Initialized" withExtension:@"wav"];

    AudioServicesCreateSystemSoundID(v4, &v2->_soundIDStarted);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"SharingMode_Ended" withExtension:@"wav"];

    AudioServicesCreateSystemSoundID(v6, &v2->_soundIDEnded);
    [(DSSSharingModeService *)v2 resetCAMetrics];
  }

  return v2;
}

- (void)sharingModeDidStart:(unint64_t)start withOpenedApps:(id)apps
{
  [(DSSSharingModeService *)self emitSessionStarted:start withOpenedApps:apps];

  [(DSSSharingModeService *)self playStartSound];
}

- (void)sharingModeDidEnd:(id)end
{
  [(DSSSharingModeService *)self emitSessionEnded:end];

  [(DSSSharingModeService *)self playEndSound];
}

- (void)resetCAMetrics
{
  v40 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = uUID;

  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:0.0];
  sharingModeStartTime = self->_sharingModeStartTime;
  self->_sharingModeStartTime = v5;

  openedApps = self->_openedApps;
  self->_openedApps = 0;

  self->_mode = 0;
  self->_assetEnrolled = 0;
  *&self->_numAppsOpened = 0;
  v8 = DSSTelemetryLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
    v11 = self->_sharingModeStartTime;
    mode = self->_mode;
    smEnabled = self->_smEnabled;
    clipOnsPresent = self->_clipOnsPresent;
    tccShown = self->_tccShown;
    axOpened = self->_axOpened;
    numAppsOpened = self->_numAppsOpened;
    assetEnrolled = self->_assetEnrolled;
    v18 = self->_openedApps;
    v20 = 138545666;
    v21 = uUIDString;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v18;
    v26 = 2050;
    v27 = mode;
    v28 = 1026;
    v29 = smEnabled;
    v30 = 1026;
    v31 = clipOnsPresent;
    v32 = 1026;
    v33 = tccShown;
    v34 = 1026;
    v35 = axOpened;
    v36 = 1026;
    v37 = numAppsOpened;
    v38 = 2050;
    v39 = assetEnrolled;
    _os_log_debug_impl(&dword_248A4A000, v8, OS_LOG_TYPE_DEBUG, "Reset the metrics to: %{public}@ %{public}@ %{public}@ %{public}lu %{public}d, %{public}d, %{public}d, %{public}d, %{public}d, %{public}lu", &v20, 0x52u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)emitSessionStarted:(unint64_t)started withOpenedApps:(id)apps
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = [apps componentsJoinedByString:{@", "}];
  v7 = DSSTelemetryLog();
  if (os_signpost_enabled(v7))
  {
    v24 = 134349314;
    startedCopy = started;
    v26 = 2114;
    v27 = v6;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SharingModeSession", " enableTelemetry=YES mode=%{public,signpost.telemetry:number1}lu, openedAppsList=%{public,signpost.telemetry:string1}@", &v24, 0x16u);
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  sharingModeStartTime = self->_sharingModeStartTime;
  self->_sharingModeStartTime = v8;

  self->_mode = started;
  uUID = [MEMORY[0x277CCAD78] UUID];
  sessionIdentifier = self->_sessionIdentifier;
  self->_sessionIdentifier = uUID;

  v12 = DSSTelemetryLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
    v15 = self->_sharingModeStartTime;
    mode = self->_mode;
    smEnabled = self->_smEnabled;
    clipOnsPresent = self->_clipOnsPresent;
    tccShown = self->_tccShown;
    axOpened = self->_axOpened;
    numAppsOpened = self->_numAppsOpened;
    assetEnrolled = self->_assetEnrolled;
    openedApps = self->_openedApps;
    v24 = 138545666;
    startedCopy = uUIDString;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = openedApps;
    v30 = 2050;
    v31 = mode;
    v32 = 1026;
    v33 = smEnabled;
    v34 = 1026;
    v35 = clipOnsPresent;
    v36 = 1026;
    v37 = tccShown;
    v38 = 1026;
    v39 = axOpened;
    v40 = 1026;
    v41 = numAppsOpened;
    v42 = 2050;
    v43 = assetEnrolled;
    _os_log_debug_impl(&dword_248A4A000, v12, OS_LOG_TYPE_DEBUG, "Metrics at start of the session: %{public}@ %{public}@ %{public}@ %{public}lu %{public}d, %{public}d, %{public}d, %{public}d, %{public}d, %{public}lu", &v24, 0x52u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)emitSessionEnded:(id)ended
{
  v64 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v5 = DSSTelemetryLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v39 = endedCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SharingModeSession", " enableTelemetry=YES sourceString=%{public,signpost.telemetry:string2}@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSinceDate:self->_sharingModeStartTime];
  v8 = v7 / 60.0;
  v9 = DSSTelemetryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    uUIDString = [(NSUUID *)self->_sessionIdentifier UUIDString];
    sharingModeStartTime = self->_sharingModeStartTime;
    mode = self->_mode;
    smEnabled = self->_smEnabled;
    clipOnsPresent = self->_clipOnsPresent;
    tccShown = self->_tccShown;
    axOpened = self->_axOpened;
    numAppsOpened = self->_numAppsOpened;
    assetEnrolled = self->_assetEnrolled;
    openedApps = self->_openedApps;
    *buf = 138546434;
    v39 = uUIDString;
    v40 = 2114;
    v41 = sharingModeStartTime;
    v42 = 2114;
    v43 = v6;
    v44 = 2050;
    v45 = v8;
    v46 = 2114;
    v47 = endedCopy;
    v48 = 2114;
    v49 = openedApps;
    v50 = 2050;
    v51 = mode;
    v52 = 1026;
    v53 = smEnabled;
    v54 = 1026;
    v55 = clipOnsPresent;
    v56 = 1026;
    v57 = tccShown;
    v58 = 1026;
    v59 = axOpened;
    v60 = 1026;
    v61 = numAppsOpened;
    v62 = 2050;
    v63 = assetEnrolled;
    _os_log_debug_impl(&dword_248A4A000, v9, OS_LOG_TYPE_DEBUG, "Metrics at end of the session: %{public}@ %{public}@ %{public}@ %{public}f %{public}@ %{public}@ %{public}lu %{public}d %{public}d %{public}d %{public}d %{public}d %{public}lu", buf, 0x70u);
  }

  v33 = v6;

  v36[0] = @"duration";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v37[0] = v10;
  v36[1] = @"mode";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mode];
  v37[1] = v11;
  v37[2] = endedCopy;
  v36[2] = @"endSource";
  v36[3] = @"numOfAppsOpened";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_numAppsOpened];
  v37[3] = v12;
  v36[4] = @"clipOnsPresent";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_clipOnsPresent];
  v37[4] = v13;
  v36[5] = @"axOpened";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_axOpened];
  v37[5] = v14;
  v36[6] = @"tccShown";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_tccShown];
  v37[6] = v15;
  v36[7] = @"assetReenrolled";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_assetEnrolled];
  v37[7] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:8];

  v34[5] = MEMORY[0x277D85DD0];
  v34[6] = 3221225472;
  v34[7] = __42__DSSSharingModeService_emitSessionEnded___block_invoke;
  v34[8] = &unk_278F62370;
  v18 = v17;
  v35 = v18;
  if ((AnalyticsSendEventLazy() & 1) == 0)
  {
    v19 = DSSTelemetryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [DSSSharingModeService emitSessionEnded:v19];
    }
  }

  v20 = self->_openedApps;
  if (v20 && self->_mode == 1)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __42__DSSSharingModeService_emitSessionEnded___block_invoke_44;
    v34[3] = &unk_278F62398;
    v34[4] = self;
    [(NSArray *)v20 enumerateObjectsUsingBlock:v34];
  }

  v21 = DSSTelemetryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [DSSSharingModeService emitSessionEnded:v21];
  }

  [(DSSSharingModeService *)self resetCAMetrics];
  v22 = *MEMORY[0x277D85DE8];
}

void __42__DSSSharingModeService_emitSessionEnded___block_invoke_44(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v8[0] = @"sessionID";
  v8[1] = @"bundleID";
  v9[0] = v4;
  v9[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  if ((AnalyticsSendEventLazy() & 1) == 0)
  {
    v6 = DSSTelemetryLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__DSSSharingModeService_emitSessionEnded___block_invoke_44_cold_1(v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)emitOpenedApps:(id)apps
{
  appsCopy = apps;
  if (appsCopy)
  {
    v6 = appsCopy;
    objc_storeStrong(&self->_openedApps, apps);
    self->_numAppsOpened = [(NSArray *)self->_openedApps count];
    appsCopy = v6;
  }
}

- (void)emitScreenMirroring
{
  v3 = DSSTelemetryLog();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeScreenMirroring", " enableTelemetry=YES Screen Mirroring", v4, 2u);
  }

  self->_smEnabled = 1;
}

- (void)emitScreenMirroring:(BOOL)mirroring
{
  mirroringCopy = mirroring;
  v7 = *MEMORY[0x277D85DE8];
  v4 = DSSTelemetryLog();
  if (os_signpost_enabled(v4))
  {
    v6[0] = 67240192;
    v6[1] = mirroringCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeScreenMirroring", " enableTelemetry=YES screenMirroringt=%{public,signpost.telemetry:number1}d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)emitGuestBeganInitialEnrollment:(BOOL)enrollment
{
  enrollmentCopy = enrollment;
  v8 = *MEMORY[0x277D85DE8];
  v5 = DSSTelemetryLog();
  if (os_signpost_enabled(v5))
  {
    v7[0] = 67240192;
    v7[1] = enrollmentCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeGuestBeganInitialEnrollment", " enableTelemetry=YES clipOnsPresent=%{public,signpost.telemetry:number1}d", v7, 8u);
  }

  self->_clipOnsPresent = enrollmentCopy;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)emitGuestReEnrolled:(unint64_t)enrolled
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = DSSTelemetryLog();
  if (os_signpost_enabled(v5))
  {
    v7 = 134349056;
    enrolledCopy = enrolled;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeGuestReEnrolled", " enableTelemetry=YES asset=%{public,signpost.telemetry:number1}lu", &v7, 0xCu);
  }

  self->_assetEnrolled = enrolled;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)emitTCCShown:(id)shown
{
  v9 = *MEMORY[0x277D85DE8];
  shownCopy = shown;
  v5 = DSSTelemetryLog();
  if (os_signpost_enabled(v5))
  {
    v7 = 138543362;
    v8 = shownCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeTCCShown", " enableTelemetry=YES bundleID=%{public,signpost.telemetry:string1}@", &v7, 0xCu);
  }

  self->_tccShown = 1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)emitAXOpened
{
  v3 = DSSTelemetryLog();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeAXOpened", " enableTelemetry=YES AX Modified", v4, 2u);
  }

  self->_axOpened = 1;
}

- (void)emitAXOpened:(BOOL)opened
{
  openedCopy = opened;
  v7 = *MEMORY[0x277D85DE8];
  v4 = DSSTelemetryLog();
  if (os_signpost_enabled(v4))
  {
    v6[0] = 67240192;
    v6[1] = openedCopy;
    _os_signpost_emit_with_name_impl(&dword_248A4A000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SharingModeAXOpened", " enableTelemetry=YES modified=%{public,signpost.telemetry:number1}d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  AudioServicesDisposeSystemSoundID(self->_soundIDStarted);
  AudioServicesDisposeSystemSoundID(self->_soundIDEnded);
  v3.receiver = self;
  v3.super_class = DSSSharingModeService;
  [(DSSSharingModeService *)&v3 dealloc];
}

@end