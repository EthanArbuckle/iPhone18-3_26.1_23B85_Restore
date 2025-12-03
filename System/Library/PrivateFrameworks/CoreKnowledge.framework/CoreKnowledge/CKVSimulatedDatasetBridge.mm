@interface CKVSimulatedDatasetBridge
- (BOOL)_processDataset:(id)dataset;
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (CKVSimulatedDatasetBridge)init;
- (CKVSimulatedDatasetBridge)initWithDataset:(id)dataset;
@end

@implementation CKVSimulatedDatasetBridge

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  blockCopy = block;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  items = self->_items;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CKVSimulatedDatasetBridge_enumerateItemsWithError_usingBlock___block_invoke;
  v9[3] = &unk_1E831E1B8;
  v7 = blockCopy;
  v10 = v7;
  v11 = &v12;
  [(NSArray *)items enumerateObjectsUsingBlock:v9];
  LOBYTE(items) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return (items & 1) == 0;
}

uint64_t __64__CKVSimulatedDatasetBridge_enumerateItemsWithError_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_processDataset:(id)dataset
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  datasetCopy = dataset;
  v6 = [[v4 alloc] initWithCapacity:{-[KVDatasetInfo itemCount](self->_datasetInfo, "itemCount")}];
  v25 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__CKVSimulatedDatasetBridge__processDataset___block_invoke;
  v23[3] = &unk_1E831E190;
  v7 = v6;
  v24 = v7;
  [datasetCopy enumerateItemsWithError:&v25 usingBlock:v23];

  v8 = v25;
  if (!v8)
  {
    objc_storeStrong(&self->_items, v6);
    if (![(NSArray *)self->_items count])
    {
      v15 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        datasetInfo = self->_datasetInfo;
        *buf = 136315394;
        v27 = "[CKVSimulatedDatasetBridge _processDataset:]";
        v28 = 2112;
        v29 = datasetInfo;
        _os_log_error_impl(&dword_1C8683000, v15, OS_LOG_TYPE_ERROR, "%s Unable to resolve Cascade item for empty dataset: %@", buf, 0x16u);
      }

      v9 = 0;
      goto LABEL_4;
    }

    firstObject = [(NSArray *)self->_items firstObject];
    v22 = 0;
    v13 = [firstObject toCascadeItem:&v22];
    v9 = v22;

    v11 = v13 != 0;
    if (v13)
    {
      content = [v13 content];
      self->_cascadeItemType = [objc_opt_class() itemType];
    }

    else
    {
      v16 = CKLogContextVocabulary;
      if (!os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      items = self->_items;
      content = v16;
      firstObject2 = [(NSArray *)items firstObject];
      *buf = 136315650;
      v27 = "[CKVSimulatedDatasetBridge _processDataset:]";
      v28 = 2112;
      v29 = firstObject2;
      v30 = 2112;
      v31 = v9;
      _os_log_error_impl(&dword_1C8683000, content, OS_LOG_TYPE_ERROR, "%s Failed to convert first item: %@ error: %@", buf, 0x20u);
    }

LABEL_13:
    goto LABEL_14;
  }

  v9 = v8;
  v10 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    v18 = self->_datasetInfo;
    *buf = 136315650;
    v27 = "[CKVSimulatedDatasetBridge _processDataset:]";
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v9;
    _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to enumerate dataset: %@ error: %@", buf, 0x20u);
  }

LABEL_4:
  v11 = 0;
LABEL_14:

  return v11;
}

- (CKVSimulatedDatasetBridge)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init not available" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVSimulatedDatasetBridge)initWithDataset:(id)dataset
{
  datasetCopy = dataset;
  v10.receiver = self;
  v10.super_class = CKVSimulatedDatasetBridge;
  v5 = [(CKVSimulatedDatasetBridge *)&v10 init];
  if (v5 && ([datasetCopy datasetInfo], v6 = objc_claimAutoreleasedReturnValue(), datasetInfo = v5->_datasetInfo, v5->_datasetInfo = v6, datasetInfo, !-[CKVSimulatedDatasetBridge _processDataset:](v5, "_processDataset:", datasetCopy)))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end