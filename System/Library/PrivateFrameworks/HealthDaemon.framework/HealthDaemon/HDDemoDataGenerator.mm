@interface HDDemoDataGenerator
- (BOOL)isDemoDataTimeInWeekend:(double)a3 calendar:(id)a4;
- (HDDemoDataGenerator)init;
- (HDDemoDataGenerator)initWithProfile:(id)a3 configuration:(id)a4 queue:(id)a5;
- (HDDemoDataGenerator)initWithProfile:(id)a3 queue:(id)a4;
- (HDKeyValueDomain)_keyValueDomain;
- (HDProfile)profile;
- (double)_timeIntervalFromInitialGenerationPeriod:(void *)a3 currentDate:;
- (id)_phoneProvenance;
- (id)_unarchiveDataWithClass:(uint64_t)a3 error:;
- (id)currentDateFromCurrentTime:(double)a3;
- (int64_t)firstSampleDayOfYear;
- (uint64_t)_archiveObject:(uint64_t)a3 error:;
- (uint64_t)_queue_unarchivePluginGenerators;
- (void)_insertIntoDatabaseObjectCollection:(void *)a3 fromPerson:;
- (void)_queue_generateDataForDemoPerson:(void *)a3 startDate:(void *)a4 endDate:(uint64_t)a5 firstRun:(void *)a6 completionHandler:;
- (void)_queue_runDemoDataGeneratorForDemoPerson:(void *)a3 endDate:(void *)a4 completion:;
- (void)generateThroughEndDate:(id)a3 completion:(id)a4;
@end

@implementation HDDemoDataGenerator

- (HDDemoDataGenerator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDemoDataGenerator)initWithProfile:(id)a3 queue:(id)a4
{
  v6 = MEMORY[0x277CBEBD0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 standardUserDefaults];
  v10 = [HDDemoDataGeneratorConfiguration configurationFromDefaults:v9];
  v11 = [(HDDemoDataGenerator *)self initWithProfile:v8 configuration:v10 queue:v7];

  return v11;
}

- (HDDemoDataGenerator)initWithProfile:(id)a3 configuration:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = HDDemoDataGenerator;
  v11 = [(HDDemoDataGenerator *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_queue, a5);
    v13 = objc_alloc(MEMORY[0x277CBEA80]);
    v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    gregorianCalendar = v12->_gregorianCalendar;
    v12->_gregorianCalendar = v14;

    v16 = v12->_gregorianCalendar;
    v17 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSCalendar *)v16 setTimeZone:v17];

    v12->_isGeneratingDemoData = 0;
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appProvenances = v12->_appProvenances;
    v12->_appProvenances = v18;

    objc_storeStrong(&v12->_configuration, a4);
  }

  return v12;
}

- (void)generateThroughEndDate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:self activityName:@"demo-data-generation"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HDDemoDataGenerator_generateThroughEndDate_completion___block_invoke;
  aBlock[3] = &unk_278626F10;
  v20 = v9;
  v21 = v8;
  v10 = v9;
  v11 = _Block_copy(aBlock);
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HDDemoDataGenerator_generateThroughEndDate_completion___block_invoke_2;
  v15[3] = &unk_278623728;
  v17 = v11;
  v18 = a2;
  v15[4] = self;
  v16 = v7;
  v13 = v7;
  v14 = v11;
  dispatch_async(queue, v15);
}

void __57__HDDemoDataGenerator_generateThroughEndDate_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __57__HDDemoDataGenerator_generateThroughEndDate_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = a1[5];
    v5 = a1[6];

    [(HDDemoDataGenerator *)v2 _queue_runDemoDataGeneratorForDemoPerson:v3 endDate:v4 completion:v5];
  }

  else
  {
    v6 = a1[6];
    v7 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[7] format:@"Unable to generate demo data before a person has been set."];
    (*(v6 + 16))(v6, 0, 0, v7);
  }
}

