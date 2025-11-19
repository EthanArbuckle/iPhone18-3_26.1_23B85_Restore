@interface _DKSyncRapportKnowledgeStorage
+ (id)sharedInstance;
- (id)changeSetFromCompressedData:(void *)a3 deviceIdentifier:(NSObject *)a4 sequenceNumber:;
- (void)fetchAdditionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)fetchDeletedEventIDsFromPeer:(id)a3 sinceDate:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 highPriority:(BOOL)a7 completion:(id)a8;
- (void)fetchDeletionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5;
- (void)fetchEventsFromPeer:(id)a3 windows:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 fetchOrder:(int64_t)a7 highPriority:(BOOL)a8 completion:(id)a9;
- (void)handleFetchDeletedEventIDsWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleFetchDeletedEventIDsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)handleFetchEventsWithRequest:(void *)a3 options:(void *)a4 responseHandler:;
- (void)handleFetchEventsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:;
- (void)handleUnexpectedRequest:fromPeer:;
- (void)handleUnexpectedResponse:fromPeer:;
- (void)prewarmFetchWithCompletion:(id)a3;
- (void)registerRequestIDsWithClient:(id)a3;
- (void)setFetchDelegate:(id)a3;
- (void)updateStorageWithAddedEvents:(id)a3 deletedEventIDs:(id)a4 highPriority:(BOOL)a5 completion:(id)a6;
@end

@implementation _DKSyncRapportKnowledgeStorage

