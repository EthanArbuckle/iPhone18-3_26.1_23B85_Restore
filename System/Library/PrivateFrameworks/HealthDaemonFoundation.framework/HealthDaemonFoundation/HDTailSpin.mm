@interface HDTailSpin
+ (void)generateTailSpinForTeam:(id)team category:(id)category description:(id)description logger:(id)logger;
@end

@implementation HDTailSpin

+ (void)generateTailSpinForTeam:(id)team category:(id)category description:(id)description logger:(id)logger
{
  v56 = *MEMORY[0x277D85DE8];
  teamCopy = team;
  categoryCopy = category;
  descriptionCopy = description;
  loggerCopy = logger;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && objc_msgSend(self, "_isImprovedHealthAndActivityEnabled"))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    memset(buf, 0, sizeof(buf));
    LODWORD(v23) = 0;
    *v53 = 0xE00000001;
    v54 = 1;
    v55 = getpid();
    v21 = 648;
    v14 = sysctl(v53, 4u, buf, &v21, 0, 0);
    v15 = v23;
    _HKInitializeLogging();
    v16 = os_log_type_enabled(loggerCopy, OS_LOG_TYPE_DEFAULT);
    if (v14 || (v15 & 0x800) == 0)
    {
      if (v16)
      {
        *buf = 138543874;
        *&buf[4] = teamCopy;
        *&buf[12] = 2114;
        *&buf[14] = categoryCopy;
        *&buf[22] = 2114;
        *&buf[24] = descriptionCopy;
        _os_log_impl(&dword_25156C000, loggerCopy, OS_LOG_TYPE_DEFAULT, "[tailspin] Saving tailspin for  %{public}@-%{public}@: %{public}@", buf, 0x20u);
      }

      v18 = DRTailspinRequest();
      v19 = 0;
      if ((v18 & 1) == 0)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = teamCopy;
          *&buf[12] = 2114;
          *&buf[14] = categoryCopy;
          *&buf[22] = 2114;
          *&buf[24] = descriptionCopy;
          _os_log_error_impl(&dword_25156C000, loggerCopy, OS_LOG_TYPE_ERROR, "[tailspin] Failed to generate tailspin for %{public}@-%{public}@: %{public}@", buf, 0x20u);
        }
      }
    }

    else if (v16)
    {
      *buf = 138543874;
      *&buf[4] = teamCopy;
      *&buf[12] = 2114;
      *&buf[14] = categoryCopy;
      *&buf[22] = 2114;
      *&buf[24] = descriptionCopy;
      v17 = "[tailspin] Debugger Attached - Skipping tailspin for  %{public}@-%{public}@: %{public}@";
LABEL_9:
      _os_log_impl(&dword_25156C000, loggerCopy, OS_LOG_TYPE_DEFAULT, v17, buf, 0x20u);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(loggerCopy, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = teamCopy;
      *&buf[12] = 2114;
      *&buf[14] = categoryCopy;
      *&buf[22] = 2114;
      *&buf[24] = descriptionCopy;
      v17 = "[tailspin] IH&A is not enabled. Not triggering tailspin for %{public}@-%{public}@: %{public}@";
      goto LABEL_9;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end