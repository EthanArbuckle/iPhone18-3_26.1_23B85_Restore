@interface LBFAggregator
- (BOOL)dumpFetchedEvents;
- (BOOL)fetchBucket:(int64_t)a3;
- (BOOL)fetchBuckets:(id)a3;
- (BOOL)fetchEvents;
- (BOOL)setUpBuckets;
- (LBFAggregator)init;
- (double)getRandomCoinFlip;
- (id)dateToStringInUTCAndLocal:(id)a3;
- (id)dumpAggregate;
- (id)ensureDeploymentEventsHolderInBucket:(id)a3 bucketIndex:(unint64_t)a4;
- (id)ensureExperimentEventsHolderInBucket:(id)a3 bucketIndex:(unint64_t)a4;
- (id)fetchedEventsInDictionaries;
- (id)getAggregatedStatesUpdateTimestamp:(BOOL)a3 skipNullIdentifiers:(BOOL)a4;
- (id)getBucketEndDate;
- (id)getBucketsNotAggregated;
- (id)getTransitionProcessingEventArray:(id)a3 mlRuntimeInCurrentBucket:(BOOL)a4 mlRuntimeInPreviousBucket:(BOOL)a5;
- (id)getTrialIdentifierFromBMEvent:(id)a3;
- (id)initForMLHost;
- (void)dumpTimestamps;
- (void)enumerateAggregation:(id)a3;
@end

@implementation LBFAggregator

- (LBFAggregator)init
{
  v15.receiver = self;
  v15.super_class = LBFAggregator;
  v2 = [(LBFAggregator *)&v15 init];
  if (v2)
  {
    LBFLoggingUtilsInit();
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    stateDict = v2->_stateDict;
    v2->_stateDict = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
    usePrivateUpload = v2->_usePrivateUpload;
    v2->_usePrivateUpload = v5;

    objc_msgSend_fetchEvents(v2, v7, v8, v9, v10);
    v11 = objc_alloc_init(LBFTrialStatusDetector);
    trialStatusDetector = v2->_trialStatusDetector;
    v2->_trialStatusDetector = v11;

    v2->_strictDictChecks = 0;
    lastAggregationDateKey = v2->_lastAggregationDateKey;
    v2->_lastAggregationDateKey = @"lastAggregationDate";

    v2->_setMLHostMarkerInStateID = 0;
  }

  return v2;
}

- (id)initForMLHost
{
  v5 = objc_msgSend_init(self, a2, v2, v3, v4);
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 40);
    *(v5 + 40) = @"lastAggregationDate_MLHost";

    v6[9] = 1;
  }

  return v6;
}

- (id)getBucketEndDate
{
  v5 = objc_msgSend_now(MEMORY[0x277CBEAA8], a2, v2, v3, v4);
  objc_msgSend_timeIntervalSince1970(v5, v6, v7, v8, v9);
  v15 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v11, v12, v13, v14, (86400 * (v10 / 86400.0)));

  return v15;
}

- (BOOL)setUpBuckets
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  buckets = self->_buckets;
  self->_buckets = v3;

  v9 = objc_msgSend_getBucketEndDate(self, v5, v6, v7, v8);
  v17 = objc_msgSend_copy(v9, v10, v11, v12, v13);
  for (i = 0; i != 30; ++i)
  {
    v19 = v17;
    v17 = objc_msgSend_dateWithTimeInterval_sinceDate_(MEMORY[0x277CBEAA8], v14, v17, v15, v16, -86400.0);
    v20 = self->_buckets;
    v21 = [LBFBucket alloc];
    v23 = objc_msgSend_initWithInterval_endTimestamp_index_(v21, v22, v17, v19, i);
    objc_msgSend_addObject_(v20, v24, v23, v25, v26);
  }

  return 1;
}

- (id)getBucketsNotAggregated
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = objc_msgSend_initWithSuiteName_(v3, v4, @"LighthouseBitacoraFramework", v5, v6);
  v11 = objc_msgSend_objectForKey_(v7, v8, self->_lastAggregationDateKey, v9, v10);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(self->_buckets, v13, v14, v15, v16))
  {
    v21 = 0;
    do
    {
      v22 = objc_msgSend_objectAtIndex_(self->_buckets, v17, v21, v19, v20);
      v27 = objc_msgSend_startTime(v22, v23, v24, v25, v26);

      if ((objc_msgSend_compare_(v11, v28, v27, v29, v30) + 1) <= 1)
      {
        v34 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v31, v21, v32, v33);
        objc_msgSend_addObject_(v12, v35, v34, v36, v37);
      }

      ++v21;
    }

    while (objc_msgSend_count(self->_buckets, v38, v39, v40, v41) > v21);
  }

  v42 = objc_msgSend_copy(v12, v17, v18, v19, v20);

  return v42;
}

- (BOOL)fetchBuckets:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v4);
        }

        v14 = objc_msgSend_intValue(*(*(&v20 + 1) + 8 * v13), v7, v8, v9, v10);
        objc_msgSend_fetchBucket_(self, v15, v14, v16, v17);
        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v20, v24, 16);
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)ensureExperimentEventsHolderInBucket:(id)a3 bucketIndex:(unint64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_objectAtIndex_(self->_buckets, v7, a4, v8, v9);
  v15 = objc_msgSend_eventTree(v10, v11, v12, v13, v14);

  v19 = objc_msgSend_objectForKey_(v15, v16, v6, v17, v18);
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v24 = objc_msgSend_objectForKey_(self->_stateDict, v20, v6, v21, v22);
    if (!v24)
    {
      stateDict = self->_stateDict;
      v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
      objc_msgSend_setObject_forKey_(stateDict, v27, v26, v6, v28);
    }

    v29 = [LBFExperimentEventsHolder alloc];
    v33 = objc_msgSend_initWithExperimentOrTaskId_(v29, v30, v6, v31, v32);
    objc_msgSend_setValue_forKey_(v15, v34, v33, v6, v35);
    v23 = v33;
  }

  return v23;
}

