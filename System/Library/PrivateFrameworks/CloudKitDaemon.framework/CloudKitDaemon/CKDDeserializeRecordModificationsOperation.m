@interface CKDDeserializeRecordModificationsOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (BOOL)validateAgainstLiveContainer:(id)a3 error:(id *)a4;
- (CKDDeserializeRecordModificationsOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_deserialize;
- (void)_finishOnCallbackQueueWithError:(id)a3;
- (void)_postflightRecords;
- (void)_setupTranslator;
@end

@implementation CKDDeserializeRecordModificationsOperation

- (CKDDeserializeRecordModificationsOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CKDDeserializeRecordModificationsOperation;
  v9 = [(CKDDatabaseOperation *)&v13 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_serializedModifications(v6, v7, v8);
    serializedModifications = v9->_serializedModifications;
    v9->_serializedModifications = v10;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/deserialize-record-modifications", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      objc_msgSend_setState_(self, v5, 4);
      objc_msgSend__postflightRecords(self, v14, v15);
    }

    else if (v4 == 4)
    {
      objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
      v10 = objc_msgSend_error(self, v8, v9);
      objc_msgSend_finishWithError_(self, v11, v10);
    }
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend__setupTranslator(self, v12, v13);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend__deserialize(self, v6, v7);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDDeserializeRecordModificationsOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_2785495A8[a3 - 2];
  }

  return v5;
}

- (BOOL)validateAgainstLiveContainer:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = CKDDeserializeRecordModificationsOperation;
  if (![(CKDOperation *)&v24 validateAgainstLiveContainer:v6 error:a4])
  {
    goto LABEL_9;
  }

  v9 = objc_msgSend_entitlements(v6, v7, v8);
  hasAllowRealTimeOperationsEntitlement = objc_msgSend_hasAllowRealTimeOperationsEntitlement(v9, v10, v11);

  if ((hasAllowRealTimeOperationsEntitlement & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = v13;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543362;
      v26 = v23;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "Operation %{public}@ is not allowed to run without an entitlement", buf, 0xCu);

      if (!a4)
      {
        goto LABEL_10;
      }
    }

    else if (!a4)
    {
      goto LABEL_10;
    }

    v14 = MEMORY[0x277CBC560];
    v15 = *MEMORY[0x277CBBF50];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *a4 = objc_msgSend_errorWithDomain_code_format_(v14, v18, v15, 8, @"Operation %@ is not allowed to run without an entitlement", v17);

LABEL_9:
    LOBYTE(a4) = 0;
    goto LABEL_10;
  }

  LOBYTE(a4) = 1;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return a4;
}

- (void)_finishOnCallbackQueueWithError:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_deserializeCompletionBlock(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_deserializeCompletionBlock(self, v8, v9);
    v13 = v10;
    if (v4)
    {
      (*(v10 + 16))(v10, 0, 0, v4);
    }

    else
    {
      v14 = objc_msgSend_recordsToSave(self, v11, v12);
      v17 = objc_msgSend_recordIDsToDelete(self, v15, v16);
      (v13)[2](v13, v14, v17, 0);
    }

    objc_msgSend_setDeserializeCompletionBlock_(self, v18, 0);
  }

  v19.receiver = self;
  v19.super_class = CKDDeserializeRecordModificationsOperation;
  [(CKDOperation *)&v19 _finishOnCallbackQueueWithError:v4];
}

- (void)_setupTranslator
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_databaseScope(self, v5, v6);
  v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
  dispatch_group_enter(v10);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2251D2CCC;
  v13[3] = &unk_278549588;
  v13[4] = self;
  v14 = v4;
  v15 = v7;
  v11 = v4;
  objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(v11, v12, self, v13);
}