- (void)_queue_runDemoDataGeneratorForDemoPerson:(void *)a3 endDate:(void *)a4 completion:
{
  v250 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [*(a1 + 96) shouldGenerateMedicalID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__HDDemoDataGenerator__queue_runDemoDataGeneratorForDemoPerson_endDate_completion___block_invoke;
    aBlock[3] = &unk_278626F38;
    aBlock[4] = a1;
    v224 = v9;
    v11 = _Block_copy(aBlock);
    if (*(a1 + 72))
    {
LABEL_104:

      goto LABEL_105;
    }

    v216 = v9;
    v217 = v8;
    v218 = v7;
    *(a1 + 72) = 1;
    v12 = objc_opt_class();
    v248[0] = 0;
    v13 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v12 error:v248];
    v14 = v248[0];
    v15 = *(a1 + 48);
    *(a1 + 48) = v13;

    v16 = off_27860E000;
    v17 = MEMORY[0x277CCC2B8];
    v215 = v11;
    v214 = v10;
    if (!*(a1 + 48))
    {
      _HKInitializeLogging();
      v86 = *v17;
      if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v14;
      v87 = "Failed to unarchive data for HDDemoDataGeneratorState: %{public}@";
      goto LABEL_32;
    }

    v18 = objc_opt_class();
    *&v244 = v14;
    v19 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v18 error:&v244];
    v20 = v244;

    v21 = *(a1 + 216);
    *(a1 + 216) = v19;

    if (*(a1 + 216))
    {
      v22 = objc_opt_class();
      *&v240 = v20;
      v23 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v22 error:&v240];
      v14 = v240;

      v24 = *(a1 + 104);
      *(a1 + 104) = v23;

      v25 = *(a1 + 104);
      WeakRetained = objc_loadWeakRetained((a1 + 80));
      v27 = [(HDDemoDataGenerator *)a1 _phoneProvenance];
      [v25 setProfile:WeakRetained provenance:v27];

      if (!*(a1 + 104))
      {
        _HKInitializeLogging();
        v90 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 138543362;
          *(buf + 4) = v14;
          _os_log_error_impl(&dword_228986000, v90, OS_LOG_TYPE_ERROR, "Failed to unarchive data for HDDemoDataActivitySampleGenerator: %{public}@", buf, 0xCu);
        }

        v16 = off_27860E000;
        goto LABEL_66;
      }

      v28 = objc_opt_class();
      v239 = v14;
      v29 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v28 error:&v239];
      v20 = v239;

      v30 = *(a1 + 112);
      *(a1 + 112) = v29;

      if (*(a1 + 112))
      {
        v31 = objc_opt_class();
        v238 = v20;
        v32 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v31 error:&v238];
        v14 = v238;

        v33 = *(a1 + 120);
        *(a1 + 120) = v32;

        v16 = off_27860E000;
        if (!*(a1 + 120))
        {
          _HKInitializeLogging();
          v86 = *MEMORY[0x277CCC2B8];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          LODWORD(buf[0]) = 138543362;
          *(buf + 4) = v14;
          v87 = "Failed to unarchive data for HDDemoDataAudioExposureSampleGenerator: %{public}@";
          goto LABEL_32;
        }

        v34 = objc_opt_class();
        v237 = v14;
        v35 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v34 error:&v237];
        v20 = v237;

        v36 = *(a1 + 128);
        *(a1 + 128) = v35;

        if (*(a1 + 128))
        {
          v37 = objc_opt_class();
          v236 = v20;
          v38 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v37 error:&v236];
          v14 = v236;

          v39 = *(a1 + 136);
          *(a1 + 136) = v38;

          if (!*(a1 + 136))
          {
            _HKInitializeLogging();
            v86 = *MEMORY[0x277CCC2B8];
            if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_66;
            }

            LODWORD(buf[0]) = 138543362;
            *(buf + 4) = v14;
            v87 = "Failed to unarchive data for HDDemoDataBodySampleGenerator: %{public}@";
            goto LABEL_32;
          }

          v40 = objc_opt_class();
          v235 = v14;
          v41 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v40 error:&v235];
          v20 = v235;

          v42 = *(a1 + 144);
          *(a1 + 144) = v41;

          if (*(a1 + 144))
          {
            v43 = objc_opt_class();
            v234 = v20;
            v44 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v43 error:&v234];
            v14 = v234;

            v45 = *(a1 + 152);
            *(a1 + 152) = v44;

            if (!*(a1 + 152))
            {
              _HKInitializeLogging();
              v86 = *MEMORY[0x277CCC2B8];
              if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_66;
              }

              LODWORD(buf[0]) = 138543362;
              *(buf + 4) = v14;
              v87 = "Failed to unarchive data for HDDemoDataHealthDocumentSampleGenerator: %{public}@";
              goto LABEL_32;
            }

            v46 = objc_opt_class();
            v233 = v14;
            v47 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v46 error:&v233];
            v20 = v233;

            v48 = *(a1 + 160);
            *(a1 + 160) = v47;

            if (*(a1 + 160))
            {
              v49 = objc_opt_class();
              v232 = v20;
              v50 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v49 error:&v232];
              v14 = v232;

              v51 = *(a1 + 168);
              *(a1 + 168) = v50;

              if (!*(a1 + 168))
              {
                _HKInitializeLogging();
                v86 = *MEMORY[0x277CCC2B8];
                if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_66;
                }

                LODWORD(buf[0]) = 138543362;
                *(buf + 4) = v14;
                v87 = "Failed to unarchive data for HDDemoDataMindfulnessSampleGenerator: %{public}@";
                goto LABEL_32;
              }

              v52 = objc_opt_class();
              v231 = v14;
              v53 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v52 error:&v231];
              v20 = v231;

              v54 = *(a1 + 176);
              *(a1 + 176) = v53;

              if (*(a1 + 176))
              {
                v55 = objc_opt_class();
                v230 = v20;
                v56 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v55 error:&v230];
                v14 = v230;

                v57 = *(a1 + 184);
                *(a1 + 184) = v56;

                if (!*(a1 + 184))
                {
                  _HKInitializeLogging();
                  v86 = *MEMORY[0x277CCC2B8];
                  if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_66;
                  }

                  LODWORD(buf[0]) = 138543362;
                  *(buf + 4) = v14;
                  v87 = "Failed to unarchive data for HDDemoDataOtherAndAdditionalSampleGenerator: %{public}@";
                  goto LABEL_32;
                }

                v58 = objc_opt_class();
                v229 = v14;
                v59 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v58 error:&v229];
                v20 = v229;

                v60 = *(a1 + 192);
                *(a1 + 192) = v59;

                if (*(a1 + 192))
                {
                  v61 = objc_opt_class();
                  v228 = v20;
                  v62 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v61 error:&v228];
                  v14 = v228;

                  v63 = *(a1 + 200);
                  *(a1 + 200) = v62;

                  if (!*(a1 + 200))
                  {
                    _HKInitializeLogging();
                    v86 = *MEMORY[0x277CCC2B8];
                    if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_66;
                    }

                    LODWORD(buf[0]) = 138543362;
                    *(buf + 4) = v14;
                    v87 = "Failed to unarchive data for HDDemoDataReproductiveHealthSampleGenerator: %{public}@";
                    goto LABEL_32;
                  }

                  v64 = objc_loadWeakRetained((a1 + 80));
                  [*(a1 + 200) setProfile:v64];

                  v65 = objc_opt_class();
                  v227 = v14;
                  v66 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v65 error:&v227];
                  v20 = v227;

                  v67 = *(a1 + 208);
                  *(a1 + 208) = v66;

                  if (*(a1 + 208))
                  {
                    v68 = objc_opt_class();
                    v226 = v20;
                    v69 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v68 error:&v226];
                    v14 = v226;

                    v70 = *(a1 + 224);
                    *(a1 + 224) = v69;

                    if (*(a1 + 224))
                    {
                      v71 = objc_opt_class();
                      v225 = v14;
                      v72 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v71 error:&v225];
                      v73 = v225;

                      v74 = *(a1 + 232);
                      *(a1 + 232) = v72;

                      if (*(a1 + 232))
                      {
                        if ([(HDDemoDataGenerator *)a1 _queue_unarchivePluginGenerators])
                        {
                          _HKInitializeLogging();
                          v75 = *MEMORY[0x277CCC2B8];
                          if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf[0]) = 0;
                            _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_DEFAULT, "Successfully restored state from last demo data generation", buf, 2u);
                          }

                          v76 = [*(a1 + 48) lastRunDate];

                          if (v76)
                          {
                            v77 = [*(a1 + 48) lastRunDate];
                            [v8 timeIntervalSinceDate:v77];
                            v79 = v78;

                            _HKInitializeLogging();
                            v80 = *MEMORY[0x277CCC2B8];
                            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
                            {
                              v81 = *(a1 + 48);
                              v82 = v80;
                              v83 = [v81 lastSampleDate];
                              LODWORD(buf[0]) = 138412290;
                              *(buf + 4) = v83;
                              _os_log_impl(&dword_228986000, v82, OS_LOG_TYPE_DEFAULT, "Last sample date: %@", buf, 0xCu);
                            }

                            _HKInitializeLogging();
                            v84 = *MEMORY[0x277CCC2B8];
                            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 134217984;
                              *(buf + 4) = v79 * 0.000277777778;
                              _os_log_impl(&dword_228986000, v84, OS_LOG_TYPE_DEFAULT, "Elapsed time since last run date: %.2f hr", buf, 0xCu);
                            }

                            v85 = [*(a1 + 48) lastSampleDate];
                            v11 = v215;
                            [(HDDemoDataGenerator *)a1 _queue_generateDataForDemoPerson:v7 startDate:v85 endDate:v8 firstRun:0 completionHandler:v215];
LABEL_103:

                            v9 = v216;
                            goto LABEL_104;
                          }