- (id)ensureDeploymentEventsHolderInBucket:(id)a3 bucketIndex:(unint64_t)a4
{
  v6 = a3;
  v11 = objc_msgSend_experimentIdentifiers(v6, v7, v8, v9, v10);

  if (!v11)
  {
    goto LABEL_5;
  }

  v16 = objc_msgSend_experimentIdentifiers(v6, v12, v13, v14, v15);
  v21 = objc_msgSend_trialExperimentID(v16, v17, v18, v19, v20);
  if (!v21)
  {
    v43 = @"null_experiment";
    v52 = @"null_deployment";
    goto LABEL_7;
  }

  v26 = v21;
  v27 = objc_msgSend_experimentIdentifiers(v6, v22, v23, v24, v25);
  v32 = objc_msgSend_trialExperimentID(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_null(MEMORY[0x277CBEB68], v33, v34, v35, v36);

  if (v32 == v37)
  {
LABEL_5:
    v43 = @"null_experiment";
    v52 = @"null_deployment";
    goto LABEL_8;
  }

  v38 = objc_msgSend_experimentIdentifiers(v6, v12, v13, v14, v15);
  v43 = objc_msgSend_trialExperimentID(v38, v39, v40, v41, v42);

  v16 = objc_msgSend_experimentIdentifiers(v6, v44, v45, v46, v47);
  v52 = objc_msgSend_trialDeploymentID(v16, v48, v49, v50, v51);
LABEL_7:

LABEL_8:
  v53 = objc_msgSend_bmltIdentifiers(v6, v12, v13, v14, v15);

  if (!v53)
  {
    goto LABEL_13;
  }

  v58 = objc_msgSend_bmltIdentifiers(v6, v54, v55, v56, v57);
  v63 = objc_msgSend_trialTaskID(v58, v59, v60, v61, v62);
  if (v63)
  {
    v68 = v63;
    v69 = objc_msgSend_bmltIdentifiers(v6, v64, v65, v66, v67);
    v74 = objc_msgSend_trialTaskID(v69, v70, v71, v72, v73);
    v79 = objc_msgSend_null(MEMORY[0x277CBEB68], v75, v76, v77, v78);

    if (v74 == v79)
    {
      goto LABEL_13;
    }

    v82 = objc_msgSend_bmltIdentifiers(v6, v54, v80, v81, v57);
    v87 = objc_msgSend_trialTaskID(v82, v83, v84, v85, v86);

    v58 = objc_msgSend_bmltIdentifiers(v6, v88, v89, v90, v91);
    v96 = objc_msgSend_trialDeploymentID(v58, v92, v93, v94, v95);

    v52 = v96;
    v43 = v87;
  }

LABEL_13:
  v97 = objc_msgSend_ensureExperimentEventsHolderInBucket_bucketIndex_(self, v54, v43, a4, v57);
  v101 = objc_msgSend_objectForKey_(self->_stateDict, v98, v43, v99, v100);
  v105 = objc_msgSend_objectForKey_(v101, v102, v52, v103, v104);

  if (!v105)
  {
    v109 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setObject_forKey_(v101, v110, v109, v52, v111);

    objc_msgSend_setObject_forKey_(self->_stateDict, v112, v101, v43, v113);
  }

  v114 = objc_msgSend_ensureDeploymentEventsHolder_(v97, v106, v52, v107, v108);

  return v114;
}

- (BOOL)fetchBucket:(int64_t)a3
{
  v253 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_objectAtIndex_(self->_buckets, a2, a3, v3, v4);
  v11 = objc_msgSend_objectAtIndex_(self->_buckets, v8, 0, v9, v10);
  v16 = objc_msgSend_endTime(v11, v12, v13, v14, v15);

  v21 = objc_msgSend_startTime(v7, v17, v18, v19, v20);
  v220 = v7;
  v26 = objc_msgSend_endTime(v7, v22, v23, v24, v25);
  v219 = v16;
  v30 = objc_msgSend_dateWithTimeInterval_sinceDate_(MEMORY[0x277CBEAA8], v27, v16, v28, v29, -2419200.0);
  v31 = objc_alloc_init(MEMORY[0x277CCA968]);
  v35 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x277CBEBB0], v32, @"UTC", v33, v34);
  objc_msgSend_setTimeZone_(v31, v36, v35, v37, v38);

  v221 = v31;
  objc_msgSend_setDateFormat_(v31, v39, @"YYYY-MM-dd HH:mm:ss", v40, v41);
  v42 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v47 = v42;
    v51 = objc_msgSend_stringFromDate_(v31, v48, v21, v49, v50);
    v55 = objc_msgSend_stringFromDate_(v221, v52, v26, v53, v54);
    v59 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v56, a3, v57, v58);
    v63 = objc_msgSend_stringFromDate_(v221, v60, v30, v61, v62);
    *buf = 138413058;
    v246 = v51;
    v247 = 2112;
    v248 = v55;
    v249 = 2112;
    v250 = v59;
    v251 = 2112;
    v252 = v63;
    _os_log_impl(&dword_255ED5000, v47, OS_LOG_TYPE_INFO, "Finding objects between %@ and %@ for Bucket #%@. Trial Start: %@", buf, 0x2Au);
  }

  v64 = objc_msgSend_sharedInstance(LBFEventManager, v43, v44, v45, v46);
  v69 = objc_msgSend_ensureBiomeManagerMLRuntimed(v64, v65, v66, v67, v68);
  v72 = objc_msgSend_readData_endDate_(v69, v70, v21, v26, v71);

  v77 = objc_msgSend_sharedInstance(LBFEventManager, v73, v74, v75, v76);
  v82 = objc_msgSend_ensureBiomeManagerLighthouse(v77, v78, v79, v80, v81);
  v218 = v21;
  v85 = objc_msgSend_readData_endDate_(v82, v83, v21, v26, v84);

  v90 = objc_msgSend_sharedInstance(LBFEventManager, v86, v87, v88, v89);
  v95 = objc_msgSend_ensureBiomeManagerTrial(v90, v91, v92, v93, v94);
  v214 = objc_msgSend_readData_endDate_(v95, v96, v30, v26, v97);

  v102 = objc_msgSend_sharedInstance(LBFEventManager, v98, v99, v100, v101);
  v107 = objc_msgSend_ensureBiomeManagerDprivacyd(v102, v103, v104, v105, v106);
  v216 = v30;
  v217 = v26;
  v215 = objc_msgSend_readData_endDate_(v107, v108, v30, v26, v109);

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  obj = v72;
  v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v110, &v237, v244, 16);
  if (v111)
  {
    v112 = v111;
    v113 = *v238;
    do
    {
      for (i = 0; i != v112; ++i)
      {
        if (*v238 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v115 = *(*(&v237 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v120 = objc_msgSend_trialIdentifiers(v115, v116, v117, v118, v119, v214, v215);
          v123 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v121, v120, a3, v122);

          objc_msgSend_appendMlruntimedEvent_(v123, v124, v115, v125, v126);
        }
      }

      v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v116, &v237, v244, 16);
    }

    while (v112);
  }

  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v223 = v85;
  v128 = objc_msgSend_countByEnumeratingWithState_objects_count_(v223, v127, &v233, v243, 16);
  if (v128)
  {
    v129 = v128;
    v130 = *v234;
    do
    {
      for (j = 0; j != v129; ++j)
      {
        if (*v234 != v130)
        {
          objc_enumerationMutation(v223);
        }

        v132 = *(*(&v233 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v137 = objc_msgSend_trialIdentifiers(v132, v133, v134, v135, v136);
          v140 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v138, v137, a3, v139);

          v141 = LBFLogContextAggregator;
          if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
          {
            v145 = v141;
            v150 = objc_msgSend_description(v132, v146, v147, v148, v149);
            *buf = 138412290;
            v246 = v150;
            _os_log_impl(&dword_255ED5000, v145, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }

          objc_msgSend_appendLighthousePluginEvent_(v140, v142, v132, v143, v144, v214);
          if (objc_msgSend_usePrivateUpload(v132, v151, v152, v153, v154))
          {
            v159 = objc_msgSend_trialIdentifiers(v132, v155, v156, v157, v158);
            v164 = objc_msgSend_experimentIdentifiers(v159, v160, v161, v162, v163);
            v169 = objc_msgSend_trialExperimentID(v164, v165, v166, v167, v168);

            v170 = LBFLogContextAggregator;
            if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v246 = v169;
              _os_log_impl(&dword_255ED5000, v170, OS_LOG_TYPE_INFO, "Adding %@ to usePrivateUpload.", buf, 0xCu);
            }

            v174 = objc_msgSend_setByAddingObject_(self->_usePrivateUpload, v171, v169, v172, v173);
            usePrivateUpload = self->_usePrivateUpload;
            self->_usePrivateUpload = v174;
          }
        }
      }

      v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v223, v133, &v233, v243, 16);
    }

    while (v129);
  }

  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v176 = v214;
  v178 = objc_msgSend_countByEnumeratingWithState_objects_count_(v176, v177, &v229, v242, 16);
  if (v178)
  {
    v179 = v178;
    v180 = *v230;
    do
    {
      for (k = 0; k != v179; ++k)
      {
        if (*v230 != v180)
        {
          objc_enumerationMutation(v176);
        }

        v182 = *(*(&v229 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v187 = objc_msgSend_trialIdentifiers(v182, v183, v184, v185, v186);
          v190 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v188, v187, a3, v189);

          objc_msgSend_appendTrialEvent_(v190, v191, v182, v192, v193);
        }
      }

      v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v176, v183, &v229, v242, 16);
    }

    while (v179);
  }

  v222 = v176;

  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v194 = v215;
  v196 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v195, &v225, v241, 16);
  if (v196)
  {
    v197 = v196;
    v198 = *v226;
    do
    {
      for (m = 0; m != v197; ++m)
      {
        if (*v226 != v198)
        {
          objc_enumerationMutation(v194);
        }

        v200 = *(*(&v225 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v205 = objc_msgSend_trialIdentifiers(v200, v201, v202, v203, v204);
          v208 = objc_msgSend_ensureDeploymentEventsHolderInBucket_bucketIndex_(self, v206, v205, a3, v207);

          objc_msgSend_appendDprivacydEvent_(v208, v209, v200, v210, v211);
        }
      }

      v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v194, v201, &v225, v241, 16);
    }

    while (v197);
  }

  v212 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)fetchEvents
{
  objc_msgSend_setUpBuckets(self, a2, v2, v3, v4);
  if (objc_msgSend_count(self->_buckets, v6, v7, v8, v9))
  {
    v13 = 0;
    do
    {
      objc_msgSend_fetchBucket_(self, v10, v13++, v11, v12);
    }

    while (objc_msgSend_count(self->_buckets, v14, v15, v16, v17) > v13);
  }

  return 1;
}

- (id)getTrialIdentifierFromBMEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_msgSend_trialIdentifiers(v3, v4, v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getTransitionProcessingEventArray:(id)a3 mlRuntimeInCurrentBucket:(BOOL)a4 mlRuntimeInPreviousBucket:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v153 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v134 = v7;
  if (v6 && v5)
  {
    v9 = LBFLogContextAggregator;
    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_255ED5000, v9, OS_LOG_TYPE_INFO, "MLRuntime in current, and previous bucket.", buf, 2u);
    }

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v10 = v7;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v144, v152, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v145;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v145 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v144 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v16;
            if (objc_msgSend_eventType(v20, v21, v22, v23, v24) == 3)
            {
              objc_msgSend_addObject_(v8, v25, v20, v26, v27);
            }
          }

          else
          {
            objc_msgSend_addObject_(v8, v17, v16, v18, v19);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v28, &v144, v152, 16);
      }

      while (v13);
    }
  }

  else
  {
    v29 = LBFLogContextAggregator;
    v30 = os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO);
    if (!v6 || v5)
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&dword_255ED5000, v29, OS_LOG_TYPE_INFO, "No MLRuntime events in current or previous buckets.", buf, 2u);
      }

      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      obj = v7;
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v72, &v136, v150, 16);
      if (v73)
      {
        v74 = v73;
        v75 = 0;
        v76 = 0;
        v77 = *v137;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v137 != v77)
            {
              objc_enumerationMutation(obj);
            }

            v79 = *(*(&v136 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v80 = v79;
              if (!((objc_msgSend_eventType(v80, v81, v82, v83, v84) != 1) | v76 & 1))
              {
                v89 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v89, OS_LOG_TYPE_INFO, "Saw first Allocation before MlRuntime, filtering future Allocated events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v90, v80, v91, v92, v134);
                v76 = 1;
              }

              if (!((objc_msgSend_eventType(v80, v85, v86, v87, v88, v134) != 2) | v75 & 1))
              {
                v97 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v97, OS_LOG_TYPE_INFO, "Saw first Activation before MlRuntime, filtering future Activation events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v98, v80, v99, v100);
                v75 = 1;
              }

              if (objc_msgSend_eventType(v80, v93, v94, v95, v96) == 3)
              {
                objc_msgSend_addObject_(v8, v101, v80, v102, v103);
              }
            }

            else
            {
              v105 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_255ED5000, v105, OS_LOG_TYPE_INFO, "Incorrect detection - updating filtering.", buf, 2u);
              }

              v106 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                v107 = v106;
                v108 = objc_opt_class();
                *buf = 138412290;
                v149 = v108;
                v109 = v108;
                _os_log_impl(&dword_255ED5000, v107, OS_LOG_TYPE_INFO, "Event Type: %@", buf, 0xCu);
              }

              v110 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                v111 = v110;
                v116 = objc_msgSend_trialIdentifiers(v79, v112, v113, v114, v115);
                *buf = 138412290;
                v149 = v116;
                _os_log_impl(&dword_255ED5000, v111, OS_LOG_TYPE_INFO, "Event Identifiers: %@", buf, 0xCu);
              }

              v117 = LBFLogContextEventFiltering;
              if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
              {
                v121 = v117;
                v126 = objc_msgSend_timestamp(v79, v122, v123, v124, v125);
                *buf = 138412290;
                v149 = v126;
                _os_log_impl(&dword_255ED5000, v121, OS_LOG_TYPE_INFO, "Event Timestamp: %@", buf, 0xCu);
              }

              objc_msgSend_addObject_(v8, v118, v79, v119, v120, v134);
              v75 = 1;
              v76 = 1;
            }
          }

          v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v104, &v136, v150, 16);
        }

        while (v74);
      }
    }

    else
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&dword_255ED5000, v29, OS_LOG_TYPE_INFO, "MLRuntime in current bucket only.", buf, 2u);
      }

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v31 = v7;
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v140, v151, 16);
      if (v33)
      {
        v34 = v33;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = *v141;
        v39 = 0x277CF1000uLL;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v141 != v38)
            {
              objc_enumerationMutation(v31);
            }

            v41 = *(*(&v140 + 1) + 8 * k);
            v42 = *(v39 + 664);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v41;
              if (!((objc_msgSend_eventType(v46, v47, v48, v49, v50) != 1) | (v37 | v35) & 1))
              {
                v55 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v55, OS_LOG_TYPE_INFO, "Saw first Allocation before MlRuntime, filtering future Allocated events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v56, v46, v57, v58, v134);
                v37 = 1;
                v39 = 0x277CF1000;
              }

              if (!((objc_msgSend_eventType(v46, v51, v52, v53, v54, v134) != 2) | (v36 | v35) & 1))
              {
                v63 = LBFLogContextEventFiltering;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v63, OS_LOG_TYPE_INFO, "Saw first Activation before MlRuntime, filtering future Activation events.", buf, 2u);
                }

                objc_msgSend_addObject_(v8, v64, v46, v65, v66);
                v36 = 1;
                v39 = 0x277CF1000;
              }

              if (objc_msgSend_eventType(v46, v59, v60, v61, v62) == 3)
              {
                objc_msgSend_addObject_(v8, v67, v46, v68, v69);
              }
            }

            else
            {
              objc_msgSend_addObject_(v8, v43, v41, v44, v45);
              if (v35)
              {
                v35 = 1;
              }

              else
              {
                v71 = LBFLogContextEventFiltering;
                v35 = 1;
                if (os_log_type_enabled(LBFLogContextEventFiltering, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v71, OS_LOG_TYPE_INFO, "Saw first MLRuntime, filtering future Trial events.", buf, 2u);
                }
              }
            }
          }

          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v70, &v140, v151, 16);
        }

        while (v34);
      }
    }
  }

  v131 = objc_msgSend_copy(v8, v127, v128, v129, v130);
  v132 = *MEMORY[0x277D85DE8];

  return v131;
}

