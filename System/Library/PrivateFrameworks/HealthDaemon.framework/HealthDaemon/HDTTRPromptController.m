@interface HDTTRPromptController
+ (id)_nameForDomainName:(uint64_t)a1;
+ (id)_persistedValueKeys;
+ (id)formattedPersistedValuesForDomainName:(id)a3 database:(id)a4 error:(id *)a5;
- (BOOL)unitTest_setLastPromptBuild:(id)a3 error:(id *)a4;
- (BOOL)unitTest_setLastPromptDate:(id)a3 error:(id *)a4;
- (HDKeyValueDomain)_keyValueDomain;
- (HDTTRPromptController)init;
- (HDTTRPromptController)initWithProfile:(id)a3 domainName:(id)a4 loggingCategory:(id)a5;
- (id)description;
- (void)promptIfRequiredForReason:(id)a3 success:(BOOL)a4 error:(id)a5;
@end

@implementation HDTTRPromptController

- (HDTTRPromptController)initWithProfile:(id)a3 domainName:(id)a4 loggingCategory:(id)a5
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = HDTTRPromptController;
  v9 = [(HDTTRPromptController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_profile, v7);
    v11 = [HDTTRPromptController _nameForDomainName:v8];
    name = v10->_name;
    v10->_name = v11;

    v10->_minimumPromptInterval = 604800.0;
    v10->_maximumErrorCount = 7;
    v10->_canRepromptOnSameBuild = 0;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Health error, %@", v10->_name];
    notificationTitle = v10->_notificationTitle;
    v10->_notificationTitle = v13;

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Health has run into a number of errors. Please file a radar with Tap-to-Radar against 'Health'"];
    notificationMessage = v10->_notificationMessage;
    v10->_notificationMessage = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] Multiple errors detected", v10->_name];
    radarTitle = v10->_radarTitle;
    v10->_radarTitle = v17;

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Multiple errors detected %@", v10->_name];
    radarDescription = v10->_radarDescription;
    v10->_radarDescription = v19;
  }

  return v10;
}

+ (id)_nameForDomainName:(uint64_t)a1
{
  v2 = a2;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", objc_opt_self(), v2];

  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v3 hk_stringByRemovingCharactersInSet:v4];

  return v5;
}

- (HDTTRPromptController)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)formattedPersistedValuesForDomainName:(id)a3 database:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = [HDTTRPromptController _nameForDomainName:a3];
  v8 = +[HDTTRPromptController _persistedValueKeys];
  v29 = 0;
  v9 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity _rawValuesForKeys:v8 domain:v7 category:0 database:v6 error:&v29];

  v10 = v29;
  if (!v9)
  {
    v18 = 0;
    goto LABEL_15;
  }

  if (![v9 count])
  {
    v18 = &stru_283BF39C8;
    goto LABEL_15;
  }

  v11 = [v9 objectForKeyedSubscript:@"Errors"];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v12 = MEMORY[0x277CCAAC8];
  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v28 = v10;
  v16 = [v12 unarchivedObjectOfClasses:v15 fromData:v11 error:&v28];
  v17 = v28;

  if (v16)
  {
    v10 = v17;
LABEL_9:
    v19 = [v9 objectForKeyedSubscript:@"LastPromptDate"];
    v20 = v19;
    v27 = v11;
    if (v19)
    {
      v21 = MEMORY[0x277CBEAA8];
      [v19 doubleValue];
      v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v22 = 0;
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = HKDiagnosticStringFromDate();
    v25 = [v9 objectForKeyedSubscript:@"LastPromptBuild"];
    v18 = [v23 stringWithFormat:@"%@ Values:\n%@: %@\n%@: %@\n%@: %@\n", v7, @"LastPromptDate", v24, @"LastPromptBuild", v25, @"Errors", v16];

    v11 = v27;
    goto LABEL_14;
  }

  v18 = 0;
  v10 = v17;
LABEL_14:

LABEL_15:

  return v18;
}

