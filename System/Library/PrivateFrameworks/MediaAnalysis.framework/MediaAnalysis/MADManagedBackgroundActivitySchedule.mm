@interface MADManagedBackgroundActivitySchedule
+ (BOOL)migrateDataWithManagedObjectContext:(id)context;
+ (int)_querySchedulingHistoryRecords:(id *)records predicate:(id)predicate sortDescriptors:(id)descriptors managedObjectContext:(id)context;
+ (int)fetchMostRecentSessionLogs:(id *)logs forActivityID:(unint64_t)d managedObjectContext:(id)context;
+ (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d sinceDate:(id)date;
+ (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d startDate:(id)date endDate:(id)endDate managedObjectContext:(id)context;
+ (int)querySchedulingHistoryRecords:(id *)records startDate:(id)date endDate:(id)endDate managedObjectContext:(id)context;
+ (void)updateSessionLogWithTaskID:(unint64_t)d startTime:(id)time duration:(double)duration exitStatus:(int)status;
- (id)description;
@end

@implementation MADManagedBackgroundActivitySchedule

+ (void)updateSessionLogWithTaskID:(unint64_t)d startTime:(id)time duration:(double)duration exitStatus:(int)status
{
  v23 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  v11 = +[MADSystemDataStore systemDataStore];
  newManagedObjectContext = [v11 newManagedObjectContext];

  if (newManagedObjectContext)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __97__MADManagedBackgroundActivitySchedule_updateSessionLogWithTaskID_startTime_duration_exitStatus___block_invoke;
    v13[3] = &unk_1E8350570;
    selfCopy = self;
    dCopy = d;
    v14 = timeCopy;
    v15 = newManagedObjectContext;
    v16 = @"[MADManagedBackgroundActivitySchedule][Initialize]";
    statusCopy = status;
    durationCopy = duration;
    [v15 performBlockAndWait:v13];
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = @"[MADManagedBackgroundActivitySchedule][Initialize]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to create context", buf, 0xCu);
  }
}

