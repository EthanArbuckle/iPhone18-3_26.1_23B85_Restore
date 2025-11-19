@interface CKDPowerLogger
+ (BOOL)isEnabled;
+ (id)sharedLogger;
- (id)zoneIDsToZoneNamesString:(id)a3;
- (void)logOperationCombinedMetrics:(id)a3 forOperationID:(id)a4 operationType:(int64_t)a5 operationGroupID:(id)a6 operationGroupName:(id)a7 operationGroupQuantity:(unint64_t)a8 operationQualityOfService:(int64_t)a9 backgroundTaskIdentifier:(id)a10 appContainerTuple:(id)a11;
@end

@implementation CKDPowerLogger

+ (BOOL)isEnabled
{
  v3 = objc_msgSend_currentProcess(CKDDaemonProcess, a2, v2);
  v6 = objc_msgSend_processType(v3, v4, v5);
  result = v6 != 2 && (objc_msgSend_currentProcess(CKDDaemonProcess, v7, v8), v9 = ;
  return result;
}

+ (id)sharedLogger
{
  if (qword_280D586A8 != -1)
  {
    dispatch_once(&qword_280D586A8, &unk_28385EAA0);
  }

  v3 = qword_280D586A0;

  return v3;
}

- (void)logOperationCombinedMetrics:(id)a3 forOperationID:(id)a4 operationType:(int64_t)a5 operationGroupID:(id)a6 operationGroupName:(id)a7 operationGroupQuantity:(unint64_t)a8 operationQualityOfService:(int64_t)a9 backgroundTaskIdentifier:(id)a10 appContainerTuple:(id)a11
{
  v257[38] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a10;
  v21 = a11;
  v255 = self;
  v22 = objc_opt_class();
  if (objc_msgSend_isEnabled(v22, v23, v24))
  {
    v27 = v20;
    v217 = objc_msgSend_cloudKitMetrics(v16, v25, v26);
    v254 = objc_msgSend_MMCSMetrics(v16, v28, v29);
    v251 = v18;
    v252 = v17;
    if (v17)
    {
      v31 = v17;
    }

    else
    {
      v31 = &stru_28385ED00;
    }

    v256[0] = @"operationID";
    v256[1] = @"operationGroupID";
    if (v18)
    {
      v32 = v18;
    }

    else
    {
      v32 = &stru_28385ED00;
    }

    v257[0] = v31;
    v257[1] = v32;
    v250 = v19;
    if (v19)
    {
      v33 = v19;
    }

    else
    {
      v33 = &stru_28385ED00;
    }

    v257[2] = v33;
    v256[2] = @"operationGroupName";
    v256[3] = @"operationGroupQuantity";
    v248 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v30, a8);
    v257[3] = v248;
    v256[4] = @"operationQualityOfService";
    v247 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v34, a9);
    v257[4] = v247;
    v256[5] = @"operationType";
    v246 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, a5);
    v257[5] = v246;
    v256[6] = @"containerIdentifier";
    v245 = objc_msgSend_containerID(v21, v36, v37);
    v40 = objc_msgSend_containerIdentifier(v245, v38, v39);
    v244 = v40;
    if (v40)
    {
      v43 = v40;
    }

    else
    {
      v43 = &stru_28385ED00;
    }

    v257[6] = v43;
    v256[7] = @"containerEnvironment";
    v44 = MEMORY[0x277CCABB0];
    v243 = objc_msgSend_containerID(v21, v41, v42);
    v47 = objc_msgSend_environment(v243, v45, v46);
    v242 = objc_msgSend_numberWithInteger_(v44, v48, v47);
    v257[7] = v242;
    v256[8] = @"bundleIdentifier";
    v241 = objc_msgSend_applicationID(v21, v49, v50);
    v53 = objc_msgSend_applicationBundleIdentifier(v241, v51, v52);
    v240 = v53;
    if (v53)
    {
      v56 = v53;
    }

    else
    {
      v56 = &stru_28385ED00;
    }

    v257[8] = v56;
    v256[9] = @"sourceAppBundleIdentifier";
    v249 = v21;
    v239 = objc_msgSend_applicationID(v21, v54, v55);
    v59 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v239, v57, v58);
    v238 = v59;
    if (v59)
    {
      v62 = v59;
    }

    else
    {
      v62 = &stru_28385ED00;
    }

    if (v20)
    {
      v63 = v20;
    }

    else
    {
      v63 = &stru_28385ED00;
    }

    v257[9] = v62;
    v257[10] = v63;
    v256[10] = @"xpcActivityIdentifier";
    v256[11] = @"CKStartDate";
    v66 = objc_msgSend_startDate(v217, v60, v61);
    v237 = v66;
    if (!v66)
    {
      v66 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v64, v65);
    }

    v216 = v66;
    v257[11] = v66;
    v256[12] = @"CKDuration";
    v67 = MEMORY[0x277CCABB0];
    objc_msgSend_duration(v217, v64, v65);
    v236 = objc_msgSend_numberWithUnsignedInteger_(v67, v69, v68);
    v257[12] = v236;
    v256[13] = @"CKBytesUploaded";
    v70 = MEMORY[0x277CCABB0];
    v73 = objc_msgSend_bytesUploaded(v217, v71, v72);
    v235 = objc_msgSend_numberWithUnsignedInteger_(v70, v74, v73);
    v257[13] = v235;
    v256[14] = @"CKBytesDownloaded";
    v75 = MEMORY[0x277CCABB0];
    v78 = objc_msgSend_bytesDownloaded(v217, v76, v77);
    v234 = objc_msgSend_numberWithUnsignedInteger_(v75, v79, v78);
    v257[14] = v234;
    v256[15] = @"CKConnections";
    v80 = MEMORY[0x277CCABB0];
    v83 = objc_msgSend_connections(v217, v81, v82);
    v233 = objc_msgSend_numberWithUnsignedInteger_(v80, v84, v83);
    v257[15] = v233;
    v256[16] = @"CKConnectionsCreated";
    v85 = MEMORY[0x277CCABB0];
    v88 = objc_msgSend_connectionsCreated(v217, v86, v87);
    v232 = objc_msgSend_numberWithUnsignedInteger_(v85, v89, v88);
    v257[16] = v232;
    v256[17] = @"CKRecordsUploaded";
    v90 = MEMORY[0x277CCABB0];
    v93 = objc_msgSend_recordsUploaded(v217, v91, v92);
    v231 = objc_msgSend_numberWithUnsignedInteger_(v90, v94, v93);
    v257[17] = v231;
    v256[18] = @"CKRecordsDownloaded";
    v95 = MEMORY[0x277CCABB0];
    v98 = objc_msgSend_recordsDownloaded(v217, v96, v97);
    v230 = objc_msgSend_numberWithUnsignedInteger_(v95, v99, v98);
    v257[18] = v230;
    v256[19] = @"CKRecordsDeleted";
    v100 = MEMORY[0x277CCABB0];
    v103 = objc_msgSend_recordsDeleted(v217, v101, v102);
    v229 = objc_msgSend_numberWithUnsignedInteger_(v100, v104, v103);
    v257[19] = v229;
    v256[20] = @"CKAssetsUploaded";
    v105 = MEMORY[0x277CCABB0];
    v108 = objc_msgSend_assetsUploaded(v217, v106, v107);
    v228 = objc_msgSend_numberWithUnsignedInteger_(v105, v109, v108);
    v257[20] = v228;
    v256[21] = @"CKAssetsUploadedFileSize";
    v110 = MEMORY[0x277CCABB0];
    v113 = objc_msgSend_assetsUploadedFileSize(v217, v111, v112);
    v227 = objc_msgSend_numberWithUnsignedInteger_(v110, v114, v113);
    v257[21] = v227;
    v256[22] = @"CKAssetsDownloaded";
    v115 = MEMORY[0x277CCABB0];
    v118 = objc_msgSend_assetsDownloaded(v217, v116, v117);
    v226 = objc_msgSend_numberWithUnsignedInteger_(v115, v119, v118);
    v257[22] = v226;
    v256[23] = @"CKAssetsDownloadedFileSize";
    v120 = MEMORY[0x277CCABB0];
    v123 = objc_msgSend_assetsDownloadedFileSize(v217, v121, v122);
    v225 = objc_msgSend_numberWithUnsignedInteger_(v120, v124, v123);
    v257[23] = v225;
    v256[24] = @"CKRetries";
    v125 = MEMORY[0x277CCABB0];
    v128 = objc_msgSend_retries(v217, v126, v127);
    v224 = objc_msgSend_numberWithUnsignedInteger_(v125, v129, v128);
    v257[24] = v224;
    v256[25] = @"CKNumberOfRequests";
    v130 = MEMORY[0x277CCABB0];
    v133 = objc_msgSend_requestCount(v217, v131, v132);
    v223 = objc_msgSend_numberWithUnsignedInteger_(v130, v134, v133);
    v257[25] = v223;
    v256[26] = @"CKProtoRequestOperationsByCount";
    v137 = objc_msgSend_requestOperationCountsByType(v217, v135, v136);
    v222 = v137;
    if (v137)
    {
      v140 = v137;
    }

    else
    {
      v140 = MEMORY[0x277CBEC10];
    }

    v141 = MEMORY[0x277CBEC10];
    v257[26] = v140;
    v256[27] = @"MMCSDuration";
    v142 = MEMORY[0x277CCABB0];
    objc_msgSend_duration(v254, v138, v139);
    v221 = objc_msgSend_numberWithUnsignedInteger_(v142, v144, v143);
    v257[27] = v221;
    v256[28] = @"MMCSBytesUploaded";
    v145 = MEMORY[0x277CCABB0];
    v148 = objc_msgSend_bytesUploaded(v254, v146, v147);
    v220 = objc_msgSend_numberWithUnsignedInteger_(v145, v149, v148);
    v257[28] = v220;
    v256[29] = @"MMCSBytesDownloaded";
    v150 = MEMORY[0x277CCABB0];
    v153 = objc_msgSend_bytesDownloaded(v254, v151, v152);
    v219 = objc_msgSend_numberWithUnsignedInteger_(v150, v154, v153);
    v257[29] = v219;
    v256[30] = @"MMCSConnections";
    v155 = MEMORY[0x277CCABB0];
    v158 = objc_msgSend_connections(v254, v156, v157);
    v218 = objc_msgSend_numberWithUnsignedInteger_(v155, v159, v158);
    v257[30] = v218;
    v256[31] = @"MMCSConnectionsCreated";
    v160 = MEMORY[0x277CCABB0];
    v163 = objc_msgSend_connectionsCreated(v254, v161, v162);
    v165 = objc_msgSend_numberWithUnsignedInteger_(v160, v164, v163);
    v257[31] = v165;
    v256[32] = @"MMCSBytesFulfilledLocally";
    v166 = MEMORY[0x277CCABB0];
    v169 = objc_msgSend_bytesFulfilledLocally(v254, v167, v168);
    v171 = objc_msgSend_numberWithUnsignedLongLong_(v166, v170, v169);
    v257[32] = v171;
    v256[33] = @"MMCSBytesResumed";
    v172 = MEMORY[0x277CCABB0];
    v175 = objc_msgSend_bytesResumed(v254, v173, v174);
    v177 = objc_msgSend_numberWithUnsignedLongLong_(v172, v176, v175);
    v257[33] = v177;
    v256[34] = @"MMCSNumberOfRequests";
    v178 = MEMORY[0x277CCABB0];
    v181 = objc_msgSend_requestCount(v254, v179, v180);
    v183 = objc_msgSend_numberWithUnsignedInteger_(v178, v182, v181);
    v257[34] = v183;
    v256[35] = @"MMCSTotalBytesByChunkProfile";
    v186 = objc_msgSend_totalBytesByChunkProfile(v254, v184, v185);
    v189 = v186;
    v190 = v141;
    if (v186)
    {
      v191 = v186;
    }

    else
    {
      v191 = v141;
    }

    v257[35] = v191;
    v256[36] = @"MMCSChunkCountByChunkProfile";
    v192 = objc_msgSend_chunkCountByChunkProfile(v254, v187, v188);
    v195 = v192;
    if (v192)
    {
      v196 = v192;
    }

    else
    {
      v196 = v190;
    }

    v197 = v190;
    v257[36] = v196;
    v256[37] = @"MMCSFileCountByChunkProfile";
    v198 = objc_msgSend_fileCountByChunkProfile(v254, v193, v194);
    v200 = v198;
    if (v198)
    {
      v201 = v198;
    }

    else
    {
      v201 = v197;
    }

    v257[37] = v201;
    v202 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v199, v257, v256, 38);

    if (!v237)
    {
    }

    v205 = objc_msgSend_zoneIDs(v217, v203, v204);
    v207 = objc_msgSend_zoneIDsToZoneNamesString_(v255, v206, v205);

    if (v207)
    {
      v210 = objc_msgSend_mutableCopy(v202, v208, v209);
      objc_msgSend_setObject_forKeyedSubscript_(v210, v211, v207, @"ZoneNames");
      v214 = objc_msgSend_copy(v210, v212, v213);

      v202 = v214;
    }

    v17 = v252;
    v19 = v250;
    v18 = v251;
    v20 = v27;
    PLLogRegisteredEvent();

    v21 = v249;
  }

  v215 = *MEMORY[0x277D85DE8];
}

