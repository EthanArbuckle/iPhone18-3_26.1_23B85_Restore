@interface DKKnowledgeStorageLogging
@end

@implementation DKKnowledgeStorageLogging

uint64_t __44___DKKnowledgeStorageLogging_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_logger;
  sharedInstance_logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __49___DKKnowledgeStorageLogging_portraitStreamNames__block_invoke()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = +[_CDPortraitStreams topicStream];
  v2 = [v1 name];
  v9[0] = v2;
  v3 = +[_CDPortraitStreams entityStream];
  v4 = [v3 name];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v0 setWithArray:v5];
  v7 = qword_1EADBD630;
  qword_1EADBD630 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

void __92___DKKnowledgeStorageLogging__sendDistributedNotificationName_object_throttledActivityName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40) userInfo:0 deliverImmediately:0];
}

uint64_t __83___DKKnowledgeStorageLogging_knowledgeStorage_didInsertEventsWithStreamNameCounts___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"ingest" withEventName:@"type" eventType:&unk_1F05EF6B0 eventTypePossibleValues:?];
  v1 = qword_1EADBD648;
  qword_1EADBD648 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __88___DKKnowledgeStorageLogging_knowledgeStorage_didInsertLocalEventsWithStreamNameCounts___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"ingest_local" withEventName:@"type" eventType:&unk_1F05EF6C8 eventTypePossibleValues:?];
  v1 = qword_1EADBD658;
  qword_1EADBD658 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __62___DKKnowledgeStorageLogging_streamNamesNotificationWhitelist__block_invoke(uint64_t a1)
{
  v116 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [(_DKKnowledgeStorageLogging *)*(a1 + 32) portraitStreamNames];
  [v116 unionSet:v3];

  v4 = +[_DKSystemEventStreams appActivityStream];
  v5 = [v4 name];
  OUTLINED_FUNCTION_0_35(v5, v6, v7, v8, v9, v10, v11, v12, v105, v116);

  v13 = +[_DKSystemEventStreams appIntentsStream];
  v14 = [v13 name];
  OUTLINED_FUNCTION_0_35(v14, v15, v16, v17, v18, v19, v20, v21, v106, v117);

  v22 = +[_DKSystemEventStreams appRelevantShortcutsStream];
  v23 = [v22 name];
  OUTLINED_FUNCTION_0_35(v23, v24, v25, v26, v27, v28, v29, v30, v107, v118);

  v31 = +[_DKSystemEventStreams appUsageStream];
  v32 = [v31 name];
  OUTLINED_FUNCTION_0_35(v32, v33, v34, v35, v36, v37, v38, v39, v108, v119);

  v40 = +[_DKSystemEventStreams appWebUsageStream];
  v41 = [v40 name];
  OUTLINED_FUNCTION_0_35(v41, v42, v43, v44, v45, v46, v47, v48, v109, v120);

  v49 = +[_DKSystemEventStreams appMediaUsageStream];
  v50 = [v49 name];
  OUTLINED_FUNCTION_0_35(v50, v51, v52, v53, v54, v55, v56, v57, v110, v121);

  v58 = +[_DKSystemEventStreams notificationUsageStream];
  v59 = [v58 name];
  OUTLINED_FUNCTION_0_35(v59, v60, v61, v62, v63, v64, v65, v66, v111, v122);

  v67 = +[_DKSystemEventStreams microLocationVisitStream];
  v68 = [v67 name];
  OUTLINED_FUNCTION_0_35(v68, v69, v70, v71, v72, v73, v74, v75, v112, v123);

  v76 = +[_DKSystemEventStreams nowPlayingStream];
  v77 = [v76 name];
  OUTLINED_FUNCTION_0_35(v77, v78, v79, v80, v81, v82, v83, v84, v113, v124);

  v85 = +[_DKSystemEventStreams homeKitSceneStream];
  v86 = [v85 name];
  OUTLINED_FUNCTION_0_35(v86, v87, v88, v89, v90, v91, v92, v93, v114, v125);

  v94 = +[_DKSystemEventStreams homeKitAccessoryControlStream];
  v95 = [v94 name];
  OUTLINED_FUNCTION_0_35(v95, v96, v97, v98, v99, v100, v101, v102, v115, v126);

  v103 = [v127 copy];
  v104 = qword_1EADBD640;
  qword_1EADBD640 = v103;
}

@end