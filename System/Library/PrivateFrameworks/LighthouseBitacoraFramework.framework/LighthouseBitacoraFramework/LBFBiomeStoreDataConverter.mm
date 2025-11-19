@interface LBFBiomeStoreDataConverter
+ (id)createDprivacydEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5;
+ (id)createLighthousePluginEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5;
+ (id)createMLRuntimedEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5;
+ (id)createTrialIdentifiers:(id)a3;
+ (id)createTrialdEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5;
+ (id)protoFromBiomeLighthousePluginEvent:(id)a3;
+ (id)protoFromBiomeMlruntimedEvent:(id)a3;
+ (id)protoFromBiomeTrialdEvent:(id)a3;
+ (id)protoFromTrialIdentifier:(id)a3;
@end

@implementation LBFBiomeStoreDataConverter

+ (id)createTrialIdentifiers:(id)a3
{
  v3 = a3;
  v8 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v9 = objc_msgSend_identifierType(v3, v4, v5, v6, v7);
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v10 = objc_alloc(MEMORY[0x277CF1288]);
      v15 = objc_msgSend_trialTaskID(v8, v11, v12, v13, v14);
      v20 = objc_msgSend_deploymentID(v8, v16, v17, v18, v19);
      v23 = objc_msgSend_initWithTrialTaskID_trialDeploymentID_(v10, v21, v15, v20, v22);

      v24 = objc_alloc(MEMORY[0x277CF1280]);
      v27 = objc_msgSend_initWithExperimentIdentifiers_bmltIdentifiers_(v24, v25, 0, v23, v26);
      goto LABEL_7;
    }

LABEL_5:
    v28 = 0;
    goto LABEL_9;
  }

  v29 = objc_alloc(MEMORY[0x277CF1290]);
  v34 = objc_msgSend_experimentID(v8, v30, v31, v32, v33);
  v39 = objc_msgSend_deploymentID(v8, v35, v36, v37, v38);
  v44 = objc_msgSend_treatmentID(v8, v40, v41, v42, v43);
  v23 = objc_msgSend_initWithTrialExperimentID_trialDeploymentID_trialTreatmentID_(v29, v45, v34, v39, v44);

  v46 = objc_alloc(MEMORY[0x277CF1280]);
  v27 = objc_msgSend_initWithExperimentIdentifiers_bmltIdentifiers_(v46, v47, v23, 0, v48);
LABEL_7:
  v28 = v27;

  if (v28)
  {
    objc_msgSend_IsEmptyTrialIdentifiers_(LBFUtils, v49, v28, v50, v51);
  }

LABEL_9:

  return v28;
}

+ (id)createMLRuntimedEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x277CBEAA8];
  v87 = v10;
  if (v10)
  {
    v16 = objc_msgSend_intValue(v10, v11, v12, v13, v14);
    v21 = objc_msgSend_dateWithTimeIntervalSince1970_(v15, v17, v18, v19, v20, v16);
    v25 = objc_msgSend_dateToGMTDate_(LBFUtils, v22, v21, v23, v24);
  }

  else
  {
    v25 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v12, v13, v14);
  }

  v30 = objc_msgSend_getContextId(LBFContextId, v26, v27, v28, v29);
  v35 = objc_msgSend_UUIDString(v30, v31, v32, v33, v34);

  v36 = v9;
  v40 = objc_msgSend_createTrialIdentifiers_(a1, v37, v9, v38, v39);
  v41 = objc_alloc(MEMORY[0x277CF1270]);
  v46 = objc_msgSend_scheduled(v8, v42, v43, v44, v45);
  v50 = objc_msgSend_initWithScheduled_(v41, v47, v46, v48, v49);

  v51 = objc_alloc(MEMORY[0x277CF1278]);
  v56 = objc_msgSend_succeeded(v8, v52, v53, v54, v55);
  v61 = objc_msgSend_errorDomain(v8, v57, v58, v59, v60);
  v66 = objc_msgSend_errorCode(v8, v62, v63, v64, v65);
  v68 = objc_msgSend_initWithSucceeded_errorDomain_errorCode_(v51, v67, v56, v61, v66);

  v73 = objc_msgSend_eventType(v8, v69, v70, v71, v72);
  if (v73 > 2)
  {
    if (v73 == 3)
    {
      v82 = objc_alloc(MEMORY[0x277CF1268]);
      v81 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_activityScheduleStatus_taskFetched_taskScheduled_taskCompleted_(v82, v83, v40, v35, v25, 0, 0, v68, 0, v87);
LABEL_15:
      v84 = v81;
      if (v81)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    if (v73 != 4)
    {
      goto LABEL_16;
    }

    v74 = objc_alloc(MEMORY[0x277CF1268]);
    v86 = v68;
    v76 = v40;
    v77 = v35;
    v78 = v25;
    v79 = 0;
LABEL_12:
    v80 = 0;
    goto LABEL_13;
  }

  if (v73 == 1)
  {
    v74 = objc_alloc(MEMORY[0x277CF1268]);
    v86 = 0;
    v76 = v40;
    v77 = v35;
    v78 = v25;
    v79 = v50;
    goto LABEL_12;
  }

  if (v73 == 2)
  {
    v74 = objc_alloc(MEMORY[0x277CF1268]);
    v86 = 0;
    v76 = v40;
    v77 = v35;
    v78 = v25;
    v79 = 0;
    v80 = v68;
LABEL_13:
    v81 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_activityScheduleStatus_taskFetched_taskScheduled_taskCompleted_(v74, v75, v76, v77, v78, v79, v80, 0, v86, v87);
    goto LABEL_15;
  }

LABEL_16:
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0AB94();
  }

  v84 = 0;