- (id)getAggregatedStatesUpdateTimestamp:(BOOL)a3 skipNullIdentifiers:(BOOL)a4
{
  v393 = a4;
  v369 = a3;
  v461 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v443 = 0u;
  v444 = 0u;
  v445 = 0u;
  v446 = 0u;
  obj = self->_stateDict;
  v387 = v5;
  v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v443, v460, 16);
  v404 = self;
  if (v402)
  {
    v400 = *v444;
    do
    {
      for (i = 0; i != v402; ++i)
      {
        if (*v444 != v400)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v443 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v405 = v8;
        v13 = objc_msgSend_objectForKey_(v404->_stateDict, v10, v8, v11, v12);
        v18 = objc_msgSend_allKeys(v13, v14, v15, v16, v17);
        v439 = 0u;
        v440 = 0u;
        v441 = 0u;
        v442 = 0u;
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v439, v459, 16);
        if (v20)
        {
          v23 = v20;
          v24 = *v440;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v440 != v24)
              {
                objc_enumerationMutation(v18);
              }

              v26 = *(*(&v439 + 1) + 8 * j);
              objc_msgSend_setObject_forKey_(v9, v21, &unk_286801030, v26, v22);
              v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, 0, v28, v29);
              objc_msgSend_setObject_forKey_(v13, v31, v30, v26, v32);
            }

            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v439, v459, 16);
          }

          while (v23);
        }

        v5 = v387;
        objc_msgSend_setObject_forKey_(v387, v21, v9, v405, v22);
      }

      v402 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v443, v460, 16);
    }

    while (v402);
  }

  v373 = objc_msgSend_getBucketsNotAggregated(v404, v34, v35, v36, v37);
  v38 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v39 = v38;
    v44 = objc_msgSend_description(v373, v40, v41, v42, v43);
    *buf = 138412290;
    v453 = v44;
    _os_log_impl(&dword_255ED5000, v39, OS_LOG_TYPE_INFO, "To aggregate: %@", buf, 0xCu);
  }

  v370 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v382 = objc_alloc_init(LBFStateDetector);
  v435 = 0u;
  v436 = 0u;
  v437 = 0u;
  v438 = 0u;
  v49 = objc_msgSend_reverseObjectEnumerator(v404->_buckets, v45, v46, v47, v48);
  v54 = objc_msgSend_allObjects(v49, v50, v51, v52, v53);

  v371 = v54;
  v374 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v435, v458, 16);
  if (v374)
  {
    v372 = *v436;
    do
    {
      v60 = 0;
      do
      {
        if (*v436 != v372)
        {
          objc_enumerationMutation(v371);
        }

        v375 = v60;
        v61 = *(*(&v435 + 1) + 8 * v60);
        v62 = objc_msgSend_flattenEvents(v61, v56, v57, v58, v59);
        v376 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v431 = 0u;
        v432 = 0u;
        v433 = 0u;
        v434 = 0u;
        v379 = v62;
        v378 = objc_msgSend_countByEnumeratingWithState_objects_count_(v379, v63, &v431, v457, 16);
        if (v378)
        {
          v377 = *v432;
          do
          {
            v67 = 0;
            do
            {
              if (*v432 != v377)
              {
                objc_enumerationMutation(v379);
              }

              v380 = v67;
              v68 = *(*(&v431 + 1) + 8 * v67);
              if (!objc_msgSend_isEqualToString_(v68, v64, @"null_experiment", v65, v66))
              {
                goto LABEL_33;
              }

              v69 = LBFLogContextAggregator;
              v70 = os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO);
              if (!v393)
              {
                if (v70)
                {
                  *buf = 0;
                  _os_log_impl(&dword_255ED5000, v69, OS_LOG_TYPE_INFO, "Including null exp in aggregation.", buf, 2u);
                }

LABEL_33:
                v71 = objc_msgSend_objectForKey_(v379, v64, v68, v65, v66);
                v381 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v390 = objc_msgSend_objectForKey_(v404->_stateDict, v72, v68, v73, v74);
                v78 = objc_msgSend_objectForKey_(v404->_stateDict, v75, v68, v76, v77);

                if (!v78)
                {
                  v79 = LBFLogContextAggregator;
                  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v453 = v68;
                    _os_log_impl(&dword_255ED5000, v79, OS_LOG_TYPE_INFO, "%@ not in state dict.", buf, 0xCu);
                  }
                }

                v429 = 0u;
                v430 = 0u;
                v427 = 0u;
                v428 = 0u;
                v80 = v71;
                v394 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v81, &v427, v456, 16);
                if (!v394)
                {
LABEL_140:

                  objc_msgSend_setObject_forKey_(v404->_stateDict, v317, v390, v68, v318);
                  v323 = objc_msgSend_copy(v381, v319, v320, v321, v322);
                  objc_msgSend_setObject_forKey_(v376, v324, v323, v68, v325);

                  goto LABEL_141;
                }

                v392 = *v428;
                v397 = v68;
                v389 = v80;
                while (2)
                {
                  v85 = 0;
LABEL_39:
                  if (*v428 != v392)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v86 = *(*(&v427 + 1) + 8 * v85);
                  if (v393 && objc_msgSend_isEqualToString_(v68, v82, @"null_deployment", v83, v84))
                  {
                    v87 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_255ED5000, v87, OS_LOG_TYPE_INFO, "Skipping aggregation for null deployment.", buf, 2u);
                    }

LABEL_135:
                    v85 = v85 + 1;
                    if (v85 == v394)
                    {
                      v316 = objc_msgSend_countByEnumeratingWithState_objects_count_(v80, v82, &v427, v456, 16);
                      v394 = v316;
                      if (!v316)
                      {
                        goto LABEL_140;
                      }

                      continue;
                    }

                    goto LABEL_39;
                  }

                  break;
                }

                obja = v85;
                v88 = objc_msgSend_objectForKey_(v390, v82, v86, v83, v84);

                if (!v88)
                {
                  v92 = LBFLogContextAggregator;
                  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v453 = v86;
                    v454 = 2112;
                    v455 = v68;
                    _os_log_impl(&dword_255ED5000, v92, OS_LOG_TYPE_INFO, "%@ not in Experiment '%@' State Dict.", buf, 0x16u);
                  }
                }

                v93 = objc_msgSend_objectForKey_(v404->_stateDict, v89, v68, v90, v91);
                objc_msgSend_objectForKey_(v93, v94, v86, v95, v96);
                v97 = v406 = v86;
                v395 = objc_msgSend_intValue(v97, v98, v99, v100, v101);

                v105 = objc_msgSend_objectForKey_(v80, v102, v406, v103, v104);
                v403 = v105;
                if (objc_msgSend_count(v105, v106, v107, v108, v109))
                {
                  v113 = objc_msgSend_objectAtIndex_(v105, v110, 0, v111, v112);
                  v117 = objc_msgSend_getTrialIdentifierFromBMEvent_(v404, v114, v113, v115, v116);

                  v401 = v117;
                  if (!v117 && os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                  {
                    sub_255F0AAE4(&v425, v426);
                  }

                  v121 = objc_msgSend_objectForKey_(v5, v118, v68, v119, v120);

                  if (v121)
                  {
                    v125 = objc_msgSend_objectForKey_(v5, v122, v68, v123, v124);
                    v129 = objc_msgSend_objectForKey_(v125, v126, v406, v127, v128);

                    if (!v129)
                    {
                      v133 = LBFLogContextAggregator;
                      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v453 = v406;
                        v454 = 2112;
                        v455 = v68;
                        v134 = v133;
                        v135 = "%@ not in MLRuntime Status '%@' Dict.";
                        v136 = 22;
                        goto LABEL_60;
                      }
                    }
                  }

                  else
                  {
                    v137 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v453 = v68;
                      v134 = v137;
                      v135 = "%@ not in MLRuntime status dict.";
                      v136 = 12;
LABEL_60:
                      _os_log_impl(&dword_255ED5000, v134, OS_LOG_TYPE_INFO, v135, buf, v136);
                    }
                  }

                  v138 = objc_msgSend_objectForKey_(v5, v130, v68, v131, v132);
                  v142 = objc_msgSend_objectForKey_(v138, v139, v406, v140, v141);
                  isEqual = objc_msgSend_isEqual_(v142, v143, &unk_286801030, v144, v145);

                  if (isEqual)
                  {
                    v423 = 0u;
                    v424 = 0u;
                    v421 = 0u;
                    v422 = 0u;
                    v150 = v105;
                    v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v151, &v421, v451, 16);
                    if (v152)
                    {
                      v153 = v152;
                      v154 = v105;
                      v155 = 0;
                      v156 = *v422;
                      do
                      {
                        for (k = 0; k != v153; ++k)
                        {
                          if (*v422 != v156)
                          {
                            objc_enumerationMutation(v150);
                          }

                          v158 = *(*(&v421 + 1) + 8 * k);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              continue;
                            }
                          }

                          v155 = 1;
                        }

                        v153 = objc_msgSend_countByEnumeratingWithState_objects_count_(v150, v159, &v421, v451, 16);
                      }

                      while (v153);

                      v68 = v397;
                      v105 = v154;
                      v5 = v387;
                      if (v155)
                      {
                        v150 = objc_msgSend_objectForKey_(v387, v147, v397, v148, v149);
                        objc_msgSend_setObject_forKey_(v150, v160, &unk_286801048, v406, v161);
                        objc_msgSend_setObject_forKey_(v387, v162, v150, v397, v163);
                        goto LABEL_75;
                      }
                    }

                    else
                    {
                      v68 = v397;
LABEL_75:
                    }
                  }

                  v164 = objc_msgSend_objectForKey_(v5, v147, v68, v148, v149);
                  v168 = objc_msgSend_objectForKey_(v164, v165, v406, v166, v167);
                  v172 = objc_msgSend_isEqual_(v168, v169, &unk_286801048, v170, v171);

                  v174 = objc_msgSend_getTransitionProcessingEventArray_mlRuntimeInCurrentBucket_mlRuntimeInPreviousBucket_(v404, v173, v105, v172, isEqual ^ 1u);
                  v178 = v401;
                  v391 = v174;
                  if (!v401)
                  {
                    v68 = v397;
                    v85 = obja;
                    v80 = v389;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                    {
                      sub_255F0AB3C(&v409, v410);
                    }

                    goto LABEL_133;
                  }

                  v179 = v174;
                  v388 = v172;
                  v180 = v395;
                  objc_msgSend_IsEmptyTrialIdentifiers_(LBFUtils, v175, v401, v176, v177);
                  if (objc_msgSend_count(v179, v181, v182, v183, v184))
                  {
                    v189 = objc_msgSend_startTime(v61, v185, v186, v187, v188);
                    v191 = objc_msgSend_processEventsStartingFromState_bucketStartTime_events_(v382, v190, v395, v189, v179);

                    v195 = objc_msgSend_objectAtIndex_(v191, v192, 0, v193, v194);
                    v200 = objc_msgSend_intValue(v195, v196, v197, v198, v199);

                    v396 = objc_msgSend_objectAtIndex_(v191, v201, 1, v202, v203);
                    v204 = v397;
                  }

                  else
                  {
                    v205 = [LBFBitacoraStateTransition alloc];
                    v191 = objc_msgSend_startTime(v61, v206, v207, v208, v209);
                    v204 = v397;
                    if (v388)
                    {
                      v211 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v205, v210, 19, v395, v191, 0.0);
                      v450 = v211;
                      v396 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v212, &v450, 1, v213);

                      v200 = 19;
                    }

                    else
                    {
                      v214 = objc_msgSend_initWithBitcoraState_previousState_timestamp_timedelta_(v205, v210, 18, v395, v191, 0.0);
                      v449 = v214;
                      v396 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v215, &v449, 1, v216);

                      v200 = 18;
                    }
                  }

                  v219 = objc_msgSend_getTrialStatus_deploymentId_(v404->_trialStatusDetector, v217, v204, v406, v218);
                  setMLHostMarkerInStateID = v404->_setMLHostMarkerInStateID;
                  v221 = [LBFBitacoraStateInfo alloc];
                  v226 = objc_msgSend_startTime(v61, v222, v223, v224, v225);
                  v232 = objc_msgSend_endTime(v61, v227, v228, v229, v230);
                  if (setMLHostMarkerInStateID)
                  {
                    started = objc_msgSend_initWithBitcoraStateMLHost_bucketStartTime_bucketEndTime_observedTrialStatus_bitacoraStateTransitions_bitacoraEvents_(v221, v231, v401, v226, v232, v219, v396, v403);
                  }

                  else
                  {
                    started = objc_msgSend_initWithBitcoraState_bucketStartTime_bucketEndTime_observedTrialStatus_bitacoraStateTransitions_bitacoraEvents_(v221, v231, v401, v226, v232, v219, v396, v403);
                  }

                  v234 = started;

                  v80 = v389;
                  if (v234)
                  {
                    v68 = v397;
                    if (v200 == 2)
                    {
                      v384 = v234;
                      v386 = v219;
                      v413 = 0u;
                      v414 = 0u;
                      v411 = 0u;
                      v412 = 0u;
                      v274 = v403;
                      v276 = objc_msgSend_countByEnumeratingWithState_objects_count_(v274, v275, &v411, v447, 16);
                      if (v276)
                      {
                        v281 = v276;
                        v282 = *v412;
                        v283 = 1;
                        do
                        {
                          for (m = 0; m != v281; ++m)
                          {
                            if (*v412 != v282)
                            {
                              objc_enumerationMutation(v274);
                            }

                            v285 = objc_msgSend_timestamp(*(*(&v411 + 1) + 8 * m), v277, v278, v279, v280);
                            objc_msgSend_timeIntervalSince1970(v285, v286, v287, v288, v289);
                            v291 = v290;
                            v296 = objc_msgSend_startTime(v61, v292, v293, v294, v295);
                            objc_msgSend_timeIntervalSince1970(v296, v297, v298, v299, v300);
                            v302 = v291 <= v301;

                            v283 &= v302;
                          }

                          v281 = objc_msgSend_countByEnumeratingWithState_objects_count_(v274, v277, &v411, v447, 16);
                        }

                        while (v281);

                        v234 = v384;
                        if (v283)
                        {
                          v200 = 19;
                          v68 = v397;
                          v80 = v389;
                          v219 = v386;
                          objc_msgSend_setLatestState_(v384, v235, 19, v303, v236);
                        }

                        else
                        {
                          v200 = 2;
                          v68 = v397;
                          v80 = v389;
                          v219 = v386;
                        }
                      }

                      else
                      {

                        v200 = 19;
                        objc_msgSend_setLatestState_(v234, v307, 19, v308, v309);
                      }

                      goto LABEL_131;
                    }

                    if (v200 == 1)
                    {
                      v237 = LBFLogContextAggregator;
                      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_255ED5000, v237, OS_LOG_TYPE_INFO, "Emitting allocated.", buf, 2u);
                      }

                      v417 = 0u;
                      v418 = 0u;
                      v415 = 0u;
                      v416 = 0u;
                      v238 = v403;
                      v240 = objc_msgSend_countByEnumeratingWithState_objects_count_(v238, v239, &v415, v448, 16);
                      if (v240)
                      {
                        v245 = v240;
                        v383 = v234;
                        v385 = v219;
                        v246 = *v416;
                        v247 = 1;
                        do
                        {
                          for (n = 0; n != v245; ++n)
                          {
                            if (*v416 != v246)
                            {
                              objc_enumerationMutation(v238);
                            }

                            v249 = objc_msgSend_timestamp(*(*(&v415 + 1) + 8 * n), v241, v242, v243, v244);
                            objc_msgSend_timeIntervalSince1970(v249, v250, v251, v252, v253);
                            v255 = v254;
                            v260 = objc_msgSend_startTime(v61, v256, v257, v258, v259);
                            objc_msgSend_timeIntervalSince1970(v260, v261, v262, v263, v264);
                            v266 = v255 <= v265;

                            v247 &= v266;
                          }

                          v245 = objc_msgSend_countByEnumeratingWithState_objects_count_(v238, v241, &v415, v448, 16);
                        }

                        while (v245);

                        v68 = v397;
                        v80 = v389;
                        v234 = v383;
                        v219 = v385;
                        if ((v247 & 1) == 0)
                        {
                          v267 = LBFLogContextAggregator;
                          if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_255ED5000, v267, OS_LOG_TYPE_INFO, "Events in question from current bucket.", buf, 2u);
                          }

                          if (v388)
                          {
                            v268 = LBFLogContextAggregator;
                            if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                            {
                              *buf = 0;
                              v272 = v268;
                              v273 = "Allocated in current bucket, but seen MLRuntime - Activated Idle State.";
                              goto LABEL_125;
                            }

                            goto LABEL_126;
                          }

                          v200 = 1;
