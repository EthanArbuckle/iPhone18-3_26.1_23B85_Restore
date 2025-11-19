@interface CKDOperationStatistics
+ (id)CKStatusReportForStatistics:(id)a3;
- (CKDOperationStatistics)initWithOperationClassName:(id)a3;
- (id)_trimmedError:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addMetrics:(id)a3 toAggregate:(id)a4;
- (void)addOperation:(id)a3 cloudKitMetrics:(id)a4 MMCSMetrics:(id)a5;
@end

@implementation CKDOperationStatistics

- (CKDOperationStatistics)initWithOperationClassName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CKDOperationStatistics;
  v6 = [(CKDOperationStatistics *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationClassName, a3);
    v8 = objc_opt_new();
    recentErrorsByDate = v7->_recentErrorsByDate;
    v7->_recentErrorsByDate = v8;

    v10 = objc_opt_new();
    aggregateCKMetrics = v7->_aggregateCKMetrics;
    v7->_aggregateCKMetrics = v10;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKDOperationStatistics alloc];
  v7 = objc_msgSend_operationClassName(self, v5, v6);
  v9 = objc_msgSend_initWithOperationClassName_(v4, v8, v7);

  os_unfair_lock_lock(&unk_280D54E98);
  v12 = objc_msgSend_recentErrorsByDate(self, v10, v11);
  v15 = objc_msgSend_copy(v12, v13, v14);
  v16 = v9[2];
  v9[2] = v15;

  v9[3] = objc_msgSend_operationCount(self, v17, v18);
  v21 = objc_msgSend_aggregateCKMetrics(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  v25 = v9[4];
  v9[4] = v24;

  v28 = objc_msgSend_aggregateMMCSMetrics(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  v32 = v9[5];
  v9[5] = v31;

  os_unfair_lock_unlock(&unk_280D54E98);
  return v9;
}

- (void)_addMetrics:(id)a3 toAggregate:(id)a4
{
  v68 = a4;
  v5 = a3;
  objc_msgSend_duration(v5, v6, v7);
  v9 = v8;
  objc_msgSend_duration(v68, v10, v11);
  objc_msgSend_setDuration_(v68, v13, v14, v9 + v12);
  objc_msgSend_queueing(v5, v15, v16);
  v18 = v17;
  objc_msgSend_queueing(v68, v19, v20);
  objc_msgSend_setQueueing_(v68, v22, v23, v18 + v21);
  objc_msgSend_executing(v5, v24, v25);
  v27 = v26;
  objc_msgSend_executing(v68, v28, v29);
  objc_msgSend_setExecuting_(v68, v31, v32, v27 + v30);
  v35 = objc_msgSend_bytesUploaded(v5, v33, v34);
  v38 = objc_msgSend_bytesUploaded(v68, v36, v37);
  objc_msgSend_setBytesUploaded_(v68, v39, v38 + v35);
  v42 = objc_msgSend_bytesDownloaded(v5, v40, v41);
  v45 = objc_msgSend_bytesDownloaded(v68, v43, v44);
  objc_msgSend_setBytesDownloaded_(v68, v46, v45 + v42);
  v49 = objc_msgSend_connections(v5, v47, v48);
  v52 = objc_msgSend_connections(v68, v50, v51);
  objc_msgSend_setConnections_(v68, v53, v52 + v49);
  v56 = objc_msgSend_connectionsCreated(v5, v54, v55);
  v59 = objc_msgSend_connectionsCreated(v68, v57, v58);
  objc_msgSend_setConnectionsCreated_(v68, v60, v59 + v56);
  v63 = objc_msgSend_requestCount(v5, v61, v62);

  v66 = objc_msgSend_requestCount(v68, v64, v65);
  objc_msgSend_setRequestCount_(v68, v67, v66 + v63);
}

- (id)_trimmedError:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_domain(v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x277CBBF50]))
  {
    v11 = objc_msgSend_code(v4, v9, v10);

    if (v11 == 22)
    {
      v14 = 0;
      v15 = v4;
      goto LABEL_21;
    }
  }

  else
  {
  }

  v16 = objc_msgSend_userInfo(v4, v12, v13);

  v19 = v4;
  if (v16)
  {
    v20 = objc_msgSend_userInfo(v4, v17, v18);
    v23 = objc_msgSend_mutableCopy(v20, v21, v22);

    v24 = *MEMORY[0x277CCA7E8];
    v26 = objc_msgSend_objectForKeyedSubscript_(v23, v25, *MEMORY[0x277CCA7E8]);

    if (v26)
    {
      v28 = objc_msgSend_objectForKeyedSubscript_(v23, v27, v24);
      v30 = objc_msgSend__trimmedError_(self, v29, v28);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v31, v30, v24);
    }

    v32 = *MEMORY[0x277CBBFB0];
    v33 = objc_msgSend_objectForKeyedSubscript_(v23, v27, *MEMORY[0x277CBBFB0]);

    if (v33)
    {
      v71 = v4;
      v35 = objc_opt_new();
      v69 = v32;
      v70 = v23;
      v37 = objc_msgSend_objectForKeyedSubscript_(v23, v36, v32);
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v40 = objc_msgSend_allKeys(v37, v38, v39);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v72, v76, 16);
      if (v42)
      {
        v44 = v42;
        v45 = *v73;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v73 != v45)
            {
              objc_enumerationMutation(v40);
            }

            v47 = *(*(&v72 + 1) + 8 * i);
            v48 = objc_msgSend_objectForKeyedSubscript_(v37, v43, v47);
            v50 = objc_msgSend__trimmedError_(self, v49, v48);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v51, v50, v47);
          }

          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v43, &v72, v76, 16);
        }

        while (v44);
      }

      v23 = v70;
      objc_msgSend_setObject_forKeyedSubscript_(v70, v52, v35, v69);

      v4 = v71;
    }

    objc_msgSend_setObject_forKeyedSubscript_(v23, v34, 0, *MEMORY[0x277CBC130]);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v53, 0, *MEMORY[0x277CBBFD8]);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v54, 0, *MEMORY[0x277CBBFE8]);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v55, 0, *MEMORY[0x277CBBFE0]);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v56, 0, *MEMORY[0x277CBC018]);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v58 = 0x277CCA9B8;
    if (isKindOfClass)
    {
      v58 = 0x277CBC560;
    }

    v59 = objc_alloc(*v58);
    v62 = objc_msgSend_domain(v4, v60, v61);
    v65 = objc_msgSend_code(v4, v63, v64);
    v19 = objc_msgSend_initWithDomain_code_userInfo_(v59, v66, v62, v65, v23);
  }

  v15 = v19;
  v14 = v15;
