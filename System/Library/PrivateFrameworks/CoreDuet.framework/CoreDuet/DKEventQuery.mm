@interface DKEventQuery
@end

@implementation DKEventQuery

void __32___DKEventQuery_onlyLocalDevice__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  strcpy(v5, "OnlyLocalDevice");
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v5];
  v2 = [v0 initWithObjects:{v1, 0}];
  v3 = onlyLocalDevice_set;
  onlyLocalDevice_set = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __27___DKEventQuery_allDevices__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *"AllDevices";
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v5];
  v2 = [v0 initWithObjects:{v1, 0}];
  v3 = allDevices_set;
  allDevices_set = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __33___DKEventQuery_onlyRemoteDevice__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *"OnlyRemoteDevice";
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v5];
  v2 = [v0 initWithObjects:{v1, 0}];
  v3 = onlyRemoteDevice_set;
  onlyRemoteDevice_set = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke(uint64_t a1)
{
  v134 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = MEMORY[0x1E695D5B8];
  v4 = +[_DKEvent entityName];
  v5 = [v3 entityForName:v4 inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v5];

  [v2 setPredicate:*(a1 + 40)];
  if ([*(a1 + 48) limit] < 0)
  {
    [*(a1 + 48) setLimit:0];
  }

  [v2 setFetchLimit:{objc_msgSend(*(a1 + 48), "limit")}];
  [v2 setFetchOffset:{objc_msgSend(*(a1 + 48), "offset")}];
  v6 = [*(a1 + 48) sortDescriptors];
  [v2 setSortDescriptors:v6];

  v7 = [MEMORY[0x1E695DF70] array];
  if ([*(a1 + 48) readMetadata])
  {
    v8 = [*(a1 + 48) excludedMetadataKeys];
    if (!v8 || ([*(a1 + 48) excludedMetadataKeys], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, !v10))
    {
      [v7 addObject:@"customMetadata"];
    }

    [v7 addObject:@"structuredMetadata"];
  }

  v11 = [v2 sortDescriptors];

  if (v11)
  {
    v12 = [v2 sortDescriptors];
    v13 = [_DKPredicateValidator validateSortDescriptors:v12];

    if (v13)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v14 = [v2 sortDescriptors];
      v15 = [v14 countByEnumeratingWithState:&v107 objects:v133 count:16];
      if (v15)
      {
        v16 = *v108;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v108 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v107 + 1) + 8 * i) allowEvaluation];
          }

          v15 = [v14 countByEnumeratingWithState:&v107 objects:v133 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v14 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke_cold_1(v2);
      }
    }
  }

  v18 = [v2 predicate];

  if (!v18)
  {
LABEL_24:
    if (([*(a1 + 48) deduplicateValues] & 1) == 0)
    {
      [v7 addObject:@"value"];
    }

    if (([*(a1 + 48) deduplicateValues] & 1) == 0)
    {
      v23 = [v7 copy];
      [v2 setRelationshipKeyPathsForPrefetching:v23];
    }

    if ([*(a1 + 48) resultType] == 3 || objc_msgSend(*(a1 + 48), "resultType") == 4 || objc_msgSend(*(a1 + 48), "resultType") == 6)
    {
      [v2 setResultType:2];
    }

    v24 = [*(a1 + 48) groupByProperties];
    v25 = [v24 count];

    if (v25)
    {
      [v2 setResultType:2];
      [v2 setReturnsDistinctResults:{objc_msgSend(*(a1 + 48), "returnsDistinctResults")}];
      v26 = [*(a1 + 48) resultType];
      v27 = *(a1 + 48);
      if (v26 == 4)
      {
        v28 = [v27 groupByProperties];
        [v2 setPropertiesToGroupBy:v28];

        v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"streamName"];
        v30 = MEMORY[0x1E696ABC8];
        v132 = v29;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
        v32 = [v30 expressionForFunction:@"count:" arguments:v31];

        v33 = objc_alloc_init(MEMORY[0x1E695D5C8]);
        [v33 setExpression:v32];
        [v33 setName:@"count"];
        [v33 setExpressionResultType:300];
        v131 = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
        v35 = [*(a1 + 48) groupByProperties];
        v36 = [v34 arrayByAddingObjectsFromArray:v35];
        [v2 setPropertiesToFetch:v36];
      }

      else if ([v27 resultType] == 5)
      {
        v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"startDate.timeIntervalSinceReferenceDate"];
        v40 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"endDate.timeIntervalSinceReferenceDate"];
        v41 = MEMORY[0x1E696ABC8];
        v130[0] = v40;
        v130[1] = v29;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
        v43 = [v41 expressionForFunction:@"from:subtract:" arguments:v42];

        v44 = objc_alloc_init(MEMORY[0x1E695D5C8]);
        [v44 setExpression:v43];
        [v44 setName:@"duration"];
        [v44 setExpressionResultType:500];
        v45 = [*(a1 + 48) groupByProperties];
        v129[0] = v44;
        v129[1] = @"startDate";
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
        v47 = [v45 arrayByAddingObjectsFromArray:v46];
        [v2 setPropertiesToFetch:v47];
      }

      else if ([*(a1 + 48) resultType] == 6)
      {
        v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"endDate.timeIntervalSinceReferenceDate"];
        v48 = MEMORY[0x1E696ABC8];
        v128 = v29;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v128 count:1];
        v50 = [v48 expressionForFunction:@"max:" arguments:v49];

        v51 = objc_alloc_init(MEMORY[0x1E695D5C8]);
        [v51 setExpression:v50];
        [v51 setName:@"endDate"];
        [v51 setExpressionResultType:900];
        v52 = [*(a1 + 48) groupByProperties];
        [v2 setPropertiesToGroupBy:v52];

        v53 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"endDate" ascending:0];
        v127 = v53;
        v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v127 count:1];
        [v2 setSortDescriptors:v54];

        v55 = [*(a1 + 48) groupByProperties];
        v126 = v51;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v126 count:1];
        v57 = [v55 arrayByAddingObjectsFromArray:v56];
        [v2 setPropertiesToFetch:v57];
      }

      else
      {
        v58 = [*(a1 + 48) groupByProperties];
        [v2 setPropertiesToGroupBy:v58];

        v29 = [*(a1 + 48) groupByProperties];
        [v2 setPropertiesToFetch:v29];
      }
    }

    v39 = [_CDMutablePerfMetric perfMetricForFetchRequest:v2 type:@"Event Queries"];
    v105[0] = 0;
    v105[1] = 0;
    v59 = [MEMORY[0x1E695DF00] date];
    CDPerfMetricStartTiming(v105);
    if ([*(a1 + 48) resultType] == 1)
    {
      v60 = MEMORY[0x1E696AD98];
      v61 = *(a1 + 32);
      v104 = 0;
      v62 = [v61 countForFetchRequest:v2 error:&v104];
      v63 = v104;
      v64 = [v60 numberWithUnsignedInteger:v62];
    }

    else
    {
      v65 = *(a1 + 32);
      v103 = 0;
      v64 = [v65 executeFetchRequest:v2 error:&v103];
      v63 = v103;
    }

    if ((_DKEventQueryPerformanceTesting & 1) == 0)
    {
      v66 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        v90 = [*(a1 + 48) resultType];
        v91 = "executeFetchRequest";
        if (v90 == 1)
        {
          v91 = "countForFetchRequest";
        }

        v97 = v91;
        v96 = [v2 fetchLimit];
        [v59 timeIntervalSinceNow];
        v93 = v92;
        v102 = [*(a1 + 48) resultType];
        v99 = v64;
        if (v102 != 1)
        {
          v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v64, "count")}];
        }

        v94 = _DKQueryLoggingEnabled();
        if (v94)
        {
          v98 = [v2 predicate];
        }

        else
        {
          v98 = @"<not shown>";
        }

        v95 = [v2 sortDescriptors];
        *buf = 136316418;
        v115 = v97;
        v116 = 2048;
        v117 = v96;
        v118 = 2048;
        v119 = -v93;
        v120 = 2112;
        v121 = v99;
        v122 = 2112;
        v123 = v98;
        v124 = 2112;
        v125 = v95;
        _os_log_debug_impl(&dword_191750000, v66, OS_LOG_TYPE_DEBUG, "_DKEventQuery executeUsingCoreDataStorage finished %s, fetchLimit %lu object(s), elapsed %f(sec), returned %@ object(s), Predicate: %@, Sort descriptors: %@ ", buf, 0x3Eu);

        if (v94)
        {
        }

        if (v102 != 1)
        {
        }
      }
    }

    if (v63)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v63);
      CDPerfMetricEndTimingAndIncrementErrorCount(v39, v105);
