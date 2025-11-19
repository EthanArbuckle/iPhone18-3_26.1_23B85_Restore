@interface LBFEventManager
+ (id)sharedInstance;
- (BOOL)addDprivacydEvent:(id)a3 identifiers:(id)a4 error:(id *)a5;
- (BOOL)addLighthousePluginEvent:(id)a3;
- (BOOL)addLighthousePluginEvent:(id)a3 identifiers:(id)a4 error:(id *)a5;
- (BOOL)addMLRuntimedEvent:(id)a3 identifiers:(id)a4 error:(id *)a5;
- (BOOL)addTrialdEvent:(id)a3 identifiers:(id)a4 error:(id *)a5;
- (BOOL)isEqualIdentifiers:(id)a3 identifiers:(id)a4;
- (LBFEventManager)init;
- (id)convertToLBFTrialIdentifiers:(id)a3;
- (id)ensureBiomeManagerDprivacyd;
- (id)ensureBiomeManagerLighthouse;
- (id)ensureBiomeManagerMLRuntimed;
- (id)ensureBiomeManagerTrial;
- (id)getLastDprivacyEvent:(id)a3;
- (id)getLastLighthousePluginEvent:(id)a3;
- (id)getLastMLRuntimeEvent:(id)a3;
- (id)getLastTrialEvent:(id)a3;
- (void)enumerateLastDprivacyEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6;
- (void)enumerateLastLighthousePluginEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6;
- (void)enumerateLastMLRuntimeEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6;
- (void)enumerateLastTrialEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6;
@end

@implementation LBFEventManager

+ (id)sharedInstance
{
  if (qword_281536D10 != -1)
  {
    sub_255F0BF50();
  }

  v3 = qword_281536D08;

  return v3;
}

- (LBFEventManager)init
{
  v8.receiver = self;
  v8.super_class = LBFEventManager;
  v2 = [(LBFEventManager *)&v8 init];
  if (v2)
  {
    LBFLoggingUtilsInit();
    biomeManagerLighthouse = v2->_biomeManagerLighthouse;
    v2->_biomeManagerLighthouse = 0;

    biomeManagerMLRuntimed = v2->_biomeManagerMLRuntimed;
    v2->_biomeManagerMLRuntimed = 0;

    biomeManagerTrial = v2->_biomeManagerTrial;
    v2->_biomeManagerTrial = 0;

    biomeManagerDprivacyd = v2->_biomeManagerDprivacyd;
    v2->_biomeManagerDprivacyd = 0;
  }

  return v2;
}

- (id)ensureBiomeManagerLighthouse
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF22FC;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerLighthouse != -1)
  {
    dispatch_once(&onceTokenBiomeManagerLighthouse, block);
  }

  return self->_biomeManagerLighthouse;
}

- (id)ensureBiomeManagerTrial
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF246C;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerTrial != -1)
  {
    dispatch_once(&onceTokenBiomeManagerTrial, block);
  }

  return self->_biomeManagerTrial;
}

- (id)ensureBiomeManagerMLRuntimed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF25DC;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerMLRuntimed != -1)
  {
    dispatch_once(&onceTokenBiomeManagerMLRuntimed, block);
  }

  return self->_biomeManagerMLRuntimed;
}

- (id)ensureBiomeManagerDprivacyd
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_255EF274C;
  block[3] = &unk_279813BA8;
  block[4] = self;
  if (onceTokenBiomeManagerDprivacyd != -1)
  {
    dispatch_once(&onceTokenBiomeManagerDprivacyd, block);
  }

  return self->_biomeManagerDprivacyd;
}

- (BOOL)addTrialdEvent:(id)a3 identifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v13 = a4;
  if (!v13)
  {
    if (objc_msgSend_eventType(v8, v9, v10, v11, v12) == 1)
    {
      if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
      {
        sub_255F0C09C();
      }

      v32 = objc_alloc(MEMORY[0x277CBEAC0]);
      v36 = objc_msgSend_initWithObjectsAndKeys_(v32, v33, @"Allocation event cannot have identifiers.", v34, v35, @"NSLocalizedDescriptionKey", 0);
    }

    else if (objc_msgSend_eventType(v8, v28, v29, v30, v31) == 2)
    {
      if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
      {
        sub_255F0C068();
      }

      v48 = objc_alloc(MEMORY[0x277CBEAC0]);
      v36 = objc_msgSend_initWithObjectsAndKeys_(v48, v49, @"Activation event must have identifiers.", v50, v51, @"NSLocalizedDescriptionKey", 0);
    }

    else
    {
      if (objc_msgSend_eventType(v8, v44, v45, v46, v47) != 3)
      {
        goto LABEL_2;
      }

      if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
      {
        sub_255F0C034();
      }

      v52 = objc_alloc(MEMORY[0x277CBEAC0]);
      v36 = objc_msgSend_initWithObjectsAndKeys_(v52, v53, @"Deactivation event must have identifiers.", v54, v55, @"NSLocalizedDescriptionKey", 0);
    }

    v16 = v36;
    if (a5)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, @"com.apple.LighthouseBitacoraFramework", 1, v36);
      *a5 = v27 = 0;
      goto LABEL_29;
    }

LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

LABEL_2:
  v14 = LBFLogContextEventManager;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_255ED5000, v14, OS_LOG_TYPE_INFO, "Converting dict to event.", buf, 2u);
  }

  v16 = objc_msgSend_createTrialdEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v15, v8, v13, 0);
  v17 = LBFLogContextEventManager;
  if (!v16)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v38 = objc_alloc(MEMORY[0x277CBEAC0]);
    v43 = objc_msgSend_initWithObjectsAndKeys_(v38, v39, @"Biome event could not be generated.", v40, v41, @"NSLocalizedDescriptionKey", 0);
    if (a5)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v42, @"com.apple.LighthouseBitacoraFramework", 1, v43);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *v58 = 0;
    _os_log_impl(&dword_255ED5000, v17, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", v58, 2u);
  }

  v22 = objc_msgSend_ensureBiomeManagerTrial(self, v18, v19, v20, v21);
  objc_msgSend_writeData_(v22, v23, v16, v24, v25);

  v26 = LBFLogContextEventManager;
  v27 = 1;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *v57 = 0;
    _os_log_impl(&dword_255ED5000, v26, OS_LOG_TYPE_INFO, "Finished writing proto.", v57, 2u);
  }

LABEL_29:

  return v27;
}

- (BOOL)addLighthousePluginEvent:(id)a3
{
  v3 = LBFLogContextEventManager;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_255ED5000, v3, OS_LOG_TYPE_INFO, "Call to deprecated addLighthousePluginEvent method.", v5, 2u);
  }

  return 1;
}

- (BOOL)addLighthousePluginEvent:(id)a3 identifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = LBFLogContextEventManager;
  if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_255ED5000, v10, OS_LOG_TYPE_INFO, "Converting dict to proto.", buf, 2u);
  }

  v12 = objc_msgSend_createLighthousePluginEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, v11, v8, v9, 0);
  v13 = LBFLogContextEventManager;
  if (v12)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *v28 = 0;
      _os_log_impl(&dword_255ED5000, v13, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", v28, 2u);
    }

    v18 = objc_msgSend_ensureBiomeManagerLighthouse(self, v14, v15, v16, v17);
    objc_msgSend_writeData_(v18, v19, v12, v20, v21);
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v22 = objc_alloc(MEMORY[0x277CBEAC0]);
    v18 = objc_msgSend_initWithObjectsAndKeys_(v22, v23, @"Biome event could not be generated.", v24, v25, @"NSLocalizedDescriptionKey", 0);
    if (a5)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v26, @"com.apple.LighthouseBitacoraFramework", 1, v18);
    }
  }

  return v12 != 0;
}

- (BOOL)addMLRuntimedEvent:(id)a3 identifiers:(id)a4 error:(id *)a5
{
  v7 = objc_msgSend_createMLRuntimedEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, a2, a3, a4, 0);
  v8 = LBFLogContextEventManager;
  if (v7)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_255ED5000, v8, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", buf, 2u);
    }

    v13 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v9, v10, v11, v12);
    objc_msgSend_writeData_(v13, v14, v7, v15, v16);

    v17 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_255ED5000, v17, OS_LOG_TYPE_INFO, "Finished writing proto.", v25, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v18 = objc_alloc(MEMORY[0x277CBEAC0]);
    v23 = objc_msgSend_initWithObjectsAndKeys_(v18, v19, @"Biome event could not be generated.", v20, v21, @"NSLocalizedDescriptionKey", 0);
    if (a5)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v22, @"com.apple.LighthouseBitacoraFramework", 1, v23);
    }
  }

  return v7 != 0;
}

