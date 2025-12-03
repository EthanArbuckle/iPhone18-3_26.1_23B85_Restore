@interface LBFDeploymentEventsHolder
- (BOOL)dumpFetchedEvents;
- (LBFDeploymentEventsHolder)initWithExperimentOrTaskId:(id)id deploymentId:(id)deploymentId;
- (id)eventToJSONDictionary:(id)dictionary;
- (id)eventToJSONString:(id)string;
- (id)fetchedEventsInDictionaries;
- (id)getSortedEvents;
@end

@implementation LBFDeploymentEventsHolder

- (LBFDeploymentEventsHolder)initWithExperimentOrTaskId:(id)id deploymentId:(id)deploymentId
{
  idCopy = id;
  deploymentIdCopy = deploymentId;
  v19.receiver = self;
  v19.super_class = LBFDeploymentEventsHolder;
  v9 = [(LBFDeploymentEventsHolder *)&v19 init];
  if (v9)
  {
    LBFLoggingUtilsInit();
    objc_storeStrong(&v9->_experimentOrTaskId, id);
    objc_storeStrong(&v9->_deploymentId, deploymentId);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mlruntimedEvents = v9->_mlruntimedEvents;
    v9->_mlruntimedEvents = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lighthousePluginEvents = v9->_lighthousePluginEvents;
    v9->_lighthousePluginEvents = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trialdEvents = v9->_trialdEvents;
    v9->_trialdEvents = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dprivacydEvents = v9->_dprivacydEvents;
    v9->_dprivacydEvents = v16;
  }

  return v9;
}

- (id)eventToJSONDictionary:(id)dictionary
{
  v102[4] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v101[0] = &unk_286800FD0;
  v101[1] = &unk_286800FE8;
  v102[0] = @"Unknown";
  v102[1] = @"Allocation";
  v101[2] = &unk_286801000;
  v101[3] = &unk_286801018;
  v102[2] = @"Activation";
  v102[3] = @"Deactivation";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v102, v101, 4);
  objc_msgSend_json(dictionaryCopy, v6, v7, v8, v9);
  v92 = v99 = 0;
  v11 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v10, v92, 0, &v99);
  v90 = v99;
  v91 = v11;
  v16 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_eventType(dictionaryCopy, v17, v18, v19, v20);
    v25 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v22, v21, v23, v24);
    v29 = objc_msgSend_objectForKey_(v5, v26, v25, v27, v28);

    objc_msgSend_setObject_forKey_(v16, v30, v29, @"eventType", v31);
  }

  v93 = v5;
  v94 = dictionaryCopy;
  v32 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18, v19, v20);
  v36 = objc_msgSend_allKeysForObject_(v16, v33, v32, v34, v35);

  v89 = v36;
  objc_msgSend_removeObjectsForKeys_(v16, v37, v36, v38, v39);
  v44 = objc_msgSend_mutableCopy(v16, v40, v41, v42, v43);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v45 = v16;
  v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v95, v100, 16);
  if (v47)
  {
    v51 = v47;
    v52 = *v96;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v96 != v52)
        {
          objc_enumerationMutation(v45);
        }

        v54 = *(*(&v95 + 1) + 8 * i);
        v55 = objc_msgSend_objectForKey_(v45, v48, v54, v49, v50);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v57 = objc_msgSend_objectForKey_(v45, v48, v54, v49, v50);
          v62 = objc_msgSend_mutableCopy(v57, v58, v59, v60, v61);

          v67 = objc_msgSend_null(MEMORY[0x277CBEB68], v63, v64, v65, v66);
          v71 = objc_msgSend_allKeysForObject_(v62, v68, v67, v69, v70);

          objc_msgSend_removeObjectsForKeys_(v62, v72, v71, v73, v74);
          v79 = objc_msgSend_copy(v62, v75, v76, v77, v78);
          objc_msgSend_setObject_forKey_(v44, v80, v79, v54, v81);
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v95, v100, 16);
    }

    while (v51);
  }

  v86 = objc_msgSend_copy(v44, v82, v83, v84, v85);
  v87 = *MEMORY[0x277D85DE8];

  return v86;
}

- (id)eventToJSONString:(id)string
{
  v5 = MEMORY[0x277CCAAA0];
  v6 = objc_msgSend_eventToJSONDictionary_(self, a2, string, v3, v4);
  v14 = 0;
  v8 = objc_msgSend_dataWithJSONObject_options_error_(v5, v7, v6, 1, &v14);

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = objc_msgSend_initWithData_encoding_(v9, v10, v8, 4, v11);

  return v12;
}