- (void)_deserialize
{
  v227 = *MEMORY[0x277D85DE8];
  v3 = [CKDPRealTimeMessage alloc];
  v6 = objc_msgSend_serializedModifications(self, v4, v5);
  v8 = objc_msgSend_initWithData_(v3, v7, v6);

  v9 = *MEMORY[0x277CBC878];
  v10 = *MEMORY[0x277CBC880];
  if (!v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v9);
    }

    v154 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v154, OS_LOG_TYPE_ERROR, "CKDDeserializeRecordModificationsOperation is unable to deserialize its messages", buf, 2u);
    }

    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v155, *MEMORY[0x277CBBF50], 1000, @"CKDDeserializeRecordModificationsOperation is unable to deserialize its messages");
    objc_msgSend_setError_(self, v156, v14);
    goto LABEL_96;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v9);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v161 = v11;
    v164 = objc_msgSend_saveRecords(v8, v162, v163);
    *buf = 134217984;
    v222 = objc_msgSend_count(v164, v165, v166);
    _os_log_debug_impl(&dword_22506F000, v161, OS_LOG_TYPE_DEBUG, "Unpackaging SaveRecords of %lu records", buf, 0xCu);
  }

  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], v12, v13);
  v197 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16);
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  obj = objc_msgSend_saveRecords(v8, v17, v18);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v215, v226, 16);
  if (v20)
  {
    v23 = v20;
    v24 = *v216;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v216 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v215 + 1) + 8 * i);
        v27 = objc_msgSend_translator(self, v21, v22);
        v30 = objc_msgSend_record(v26, v28, v29);
        v214 = 0;
        v32 = objc_msgSend_recordFromPRecord_error_(v27, v31, v30, &v214);
        v33 = v214;

        if (v33)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v152 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v222 = v33;
            _os_log_error_impl(&dword_22506F000, v152, OS_LOG_TYPE_ERROR, "Error transforming record: %@", buf, 0xCu);
          }

          objc_msgSend_setError_(self, v153, v33);

          goto LABEL_95;
        }

        objc_msgSend_addObject_(v14, v34, v32);
        v37 = objc_msgSend_recordID(v32, v35, v36);
        objc_msgSend_setObject_forKeyedSubscript_(v197, v38, v32, v37);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v215, v226, 16);
    }

    while (v23);
  }

  v39 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v40 = MEMORY[0x277CBC830];
  v41 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v169 = v41;
    v172 = objc_msgSend_associatedMergeableDeltas(v8, v170, v171);
    v175 = objc_msgSend_count(v172, v173, v174);
    *buf = 134217984;
    v222 = v175;
    _os_log_debug_impl(&dword_22506F000, v169, OS_LOG_TYPE_DEBUG, "Unpackaging AssociatedMergeableDeltas with %lu deltas", buf, 0xCu);

    v39 = MEMORY[0x277CBC880];
  }

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  obj = objc_msgSend_associatedMergeableDeltas(v8, v42, v43);
  v190 = v14;
  v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v210, v225, 16);
  if (!v191)
  {
    goto LABEL_51;
  }

  v192 = *v211;
  *&v47 = 138412546;
  v186 = v47;
  v187 = v8;
  while (2)
  {
    v48 = 0;
    do
    {
      if (*v211 != v192)
      {
        objc_enumerationMutation(obj);
      }

      v194 = v48;
      v49 = *(*(&v210 + 1) + 8 * v48);
      v50 = objc_msgSend_translator(self, v45, v46, v186);
      v53 = objc_msgSend_recordIdentifier(v49, v51, v52);
      v209 = 0;
      v55 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v50, v54, v53, &v209);
      v56 = v209;

      if (v56)
      {
        if (*v39 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v167 = *v40;
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v222 = v56;
          _os_log_error_impl(&dword_22506F000, v167, OS_LOG_TYPE_ERROR, "Error transforming CKRecordID, %@", buf, 0xCu);
        }

        objc_msgSend_setError_(self, v168, v56);
        goto LABEL_94;
      }

      v59 = objc_msgSend_fieldIdentifier(v49, v57, v58);
      v62 = objc_msgSend_name(v59, v60, v61);

      v195 = objc_msgSend_objectForKeyedSubscript_(v197, v63, v55);
      if (v195)
      {
        v193 = v62;
        v66 = objc_msgSend_mergeableDeltas(v49, v64, v65);
        v69 = objc_msgSend_firstObject(v66, v67, v68);
        hasData = objc_msgSend_hasData(v69, v70, v71);

        if (hasData)
        {
          v62 = v193;
          v77 = objc_msgSend_objectForKeyedSubscript_(v195, v73, v193);
          if (!v77)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v80 = objc_msgSend_mergeableDeltas(v49, v73, v74);
          v83 = objc_msgSend_firstObject(v80, v81, v82);
          hasEncryptedData = objc_msgSend_hasEncryptedData(v83, v84, v85);

          v62 = v193;
          if (!hasEncryptedData || (objc_msgSend_encryptedValues(v195, v87, v88), v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v89, v90, v193), v91 = objc_claimAutoreleasedReturnValue(), v89, (v77 = v91) == 0))
          {
LABEL_44:
            if (*v39 != -1)
            {
              dispatch_once(v39, *MEMORY[0x277CBC878]);
            }

            v78 = v194;
            v126 = *v40;
            if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
            {
              *buf = v186;
              v222 = v62;
              v223 = 2112;
              v224 = v55;
              _os_log_error_impl(&dword_22506F000, v126, OS_LOG_TYPE_ERROR, "AssociatedMergeableDelta present for missing field '%@' in record %@", buf, 0x16u);
            }

            goto LABEL_49;
          }
        }

        v92 = objc_msgSend_translator(self, v75, v76);
        v95 = objc_msgSend_identifier(v49, v93, v94);
        v189 = v55;
        v98 = objc_msgSend_recordName(v55, v96, v97);
        v188 = v77;
        objc_msgSend_valueID(v77, v99, v100);
        v102 = v101 = v62;
        isEncrypted = objc_msgSend_isEncrypted(v102, v103, v104);
        v208 = 0;
        v107 = objc_msgSend_mergeableValueIDFromPMergeableValueIdentifier_recordName_fieldName_encrypted_error_(v92, v106, v95, v98, v101, isEncrypted, &v208);
        v56 = v208;

        if (v56)
        {
          if (*v39 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v8 = v187;
          v176 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v222 = v56;
            _os_log_error_impl(&dword_22506F000, v176, OS_LOG_TYPE_ERROR, "Error transforming CKMergeableValueID, %@", buf, 0xCu);
          }

          objc_msgSend_setError_(self, v177, v56);

          v55 = v189;
LABEL_94:

          goto LABEL_95;
        }

        v108 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        v111 = objc_msgSend_mergeableDeltas(v49, v109, v110);
        v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v112, &v204, v220, 16);
        if (v113)
        {
          v116 = v113;
          v117 = *v205;
          while (2)
          {
            for (j = 0; j != v116; ++j)
            {
              if (*v205 != v117)
              {
                objc_enumerationMutation(v111);
              }

              v119 = *(*(&v204 + 1) + 8 * j);
              v120 = objc_msgSend_translator(self, v114, v115);
              v203 = 0;
              v122 = objc_msgSend_mergeableDeltaFromPDelta_valueID_error_(v120, v121, v119, v107, &v203);
              v123 = v203;

              if (v123)
              {
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
                }

                v14 = v190;
                v157 = *MEMORY[0x277CBC830];
                if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v222 = v107;
                  _os_log_error_impl(&dword_22506F000, v157, OS_LOG_TYPE_ERROR, "Error transforming CKMergeableDelta with ID %@", buf, 0xCu);
                }

                objc_msgSend_setError_(self, v158, v123);

                v8 = v187;
                goto LABEL_95;
              }

              objc_msgSend_addObject_(v108, v124, v122);
            }

            v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v114, &v204, v220, 16);
            if (v116)
            {
              continue;
            }

            break;
          }
        }

        objc_msgSend_addUnmergedDeltas_(v188, v125, v108);
        v8 = v187;
        v55 = v189;
        v14 = v190;
        v40 = MEMORY[0x277CBC830];
        v39 = MEMORY[0x277CBC880];
        v62 = v193;
        v78 = v194;
      }

      else
      {
        if (*v39 != -1)
        {
          dispatch_once(v39, *MEMORY[0x277CBC878]);
        }

        v78 = v194;
        v79 = *v40;
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v222 = v55;
          _os_log_error_impl(&dword_22506F000, v79, OS_LOG_TYPE_ERROR, "AssociatedMergeableDelta present for missing record %@", buf, 0xCu);
        }
      }