+ (id)_persistedValueKeys
{
  v3[3] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"Errors";
  v3[1] = @"LastPromptDate";
  v3[2] = @"LastPromptBuild";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HDTTRPromptController;
  v4 = [(HDTTRPromptController *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ %@>", v4, self->_name];

  return v5;
}

- (void)promptIfRequiredForReason:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v117[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (([MEMORY[0x277CCDD30] isAppleInternalInstall] & 1) != 0 || _HDIsUnitTesting)
  {
    v11 = [(HDTTRPromptController *)self _keyValueDomain];
    if (v6)
    {
      v12 = [MEMORY[0x277CBEB98] setWithObject:@"Errors"];
      v108 = 0;
      v13 = [v11 removeValuesForKeys:v12 error:&v108];
      v14 = v108;

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        loggingCategory = self->_loggingCategory;
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = @"Errors";
          *&buf[22] = 2114;
          v110 = v14;
          _os_log_error_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_ERROR, "%{public}@: unable to clear value for %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v16 = v9;
      goto LABEL_73;
    }

    if (!v9)
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:100 description:@"Error not provided"];
    }

    v101 = v11;
    if (self)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.ErrorDate", self->_name];
    }

    else
    {
      v17 = 0;
    }

    v116[0] = v17;
    v18 = [MEMORY[0x277CBEAA8] date];
    v19 = HKDiagnosticStringFromDate();
    v117[0] = v19;
    if (self)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.Reason", self->_name];
    }

    else
    {
      v20 = 0;
    }

    v116[1] = v20;
    v117[1] = v8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:2];
    v16 = [v9 hk_errorByAddingEntriesToUserInfo:v21];

    v22 = +[HDTTRPromptController _persistedValueKeys];
    v107 = 0;
    v11 = v101;
    v23 = [v101 valuesForKeys:v22 error:&v107];
    v14 = v107;
    if (!v23)
    {
      _HKInitializeLogging();
      v32 = self->_loggingCategory;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2114;
        v110 = v14;
        _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "%{public}@: unable to get values for keys %@: %{public}@", buf, 0x20u);
      }

      goto LABEL_72;
    }

    v97 = v22;
    v100 = v23;
    v24 = [v23 objectForKeyedSubscript:@"Errors"];
    v96 = v24;
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0x277CCAAC8];
      v27 = MEMORY[0x277CBEB98];
      v28 = objc_opt_class();
      v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
      v106 = v14;
      v30 = [v26 unarchivedObjectOfClasses:v29 fromData:v25 error:&v106];
      v31 = v106;

      if (!v30)
      {
        _HKInitializeLogging();
        v46 = self->_loggingCategory;
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v11 = v101;
          v47 = v96;
          v22 = v97;
LABEL_71:

          v14 = v31;
          v23 = v100;
LABEL_72:

LABEL_73:
          v9 = v16;
          goto LABEL_74;
        }

        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2112;
        v47 = v96;
        *&buf[14] = v96;
        *&buf[22] = 2112;
        v110 = v31;
        _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@: unable to unarchive errors from data %@: %@", buf, 0x20u);
        v11 = v101;