LABEL_67:
                          v91 = objc_alloc_init(HDDemoDataGeneratorState);
                          v92 = *(a1 + 48);
                          *(a1 + 48) = v91;

                          v93 = objc_alloc_init(HDDemoDataStatisticsSampleGenerator);
                          v94 = *(a1 + 216);
                          *(a1 + 216) = v93;

                          v95 = objc_alloc_init(HDDemoDataActivitySampleGenerator);
                          v96 = *(a1 + 104);
                          *(a1 + 104) = v95;

                          v97 = *(a1 + 104);
                          v98 = objc_loadWeakRetained((a1 + 80));
                          v99 = [(HDDemoDataGenerator *)a1 _phoneProvenance];
                          [v97 setProfile:v98 provenance:v99];

                          v100 = objc_alloc_init(HDDemoDataAudioExposureSampleGenerator);
                          v101 = *(a1 + 120);
                          *(a1 + 120) = v100;

                          v102 = objc_alloc_init(HDDemoDataAudiogramSampleGenerator);
                          v103 = *(a1 + 128);
                          *(a1 + 128) = v102;

                          v104 = objc_alloc_init(HDDemoDataAlcoholSampleGenerator);
                          v105 = *(a1 + 112);
                          *(a1 + 112) = v104;

                          v106 = objc_alloc_init(HDDemoDataBodySampleGenerator);
                          v107 = *(a1 + 136);
                          *(a1 + 136) = v106;

                          v108 = objc_alloc_init(HDDemoDataFoodSampleGenerator);
                          v109 = *(a1 + 144);
                          *(a1 + 144) = v108;

                          v110 = objc_alloc_init(HDDemoDataHealthDocumentSampleGenerator);
                          v111 = *(a1 + 152);
                          *(a1 + 152) = v110;

                          v112 = objc_alloc_init(HDDemoDataHeartSampleGenerator);
                          v113 = *(a1 + 160);
                          *(a1 + 160) = v112;

                          v114 = *(a1 + 160);
                          v115 = objc_loadWeakRetained((a1 + 80));
                          v116 = [(HDDemoDataGenerator *)a1 _phoneProvenance];
                          [v114 setProfile:v115 provenance:v116];

                          v117 = objc_alloc_init(HDDemoDataMindfulnessSampleGenerator);
                          v118 = *(a1 + 168);
                          *(a1 + 168) = v117;

                          v119 = objc_alloc_init(HDDemoDataMobilitySampleGenerator);
                          v120 = *(a1 + 176);
                          *(a1 + 176) = v119;

                          v121 = objc_loadWeakRetained((a1 + 80));
                          [*(a1 + 176) setProfile:v121];

                          v122 = objc_alloc_init(HDDemoDataOtherAndAdditionalSampleGenerator);
                          v123 = *(a1 + 184);
                          *(a1 + 184) = v122;

                          v124 = objc_alloc_init(HDDemoDataPathologySampleGenerator);
                          v125 = *(a1 + 192);
                          *(a1 + 192) = v124;

                          v126 = objc_alloc_init(HDDemoDataReproductiveHealthSampleGenerator);
                          v127 = *(a1 + 200);
                          *(a1 + 200) = v126;

                          v128 = objc_loadWeakRetained((a1 + 80));
                          [*(a1 + 200) setProfile:v128];

                          v129 = objc_alloc_init(HDDemoDataSleepSampleGenerator);
                          v130 = *(a1 + 208);
                          *(a1 + 208) = v129;

                          v131 = objc_alloc_init(HDDemoDataSymptomsSampleGenerator);
                          v132 = *(a1 + 224);
                          *(a1 + 224) = v131;

                          v133 = objc_alloc_init(v16[330]);
                          v134 = *(a1 + 232);
                          *(a1 + 232) = v133;

                          v135 = objc_alloc_init(MEMORY[0x277CBEB18]);
                          v221 = objc_alloc_init(MEMORY[0x277CBEB18]);
                          v136 = objc_loadWeakRetained((a1 + 80));
                          v137 = [v136 daemon];
                          v138 = [v137 pluginManager];
                          v139 = [v138 pluginsConformingToProtocol:&unk_283D71558];
                          v140 = [v139 allValues];

                          v246 = 0u;
                          v247 = 0u;
                          v244 = 0u;
                          v245 = 0u;
                          obj = v140;
                          v141 = [obj countByEnumeratingWithState:&v244 objects:buf count:16];
                          if (v141)
                          {
                            v142 = v141;
                            v220 = *v245;
                            do
                            {
                              for (i = 0; i != v142; ++i)
                              {
                                if (*v245 != v220)
                                {
                                  objc_enumerationMutation(obj);
                                }

                                v144 = [*(*(&v244 + 1) + 8 * i) demoDataGeneratorClasses];
                                v240 = 0u;
                                v241 = 0u;
                                v242 = 0u;
                                v243 = 0u;
                                v145 = [v144 countByEnumeratingWithState:&v240 objects:v248 count:16];
                                if (v145)
                                {
                                  v146 = v145;
                                  v147 = *v241;
                                  do
                                  {
                                    for (j = 0; j != v146; ++j)
                                    {
                                      if (*v241 != v147)
                                      {
                                        objc_enumerationMutation(v144);
                                      }

                                      v149 = objc_alloc_init(*(*(&v240 + 1) + 8 * j));
                                      v150 = objc_loadWeakRetained((a1 + 80));
                                      [v149 setDemoDataGenerationContextWithProfile:v150 generatorState:*(a1 + 48)];

                                      [v135 addObject:v149];
                                    }

                                    v146 = [v144 countByEnumeratingWithState:&v240 objects:v248 count:16];
                                  }

                                  while (v146);
                                }

                                [v221 addObjectsFromArray:v144];
                              }

                              v142 = [obj countByEnumeratingWithState:&v244 objects:buf count:16];
                            }

                            while (v142);
                          }

                          v151 = *(a1 + 32);
                          *(a1 + 32) = v221;
                          v152 = v221;

                          v153 = *(a1 + 24);
                          *(a1 + 24) = v135;

                          v248[0] = *MEMORY[0x277CCE598];
                          v154 = v218;
                          v155 = [v154 firstName];
                          v156 = v155;
                          if (v155)
                          {
                            v157 = v155;
                          }

                          else
                          {
                            v157 = &stru_283BF39C8;
                          }

                          *&buf[0] = v157;
                          v248[1] = *MEMORY[0x277CCE5A0];
                          v158 = [v154 lastName];
                          v159 = v158;
                          if (v158)
                          {
                            v160 = v158;
                          }

                          else
                          {
                            v160 = &stru_283BF39C8;
                          }

                          *(&buf[0] + 1) = v160;
                          v222 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v248 count:2];

                          v161 = objc_loadWeakRetained((a1 + 80));
                          v162 = [HDKeyValueDomain healthAppUserDefaultsDomainWithProfile:v161];

                          [v162 setPropertyListValue:v222 forKey:*MEMORY[0x277CCE5A8] error:0];
                          v163 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
                          v164 = objc_loadWeakRetained((a1 + 80));
                          v165 = [v164 userCharacteristicsManager];
                          v166 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v154, "biologicalSex")}];
                          [v165 setUserCharacteristic:v166 forType:v163 error:0];

                          v167 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB10]];
                          v168 = objc_loadWeakRetained((a1 + 80));
                          v169 = [v168 userCharacteristicsManager];
                          v170 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v154, "bloodType")}];
                          [v169 setUserCharacteristic:v170 forType:v167 error:0];

                          v171 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB20]];
                          v172 = objc_loadWeakRetained((a1 + 80));
                          v173 = [v172 userCharacteristicsManager];
                          v174 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v154, "fitzpatrickSkinType")}];
                          [v173 setUserCharacteristic:v174 forType:v171 error:0];

                          v175 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB18]];
                          v176 = objc_loadWeakRetained((a1 + 80));
                          v177 = [v176 userCharacteristicsManager];
                          v178 = [v154 birthDateComponents];

                          [v177 setUserCharacteristic:v178 forType:v175 error:0];
                          v179 = MEMORY[0x277CCC2B8];
                          if (v214)
                          {
                            [v154 updateMedicalIDData];
                            v180 = v154;
                            v181 = objc_loadWeakRetained((a1 + 80));
                            v182 = [v181 medicalIDDataManager];
                            v183 = [v180 medicalIDData];

                            v248[0] = 0;
                            v184 = [v182 updateMedicalIDWithLocalData:v183 error:v248];
                            v185 = v248[0];

                            if ((v184 & 1) == 0)
                            {
                              _HKInitializeLogging();
                              v186 = *v179;
                              if (os_log_type_enabled(*v179, OS_LOG_TYPE_ERROR))
                              {
                                LODWORD(buf[0]) = 138543362;
                                *(buf + 4) = v185;
                                _os_log_error_impl(&dword_228986000, v186, OS_LOG_TYPE_ERROR, "Error updating medical ID: %{public}@", buf, 0xCu);
                              }
                            }
                          }

                          v8 = v217;
                          v187 = [*(a1 + 96) generationPeriodInDays];
                          v188 = [*(a1 + 56) startOfDayForDate:v8];
                          [v8 timeIntervalSinceDate:v188];
                          v190 = v189;

                          if (v190 < 0.0)
                          {
                            v190 = 0.0;
                          }

                          _HKInitializeLogging();
                          v191 = *v179;
                          if (os_log_type_enabled(*v179, OS_LOG_TYPE_DEFAULT))
                          {
                            LODWORD(buf[0]) = 134217984;
                            *(buf + 4) = v190;
                            _os_log_impl(&dword_228986000, v191, OS_LOG_TYPE_DEFAULT, "Seconds elapsed today: %f", buf, 0xCu);
                          }

                          v192 = v190 + [(HDDemoDataGenerator *)a1 _timeIntervalFromInitialGenerationPeriod:v187 currentDate:v8];

                          v193 = *(a1 + 56);
                          v194 = [v8 dateByAddingTimeInterval:-v192];
                          v195 = [v193 startOfDayForDate:v194];
                          [*(a1 + 48) setFirstSampleDate:v195];

                          v85 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1442102400.0];
                          v196 = [*(a1 + 48) firstSampleDate];
                          LODWORD(v194) = [v196 hk_isBeforeDate:v85];

                          v7 = v218;
                          if (v194)
                          {
                            _HKInitializeLogging();
                            v197 = *v179;
                            if (os_log_type_enabled(*v179, OS_LOG_TYPE_DEFAULT))
                            {
                              v198 = *(a1 + 48);
                              v199 = v197;
                              v200 = [v198 firstSampleDate];
                              LODWORD(buf[0]) = 138412290;
                              *(buf + 4) = v200;
                              _os_log_impl(&dword_228986000, v199, OS_LOG_TYPE_DEFAULT, "We have a pre-historic current date (%@), setting to something sane.", buf, 0xCu);
                            }

                            v201 = [*(a1 + 56) startOfDayForDate:v85];
                            [*(a1 + 48) setFirstSampleDate:v201];

                            v202 = [*(a1 + 96) generationPeriodInDays];
                            v203 = [*(a1 + 48) firstSampleDate];
                            v204 = [(HDDemoDataGenerator *)a1 _timeIntervalFromInitialGenerationPeriod:v202 currentDate:v203];

                            v205 = [*(a1 + 48) firstSampleDate];
                            v206 = [v205 dateByAddingTimeInterval:v204];

                            v8 = v206;
                          }

                          _HKInitializeLogging();
                          v207 = *v179;
                          if (os_log_type_enabled(*v179, OS_LOG_TYPE_DEFAULT))
                          {
                            v208 = *(a1 + 48);
                            v209 = v207;
                            v210 = [v208 firstSampleDate];
                            LODWORD(buf[0]) = 138412290;
                            *(buf + 4) = v210;
                            _os_log_impl(&dword_228986000, v209, OS_LOG_TYPE_DEFAULT, "First sample date: %@", buf, 0xCu);
                          }

                          v211 = [*(a1 + 48) firstSampleDate];
                          v11 = v215;
                          [(HDDemoDataGenerator *)a1 _queue_generateDataForDemoPerson:v154 startDate:v211 endDate:v8 firstRun:1 completionHandler:v215];

                          goto LABEL_103;
                        }
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v213 = *MEMORY[0x277CCC2B8];
                        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(buf[0]) = 138543362;
                          *(buf + 4) = v73;
                          _os_log_error_impl(&dword_228986000, v213, OS_LOG_TYPE_ERROR, "Failed to unarchive data for HDDemoDataVitalsSampleGenerator: %{public}@", buf, 0xCu);
                        }
                      }

                      v14 = v73;