+ (id)sharedInstance
{
  if (sharedInstance_initialized_223 != -1)
  {
    +[_DKSyncRapportKnowledgeStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_224;

  return v3;
}

- (void)registerRequestIDsWithClient:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___DKSyncRapportKnowledgeStorage_registerRequestIDsWithClient___block_invoke;
  v6[3] = &unk_1E736AC88;
  v6[4] = self;
  v4 = a3;
  [v4 registerRequestID:@"com.apple.coreduet.fetch-events" options:0 handler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63___DKSyncRapportKnowledgeStorage_registerRequestIDsWithClient___block_invoke_2;
  v5[3] = &unk_1E736AC88;
  v5[4] = self;
  [v4 registerRequestID:@"com.apple.coreduet.fetch-deleted-event-ids" options:0 handler:v5];
}

- (void)handleFetchEventsWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v168 = *MEMORY[0x1E69E9840];
  v129 = a2;
  v124 = a3;
  v123 = a4;
  v145 = a1;
  if (a1)
  {
    v8 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v8);

    v127 = [MEMORY[0x1E695DF00] date];
    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
    }

    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
    }

    v125 = objc_opt_new();
    v121 = [v129 objectForKeyedSubscript:@"version"];
    v136 = [v121 integerValue];
    v11 = [v129 objectForKeyedSubscript:@"compatibility"];
    v120 = [_DKCompatibility compatibilityFromSerializedCompatibility:v11];

    v122 = +[_DKSyncPeerStatusTracker sharedInstance];
    v119 = [v124 objectForKeyedSubscript:@"senderIDS"];
    v128 = [v122 existingPeerWithIDSDeviceIdentifier:?];
    if (v128)
    {
      v12 = [v128 version];
      v13 = [v121 isEqualToString:v12];

      if ((v13 & 1) == 0)
      {
        [_DKSyncRapportKnowledgeStorage handleUnexpectedRequest:fromPeer:];
      }
    }

    if (*(a1 + 24))
    {
      v14 = [v129 objectForKeyedSubscript:@"queries"];
      v144 = [v129 objectForKeyedSubscript:@"limit"];
      if (v136 >= 3)
      {
        v15 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
        }
      }

      v141 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v149 objects:v167 count:16];
      v17 = 0;
      if (v16)
      {
        v137 = 0;
        v133 = *v150;
LABEL_16:
        v131 = v16;
        v18 = 0;
        v19 = v17;
        while (1)
        {
          v142 = v19;
          if (*v150 != v133)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v149 + 1) + 8 * v18);
          v21 = [v20 objectForKeyedSubscript:@"startDate"];
          v22 = [v20 objectForKeyedSubscript:@"endDate"];
          v23 = [v20 objectForKeyedSubscript:@"streamNames"];
          if (v136 <= 2)
          {
            v24 = [v20 objectForKeyedSubscript:@"limit"];

            v144 = v24;
          }

          v25 = [v145 policy];
          v26 = [v145[3] syncType];
          v27 = [v25 streamNamesToSyncWithSyncType:v26 transportType:{objc_msgSend(v145, "transportType")}];

          v28 = [v27 arrayByAddingObjectsFromArray:&unk_1F05EF740];

          v29 = [v28 arrayByAddingObject:@"/device/isLocked"];

          v30 = [MEMORY[0x1E695DFA8] setWithArray:v23];
          v31 = [MEMORY[0x1E695DFD8] setWithArray:v29];
          [v30 intersectSet:v31];

          v32 = [v30 allObjects];
          LOBYTE(v26) = [v32 isEqual:v23];

          if ((v26 & 1) == 0)
          {
            v33 = [MEMORY[0x1E695DFA8] setWithArray:v23];
            v34 = [MEMORY[0x1E695DFD8] setWithArray:v29];
            [v33 minusSet:v34];

            v35 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v4 = [objc_opt_class() description];
              v36 = [v33 allObjects];
              buf = 138543618;
              v156 = v4;
              v157 = 2112;
              v158 = v36;
              _os_log_impl(&dword_191750000, v35, OS_LOG_TYPE_INFO, "%{public}@: Ignoring request for disabled streams: %@", &buf, 0x16u);
            }
          }

          v17 = [v30 allObjects];

          v37 = !v21 || v22 == 0;
          v38 = v37 || v23 == 0;
          v39 = v38 || v144 == 0;
          v40 = !v39;
          if (v39)
          {

            +[_DKSyncErrors invalidRequest];
            v137 = v41 = v137;
            v141 = 0;
          }

          else
          {
            v41 = [_DKSyncWindow syncWindowWithStartDate:v21 endDate:v22];
            [v141 addObject:v41];
          }

          if (!v40)
          {
            break;
          }

          ++v18;
          v19 = v17;
          if (v131 == v18)
          {
            v16 = [obj countByEnumeratingWithState:&v149 objects:v167 count:16];
            if (v16)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      else
      {
        v137 = 0;
      }

      if ([v141 count] && objc_msgSend(v17, "count") && v144)
      {
        v43 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v61 = [objc_opt_class() description];
          v62 = _DKSyncLoggingWindowsDescription(v141);
          v63 = _CDPrettyPrintCollection(v17, 0, 0, 0);
          buf = 138544130;
          v156 = v61;
          v157 = 2112;
          v158 = v144;
          v159 = 2114;
          v160 = v62;
          v161 = 2114;
          v162 = v63;
          _os_log_debug_impl(&dword_191750000, v43, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch events request for up to %@ events in windows %{public}@ for streams %{public}@", &buf, 0x2Au);
        }

        v44 = [v144 unsignedIntegerValue];
        v45 = v44;
        if (v44 <= 1)
        {
          v46 = v44;
        }

        else
        {
          v46 = v44 + 1;
        }

        v47 = v145[3];
        v148 = v137;
        v48 = [v47 sortedEventsFromSyncWindows:v141 streamNames:v17 compatibility:v120 limit:v46 fetchOrder:2 error:&v148];
        v49 = v148;

        if (v49)
        {
          v50 = MEMORY[0x1E696ABC0];
          v134 = [v49 domain];
          v51 = [v50 errorWithDomain:v134 code:objc_msgSend(v49 userInfo:{"code"), 0}];

          v143 = 1;
          v138 = v51;
        }

        else
        {
          if (v45 >= 2 && [v48 count] == v45 + 1)
          {
            if ([v48 count])
            {
              v52 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v101 = [objc_opt_class() description];
                v102 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
                v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v48, "count") - 1}];
                buf = 138543874;
                v156 = v101;
                v157 = 2112;
                v158 = v102;
                v159 = 2112;
                v160 = v103;
                _os_log_debug_impl(&dword_191750000, v52, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ events but hit limit so using only %@ of those events", &buf, 0x20u);
              }

              v53 = [v48 subarrayWithRange:{0, objc_msgSend(v48, "count") - 1}];

              v54 = 1;
              v48 = v53;
            }

            else
            {
              v54 = 1;
            }
          }

          else
          {
            v54 = 0;
          }

          v147 = 0;
          v135 = [(_DKSyncRapportKnowledgeStorage *)v145 changeSetForSyncWithEventsToInsert:v48 eventIDsToDeletes:0 error:&v147];
          v139 = v147;
          if (v139)
          {
            v55 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v98 = [objc_opt_class() description];
              v99 = [v139 domain];
              v100 = [v139 code];
              buf = 138544130;
              v156 = v98;
              v157 = 2114;
              v158 = v99;
              v159 = 2048;
              v160 = v100;
              v161 = 2112;
              v162 = v139;
              _os_log_error_impl(&dword_191750000, v55, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create change set: %{public}@:%lld (%@)", &buf, 0x2Au);
            }

            v56 = MEMORY[0x1E696ABC0];
            v57 = [v139 domain];
            v58 = [v56 errorWithDomain:v57 code:objc_msgSend(v139 userInfo:{"code"), 0}];

            v143 = 1;
            v138 = v58;
          }

          else
          {
            v146 = 0;
            v59 = [v135 eventsToAdd];
            v143 = [v59 count] == 0;

            if (v143)
            {
              v60 = objc_opt_new();
            }

            else
            {
              v60 = [(_DKSyncRapportKnowledgeStorage *)v145 dataFromChangeSet:v135 didCompress:&v146];
            }

            v132 = v60;
            if (v60)
            {
              if (v146)
              {
                v64 = @"compressedEvents";
              }

              else
              {
                v64 = @"encodedEvents";
              }

              v140 = v64;
              if (v136 > 2)
              {
                if (v54)
                {
                  v73 = [_DKSyncWindow completedWindowsWithSortedEvents:v48 windows:v141 fetchOrder:2 fillOrder:1 hitLimit:1];
                }

                else
                {
                  v73 = v141;
                }

                v66 = v73;
                [v125 setObject:v132 forKeyedSubscript:v140];
                v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v135, "sequenceNumber")}];
                [v125 setObject:v74 forKeyedSubscript:@"sequenceNumber"];
                v75 = [_DKSyncWindow dictionaryArrayFromWindows:v66];
                [v125 setObject:v75 forKeyedSubscript:@"completedWindows"];

                if (v54)
                {
                  v76 = MEMORY[0x1E695E118];
                }

                else
                {
                  v76 = MEMORY[0x1E695E110];
                }

                [v125 setObject:v76 forKeyedSubscript:@"didHitLimit"];
              }

              else
              {
                v65 = [obj firstObject];
                v66 = v65;
                if (v54)
                {
                  v67 = +[_CDLogging syncChannel];
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    v104 = [objc_opt_class() description];
                    v105 = [v66 objectForKeyedSubscript:@"startDate"];
                    v106 = [(NSDate *)v105 dk_localtimeString];
                    v107 = [(NSDate *)0 dk_localtimeString];
                    buf = 138543874;
                    v156 = v104;
                    v157 = 2114;
                    v158 = v106;
                    v159 = 2114;
                    v160 = v107;
                    _os_log_debug_impl(&dword_191750000, v67, OS_LOG_TYPE_DEBUG, "%{public}@: Shrinking window start date from %{public}@ to %{public}@ due to hit limit", &buf, 0x20u);
                  }

                  v68 = [v48 lastObject];
                  v69 = [v68 creationDate];

                  v70 = [v66 objectForKeyedSubscript:@"endDate"];
                }

                else
                {
                  v69 = [v65 objectForKeyedSubscript:@"startDate"];
                  v70 = [v66 objectForKeyedSubscript:@"endDate"];
                }

                v75 = v70;
                v166[0] = v132;
                v165[0] = v140;
                v165[1] = @"sequenceNumber";
                v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v135, "sequenceNumber")}];
                v166[1] = v77;
                v166[2] = v69;
                v165[2] = @"windowStartDate";
                v165[3] = @"windowEndDate";
                v166[3] = v75;
                v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:v165 count:4];
                [v125 setObject:v78 forKeyedSubscript:v66];
              }

              v79 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
              {
                v112 = [objc_opt_class() description];
                v80 = MEMORY[0x1E696AD98];
                v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
                v126 = +[_DKSyncPeerStatusTracker sharedInstance];
                v118 = [v129 objectForKeyedSubscript:@"client"];
                v117 = [v126 existingPeerWithSourceDeviceID:v118];
                v81 = [v117 me];
                v82 = @"pseudo ";
                if (!v81)
                {
                  v82 = &stru_1F05B9908;
                }

                v109 = v82;
                v116 = +[_DKSyncPeerStatusTracker sharedInstance];
                v115 = [v129 objectForKeyedSubscript:@"client"];
                v114 = [v116 existingPeerWithSourceDeviceID:v115];
                v110 = [v114 identifier];
                v113 = +[_DKSyncPeerStatusTracker sharedInstance];
                v83 = [v129 objectForKeyedSubscript:@"client"];
                v84 = [v113 existingPeerWithSourceDeviceID:v83];
                v85 = [v84 model];
                if (v85)
                {
                  v86 = MEMORY[0x1E696AEC0];
                  v108 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v80 = [v129 objectForKeyedSubscript:@"client"];
                  v75 = [v108 existingPeerWithSourceDeviceID:v80];
                  v4 = [v75 model];
                  v87 = [v86 stringWithFormat:@" (%@)", v4];
                }

                else
                {
                  v87 = &stru_1F05B9908;
                }

                buf = 138544386;
                v156 = v112;
                v157 = 2112;
                v158 = v111;
                v159 = 2114;
                v160 = v109;
                v161 = 2114;
                v162 = v110;
                v163 = 2114;
                v164 = v87;
                _os_log_impl(&dword_191750000, v79, OS_LOG_TYPE_INFO, "%{public}@: Sending %@ events to %{public}@peer %{public}@%{public}@", &buf, 0x34u);
                if (v85)
                {
                }
              }

              v138 = 0;
              v72 = v132;
            }

            else
            {
              v71 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                [objc_opt_class() description];
                objc_claimAutoreleasedReturnValue();
                [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
              }

              v138 = +[_DKSyncErrors internalFailure];
              v72 = 0;
            }
          }
        }
      }

      else
      {
        +[_DKSyncErrors invalidRequest];
        v143 = 1;
        v138 = v48 = v137;
      }
    }

    else
    {
      v42 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
      }

      v138 = +[_DKSyncErrors internalFailure];
      v143 = 1;
    }

    v88 = [v145 myDeviceID];
    v89 = v88;
    v90 = &stru_1F05B9908;
    if (v88)
    {
      v90 = v88;
    }

    v91 = v90;

    v153[0] = @"server";
    v153[1] = @"results";
    v154[0] = v91;
    v154[1] = v125;
    v153[2] = @"version";
    v92 = @"3.0";
    if (v136 < 3)
    {
      v92 = @"1.0";
    }

    v154[2] = v92;
    v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:3];
    v94 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
    }

    v123[2](v123, v93, 0);
    if (v127)
    {
      v95 = [MEMORY[0x1E695DF00] date];
      v96 = [v145[3] syncType];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v96, [v145 transportType], v127, v95, v143);
    }
  }

  v97 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchDeletedEventIDsWithRequest:(void *)a3 options:(void *)a4 responseHandler:
{
  v109 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v56 = a3;
  v57 = a4;
  v82 = a1;
  if (a1)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    v58 = [MEMORY[0x1E695DF00] date];
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v65 = objc_opt_new();
    if (*(a1 + 24))
    {
      [v78 objectForKeyedSubscript:@"queries"];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      obj = v90 = 0u;
      v10 = [obj countByEnumeratingWithState:&v89 objects:v108 count:16];
      v11 = 0;
      if (!v10)
      {
        v66 = 1;
        goto LABEL_56;
      }

      v66 = 1;
      v83 = *v90;
      while (1)
      {
        v84 = v10;
        for (i = 0; i != v84; ++i)
        {
          if (*v90 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v89 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"sinceDate"];
          v15 = [v13 objectForKeyedSubscript:@"streamNames"];
          v16 = [v13 objectForKeyedSubscript:@"limit"];
          v17 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v26 = [objc_opt_class() description];
            v27 = [(NSDate *)v14 dk_localtimeString];
            v28 = _CDPrettyPrintCollection(v15, 0, 0, 0);
            *buf = 138544130;
            v99 = v26;
            v100 = 2112;
            v101 = v16;
            v102 = 2114;
            v103 = v27;
            v104 = 2114;
            v105 = v28;
            _os_log_debug_impl(&dword_191750000, v17, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch deleted event ids request for up to %@ deletions since %{public}@ for streams %{public}@", buf, 0x2Au);
          }

          if (!v14 || !v15)
          {
            +[_DKSyncErrors invalidRequest];
            v11 = v19 = v11;
            goto LABEL_49;
          }

          if (v16)
          {
            v18 = [v16 unsignedIntegerValue];
          }

          else
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v20 = v82[3];
          v87 = v11;
          v88 = 0;
          v85 = [v20 deletedEventIDsSinceDate:v14 streamNames:v15 limit:v18 endDate:&v88 error:&v87];
          v19 = v88;
          v21 = v87;

          if (v21)
          {
            v11 = +[_DKSyncErrors internalFailure];
          }

          else
          {
            v86 = 0;
            v21 = [(_DKSyncRapportKnowledgeStorage *)v82 changeSetForSyncWithEventsToInsert:v85 eventIDsToDeletes:&v86 error:?];
            v22 = v86;
            if (!v22)
            {
              v95[0] = 0;
              v25 = [v21 eventsToAdd];
              if ([v25 count])
              {

                goto LABEL_29;
              }

              v29 = [v21 eventIDsToDelete];
              v30 = [v29 count] == 0;

              if (v30)
              {
                v80 = objc_opt_new();
              }

              else
              {
LABEL_29:
                v80 = [(_DKSyncRapportKnowledgeStorage *)v82 dataFromChangeSet:v21 didCompress:v95];
                v66 = 0;
              }

              if (v80)
              {
                log = +[_CDLogging syncChannel];
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  v68 = [objc_opt_class() description];
                  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v85, "count")}];
                  v77 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v76 = [v78 objectForKeyedSubscript:@"client"];
                  v75 = [v77 existingPeerWithSourceDeviceID:v76];
                  v31 = [v75 me];
                  v32 = &stru_1F05B9908;
                  if (v31)
                  {
                    v32 = @"pseudo ";
                  }

                  v64 = v32;
                  v74 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v73 = [v78 objectForKeyedSubscript:@"client"];
                  v72 = [v74 existingPeerWithSourceDeviceID:v73];
                  v33 = [v72 identifier];
                  v71 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v70 = [v78 objectForKeyedSubscript:@"client"];
                  v69 = [v71 existingPeerWithSourceDeviceID:v70];
                  v34 = [v69 model];
                  if (v34)
                  {
                    v35 = MEMORY[0x1E696AEC0];
                    v63 = +[_DKSyncPeerStatusTracker sharedInstance];
                    v62 = [v78 objectForKeyedSubscript:@"client"];
                    v61 = [v63 existingPeerWithSourceDeviceID:v62];
                    v60 = [v61 model];
                    v59 = [v35 stringWithFormat:@" (%@)", v60];
                    v36 = v59;
                  }

                  else
                  {
                    v36 = &stru_1F05B9908;
                  }

                  *buf = 138544386;
                  v99 = v68;
                  v100 = 2112;
                  v101 = v67;
                  v102 = 2114;
                  v103 = v64;
                  v104 = 2114;
                  v105 = v33;
                  v106 = 2114;
                  v107 = v36;
                  _os_log_impl(&dword_191750000, log, OS_LOG_TYPE_INFO, "%{public}@: Sending %@ deletions to %{public}@peer %{public}@%{public}@", buf, 0x34u);
                  if (v34)
                  {
                  }
                }

                v38 = @"encodedDeletedEventIDs";
                if (v95[0])
                {
                  v38 = @"compressedDeletedEventIDs";
                }

                v39 = v38;
                v97[0] = v80;
                v96[0] = v39;
                v96[1] = @"sequenceNumber";
                v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "sequenceNumber")}];
                v97[1] = v40;
                v97[2] = v14;
                v96[2] = @"sinceDate";
                v96[3] = @"untilDate";
                v97[3] = v19;
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:4];
                [v65 setObject:v41 forKeyedSubscript:v13];

                v11 = 0;
              }

              else
              {
                v37 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v45 = [objc_opt_class() description];
                  *buf = 138543618;
                  v99 = v45;
                  v100 = 2112;
                  v101 = v21;
                  _os_log_error_impl(&dword_191750000, v37, OS_LOG_TYPE_ERROR, "%{public}@: Failed to encode change set as protobuf: %@", buf, 0x16u);
                }

                v11 = +[_DKSyncErrors internalFailure];
              }

              goto LABEL_48;
            }

            v23 = v22;
            v24 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v42 = [objc_opt_class() description];
              v43 = [v23 domain];
              v44 = [v23 code];
              *buf = 138544130;
              v99 = v42;
              v100 = 2114;
              v101 = v43;
              v102 = 2048;
              v103 = v44;
              v104 = 2112;
              v105 = v23;
              _os_log_error_impl(&dword_191750000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create change set: %{public}@:%lld (%@)", buf, 0x2Au);
            }

            v11 = +[_DKSyncErrors internalFailure];
          }

