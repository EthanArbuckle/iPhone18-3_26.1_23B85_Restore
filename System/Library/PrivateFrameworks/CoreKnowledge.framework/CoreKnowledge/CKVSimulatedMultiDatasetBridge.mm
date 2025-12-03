@interface CKVSimulatedMultiDatasetBridge
- (CKVSimulatedMultiDatasetBridge)init;
- (CKVSimulatedMultiDatasetBridge)initWithTask:(unsigned __int16)task;
- (id)_createDatasetInfoSummary:(int64_t)summary withOriginAppId:(id)id;
- (id)datasetInfoSummaryListForTask;
- (id)profileDirectory;
- (id)profileFileName;
- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block;
@end

@implementation CKVSimulatedMultiDatasetBridge

- (id)_createDatasetInfoSummary:(int64_t)summary withOriginAppId:(id)id
{
  v5 = MEMORY[0x1E69ABCC8];
  idCopy = id;
  v7 = [[v5 alloc] initWithItemType:summary originAppId:idCopy itemCount:0 error:0];

  return v7;
}

- (void)enumerateAllDatasets:(unint64_t *)datasets usingBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = MEMORY[0x1E695DFF8];
  profileFileName = [(CKVSimulatedMultiDatasetBridge *)self profileFileName];
  profileDirectory = [(CKVSimulatedMultiDatasetBridge *)self profileDirectory];
  v10 = [v7 fileURLWithPath:profileFileName isDirectory:0 relativeToURL:profileDirectory];

  v21 = 0;
  v11 = [MEMORY[0x1E69ABD00] profileWithContentsOfURL:v10 error:&v21];
  v12 = v21;
  if (!v11)
  {
    v13 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[CKVSimulatedMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&dword_1C8683000, v13, OS_LOG_TYPE_ERROR, "%s Unable to read profile %@", buf, 0x16u);
    }
  }

  profileInfo = [v11 profileInfo];
  *datasets = [profileInfo datasetCount];

  v20 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__CKVSimulatedMultiDatasetBridge_enumerateAllDatasets_usingBlock___block_invoke;
  v18[3] = &unk_1E831E1E0;
  v15 = blockCopy;
  v19 = v15;
  LOBYTE(profileInfo) = [v11 enumerateDatasetsWithError:&v20 usingBlock:v18];
  v16 = v20;
  if ((profileInfo & 1) == 0)
  {
    v17 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[CKVSimulatedMultiDatasetBridge enumerateAllDatasets:usingBlock:]";
      v24 = 2112;
      v25 = v16;
      _os_log_error_impl(&dword_1C8683000, v17, OS_LOG_TYPE_ERROR, "%s Unable to enumerate datasets: %@", buf, 0x16u);
    }
  }
}

uint64_t __66__CKVSimulatedMultiDatasetBridge_enumerateAllDatasets_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CKVSimulatedDatasetBridge alloc] initWithDataset:v3];

  (*(v2 + 16))(v2, v4);
  return 1;
}

- (id)profileFileName
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = CKVTaskIdDescription(self->_task);
  v4 = [v2 stringWithFormat:@"%@Profile", v3];

  return v4;
}

- (id)profileDirectory
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Assistant/SiriVocabulary/Modules/TestEndToEnd"];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];

  return v3;
}

- (id)datasetInfoSummaryListForTask
{
  v19[2] = *MEMORY[0x1E69E9840];
  task = self->_task;
  v4 = MEMORY[0x1E695E0F0];
  if (task > 5)
  {
    if (self->_task <= 7u)
    {
      if (task == 6)
      {
        v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:12 withOriginAppId:*MEMORY[0x1E69ABC78]];
        v14 = v5;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v14;
      }

      else
      {
        if (task != 7)
        {
          goto LABEL_26;
        }

        v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:13 withOriginAppId:*MEMORY[0x1E69ABCB0]];
        v13 = v5;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v13;
      }
    }

    else
    {
      switch(task)
      {
        case 8u:
          v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:15 withOriginAppId:*MEMORY[0x1E69ABC60]];
          v12 = v5;
          v6 = MEMORY[0x1E695DEC8];
          v7 = &v12;
          break;
        case 0xAu:
          v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:21 withOriginAppId:*MEMORY[0x1E69ABC80]];
          v11 = v5;
          v6 = MEMORY[0x1E695DEC8];
          v7 = &v11;
          break;
        case 0xBu:
          v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:9 withOriginAppId:*MEMORY[0x1E69ABC68]];
          v10 = v5;
          v6 = MEMORY[0x1E695DEC8];
          v7 = &v10;
          break;
        default:
          goto LABEL_26;
      }
    }

    goto LABEL_24;
  }

  if (self->_task > 2u)
  {
    switch(task)
    {
      case 3u:
        v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:3 withOriginAppId:*MEMORY[0x1E69ABC58]];
        v17 = v5;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v17;
        break;
      case 4u:
        v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:4 withOriginAppId:*MEMORY[0x1E69ABC88]];
        v16 = v5;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v16;
        break;
      case 5u:
        v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:10 withOriginAppId:*MEMORY[0x1E69ABC90]];
        v15 = v5;
        v6 = MEMORY[0x1E695DEC8];
        v7 = &v15;
        break;
      default:
        goto LABEL_26;
    }

LABEL_24:
    v4 = [v6 arrayWithObjects:v7 count:{1, v10, v11, v12, v13, v14, v15, v16, v17, v18}];
    goto LABEL_25;
  }

  if (task != 1)
  {
    if (task != 2)
    {
      goto LABEL_26;
    }

    v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:2 withOriginAppId:*MEMORY[0x1E69ABC70]];
    v18 = v5;
    v6 = MEMORY[0x1E695DEC8];
    v7 = &v18;
    goto LABEL_24;
  }

  v5 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:1 withOriginAppId:@"com.apple.test.app1"];
  v19[0] = v5;
  v8 = [(CKVSimulatedMultiDatasetBridge *)self _createDatasetInfoSummary:1 withOriginAppId:@"com.apple.test.app2"];
  v19[1] = v8;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

LABEL_25:
LABEL_26:

  return v4;
}

- (CKVSimulatedMultiDatasetBridge)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init not available" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVSimulatedMultiDatasetBridge)initWithTask:(unsigned __int16)task
{
  v5.receiver = self;
  v5.super_class = CKVSimulatedMultiDatasetBridge;
  result = [(CKVSimulatedMultiDatasetBridge *)&v5 init];
  if (result)
  {
    result->_task = task;
  }

  return result;
}

@end