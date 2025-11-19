@interface ICCreateModernNoteAction
- (ICCreateModernNoteAction)initWithManagedObjectContext:(id)a3 folder:(id)a4;
- (id)performWithTitle:(id)a3 contents:(id)a4 pinned:(BOOL)a5 error:(id *)a6;
@end

@implementation ICCreateModernNoteAction

- (ICCreateModernNoteAction)initWithManagedObjectContext:(id)a3 folder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCreateModernNoteAction;
  v9 = [(ICCreateModernNoteAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_folder, a4);
  }

  return v10;
}

- (id)performWithTitle:(id)a3 contents:(id)a4 pinned:(BOOL)a5 error:(id *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__49;
  v35 = __Block_byref_object_dispose__49;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__49;
  v29 = __Block_byref_object_dispose__49;
  v30 = 0;
  if ([v10 length])
  {
    v12 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10];
    if ([v11 length])
    {
      [v12 ic_appendString:@"\n"];
      v13 = [v11 mutableCopy];
      [v13 insertAttributedString:v12 atIndex:0];
    }

    else
    {
      v13 = [v12 mutableCopy];
    }
  }

  else
  {
    v13 = [v11 mutableCopy];
    v12 = 0;
  }

  v14 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    -[ICCreateModernNoteAction performWithTitle:contents:pinned:error:].cold.1(buf, [v13 length], objc_msgSend(v13, "hash"), v14);
  }

  v15 = [(ICCreateModernNoteAction *)self context];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__ICCreateModernNoteAction_performWithTitle_contents_pinned_error___block_invoke;
  v20[3] = &unk_1E846CF38;
  v20[4] = self;
  v22 = &v25;
  v16 = v13;
  v21 = v16;
  v23 = &v31;
  v24 = a5;
  [v15 performBlockAndWait:v20];

  if (a6)
  {
    v17 = v32[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v18;
}

void __67__ICCreateModernNoteAction_performWithTitle_contents_pinned_error___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) folder];
  v3 = [v2 canMoveAddOrDeleteContents];

  if (v3)
  {
    v4 = MEMORY[0x1E69B77F0];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) folder];
    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = [v4 newNoteWithAttributedString:v5 inFolder:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (!v11)
    {
      return;
    }

    if (*(a1 + 64) == 1)
    {
      [v11 setIsPinned:1];
    }

    v12 = [*(a1 + 32) context];
    v13 = *(*(a1 + 56) + 8);
    v29 = *(v13 + 40);
    [v12 save:&v29];
    v14 = v29;
    v15 = *(v13 + 40);
    *(v13 + 40) = v14;
  }

  else
  {
    v16 = [*(a1 + 32) folder];
    v17 = [v16 isSharedReadOnly];

    if (v17)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69B79F0];
      v35 = *MEMORY[0x1E69B7A00];
      v36[0] = @"Can't create a note in the specified folder because it is read only";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v20 = v18;
      v21 = v19;
      v22 = 228;
    }

    else
    {
      v23 = [*(a1 + 32) folder];
      v24 = [v23 isSmartFolder];

      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E69B79F0];
      if (v24)
      {
        v33 = *MEMORY[0x1E69B7A00];
        v34 = @"Can't create a note in the specified folder because it is a smart folder";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v20 = v25;
        v21 = v26;
        v22 = 229;
      }

      else
      {
        v31 = *MEMORY[0x1E69B7A00];
        v32 = @"Can't create a note in the specified folder";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v20 = v25;
        v21 = v26;
        v22 = 218;
      }
    }

    v27 = [v20 errorWithDomain:v21 code:v22 userInfo:v12];
    v28 = *(*(a1 + 56) + 8);
    v15 = *(v28 + 40);
    *(v28 + 40) = v27;
  }
}

- (void)performWithTitle:(uint8_t *)buf contents:(uint64_t)a2 pinned:(uint64_t)a3 error:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "About to create note with content length %lu and hash %lu", buf, 0x16u);
}

@end