LABEL_21:

  v67 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)addOperation:(id)a3 cloudKitMetrics:(id)a4 MMCSMetrics:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&unk_280D54E98);
  ++self->_operationCount;
  v13 = objc_msgSend_aggregateCKMetrics(self, v11, v12);
  objc_msgSend__addMetrics_toAggregate_(self, v14, v9, v13);

  if (v10)
  {
    v17 = objc_msgSend_aggregateMMCSMetrics(self, v15, v16);

    if (!v17)
    {
      v20 = objc_opt_new();
      aggregateMMCSMetrics = self->_aggregateMMCSMetrics;
      self->_aggregateMMCSMetrics = v20;
    }

    v22 = objc_msgSend_aggregateMMCSMetrics(self, v18, v19);
    objc_msgSend__addMetrics_toAggregate_(self, v23, v10, v22);
  }

  v24 = objc_msgSend_error(v8, v15, v16);

  if (v24)
  {
    v27 = objc_msgSend_error(v8, v25, v26);
    v29 = objc_msgSend__trimmedError_(self, v28, v27);

    if (v29)
    {
      v32 = objc_msgSend_recentErrorsByDate(self, v30, v31);
      v35 = objc_msgSend_count(v32, v33, v34);
      v38 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v36, v37);
      v41 = objc_msgSend_savedErrorCount(v38, v39, v40);

      if (v35 > v41)
      {
        v72 = v29;
        v44 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v42, v43);
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v47 = objc_msgSend_recentErrorsByDate(self, v45, v46);
        v50 = objc_msgSend_allKeys(v47, v48, v49);

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v73, v77, 16);
        if (v52)
        {
          v54 = v52;
          v55 = *v74;
          do
          {
            for (i = 0; i != v54; ++i)
            {
              if (*v74 != v55)
              {
                objc_enumerationMutation(v50);
              }

              v57 = *(*(&v73 + 1) + 8 * i);
              if (objc_msgSend_compare_(v57, v53, v44) == -1)
              {
                v58 = v57;

                v44 = v58;
              }
            }

            v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v73, v77, 16);
          }

          while (v54);
        }

        v61 = objc_msgSend_recentErrorsByDate(self, v59, v60);
        objc_msgSend_setObject_forKeyedSubscript_(v61, v62, 0, v44);

        v29 = v72;
      }

      v63 = objc_msgSend_error(v8, v42, v43);
      v66 = objc_msgSend_recentErrorsByDate(self, v64, v65);
      v69 = objc_msgSend_date(MEMORY[0x277CBEAA8], v67, v68);
      objc_msgSend_setObject_forKeyedSubscript_(v66, v70, v63, v69);
    }
  }

  os_unfair_lock_unlock(&unk_280D54E98);

  v71 = *MEMORY[0x277D85DE8];
}