void __97__MADManagedBackgroundActivitySchedule_updateSessionLogWithTaskID_startTime_duration_exitStatus___block_invoke(uint64_t a1)
{
  v100[1] = *MEMORY[0x1E69E9840];
  v70 = [*(a1 + 56) fetchRequest];
  v1 = MEMORY[0x1E696AE18];
  v2 = [objc_opt_class() activityIDColumnName];
  v3 = *(a1 + 64);
  v4 = [objc_opt_class() startTimestampColumnName];
  v69 = [v1 predicateWithFormat:@"%K == %d AND %K == %@", v2, v3, v4, *(a1 + 32)];

  [v70 setPredicate:v69];
  v5 = *(a1 + 40);
  v88 = 0;
  v68 = [v5 executeFetchRequest:v70 error:&v88];
  v6 = v88;
  if (v6)
  {
    v7 = v6;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch existing scheduling record - %@", buf, 0x16u);
    }

    goto LABEL_73;
  }

  v74 = [v68 firstObject];
  if (v74)
  {
    v67 = 0;
    goto LABEL_29;
  }

  v74 = [[MADManagedBackgroundActivitySchedule alloc] initWithContext:*(a1 + 40)];
  [(MADManagedBackgroundActivitySchedule *)v74 setActivityID:*(a1 + 64)];
  [(MADManagedBackgroundActivitySchedule *)v74 setStartTimestamp:*(a1 + 32)];
  v9 = [MEMORY[0x1E695DF00] now];
  [(MADManagedBackgroundActivitySchedule *)v74 setLastUpdateTimestamp:v9];

  [(MADManagedBackgroundActivitySchedule *)v74 setPid:getpid()];
  [(MADManagedBackgroundActivitySchedule *)v74 setInitialQoS:qos_class_self()];
  [(MADManagedBackgroundActivitySchedule *)v74 setExitStatus:0xFFFFFFFFLL];
  [(MADManagedBackgroundActivitySchedule *)v74 setSessionLog:0];
  v10 = [*(a1 + 56) fetchRequest];
  v11 = MEMORY[0x1E696AE18];
  v12 = [objc_opt_class() activityIDColumnName];
  v13 = [v11 predicateWithFormat:@"%K == %d", v12, *(a1 + 64)];

  [v10 setPredicate:v13];
  v14 = *(a1 + 40);
  v87 = 0;
  v15 = [v14 countForFetchRequest:v10 error:&v87];
  v16 = v87;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 48);
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to find count for scheduling history - %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if (v15 < 0x1F5)
  {
LABEL_19:
    v67 = v16;
    goto LABEL_25;
  }

  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startTimestamp" ascending:1];
  v100[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:1];
  [v10 setSortDescriptors:v19];

  [v10 setFetchLimit:v15 - 500];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Removing scheduling records - %@", buf, 0x16u);
  }

  v21 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v10];
  v22 = *(a1 + 40);
  v86 = v16;
  v23 = [v22 executeRequest:v21 error:&v86];
  v67 = v86;

  v24 = MediaAnalysisLogLevel();
  if (v67)
  {
    if (v24 < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v25 = *(a1 + 48);
    *buf = 138412802;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    *&buf[22] = 2112;
    v96 = v67;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%@ Failed to delete scheduling records %@ - %@";
    v28 = OS_LOG_TYPE_ERROR;
    v29 = 32;
  }

  else
  {
    if (v24 < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v30 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v30;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    v26 = MEMORY[0x1E69E9C10];
    v27 = "%@ Removed scheduling records - %@";
    v28 = OS_LOG_TYPE_INFO;
    v29 = 22;
  }

  _os_log_impl(&dword_1C9B70000, v26, v28, v27, buf, v29);
LABEL_24:

LABEL_25:
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v31;
    *&buf[12] = 2112;
    *&buf[14] = v74;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Scheduling record created - %@", buf, 0x16u);
  }

LABEL_29:
  v77 = +[VCPMADCoreAnalyticsManager sharedManager];
  v76 = +[VCPMADCoreAnalyticsManager sharedAuxiliaryManager];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v78 = [&unk_1F49BEF80 countByEnumeratingWithState:&v82 objects:v99 count:16];
  if (v78)
  {
    v75 = *v83;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v83 != v75)
        {
          objc_enumerationMutation(&unk_1F49BEF80);
        }

        v33 = *(*(&v82 + 1) + 8 * i);
        v34 = objc_autoreleasePoolPush();
        v35 = VCPTaskIDDescription([v33 unsignedIntValue]);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v36 = *(a1 + 48);
          *buf = 138412546;
          *&buf[4] = v36;
          *&buf[12] = 2112;
          *&buf[14] = v35;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Fetching session analytic data for %@", buf, 0x16u);
        }

        v37 = _VCPCoreAnalyticsSessionEventName([v33 unsignedIntValue]);
        if ([v33 isEqualToNumber:&unk_1F49BDD80])
        {
          v38 = v76;
        }

        else
        {
          v38 = v77;
        }

        v39 = [v38 fetchSessionEvent:v37];
        if (v39)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v96 = __Block_byref_object_copy__50;
          v97 = __Block_byref_object_dispose__50;
          v98 = 0;
          v40 = [(MADManagedBackgroundActivitySchedule *)v74 sessionLog];
          v81[0] = MEMORY[0x1E69E9820];
          v81[1] = 3221225472;
          v81[2] = __97__MADManagedBackgroundActivitySchedule_updateSessionLogWithTaskID_startTime_duration_exitStatus___block_invoke_418;
          v81[3] = &unk_1E8350548;
          v81[4] = v33;
          v81[5] = buf;
          [v40 enumerateObjectsUsingBlock:v81];

          if (*(*&buf[8] + 40))
          {
            v41 = [v39 mutableCopy];
            v42 = [*(*&buf[8] + 40) payload];
            v43 = [v42 dataUsingEncoding:4];

            if (v43)
            {
              v80 = 0;
              v44 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v43 options:1 error:&v80];
              v45 = v80;
              if (v44)
              {
                [v41 addEntriesFromDictionary:v44];
              }

              else if (MediaAnalysisLogLevel() >= 4)
              {
                v53 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  v71 = *(a1 + 48);
                  v54 = [*(*&buf[8] + 40) payload];
                  *v89 = 138412802;
                  v90 = v71;
                  v91 = 2112;
                  v92 = v54;
                  v93 = 2112;
                  v94 = v45;
                  v72 = v54;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Failed to parse existing session log payload %@ with error %@; skip merging", v89, 0x20u);
                }
              }
            }

            v55 = MediaAnalysisJSONStringFromObject(v41);
            [*(*&buf[8] + 40) setPayload:v55];

            if (MediaAnalysisLogLevel() >= 6)
            {
              v56 = MEMORY[0x1E69E9C10];
              v57 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v58 = *(a1 + 48);
                v59 = VCPTaskIDDescription([v33 intValue]);
                *v89 = 138412802;
                v90 = v58;
                v91 = 2112;
                v92 = v59;
                v93 = 2112;
                v94 = v41;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Session log updated for %@: %@", v89, 0x20u);
              }
            }

            goto LABEL_58;
          }

          v46 = [[MADManagedBackgroundActivitySessionLog alloc] initWithContext:*(a1 + 40)];
          v47 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v46;

          v48 = [v33 intValue];
          [*(*&buf[8] + 40) setTaskID:v48];
          [*(*&buf[8] + 40) setScheduling:v74];
          v49 = MediaAnalysisJSONStringFromObject(v39);
          [*(*&buf[8] + 40) setPayload:v49];

          if (MediaAnalysisLogLevel() >= 6)
          {
            v41 = MEMORY[0x1E69E9C10];
            v50 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v51 = *(a1 + 48);
              v52 = VCPTaskIDDescription([v33 intValue]);
              *v89 = 138412802;
              v90 = v51;
              v91 = 2112;
              v92 = v52;
              v93 = 2112;
              v94 = v39;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Session log created for %@: %@", v89, 0x20u);
            }

