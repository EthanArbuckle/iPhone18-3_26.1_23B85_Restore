@interface PHSceneClassification(MediaAnalysis)
+ (id)vcp_instanceWithExtendedSceneIdentifier:()MediaAnalysis confidence:;
+ (uint64_t)mad_CSUIdTypeFromType:()MediaAnalysis;
+ (uint64_t)mad_typeFromCSUIdType:()MediaAnalysis;
@end

@implementation PHSceneClassification(MediaAnalysis)

+ (id)vcp_instanceWithExtendedSceneIdentifier:()MediaAnalysis confidence:
{
  v6 = objc_alloc(MEMORY[0x1E6978A30]);
  v7 = [v6 initWithExtendedSceneIdentifier:a4 confidence:0 boundingBox:a1 startTime:*MEMORY[0x1E695F050] duration:*(MEMORY[0x1E695F050] + 8) classificationType:{*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, 0.0}];

  return v7;
}

+ (uint64_t)mad_typeFromCSUIdType:()MediaAnalysis
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a3 - 1) < 4u)
  {
    return (a3 - 1) | 4u;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected CSUSearchableKnowledgeObjectIdType: %d", v5, 8u);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

+ (uint64_t)mad_CSUIdTypeFromType:()MediaAnalysis
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a3 - 4) >= 4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected PHSceneClassificationType: %ld\n", &v6, 0xCu);
    }

    return 0;
  }

  else
  {
    return (a3 - 3);
  }
}

@end