+ (id)CKStatusReportForStatistics:(id)a3
{
  v142 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  os_unfair_lock_lock(&unk_280D54E98);
  v119 = v3;
  objc_msgSend_sortedArrayUsingComparator_(v3, v5, &unk_28385D960);
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = v139 = 0u;
  v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v136, v141, 16);
  if (v122)
  {
    v121 = *v137;
    do
    {
      for (i = 0; i != v122; ++i)
      {
        if (*v137 != v121)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v136 + 1) + 8 * i);
        v128 = MEMORY[0x277CCACA8];
        v11 = objc_msgSend_operationClassName(v10, v7, v8);
        v126 = objc_msgSend_operationCount(v10, v12, v13);
        v131 = objc_msgSend_aggregateCKMetrics(v10, v14, v15);
        v124 = objc_msgSend_requestCount(v131, v16, v17);
        v129 = objc_msgSend_aggregateCKMetrics(v10, v18, v19);
        objc_msgSend_duration(v129, v20, v21);
        v23 = v22;
        v127 = objc_msgSend_aggregateCKMetrics(v10, v24, v25);
        objc_msgSend_queueing(v127, v26, v27);
        v29 = v28;
        v125 = objc_msgSend_aggregateCKMetrics(v10, v30, v31);
        objc_msgSend_executing(v125, v32, v33);
        v35 = v34;
        v123 = objc_msgSend_aggregateCKMetrics(v10, v36, v37);
        v40 = objc_msgSend_bytesUploaded(v123, v38, v39);
        v43 = objc_msgSend_aggregateCKMetrics(v10, v41, v42);
        v46 = objc_msgSend_bytesDownloaded(v43, v44, v45);
        v49 = objc_msgSend_aggregateCKMetrics(v10, v47, v48);
        v52 = objc_msgSend_connections(v49, v50, v51);
        v55 = objc_msgSend_aggregateCKMetrics(v10, v53, v54);
        v58 = objc_msgSend_connectionsCreated(v55, v56, v57);
        v60 = objc_msgSend_stringWithFormat_(v128, v59, @"[%@] (%lu operations, %lu requests, %0.2f total duration (%0.2fq/%0.2fe), data u/d: %lu/%lu, %lu connections (%lu created))", v11, v126, v124, v23, v29, v35, v40, v46, v52, v58);
        objc_msgSend_addObject_(v4, v61, v60);

        v64 = objc_msgSend_aggregateMMCSMetrics(v10, v62, v63);
        v67 = v64;
        if (v64)
        {
          v68 = MEMORY[0x277CCACA8];
          v69 = objc_msgSend_requestCount(v64, v65, v66);
          objc_msgSend_duration(v67, v70, v71);
          v73 = v72;
          objc_msgSend_queueing(v67, v74, v75);
          v77 = v76;
          objc_msgSend_executing(v67, v78, v79);
          v81 = v80;
          v84 = objc_msgSend_bytesUploaded(v67, v82, v83);
          v87 = objc_msgSend_bytesDownloaded(v67, v85, v86);
          v90 = objc_msgSend_connections(v67, v88, v89);
          v93 = objc_msgSend_connectionsCreated(v67, v91, v92);
          v95 = objc_msgSend_stringWithFormat_(v68, v94, @"\t MMCS metrics: %lu requests, (%0.2f total duration (%0.2fq/%0.2fe), data u/d: %lu/%lu, %lu connections (%lu created))", v69, v73, v77, v81, v84, v87, v90, v93);
          objc_msgSend_addObject_(v4, v96, v95);
        }

        v97 = objc_msgSend_recentErrorsByDate(v10, v65, v66);
        if (objc_msgSend_count(v97, v98, v99))
        {
          v130 = v67;
          objc_msgSend_addObject_(v4, v100, @"Recent errors: {");
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v103 = objc_msgSend_allKeys(v97, v101, v102);
          v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, &v132, v140, 16);
          if (v105)
          {
            v107 = v105;
            v108 = *v133;
            do
            {
              for (j = 0; j != v107; ++j)
              {
                if (*v133 != v108)
                {
                  objc_enumerationMutation(v103);
                }

                v110 = *(*(&v132 + 1) + 8 * j);
                v111 = MEMORY[0x277CCACA8];
                v112 = objc_msgSend_objectForKeyedSubscript_(v97, v106, v110);
                v114 = objc_msgSend_stringWithFormat_(v111, v113, @"\t%@ - %@", v110, v112);
                objc_msgSend_addObject_(v4, v115, v114);
              }

              v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v106, &v132, v140, 16);
            }

            while (v107);
          }

          objc_msgSend_addObject_(v4, v116, @"}");
          v67 = v130;
        }
      }

      v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v136, v141, 16);
    }

    while (v122);
  }

  os_unfair_lock_unlock(&unk_280D54E98);

  v117 = *MEMORY[0x277D85DE8];

  return v4;
}

@end