LABEL_48:

LABEL_49:
        }

        v10 = [obj countByEnumeratingWithState:&v89 objects:v108 count:16];
        if (!v10)
        {
LABEL_56:

          goto LABEL_57;
        }
      }
    }

    v46 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v11 = +[_DKSyncErrors internalFailure];
    v66 = 1;
LABEL_57:
    v47 = [v82 myDeviceID];
    v48 = v47;
    v49 = &stru_1F05B9908;
    if (v47)
    {
      v49 = v47;
    }

    v50 = v49;

    v93[0] = @"server";
    v93[1] = @"results";
    v94[0] = v50;
    v94[1] = v65;
    v93[2] = @"version";
    v94[2] = @"1.0";
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:3];
    v52 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v57[2](v57, v51, 0, v11);
    if (v58)
    {
      v53 = [MEMORY[0x1E695DF00] date];
      v54 = [v82[3] syncType];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v54, [v82 transportType], v58, v53, v66 & 1);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)prewarmFetchWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)fetchEventsFromPeer:(id)a3 windows:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 fetchOrder:(int64_t)a7 highPriority:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v100[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v67 = a4;
  v72 = a5;
  v14 = a9;
  v15 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [(_DKSyncRapportStorage *)self myDeviceID];
  v17 = [v13 version];
  v71 = [v17 integerValue];

  if (-[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([v13 idsDeviceIdentifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v19 = v18, v20 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", v13), v19, v20))
  {
    [MEMORY[0x1E695DF00] date];
    v63 = v16;
    v64 = v13;
    v65 = self;
    v60 = v62 = v9;
    v61 = v14;
    if (v71 <= 2)
    {
      if ([v67 count] < 2)
      {
        v21 = v67;
      }

      else
      {
        v25 = [v67 lastObject];
        v100[0] = v25;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:1];

        v26 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v70 = [objc_opt_class() description];
          v51 = [v64 me];
          v52 = @"pseudo ";
          v53 = &stru_1F05B9908;
          if (!v51)
          {
            v52 = &stru_1F05B9908;
          }

          v68 = v52;
          v54 = [v64 identifier];
          v55 = [v64 model];
          if (v55)
          {
            v56 = MEMORY[0x1E696AEC0];
            v59 = [v64 model];
            v53 = [v56 stringWithFormat:@" (%@)", v59];
          }

          v57 = [v21 firstObject];
          v58 = [v57 debugDescription];
          *buf = 138544386;
          v91 = v70;
          v92 = 2114;
          v93 = v68;
          v94 = 2114;
          v95 = v54;
          v96 = 2114;
          v97 = v53;
          v98 = 2114;
          v99 = v58;
          _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Only sending a single window to v1 %{public}@peer %{public}@%{public}@: window %{public}@", buf, 0x34u);

          if (v55)
          {
          }
        }
      }
    }

    else
    {
      v21 = v67;
    }

    v69 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v27 = v21;
    v28 = [v27 countByEnumeratingWithState:&v79 objects:v89 count:16];
    v67 = v27;
    if (v28)
    {
      v29 = v28;
      v30 = *v80;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v80 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v79 + 1) + 8 * i);
          v33 = [(_DKSyncWindow *)v32 startDate];
          v34 = [(_DKSyncType *)v32 urgency];
          v35 = v34;
          if (v71 < 3)
          {
            v87[0] = @"startDate";
            v87[1] = @"endDate";
            v88[0] = v33;
            v88[1] = v34;
            v88[2] = v72;
            v87[2] = @"streamNames";
            v87[3] = @"limit";
            v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
            v88[3] = v37;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:4];

            v27 = v67;
          }

          else
          {
            v85[0] = @"startDate";
            v85[1] = @"endDate";
            v86[0] = v33;
            v86[1] = v34;
            v85[2] = @"streamNames";
            v86[2] = v72;
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
          }

          [v69 addObject:v36];
        }

        v29 = [v27 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v29);
    }

    v16 = v63;
    v38 = &stru_1F05B9908;
    if (v63)
    {
      v39 = v63;
    }

    else
    {
      v39 = &stru_1F05B9908;
    }

    v83[0] = @"client";
    v83[1] = @"queries";
    v22 = v69;
    v84[0] = v39;
    v84[1] = v69;
    v83[2] = @"limit";
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
    v84[2] = v40;
    v84[3] = @"3.0";
    v83[3] = @"version";
    v83[4] = @"compatibility";
    v41 = +[_DKCompatibility currentCompatibility];
    v42 = [v41 serialize];
    v84[4] = v42;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:5];

    v43 = +[_CDLogging syncChannel];
    v13 = v64;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v46 = [objc_opt_class() description];
      if ([v64 me])
      {
        v38 = @"pseudo ";
      }

      v47 = [v64 identifier];
      v48 = [v64 model];
      if (v48)
      {
        v50 = MEMORY[0x1E696AEC0];
        v22 = [v64 model];
        v49 = [v50 stringWithFormat:@" (%@)", v22];
      }

      else
      {
        v49 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v91 = v46;
      v92 = 2114;
      v93 = v38;
      v94 = 2114;
      v95 = v47;
      v96 = 2114;
      v97 = v49;
      v98 = 2112;
      v99 = v23;
      _os_log_debug_impl(&dword_191750000, v43, OS_LOG_TYPE_DEBUG, "%{public}@: Sending fetch events request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (v48)
      {
      }

      v22 = v69;
    }

    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __115___DKSyncRapportKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke;
    v75[3] = &unk_1E736AD00;
    v75[4] = v65;
    v76 = v64;
    v77 = v60;
    v78 = v61;
    v44 = v61;
    v45 = v60;
    [(_DKSyncRapportStorage *)v65 sendRequestID:@"com.apple.coreduet.fetch-events" request:v23 peer:v76 highPriority:v62 options:0 responseHandler:v75];
  }

  else
  {
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __115___DKSyncRapportKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke_2;
    v73[3] = &unk_1E7367508;
    v74 = v14;
    v22 = v14;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:v13 completion:v73];
    v23 = v74;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchEventsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v102 = *MEMORY[0x1E69E9840];
  v76 = a2;
  v74 = a3;
  v80 = a4;
  v75 = a5;
  v77 = a6;
  v78 = a7;
  v79 = a1;
  if (!a1)
  {
    goto LABEL_70;
  }

  v13 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v13);

  v14 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportKnowledgeStorage handleFetchEventsWithResponse:options:error:peer:plStartDate:completion:];
  }

  v15 = v80;
  if (!v80)
  {
    v20 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v57 = [objc_opt_class() description];
      if ([v75 me])
      {
        v58 = @"pseudo ";
      }

      else
      {
        v58 = &stru_1F05B9908;
      }

      v59 = [v75 identifier];
      v60 = [v75 model];
      if (v60)
      {
        v65 = MEMORY[0x1E696AEC0];
        a3 = [v75 model];
        v61 = [v65 stringWithFormat:@" (%@)", a3];
      }

      else
      {
        v61 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v93 = v57;
      v94 = 2114;
      v95 = v58;
      v96 = 2114;
      v97 = v59;
      v98 = 2114;
      v99 = v61;
      v100 = 2112;
      v101 = v76;
      _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch events response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (v60)
      {
      }
    }

    v21 = +[_DKSyncErrors invalidResponse];
    v80 = v21;
    v73 = [(__CFString *)v76 objectForKeyedSubscript:@"version"];
    [v73 floatValue];
    v23 = v22;
    v24 = [(__CFString *)v76 objectForKeyedSubscript:@"results"];
    v72 = v24;
    if ([v24 count] == 1 && v23 < 3.0)
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v86 objects:v91 count:16];
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v26)
      {
        v81 = *v87;
        v83 = 0;
        do
        {
          v84 = v26;
          v30 = 0;
          v31 = v27;
          v32 = v28;
          v33 = v29;
          do
          {
            if (*v87 != v81)
            {
              objc_enumerationMutation(v25);
            }

            v34 = [v25 objectForKeyedSubscript:*(*(&v86 + 1) + 8 * v30)];
            v29 = [v34 objectForKeyedSubscript:@"encodedEvents"];

            v28 = [v34 objectForKeyedSubscript:@"compressedEvents"];

            v27 = [v34 objectForKeyedSubscript:@"sequenceNumber"];

            v35 = [v34 objectForKeyedSubscript:@"windowStartDate"];
            v36 = [v34 objectForKeyedSubscript:@"windowEndDate"];
            v37 = v36;
            if (v29 | v28 && v27 && v35 && v36)
            {
              v38 = [_DKSyncWindow syncWindowWithStartDate:v35 endDate:v36];
              v90 = v38;
              v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];

              v83 = v39;
            }

            ++v30;
            v31 = v27;
            v32 = v28;
            v33 = v29;
          }

          while (v84 != v30);
          v26 = [v25 countByEnumeratingWithState:&v86 objects:v91 count:16];
        }

        while (v26);
      }

      else
      {
        v83 = 0;
      }
    }

    else
    {
      if ([v24 count] < 4 || v23 < 3.0)
      {
        v83 = 0;
        [_DKSyncRapportKnowledgeStorage handleUnexpectedResponse:fromPeer:];
        v27 = 0;
        v28 = 0;
        v29 = 0;
LABEL_34:
        if (v29 | v28)
        {
          v41 = [v75 sourceDeviceUUID];
          v42 = [v27 unsignedIntegerValue];
          if (v28)
          {
            v43 = [(_DKSyncRapportKnowledgeStorage *)v79 changeSetFromCompressedData:v28 deviceIdentifier:v41 sequenceNumber:v42];
            v44 = [v43 eventsToAdd];
          }

          else if ([v29 length])
          {
            v43 = [_DKChangeSet createFromData:v29 deviceIdentifier:v41 sequenceNumber:v42];
            v44 = [v43 eventsToAdd];
          }

          else
          {
            v44 = objc_opt_new();
            v43 = 0;
          }

          v18 = v44;
          v85 = v43;
          v82 = v41;
          v19 = [v44 count] == 0;
          if (v18)
          {
            v45 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v70 = [objc_opt_class() description];
              v46 = MEMORY[0x1E696AD98];
              v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
              v47 = [v75 me];
              v48 = &stru_1F05B9908;
              if (v47)
              {
                v48 = @"pseudo ";
              }

              v67 = v48;
              v49 = [v75 identifier];
              v50 = [v75 model];
              if (v50)
              {
                v51 = MEMORY[0x1E696AEC0];
                v46 = [v75 model];
                v52 = [v51 stringWithFormat:@" (%@)", v46];
              }

              else
              {
                v52 = &stru_1F05B9908;
              }

              *buf = 138544386;
              v93 = v70;
              v94 = 2112;
              v95 = v68;
              v96 = 2114;
              v97 = v67;
              v98 = 2114;
              v99 = v49;
              v100 = 2114;
              v101 = v52;
              _os_log_impl(&dword_191750000, v45, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ added events from %{public}@peer %{public}@%{public}@", buf, 0x34u);
              if (v50)
              {
              }
            }

            v53 = v80;
            v80 = 0;
          }

          else
          {
            v53 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v71 = [objc_opt_class() description];
              if ([v75 me])
              {
                v54 = @"pseudo ";
              }

              else
              {
                v54 = &stru_1F05B9908;
              }

              v69 = [v75 identifier];
              v55 = [v75 model];
              if (v55)
              {
                v66 = MEMORY[0x1E696AEC0];
                v41 = [v75 model];
                v56 = [v66 stringWithFormat:@" (%@)", v41];
              }

              else
              {
                v56 = &stru_1F05B9908;
              }

              *buf = 138544130;
              v93 = v71;
              v94 = 2114;
              v95 = v54;
              v96 = 2114;
              v97 = v69;
              v98 = 2114;
              v99 = v56;
              _os_log_debug_impl(&dword_191750000, v53, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to decode events from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
              if (v55)
              {
              }
            }
          }

          v21 = v82;
        }

        else
        {
          +[_DKSyncErrors invalidResponse];
          v18 = 0;
          v80 = v19 = 1;
        }

        v15 = v73;
        goto LABEL_65;
      }

      v29 = [v24 objectForKeyedSubscript:@"encodedEvents"];
      v28 = [v24 objectForKeyedSubscript:@"compressedEvents"];
      v27 = [v24 objectForKeyedSubscript:@"sequenceNumber"];
      v40 = [v24 objectForKeyedSubscript:@"completedWindows"];
      v25 = v40;
      v83 = 0;
      if (v29 | v28 && v27 && v40)
      {
        v83 = [_DKSyncWindow windowsFromDictionaryArray:v40];
      }
    }

    v21 = v80;
    goto LABEL_34;
  }

  if (-[NSObject code](v80, "code") == -6714 && (-[NSObject domain](v80, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:*MEMORY[0x1E69C6BC8]], v16, v15 = v80, v17))
  {
    v15 = +[_DKSyncPeerStatusTracker sharedInstance];
    [v15 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v75}];
    v83 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    [a1 transformResponseError:v15];
    v83 = 0;
    v18 = 0;
    v80 = v19 = 1;
  }

