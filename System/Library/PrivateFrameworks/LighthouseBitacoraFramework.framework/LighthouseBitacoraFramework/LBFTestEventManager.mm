@interface LBFTestEventManager
+ (id)sharedInstance;
- (BOOL)generateEventStore;
- (BOOL)loadSyntheticJSON:(id)n datasetName:(id)name;
- (BOOL)validateOutcomes:(id)outcomes withAggregatedStates:(id)states;
- (LBFTestEventManager)init;
- (id)dprivacydEventFromDict:(id)dict;
- (id)ensureBiomeManagerDprivacyd;
- (id)ensureBiomeManagerLighthouse;
- (id)ensureBiomeManagerMLRuntimed;
- (id)ensureBiomeManagerTrial;
- (id)generateOutcomeDict;
- (id)lighthouseEventFromDict:(id)dict;
- (id)mlRuntimedEventFromDict:(id)dict;
- (id)readData:(id)data endDate:(id)date;
- (id)trialEventFromDict:(id)dict;
- (id)trialIdentifiersFromJSON:(id)n;
@end

@implementation LBFTestEventManager

- (LBFTestEventManager)init
{
  v20.receiver = self;
  v20.super_class = LBFTestEventManager;
  v2 = [(LBFTestEventManager *)&v20 init];
  if (v2)
  {
    LBFLoggingUtilsInit();
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    syntheticData = v2->_syntheticData;
    v2->_syntheticData = v3;

    readCategory = v2->_readCategory;
    v2->_readCategory = @"Unknown";

    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v6;

    v8 = v2->_dateFormatter;
    v12 = objc_msgSend_timeZoneWithAbbreviation_(MEMORY[0x277CBEBB0], v9, @"UTC", v10, v11);
    objc_msgSend_setTimeZone_(v8, v13, v12, v14, v15);

    objc_msgSend_setDateFormat_(v2->_dateFormatter, v16, @"YYYY-MM-dd", v17, v18);
  }

  return v2;
}

+ (id)sharedInstance
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)loadSyntheticJSON:(id)n datasetName:(id)name
{
  nameCopy = name;
  v10 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v7, n, v8, v9);
  v12 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v11, v10, 0, 0);
  SyntheticData = objc_msgSend_loadSyntheticData_(self, v13, v12, v14, v15);
  datasetName = self->_datasetName;
  self->_datasetName = nameCopy;

  return SyntheticData;
}

- (id)ensureBiomeManagerTrial
{
  readCategory = self->_readCategory;
  self->_readCategory = @"Trial";

  return self;
}

- (id)ensureBiomeManagerLighthouse
{
  readCategory = self->_readCategory;
  self->_readCategory = @"Lighthouse";

  return self;
}

- (id)ensureBiomeManagerMLRuntimed
{
  readCategory = self->_readCategory;
  self->_readCategory = @"MLRuntimed";

  return self;
}

- (id)ensureBiomeManagerDprivacyd
{
  readCategory = self->_readCategory;
  self->_readCategory = @"Dprivacyd";

  return self;
}

- (id)trialIdentifiersFromJSON:(id)n
{
  nCopy = n;
  v7 = objc_msgSend_objectForKey_(nCopy, v4, @"bmltIdentifiers", v5, v6);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_objectForKey_(v7, v8, @"trialDeploymentID", v9, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v12 = 0;
    }

    v13 = [LBFTrialIdentifiers alloc];
    v17 = objc_msgSend_objectForKey_(v11, v14, @"trialTaskID", v15, v16);
    v22 = objc_msgSend_intValue(v12, v18, v19, v20, v21);
    v25 = objc_msgSend_initWithBMLTTaskID_deploymentID_(v13, v23, v17, v22, v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_msgSend_objectForKey_(nCopy, v8, @"experimentIdentifiers", v9, v10);
  v30 = v26;
  if (v26)
  {
    v31 = objc_msgSend_objectForKey_(v26, v27, @"trialDeploymentID", v28, v29);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v31 = 0;
    }

    v32 = [LBFTrialIdentifiers alloc];
    v36 = objc_msgSend_objectForKey_(v30, v33, @"trialExperimentID", v34, v35);
    v41 = objc_msgSend_intValue(v31, v37, v38, v39, v40);
    v45 = objc_msgSend_objectForKey_(v30, v42, @"trialTreatmentID", v43, v44);
    v47 = objc_msgSend_initWithExperimentID_deploymentID_treatmentID_(v32, v46, v36, v41, v45);

    v25 = v47;
  }

  return v25;
}