- (BOOL)addDprivacydEvent:(id)a3 identifiers:(id)a4 error:(id *)a5
{
  v7 = objc_msgSend_createDprivacydEvent_identifiers_timestamp_(LBFBiomeStoreDataConverter, a2, a3, a4, 0);
  v8 = LBFLogContextEventManager;
  if (v7)
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_255ED5000, v8, OS_LOG_TYPE_INFO, "Biome event generation finished, writing.", buf, 2u);
    }

    v13 = objc_msgSend_ensureBiomeManagerDprivacyd(self, v9, v10, v11, v12);
    objc_msgSend_writeData_(v13, v14, v7, v15, v16);

    v17 = LBFLogContextEventManager;
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_255ED5000, v17, OS_LOG_TYPE_INFO, "Finished writing proto.", v25, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_ERROR))
    {
      sub_255F0AB94();
    }

    v18 = objc_alloc(MEMORY[0x277CBEAC0]);
    v23 = objc_msgSend_initWithObjectsAndKeys_(v18, v19, @"Biome event could not be generated.", v20, v21, @"NSLocalizedDescriptionKey", 0);
    if (a5)
    {
      *a5 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v22, @"com.apple.LighthouseBitacoraFramework", 1, v23);
    }
  }

  return v7 != 0;
}