LABEL_131:
                          objc_msgSend_setObject_forKey_(v381, v235, v234, v406, v236);
                          v313 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v310, v200, v311, v312);
                          objc_msgSend_setObject_forKey_(v390, v314, v313, v406, v315);

LABEL_132:
                          v85 = obja;
                          v178 = v401;
                          v5 = v387;
LABEL_133:

LABEL_134:
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                      }

                      v304 = LBFLogContextAggregator;
                      if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_255ED5000, v304, OS_LOG_TYPE_INFO, "All events from previous bucket.", buf, 2u);
                      }

                      v305 = LBFLogContextAggregator;
                      v306 = os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO);
                      if (v388)
                      {
                        if (v306)
                        {
                          *buf = 0;
                          v272 = v305;
                          v273 = "Seen MLRuntime - must be Activated Idle.";
LABEL_125:
                          _os_log_impl(&dword_255ED5000, v272, OS_LOG_TYPE_INFO, v273, buf, 2u);
                        }

LABEL_126:
                        v200 = 19;
                        objc_msgSend_setLatestState_(v234, v269, 19, v270, v271);
                      }

                      else
                      {
                        if (v306)
                        {
                          *buf = 0;
                          _os_log_impl(&dword_255ED5000, v305, OS_LOG_TYPE_INFO, "No MLRuntime - must be Allocated Idle.", buf, 2u);
                        }

                        v200 = 18;
                        objc_msgSend_setLatestState_(v234, v269, 18, v270, v271);
                      }

                      goto LABEL_131;
                    }

                    if (v200 != 3 || v180 != 3)
                    {
                      goto LABEL_131;
                    }
                  }

                  else
                  {
                    v68 = v397;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                    {
                      sub_255F0AB10(&v419, v420);
                    }
                  }

                  goto LABEL_132;
                }

                v85 = obja;
                if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                {
                  sub_255F0AB68(&v407, v408);
                }

                goto LABEL_134;
              }

              if (v70)
              {
                *buf = 0;
                _os_log_impl(&dword_255ED5000, v69, OS_LOG_TYPE_INFO, "Skipping aggregation for null experiment.", buf, 2u);
              }

