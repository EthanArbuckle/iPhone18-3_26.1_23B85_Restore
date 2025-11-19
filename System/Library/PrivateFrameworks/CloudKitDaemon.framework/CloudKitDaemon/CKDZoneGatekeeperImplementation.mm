@interface CKDZoneGatekeeperImplementation
- (BOOL)hasStatusToReport;
- (CKDZoneGatekeeperImplementation)init;
- (id)CKStatusReportArray;
- (void)registerWaiter:(id)a3 forZoneIDs:(id)a4 completionHandler:(id)a5;
- (void)relinquishLocksForWaiter:(id)a3 deferRelinquish:(BOOL)a4;
@end

@implementation CKDZoneGatekeeperImplementation

- (CKDZoneGatekeeperImplementation)init
{
  v8.receiver = self;
  v8.super_class = CKDZoneGatekeeperImplementation;
  v2 = [(CKDZoneGatekeeperImplementation *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    zoneIDsToGateHolders = v2->_zoneIDsToGateHolders;
    v2->_zoneIDsToGateHolders = v3;

    v5 = objc_opt_new();
    waiterWrappers = v2->_waiterWrappers;
    v2->_waiterWrappers = v5;
  }

  return v2;
}

- (void)registerWaiter:(id)a3 forZoneIDs:(id)a4 completionHandler:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v52 = a5;
  v10 = self;
  objc_sync_enter(v10);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = MEMORY[0x277CBC830];
  v12 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v65 = v9;
    v66 = 2112;
    v67 = v8;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Registering zone gate locks for IDs %@ waiter %@", buf, 0x16u);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = v9;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v59, v70, 16);
  if (v17)
  {
    v18 = *v60;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v59 + 1) + 8 * i);
        v21 = objc_msgSend_zoneIDsToGateHolders(v10, v15, v16, v52);
        v23 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v20);

        if (v23)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v38 = *v11;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v49 = objc_msgSend_zoneIDsToGateHolders(v10, v39, v40);
            v51 = objc_msgSend_objectForKeyedSubscript_(v49, v50, v20);
            *buf = 138412802;
            v65 = v8;
            v66 = 2112;
            v67 = v20;
            v68 = 2112;
            v69 = v51;
            _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Can't immediately grant gate to %@ because zone %@ held by %@", buf, 0x20u);
          }

          v41 = [CKWaiterWrapper alloc];
          v42 = _os_activity_create(&dword_22506F000, "CKDZoneGatekeeper", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
          v37 = objc_msgSend_initWithWaiter_zoneIDs_waitCompletedHandler_activity_(v41, v43, v8, v13, v52, v42);

          v46 = objc_msgSend_waiterWrappers(v10, v44, v45);
          objc_msgSend_addObject_(v46, v47, v37);

          goto LABEL_26;
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v59, v70, 16);
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v24 = v13;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v55, v63, 16);
  if (v28)
  {
    v29 = *v56;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v56 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v55 + 1) + 8 * j);
        v32 = objc_msgSend_zoneIDsToGateHolders(v10, v26, v27, v52);
        objc_msgSend_setObject_forKeyedSubscript_(v32, v33, v8, v31);
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v55, v63, 16);
    }

    while (v28);
  }

  objc_msgSend_qualityOfService(v8, v34, v35);
  v36 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22540DA3C;
  block[3] = &unk_2785456A0;
  v54 = v52;
  dispatch_async(v36, block);

  v37 = v54;
LABEL_26:

  objc_sync_exit(v10);
  v48 = *MEMORY[0x277D85DE8];
}