LABEL_19:

  return v84;
}

+ (id)createDprivacydEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBEAA8];
  v11 = a4;
  v20 = objc_msgSend_now(v10, v12, v13, v14, v15);
  if (v9)
  {
    v21 = MEMORY[0x277CBEAA8];
    v22 = objc_msgSend_intValue(v9, v16, v17, v18, v19);
    v27 = objc_msgSend_dateWithTimeIntervalSince1970_(v21, v23, v24, v25, v26, v22);

    v20 = objc_msgSend_dateToGMTDate_(LBFUtils, v28, v27, v29, v30);
  }

  v31 = objc_msgSend_getContextId(LBFContextId, v16, v17, v18, v19);
  v36 = objc_msgSend_UUIDString(v31, v32, v33, v34, v35);

  v40 = objc_msgSend_createTrialIdentifiers_(a1, v37, v11, v38, v39);

  v45 = objc_msgSend_eventPhase(v8, v41, v42, v43, v44);
  if ((v45 - 1) >= 5)
  {
    v94 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0ABC8(v94, v8);
    }

    goto LABEL_11;
  }

  v50 = v45;
  v51 = objc_msgSend_aggregateFunction(v8, v46, v47, v48, v49);
  if (v51 >= 4)
  {
    v95 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AC54(v95, v8);
    }

LABEL_11:
    v92 = 0;
    goto LABEL_15;
  }

  v52 = v51;
  v53 = objc_alloc(MEMORY[0x277CF1250]);
  v58 = objc_msgSend_succeeded(v8, v54, v55, v56, v57);
  v63 = objc_msgSend_errorMessage(v8, v59, v60, v61, v62);
  v65 = objc_msgSend_initWithPhase_succeeded_errorMessage_(v53, v64, v50, v58, v63);

  v97 = objc_alloc(MEMORY[0x277CF1248]);
  v70 = objc_msgSend_eventUUID(v8, v66, v67, v68, v69);
  v71 = MEMORY[0x277CCABB0];
  v76 = objc_msgSend_errorCode(v8, v72, v73, v74, v75);
  v80 = objc_msgSend_numberWithInt_(v71, v77, v76, v78, v79);
  v81 = MEMORY[0x277CCABB0];
  v86 = objc_msgSend_count(v8, v82, v83, v84, v85);
  v90 = objc_msgSend_numberWithInt_(v81, v87, v86, v88, v89);
  v92 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_eventIdentifier_event_aggregateFunction_errorCode_count_(v97, v91, v40, v36, v20, v70, v65, v52, v80, v90);

  if (v92)
  {
    v93 = v92;
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0ACE0();
  }

LABEL_15:

  return v92;
}