- (id)lighthouseEventFromDict:(id)dict
{
  dictCopy = dict;
  v7 = objc_msgSend_objectForKey_(dictCopy, v4, @"performTrialTaskStatus", v5, v6);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_objectForKey_(v7, v8, @"succeeded", v9, v10);
    v17 = objc_msgSend_BOOLValue(v12, v13, v14, v15, v16);

    v21 = objc_msgSend_objectForKey_(v11, v18, @"usePrivateUpload", v19, v20);

    v22 = [LBFLighthouseEvent alloc];
    v24 = objc_msgSend_initWithPerformTrialTaskStatus_error_usePrivateUpload_(v22, v23, v17, 0, v21 != 0);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_msgSend_objectForKey_(dictCopy, v8, @"performTaskStatus", v9, v10);
  v29 = v25;
  if (v25)
  {
    v30 = objc_msgSend_objectForKey_(v25, v26, @"succeeded", v27, v28);
    v35 = objc_msgSend_BOOLValue(v30, v31, v32, v33, v34);

    v36 = [LBFLighthouseEvent alloc];
    v39 = objc_msgSend_initWithPerformTaskStatus_error_(v36, v37, v35, 0, v38);

    v24 = v39;
  }

  v40 = objc_msgSend_objectForKey_(dictCopy, v26, @"stop", v27, v28);
  v44 = v40;
  if (v40)
  {
    v45 = objc_msgSend_objectForKey_(v40, v41, @"succeeded", v42, v43);
    v50 = objc_msgSend_BOOLValue(v45, v46, v47, v48, v49);

    v51 = [LBFLighthouseEvent alloc];
    v54 = objc_msgSend_initWithStop_error_(v51, v52, v50, 0, v53);

    v24 = v54;
  }

  return v24;
}