LABEL_58:
          }

          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v60 = *(a1 + 48);
            v61 = *(*&buf[8] + 40);
            *v89 = 138412802;
            v90 = v60;
            v91 = 2112;
            v92 = v35;
            v93 = 2112;
            v94 = v61;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Refreshed for %@ - %@", v89, 0x20u);
          }

          _Block_object_dispose(buf, 8);
        }

        objc_autoreleasePoolPop(v34);
      }

      v78 = [&unk_1F49BEF80 countByEnumeratingWithState:&v82 objects:v99 count:16];
    }

    while (v78);
  }

  v62 = [MEMORY[0x1E695DF00] now];
  [(MADManagedBackgroundActivitySchedule *)v74 setLastUpdateTimestamp:v62];

  [(MADManagedBackgroundActivitySchedule *)v74 setExitStatus:*(a1 + 80)];
  [(MADManagedBackgroundActivitySchedule *)v74 setDuration:*(a1 + 72)];
  v63 = *(a1 + 40);
  v79 = v67;
  v64 = [v63 save:&v79];
  v7 = v79;

  if ((v64 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v65 = *(a1 + 48);
    *buf = 138412546;
    *&buf[4] = v65;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to save updates - %@", buf, 0x16u);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v66 = *(a1 + 48);
    *buf = 138412290;
    *&buf[4] = v66;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Scheduling record and session log updated!", buf, 0xCu);
  }

LABEL_73:
}

void __97__MADManagedBackgroundActivitySchedule_updateSessionLogWithTaskID_startTime_duration_exitStatus___block_invoke_418(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 taskID];
  if (v6 == [*(a1 + 32) intValue])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (int)_querySchedulingHistoryRecords:(id *)records predicate:(id)predicate sortDescriptors:(id)descriptors managedObjectContext:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (contextCopy)
  {
    newManagedObjectContext = contextCopy;
LABEL_4:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__50;
    v31 = __Block_byref_object_dispose__50;
    array = [MEMORY[0x1E695DF70] array];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __118__MADManagedBackgroundActivitySchedule__querySchedulingHistoryRecords_predicate_sortDescriptors_managedObjectContext___block_invoke;
    v17[3] = &unk_1E8350598;
    v18 = predicateCopy;
    v19 = descriptorsCopy;
    v14 = newManagedObjectContext;
    v20 = v14;
    v21 = @"[MADManagedBackgroundActivitySchedule][Query]";
    v22 = &v24;
    p_buf = &buf;
    [v14 performBlockAndWait:v17];
    *records = *(*(&buf + 1) + 40);
    v15 = *(v25 + 6);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_5;
  }

  v13 = +[MADSystemDataStore systemDataStore];
  newManagedObjectContext = [v13 newManagedObjectContext];

  if (newManagedObjectContext)
  {
    goto LABEL_4;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"[MADManagedBackgroundActivitySchedule][Query]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to create context", &buf, 0xCu);
  }

  v15 = -18;