LABEL_66:

                      goto LABEL_67;
                    }

                    _HKInitializeLogging();
                    v86 = *MEMORY[0x277CCC2B8];
                    if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_66;
                    }

                    LODWORD(buf[0]) = 138543362;
                    *(buf + 4) = v14;
                    v87 = "Failed to unarchive data for HDDemoDataSymptomsSampleGenerator: %{public}@";
LABEL_32:
                    _os_log_error_impl(&dword_228986000, v86, OS_LOG_TYPE_ERROR, v87, buf, 0xCu);
                    goto LABEL_66;
                  }

                  _HKInitializeLogging();
                  v88 = *MEMORY[0x277CCC2B8];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(buf[0]) = 138543362;
                    *(buf + 4) = v20;
                    v89 = "Failed to unarchive data for HDDemoDataSleepSampleGenerator: %{public}@";
                    goto LABEL_64;
                  }

LABEL_65:
                  v14 = v20;
                  goto LABEL_66;
                }

                _HKInitializeLogging();
                v88 = *MEMORY[0x277CCC2B8];
                if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_65;
                }

                LODWORD(buf[0]) = 138543362;
                *(buf + 4) = v20;
                v89 = "Failed to unarchive data for HDDemoDataPathologySampleGenerator: %{public}@";
              }

              else
              {
                _HKInitializeLogging();
                v88 = *MEMORY[0x277CCC2B8];
                if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_65;
                }

                LODWORD(buf[0]) = 138543362;
                *(buf + 4) = v20;
                v89 = "Failed to unarchive data for HDDemoDataMobilitySampleGenerator: %{public}@";
              }
            }

            else
            {
              _HKInitializeLogging();
              v88 = *MEMORY[0x277CCC2B8];
              if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_65;
              }

              LODWORD(buf[0]) = 138543362;
              *(buf + 4) = v20;
              v89 = "Failed to unarchive data for HDDemoDataHeartSampleGenerator: %{public}@";
            }
          }

          else
          {
            _HKInitializeLogging();
            v88 = *MEMORY[0x277CCC2B8];
            if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }

            LODWORD(buf[0]) = 138543362;
            *(buf + 4) = v20;
            v89 = "Failed to unarchive data for HDDemoDataFoodSampleGenerator: %{public}@";
          }
        }

        else
        {
          _HKInitializeLogging();
          v88 = *MEMORY[0x277CCC2B8];
          if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_65;
          }

          LODWORD(buf[0]) = 138543362;
          *(buf + 4) = v20;
          v89 = "Failed to unarchive data for HDDemoDataAudiogramSampleGenerator: %{public}@";
        }
      }

      else
      {
        _HKInitializeLogging();
        v88 = *MEMORY[0x277CCC2B8];
        v16 = off_27860E000;
        if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_65;
        }

        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = v20;
        v89 = "Failed to unarchive data for HDDemoDataAlcoholSampleGenerator: %{public}@";
      }
    }

    else
    {
      _HKInitializeLogging();
      v88 = *MEMORY[0x277CCC2B8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v20;
      v89 = "Failed to unarchive data for HDDemoDataStatisticsSampleGenerator: %{public}@";
    }

LABEL_64:
    _os_log_error_impl(&dword_228986000, v88, OS_LOG_TYPE_ERROR, v89, buf, 0xCu);
    goto LABEL_65;
  }

LABEL_105:

  v212 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HDDemoDataGenerator__queue_runDemoDataGeneratorForDemoPerson_endDate_completion___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 48) isFirstRun])
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [MEMORY[0x277CBEAA8] date];
    [v2 setValue:v3 forKey:@"HealthDemoDataFirstRunDateKey"];
  }

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [*(*(a1 + 32) + 48) firstSampleDate];
  [v4 setValue:v5 forKey:@"HealthDemoDataFirstSampleDateKey"];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [*(*(a1 + 32) + 48) lastSampleDate];
  [v6 setValue:v7 forKey:@"HealthDemoDataLastSampleDateKey"];

  v8 = [MEMORY[0x277CBEAA8] date];
  [*(*(a1 + 32) + 48) setLastRunDate:v8];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [*(*(a1 + 32) + 48) lastRunDate];
  [v9 setValue:v10 forKey:@"HealthDemoDataLastRunDateKey"];

  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC2B8];
  v12 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 32) + 48);
    v14 = v12;
    v15 = [v13 lastRunDate];
    *buf = 138412290;
    v50 = v15;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "Last run date: %@", buf, 0xCu);
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 48);
  v44 = 0;
  v18 = [(HDDemoDataGenerator *)v16 _archiveObject:v17 error:&v44];
  v19 = v44;
  if (v18)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = *(v16 + 16);
    v21 = [v20 countByEnumeratingWithState:&v40 objects:buf count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      while (2)
      {
        v24 = 0;
        v25 = v19;
        do
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v40 + 1) + 8 * v24);
          v39 = v25;
          v27 = [(HDDemoDataGenerator *)v16 _archiveObject:v26 error:&v39];
          v19 = v39;

          if ((v27 & 1) == 0)
          {
            _HKInitializeLogging();
            v33 = *MEMORY[0x277CCC2B8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
            {
              v36 = v33;
              v37 = objc_opt_class();
              v38 = NSStringFromClass(v37);
              *v45 = 138543618;
              v46 = v38;
              v47 = 2114;
              v48 = v19;
              _os_log_error_impl(&dword_228986000, v36, OS_LOG_TYPE_ERROR, "Failed to archive %{public}@ data: %{public}@", v45, 0x16u);
            }

            goto LABEL_21;
          }

          ++v24;
          v25 = v19;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v40 objects:buf count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v28 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "Successfully saved state from demo data generation", v45, 2u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v29 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v30 = v29;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543618;
      v50 = v32;
      v51 = 2114;
      v52 = v19;
      _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Failed to archive %{public}@ data: %{public}@", buf, 0x16u);
    }
  }