+ (id)createLighthousePluginEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = v10;
  v16 = MEMORY[0x277CBEAA8];
  if (v10)
  {
    v17 = objc_msgSend_intValue(v10, v11, v12, v13, v14);
    v22 = objc_msgSend_dateWithTimeIntervalSince1970_(v16, v18, v19, v20, v21, v17);
    v26 = objc_msgSend_dateToGMTDate_(LBFUtils, v23, v22, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v12, v13, v14);
  }

  v31 = objc_msgSend_getContextId(LBFContextId, v27, v28, v29, v30);
  v36 = objc_msgSend_UUIDString(v31, v32, v33, v34, v35);

  v40 = objc_msgSend_createTrialIdentifiers_(a1, v37, v9, v38, v39);
  v41 = objc_alloc(MEMORY[0x277CF1260]);
  v46 = objc_msgSend_succeeded(v8, v42, v43, v44, v45);
  v51 = objc_msgSend_errorDomain(v8, v47, v48, v49, v50);
  v56 = objc_msgSend_errorCode(v8, v52, v53, v54, v55);
  v58 = objc_msgSend_initWithSucceeded_errorDomain_errorCode_(v41, v57, v46, v51, v56);

  v63 = objc_msgSend_eventType(v8, v59, v60, v61, v62);
  switch(v63)
  {
    case 3:
      v84 = objc_alloc(MEMORY[0x277CF1258]);
      v70 = objc_msgSend_usePrivateUpload(v8, v85, v86, v87, v88);
      v91 = v58;
      v71 = v84;
      v72 = v40;
      v73 = v36;
      v74 = v26;
      v75 = v70;
      v76 = 0;
      goto LABEL_10;
    case 2:
      v77 = objc_alloc(MEMORY[0x277CF1258]);
      v70 = objc_msgSend_usePrivateUpload(v8, v78, v79, v80, v81);
      v83 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_usePrivateUpload_performTaskStatus_performTrialTaskStatus_stop_(v77, v82, v40, v36, v26, v70, 0, v58, 0);
      goto LABEL_11;
    case 1:
      v64 = objc_alloc(MEMORY[0x277CF1258]);
      v70 = objc_msgSend_usePrivateUpload(v8, v65, v66, v67, v68);
      v91 = 0;
      v71 = v64;
      v72 = v40;
      v73 = v36;
      v74 = v26;
      v75 = v70;
      v76 = v58;
LABEL_10:
      v83 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_usePrivateUpload_performTaskStatus_performTrialTaskStatus_stop_(v71, v69, v72, v73, v74, v75, v76, 0, v91);
LABEL_11:
      v89 = v83;

      if (v89)
      {
        goto LABEL_15;
      }

      break;
  }

  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
  {
    sub_255F0AB94();
  }

  v89 = 0;
LABEL_15:

  return v89;
}

+ (id)createTrialdEvent:(id)a3 identifiers:(id)a4 timestamp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = v10;
  v16 = MEMORY[0x277CBEAA8];
  if (v10)
  {
    v17 = objc_msgSend_intValue(v10, v11, v12, v13, v14);
    v22 = objc_msgSend_dateWithTimeIntervalSince1970_(v16, v18, v19, v20, v21, v17);
    v26 = objc_msgSend_dateToGMTDate_(LBFUtils, v23, v22, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_now(MEMORY[0x277CBEAA8], v11, v12, v13, v14);
  }

  v31 = objc_msgSend_getContextId(LBFContextId, v27, v28, v29, v30);
  v36 = objc_msgSend_UUIDString(v31, v32, v33, v34, v35);

  v40 = objc_msgSend_createTrialIdentifiers_(a1, v37, v9, v38, v39);
  v45 = objc_msgSend_eventType(v8, v41, v42, v43, v44);
  v46 = v45 - 1;
  if ((v45 - 1) > 2 || (v47 = objc_alloc(MEMORY[0x277CF1298]), objc_msgSend_succeeded(v8, v48, v49, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend_initWithTrialIdentifiers_contextID_timestamp_eventType_eventSucceeded_(v47, v53, v40, v36, v26, (v46 + 1), v52), v52, !v54))
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v54 = 0;
  }

  return v54;
}