LABEL_5:

  return v15;
}

void __118__MADManagedBackgroundActivitySchedule__querySchedulingHistoryRecords_predicate_sortDescriptors_managedObjectContext___block_invoke(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = +[MADManagedBackgroundActivitySchedule fetchRequest];
  [v2 setPredicate:a1[4]];
  [v2 setSortDescriptors:a1[5]];
  v32 = a1;
  v3 = a1[6];
  v42 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v42];
  v5 = v42;
  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = v32[7];
      v7 = v32[4];
      *buf = 138412802;
      v46 = v6;
      v47 = 2112;
      v48 = v7;
      v49 = 2112;
      v50 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch managed background activities with predicate %@ (error:%@)", buf, 0x20u);
    }

    *(*(v32[8] + 8) + 24) = -18;
  }

  else
  {
    v26 = 0;
    v27 = v4;
    v28 = v2;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v4;
    v31 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v31)
    {
      v30 = *v39;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v8;
          v9 = *(*(&v38 + 1) + 8 * v8);
          v10 = objc_alloc_init(MADActivitySchedulingRecord);
          -[MADActivitySchedulingRecord setActivityID:](v10, "setActivityID:", [v9 activityID]);
          v11 = [v9 startTimestamp];
          [(MADActivitySchedulingRecord *)v10 setStartTime:v11];

          [v9 duration];
          [(MADActivitySchedulingRecord *)v10 setDuration:?];
          -[MADActivitySchedulingRecord setExitStatus:](v10, "setExitStatus:", [v9 exitStatus]);
          v12 = [MEMORY[0x1E695DF90] dictionary];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v13 = [v9 sessionLog];
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v35;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v34 + 1) + 8 * i);
                v19 = [v18 payload];
                v20 = [v19 dataUsingEncoding:4];

                if (v20)
                {
                  v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v20 options:1 error:0];
                  v22 = VCPTaskIDDescription([v18 taskID]);
                  [v12 setObject:v21 forKeyedSubscript:v22];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v15);
          }

          v23 = MediaAnalysisJSONStringFromObject(v12);
          [(MADActivitySchedulingRecord *)v10 setSessionLog:v23];

          v24 = [(MADActivitySchedulingRecord *)v10 sessionLog];

          if (!v24)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v25 = v32[7];
              *buf = 138412546;
              v46 = v25;
              v47 = 2112;
              v48 = v12;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to create JSON string from %@", buf, 0x16u);
            }

            *(*(v32[8] + 8) + 24) = -18;

            goto LABEL_28;
          }

          [*(*(v32[9] + 8) + 40) addObject:v10];

          v8 = v33 + 1;
        }

        while (v33 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v4 = v27;
    v2 = v28;
    v5 = v26;
  }
}

+ (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d sinceDate:(id)date
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AE18];
  dateCopy = date;
  activityIDColumnName = [objc_opt_class() activityIDColumnName];
  startTimestampColumnName = [objc_opt_class() startTimestampColumnName];
  dateCopy = [v8 predicateWithFormat:@"%K == %d && %K >= %@", activityIDColumnName, d, startTimestampColumnName, dateCopy];

  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startTimestamp" ascending:0];
  v16[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  LODWORD(records) = [self _querySchedulingHistoryRecords:records predicate:dateCopy sortDescriptors:v14 managedObjectContext:0];
  return records;
}