LABEL_70:
        v22 = v97;
        goto LABEL_71;
      }

      v14 = v31;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v92 = v8;
    [v30 insertObject:v16 atIndex:0];
    while ([v30 count] > self->_maximumErrorCount)
    {
      [v30 removeLastObject];
    }

    v33 = v16;
    v34 = [v23 objectForKeyedSubscript:@"LastPromptDate"];
    v95 = v34;
    if (v34)
    {
      v35 = MEMORY[0x277CBEAA8];
      [v34 doubleValue];
      v36 = [v35 dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      v36 = 0;
    }

    v37 = [v23 objectForKeyedSubscript:@"LastPromptBuild"];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v39 = [WeakRetained daemon];
    v40 = [v39 behavior];
    v99 = [v40 currentOSBuild];

    v41 = [v30 count];
    maximumErrorCount = self->_maximumErrorCount;
    v98 = v36;
    if (v36)
    {
      [v36 timeIntervalSinceNow];
      v44 = fabs(v43) <= self->_minimumPromptInterval;
    }

    else
    {
      v44 = 0;
    }

    v16 = v33;
    if (self->_canRepromptOnSameBuild)
    {
      v45 = 0;
      v8 = v92;
    }

    else
    {
      v8 = v92;
      if (v37 == v99)
      {
        goto LABEL_47;
      }

      if (v99)
      {
        v45 = [v37 isEqualToString:?];
      }

      else
      {
        v45 = 0;
      }
    }

    if (v41 >= maximumErrorCount && !v44 && (v45 & 1) == 0)
    {
      v88 = v16;
      v48 = v30;
      v49 = v37;
      v50 = v48;
      v89 = v49;
      v51 = v49;
      v52 = v98;
      v53 = MEMORY[0x277CCACA8];
      radarDescription = self->_radarDescription;
      v55 = v99;
      v93 = v52;
      v56 = HKDiagnosticStringFromDate();
      v57 = [v50 count];
      v90 = v50;
      v86 = v50;
      v58 = v51;
      v59 = [v53 stringWithFormat:@"%@. Last Prompt (%@, %@), Current (%@) Errors (%lu): %@", radarDescription, v51, v56, v55, v57, v86];
      v87 = v55;

      _HKInitializeLogging();
      v60 = self->_loggingCategory;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_impl(&dword_228986000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
      }

      v91 = v59;
      v61 = _HDIsUnitTesting;
      if (_HDIsUnitTesting)
      {
        v62 = _Block_copy(self->_unitTest_willPresentTTRAlertHandler);
        v63 = v62;
        v64 = v90;
        v65 = v58;
        v66 = v93;
        if (v62)
        {
          (*(v62 + 2))(v62, self, v90, v58, v93);
        }

        v16 = v88;
        v37 = v89;
      }

      else
      {
        atomic_compare_exchange_strong(&self->_isPresenting, &v61, 1u);
        v64 = v90;
        v16 = v88;
        v65 = v58;
        v37 = v89;
        v66 = v93;
        if (v61)
        {
LABEL_60:

          v105 = v14;
          v77 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v64 requiringSecureCoding:1 error:&v105];
          v78 = v105;

          if (v77)
          {
            v94 = v77;
            v115[0] = v77;
            v114[0] = @"Errors";
            v114[1] = @"LastPromptDate";
            v79 = MEMORY[0x277CCABB0];
            v80 = [MEMORY[0x277CBEAA8] date];
            [v80 timeIntervalSinceReferenceDate];
            v81 = [v79 numberWithDouble:?];
            v114[2] = @"LastPromptBuild";
            v115[1] = v81;
            v115[2] = v87;
            v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:3];

            v104 = v78;
            LOBYTE(v81) = [v101 setValuesWithDictionary:v82 error:&v104];
            v31 = v104;

            if ((v81 & 1) == 0)
            {
              _HKInitializeLogging();
              v83 = self->_loggingCategory;
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                *&buf[4] = self;
                *&buf[12] = 2114;
                *&buf[14] = v82;
                *&buf[22] = 2114;
                v110 = v31;
                _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "%{public}@: unable to set values %{public}@: %{public}@", buf, 0x20u);
              }
            }

            v11 = v101;
            v47 = v96;
            v77 = v94;
          }

          else
          {
            _HKInitializeLogging();
            v84 = self->_loggingCategory;
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v64;
              *&buf[22] = 2112;
              v110 = v78;
              _os_log_error_impl(&dword_228986000, v84, OS_LOG_TYPE_ERROR, "%{public}@: unable to archive errors %@: %@", buf, 0x20u);
            }

            v31 = v78;
            v11 = v101;
            v47 = v96;
          }

LABEL_69:
          goto LABEL_70;
        }

        v63 = objc_alloc_init(MEMORY[0x277D10BC0]);
        [v63 setTitle:self->_notificationTitle];
        v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@. Please file a radar with Tap-to-Radar against 'Health'", self->_notificationMessage];
        [v63 setMessage:v76];

        v66 = v93;
        [v63 setDefaultButton:@"Tap-to-Radar"];
        [v63 setCancelButton:@"Not Now"];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __96__HDTTRPromptController__presentTTRPromptForErrors_lastPromptBuild_lastPromptDate_currentBuild___block_invoke;
        v110 = &unk_2786188C8;
        *v111 = self;
        *&v111[8] = v91;
        [v63 presentWithResponseHandler:buf];
      }

      goto LABEL_60;
    }