+ (id)protoFromTrialIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialIdentifiers);
  v9 = objc_msgSend_experimentIdentifiers(v3, v5, v6, v7, v8);

  if (v9)
  {
    v14 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers);
    v19 = objc_msgSend_experimentIdentifiers(v3, v15, v16, v17, v18);
    v24 = objc_msgSend_trialExperimentID(v19, v20, v21, v22, v23);
    objc_msgSend_setTrialExperimentID_(v14, v25, v24, v26, v27);

    v32 = objc_msgSend_experimentIdentifiers(v3, v28, v29, v30, v31);
    v37 = objc_msgSend_trialDeploymentID(v32, v33, v34, v35, v36);
    objc_msgSend_setTrialDeploymentID_(v14, v38, v37, v39, v40);

    v45 = objc_msgSend_experimentIdentifiers(v3, v41, v42, v43, v44);
    v50 = objc_msgSend_trialTreatmentID(v45, v46, v47, v48, v49);
    objc_msgSend_setTrialTreatmentID_(v14, v51, v50, v52, v53);

    objc_msgSend_setExperimentIdentifiers_(v4, v54, v14, v55, v56);
  }

  v57 = objc_msgSend_bmltIdentifiers(v3, v10, v11, v12, v13);

  if (v57)
  {
    v58 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOBMLTIdentifiers);
    v63 = objc_msgSend_bmltIdentifiers(v3, v59, v60, v61, v62);
    v68 = objc_msgSend_trialTaskID(v63, v64, v65, v66, v67);
    objc_msgSend_setTrialTaskID_(v58, v69, v68, v70, v71);

    v76 = objc_msgSend_bmltIdentifiers(v3, v72, v73, v74, v75);
    v81 = objc_msgSend_trialDeploymentID(v76, v77, v78, v79, v80);
    objc_msgSend_setTrialDeploymentID_(v58, v82, v81, v83, v84);

    objc_msgSend_setBmltIdentifiers_(v4, v85, v58, v86, v87);
  }

  return v4;
}

+ (id)protoFromBiomeLighthousePluginEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent);
  v9 = objc_msgSend_trialIdentifiers(v3, v5, v6, v7, v8);
  v13 = objc_msgSend_protoFromTrialIdentifier_(LBFBiomeStoreDataConverter, v10, v9, v11, v12);
  objc_msgSend_setTrialIdentifiers_(v4, v14, v13, v15, v16);

  v21 = objc_msgSend_timestamp(v3, v17, v18, v19, v20);
  objc_msgSend_timeIntervalSince1970(v21, v22, v23, v24, v25);
  objc_msgSend_setTimestamp_(v4, v26, v27, v28, v29);

  v34 = objc_msgSend_contextID(v3, v30, v31, v32, v33);
  objc_msgSend_setContextID_(v4, v35, v34, v36, v37);

  v42 = objc_msgSend_performTaskStatus(v3, v38, v39, v40, v41);

  if (v42)
  {
    v47 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
    objc_msgSend_setPerformTaskStatus_(v4, v48, v47, v49, v50);

    v55 = objc_msgSend_performTaskStatus(v3, v51, v52, v53, v54);
    v60 = objc_msgSend_succeeded(v55, v56, v57, v58, v59);
    v65 = objc_msgSend_performTaskStatus(v4, v61, v62, v63, v64);
    objc_msgSend_setSucceeded_(v65, v66, v60, v67, v68);

    v73 = objc_msgSend_performTaskStatus(v3, v69, v70, v71, v72);
    v78 = objc_msgSend_errorDomain(v73, v74, v75, v76, v77);
    v83 = objc_msgSend_performTaskStatus(v4, v79, v80, v81, v82);
    objc_msgSend_setErrorDomain_(v83, v84, v78, v85, v86);

    v91 = objc_msgSend_performTaskStatus(v3, v87, v88, v89, v90);
    v96 = objc_msgSend_errorCode(v91, v92, v93, v94, v95);
    v101 = objc_msgSend_performTaskStatus(v4, v97, v98, v99, v100);
    objc_msgSend_setErrorCode_(v101, v102, v96, v103, v104);
  }

  v105 = objc_msgSend_performTrialTaskStatus(v3, v43, v44, v45, v46);

  if (v105)
  {
    v110 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
    objc_msgSend_setPerformTrialTaskStatus_(v4, v111, v110, v112, v113);

    v118 = objc_msgSend_performTrialTaskStatus(v3, v114, v115, v116, v117);
    v123 = objc_msgSend_succeeded(v118, v119, v120, v121, v122);
    v128 = objc_msgSend_performTrialTaskStatus(v4, v124, v125, v126, v127);
    objc_msgSend_setSucceeded_(v128, v129, v123, v130, v131);

    v136 = objc_msgSend_performTrialTaskStatus(v3, v132, v133, v134, v135);
    v141 = objc_msgSend_errorDomain(v136, v137, v138, v139, v140);
    v146 = objc_msgSend_performTrialTaskStatus(v4, v142, v143, v144, v145);
    objc_msgSend_setErrorDomain_(v146, v147, v141, v148, v149);

    v154 = objc_msgSend_performTrialTaskStatus(v3, v150, v151, v152, v153);
    v159 = objc_msgSend_errorCode(v154, v155, v156, v157, v158);
    v164 = objc_msgSend_performTrialTaskStatus(v4, v160, v161, v162, v163);
    objc_msgSend_setErrorCode_(v164, v165, v159, v166, v167);
  }

  v168 = objc_msgSend_stop(v3, v106, v107, v108, v109);

  if (v168)
  {
    v169 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOEventStatus);
    objc_msgSend_setStop_(v4, v170, v169, v171, v172);

    v177 = objc_msgSend_stop(v3, v173, v174, v175, v176);
    v182 = objc_msgSend_succeeded(v177, v178, v179, v180, v181);
    v187 = objc_msgSend_stop(v4, v183, v184, v185, v186);
    objc_msgSend_setSucceeded_(v187, v188, v182, v189, v190);

    v195 = objc_msgSend_stop(v3, v191, v192, v193, v194);
    v200 = objc_msgSend_errorDomain(v195, v196, v197, v198, v199);
    v205 = objc_msgSend_stop(v4, v201, v202, v203, v204);
    objc_msgSend_setErrorDomain_(v205, v206, v200, v207, v208);

    v213 = objc_msgSend_stop(v3, v209, v210, v211, v212);
    v218 = objc_msgSend_errorCode(v213, v214, v215, v216, v217);
    v223 = objc_msgSend_stop(v4, v219, v220, v221, v222);
    objc_msgSend_setErrorCode_(v223, v224, v218, v225, v226);
  }

  return v4;
}

+ (id)protoFromBiomeMlruntimedEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent);
  v9 = objc_msgSend_trialIdentifiers(v3, v5, v6, v7, v8);
  v13 = objc_msgSend_protoFromTrialIdentifier_(LBFBiomeStoreDataConverter, v10, v9, v11, v12);
  objc_msgSend_setTrialIdentifiers_(v4, v14, v13, v15, v16);

  v21 = objc_msgSend_timestamp(v3, v17, v18, v19, v20);
  objc_msgSend_timeIntervalSince1970(v21, v22, v23, v24, v25);
  objc_msgSend_setTimestamp_(v4, v26, v27, v28, v29);

  v34 = objc_msgSend_contextID(v3, v30, v31, v32, v33);
  objc_msgSend_setContextID_(v4, v35, v34, v36, v37);

  v42 = objc_msgSend_activityScheduleStatus(v3, v38, v39, v40, v41);

  if (v42)
  {
    v47 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOScheduleStatus);
    objc_msgSend_setActivityScheduleStatus_(v4, v48, v47, v49, v50);

    v55 = objc_msgSend_activityScheduleStatus(v3, v51, v52, v53, v54);
    v60 = objc_msgSend_scheduled(v55, v56, v57, v58, v59);
    v65 = objc_msgSend_activityScheduleStatus(v4, v61, v62, v63, v64);
    objc_msgSend_setScheduled_(v65, v66, v60, v67, v68);
  }

  v69 = objc_msgSend_taskFetched(v3, v43, v44, v45, v46);

  if (v69)
  {
    v74 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
    objc_msgSend_setTaskFetched_(v4, v75, v74, v76, v77);

    v82 = objc_msgSend_taskFetched(v3, v78, v79, v80, v81);
    v87 = objc_msgSend_succeeded(v82, v83, v84, v85, v86);
    v92 = objc_msgSend_taskFetched(v4, v88, v89, v90, v91);
    objc_msgSend_setSucceeded_(v92, v93, v87, v94, v95);

    v100 = objc_msgSend_taskFetched(v3, v96, v97, v98, v99);
    v105 = objc_msgSend_errorDomain(v100, v101, v102, v103, v104);
    v110 = objc_msgSend_taskFetched(v4, v106, v107, v108, v109);
    objc_msgSend_setErrorDomain_(v110, v111, v105, v112, v113);

    v118 = objc_msgSend_taskFetched(v3, v114, v115, v116, v117);
    v123 = objc_msgSend_errorCode(v118, v119, v120, v121, v122);
    v128 = objc_msgSend_taskFetched(v4, v124, v125, v126, v127);
    objc_msgSend_setErrorCode_(v128, v129, v123, v130, v131);
  }

  v132 = objc_msgSend_taskScheduled(v3, v70, v71, v72, v73);

  if (v132)
  {
    v137 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
    objc_msgSend_setTaskScheduled_(v4, v138, v137, v139, v140);

    v145 = objc_msgSend_taskScheduled(v3, v141, v142, v143, v144);
    v150 = objc_msgSend_succeeded(v145, v146, v147, v148, v149);
    v155 = objc_msgSend_taskScheduled(v4, v151, v152, v153, v154);
    objc_msgSend_setSucceeded_(v155, v156, v150, v157, v158);

    v163 = objc_msgSend_taskScheduled(v3, v159, v160, v161, v162);
    v168 = objc_msgSend_errorDomain(v163, v164, v165, v166, v167);
    v173 = objc_msgSend_taskScheduled(v4, v169, v170, v171, v172);
    objc_msgSend_setErrorDomain_(v173, v174, v168, v175, v176);

    v181 = objc_msgSend_taskScheduled(v3, v177, v178, v179, v180);
    v186 = objc_msgSend_errorCode(v181, v182, v183, v184, v185);
    v191 = objc_msgSend_taskScheduled(v4, v187, v188, v189, v190);
    objc_msgSend_setErrorCode_(v191, v192, v186, v193, v194);
  }

  v195 = objc_msgSend_taskCompleted(v3, v133, v134, v135, v136);

  if (v195)
  {
    v196 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOTaskEvent);
    objc_msgSend_setTaskCompleted_(v4, v197, v196, v198, v199);

    v204 = objc_msgSend_taskCompleted(v3, v200, v201, v202, v203);
    v209 = objc_msgSend_succeeded(v204, v205, v206, v207, v208);
    v214 = objc_msgSend_taskCompleted(v4, v210, v211, v212, v213);
    objc_msgSend_setSucceeded_(v214, v215, v209, v216, v217);

    v222 = objc_msgSend_taskCompleted(v3, v218, v219, v220, v221);
    v227 = objc_msgSend_errorDomain(v222, v223, v224, v225, v226);
    v232 = objc_msgSend_taskCompleted(v4, v228, v229, v230, v231);
    objc_msgSend_setErrorDomain_(v232, v233, v227, v234, v235);

    v240 = objc_msgSend_taskCompleted(v3, v236, v237, v238, v239);
    v245 = objc_msgSend_errorCode(v240, v241, v242, v243, v244);
    v250 = objc_msgSend_taskCompleted(v4, v246, v247, v248, v249);
    objc_msgSend_setErrorCode_(v250, v251, v245, v252, v253);
  }

  return v4;
}

+ (id)protoFromBiomeTrialdEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent);
  v9 = objc_msgSend_trialIdentifiers(v3, v5, v6, v7, v8);
  v13 = objc_msgSend_protoFromTrialIdentifier_(LBFBiomeStoreDataConverter, v10, v9, v11, v12);
  objc_msgSend_setTrialIdentifiers_(v4, v14, v13, v15, v16);

  v21 = objc_msgSend_timestamp(v3, v17, v18, v19, v20);
  objc_msgSend_timeIntervalSince1970(v21, v22, v23, v24, v25);
  objc_msgSend_setTimestamp_(v4, v26, v27, v28, v29);

  v34 = objc_msgSend_contextID(v3, v30, v31, v32, v33);
  objc_msgSend_setContextID_(v4, v35, v34, v36, v37);

  v42 = objc_msgSend_eventType(v3, v38, v39, v40, v41);
  if (v42 - 1 >= 3)
  {
    objc_msgSend_setEventType_(v4, v43, 0, v44, v45);
  }

  else
  {
    objc_msgSend_setEventType_(v4, v43, v42, v44, v45);
  }

  v50 = objc_msgSend_eventSucceeded(v3, v46, v47, v48, v49);
  objc_msgSend_setEventSucceeded_(v4, v51, v50, v52, v53);

  return v4;
}

@end