+ (int)querySchedulingHistoryRecords:(id *)records forActivityID:(unint64_t)d startDate:(id)date endDate:(id)endDate managedObjectContext:(id)context
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E696AE18];
  contextCopy = context;
  endDateCopy = endDate;
  dateCopy = date;
  activityIDColumnName = [objc_opt_class() activityIDColumnName];
  startTimestampColumnName = [objc_opt_class() startTimestampColumnName];
  startTimestampColumnName2 = [objc_opt_class() startTimestampColumnName];
  endDateCopy = [v11 predicateWithFormat:@"%K == %d && %K >= %@ && %K <= %@", activityIDColumnName, d, startTimestampColumnName, dateCopy, startTimestampColumnName2, endDateCopy];

  v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startTimestamp" ascending:0];
  v23[0] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

  LODWORD(v19) = [self _querySchedulingHistoryRecords:records predicate:endDateCopy sortDescriptors:v20 managedObjectContext:contextCopy];
  return v19;
}

+ (int)querySchedulingHistoryRecords:(id *)records startDate:(id)date endDate:(id)endDate managedObjectContext:(id)context
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E696AE18];
  contextCopy = context;
  endDateCopy = endDate;
  dateCopy = date;
  startTimestampColumnName = [objc_opt_class() startTimestampColumnName];
  startTimestampColumnName2 = [objc_opt_class() startTimestampColumnName];
  endDateCopy = [v10 predicateWithFormat:@"%K >= %@ && %K <= %@", startTimestampColumnName, dateCopy, startTimestampColumnName2, endDateCopy];

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startTimestamp" ascending:0];
  v20[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  LODWORD(records) = [self _querySchedulingHistoryRecords:records predicate:endDateCopy sortDescriptors:v18 managedObjectContext:contextCopy];
  return records;
}

