@interface LBFCoreAnalyticsUtils
+ (void)upload:(id)a3;
@end

@implementation LBFCoreAnalyticsUtils

+ (void)upload:(id)a3
{
  v243[20] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v242[0] = @"lighthouseplugin_count_PerformTask_Failed";
  if (objc_msgSend_hasCountPerformTaskFailed(v3, v4, v5, v6, v7))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = objc_msgSend_countPerformTaskFailed(v3, v8, v9, v10, v11);
    objc_msgSend_numberWithUnsignedInt_(v12, v14, v13, v15, v16);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9, v10, v11);
  }
  v240 = ;
  v243[0] = v240;
  v242[1] = @"lighthouseplugin_count_PerformTask_Succeeded";
  if (objc_msgSend_hasCountPerformTaskSucceeded(v3, v17, v18, v19, v20))
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = objc_msgSend_countPerformTaskSucceeded(v3, v21, v22, v23, v24);
    objc_msgSend_numberWithUnsignedInt_(v25, v27, v26, v28, v29);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v21, v22, v23, v24);
  }
  v239 = ;
  v243[1] = v239;
  v242[2] = @"lighthouseplugin_count_Stop_Failed";
  if (objc_msgSend_hasCountStopFailed(v3, v30, v31, v32, v33))
  {
    v38 = MEMORY[0x277CCABB0];
    v39 = objc_msgSend_countStopFailed(v3, v34, v35, v36, v37);
    objc_msgSend_numberWithUnsignedInt_(v38, v40, v39, v41, v42);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35, v36, v37);
  }
  v238 = ;
  v243[2] = v238;
  v242[3] = @"lighthouseplugin_count_Stop_Succeeded";
  if (objc_msgSend_hasCountStopSucceeded(v3, v43, v44, v45, v46))
  {
    v51 = MEMORY[0x277CCABB0];
    v52 = objc_msgSend_countStopSucceeded(v3, v47, v48, v49, v50);
    objc_msgSend_numberWithUnsignedInt_(v51, v53, v52, v54, v55);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v47, v48, v49, v50);
  }
  v237 = ;
  v243[3] = v237;
  v242[4] = @"mlruntimedevent_count_TaskCompleted_Failed";
  if (objc_msgSend_hasCountTaskCompletedFailed(v3, v56, v57, v58, v59))
  {
    v64 = MEMORY[0x277CCABB0];
    v65 = objc_msgSend_countTaskCompletedFailed(v3, v60, v61, v62, v63);
    objc_msgSend_numberWithUnsignedInt_(v64, v66, v65, v67, v68);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v60, v61, v62, v63);
  }
  v236 = ;
  v243[4] = v236;
  v242[5] = @"mlruntimedevent_count_TaskCompleted_Succeeded";
  if (objc_msgSend_hasCountTaskCompletedSucceeded(v3, v69, v70, v71, v72))
  {
    v77 = MEMORY[0x277CCABB0];
    v78 = objc_msgSend_countTaskCompletedSucceeded(v3, v73, v74, v75, v76);
    objc_msgSend_numberWithUnsignedInt_(v77, v79, v78, v80, v81);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v73, v74, v75, v76);
  }
  v235 = ;
  v243[5] = v235;
  v242[6] = @"mlruntimedevent_count_TaskFetched_Failed";
  if (objc_msgSend_hasCountTaskFetchedFailed(v3, v82, v83, v84, v85))
  {
    v90 = MEMORY[0x277CCABB0];
    v91 = objc_msgSend_countTaskFetchedFailed(v3, v86, v87, v88, v89);
    objc_msgSend_numberWithUnsignedInt_(v90, v92, v91, v93, v94);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v86, v87, v88, v89);
  }
  v234 = ;
  v243[6] = v234;
  v242[7] = @"mlruntimedevent_count_TaskFetched_Succeeded";
  if (objc_msgSend_hasCountTaskFetchedSucceeded(v3, v95, v96, v97, v98))
  {
    v103 = MEMORY[0x277CCABB0];
    v104 = objc_msgSend_countTaskFetchedSucceeded(v3, v99, v100, v101, v102);
    objc_msgSend_numberWithUnsignedInt_(v103, v105, v104, v106, v107);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v99, v100, v101, v102);
  }
  v233 = ;
  v243[7] = v233;
  v242[8] = @"mlruntimedevent_count_TaskScheduled_Failed";
  if (objc_msgSend_hasCountTaskScheduledFailed(v3, v108, v109, v110, v111))
  {
    v116 = MEMORY[0x277CCABB0];
    v117 = objc_msgSend_countTaskScheduledFailed(v3, v112, v113, v114, v115);
    objc_msgSend_numberWithUnsignedInt_(v116, v118, v117, v119, v120);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v112, v113, v114, v115);
  }
  v232 = ;
  v243[8] = v232;
  v242[9] = @"mlruntimedevent_count_TaskScheduled_Succeeded";
  if (objc_msgSend_hasCountTaskScheduledSucceeded(v3, v121, v122, v123, v124))
  {
    v129 = MEMORY[0x277CCABB0];
    v130 = objc_msgSend_countTaskScheduledSucceeded(v3, v125, v126, v127, v128);
    objc_msgSend_numberWithUnsignedInt_(v129, v131, v130, v132, v133);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v125, v126, v127, v128);
  }
  v231 = ;
  v243[9] = v231;
  v242[10] = @"trialdevent_is_activated";
  if (objc_msgSend_hasIsActivated(v3, v134, v135, v136, v137))
  {
    v142 = MEMORY[0x277CCABB0];
    isActivated = objc_msgSend_isActivated(v3, v138, v139, v140, v141);
    objc_msgSend_numberWithBool_(v142, v144, isActivated, v145, v146);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v138, v139, v140, v141);
  }
  v230 = ;
  v243[10] = v230;
  v242[11] = @"trialdevent_is_allocated";
  if (objc_msgSend_hasIsAllocated(v3, v147, v148, v149, v150))
  {
    v155 = MEMORY[0x277CCABB0];
    isAllocated = objc_msgSend_isAllocated(v3, v151, v152, v153, v154);
    objc_msgSend_numberWithBool_(v155, v157, isAllocated, v158, v159);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v151, v152, v153, v154);
  }
  v229 = ;
  v243[11] = v229;
  v242[12] = @"trial_BMLTTaskId";
  if (objc_msgSend_hasTrialTaskID(v3, v160, v161, v162, v163))
  {
    objc_msgSend_trialTaskID(v3, v164, v165, v166, v167);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v164, v165, v166, v167);
  }
  v168 = ;
  v243[12] = v168;
  v242[13] = @"trial_deploymentId";
  if (objc_msgSend_hasTrialDeploymentID(v3, v169, v170, v171, v172))
  {
    objc_msgSend_trialDeploymentID(v3, v173, v174, v175, v176);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v173, v174, v175, v176);
  }
  v177 = ;
  v243[13] = v177;
  v242[14] = @"trial_experimentId";
  if (objc_msgSend_hasTrialExperimentID(v3, v178, v179, v180, v181))
  {
    objc_msgSend_trialExperimentID(v3, v182, v183, v184, v185);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v182, v183, v184, v185);
  }
  v186 = ;
  v243[14] = v186;
  v242[15] = @"trial_treatmentId";
  if (objc_msgSend_hasTrialTreatmentID(v3, v187, v188, v189, v190))
  {
    objc_msgSend_trialTreatmentID(v3, v191, v192, v193, v194);
  }

  else
  {
    objc_msgSend_null(MEMORY[0x277CBEB68], v191, v192, v193, v194);
  }
  v195 = ;
  v243[15] = v195;
  v242[16] = @"timestamp";
  v196 = MEMORY[0x277CCABB0];
  v201 = objc_msgSend_timestamp(v3, v197, v198, v199, v200);
  v205 = objc_msgSend_numberWithUnsignedLongLong_(v196, v202, v201, v203, v204);
  v243[16] = v205;
  v242[17] = @"timestamp_str";
  v206 = MEMORY[0x277CCACA8];
  v211 = objc_msgSend_timestamp(v3, v207, v208, v209, v210);
  v215 = objc_msgSend_stringWithFormat_(v206, v212, @"%llu", v213, v214, v211);
  v243[17] = v215;
  v242[18] = @"telemetryID";
  v220 = objc_msgSend_telemetryID(v3, v216, v217, v218, v219);
  v243[18] = v220;
  v242[19] = @"contextID";
  v225 = objc_msgSend_contextID(v3, v221, v222, v223, v224);
  v243[19] = v225;
  v227 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v226, v243, v242, 20);

  v241 = v227;
  AnalyticsSendEventLazy();

  v228 = *MEMORY[0x277D85DE8];
}

@end