LABEL_141:
              v67 = v380 + 1;
            }

            while (v380 + 1 != v378);
            v378 = objc_msgSend_countByEnumeratingWithState_objects_count_(v379, v64, &v431, v457, 16);
          }

          while (v378);
        }

        v326 = MEMORY[0x277CCABB0];
        v331 = objc_msgSend_bucketIndex(v61, v327, v328, v329, v330);
        v335 = objc_msgSend_numberWithUnsignedInteger_(v326, v332, v331, v333, v334);
        v339 = objc_msgSend_containsObject_(v373, v336, v335, v337, v338);

        if (v339)
        {
          v344 = objc_msgSend_copy(v376, v340, v341, v342, v343);
          objc_msgSend_addObject_(v370, v345, v344, v346, v347);
        }

        v60 = v375 + 1;
      }

      while (v375 + 1 != v374);
      v374 = objc_msgSend_countByEnumeratingWithState_objects_count_(v371, v56, &v435, v458, 16);
    }

    while (v374);
  }

  v348 = objc_alloc(MEMORY[0x277CBEBD0]);
  v356 = objc_msgSend_initWithSuiteName_(v348, v349, @"LighthouseBitacoraFramework", v350, v351);
  if (v369)
  {
    v357 = objc_msgSend_objectAtIndex_(v404->_buckets, v352, 0, v354, v355);
    v362 = objc_msgSend_endTime(v357, v358, v359, v360, v361);

    v363 = LBFLogContextAggregator;
    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v453 = v362;
      _os_log_impl(&dword_255ED5000, v363, OS_LOG_TYPE_INFO, "Setting aggregation timestamp to: %@", buf, 0xCu);
    }

    objc_msgSend_setObject_forKey_(v356, v364, v362, v404->_lastAggregationDateKey, v365);
  }

  v366 = objc_msgSend_copy(v370, v352, v353, v354, v355);

  v367 = *MEMORY[0x277D85DE8];

  return v366;
}