+ (int)fetchMostRecentSessionLogs:(id *)logs forActivityID:(unint64_t)d managedObjectContext:(id)context
{
  v25[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v8 = +[MADManagedBackgroundActivitySchedule fetchRequest];
  v9 = MEMORY[0x1E696AE18];
  activityIDColumnName = [objc_opt_class() activityIDColumnName];
  v11 = [v9 predicateWithFormat:@"%K == %d", activityIDColumnName, d];
  [v8 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startTimestamp" ascending:0];
  v25[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v8 setSortDescriptors:v13];

  [v8 setFetchLimit:1];
  v20 = 0;
  v14 = [contextCopy executeFetchRequest:v8 error:&v20];

  v15 = v20;
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      dCopy2 = d;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[Schedule] Error fetching most recent scheduling history for task %d - %@", buf, 0x12u);
    }

    v16 = -18;
  }

  else
  {
    if (logs && ([v14 lastObject], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      lastObject = [v14 lastObject];
      *logs = [lastObject sessionLog];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      dCopy2 = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[Schedule] No scheduling history for task %d", buf, 8u);
    }

    v16 = 0;
  }

  return v16;
}

+ (BOOL)migrateDataWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__MADManagedBackgroundActivitySchedule_Migration__migrateDataWithManagedObjectContext___block_invoke;
  v8[3] = &unk_1E83505C0;
  v10 = &v12;
  selfCopy = self;
  v5 = contextCopy;
  v9 = v5;
  [v5 performBlockAndWait:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void __87__MADManagedBackgroundActivitySchedule_Migration__migrateDataWithManagedObjectContext___block_invoke(uint64_t a1)
{
  v110 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 vcp_mediaAnalysisDatabaseFilepath];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [*(a1 + 48) fetchRequest];
    v8 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
    [v8 setResultType:2];
    v9 = *(a1 + 32);
    v104 = 0;
    v10 = [v9 executeRequest:v8 error:&v104];
    v11 = v104;
    if (v11)
    {
      v12 = v11;
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_103;
      }

      *buf = 138412546;
      v107 = @"[ScheduleMigration]";
      v108 = 2112;
      *v109 = v12;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%@ Failed to clean current CoreData table - %@";
      goto LABEL_6;
    }

    if ([*(a1 + 32) hasChanges])
    {
      v15 = *(a1 + 32);
      v103 = 0;
      v16 = [v15 save:&v103];
      v12 = v103;
      if ((v16 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_103;
        }

        *buf = 138412546;
        v107 = @"[ScheduleMigration]";
        v108 = 2112;
        *v109 = v12;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%@ Failed to delete from CoreData table - %@";
LABEL_6:
        _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
LABEL_103:

        goto LABEL_104;
      }
    }

    else
    {
      v12 = 0;
    }

    if (v10 && MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v17 = [v10 result];
      *buf = 138412546;
      v107 = @"[ScheduleMigration]";
      v108 = 2112;
      *v109 = v17;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Removed %@ records from CoreData table before migration", buf, 0x16u);
    }

    v84 = v10;
    v18 = [v3 photoLibraryURL];
    v19 = [VCPClientDatabaseManager sharedDatabaseForPhotoLibraryURL:v18];

    v102 = 0;
    v20 = [MEMORY[0x1E695DF00] distantPast];
    v21 = [MEMORY[0x1E695DF00] distantFuture];
    v83 = v19;
    LODWORD(v19) = [v19 migration_querySchedulingHistoryRecords:&v102 startDate:v20 endDate:v21];
    v22 = v102;

    v87 = v22;
    if (v19)
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        v23 = v83;
        v10 = v84;
      }

      else
      {
        v23 = v83;
        v10 = v84;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v107 = @"[ScheduleMigration]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to load existing data from legacy database", buf, 0xCu);
        }
      }

      goto LABEL_102;
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d records", objc_msgSend(v22, "count")];
    v25 = VCPSignPostLog();
    v26 = os_signpost_id_generate(v25);

    v27 = VCPSignPostLog();
    v28 = v27;
    v75 = v26 - 1;
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 138412290;
      v107 = v24;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "MADActivityScheduleMigration", "%@", buf, 0xCu);
    }

    spid = v26;
    v79 = v2;
    v80 = v24;
    v76 = v8;
    v77 = v7;
    v78 = v3;

    v29 = v22;
    if ([v22 count])
    {
      v30 = 0;
      v85 = 0;
      v31 = 0;
      v32 = MEMORY[0x1E69E9C10];
      v33 = 0x1E695D000uLL;
      v81 = v12;
      v93 = a1;
      while (1)
      {
        context = objc_autoreleasePoolPush();
        v34 = [v29 objectAtIndexedSubscript:v31];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v107 = @"[ScheduleMigration]";
          v108 = 2112;
          *v109 = v34;
          _os_log_impl(&dword_1C9B70000, v32, OS_LOG_TYPE_DEBUG, "%@ Migrating scheduling %@", buf, 0x16u);
        }

        v88 = v31;
        v92 = v34;
        v35 = [v34 sessionLog];
        v36 = [v35 dataUsingEncoding:4];

        v89 = v36;
        if (v36)
        {
          v101 = 0;
          v36 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v36 options:0 error:&v101];
          v37 = v101;
          if (v12)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [v34 sessionLog];
              v39 = v38 = v30;
              *buf = 138412802;
              v107 = @"[ScheduleMigration]";
              v108 = 2112;
              *v109 = v39;
              *&v109[8] = 2112;
              *&v109[10] = v37;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to serialize JSON object from %@ - %@", buf, 0x20u);

              v30 = v38;
            }

            v36 = 0;
          }
        }

        v40 = v34;
        v95 = [[MADManagedBackgroundActivitySchedule alloc] initWithContext:*(a1 + 32)];
        if (v95)
        {
          v94 = [MEMORY[0x1E695DFA8] set];
          v91 = [*(v33 + 3840) distantPast];
          if (v36)
          {
            v41 = [v36 objectForKeyedSubscript:@"timestamp"];

            if (v41)
            {
              v42 = +[VCPLogManager dateFormatterDateTime];
              [v36 objectForKeyedSubscript:@"timestamp"];
              v44 = v43 = v30;
              v45 = [v42 dateFromString:v44];

              v30 = v43;
              v91 = v45;
            }

            v46 = [v36 objectForKeyedSubscript:@"PID"];

            if (v46)
            {
              v47 = [v36 objectForKeyedSubscript:@"PID"];
              v48 = [v47 intValue];
            }

            else
            {
              v48 = -1;
            }

            v86 = v48;
            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v52 = [&unk_1F49BEF98 countByEnumeratingWithState:&v97 objects:v105 count:16];
            if (v52)
            {
              v53 = v52;
              v82 = v30;
              v54 = *v98;
              v55 = v85;
              do
              {
                for (i = 0; i != v53; ++i)
                {
                  if (*v98 != v54)
                  {
                    objc_enumerationMutation(&unk_1F49BEF98);
                  }

                  v57 = *(*(&v97 + 1) + 8 * i);
                  v58 = objc_autoreleasePoolPush();
                  v59 = VCPTaskIDDescription([v57 unsignedIntValue]);
                  v60 = [v36 objectForKeyedSubscript:v59];

                  if (v60)
                  {
                    v61 = v55;
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      v107 = @"[ScheduleMigration]";
                      v108 = 2112;
                      *v109 = v59;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Migrating SessionLog for %@", buf, 0x16u);
                    }

                    v62 = [[MADManagedBackgroundActivitySessionLog alloc] initWithContext:*(v93 + 32)];
                    -[MADManagedBackgroundActivitySessionLog setTaskID:](v62, "setTaskID:", [v57 intValue]);
                    [(MADManagedBackgroundActivitySessionLog *)v62 setScheduling:v95];
                    v63 = [v36 objectForKeyedSubscript:v59];
                    v64 = MediaAnalysisJSONStringFromObject(v63);

                    if (v64)
                    {
                      v65 = v64;
                    }

                    else
                    {
                      v65 = @"Failed during migration";
                    }

                    [(MADManagedBackgroundActivitySessionLog *)v62 setPayload:v65];
                    v55 = v61 + 1;
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412802;
                      v107 = @"[ScheduleMigration]";
                      v108 = 1024;
                      *v109 = v61 + 1;
                      *&v109[4] = 2112;
                      *&v109[6] = v62;
                      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[%d] SessionLog created - %@", buf, 0x1Cu);
                    }

                    [v94 addObject:v62];
                  }

                  objc_autoreleasePoolPop(v58);
                }

                v53 = [&unk_1F49BEF98 countByEnumeratingWithState:&v97 objects:v105 count:16];
              }

              while (v53);
              v85 = v55;
              a1 = v93;
              v12 = v81;
              v30 = v82;
              v29 = v87;
            }

            v33 = 0x1E695D000;
            v40 = v92;
            v51 = v86;
          }

          else if (MediaAnalysisLogLevel() < 6)
          {
            v51 = 0xFFFFFFFFLL;
          }

          else
          {
            v50 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v107 = @"[ScheduleMigration]";
              _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_INFO, "%@ Scheduling does not have SessionLog", buf, 0xCu);
            }

            v51 = 0xFFFFFFFFLL;
            v40 = v34;
          }

          -[MADManagedBackgroundActivitySchedule setActivityID:](v95, "setActivityID:", [v40 activityID]);
          v66 = [v40 startTime];
          [(MADManagedBackgroundActivitySchedule *)v95 setStartTimestamp:v66];

          v40 = v92;
          [(MADManagedBackgroundActivitySchedule *)v95 setLastUpdateTimestamp:v91];
          [(MADManagedBackgroundActivitySchedule *)v95 setPid:v51];
          [(MADManagedBackgroundActivitySchedule *)v95 setInitialQoS:0];
          -[MADManagedBackgroundActivitySchedule setExitStatus:](v95, "setExitStatus:", [v92 exitStatus]);
          [(MADManagedBackgroundActivitySchedule *)v95 setSessionLog:v94];
          ++v30;
          if (MediaAnalysisLogLevel() > 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v107 = @"[ScheduleMigration]";
            v108 = 1024;
            *v109 = v30;
            *&v109[4] = 2112;
            *&v109[6] = v95;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@[%d] Scheduling created - %@", buf, 0x1Cu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 3)
        {
          v49 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v107 = @"[ScheduleMigration]";
            _os_log_impl(&dword_1C9B70000, v49, OS_LOG_TYPE_ERROR, "%@ Failed to create scheduling record", buf, 0xCu);
          }

          v40 = v34;
        }

        objc_autoreleasePoolPop(context);
        if (!v95)
        {
          break;
        }

        v31 = v88 + 1;
        v67 = [v29 count];
        v32 = MEMORY[0x1E69E9C10];
        if (v88 + 1 >= v67)
        {
          goto LABEL_85;
        }
      }

      v70 = v12;
      goto LABEL_100;
    }

    LODWORD(v85) = 0;
    LODWORD(v30) = 0;
