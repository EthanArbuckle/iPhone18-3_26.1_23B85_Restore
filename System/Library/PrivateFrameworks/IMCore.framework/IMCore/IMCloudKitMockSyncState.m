@interface IMCloudKitMockSyncState
- (id)convertToDictionary;
@end

@implementation IMCloudKitMockSyncState

- (id)convertToDictionary
{
  v143[15] = *MEMORY[0x1E69E9840];
  v142[0] = *MEMORY[0x1E69A6E00];
  v4 = MEMORY[0x1E696AD98];
  v5 = objc_msgSend_IMCloudKitSyncingEnabled(self, a2, v2);
  v141 = objc_msgSend_numberWithBool_(v4, v6, v5);
  v143[0] = v141;
  v142[1] = *MEMORY[0x1E69A6D68];
  v7 = MEMORY[0x1E696AD98];
  IsSyncing = objc_msgSend_IMCloudKitIsSyncing(self, v8, v9);
  v140 = objc_msgSend_numberWithBool_(v7, v11, IsSyncing);
  v143[1] = v140;
  v142[2] = *MEMORY[0x1E69A6D50];
  v12 = MEMORY[0x1E696AD98];
  IsEligibleForTruthZone = objc_msgSend_IMCloudKitIsEligibleForTruthZone(self, v13, v14);
  v139 = objc_msgSend_numberWithBool_(v12, v16, IsEligibleForTruthZone);
  v143[2] = v139;
  v142[3] = *MEMORY[0x1E69A6D58];
  v17 = MEMORY[0x1E696AD98];
  v20 = objc_msgSend_IMCloudKitIsInExitState(self, v18, v19);
  v138 = objc_msgSend_numberWithBool_(v17, v21, v20);
  v143[3] = v138;
  v142[4] = *MEMORY[0x1E69A6D60];
  v22 = MEMORY[0x1E696AD98];
  IsRemovedFromBackup = objc_msgSend_IMCloudKitIsRemovedFromBackup(self, v23, v24);
  v137 = objc_msgSend_numberWithBool_(v22, v26, IsRemovedFromBackup);
  v143[4] = v137;
  v142[5] = *MEMORY[0x1E69A6DA0];
  v27 = MEMORY[0x1E696AD98];
  v30 = objc_msgSend_IMCloudKitStartingPeriodicSync(self, v28, v29);
  v136 = objc_msgSend_numberWithBool_(v27, v31, v30);
  v143[5] = v136;
  v142[6] = *MEMORY[0x1E69A6D98];
  v32 = MEMORY[0x1E696AD98];
  v35 = objc_msgSend_IMCloudKitStartingInitialSync(self, v33, v34);
  v135 = objc_msgSend_numberWithBool_(v32, v36, v35);
  v143[6] = v135;
  v142[7] = *MEMORY[0x1E69A6D90];
  v37 = MEMORY[0x1E696AD98];
  v40 = objc_msgSend_IMCloudKitStartingEnabledSettingChange(self, v38, v39);
  v134 = objc_msgSend_numberWithInteger_(v37, v41, v40);
  v143[7] = v134;
  v142[8] = *MEMORY[0x1E69A6D88];
  v42 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_IMCloudKitStartingDisableDevices(self, v43, v44);
  v133 = objc_msgSend_numberWithBool_(v42, v46, v45);
  v143[8] = v133;
  v142[9] = *MEMORY[0x1E69A6DB8];
  v47 = MEMORY[0x1E696AD98];
  v50 = objc_msgSend_IMCloudKitSyncControllerSyncState(self, v48, v49);
  v52 = objc_msgSend_numberWithUnsignedInteger_(v47, v51, v50);
  v143[9] = v52;
  v142[10] = *MEMORY[0x1E69A6DC0];
  v53 = MEMORY[0x1E696AD98];
  v56 = objc_msgSend_IMCloudKitSyncControllerSyncType(self, v54, v55);
  v58 = objc_msgSend_numberWithInteger_(v53, v57, v56);
  v143[10] = v58;
  v142[11] = *MEMORY[0x1E69A6DB0];
  v59 = MEMORY[0x1E696AD98];
  v62 = objc_msgSend_IMCloudKitSyncControllerSyncRecordType(self, v60, v61);
  v64 = objc_msgSend_numberWithInteger_(v59, v63, v62);
  v143[11] = v64;
  v142[12] = *MEMORY[0x1E69A6DE8];
  v65 = MEMORY[0x1E696AD98];
  v68 = objc_msgSend_IMCloudKitSyncPaused(self, v66, v67);
  v70 = objc_msgSend_numberWithBool_(v65, v69, v68);
  v143[12] = v70;
  v142[13] = *MEMORY[0x1E69A6DF0];
  v71 = MEMORY[0x1E696AD98];
  v74 = objc_msgSend_IMCloudKitSyncStatus(self, v72, v73);
  v76 = objc_msgSend_numberWithUnsignedInteger_(v71, v75, v74);
  v143[13] = v76;
  v142[14] = *MEMORY[0x1E69A6DE0];
  v77 = MEMORY[0x1E696AD98];
  v80 = objc_msgSend_IMCloudKitSyncJobState(self, v78, v79);
  v82 = objc_msgSend_numberWithUnsignedInteger_(v77, v81, v80);
  v143[14] = v82;
  v84 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v83, v143, v142, 15);
  v87 = objc_msgSend_mutableCopy(v84, v85, v86);

  v90 = objc_msgSend_IMCloudKitSyncDate(self, v88, v89);

  if (v90)
  {
    v93 = objc_msgSend_IMCloudKitSyncDate(self, v91, v92);
    objc_msgSend_setObject_forKey_(v87, v94, v93, *MEMORY[0x1E69A6DC8]);
  }

  v95 = objc_msgSend_IMCloudKitFullSyncCompletedDate(self, v91, v92);
  if (v95)
  {
  }

  else
  {
    v98 = objc_msgSend_IMCloudKitFullPartialSyncCompletedDate(self, v96, v97);

    if (!v98)
    {
      goto LABEL_11;
    }
  }

  v101 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v104 = objc_msgSend_IMCloudKitFullPartialSyncCompletedDate(self, v102, v103);

  if (v104)
  {
    v107 = MEMORY[0x1E696AD98];
    v108 = objc_msgSend_IMCloudKitFullPartialSyncCompletedDate(self, v105, v106);
    objc_msgSend_timeIntervalSince1970(v108, v109, v110);
    v113 = objc_msgSend_numberWithDouble_(v107, v111, v112);

    objc_msgSend_setObject_forKey_(v101, v114, v113, *MEMORY[0x1E69A6D28]);
  }

  v115 = objc_msgSend_IMCloudKitFullSyncCompletedDate(self, v105, v106);

  if (v115)
  {
    v118 = MEMORY[0x1E696AD98];
    v119 = objc_msgSend_IMCloudKitFullSyncCompletedDate(self, v116, v117);
    objc_msgSend_timeIntervalSince1970(v119, v120, v121);
    v124 = objc_msgSend_numberWithDouble_(v118, v122, v123);

    objc_msgSend_setObject_forKey_(v101, v125, v124, *MEMORY[0x1E69A6D30]);
  }

  objc_msgSend_setObject_forKey_(v87, v116, v101, *MEMORY[0x1E69A6D08]);

LABEL_11:
  v126 = objc_msgSend_IMCloudKitSyncErrors(self, v99, v100);

  if (v126)
  {
    v129 = objc_msgSend_IMCloudKitSyncErrors(self, v127, v128);
    objc_msgSend_setObject_forKey_(v87, v130, v129, *MEMORY[0x1E69A6DD8]);
  }

  v131 = *MEMORY[0x1E69E9840];

  return v87;
}

@end