- (id)mlRuntimedEventFromDict:(id)dict
{
  dictCopy = dict;
  v7 = objc_msgSend_objectForKey_(dictCopy, v4, @"taskCompleted", v5, v6);
  v11 = v7;
  if (v7)
  {
    v12 = objc_msgSend_objectForKey_(v7, v8, @"succeeded", v9, v10);
    v17 = objc_msgSend_BOOLValue(v12, v13, v14, v15, v16);

    v18 = [LBFMLRuntimedEvent alloc];
    v21 = objc_msgSend_initWithTaskCompleted_error_(v18, v19, v17, 0, v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_msgSend_objectForKey_(dictCopy, v8, @"taskFetched", v9, v10);
  v26 = v22;
  if (v22)
  {
    v27 = objc_msgSend_objectForKey_(v22, v23, @"succeeded", v24, v25);
    v32 = objc_msgSend_BOOLValue(v27, v28, v29, v30, v31);

    v33 = [LBFMLRuntimedEvent alloc];
    v36 = objc_msgSend_initWithTaskFetched_error_(v33, v34, v32, 0, v35);

    v21 = v36;
  }

  v37 = objc_msgSend_objectForKey_(dictCopy, v23, @"taskScheduled", v24, v25);
  v41 = v37;
  if (v37)
  {
    v42 = objc_msgSend_objectForKey_(v37, v38, @"succeeded", v39, v40);
    v47 = objc_msgSend_BOOLValue(v42, v43, v44, v45, v46);

    v48 = [LBFMLRuntimedEvent alloc];
    v51 = objc_msgSend_initWithTaskScheduled_error_(v48, v49, v47, 0, v50);

    v21 = v51;
  }

  v52 = objc_msgSend_objectForKey_(dictCopy, v38, @"activityScheduleStatus", v39, v40);
  v56 = v52;
  if (v52)
  {
    v57 = objc_msgSend_objectForKey_(v52, v53, @"scheduled", v54, v55);
    v62 = objc_msgSend_BOOLValue(v57, v58, v59, v60, v61);

    v63 = [LBFMLRuntimedEvent alloc];
    v67 = objc_msgSend_initWithScheduleStatus_(v63, v64, v62, v65, v66);

    v21 = v67;
  }

  return v21;
}

- (id)dprivacydEventFromDict:(id)dict
{
  dictCopy = dict;
  v7 = objc_msgSend_objectForKeyedSubscript_(dictCopy, v4, @"event", v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"phase", v9, v10);

  v15 = objc_msgSend_objectForKeyedSubscript_(&unk_286801330, v12, v11, v13, v14);
  v20 = objc_msgSend_intValue(v15, v16, v17, v18, v19);

  v24 = objc_msgSend_objectForKeyedSubscript_(dictCopy, v21, @"event", v22, v23);

  v28 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"succeeded", v26, v27);
  v29 = v28 != 0;

  v30 = [LBFDprivacydEvent alloc];
  v32 = objc_msgSend_initWithEventPhase_eventUUID_succeeded_error_(v30, v31, v20, 0, v29, 0);

  return v32;
}

- (id)trialEventFromDict:(id)dict
{
  dictCopy = dict;
  v7 = objc_msgSend_objectForKey_(dictCopy, v4, @"eventType", v5, v6);
  v11 = objc_msgSend_objectForKey_(dictCopy, v8, @"eventSucceeded", v9, v10);

  v16 = objc_msgSend_BOOLValue(v11, v12, v13, v14, v15);
  if (objc_msgSend_isEqualToString_(v7, v17, @"Allocation", v18, v19))
  {
    v23 = [LBFTrialEvent alloc];
    v27 = objc_msgSend_initWithAllocation_(v23, v24, v16, v25, v26);
  }

  else
  {
    v27 = 0;
  }

  if (objc_msgSend_isEqualToString_(v7, v20, @"Activation", v21, v22))
  {
    v31 = [LBFTrialEvent alloc];
    v35 = objc_msgSend_initWithActivation_(v31, v32, v16, v33, v34);

    v27 = v35;
  }

  if (objc_msgSend_isEqualToString_(v7, v28, @"Deactivation", v29, v30))
  {
    v36 = [LBFTrialEvent alloc];
    v40 = objc_msgSend_initWithDeactivation_(v36, v37, v16, v38, v39);

    v27 = v40;
  }

  return v27;
}

- (id)generateOutcomeDict
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = self->_syntheticData;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v32, v36, 16);
  if (v6)
  {
    v10 = v6;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(self->_syntheticData, v7, v13, v8, v9, v32);
        v18 = objc_msgSend_objectForKey_(v14, v15, @"outcome", v16, v17);
        if (objc_msgSend_count(v18, v19, v20, v21, v22))
        {
          objc_msgSend_setObject_forKey_(v3, v23, v18, v13, v24);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v32, v36, 16);
    }

    while (v10);
  }

  v29 = objc_msgSend_copy(v3, v25, v26, v27, v28);
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (BOOL)generateEventStore
{
  v229 = *MEMORY[0x277D85DE8];
  v215 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v214 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v213 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v212 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v7 = objc_msgSend_initWithCalendarIdentifier_(v3, v4, *MEMORY[0x277CBE5C0], v5, v6);
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v204 = v7;
  objc_msgSend_setCalendar_(v8, v9, v7, v10, v11);
  objc_msgSend_setHour_(v8, v12, 0, v13, v14);
  objc_msgSend_setMinute_(v8, v15, 0, v16, v17);
  objc_msgSend_setSecond_(v8, v18, 0, v19, v20);
  v24 = objc_msgSend_timeZoneWithName_(MEMORY[0x277CBEBB0], v21, @"GMT", v22, v23);
  v203 = v8;
  objc_msgSend_setTimeZone_(v8, v25, v24, v26, v27);

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  obj = self->_syntheticData;
  v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v221, v228, 16);
  if (v206)
  {
    v205 = *v222;
    do
    {
      for (i = 0; i != v206; ++i)
      {
        if (*v222 != v205)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v221 + 1) + 8 * i);
        v34 = objc_msgSend_objectForKey_(self->_syntheticData, v29, v33, v30, v31);
        v41 = objc_msgSend_objectForKey_(v34, v35, @"events", v36, v37);
        if (v41)
        {
          v210 = v34;
          v211 = i;
          v42 = objc_msgSend_componentsSeparatedByString_(v33, v38, @"-", v39, v40);
          v46 = objc_msgSend_objectAtIndex_(v42, v43, 0, v44, v45);
          v51 = objc_msgSend_intValue(v46, v47, v48, v49, v50);
          objc_msgSend_setYear_(v203, v52, v51, v53, v54);

          v58 = objc_msgSend_objectAtIndex_(v42, v55, 1, v56, v57);
          v63 = objc_msgSend_intValue(v58, v59, v60, v61, v62);
          objc_msgSend_setMonth_(v203, v64, v63, v65, v66);

          v208 = v42;
          v70 = objc_msgSend_objectAtIndex_(v42, v67, 2, v68, v69);
          v75 = objc_msgSend_intValue(v70, v71, v72, v73, v74);
          objc_msgSend_setDay_(v203, v76, v75, v77, v78);

          v207 = objc_msgSend_dateFromComponents_(v204, v79, v203, v80, v81);
          objc_msgSend_timeIntervalSince1970(v207, v82, v83, v84, v85);
          v87 = v86;
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          v220 = 0u;
          v209 = v41;
          v216 = v41;
          v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v216, v88, &v217, v227, 16);
          if (v89)
          {
            v93 = v89;
            v94 = *v218;
            do
            {
              for (j = 0; j != v93; ++j)
              {
                if (*v218 != v94)
                {
                  objc_enumerationMutation(v216);
                }

                v96 = *(*(&v217 + 1) + 8 * j);
                v87 = v87 + 2.0;
                v97 = objc_msgSend_objectForKey_(v96, v90, @"trialIdentifiers", v91, v92);
                v101 = objc_msgSend_trialIdentifiersFromJSON_(self, v98, v97, v99, v100);

                v105 = objc_msgSend_objectForKey_(v96, v102, @"category", v103, v104);
                isEqualToString = objc_msgSend_isEqualToString_(v105, v106, @"Trial", v107, v108);

                if (isEqualToString)
                {
                  v113 = objc_msgSend_trialEventFromDict_(self, v110, v96, v111, v112);
                  v117 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v114, v87, v115, v116);
                  v119 = objc_msgSend_createTrialdEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v118, v113, v101, v117);

                  objc_msgSend_addObject_(v215, v120, v119, v121, v122);
                }

                v123 = objc_msgSend_objectForKey_(v96, v110, @"category", v111, v112);
                v127 = objc_msgSend_isEqualToString_(v123, v124, @"MLRuntimed", v125, v126);

                if (v127)
                {
                  v131 = objc_msgSend_mlRuntimedEventFromDict_(self, v128, v96, v129, v130);
                  v135 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v132, v87, v133, v134);
                  v137 = objc_msgSend_createMLRuntimedEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v136, v131, v101, v135);

                  objc_msgSend_addObject_(v214, v138, v137, v139, v140);
                }

                v141 = objc_msgSend_objectForKey_(v96, v128, @"category", v129, v130);
                v145 = objc_msgSend_isEqualToString_(v141, v142, @"Lighthouse", v143, v144);

                if (v145)
                {
                  v149 = objc_msgSend_lighthouseEventFromDict_(self, v146, v96, v147, v148);
                  v153 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v150, v87, v151, v152);
                  v155 = objc_msgSend_createLighthousePluginEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v154, v149, v101, v153);

                  objc_msgSend_addObject_(v213, v156, v155, v157, v158);
                }

                v159 = objc_msgSend_objectForKey_(v96, v146, @"category", v147, v148);
                v163 = objc_msgSend_isEqualToString_(v159, v160, @"Dprivacyd", v161, v162);

                if (v163)
                {
                  v167 = objc_msgSend_dprivacydEventFromDict_(self, v164, v96, v165, v166);
                  v171 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v168, v87, v169, v170);
                  v173 = objc_msgSend_createDprivacydEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v172, v167, v101, v171);

                  objc_msgSend_addObject_(v212, v174, v173, v175, v176);
                }
              }

              v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v216, v90, &v217, v227, 16);
            }

            while (v93);
          }

          v34 = v210;
          i = v211;
          v41 = v209;
        }
      }

      v206 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v221, v228, 16);
    }

    while (v206);
  }

  v225[0] = @"Trial";
  v181 = objc_msgSend_copy(v215, v177, v178, v179, v180);
  v226[0] = v181;
  v225[1] = @"MLRuntimed";
  v186 = objc_msgSend_copy(v214, v182, v183, v184, v185);
  v226[1] = v186;
  v225[2] = @"Lighthouse";
  v191 = objc_msgSend_copy(v213, v187, v188, v189, v190);
  v226[2] = v191;
  v225[3] = @"Dprivacyd";
  v196 = objc_msgSend_copy(v212, v192, v193, v194, v195);
  v226[3] = v196;
  v198 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v197, v226, v225, 4);
  eventStore = self->_eventStore;
  self->_eventStore = v198;

  v200 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)readData:(id)data endDate:(id)date
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dateCopy = date;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_timeIntervalSince1970(dataCopy, v9, v10, v11, v12);
  v14 = v13;
  objc_msgSend_timeIntervalSince1970(dateCopy, v15, v16, v17, v18);
  v20 = v19;
  v24 = objc_msgSend_objectForKey_(self->_eventStore, v21, self->_readCategory, v22, v23);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v46, v50, 16);
  if (v26)
  {
    v31 = v26;
    v32 = *v47;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v24);
        }

        v34 = *(*(&v46 + 1) + 8 * i);
        v35 = objc_msgSend_timestamp(v34, v27, v28, v29, v30);
        objc_msgSend_timeIntervalSince1970(v35, v36, v37, v38, v39);
        v41 = v40;

        if (v41 > v14 && v41 < v20)
        {
          objc_msgSend_addObject_(v8, v27, v34, v29, v30);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v46, v50, 16);
    }

    while (v31);
  }

  v43 = objc_msgSend_copy(v8, v27, v28, v29, v30);

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (BOOL)validateOutcomes:(id)outcomes withAggregatedStates:(id)states
{
  v128 = *MEMORY[0x277D85DE8];
  outcomesCopy = outcomes;
  statesCopy = states;
  NSLog(&cfstr_StartingOutcom.isa);
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v6 = statesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v120, v127, 16);
  if (v8)
  {
    v9 = 1;
    v10 = *v121;
    v95 = v6;
    v90 = *v121;
    do
    {
      v11 = 0;
      v89 = v8;
      do
      {
        if (*v121 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v120 + 1) + 8 * v11);
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        obj = v12;
        v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v116, v126, 16);
        if (v93)
        {
          v17 = *v117;
          v91 = *v117;
          v92 = v11;
          do
          {
            v18 = 0;
            do
            {
              if (*v117 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v94 = v18;
              v107 = *(*(&v116 + 1) + 8 * v18);
              v19 = objc_msgSend_objectForKey_(obj, v14, v107, v15, v16);
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v20 = v19;
              v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v112, v125, 16);
              if (v99)
              {
                v97 = v20;
                v98 = *v113;
                while (2)
                {
                  for (i = 0; i != v99; ++i)
                  {
                    if (*v113 != v98)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v26 = *(*(&v112 + 1) + 8 * i);
                    v105 = objc_msgSend_objectForKey_(v20, v22, v26, v23, v24);
                    v31 = objc_msgSend_getDictionaryRepresentation(v105, v27, v28, v29, v30);
                    v104 = objc_msgSend_objectForKey_(v31, v32, @"timestamp", v33, v34);
                    v39 = objc_msgSend_longLongValue(v104, v35, v36, v37, v38);
                    v103 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v40, v41, v42, v43, (v39 / 1000 - 86400));
                    v102 = objc_msgSend_stringFromDate_(self->_dateFormatter, v44, v103, v45, v46);
                    v50 = objc_msgSend_objectForKey_(outcomesCopy, v47, v102, v48, v49);
                    v54 = objc_msgSend_objectForKey_(v50, v51, v107, v52, v53);
                    v58 = objc_msgSend_objectForKey_(v54, v55, v26, v56, v57);

                    v110 = 0u;
                    v111 = 0u;
                    v108 = 0u;
                    v109 = 0u;
                    v59 = v58;
                    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v108, v124, 16);
                    if (v61)
                    {
                      v65 = v61;
                      v101 = i;
                      v66 = *v109;
                      while (2)
                      {
                        for (j = 0; j != v65; ++j)
                        {
                          if (*v109 != v66)
                          {
                            objc_enumerationMutation(v59);
                          }

                          v68 = *(*(&v108 + 1) + 8 * j);
                          v69 = objc_msgSend_objectForKey_(v59, v62, v68, v63, v64);
                          v73 = objc_msgSend_objectForKey_(v31, v70, v68, v71, v72);
                          NSLog(&stru_2867FAB38.isa);
                          NSLog(&cfstr_TestCaseDExpId.isa, self->_datasetName, v9, v107, v26);
                          NSLog(&cfstr_KeyExpected.isa, v68, v69);
                          NSLog(&cfstr_ActualValue.isa, v73);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_isEqualToString_(v69, v74, v73, v76, v77) || (objc_msgSend_null(MEMORY[0x277CBEB68], v74, v75, v76, v77), v78 = objc_claimAutoreleasedReturnValue(), v78, v69 == v78) && (objc_msgSend_null(MEMORY[0x277CBEB68], v79, v80, v81, v82), v83 = objc_claimAutoreleasedReturnValue(), v83, v73 != v83))
                          {

                            v84 = 0;
                            goto LABEL_29;
                          }

                          v9 = (v9 + 1);
                        }

                        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v62, &v108, v124, 16);
                        if (v65)
                        {
                          continue;
                        }

                        break;
                      }

                      v84 = 1;
LABEL_29:
                      v20 = v97;
                      i = v101;
                    }

                    else
                    {
                      v84 = 1;
                    }

                    if (!v84)
                    {

                      v86 = 0;
                      v6 = v95;
                      goto LABEL_41;
                    }
                  }

                  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v112, v125, 16);
                  if (v99)
                  {
                    continue;
                  }

                  break;
                }
              }

              v18 = v94 + 1;
              v6 = v95;
              v17 = v91;
              v11 = v92;
            }

            while (v94 + 1 != v93);
            v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v116, v126, 16);
          }

          while (v93);
        }

        ++v11;
        v10 = v90;
      }

      while (v11 != v89);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v85, &v120, v127, 16);
      v10 = v90;
      v86 = 1;
    }

    while (v8);
  }

  else
  {
    v86 = 1;
  }

LABEL_41:

  v87 = *MEMORY[0x277D85DE8];
  return v86;
}

@end