LABEL_85:
    if ([*(a1 + 32) hasChanges])
    {
      v68 = *(a1 + 32);
      v96 = v12;
      v69 = [v68 save:&v96];
      v70 = v96;

      if ((v69 & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v3 = v78;
          v2 = v79;
          v8 = v76;
          v7 = v77;
          v10 = v84;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v107 = @"[ScheduleMigration]";
            v108 = 2112;
            *v109 = v70;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to save to CoreData table - %@", buf, 0x16u);
          }

          v23 = v83;
          goto LABEL_101;
        }

LABEL_100:
        v3 = v78;
        v2 = v79;
        v8 = v76;
        v7 = v77;
        v23 = v83;
        v10 = v84;
LABEL_101:

        v12 = v70;
LABEL_102:

        goto LABEL_103;
      }
    }

    else
    {
      v70 = v12;
    }

    v71 = VCPSignPostLog();
    v72 = v71;
    if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      *buf = 138412290;
      v107 = v80;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v72, OS_SIGNPOST_INTERVAL_END, spid, "MADActivityScheduleMigration", "%@", buf, 0xCu);
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      [v79 timeIntervalSinceNow];
      *buf = 138413058;
      v107 = @"[ScheduleMigration]";
      v108 = 1024;
      *v109 = v30;
      *&v109[4] = 1024;
      *&v109[6] = v85;
      *&v109[10] = 1024;
      *&v109[12] = -v73;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Migrated %d scheduling and %d SessionLog in %d seconds", buf, 0x1Eu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_100;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v107 = @"[ScheduleMigration]";
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Legacy Database does not exist. Migration is unnecessary", buf, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_104:
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  activityIDColumnName = [objc_opt_class() activityIDColumnName];
  v7 = VCPTaskIDDescription([(MADManagedBackgroundActivitySchedule *)self activityID]);
  [string appendFormat:@"%@: %@, ", activityIDColumnName, v7];

  durationColumnName = [objc_opt_class() durationColumnName];
  [(MADManagedBackgroundActivitySchedule *)self duration];
  [string appendFormat:@"%@: %lf, ", durationColumnName, v9];

  startTimestampColumnName = [objc_opt_class() startTimestampColumnName];
  startTimestamp = [(MADManagedBackgroundActivitySchedule *)self startTimestamp];
  [string appendFormat:@"%@: %@, ", startTimestampColumnName, startTimestamp];

  exitStatusColumnName = [objc_opt_class() exitStatusColumnName];
  [(MADManagedBackgroundActivitySchedule *)self duration];
  if (v13 == -1.0)
  {
    [string appendFormat:@"%@: %@, ", exitStatusColumnName, @"Crashed"];
  }

  else
  {
    v14 = MADStatusDescription([(MADManagedBackgroundActivitySchedule *)self exitStatus]);
    [string appendFormat:@"%@: %@, ", exitStatusColumnName, v14];
  }

  initialQoSColumnName = [objc_opt_class() initialQoSColumnName];
  [string appendFormat:@"%@: %d, ", initialQoSColumnName, -[MADManagedBackgroundActivitySchedule initialQoS](self, "initialQoS")];

  pidColumnName = [objc_opt_class() pidColumnName];
  [string appendFormat:@"%@: %d, ", pidColumnName, -[MADManagedBackgroundActivitySchedule pid](self, "pid")];

  lastUpdateTimestampColumnName = [objc_opt_class() lastUpdateTimestampColumnName];
  lastUpdateTimestamp = [(MADManagedBackgroundActivitySchedule *)self lastUpdateTimestamp];
  [string appendFormat:@"%@: %@, ", lastUpdateTimestampColumnName, lastUpdateTimestamp];

  sessionLogColumnName = [objc_opt_class() sessionLogColumnName];
  sessionLog = [(MADManagedBackgroundActivitySchedule *)self sessionLog];
  [string appendFormat:@"%@: %d> ", sessionLogColumnName, objc_msgSend(sessionLog, "count")];

  return string;
}

@end