LABEL_49:

      v48 = v78 + 1;
    }

    while (v48 != v191);
    v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v210, v225, 16);
    if (v191)
    {
      continue;
    }

    break;
  }

LABEL_51:

  objc_msgSend_setRecordsToSave_(self, v127, v14);
  if (*v39 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v128 = *v40;
  if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
  {
    v179 = v128;
    v182 = objc_msgSend_deleteRecordids(v8, v180, v181);
    v185 = objc_msgSend_count(v182, v183, v184);
    *buf = 134217984;
    v222 = v185;
    _os_log_debug_impl(&dword_22506F000, v179, OS_LOG_TYPE_DEBUG, "Unpackaging DeleteRecordIDs of %lu recordIDs", buf, 0xCu);
  }

  obj = objc_msgSend_array(MEMORY[0x277CBEB18], v129, v130);
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v131 = v8;
  v134 = objc_msgSend_deleteRecordids(v8, v132, v133);
  v136 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v135, &v199, v219, 16);
  if (v136)
  {
    v139 = v136;
    v140 = *v200;
    while (2)
    {
      for (k = 0; k != v139; ++k)
      {
        if (*v200 != v140)
        {
          objc_enumerationMutation(v134);
        }

        v142 = *(*(&v199 + 1) + 8 * k);
        v143 = objc_msgSend_translator(self, v137, v138);
        v146 = objc_msgSend_recordIdentifier(v142, v144, v145);
        v198 = 0;
        v148 = objc_msgSend_recordIDFromPRecordIdentifier_error_(v143, v147, v146, &v198);
        v149 = v198;

        if (v149)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v8 = v131;
          v159 = *MEMORY[0x277CBC830];
          v14 = v190;
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v222 = v149;
            _os_log_error_impl(&dword_22506F000, v159, OS_LOG_TYPE_ERROR, "Error transforming recordID: %@", buf, 0xCu);
          }

          objc_msgSend_setError_(self, v160, v149);

          goto LABEL_95;
        }

        objc_msgSend_addObject_(obj, v150, v148);
      }

      v139 = objc_msgSend_countByEnumeratingWithState_objects_count_(v134, v137, &v199, v219, 16);
      if (v139)
      {
        continue;
      }

      break;
    }
  }

  objc_msgSend_setRecordIDsToDelete_(self, v151, obj);
  v8 = v131;
  v14 = v190;
LABEL_95:

LABEL_96:
  v178 = *MEMORY[0x277D85DE8];
}

- (void)_postflightRecords
{
  v4 = objc_msgSend_recordsToSave(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_stateTransitionGroup(self, v8, v9);
    dispatch_group_enter(v10);

    v11 = objc_opt_new();
    objc_msgSend_setShouldFetchAssetContent_(v11, v12, 0);
    objc_msgSend_setShouldFetchMergeableValues_(v11, v13, 0);
    v14 = objc_opt_class();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2251D3E24;
    v16[3] = &unk_278548B60;
    v16[4] = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v15, v14, v11, v16);
  }
}

@end