LABEL_65:

  if (v77)
  {
    v62 = [MEMORY[0x1E695DF00] date];
    v63 = [v79[3] syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v63, [v79 transportType], v77, v62, v19);
  }

  if (v78)
  {
    v78[2]();
  }

LABEL_70:
  v64 = *MEMORY[0x1E69E9840];
}

- (void)fetchDeletedEventIDsFromPeer:(id)a3 sinceDate:(id)a4 streamNames:(id)a5 limit:(unint64_t)a6 highPriority:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v64[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v18);

  v19 = [(_DKSyncRapportStorage *)self myDeviceID];
  if (-[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([v14 idsDeviceIdentifier], (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (v21 = v20, v22 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", v14), v21, v22))
  {
    v43 = v9;
    v23 = [MEMORY[0x1E695DF00] date];
    v62[0] = @"sinceDate";
    v62[1] = @"streamNames";
    v63[0] = v15;
    v63[1] = v16;
    v62[2] = @"limit";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
    v63[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
    v64[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];

    v27 = &stru_1F05B9908;
    if (v19)
    {
      v27 = v19;
    }

    v60[0] = @"client";
    v60[1] = @"queries";
    v61[0] = v27;
    v61[1] = v26;
    v60[2] = @"version";
    v61[2] = @"1.0";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    v29 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v39 = v23;
      v42 = [objc_opt_class() description];
      v33 = [v14 me];
      v34 = @"pseudo ";
      v35 = &stru_1F05B9908;
      if (!v33)
      {
        v34 = &stru_1F05B9908;
      }

      v38 = v34;
      v41 = [v14 identifier];
      v40 = [v14 model];
      if (v40)
      {
        v36 = MEMORY[0x1E696AEC0];
        v37 = [v14 model];
        v35 = [v36 stringWithFormat:@" (%@)", v37];
      }

      *buf = 138544386;
      v51 = v42;
      v52 = 2114;
      v53 = v38;
      v54 = 2114;
      v55 = v41;
      v56 = 2114;
      v57 = v35;
      v58 = 2112;
      v59 = v28;
      _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "%{public}@: Sending deleted event ids request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (v40)
      {
      }

      v23 = v39;
    }

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __115___DKSyncRapportKnowledgeStorage_fetchDeletedEventIDsFromPeer_sinceDate_streamNames_limit_highPriority_completion___block_invoke;
    v46[3] = &unk_1E736AD00;
    v46[4] = self;
    v47 = v14;
    v48 = v23;
    v49 = v17;
    v30 = v17;
    v31 = v23;
    [(_DKSyncRapportStorage *)self sendRequestID:@"com.apple.coreduet.fetch-deleted-event-ids" request:v28 peer:v47 highPriority:v43 options:0 responseHandler:v46];
  }

  else
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __115___DKSyncRapportKnowledgeStorage_fetchDeletedEventIDsFromPeer_sinceDate_streamNames_limit_highPriority_completion___block_invoke_2;
    v44[3] = &unk_1E7367508;
    v45 = v17;
    v26 = v17;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:v14 completion:v44];
    v28 = v45;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchDeletedEventIDsWithResponse:(void *)a3 options:(void *)a4 error:(void *)a5 peer:(void *)a6 plStartDate:(void *)a7 completion:
{
  v95 = *MEMORY[0x1E69E9840];
  v62 = a2;
  v59 = a3;
  v70 = a4;
  v73 = a5;
  v63 = a6;
  v64 = a7;
  v68 = a1;
  if (!a1)
  {
    goto LABEL_62;
  }

  v13 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v13);

  v14 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithResponse:options:error:peer:plStartDate:completion:];
  }

  v15 = v70;
  if (!v70)
  {
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v52 = [objc_opt_class() description];
      if ([v73 me])
      {
        v53 = @"pseudo ";
      }

      else
      {
        v53 = &stru_1F05B9908;
      }

      v54 = [v73 identifier];
      v55 = [v73 model];
      if (v55)
      {
        v57 = MEMORY[0x1E696AEC0];
        a3 = [v73 model];
        v56 = [v57 stringWithFormat:@" (%@)", a3];
      }

      else
      {
        v56 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v86 = v52;
      v87 = 2114;
      v88 = v53;
      v89 = 2114;
      v90 = v54;
      v91 = 2114;
      v92 = v56;
      v93 = 2112;
      v94 = v62;
      _os_log_debug_impl(&dword_191750000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch deleted event ids response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (v55)
      {
      }
    }

    v20 = +[_DKSyncErrors invalidResponse];
    v15 = [(__CFString *)v62 objectForKeyedSubscript:@"results"];
    if ([v15 count] != 1)
    {
      v78 = 0;
      v79 = 0;
      v18 = 0;
      v69 = 1;
      v70 = v20;
      goto LABEL_57;
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v15;
    v21 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
    v58 = v15;
    if (!v21)
    {
      v78 = 0;
      v79 = 0;
      v22 = 0;
      v69 = 1;
      v70 = v20;
      goto LABEL_56;
    }

    v78 = 0;
    v79 = 0;
    v22 = 0;
    v71 = *v81;
    v69 = 1;
    v70 = v20;
    while (1)
    {
      v72 = v21;
      v23 = 0;
      v24 = v78;
      v25 = v79;
      do
      {
        if (*v81 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v26 = [obj objectForKeyedSubscript:*(*(&v80 + 1) + 8 * v23)];
        v27 = [v26 objectForKeyedSubscript:@"encodedDeletedEventIDs"];
        v28 = [v26 objectForKeyedSubscript:@"compressedDeletedEventIDs"];
        v79 = [v26 objectForKeyedSubscript:@"sinceDate"];

        v78 = [v26 objectForKeyedSubscript:@"untilDate"];

        if (v27 | v28)
        {
          v29 = v79 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29 && v78 != 0)
        {
          v75 = [v73 sourceDeviceUUID];
          v31 = [v26 objectForKeyedSubscript:@"sequenceNumber"];
          v32 = [v31 unsignedIntegerValue];

          if (v28)
          {
            v74 = [(_DKSyncRapportKnowledgeStorage *)v68 changeSetFromCompressedData:v28 deviceIdentifier:v75 sequenceNumber:v32];
            v33 = [v74 eventIDsToDelete];
            goto LABEL_27;
          }

          if ([v27 length])
          {
            v74 = [_DKChangeSet createFromData:v27 deviceIdentifier:v75 sequenceNumber:v32];
            v33 = [v74 eventIDsToDelete];
LABEL_27:
            v77 = v33;
          }

          else
          {
            v77 = objc_opt_new();
            v74 = 0;
          }

          v69 = [v77 count] == 0;
          if (v77)
          {
            v34 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v67 = [objc_opt_class() description];
              v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];
              if ([v73 me])
              {
                v36 = @"pseudo ";
              }

              else
              {
                v36 = &stru_1F05B9908;
              }

              v37 = [v73 identifier];
              v38 = [v73 model];
              if (v38)
              {
                v39 = MEMORY[0x1E696AEC0];
                v66 = [v73 model];
                v65 = [v39 stringWithFormat:@" (%@)", v66];
                v40 = v65;
              }

              else
              {
                v40 = &stru_1F05B9908;
              }

              *buf = 138544386;
              v86 = v67;
              v87 = 2112;
              v88 = v35;
              v89 = 2114;
              v90 = v36;
              v91 = 2114;
              v92 = v37;
              v93 = 2114;
              v94 = v40;
              _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ deleted event ids from %{public}@peer %{public}@%{public}@", buf, 0x34u);
              if (v38)
              {
              }
            }

            v41 = v70;
            v70 = 0;
          }

          else
          {
            v41 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v42 = [objc_opt_class() description];
              if ([v73 me])
              {
                v43 = @"pseudo ";
              }

              else
              {
                v43 = &stru_1F05B9908;
              }

              v44 = [v73 identifier];
              v45 = [v73 model];
              v46 = &stru_1F05B9908;
              if (v45)
              {
                v47 = MEMORY[0x1E696AEC0];
                v61 = [v73 model];
                v60 = [v47 stringWithFormat:@" (%@)", v61];
                v46 = v60;
              }

              *buf = 138544130;
              v86 = v42;
              v87 = 2114;
              v88 = v43;
              v89 = 2114;
              v90 = v44;
              v91 = 2114;
              v92 = v46;
              _os_log_debug_impl(&dword_191750000, v41, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to decode deleted event ids from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
              if (v45)
              {
              }
            }
          }

          v22 = v77;
        }

        ++v23;
        v24 = v78;
        v25 = v79;
      }

      while (v72 != v23);
      v21 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (!v21)
      {
LABEL_56:

        v18 = v22;
        v15 = v58;
        goto LABEL_57;
      }
    }
  }

  if (-[NSObject code](v70, "code") == -6714 && (-[NSObject domain](v70, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:*MEMORY[0x1E69C6BC8]], v16, v15 = v70, v17))
  {
    v15 = +[_DKSyncPeerStatusTracker sharedInstance];
    [v15 removeActiveTransports:objc_msgSend(a1 fromPeer:{"transportType"), v73}];
    v78 = 0;
    v79 = 0;
    v18 = 0;
    v69 = 1;
  }

  else
  {
    [a1 transformResponseError:v15];
    v78 = 0;
    v79 = 0;
    v18 = 0;
    v70 = v69 = 1;
  }

LABEL_57:

  if (v63)
  {
    v48 = [MEMORY[0x1E695DF00] date];
    v49 = [v68[3] syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", v49, [v68 transportType], v63, v48, v69);
  }

  v50 = v78;
  if (v64)
  {
    v64[2]();
    v50 = v78;
  }

LABEL_62:
  v51 = *MEMORY[0x1E69E9840];
}

- (void)fetchDeletionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    v6 = MEMORY[0x1E695DF00];
    v7 = a5;
    v8 = [v6 date];
    (*(a5 + 2))(v7, v8, 0);
  }
}

- (void)fetchAdditionsHighWaterMarkWithPeer:(id)a3 highPriority:(BOOL)a4 completion:(id)a5
{
  if (a5)
  {
    v6 = MEMORY[0x1E695DF00];
    v7 = a5;
    v8 = [v6 date];
    (*(a5 + 2))(v7, v8, 0);
  }
}

- (void)setFetchDelegate:(id)a3
{
  v4 = a3;
  v5 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v5);

  delegate = self->_delegate;
  self->_delegate = v4;
  v7 = v4;

  v8 = [(_DKSyncRemoteKnowledgeStorageFetchDelegate *)self->_delegate deviceUUID];

  v9 = [v8 UUIDString];

  [(_DKSyncRapportStorage *)self setDeviceID:v9];
}

