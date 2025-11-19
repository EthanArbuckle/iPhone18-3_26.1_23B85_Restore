@interface _DKPrivacyMaintainer
+ (id)deletionPredicateForBundleID:(id)a3;
+ (unint64_t)deleteMalformedNotificationUsageEvents:(id)a3;
+ (void)maintainPrivacyWithKnowledgeStorage:(id)a3 installedApps:(id)a4 installedAppExtensions:(id)a5 deleteMaxCount:(unint64_t)a6 objectMaxCount:(unint64_t)a7 objectMaxLifespan:(double)a8 activity:(id)a9;
@end

@implementation _DKPrivacyMaintainer

+ (id)deletionPredicateForBundleID:(id)a3
{
  v45[8] = *MEMORY[0x1E69E9840];
  v37 = a3;
  v40 = +[_DKSystemEventStreams appInFocusStream];
  v38 = [v40 name];
  v45[0] = v38;
  v36 = +[_DKSystemEventStreams appUsageStream];
  v35 = [v36 name];
  v45[1] = v35;
  v34 = +[_DKSystemEventStreams appClipUsageStream];
  v33 = [v34 name];
  v45[2] = v33;
  v32 = +[_DKSystemEventStreams appRelevantShortcutsStream];
  v3 = [v32 name];
  v45[3] = v3;
  v4 = +[_DKSystemEventStreams appActivityStream];
  v5 = [v4 name];
  v45[4] = v5;
  v6 = +[_DKSystemEventStreams appMediaUsageStream];
  v7 = [v6 name];
  v45[5] = v7;
  v8 = +[_DKSystemEventStreams appWebUsageStream];
  v9 = [v8 name];
  v45[6] = v9;
  v10 = +[_DKSystemEventStreams appLocationActivityStream];
  v11 = [v10 name];
  v45[7] = v11;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:8];

  v41 = [_DKQuery predicateForEventsWithStringValue:v37];
  v39 = [_DKQuery predicateForEventsWithStreamNames:v42];
  v12 = MEMORY[0x1E696AB28];
  v44[0] = v39;
  v44[1] = v41;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = +[_DKSystemEventStreams notificationUsageStream];
  v16 = [v15 name];
  v17 = [_DKQuery predicateForEventsWithStreamName:v16];

  v18 = +[_DKNotificationUsageMetadataKey bundleID];
  v19 = [_DKQuery predicateForObjectsWithMetadataKey:v18 andStringValue:v37];

  v20 = MEMORY[0x1E696AB28];
  v43[0] = v17;
  v43[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = +[_DKAppClipUsageMetadataKey appBundleID];
  v24 = [_DKQuery predicateForObjectsWithMetadataKey:v23 andStringValue:v37];

  v25 = +[_DKAppClipUsageMetadataKey clipBundleID];
  v26 = [_DKQuery predicateForObjectsWithMetadataKey:v25 andStringValue:v37];

  v27 = [MEMORY[0x1E695DF70] arrayWithObjects:{v14, v22, v24, v26, 0}];
  v28 = [_DKQuery predicateForSpotlightEventsWithBundleID:v37];

  [v27 addObject:v28];
  v29 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v27];

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (unint64_t)deleteMalformedNotificationUsageEvents:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[_DKSystemEventStreams notificationUsageStream];
  v5 = [v4 name];
  v6 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamName:v5];

  v7 = +[_DKNotificationUsageMetadataKey identifier];
  v8 = +[_DKNotificationUsageMetadataKey bundleID];
  v9 = MEMORY[0x1E696AE18];
  v10 = [_DKQuery structuredMetadataKeyPathForMetadataKey:v7];
  v11 = [_DKQuery structuredMetadataKeyPathForMetadataKey:v8];
  v12 = [v9 predicateWithFormat:@"%K != NULL OR %K != NULL", v10, v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v12];
  v23[0] = v14;
  v23[1] = v6;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v16 = [v13 andPredicateWithSubpredicates:v15];

  v22 = 0;
  v17 = [v3 deleteAllEventsMatchingPredicate:v16 error:&v22];

  v18 = v22;
  if (v18)
  {
    v19 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[_DKPrivacyMaintainer deleteMalformedNotificationUsageEvents:];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (void)maintainPrivacyWithKnowledgeStorage:(id)a3 installedApps:(id)a4 installedAppExtensions:(id)a5 deleteMaxCount:(unint64_t)a6 objectMaxCount:(unint64_t)a7 objectMaxLifespan:(double)a8 activity:(id)a9
{
  v78 = a7;
  v112 = *MEMORY[0x1E69E9840];
  v90 = a3;
  v13 = a4;
  v83 = a5;
  v14 = a9;
  v15 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
  }

  kdebug_trace();
  v16 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_191750000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MaintainPrivacy", " enableTelemetry=YES ", buf, 2u);
  }

  v84 = v13;

  v17 = +[_CDEventStreams ephemeralitySchedule];
  v87 = [MEMORY[0x1E695DF70] array];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v98 objects:v111 count:16];
  v91 = v14;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = *v99;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v99 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v98 + 1) + 8 * i);
        if (v14 && xpc_activity_should_defer(v14))
        {
          v32 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
          }

          goto LABEL_21;
        }

        v25 = [obj objectForKeyedSubscript:{v24, v78}];
        v26 = [v25 allObjects];
        [v87 addObjectsFromArray:v26];
        v27 = MEMORY[0x1E695DF00];
        [v24 doubleValue];
        v29 = [v27 dateWithTimeIntervalSinceNow:-v28];
        v21 = [v90 deleteObjectsInEventStreams:v26 olderThanDate:v29 limit:a6];
        v30 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [v24 doubleValue];
          *buf = 134218498;
          v106 = v21;
          v107 = 2112;
          v108 = v29;
          v109 = 2048;
          v110 = v31;
          _os_log_debug_impl(&dword_191750000, v30, OS_LOG_TYPE_DEBUG, "Deleted %lu objects older than %@, for TTL=%f", buf, 0x20u);
        }

        v20 += v21;

        v14 = v91;
      }

      v19 = [obj countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

LABEL_21:

  v33 = v84;
  if (!v84 || ![v84 count])
  {
    v37 = 0;
    goto LABEL_36;
  }

  if (!v14 || !xpc_activity_should_defer(v14))
  {
    v38 = +[_DKSystemEventStreams appUsageStream];
    v39 = [v38 name];
    v104 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];

    v86 = v40;
    v41 = [_DKQuery predicateForEventsWithStreamNames:v40];
    v42 = [_DKQuery predicateForEventsWithStringValueInValues:v84];
    v43 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v42];
    v81 = v41;
    v103[0] = v41;
    v103[1] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:2];
    v45 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v44];
    v97 = 0;
    v37 = [v90 deleteAllEventsMatchingPredicate:v45 error:&v97];
    v46 = v97;
    v47 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:v37 installedApps:v86 installedAppExtensions:v47 deleteMaxCount:? objectMaxCount:? objectMaxLifespan:? activity:?];
    }

    if (v46)
    {
      v48 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
      }
    }

    v21 = v37;