- (BOOL)isEqualIdentifiers:(id)a3 identifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = v6;
  if (v5 | v6)
  {
    if ((v5 == 0) == (v6 == 0))
    {
      v13 = objc_msgSend_bmltIdentifiers(v5, v7, v8, v9, v10);
      if (v13 && (v18 = v13, v19 = objc_msgSend_identifierType(v11, v14, v15, v16, v17), v18, v19 == 2))
      {
        v20 = objc_msgSend_bmltIdentifiers(v5, v14, v15, v16, v17);
        v25 = objc_msgSend_trialDeploymentID(v20, v21, v22, v23, v24);
        v30 = objc_msgSend_deploymentID(v11, v26, v27, v28, v29);
        isEqualToString = objc_msgSend_isEqualToString_(v25, v31, v30, v32, v33);

        if (isEqualToString)
        {
          v39 = objc_msgSend_bmltIdentifiers(v5, v35, v36, v37, v38);
          v44 = objc_msgSend_trialTaskID(v39, v40, v41, v42, v43);
          v49 = objc_msgSend_trialTaskID(v11, v45, v46, v47, v48);
LABEL_13:
          v110 = v49;
          v12 = objc_msgSend_isEqualToString_(v44, v50, v49, v51, v52);

          goto LABEL_15;
        }
      }

      else
      {
        v53 = objc_msgSend_experimentIdentifiers(v5, v14, v15, v16, v17);
        if (v53)
        {
          v58 = v53;
          v59 = objc_msgSend_identifierType(v11, v54, v55, v56, v57);

          if (v59 == 1)
          {
            v64 = objc_msgSend_experimentIdentifiers(v5, v60, v61, v62, v63);
            v69 = objc_msgSend_trialDeploymentID(v64, v65, v66, v67, v68);
            v74 = objc_msgSend_deploymentID(v11, v70, v71, v72, v73);
            v78 = objc_msgSend_isEqualToString_(v69, v75, v74, v76, v77);

            if (v78)
            {
              v83 = objc_msgSend_experimentIdentifiers(v5, v79, v80, v81, v82);
              v88 = objc_msgSend_trialExperimentID(v83, v84, v85, v86, v87);
              v93 = objc_msgSend_experimentID(v11, v89, v90, v91, v92);
              v97 = objc_msgSend_isEqualToString_(v88, v94, v93, v95, v96);

              if (v97)
              {
                v39 = objc_msgSend_experimentIdentifiers(v5, v98, v99, v100, v101);
                v44 = objc_msgSend_trialTreatmentID(v39, v102, v103, v104, v105);
                v49 = objc_msgSend_treatmentID(v11, v106, v107, v108, v109);
                goto LABEL_13;
              }
            }
          }
        }
      }
    }

    v12 = 0;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (id)convertToLBFTrialIdentifiers:(id)a3
{
  v3 = a3;
  v8 = objc_msgSend_bmltIdentifiers(v3, v4, v5, v6, v7);

  if (v8)
  {
    v13 = [LBFTrialIdentifiers alloc];
    v18 = objc_msgSend_bmltIdentifiers(v3, v14, v15, v16, v17);
    v23 = objc_msgSend_trialTaskID(v18, v19, v20, v21, v22);
    v28 = objc_msgSend_bmltIdentifiers(v3, v24, v25, v26, v27);
    v33 = objc_msgSend_trialDeploymentID(v28, v29, v30, v31, v32);
    v38 = objc_msgSend_intValue(v33, v34, v35, v36, v37);
    v41 = objc_msgSend_initWithBMLTTaskID_deploymentID_(v13, v39, v23, v38, v40);
LABEL_5:

    goto LABEL_6;
  }

  v42 = objc_msgSend_experimentIdentifiers(v3, v9, v10, v11, v12);

  if (v42)
  {
    v43 = [LBFTrialIdentifiers alloc];
    v18 = objc_msgSend_experimentIdentifiers(v3, v44, v45, v46, v47);
    v23 = objc_msgSend_trialExperimentID(v18, v48, v49, v50, v51);
    v28 = objc_msgSend_experimentIdentifiers(v3, v52, v53, v54, v55);
    v33 = objc_msgSend_trialDeploymentID(v28, v56, v57, v58, v59);
    v64 = objc_msgSend_intValue(v33, v60, v61, v62, v63);
    v69 = objc_msgSend_experimentIdentifiers(v3, v65, v66, v67, v68);
    v74 = objc_msgSend_trialTreatmentID(v69, v70, v71, v72, v73);
    v41 = objc_msgSend_initWithExperimentID_deploymentID_treatmentID_(v43, v75, v23, v64, v74);

    goto LABEL_5;
  }

  v41 = 0;
LABEL_6:

  return v41;
}

- (void)enumerateLastTrialEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17 = a6;
  if (v10)
  {
    v18 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v13, v14, v15, v16);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF3544;
    v20[3] = &unk_279813CA0;
    v21 = v10;
    v22 = self;
    v23 = v17;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v18, v19, v11, v12, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastTrialEvent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_255EF3810;
  v13 = sub_255EF3820;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_255EF3828;
  v8[3] = &unk_279813CC8;
  v8[4] = &v9;
  objc_msgSend_enumerateLastTrialEvents_startDate_endDate_shouldContinue_(self, v5, v4, 0, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)enumerateLastLighthousePluginEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17 = a6;
  if (v10)
  {
    v18 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v13, v14, v15, v16);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF3988;
    v20[3] = &unk_279813CA0;
    v21 = v10;
    v22 = self;
    v23 = v17;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v18, v19, v11, v12, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastLighthousePluginEvent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_255EF3810;
  v13 = sub_255EF3820;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_255EF3E70;
  v8[3] = &unk_279813CF0;
  v8[4] = &v9;
  objc_msgSend_enumerateLastLighthousePluginEvents_startDate_endDate_shouldContinue_(self, v5, v4, 0, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)enumerateLastMLRuntimeEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17 = a6;
  if (v10)
  {
    v18 = objc_msgSend_ensureBiomeManagerMLRuntimed(self, v13, v14, v15, v16);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF3FD0;
    v20[3] = &unk_279813CA0;
    v21 = v10;
    v22 = self;
    v23 = v17;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v18, v19, v11, v12, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastMLRuntimeEvent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_255EF3810;
  v13 = sub_255EF3820;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_255EF4514;
  v8[3] = &unk_279813D18;
  v8[4] = &v9;
  objc_msgSend_enumerateLastMLRuntimeEvents_startDate_endDate_shouldContinue_(self, v5, v4, 0, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)enumerateLastDprivacyEvents:(id)a3 startDate:(id)a4 endDate:(id)a5 shouldContinue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17 = a6;
  if (v10)
  {
    v18 = objc_msgSend_ensureBiomeManagerDprivacyd(self, v13, v14, v15, v16);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_255EF4674;
    v20[3] = &unk_279813CA0;
    v21 = v10;
    v22 = self;
    v23 = v17;
    objc_msgSend_enumerateData_endDate_reversed_shouldContinue_(v18, v19, v11, v12, 1, v20);
  }

  else if (os_log_type_enabled(LBFLogContextEventManager, OS_LOG_TYPE_DEBUG))
  {
    sub_255F0C0D0();
  }
}

- (id)getLastDprivacyEvent:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_255EF3810;
  v13 = sub_255EF3820;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_255EF49B8;
  v8[3] = &unk_279813D40;
  v8[4] = &v9;
  objc_msgSend_enumerateLastDprivacyEvents_startDate_endDate_shouldContinue_(self, v5, v4, 0, 0, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end