LABEL_21:

  *(*(a1 + 32) + 72) = 0;
  result = (*(*(a1 + 40) + 16))();
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)_timeIntervalFromInitialGenerationPeriod:(void *)a3 currentDate:
{
  v5 = a3;
  if (a2 == -1)
  {
    v6 = ([*(a1 + 56) ordinalityOfUnit:16 inUnit:4 forDate:v5] - 1);
  }

  else
  {
    v6 = a2;
  }

  v7 = v6 * 86400.0;

  return v7;
}

- (void)_queue_generateDataForDemoPerson:(void *)a3 startDate:(void *)a4 endDate:(uint64_t)a5 firstRun:(void *)a6 completionHandler:
{
  v250 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v215 = a6;
  *(a1 + 64) = 0;
  v14 = DisplayNameForHDDemoDataProfileType([*(a1 + 96) profileType]);
  v218 = v11;
  v15 = NSStringFromHKBiologicalSex([v11 biologicalSex]);
  v216 = v13;
  v217 = v12;
  [v13 timeIntervalSinceDate:v12];
  v17 = v16;
  [*(a1 + 48) setFirstRun:a5];
  [*(a1 + 48) setFinished:0];
  [*(a1 + 48) startTime];
  [*(a1 + 48) setCurrentTime:?];
  [*(a1 + 48) startTime];
  [*(a1 + 48) setEndTime:v18 + v17 * 0.0000115740741];
  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v14 lowercaseString];
    v22 = [v15 lowercaseString];
    *buf = 138412802;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2048;
    *&v236 = v17 * 0.0000115740741;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Generating %@ %@ (gender) demo data for %.2f days", buf, 0x20u);
  }

  _HKInitializeLogging();
  v23 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v17;
    _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Generation time: %f", buf, 0xCu);
  }

  _HKInitializeLogging();
  v24 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 48);
    v26 = v24;
    [v25 startTime];
    *buf = 134217984;
    *&buf[4] = v27;
    _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "When started Start time: %f", buf, 0xCu);
  }

  _HKInitializeLogging();
  v28 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 48);
    v30 = v28;
    [v29 startTime];
    v31 = [a1 currentDateFromCurrentTime:?];
    *buf = 138412290;
    *&buf[4] = v31;
    _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "When started Start date: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v32 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 48);
    v34 = v32;
    [v33 currentTime];
    *buf = 134217984;
    *&buf[4] = v35;
    _os_log_impl(&dword_228986000, v34, OS_LOG_TYPE_DEFAULT, "When started Current time: %f", buf, 0xCu);
  }

  _HKInitializeLogging();
  v36 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v37 = *(a1 + 48);
    v38 = v36;
    [v37 currentTime];
    v39 = [a1 currentDateFromCurrentTime:?];
    *buf = 138412290;
    *&buf[4] = v39;
    _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "When started Current date: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v40 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 48);
    v42 = v40;
    [v41 endTime];
    *buf = 134217984;
    *&buf[4] = v43;
    _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_DEFAULT, "When started End time: %f", buf, 0xCu);
  }

  v213 = v15;
  v214 = v14;
  _HKInitializeLogging();
  v44 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v45 = *(a1 + 48);
    v46 = v44;
    [v45 endTime];
    v47 = [a1 currentDateFromCurrentTime:?];
    *buf = 138412290;
    *&buf[4] = v47;
    _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "When started End date: %@", buf, 0xCu);
  }

  v48 = [MEMORY[0x277CBEB18] array];
  v49 = *(a1 + 104);
  v50 = *(a1 + 112);
  v51 = *(a1 + 224);
  *buf = *(a1 + 216);
  *&buf[8] = v49;
  v236 = *(a1 + 120);
  v52 = *(a1 + 136);
  *&buf[16] = v50;
  v237 = v52;
  v53 = *(a1 + 160);
  v238 = *(a1 + 144);
  v239 = v53;
  v54 = *(a1 + 184);
  v240 = *(a1 + 176);
  v241 = v54;
  v55 = *(a1 + 192);
  v243 = *(a1 + 200);
  v242 = v55;
  v56 = *(a1 + 232);
  v244 = v51;
  v245 = v56;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:17];
  [v48 addObjectsFromArray:v57];

  [v48 addObjectsFromArray:*(a1 + 24)];
  objc_storeStrong((a1 + 16), v48);
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v58 = *(a1 + 16);
  v59 = [v58 countByEnumeratingWithState:&v231 objects:&v246 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v232;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v232 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v231 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v63 setupWithDemoDataGenerator:a1];
        }
      }

      v60 = [v58 countByEnumeratingWithState:&v231 objects:&v246 count:16];
    }

    while (v60);
  }

  v64 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v64 setObject:&unk_283CB3D08 forKey:?];

  Current = CFAbsoluteTimeGetCurrent();
  if ([*(a1 + 48) isFinished])
  {
    goto LABEL_27;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v99 = [WeakRetained dataManager];
  [v99 openObserverTransaction];

  v225 = a1;
  if (a5)
  {
    v100 = *(a1 + 88);
    v101 = objc_autoreleasePoolPush();
    v102 = objc_alloc_init(HDDemoDataBaseSampleGeneratorObjectCollection);
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v103 = *(a1 + 16);
    v104 = [v103 countByEnumeratingWithState:&v246 objects:buf count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v247;
      do
      {
        for (j = 0; j != v105; ++j)
        {
          if (*v247 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = *(*(&v246 + 1) + 8 * j);
          v109 = [v225[6] firstSampleDate];
          [v108 generateFirstRunObjectsForDemoPerson:v100 firstDate:v109 objectCollection:v102];
        }

        v105 = [v103 countByEnumeratingWithState:&v246 objects:buf count:16];
      }

      while (v105);
    }

    a1 = v225;
    [(HDDemoDataGenerator *)v225 _insertIntoDatabaseObjectCollection:v102 fromPerson:v100];

    objc_autoreleasePoolPop(v101);
  }

  v220 = *MEMORY[0x277CBE5C0];
  while (2)
  {
    v222 = *(a1 + 88);
    context = objc_autoreleasePoolPush();
    v110 = objc_alloc_init(HDDemoDataBaseSampleGeneratorObjectCollection);
    v111 = 0;
    for (k = 0; ; ++k)
    {
      v113 = objc_autoreleasePoolPush();
      v114 = [a1 generatorState];
      v115 = [v114 isExercising];

      if (v115)
      {
        [v222 timeIncrementDuringExercise];
      }

      else
      {
        [v222 timeIncrement];
      }

      v117 = v116;
      [*(a1 + 48) currentTime];
      v119 = v117 + v118;
      [*(a1 + 48) endTime];
      v120 = *(a1 + 48);
      if (v119 > v121)
      {
        break;
      }

      [v120 currentTime];
      v123 = v122;
      v124 = *(a1 + 48);
      [v124 currentTime];
      [v124 setCurrentTime:v117 + v125];
      v126 = [*(a1 + 48) firstSampleDate];
      [*(a1 + 48) currentTime];
      v128 = [v126 dateByAddingTimeInterval:v127 * 86400.0];

      v111 = v128;
      v129 = [a1 generatorState];
      v130 = [v129 workoutConfiguration];

      v223 = k;
      if (v130)
      {
        v131 = [a1 generatorState];
        [v131 currentTime];
        v133 = v132;
        [v130 endTime];
        v135 = v134;

        if (v133 <= v135)
        {
          goto LABEL_93;
        }

        v136 = [a1 generatorState];
        [v136 setWorkoutConfiguration:0];
      }

      else
      {
        v137 = MEMORY[0x277CCABB0];
        v138 = [a1 generatorState];
        v139 = [v137 numberWithInteger:{objc_msgSend(v138, "calendarDay")}];

        v140 = [a1 demoPerson];
        v141 = [v140 workoutPrototypesByCalendarDay];
        v224 = v139;
        v142 = [v141 objectForKeyedSubscript:v139];

        v143 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v144 = [HDDemoDataGeneratorConfiguration configurationFromDefaults:v143];

        v221 = v113;
        if ([v144 shouldEnsureRecentWorkoutHasRoute])
        {
          v145 = [a1 generatorState];
          v146 = [v145 currentDate];

          v147 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v220];
          if ([v147 isDateInYesterday:v146])
          {
            v148 = +[HDDemoDataWorkoutPrototype yogaAndRunningPrototypes];
          }

          else if ([v147 isDateInToday:v146])
          {
            v148 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v148 = 0;
          }

          a1 = v225;
        }

        else
        {
          v148 = 0;
        }

        if (v148)
        {
          v149 = v148;
        }

        else
        {
          v149 = v142;
        }

        v150 = v149;

        v151 = [a1 generatorState];
        [v151 currentTime];
        v153 = v152;

        v154 = [a1 generatorState];
        v155 = [v154 currentDay];

        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        obj = v150;
        v156 = [obj countByEnumeratingWithState:&v231 objects:buf count:16];
        if (v156)
        {
          v157 = v156;
          v158 = *v232;
          v159 = v155;
          do
          {
            for (m = 0; m != v157; ++m)
            {
              if (*v232 != v158)
              {
                objc_enumerationMutation(obj);
              }

              v161 = *(*(&v231 + 1) + 8 * m);
              [v161 startTimeOffsetInDay];
              v163 = v162;
              [v161 duration];
              v165 = v164;
              v166 = [MEMORY[0x277CBEB98] setWithArray:&unk_283CAFB98];
              v167 = [MEMORY[0x277CBEA80] currentCalendar];
              v168 = [MEMORY[0x277CBEAA8] date];
              v169 = [v167 dateByAddingUnit:16 value:-90 toDate:v168 options:0];

              v170 = [MEMORY[0x277CCDD30] sharedBehavior];
              if ([v170 isAppleWatch] & 1) != 0 || (objc_msgSend(v166, "containsObject:", v224))
              {
                v171 = 0;
              }

              else
              {
                v171 = [v111 hk_isAfterDate:v169] ^ 1;
              }

              v172 = v163 + v159;
              v173 = v172 + v165 * 0.0000115740741;

              v174 = v153 > v172 && v153 < v173;
              if (v174 && (v171 & 1) == 0)
              {
                v175 = [[HDDemoDataGeneratorWorkoutConfiguration alloc] initWithPrototype:v161 currentDemoDataTime:v153];
                v176 = [v225 generatorState];
                [v176 setWorkoutConfiguration:v175];
              }
            }

            v157 = [obj countByEnumeratingWithState:&v231 objects:buf count:16];
          }

          while (v157);
        }

        v136 = v224;
        a1 = v225;
        v130 = 0;
        v113 = v221;
        k = v223;
      }

LABEL_93:
      [*(a1 + 48) currentTime];
      v178 = v177;
      if ([*(a1 + 48) currentDay] != v177)
      {
        [*(a1 + 48) setCurrentDay:v178];
        [*(a1 + 216) randomDoubleFromGenerator];
        [v222 setRestingHeartRate:(v179 * 10.0) + 50];
        [*(a1 + 216) randomDoubleFromGenerator];
        [v222 setExerciseIntensityPercentage:fabs(v180 * 0.2) + 0.6];
      }

      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v181 = *(a1 + 16);
      v182 = [v181 countByEnumeratingWithState:&v227 objects:&v246 count:16];
      if (v182)
      {
        v183 = v182;
        v184 = *v228;
        do
        {
          for (n = 0; n != v183; ++n)
          {
            if (*v228 != v184)
            {
              objc_enumerationMutation(v181);
            }

            v186 = *(*(&v227 + 1) + 8 * n);
            v187 = *(a1 + 88);
            [*(a1 + 48) currentTime];
            [v186 generateObjectsForDemoPerson:v187 fromTime:v111 toTime:v110 currentDate:v123 objectCollection:v188];
          }

          v183 = [v181 countByEnumeratingWithState:&v227 objects:&v246 count:16];
        }

        while (v183);

        objc_autoreleasePoolPop(v113);
        k = v223;
        if (v223 >= 0x63)
        {
          goto LABEL_107;
        }
      }

      else
      {

        objc_autoreleasePoolPop(v113);
        if (k > 0x62)
        {
          goto LABEL_107;
        }
      }
    }

    [v120 setFinished:1];
    v189 = [*(a1 + 48) firstSampleDate];
    [*(a1 + 48) currentTime];
    v191 = [v189 dateByAddingTimeInterval:v190 * 86400.0];
    [*(a1 + 48) setLastSampleDate:v191];

    objc_autoreleasePoolPop(v113);
LABEL_107:
    _HKInitializeLogging();
    v192 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v111;
      _os_log_impl(&dword_228986000, v192, OS_LOG_TYPE_DEFAULT, "Last sample date for iteration: %@", buf, 0xCu);
    }

    [(HDDemoDataGenerator *)a1 _insertIntoDatabaseObjectCollection:v110 fromPerson:v222];

    objc_autoreleasePoolPop(context);
    v193 = objc_loadWeakRetained((a1 + 80));
    v194 = [v193 dataManager];
    [v194 closeObserverTransaction];

    [*(a1 + 48) currentTime];
    v196 = v195;
    [*(a1 + 48) startTime];
    v198 = v196 - v197;
    [*(a1 + 48) endTime];
    v200 = v199;
    [*(a1 + 48) startTime];
    v202 = v198 / (v200 - v201) * 100.0;
    v203 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v204 = [MEMORY[0x277CCABB0] numberWithDouble:v202];
    [v203 setObject:v204 forKey:@"HealthDemoDataProgressKey"];

    _HKInitializeLogging();
    v205 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v202;
      _os_log_impl(&dword_228986000, v205, OS_LOG_TYPE_DEFAULT, "Current demo data generation progress: %.1f%%", buf, 0xCu);
    }

    if (![*(a1 + 48) isFinished])
    {
      v206 = objc_loadWeakRetained((a1 + 80));
      v207 = [v206 dataManager];
      [v207 openObserverTransaction];

      continue;
    }

    break;
  }