- (void)relinquishLocksForWaiter:(id)a3 deferRelinquish:(BOOL)a4
{
  v4 = a4;
  v183 = *MEMORY[0x277D85DE8];
  v142 = a3;
  v133 = objc_opt_new();
  v134 = objc_opt_new();
  v6 = self;
  objc_sync_enter(v6);
  v7 = MEMORY[0x277CBC880];
  v140 = v4;
  if (v4)
  {
    v8 = [CKDDeferredRelinquishPlaceholder alloc];
    v136 = objc_msgSend_initWithExistingWaiter_(v8, v9, v142);
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v175 = v142;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Deferring relinquish of zone gate locks for waiter %@", buf, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v131 = objc_msgSend_ckShortDescription(v142, v14, v15);
      *buf = 138412290;
      v175 = v131;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Relinquishing zone gate locks for waiter %@", buf, 0xCu);
    }

    v136 = 0;
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v16 = objc_msgSend_zoneIDsToGateHolders(v6, v11, v12);
  v19 = objc_msgSend_allKeys(v16, v17, v18);
  v22 = objc_msgSend_copy(v19, v20, v21);

  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v167, v182, 16);
  if (v26)
  {
    v27 = *v168;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v168 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v167 + 1) + 8 * i);
        v30 = objc_msgSend_zoneIDsToGateHolders(v6, v24, v25);
        v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, v29);

        if (objc_msgSend_isEqual_(v32, v33, v142))
        {
          v37 = objc_msgSend_zoneIDsToGateHolders(v6, v34, v35);
          if (v140)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v37, v36, v136, v29);
          }

          else
          {
            objc_msgSend_removeObjectForKey_(v37, v36, v29);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v167, v182, 16);
    }

    while (v26);
  }

  v40 = objc_msgSend_waiterWrappers(v6, v38, v39);
  v43 = objc_msgSend_copy(v40, v41, v42);

  v48 = objc_msgSend_count(v43, v44, v45);
  if (v48 - 1 >= 0)
  {
    do
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(v43, v46, --v48);
      v52 = objc_msgSend_waiter(v49, v50, v51);
      isEqual = objc_msgSend_isEqual_(v52, v53, v142);

      if (isEqual)
      {
        objc_msgSend_addObject_(v133, v55, v49);
        v58 = objc_msgSend_waiterWrappers(v6, v56, v57);
        objc_msgSend_removeObjectAtIndex_(v58, v59, v48);
      }
    }

    while (v48 > 0);
  }

  v60 = objc_msgSend_waiterWrappers(v6, v46, v47);
  v63 = objc_msgSend_copy(v60, v61, v62);

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = v63;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v64, &v163, v181, 16);
  if (v65)
  {
    v137 = *v164;
    *&v68 = 138412290;
    v132 = v68;
    do
    {
      v69 = 0;
      v138 = v65;
      do
      {
        if (*v164 != v137)
        {
          objc_enumerationMutation(obj);
        }

        v70 = *(*(&v163 + 1) + 8 * v69);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v71 = objc_msgSend_activity(v70, v66, v67, v132);
        os_activity_scope_enter(v71, &state);

        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v74 = objc_msgSend_zoneIDs(v70, v72, v73);
        v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v158, v180, 16);
        if (v78)
        {
          v79 = *v159;
          while (2)
          {
            for (j = 0; j != v78; ++j)
            {
              if (*v159 != v79)
              {
                objc_enumerationMutation(v74);
              }

              v81 = *(*(&v158 + 1) + 8 * j);
              v82 = objc_msgSend_zoneIDsToGateHolders(v6, v76, v77);
              v84 = objc_msgSend_objectForKeyedSubscript_(v82, v83, v81);

              if (v84)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v105 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                {
                  v108 = objc_msgSend_zoneIDsToGateHolders(v6, v106, v107);
                  v110 = objc_msgSend_objectForKeyedSubscript_(v108, v109, v81);
                  *buf = 138412802;
                  v175 = v70;
                  v176 = 2112;
                  v177 = v81;
                  v178 = 2112;
                  v179 = v110;
                  _os_log_debug_impl(&dword_22506F000, v105, OS_LOG_TYPE_DEBUG, "Can't grant gate to waiter %@ because zone %@ held by %@", buf, 0x20u);
                }

                goto LABEL_57;
              }
            }

            v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v76, &v158, v180, 16);
            if (v78)
            {
              continue;
            }

            break;
          }
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v85 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = v132;
          v175 = v70;
          _os_log_debug_impl(&dword_22506F000, v85, OS_LOG_TYPE_DEBUG, "Granting gate to waiter %@", buf, 0xCu);
        }

        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v88 = objc_msgSend_zoneIDs(v70, v86, v87);
        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v154, v173, 16);
        if (v92)
        {
          v93 = *v155;
          do
          {
            for (k = 0; k != v92; ++k)
            {
              if (*v155 != v93)
              {
                objc_enumerationMutation(v88);
              }

              v95 = *(*(&v154 + 1) + 8 * k);
              v96 = objc_msgSend_waiter(v70, v90, v91);
              v99 = objc_msgSend_zoneIDsToGateHolders(v6, v97, v98);
              objc_msgSend_setObject_forKeyedSubscript_(v99, v100, v96, v95);
            }

            v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v154, v173, 16);
          }

          while (v92);
        }

        objc_msgSend_addObject_(v134, v101, v70);
        v74 = objc_msgSend_waiterWrappers(v6, v102, v103);
        objc_msgSend_removeObject_(v74, v104, v70);