LABEL_36:
    v80 = v37;
    v85 = [MEMORY[0x1E695DF70] array];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v49 = +[_CDEventStreams sharedInstance];
    v50 = [v49 allEventStreams];
    v51 = [v50 allValues];

    v52 = [v51 countByEnumeratingWithState:&v93 objects:v102 count:16];
    if (v52)
    {
      v53 = v52;
      v36 = 0;
      v54 = *v94;
      while (2)
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v94 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v93 + 1) + 8 * j);
          if (v14 && xpc_activity_should_defer(v14))
          {
            v62 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              [_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:v56 installedApps:v62 installedAppExtensions:? deleteMaxCount:? objectMaxCount:? objectMaxLifespan:? activity:?];
            }

            goto LABEL_55;
          }

          v57 = [v56 eventStreamProperties];
          v58 = [v57 knowledgeBaseName];

          if (v58)
          {
            [v85 addObject:v58];
            v59 = [v56 eventStreamProperties];
            v60 = [v59 eventCountLimit];

            v21 = [v90 deleteObjectsInEventStream:v58 ifNeededToLimitEventCount:v60 batchLimit:a6];
            v61 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218498;
              v106 = v21;
              v107 = 2112;
              v108 = v58;
              v109 = 2048;
              v110 = v60;
              _os_log_debug_impl(&dword_191750000, v61, OS_LOG_TYPE_DEBUG, "Deleted %lu objects from %@ to keep max count at %ld", buf, 0x20u);
            }

            v36 += v21;
          }

          v14 = v91;
        }

        v53 = [v51 countByEnumeratingWithState:&v93 objects:v102 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v36 = 0;
    }

    if (v14)
    {
LABEL_55:
      v33 = v84;
      if (xpc_activity_should_defer(v14))
      {
        v63 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
        }

        v34 = 0;
        v35 = 0;
LABEL_80:

        goto LABEL_81;
      }

      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v92 = v36;
    v63 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-a8];
    v82 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamNames:v87];
    v65 = [v90 deleteObjectsOlderThanDate:v63 excludingPredicate:? limit:?];
    v66 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      [_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:v63 installedApps:v65 installedAppExtensions:v66 deleteMaxCount:? objectMaxCount:? objectMaxLifespan:? activity:?];
    }

    if ((v64 & 1) != 0 || !xpc_activity_should_defer(v14))
    {
      v67 = [(_DKQuery *)_DKEventQuery predicateForEventsWithStreamNames:v85];
      v34 = [v90 deleteOldObjectsIfNeededToLimitTotalNumber:v79 excludingPredicate:v67 limit:a6];
      v69 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
      }

      if ((v64 & 1) != 0 || !xpc_activity_should_defer(v14))
      {
        v21 = [v90 deleteOrphanedEntities];
        [_DKPrivacyMaintainer deleteMalformedNotificationUsageEvents:v90];
        v70 = +[_CDLogging knowledgeChannel];
        v33 = v84;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v106 = v21;
          _os_log_impl(&dword_191750000, v70, OS_LOG_TYPE_DEFAULT, "Deleted %lu orphaned entities", buf, 0xCu);
        }

        v68 = v82;
      }

      else
      {
        v70 = +[_CDLogging knowledgeChannel];
        v33 = v84;
        v68 = v82;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
        }

        v21 = v34;
      }
    }

    else
    {
      v67 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
      }

      v34 = 0;
      v21 = v65;
      v33 = v84;
      v68 = v82;
    }

    v35 = v65;
    v36 = v92;
    goto LABEL_80;
  }

  v85 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
  {
    +[_DKPrivacyMaintainer maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:];
  }

  v34 = 0;
  v35 = 0;
  v36 = 0;
  v80 = 0;