LABEL_27:
  v65 = CFAbsoluteTimeGetCurrent();
  _HKInitializeLogging();
  v66 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v67 = *(a1 + 48);
    v68 = v66;
    v69 = [v67 lastSampleDate];
    *buf = 138412290;
    *&buf[4] = v69;
    _os_log_impl(&dword_228986000, v68, OS_LOG_TYPE_DEFAULT, "When ended Last sample date: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v70 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v71 = *(a1 + 48);
    v72 = v70;
    [v71 startTime];
    *buf = 134217984;
    *&buf[4] = v73;
    _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_DEFAULT, "When ended Start time: %f", buf, 0xCu);
  }

  _HKInitializeLogging();
  v74 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v75 = *(a1 + 48);
    v76 = v74;
    [v75 startTime];
    v77 = [a1 currentDateFromCurrentTime:?];
    *buf = 138412290;
    *&buf[4] = v77;
    _os_log_impl(&dword_228986000, v76, OS_LOG_TYPE_DEFAULT, "When ended Start date: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v78 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v79 = *(a1 + 48);
    v80 = v78;
    [v79 currentTime];
    *buf = 134217984;
    *&buf[4] = v81;
    _os_log_impl(&dword_228986000, v80, OS_LOG_TYPE_DEFAULT, "When ended Current time: %f", buf, 0xCu);
  }

  _HKInitializeLogging();
  v82 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v83 = *(a1 + 48);
    v84 = v82;
    [v83 currentTime];
    v85 = [a1 currentDateFromCurrentTime:?];
    *buf = 138412290;
    *&buf[4] = v85;
    _os_log_impl(&dword_228986000, v84, OS_LOG_TYPE_DEFAULT, "When ended Current date: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v86 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v87 = *(a1 + 48);
    v88 = v86;
    [v87 endTime];
    *buf = 134217984;
    *&buf[4] = v89;
    _os_log_impl(&dword_228986000, v88, OS_LOG_TYPE_DEFAULT, "When ended End time: %f", buf, 0xCu);
  }

  v90 = v65 - Current;
  _HKInitializeLogging();
  v91 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v92 = *(a1 + 48);
    v93 = v91;
    [v92 endTime];
    v94 = [a1 currentDateFromCurrentTime:?];
    *buf = 138412290;
    *&buf[4] = v94;
    _os_log_impl(&dword_228986000, v93, OS_LOG_TYPE_DEFAULT, "When ended End date: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v95 = *MEMORY[0x277CCC2B8];
  v96 = os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT);
  if (v90 <= 1.0)
  {
    if (v96)
    {
      *buf = 134217984;
      *&buf[4] = (v90 * 1000.0);
      v97 = "Total runtime to generate: %ld ms";
LABEL_115:
      _os_log_impl(&dword_228986000, v95, OS_LOG_TYPE_DEFAULT, v97, buf, 0xCu);
    }
  }

  else if (v96)
  {
    *buf = 134217984;
    *&buf[4] = v90;
    v97 = "Total runtime to generate: %ld s";
    goto LABEL_115;
  }

  _HKInitializeLogging();
  v208 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
  {
    v209 = *(a1 + 64);
    *buf = 134217984;
    *&buf[4] = v209;
    _os_log_impl(&dword_228986000, v208, OS_LOG_TYPE_DEFAULT, "Total samples written: %ld", buf, 0xCu);
  }

  v210 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v210 setObject:&unk_283CB43B0 forKey:@"HealthDemoDataProgressKey"];

  [*(a1 + 48) currentTime];
  [*(a1 + 48) setStartTime:?];
  if (v215)
  {
    v215[2](v215, *(a1 + 64), v90);
  }

  v211 = *MEMORY[0x277D85DE8];
}

