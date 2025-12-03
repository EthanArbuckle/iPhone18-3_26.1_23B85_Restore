@interface MADEmbeddingResult(MLMultiArray)
+ (id)embeddingFromMultiArray:()MLMultiArray version:;
@end

@implementation MADEmbeddingResult(MLMultiArray)

+ (id)embeddingFromMultiArray:()MLMultiArray version:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dataType = [v5 dataType];
  if (dataType == 65552)
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_5;
  }

  if (dataType == 65568)
  {
    v7 = 0;
    v8 = 2;
LABEL_5:
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__12;
    v19 = __Block_byref_object_dispose__12;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__MADEmbeddingResult_MLMultiArray__embeddingFromMultiArray_version___block_invoke;
    v14[3] = &unk_1E834D378;
    v14[4] = buf;
    [v5 getBytesWithHandler:v14];
    if ((a4 - 1) <= 1)
    {
      v9 = MediaAnalysisApplyL2Norm(*(v16 + 5), v7);
      v10 = *(v16 + 5);
      *(v16 + 5) = v9;
    }

    v11 = objc_alloc(MEMORY[0x1E69AE300]);
    v12 = [v11 initWithVersion:a4 data:*(v16 + 5) type:v8];
    _Block_object_dispose(buf, 8);

    goto LABEL_12;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = [v5 dataType];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported embedding data type (%d)", buf, 8u);
  }

  v12 = 0;
LABEL_12:

  return v12;
}

@end