LABEL_81:

  v71 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v33;
    _os_log_impl(&dword_191750000, v71, OS_LOG_TYPE_DEFAULT, "Performing privacy maintenance for installedApps: %@", buf, 0xCu);
  }

  v72 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v106 = v83;
    _os_log_impl(&dword_191750000, v72, OS_LOG_TYPE_DEFAULT, "Performing privacy maintenance for installedAppExtensions: %@", buf, 0xCu);
  }

  if ([v33 count])
  {
    BMLibraryStreamsPrunerClass = getBMLibraryStreamsPrunerClass();
    v74 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v33];
    v75 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v83];
    [BMLibraryStreamsPrunerClass pruneWithInstalledApplications:v74 installedAppExtensions:v75];
  }

  kdebug_trace();
  v76 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v76))
  {
    *buf = 134349056;
    v106 = v34 + v20 + v35 + v36 + v80 + v21;
    _os_signpost_emit_with_name_impl(&dword_191750000, v76, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MaintainPrivacy", "TotalDeleted=%{signpost.telemetry:number1,public}lu", buf, 0xCu);
  }

  v77 = *MEMORY[0x1E69E9840];
}

+ (void)deleteMalformedNotificationUsageEvents:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)maintainPrivacyWithKnowledgeStorage:(NSObject *)a3 installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_191750000, a3, OS_LOG_TYPE_DEBUG, "Deleted %@ objects from uninstalled apps from %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:(void *)a1 installedApps:(NSObject *)a2 installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.6(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 eventStreamProperties];
  v4 = [v3 knowledgeBaseName];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Privacy maintenance deferred before %@ enforcement.", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.7()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)maintainPrivacyWithKnowledgeStorage:(NSObject *)a3 installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_3_0(&dword_191750000, a2, a3, "Deleted %lu objects older than %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.9()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.10()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_3_0(&dword_191750000, v0, v1, "Deleted %lu objects to keep max count at %lu", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)maintainPrivacyWithKnowledgeStorage:installedApps:installedAppExtensions:deleteMaxCount:objectMaxCount:objectMaxLifespan:activity:.cold.11()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end