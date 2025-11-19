@interface ICTTTextStorageWithRange
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (ICTTTextStorageWithRange)initWithTextStorage:(id)a3 range:(_NSRange)a4 note:(id)a5;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (_NSRange)range;
- (id)_loadFileRepresentationOfTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (int64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:(id)a3;
- (void)prepareTextStorage;
@end

@implementation ICTTTextStorageWithRange

- (ICTTTextStorageWithRange)initWithTextStorage:(id)a3 range:(_NSRange)a4 note:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICTTTextStorageWithRange;
  v12 = [(ICTTTextStorageWithRange *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_note, a5);
    objc_storeStrong(&v13->_textStorage, a3);
    v13->_range.location = location;
    v13->_range.length = length;
  }

  return v13;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69B7508];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__33;
  v12 = __Block_byref_object_dispose__33;
  v13 = 0;
  v3 = [(ICTTTextStorageWithRange *)self note];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ICTTTextStorageWithRange_writableTypeIdentifiersForItemProvider__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __66__ICTTTextStorageWithRange_writableTypeIdentifiersForItemProvider__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) note];
  v2 = [v5 writableTypeIdentifiersForNoteContent];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:(id)a3
{
  if ([a3 isEqual:*MEMORY[0x1E69B7508]])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)prepareTextStorage
{
  v3 = [(ICTTTextStorageWithRange *)self note];
  v4 = [v3 objectID];

  v5 = [MEMORY[0x1E69B7800] sharedContext];
  v6 = [v5 workerManagedObjectContext];
  [(ICTTTextStorageWithRange *)self setWorkerContext:v6];

  v7 = [(ICTTTextStorageWithRange *)self workerContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__ICTTTextStorageWithRange_prepareTextStorage__block_invoke;
  v9[3] = &unk_1E8468F80;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v7 performBlock:v9];
}

void __46__ICTTTextStorageWithRange_prepareTextStorage__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B77F0];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) workerContext];
  v5 = [v2 ic_existingObjectWithID:v3 context:v4];
  [*(a1 + 32) setWorkerContextNote:v5];

  v6 = [*(a1 + 32) textStorage];
  v7 = [*(a1 + 32) note];
  v8 = [v7 textStorage];

  if (v6 == v8)
  {
    v9 = [*(a1 + 32) workerContextNote];
    [v9 prepareForCopyingData];

    v11 = [*(a1 + 32) workerContextNote];
    v10 = [v11 textStorage];
    [*(a1 + 32) setTextStorage:v10];
  }
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICTTTextStorageWithRange *)self range];
  v10 = v9;
  v11 = [(ICTTTextStorageWithRange *)self workerContext];

  if (!v11)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.workerContext != ((void*)0)" functionName:"-[ICTTTextStorageWithRange loadDataWithTypeIdentifier:forItemProviderCompletionHandler:]" simulateCrash:1 showAlert:0 format:@"Seems like prepareTextStorage was never called"];
  }

  v12 = [(ICTTTextStorageWithRange *)self workerContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __88__ICTTTextStorageWithRange_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v16[3] = &unk_1E846B648;
  v16[4] = self;
  v17 = v6;
  v19 = v8;
  v20 = v10;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [v12 performBlock:v16];

  return 0;
}

void __88__ICTTTextStorageWithRange_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) textStorage];

  if (v2)
  {
    v3 = [*(a1 + 32) textStorage];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) workerContextNote];
    v2 = [v3 copyDataForUTI:v4 range:*(a1 + 56) persistenceHelper:{*(a1 + 64), v5}];
  }

  v6 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [*(a1 + 32) textStorage];
    v8 = [v7 ic_prettyLoggingDescription];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = 138413058;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    v17 = 2048;
    v18 = [v2 length];
    _os_log_debug_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEBUG, "Load provider data for textStorage: %@, range: (%lu, %lu) => data length: %lu", &v11, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)_loadFileRepresentationOfTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICTTTextStorageWithRange *)self range];
  v10 = v9;
  v11 = [(ICTTTextStorageWithRange *)self workerContext];

  if (!v11)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.workerContext != ((void*)0)" functionName:"-[ICTTTextStorageWithRange _loadFileRepresentationOfTypeIdentifier:forItemProviderCompletionHandler:]" simulateCrash:1 showAlert:0 format:@"Seems like prepareTextStorage was never called"];
  }

  v12 = [(ICTTTextStorageWithRange *)self workerContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __101__ICTTTextStorageWithRange__loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v16[3] = &unk_1E846B648;
  v19 = v8;
  v20 = v10;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [v12 performBlock:v16];

  return 0;
}

void __101__ICTTTextStorageWithRange__loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "DragAndDrop");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __101__ICTTTextStorageWithRange__loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 32) textStorage];
  v4 = [v3 filteredAttributedStringForUTI:*(a1 + 40) range:{*(a1 + 56), *(a1 + 64)}];

  if (v4)
  {
    v5 = [v4 _loadFileRepresentationOfTypeIdentifier:*(a1 + 40) forItemProviderCompletionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

void __101__ICTTTextStorageWithRange__loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) textStorage];
  v5 = [v4 ic_prettyLoggingDescription];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = 138412802;
  v9 = v5;
  v10 = 2048;
  v11 = v6;
  v12 = 2048;
  v13 = v7;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Load file representation for textStorage: %@, range: (%lu, %lu)", &v8, 0x20u);
}

@end