- (id)zoneIDsToZoneNamesString:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (CKMainBundleIsAppleExecutable())
  {
    if (objc_msgSend_count(v3, v4, v5))
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v7 = v3;
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v37, v41, 16);
      if (v9)
      {
        v12 = v9;
        v13 = *v38;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v38 != v13)
            {
              objc_enumerationMutation(v7);
            }

            v15 = objc_msgSend_zoneName(*(*(&v37 + 1) + 8 * i), v10, v11);
            objc_msgSend_addObject_(v6, v16, v15);
          }

          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v37, v41, 16);
        }

        while (v12);
      }

      v19 = objc_msgSend_allObjects(v6, v17, v18);
      v21 = objc_msgSend_sortedArrayUsingSelector_(v19, v20, sel_localizedCaseInsensitiveCompare_);

      v23 = objc_msgSend_componentsJoinedByString_(v21, v22, @",");
      v24 = MEMORY[0x277CCACA8];
      v27 = objc_msgSend_count(v7, v25, v26);
      v29 = objc_msgSend_stringWithFormat_(v24, v28, @"zoneNames:%lu:%@", v27, v23, v37);
      if (objc_msgSend_length(v29, v30, v31) < 0x101)
      {
        v33 = v29;
      }

      else
      {
        v33 = objc_msgSend_substringToIndex_(v29, v32, 256);
      }

      v34 = v33;
    }

    else
    {
      v34 = &stru_28385ED00;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

@end