- (id)getSortedEvents
{
  v27[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_arrayByAddingObjectsFromArray_(self->_mlruntimedEvents, a2, self->_lighthousePluginEvents, v2, v3);
  v9 = objc_msgSend_arrayByAddingObjectsFromArray_(v5, v6, self->_trialdEvents, v7, v8);
  v13 = objc_msgSend_arrayByAddingObjectsFromArray_(v9, v10, self->_dprivacydEvents, v11, v12);

  v14 = objc_alloc(MEMORY[0x277CCAC98]);
  v17 = objc_msgSend_initWithKey_ascending_(v14, v15, @"timestamp", 1, v16);
  v27[0] = v17;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v27, 1, v19);
  v24 = objc_msgSend_sortedArrayUsingDescriptors_(v13, v21, v20, v22, v23);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)dumpFetchedEvents
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    deploymentId = self->_deploymentId;
    *buf = 138412290;
    v96 = deploymentId;
    _os_log_impl(&dword_255ED5000, v3, OS_LOG_TYPE_INFO, "dumpFetchedEvents deploymentId %@", buf, 0xCu);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v5 = self->_mlruntimedEvents;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v87, v94, 16);
  if (v7)
  {
    v11 = v7;
    v12 = *v88;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v88 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_eventToJSONString_(self, v8, *(*(&v87 + 1) + 8 * i), v9, v10);
        v15 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v96 = v14;
          _os_log_impl(&dword_255ED5000, v15, OS_LOG_TYPE_INFO, "Dump: MLRuntimed Event - BMLighthouseLedgerMlruntimedEvent:\n%@\n\n", buf, 0xCu);
        }

        v16 = v14;
        v21 = objc_msgSend_UTF8String(v16, v17, v18, v19, v20);
        printf("Dump: MLRuntimed Event - BMLighthouseLedgerMlruntimedEvent:\n%s\n\n", v21);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v87, v94, 16);
    }

    while (v11);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v22 = self->_lighthousePluginEvents;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v83, v93, 16);
  if (v24)
  {
    v28 = v24;
    v29 = *v84;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v84 != v29)
        {
          objc_enumerationMutation(v22);
        }

        v31 = objc_msgSend_eventToJSONString_(self, v25, *(*(&v83 + 1) + 8 * j), v26, v27);
        v32 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v96 = v31;
          _os_log_impl(&dword_255ED5000, v32, OS_LOG_TYPE_INFO, "Dump: Lighthouse Event - BMLighthouseLedgerLighthousePluginEvent:\n%@\n\n", buf, 0xCu);
        }

        v33 = v31;
        v38 = objc_msgSend_UTF8String(v33, v34, v35, v36, v37);
        printf("Dump: Lighthouse Event - BMLighthouseLedgerLighthousePluginEvent:\n%s\n\n", v38);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v83, v93, 16);
    }

    while (v28);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v39 = self->_trialdEvents;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v79, v92, 16);
  if (v41)
  {
    v45 = v41;
    v46 = *v80;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v80 != v46)
        {
          objc_enumerationMutation(v39);
        }

        v48 = objc_msgSend_eventToJSONString_(self, v42, *(*(&v79 + 1) + 8 * k), v43, v44);
        v49 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v96 = v48;
          _os_log_impl(&dword_255ED5000, v49, OS_LOG_TYPE_INFO, "Dump: Triald Event - BMLighthouseLedgerTrialdEvent:\n%@\n\n", buf, 0xCu);
        }

        v50 = v48;
        v55 = objc_msgSend_UTF8String(v50, v51, v52, v53, v54);
        printf("Dump: Triald Event - BMLighthouseLedgerTrialdEvent:\n%s\n\n", v55);
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v79, v92, 16);
    }

    while (v45);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v56 = self->_dprivacydEvents;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v57, &v75, v91, 16);
  if (v58)
  {
    v62 = v58;
    v63 = *v76;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v76 != v63)
        {
          objc_enumerationMutation(v56);
        }

        v65 = objc_msgSend_eventToJSONString_(self, v59, *(*(&v75 + 1) + 8 * m), v60, v61);
        v66 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v96 = v65;
          _os_log_impl(&dword_255ED5000, v66, OS_LOG_TYPE_INFO, "Dump: Dprivacyd Event - BMLighthouseLedgerDediscoPrivacyEvent:\n%@\n\n", buf, 0xCu);
        }

        v67 = v65;
        v72 = objc_msgSend_UTF8String(v67, v68, v69, v70, v71);
        printf("Dump: Dprivacyd Event - BMLighthouseLedgerDediscoPrivacyEvent:\n%s\n\n", v72);
      }

      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v56, v59, &v75, v91, 16);
    }

    while (v62);
  }

  v73 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)fetchedEventsInDictionaries
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    deploymentId = self->_deploymentId;
    *buf = 138412290;
    v63 = deploymentId;
    _os_log_impl(&dword_255ED5000, v4, OS_LOG_TYPE_INFO, "fetchedEventsInDictionaries deploymentId %@", buf, 0xCu);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = self->_mlruntimedEvents;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v55, v61, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_eventToJSONDictionary_(self, v9, *(*(&v55 + 1) + 8 * i), v10, v11);
        objc_msgSend_addObject_(v3, v16, v15, v17, v18);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v55, v61, 16);
    }

    while (v12);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = self->_lighthousePluginEvents;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v51, v60, 16);
  if (v21)
  {
    v25 = v21;
    v26 = *v52;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v19);
        }

        v28 = objc_msgSend_eventToJSONDictionary_(self, v22, *(*(&v51 + 1) + 8 * j), v23, v24);
        objc_msgSend_addObject_(v3, v29, v28, v30, v31);
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v51, v60, 16);
    }

    while (v25);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32 = self->_trialdEvents;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v47, v59, 16);
  if (v34)
  {
    v38 = v34;
    v39 = *v48;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(v32);
        }

        v41 = objc_msgSend_eventToJSONDictionary_(self, v35, *(*(&v47 + 1) + 8 * k), v36, v37, v47);
        objc_msgSend_addObject_(v3, v42, v41, v43, v44);
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v47, v59, 16);
    }

    while (v38);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v3;
}

@end