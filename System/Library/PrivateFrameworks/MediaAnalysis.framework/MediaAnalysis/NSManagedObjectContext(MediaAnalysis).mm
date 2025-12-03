@interface NSManagedObjectContext(MediaAnalysis)
- (uint64_t)mad_batchDeleteAndSync:()MediaAnalysis deleteCount:;
- (uint64_t)mad_hasChanges;
- (uint64_t)mad_insertBatch:()MediaAnalysis entityName:insertedCount:;
- (uint64_t)mad_performAndSaveChanges:()MediaAnalysis error:;
- (uint64_t)mad_reset;
- (uint64_t)mad_saveChangesWithError:()MediaAnalysis;
@end

@implementation NSManagedObjectContext(MediaAnalysis)

- (uint64_t)mad_saveChangesWithError:()MediaAnalysis
{
  v23 = *MEMORY[0x1E69E9840];
  if ([self hasChanges])
  {
    v5 = mach_continuous_time();
    v16 = 0;
    v6 = [self save:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = VCPSignPostPersistentLog();
      v9 = VCPSignPostPersistentLog();
      v10 = os_signpost_id_generate(v9);

      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        v11 = qos_class_self();
        v12 = VCPMAQoSDescription(v11);
        v13 = v12;
        uTF8String = [v12 UTF8String];
        *buf = 134349570;
        v18 = v5;
        v19 = 2082;
        v20 = "SaveToDisk";
        v21 = 2082;
        v22 = uTF8String;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_EVENT, v10, "CoreDataPersistence", "%{public, signpost.description:begin_time}llu Type=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s  enableTelemetry=YES ", buf, 0x20u);
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD] Saved changes to CoreData Analysis Store", buf, 2u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to save changes to CoreData Analysis Store - %@", buf, 0xCu);
      }

      if (a3)
      {
        *a3 = [v7 copy];
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MACD] No pending changes, skip saving", buf, 2u);
    }

    return 1;
  }

  return v6;
}

- (uint64_t)mad_performAndSaveChanges:()MediaAnalysis error:
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__24;
  v22 = __Block_byref_object_dispose__24;
  v23 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __73__NSManagedObjectContext_MediaAnalysis__mad_performAndSaveChanges_error___block_invoke;
  v13 = &unk_1E834DB38;
  v16 = &v24;
  v7 = v6;
  v17 = &v18;
  selfCopy = self;
  v15 = v7;
  [self performBlockAndWait:&v10];
  v8 = *(v25 + 24);
  if (a4 && (v25[3] & 1) == 0)
  {
    *a4 = [v19[5] copy];
    v8 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8 & 1;
}

- (uint64_t)mad_batchDeleteAndSync:()MediaAnalysis deleteCount:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v6];
  [v7 setResultType:1];
  v16 = 0;
  v8 = [self executeRequest:v7 error:&v16];
  v9 = v16;
  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to execute batch delete request with error %@", buf, 0xCu);
    }

    v10 = 4294967278;
  }

  else
  {
    result = [v8 result];
    v12 = MEMORY[0x1E695D628];
    v18 = *MEMORY[0x1E695D2F8];
    v19 = result;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    selfCopy = self;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selfCopy count:1];
    [v12 mergeChangesFromRemoteContextSave:v13 intoContexts:v14];

    if (a4)
    {
      *a4 = [result count];
    }

    v10 = 0;
  }

  return v10;
}

- (uint64_t)mad_insertBatch:()MediaAnalysis entityName:insertedCount:
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695D550]) initWithEntityName:v9 objects:v8];
  [v10 setResultType:2];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__24;
  v32 = __Block_byref_object_dispose__24;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__24;
  v26 = __Block_byref_object_dispose__24;
  v27 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__NSManagedObjectContext_MediaAnalysis__mad_insertBatch_entityName_insertedCount___block_invoke;
  v18[3] = &unk_1E834DB60;
  v18[4] = self;
  v11 = v10;
  v19 = v11;
  v20 = &v22;
  v21 = &v28;
  v12 = (v23 + 5);
  obj = v23[5];
  [self mad_performAndSaveChanges:v18 error:&obj];
  objc_storeStrong(v12, obj);
  if (v23[5])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = v23[5];
      *buf = 138412546;
      v35 = v9;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MACD] Failed to execute batch insert request for entity %@ with error %@", buf, 0x16u);
    }

    v14 = 4294967278;
  }

  else if (a5 && (v15 = v29[5]) != 0)
  {
    v14 = 0;
    *a5 = [v15 unsignedIntegerValue];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

- (uint64_t)mad_reset
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__NSManagedObjectContext_MediaAnalysis__mad_reset__block_invoke;
  v2[3] = &unk_1E834BDC0;
  v2[4] = self;
  return [self performBlockAndWait:v2];
}

- (uint64_t)mad_hasChanges
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__NSManagedObjectContext_MediaAnalysis__mad_hasChanges__block_invoke;
  v3[3] = &unk_1E834C4B0;
  v3[4] = self;
  v3[5] = &v4;
  [self performBlockAndWait:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

@end