LABEL_68:

      goto LABEL_69;
    }

    v67 = objc_alloc_init(_DKObjectMOConverter);
    -[_DKObjectMOConverter setReadMetadata:](v67, "setReadMetadata:", [*(a1 + 48) readMetadata]);
    -[_DKObjectMOConverter setDeduplicateValues:](v67, "setDeduplicateValues:", [*(a1 + 48) deduplicateValues]);
    v68 = [*(a1 + 48) excludedMetadataKeys];
    [(_DKObjectMOConverter *)v67 setExcludedMetadataKeys:v68];

    v69 = [*(a1 + 48) resultType];
    if (v69 > 2)
    {
      if ((v69 - 3) < 4)
      {
        v70 = *(*(a1 + 72) + 8);
        v71 = v64;
        v72 = *(v70 + 40);
        *(v70 + 40) = v71;
LABEL_66:

LABEL_67:
        CDPerfMetricEndTimingAndSetResultCount(v39, v105, [*(*(*(a1 + 72) + 8) + 40) count]);

        goto LABEL_68;
      }

LABEL_64:
      v72 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported result type: %ld", objc_msgSend(*(a1 + 48), "resultType")];
      v100 = MEMORY[0x1E696ABC0];
      v111 = *MEMORY[0x1E696A578];
      v112 = v72;
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      v81 = [v100 errorWithDomain:@"com.apple.coreduet.knowledge" code:3 userInfo:v80];
      v82 = *(*(a1 + 64) + 8);
      v83 = *(v82 + 40);
      *(v82 + 40) = v81;

      goto LABEL_66;
    }

    if (v69)
    {
      if (v69 == 1)
      {
        v101 = MEMORY[0x1E696AD98];
        v84 = [v64 unsignedIntegerValue];
        v72 = [*(a1 + 56) firstObject];
        v85 = [v101 numberWithUnsignedInteger:{objc_msgSend(v72, "unsignedIntegerValue") + v84}];
        v113 = v85;
        v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
        v87 = *(*(a1 + 72) + 8);
        v88 = *(v87 + 40);
        *(v87 + 40) = v86;

        goto LABEL_66;
      }

      if (v69 != 2)
      {
        goto LABEL_64;
      }

      v73 = [(_DKObjectMOConverter *)v67 dataIntervalsFromManagedObjects:v64];
      v74 = *(a1 + 72);
    }

    else
    {
      v76 = [(_DKObjectMOConverter *)v67 objectsFromManagedObjects:v64];
      v77 = *(*(a1 + 72) + 8);
      v78 = *(v77 + 40);
      *(v77 + 40) = v76;

      if (!_os_feature_enabled_impl())
      {
        goto LABEL_67;
      }

      v79 = *(a1 + 56);
      if (!v79 || ![v79 count])
      {
        goto LABEL_67;
      }

      v73 = [*(*(*(a1 + 72) + 8) + 40) arrayByAddingObjectsFromArray:*(a1 + 56)];
      v74 = *(a1 + 72);
    }

    v75 = *(v74 + 8);
    v72 = *(v75 + 40);
    *(v75 + 40) = v73;
    goto LABEL_66;
  }

  v19 = [v2 predicate];
  v106 = 0;
  v20 = [_DKPredicateValidator validatePredicate:v19 allowedKeys:0 error:&v106];
  v21 = v106;

  if (v20)
  {
    v22 = [v2 predicate];
    [v22 allowEvaluation];

    goto LABEL_24;
  }

  v37 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke_cold_2(v2);
  }

  v38 = *(*(a1 + 64) + 8);
  v39 = *(v38 + 40);
  *(v38 + 40) = v21;
LABEL_69:

  v89 = *MEMORY[0x1E69E9840];
}

void __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 sortDescriptors];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_33();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 predicate];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_33();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __51___DKEventQuery_executeUsingCoreDataStorage_error___block_invoke_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_191750000, v0, OS_LOG_TYPE_FAULT, "[_DKEventQuery executeUsingCoreDataStorage] caught %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end