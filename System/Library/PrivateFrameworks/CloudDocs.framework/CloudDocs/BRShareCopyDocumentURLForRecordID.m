@interface BRShareCopyDocumentURLForRecordID
- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)a3 fileURL:(id)a4 withServerLookup:(BOOL)a5;
- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)a3 withServerLookup:(BOOL)a4;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareCopyDocumentURLForRecordID

- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)a3 withServerLookup:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BRShareCopyDocumentURLForRecordID;
  v8 = [(BRShareOperation *)&v11 initWithDirectConnection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordID, a3);
    v9->_withServerLookup = a4;
  }

  return v9;
}

- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)a3 fileURL:(id)a4 withServerLookup:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = BRShareCopyDocumentURLForRecordID;
  v9 = [(BRShareOperation *)&v12 initWithDirectConnection];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordID, a3);
    v10->_withServerLookup = a5;
  }

  return v10;
}

- (void)main
{
  v8 = *MEMORY[0x1E69E9840];
  *(a1 + 352);
  v7 = *(a1 + 344);
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__BRShareCopyDocumentURLForRecordID_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  [v4 completedWithResult:v6 error:v5];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRShareCopyDocumentURLForRecordID *)self copyDocumentURLCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRShareCopyDocumentURLForRecordID *)self setCopyDocumentURLCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareCopyDocumentURLForRecordID;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end