- (void)updateStorageWithAddedEvents:(id)a3 deletedEventIDs:(id)a4 highPriority:(BOOL)a5 completion:(id)a6
{
  v8 = a6;
  v6 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v6);

  if (v8)
  {
    v7 = +[_DKSyncErrors internalFailure];
    v8[2](v8, v7);
  }
}

- (void)handleUnexpectedRequest:fromPeer:
{
  OUTLINED_FUNCTION_70_0();
  v3 = v2;
  v5 = v4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = v6;
  if (v5)
  {
    [v3 objectForKeyedSubscript:@"version"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_29_3() version];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_4_17() isEqualToString:?];

    if ((v8 & 1) == 0)
    {
      v9 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v9))
      {
        v11 = [objc_opt_class() description];
        [v7 me];
        v12 = &stru_1F05B9908;
        OUTLINED_FUNCTION_22_7();
        v13 = [v7 identifier];
        v14 = [v7 model];
        if (v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          [v7 model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_9();
          v12 = [v15 stringWithFormat:@" (%@)"];
        }

        OUTLINED_FUNCTION_4_19();
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_25_4();
        _os_log_error_impl(v16, v17, v18, v19, v20, 0x34u);
        if (v14)
        {
        }
      }

      [v7 setVersion:0];
      [v5 handshakeWithDuetSyncPeer:v7 orError:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_72_0();
}

- (void)handleUnexpectedResponse:fromPeer:
{
  OUTLINED_FUNCTION_70_0();
  v3 = v2;
  v5 = v4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = v6;
  if (v5)
  {
    [v3 objectForKeyedSubscript:@"version"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_29_3() version];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_4_17() isEqualToString:?];

    if ((v8 & 1) == 0)
    {
      v9 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v9))
      {
        v11 = [objc_opt_class() description];
        [v7 me];
        v12 = &stru_1F05B9908;
        OUTLINED_FUNCTION_22_7();
        v13 = [v7 identifier];
        v14 = [v7 model];
        if (v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          [v7 model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_9();
          v12 = [v15 stringWithFormat:@" (%@)"];
        }

        OUTLINED_FUNCTION_4_19();
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_25_4();
        _os_log_error_impl(v16, v17, v18, v19, v20, 0x34u);
        if (v14)
        {
        }
      }

      [v7 setVersion:0];
      [v5 handshakeWithDuetSyncPeer:v7 orError:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_72_0();
}

- (id)changeSetFromCompressedData:(void *)a3 deviceIdentifier:(NSObject *)a4 sequenceNumber:
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a1)
  {
    v8 = a2;
    v9 = [[_DKPRCompressedChangeSet alloc] initWithData:v8];

    if (-[_DKPRCompressedChangeSet uncompressedLength](v9) && (-[_DKPRCompressedChangeSet compressedData](v9), objc_claimAutoreleasedReturnValue()) && (v10 = OUTLINED_FUNCTION_28_4(), -[_DKPRCompressedChangeSet compressedData](v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 length], v11, _DKPRCompressedChangeSet, v12))
    {
      v13 = [(_DKPRCompressedChangeSet *)v9 uncompressedLength];
      malloc_type_malloc(v13 + 32, 0x429C8789uLL);
      v14 = OUTLINED_FUNCTION_28_4();
      v15 = [(_DKPRCompressedChangeSet *)v14 compressedData];
      v16 = [v15 bytes];
      v17 = [(_DKPRCompressedChangeSet *)v9 compressedData];
      v18 = compression_decode_buffer(_DKPRCompressedChangeSet, v13 + 32, v16, [v17 length], 0, COMPRESSION_LZFSE);

      if (v18 == [(_DKPRCompressedChangeSet *)v9 uncompressedLength])
      {
        v19 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:_DKPRCompressedChangeSet length:v18 freeWhenDone:1];
        v20 = v19;
        if (v19)
        {
          v19 = [_DKChangeSet createFromData:v19 deviceIdentifier:v7 sequenceNumber:a4];
        }

        goto LABEL_12;
      }

      v25 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v25))
      {
        v27 = [objc_opt_class() description];
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[_DKPRCompressedChangeSet uncompressedLength](v9)];
        OUTLINED_FUNCTION_2_20();
        v33 = v28;
        v34 = v30;
        v35 = v31;
        _os_log_error_impl(&dword_191750000, a4, OS_LOG_TYPE_ERROR, "%{public}@: Dropping change set, uncompressed size %@ does not match uncompressed length %@", v32, 0x20u);
      }

      free(_DKPRCompressedChangeSet);
    }

    else
    {
      v21 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v21))
      {
        v26 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        _os_log_error_impl(&dword_191750000, a4, OS_LOG_TYPE_ERROR, "%{public}@: Dropping change set, unable to decode due to invalid data", v32, 0xCu);
      }
    }

    v20 = 0;
    v19 = 0;
LABEL_12:
    v22 = v19;

    goto LABEL_13;
  }

  v22 = 0;
LABEL_13:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch events request", v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch events request: %@", v4, v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch events request for up to %@ events", v4, v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to encode change set as protobuf: %@", v4, v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to fetch events, missing delegate", v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch events response: %@", v4, v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch deleted event ids request", v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch deleted event ids request: %@", v4, v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to fetch deleted event ids, missing delegate", v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch deleted event ids response: %@", v4, v5);
}

- (void)handleFetchEventsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch events response", v5);
}

- (void)handleFetchDeletedEventIDsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch deleted event ids response", v5);
}

@end