- (BOOL)dumpFetchedEvents
{
  v69 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_buckets, a2, v2, v3, v4))
  {
    v10 = 0;
    *&v9 = 138412546;
    v59 = v9;
    do
    {
      v11 = objc_msgSend_objectAtIndex_(self->_buckets, v6, v10, v7, v8, v59);
      v16 = objc_msgSend_eventTree(v11, v12, v13, v14, v15);
      v21 = objc_msgSend_count(v16, v17, v18, v19, v20);

      if (v21)
      {
        v22 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          v27 = v22;
          v32 = objc_msgSend_startTime(v11, v28, v29, v30, v31);
          v37 = objc_msgSend_endTime(v11, v33, v34, v35, v36);
          *buf = v59;
          v66 = v32;
          v67 = 2112;
          v68 = v37;
          _os_log_impl(&dword_255ED5000, v27, OS_LOG_TYPE_INFO, "Bucket from %@ to %@", buf, 0x16u);
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v38 = objc_msgSend_eventTree(v11, v23, v24, v25, v26);
        v43 = objc_msgSend_allValues(v38, v39, v40, v41, v42);

        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v60, v64, 16);
        if (v45)
        {
          v50 = v45;
          v51 = *v61;
          do
          {
            v52 = 0;
            do
            {
              if (*v61 != v51)
              {
                objc_enumerationMutation(v43);
              }

              objc_msgSend_dumpFetchedEvents(*(*(&v60 + 1) + 8 * v52++), v46, v47, v48, v49);
            }

            while (v50 != v52);
            v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v60, v64, 16);
          }

          while (v50);
        }
      }

      ++v10;
    }

    while (objc_msgSend_count(self->_buckets, v53, v54, v55, v56) > v10);
  }

  v57 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)fetchedEventsInDictionaries
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(self->_buckets, v4, v5, v6, v7))
  {
    v12 = 0;
    *&v11 = 138412546;
    v65 = v11;
    do
    {
      v13 = objc_msgSend_objectAtIndex_(self->_buckets, v8, v12, v9, v10, v65);
      v18 = objc_msgSend_eventTree(v13, v14, v15, v16, v17);
      v23 = objc_msgSend_count(v18, v19, v20, v21, v22);

      if (v23)
      {
        v24 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          v29 = v24;
          v34 = objc_msgSend_startTime(v13, v30, v31, v32, v33);
          v39 = objc_msgSend_endTime(v13, v35, v36, v37, v38);
          *buf = v65;
          v72 = v34;
          v73 = 2112;
          v74 = v39;
          _os_log_impl(&dword_255ED5000, v29, OS_LOG_TYPE_INFO, "Bucket from %@ to %@", buf, 0x16u);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v40 = objc_msgSend_eventTree(v13, v25, v26, v27, v28);
        v45 = objc_msgSend_allValues(v40, v41, v42, v43, v44);

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v66, v70, 16);
        if (v47)
        {
          v52 = v47;
          v53 = *v67;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v67 != v53)
              {
                objc_enumerationMutation(v45);
              }

              v55 = objc_msgSend_fetchedEventsInDictionaries(*(*(&v66 + 1) + 8 * i), v48, v49, v50, v51);
              objc_msgSend_addObjectsFromArray_(v3, v56, v55, v57, v58);
            }

            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v66, v70, 16);
          }

          while (v52);
        }
      }

      ++v12;
    }

    while (objc_msgSend_count(self->_buckets, v59, v60, v61, v62) > v12);
  }

  v63 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)getRandomCoinFlip
{
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], a2, v2, v3, v4);
  srand48(v5);

  return drand48();
}