LABEL_57:

        os_activity_scope_leave(&state);
        v69 = v69 + 1;
      }

      while (v69 != v138);
      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, &v163, v181, 16);
    }

    while (v65);
  }

  if (v140)
  {
    v111 = dispatch_time(0, 2000000000);
    v112 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22540E4F4;
    block[3] = &unk_278545898;
    block[4] = v6;
    v153 = v136;
    dispatch_after(v111, v112, block);
  }

  objc_sync_exit(v6);
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v141 = v133;
  v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v113, &v148, v172, 16);
  if (v115)
  {
    v116 = *v149;
    do
    {
      for (m = 0; m != v115; ++m)
      {
        if (*v149 != v116)
        {
          objc_enumerationMutation(v141);
        }

        objc_msgSend_invokeWaitCompletedHandler_(*(*(&v148 + 1) + 8 * m), v114, 0);
      }

      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v141, v114, &v148, v172, 16);
    }

    while (v115);
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v139 = v134;
  v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v118, &v144, v171, 16);
  if (v121)
  {
    v122 = *v145;
    v123 = MEMORY[0x277D85DD0];
    do
    {
      for (n = 0; n != v121; ++n)
      {
        if (*v145 != v122)
        {
          objc_enumerationMutation(v139);
        }

        v125 = *(*(&v144 + 1) + 8 * n);
        v126 = objc_msgSend_waiter(v125, v119, v120);
        objc_msgSend_qualityOfService(v126, v127, v128);
        v129 = CKGetGlobalQueue();
        v143[0] = v123;
        v143[1] = 3221225472;
        v143[2] = sub_22540E504;
        v143[3] = &unk_278545A00;
        v143[4] = v125;
        dispatch_async(v129, v143);
      }

      v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v139, v119, &v144, v171, 16);
    }

    while (v121);
  }

  v130 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasStatusToReport
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_zoneIDsToGateHolders(v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = 1;
  }

  else
  {
    v11 = objc_msgSend_waiterWrappers(v2, v8, v9);
    v10 = objc_msgSend_count(v11, v12, v13) != 0;
  }

  objc_sync_exit(v2);
  return v10;
}

- (id)CKStatusReportArray
{
  v100 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = self;
  objc_sync_enter(v4);
  v84 = v4;
  v7 = objc_msgSend_zoneIDsToGateHolders(v4, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    objc_msgSend_addObject_(v3, v11, @"\tHeld Gates {");
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v14 = objc_msgSend_zoneIDsToGateHolders(v4, v12, v13);
    v17 = objc_msgSend_allKeys(v14, v15, v16);

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v93, v99, 16);
    if (v21)
    {
      v22 = *v94;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v94 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v93 + 1) + 8 * i);
          v25 = objc_msgSend_zoneIDsToGateHolders(v84, v19, v20);
          v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, v24);

          v28 = MEMORY[0x277CCACA8];
          v31 = objc_msgSend_ckShortDescription(v24, v29, v30);
          v34 = objc_msgSend_ckShortDescription(v27, v32, v33);
          v36 = objc_msgSend_stringWithFormat_(v28, v35, @"\t\t%@ -> %@", v31, v34);
          objc_msgSend_addObject_(v3, v37, v36);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v93, v99, 16);
      }

      while (v21);
    }

    objc_msgSend_addObject_(v3, v38, @"\t}");
  }

  else
  {
    objc_msgSend_addObject_(v3, v11, @"\tNo gates held");
  }

  v41 = objc_msgSend_waiterWrappers(v84, v39, v40);
  v44 = objc_msgSend_count(v41, v42, v43);

  if (v44)
  {
    objc_msgSend_addObject_(v3, v45, @"\tWaiters {");
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v48 = objc_msgSend_waiterWrappers(v84, v46, v47);
    v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v89, v98, 16);
    if (v50)
    {
      obj = v48;
      v82 = *v90;
      do
      {
        v83 = v50;
        for (j = 0; j != v83; ++j)
        {
          if (*v90 != v82)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v89 + 1) + 8 * j);
          v55 = MEMORY[0x277CCACA8];
          v56 = objc_msgSend_waiter(v54, v51, v52);
          v59 = objc_msgSend_ckShortDescription(v56, v57, v58);
          v61 = objc_msgSend_stringWithFormat_(v55, v60, @"\t\t%@ wants zone IDs {", v59);
          objc_msgSend_addObject_(v3, v62, v61);

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v65 = objc_msgSend_zoneIDs(v54, v63, v64);
          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v85, v97, 16);
          if (v69)
          {
            v70 = *v86;
            do
            {
              for (k = 0; k != v69; ++k)
              {
                if (*v86 != v70)
                {
                  objc_enumerationMutation(v65);
                }

                v72 = MEMORY[0x277CCACA8];
                v73 = objc_msgSend_ckShortDescription(*(*(&v85 + 1) + 8 * k), v67, v68);
                v75 = objc_msgSend_stringWithFormat_(v72, v74, @"\t\t\t%@,", v73);
                objc_msgSend_addObject_(v3, v76, v75);
              }

              v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v67, &v85, v97, 16);
            }

            while (v69);
          }

          objc_msgSend_addObject_(v3, v77, @"\t\t}");
        }

        v48 = obj;
        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v89, v98, 16);
      }

      while (v50);
    }

    objc_msgSend_addObject_(v3, v78, @"\t}");
  }

  objc_sync_exit(v84);

  v79 = *MEMORY[0x277D85DE8];

  return v3;
}

@end