LABEL_47:
    _HKInitializeLogging();
    v67 = self->_loggingCategory;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = v67;
      v69 = HKDiagnosticStringFromDate();
      v70 = [v30 count];
      *buf = 138544642;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v69;
      *&buf[22] = 2114;
      v110 = v37;
      *v111 = 2114;
      *&v111[2] = v99;
      *&v111[10] = 2048;
      *&v111[12] = v70;
      v112 = 2114;
      v113 = v30;
      _os_log_impl(&dword_228986000, v68, OS_LOG_TYPE_INFO, "%{public}@: TTR alert: lastPromptDate %{public}@, lastPromptBuild %{public}@ (current build %{public}@), errors (%lu) %{public}@", buf, 0x3Eu);
    }

    v103 = v14;
    v71 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v103];
    v31 = v103;

    v11 = v101;
    if (v71)
    {
      v102 = v31;
      v72 = [v101 setData:v71 forKey:@"Errors" error:&v102];
      v73 = v102;

      if ((v72 & 1) == 0)
      {
        _HKInitializeLogging();
        v74 = self->_loggingCategory;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = @"Errors";
          *&buf[22] = 2114;
          v110 = v73;
          _os_log_error_impl(&dword_228986000, v74, OS_LOG_TYPE_ERROR, "%{public}@: unable to set values for %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v47 = v71;
      v31 = v73;
      v11 = v101;
    }

    else
    {
      _HKInitializeLogging();
      v75 = self->_loggingCategory;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        *&buf[22] = 2112;
        v110 = v31;
        _os_log_error_impl(&dword_228986000, v75, OS_LOG_TYPE_ERROR, "%{public}@: unable to archive errors %@: %@", buf, 0x20u);
      }

      v47 = 0;
    }

    goto LABEL_69;
  }

  _HKInitializeLogging();
  v10 = self->_loggingCategory;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: skip TTR prompt check", buf, 0xCu);
  }

LABEL_74:

  v85 = *MEMORY[0x277D85DE8];
}

- (HDKeyValueDomain)_keyValueDomain
{
  v1 = a1;
  if (a1)
  {
    v2 = [HDKeyValueDomain alloc];
    category = v1->_category;
    WeakRetained = objc_loadWeakRetained(&v1->_profile);
    v1 = [(HDKeyValueDomain *)v2 initWithCategory:0 domainName:category profile:WeakRetained];
  }

  return v1;
}

void __96__HDTTRPromptController__presentTTRPromptForErrors_lastPromptBuild_lastPromptDate_currentBuild___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  atomic_store(0, (*(a1 + 32) + 24));
  if (a3 == 1)
  {
    _HKInitializeLogging();
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: TTR alert: 'Not Now' button pressed", buf, 0xCu);
    }
  }

  else if (!a3)
  {
    _HKInitializeLogging();
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: TTR alert: 'Tap-to-Radar' button pressed", buf, 0xCu);
      v9 = *(a1 + 32);
    }

    v11 = [MEMORY[0x277CBEBC0] hk_tapToHealthRadarURLWithTitle:*(v9 + 72) description:*(a1 + 40) classification:6 reproducibility:6 keywords:0 autoDiagnostics:2 attachments:0];
    v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v12 openURL:v11 configuration:0 completionHandler:&__block_literal_global_204];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __96__HDTTRPromptController__presentTTRPromptForErrors_lastPromptBuild_lastPromptDate_currentBuild___block_invoke_362(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Could not open Tap-to-Radar URL %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)unitTest_setLastPromptDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDTTRPromptController *)self _keyValueDomain];
  LOBYTE(a4) = [v7 setDate:v6 forKey:@"LastPromptDate" error:a4];

  return a4;
}

- (BOOL)unitTest_setLastPromptBuild:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HDTTRPromptController *)self _keyValueDomain];
  LOBYTE(a4) = [v7 setString:v6 forKey:@"LastPromptBuild" error:a4];

  return a4;
}

@end