- (id)dumpAggregate
{
  v106 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_getAggregatedStatesUpdateTimestamp_skipNullIdentifiers_(self, a2, 0, 0, v2);
  v4 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    *buf = 134217984;
    v105 = objc_msgSend_count(v3, v6, v7, v8, v9);
    _os_log_impl(&dword_255ED5000, v5, OS_LOG_TYPE_INFO, "%lu Buckets", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v3;
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v97, v103, 16);
  if (v81)
  {
    v80 = *v98;
    v83 = v10;
    do
    {
      v12 = 0;
      do
      {
        if (*v98 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v82 = v12;
        v13 = *(*(&v97 + 1) + 8 * v12);
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v86 = v13;
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v14, &v93, v102, 16);
        if (v85)
        {
          v84 = *v94;
          do
          {
            v18 = 0;
            do
            {
              if (*v94 != v84)
              {
                objc_enumerationMutation(v86);
              }

              v88 = v18;
              v19 = *(*(&v93 + 1) + 8 * v18);
              v20 = objc_msgSend_objectForKey_(v86, v15, v19, v16, v17);
              v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v25 = objc_msgSend_objectForKey_(v10, v22, v19, v23, v24);

              v87 = v19;
              if (v25)
              {
                v29 = objc_msgSend_objectForKey_(v10, v26, v19, v27, v28);

                v21 = v29;
              }

              v91 = 0u;
              v92 = 0u;
              v89 = 0u;
              v90 = 0u;
              v30 = v20;
              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v89, v101, 16);
              if (v32)
              {
                v36 = v32;
                v37 = *v90;
                do
                {
                  for (i = 0; i != v36; ++i)
                  {
                    if (*v90 != v37)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v39 = *(*(&v89 + 1) + 8 * i);
                    v40 = objc_msgSend_objectForKey_(v30, v33, v39, v34, v35);
                    v41 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      v42 = v41;
                      v47 = objc_msgSend_latestState(v40, v43, v44, v45, v46);
                      *buf = 134217984;
                      v105 = v47;
                      _os_log_impl(&dword_255ED5000, v42, OS_LOG_TYPE_INFO, "State: %lu", buf, 0xCu);
                    }

                    v48 = LBFLogContextAggregator;
                    if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
                    {
                      v49 = v48;
                      v54 = objc_msgSend_getDictionaryRepresentation(v40, v50, v51, v52, v53);
                      *buf = 138412290;
                      v105 = v54;
                      _os_log_impl(&dword_255ED5000, v49, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
                    }

                    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v59 = objc_msgSend_objectForKey_(v21, v56, v39, v57, v58);

                    if (v59)
                    {
                      v64 = objc_msgSend_objectForKey_(v21, v60, v39, v62, v63);
                      objc_msgSend_addObjectsFromArray_(v55, v65, v64, v66, v67);
                    }

                    v68 = objc_msgSend_getDictionaryRepresentation(v40, v60, v61, v62, v63);
                    objc_msgSend_addObject_(v55, v69, v68, v70, v71);

                    objc_msgSend_setObject_forKey_(v21, v72, v55, v39, v73);
                  }

                  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v89, v101, 16);
                }

                while (v36);
              }

              v10 = v83;
              objc_msgSend_setObject_forKey_(v83, v74, v21, v87, v75);

              v18 = v88 + 1;
            }

            while (v88 + 1 != v85);
            v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v15, &v93, v102, 16);
          }

          while (v85);
        }

        v12 = v82 + 1;
      }

      while (v82 + 1 != v81);
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v97, v103, 16);
    }

    while (v81);
  }

  v77 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)enumerateAggregation:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = objc_msgSend_getBucketsNotAggregated(self, v5, v6, v7, v8);
  v10 = LBFLogContextAggregator;
  if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_INFO))
  {
    v15 = v10;
    v20 = objc_msgSend_description(v9, v16, v17, v18, v19);
    *buf = 138412290;
    v90 = v20;
    _os_log_impl(&dword_255ED5000, v15, OS_LOG_TYPE_INFO, "To aggregate: %@", buf, 0xCu);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v21 = objc_msgSend_reverseObjectEnumerator(self->_buckets, v11, v12, v13, v14, v9);
  v26 = objc_msgSend_allObjects(v21, v22, v23, v24, v25);

  obj = v26;
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v82, v88, 16);
  if (v66)
  {
    v65 = *v83;
    do
    {
      v32 = 0;
      do
      {
        if (*v83 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v32;
        v33 = *(*(&v82 + 1) + 8 * v32);
        v34 = objc_msgSend_flattenEvents(v33, v28, v29, v30, v31);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v70 = v34;
        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v78, v87, 16);
        if (v69)
        {
          v68 = *v79;
          do
          {
            v39 = 0;
            do
            {
              if (*v79 != v68)
              {
                objc_enumerationMutation(v70);
              }

              v71 = v39;
              v40 = objc_msgSend_objectForKey_(v70, v36, *(*(&v78 + 1) + 8 * v39), v37, v38);
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v74, v86, 16);
              if (v42)
              {
                v46 = v42;
                v47 = *v75;
                do
                {
                  for (i = 0; i != v46; ++i)
                  {
                    if (*v75 != v47)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v49 = objc_msgSend_objectForKey_(v40, v43, *(*(&v74 + 1) + 8 * i), v44, v45);
                    if (objc_msgSend_count(v49, v50, v51, v52, v53))
                    {
                      v57 = objc_msgSend_objectAtIndex_(v49, v54, 0, v55, v56);
                      v61 = objc_msgSend_getTrialIdentifierFromBMEvent_(self, v58, v57, v59, v60);

                      if (v61)
                      {
                        v4[2](v4, v33, v61, v49);
                      }

                      else if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                      {
                        sub_255F0AB3C(buf, &buf[1]);
                      }
                    }

                    else if (os_log_type_enabled(LBFLogContextAggregator, OS_LOG_TYPE_ERROR))
                    {
                      sub_255F0AB68(&v72, v73);
                    }
                  }

                  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v74, v86, 16);
                }

                while (v46);
              }

              v39 = v71 + 1;
            }

            while (v71 + 1 != v69);
            v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v36, &v78, v87, 16);
          }

          while (v69);
        }

        v32 = v67 + 1;
      }

      while (v67 + 1 != v66);
      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v82, v88, 16);
    }

    while (v66);
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (id)dateToStringInUTCAndLocal:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  objc_msgSend_setDateFormat_(v5, v6, @"yyyy-MM-dd HH:mm:ss zzz", v7, v8);
  v13 = objc_msgSend_localTimeZone(MEMORY[0x277CBEBB0], v9, v10, v11, v12);
  objc_msgSend_setTimeZone_(v5, v14, v13, v15, v16);

  v20 = objc_msgSend_stringFromDate_(v5, v17, v4, v18, v19);
  v24 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v21, @"UTC", v22, v23);
  objc_msgSend_setTimeZone_(v5, v25, v24, v26, v27);

  v31 = objc_msgSend_stringFromDate_(v5, v28, v4, v29, v30);

  v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"%@ %@", v33, v34, v31, v20);

  return v35;
}

- (void)dumpTimestamps
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_255EDF598;
  v4[3] = &unk_2798139A0;
  v4[4] = self;
  objc_msgSend_enumerateAggregation_(self, a2, v4, v2, v3);
}

@end