- (id)_phoneProvenance
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained sourceManager];
  v35 = 0;
  v4 = [v3 localDeviceSourceWithError:&v35];
  v5 = v35;

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 80));
    v7 = [v6 deviceManager];
    v34 = v5;
    v8 = [v7 deviceEntityForNoDeviceWithError:&v34];
    v9 = v34;

    if (v8)
    {
      v10 = objc_loadWeakRetained((a1 + 80));
      v11 = [v10 daemon];
      v12 = [v11 behavior];

      v32 = objc_loadWeakRetained((a1 + 80));
      v30 = [v32 currentSyncIdentityPersistentID];
      v13 = [v12 currentDeviceProductType];
      v14 = @"UnknownDevice";
      v31 = v13;
      if (v13)
      {
        v14 = v13;
      }

      v29 = v14;
      v15 = [v12 currentOSBuild];
      v16 = v15;
      v17 = @"UnknownBuild";
      if (v15)
      {
        v17 = v15;
      }

      v28 = v17;
      v33 = v9;
      if (v12)
      {
        [v12 currentOSVersionStruct];
      }

      else
      {
        buf = 0uLL;
        v37 = 0;
      }

      v21 = [v12 currentOSVersion];
      v22 = [v12 localTimeZone];
      v23 = [v22 name];
      v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "persistentID")}];
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v8, "persistentID")}];
      v19 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:v30 productType:v29 systemBuild:v28 operatingSystemVersion:&buf sourceVersion:v21 timeZoneName:v23 sourceID:v24 deviceID:v25 contributorReference:0];

      v9 = v33;
    }

    else
    {
      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v9;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Error creating local phone device entity %{public}@", &buf, 0xCu);
      }

      v19 = 0;
    }
  }

  else
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Error creating local phone source entity %{public}@", &buf, 0xCu);
    }

    v19 = 0;
    v9 = v5;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_insertIntoDatabaseObjectCollection:(void *)a3 fromPerson:
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectsFromPhone];
  v8 = [v5 objectsFromWatch];
  v55 = [v5 objectsFromPhoneApps];
  v56 = [(HDDemoDataGenerator *)a1 _phoneProvenance];
  v9 = MEMORY[0x277CCACA8];
  v54 = v6;
  v10 = [v6 firstName];
  v11 = [v9 stringWithFormat:@"%@'s Watch", v10];

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v13 = [WeakRetained sourceManager];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AAAAAAAA-AAAA-AAAA-AAAA-AAAAAAAAAAAA"];
  v63 = 0;
  v53 = v11;
  v15 = [v13 sourceForAppleDeviceWithUUID:v14 identifier:@"com.apple.health.demo_watch" name:v11 productType:@"Watch1 createIfNecessary:2" error:{1, &v63}];
  v16 = v63;

  if (v15)
  {
    v17 = objc_loadWeakRetained((a1 + 80));
    v18 = [v17 deviceManager];
    v62 = v16;
    v19 = [v18 deviceEntityForNoDeviceWithError:&v62];
    v51 = v62;

    v52 = v15;
    if (v19)
    {
      v49 = v7;
      v20 = objc_loadWeakRetained((a1 + 80));
      v21 = [v20 daemon];
      v22 = [v21 behavior];

      v47 = objc_loadWeakRetained((a1 + 80));
      v46 = [v47 currentSyncIdentityPersistentID];
      v23 = [v22 currentOSBuild];
      v24 = v23;
      v25 = @"UnknownBuild";
      if (v23)
      {
        v25 = v23;
      }

      v45 = v25;
      v50 = v5;
      v48 = v8;
      v26 = v19;
      if (v22)
      {
        [v22 currentOSVersionStruct];
      }

      else
      {
        buf = 0uLL;
        v65 = 0;
      }

      v31 = [v22 currentOSVersion];
      v32 = [v22 localTimeZone];
      v33 = [v32 name];
      v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v52, "persistentID")}];
      v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "persistentID")}];
      v28 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:v46 productType:@"Watch1 systemBuild:2" operatingSystemVersion:v45 sourceVersion:&buf timeZoneName:v31 sourceID:v33 deviceID:v34 contributorReference:v35, 0];

      v7 = v49;
      v5 = v50;
      v8 = v48;
      v29 = v56;
    }

    else
    {
      v26 = 0;
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC2B8];
      v29 = v56;
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        v16 = v51;
        *(&buf + 4) = v51;
        _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Error creating watch device entity %{public}@", &buf, 0xCu);
        v28 = 0;
        goto LABEL_15;
      }

      v28 = 0;
    }

    v16 = v51;
LABEL_15:

    v15 = v52;
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v27 = *MEMORY[0x277CCC2B8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "Error creating watch source entity %{public}@", &buf, 0xCu);
  }

  v28 = 0;
  v29 = v56;
LABEL_16:

  if (v28 && v29)
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __70__HDDemoDataGenerator__insertIntoDatabaseObjectCollection_fromPerson___block_invoke;
    v61[3] = &unk_278626F60;
    v61[4] = a1;
    [v55 enumerateKeysAndObjectsWithOptions:0 usingBlock:v61];
    *(a1 + 64) += [v7 count];
    v36 = objc_loadWeakRetained((a1 + 80));
    v37 = [v36 dataManager];
    v60 = 0;
    v38 = [v37 insertDataObjects:v7 withProvenance:v29 creationDate:1 skipInsertionFilter:&v60 error:CFAbsoluteTimeGetCurrent()];
    v39 = v60;

    if (v38)
    {
      *(a1 + 64) += [v8 count];
      v40 = objc_loadWeakRetained((a1 + 80));
      v41 = [v40 dataManager];
      v59 = v39;
      [v41 insertDataObjects:v8 withProvenance:v28 creationDate:1 skipInsertionFilter:&v59 error:CFAbsoluteTimeGetCurrent()];
      v42 = v59;

      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __70__HDDemoDataGenerator__insertIntoDatabaseObjectCollection_fromPerson___block_invoke_389;
      v58[3] = &unk_278626F88;
      v58[4] = a1;
      [v5 enumerateObjectAssociations:v58];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __70__HDDemoDataGenerator__insertIntoDatabaseObjectCollection_fromPerson___block_invoke_392;
      v57[3] = &unk_278626F88;
      v57[4] = a1;
      [v5 enumerateLooseObjectAssociations:v57];
      v39 = v42;
    }

    else
    {
      _HKInitializeLogging();
      v43 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v39;
        _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "Error inserting phone samples: %{public}@", &buf, 0xCu);
      }
    }

    v29 = v56;
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __70__HDDemoDataGenerator__insertIntoDatabaseObjectCollection_fromPerson___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  if (v5)
  {
    v8 = [*(v5 + 40) objectForKeyedSubscript:v7];
    if (!v8)
    {
      v52 = v7;
      v9 = v7;
      v10 = *MEMORY[0x277CCB868];
      v56[0] = *MEMORY[0x277CCC1B8];
      v56[1] = v10;
      v57[0] = MEMORY[0x277CBEC38];
      v57[1] = MEMORY[0x277CBEC38];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
      WeakRetained = objc_loadWeakRetained((v5 + 80));
      v13 = [WeakRetained sourceManager];
      v14 = [MEMORY[0x277CCDDA8] entitlementsWithDictionary:v11];
      v54 = 0;
      v15 = [v13 sourceForApplicationIdentifier:v9 createOrUpdateIfNecessary:1 entitlements:v14 name:0 error:&v54];
      v16 = v54;

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v9;
          *&buf[12] = 2114;
          *&buf[14] = v16;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "Error creating local phone app source entity with bundle id %{public}@ %{public}@", buf, 0x16u);
        }
      }

      v19 = objc_loadWeakRetained((v5 + 80));
      v20 = [v19 deviceManager];
      v57[0] = 0;
      v21 = [v20 deviceEntityForNoDeviceWithError:v57];
      v22 = v57[0];

      if (v21)
      {
        v51 = v6;
        v23 = objc_loadWeakRetained((v5 + 80));
        v24 = [v23 daemon];
        v25 = [v24 behavior];

        v48 = objc_loadWeakRetained((v5 + 80));
        v45 = [v48 currentSyncIdentityPersistentID];
        v26 = [v25 currentDeviceProductType];
        v27 = @"UnknownDevice";
        v47 = v26;
        if (v26)
        {
          v27 = v26;
        }

        v44 = v27;
        v28 = [v25 currentOSBuild];
        v29 = @"UnknownBuild";
        v46 = v28;
        if (v28)
        {
          v29 = v28;
        }

        v43 = v29;
        v49 = v22;
        v50 = v9;
        v30 = v21;
        if (v25)
        {
          [v25 currentOSVersionStruct];
        }

        else
        {
          memset(buf, 0, 24);
        }

        v42 = [v25 currentOSVersion];
        v32 = [v25 localTimeZone];
        v33 = [v32 name];
        v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "persistentID")}];
        v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v30, "persistentID")}];
        v8 = [HDDataOriginProvenance dataProvenanceWithSyncProvenance:0 syncIdentity:v45 productType:v44 systemBuild:v43 operatingSystemVersion:buf sourceVersion:v42 timeZoneName:v33 sourceID:v34 deviceID:v35 contributorReference:0];

        [*(v5 + 40) setObject:v8 forKeyedSubscript:v50];
        v6 = v51;
        v7 = v52;
        v22 = v49;
      }

      else
      {
        _HKInitializeLogging();
        v31 = *MEMORY[0x277CCC2B8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v22;
          _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "Error creating local phone device entity for app provenance %{public}@", buf, 0xCu);
        }

        v8 = 0;
        v7 = v52;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  *(*(a1 + 32) + 64) += [v6 count];
  v36 = objc_loadWeakRetained((*(a1 + 32) + 80));
  v37 = [v36 dataManager];
  v53 = 0;
  v38 = [v37 insertDataObjects:v6 withProvenance:v8 creationDate:1 skipInsertionFilter:&v53 error:CFAbsoluteTimeGetCurrent()];

  v39 = v53;
  if ((v38 & 1) == 0)
  {
    _HKInitializeLogging();
    v40 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "Error inserting phone app samples: %{public}@", buf, 0xCu);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __70__HDDemoDataGenerator__insertIntoDatabaseObjectCollection_fromPerson___block_invoke_389(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v4 + 80));
  v12 = 0;
  v8 = [HDAssociationEntity insertEntriesWithAssociationUUID:v6 objectUUIDsData:v5 type:0 behavior:0 destinationSubObjectReference:0 profile:WeakRetained error:&v12];

  v9 = v12;
  if (!v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Error associating objects with object: %{public}@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __70__HDDemoDataGenerator__insertIntoDatabaseObjectCollection_fromPerson___block_invoke_392(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v4 + 80));
  v12 = 0;
  v8 = [HDAssociationEntity insertEntriesWithAssociationUUID:v6 objectUUIDsData:v5 type:1 behavior:0 destinationSubObjectReference:0 profile:WeakRetained error:&v12];

  v9 = v12;
  if (!v8)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Error loose associating objects with object: %{public}@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (HDKeyValueDomain)_keyValueDomain
{
  v2 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v4 = [(HDKeyValueDomain *)v2 initWithCategory:3 domainName:@"DemoData" profile:WeakRetained];

  return v4;
}

- (uint64_t)_archiveObject:(uint64_t)a3 error:
{
  v5 = a2;
  v6 = [(HDDemoDataGenerator *)a1 _keyValueDomain];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:a3];

  if (v9)
  {
    v10 = [v6 setData:v9 forKey:v8 error:a3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_unarchiveDataWithClass:(uint64_t)a3 error:
{
  v5 = [(HDDemoDataGenerator *)a1 _keyValueDomain];
  v6 = NSStringFromClass(a2);
  v7 = [v5 dataForKey:v6 error:a3];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a2 fromData:v7 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)_queue_unarchivePluginGenerators
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    while (2)
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v19 + 1) + 8 * v8);
        v18 = v9;
        v11 = [(HDDemoDataGenerator *)a1 _unarchiveDataWithClass:v10 error:&v18];
        v6 = v18;

        if (!v11)
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC2B8];
          if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
          {
            v16 = v13;
            v17 = NSStringFromClass(v10);
            *buf = 138543618;
            v25 = v17;
            v26 = 2114;
            v27 = v6;
            _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Failed to unarchive data for %{public}@: %{public}@", buf, 0x16u);
          }

          v23 = 0;

          goto LABEL_15;
        }

        WeakRetained = objc_loadWeakRetained((a1 + 80));
        [v11 setDemoDataGenerationContextWithProfile:WeakRetained generatorState:*(a1 + 48)];

        [v2 addObject:v11];
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong((a1 + 24), v2);
  v23 = 1;
LABEL_15:

  result = v23;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)firstSampleDayOfYear
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDDemoDataGenerator_firstSampleDayOfYear__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  if (qword_280D67DB0 != -1)
  {
    dispatch_once(&qword_280D67DB0, block);
  }

  return _MergedGlobals_216;
}

void __43__HDDemoDataGenerator_firstSampleDayOfYear__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  v3 = [*(v1 + 48) firstSampleDate];
  _MergedGlobals_216 = [v2 ordinalityOfUnit:16 inUnit:4 forDate:v3];
}

- (id)currentDateFromCurrentTime:(double)a3
{
  v4 = [(HDDemoDataGeneratorState *)self->_generatorState firstSampleDate];
  v5 = [v4 dateByAddingTimeInterval:a3 * 86400.0];

  return v5;
}

- (BOOL)isDemoDataTimeInWeekend:(double)a3 calendar:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HDDemoDataGenerator *)self currentDateFromCurrentTime:a3];
  v8 = [v6 components:512 fromDate:v7];

  if (v8 && [v8 weekday] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 hk_weekendDays];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "weekday")}];
    v10 = [v11 containsObject:v12];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      v15 = v9;
      v16 = objc_opt_class();
      v17 = MEMORY[0x277CCABB0];
      v18 = v16;
      v19 = [v17 numberWithDouble:a3];
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v19;
      _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to determine weekday components from time %{public}@", &v20, 0x16u);
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end