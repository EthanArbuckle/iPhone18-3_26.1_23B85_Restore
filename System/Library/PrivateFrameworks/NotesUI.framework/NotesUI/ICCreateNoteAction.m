@interface ICCreateNoteAction
- (ICCreateNoteAction)initWithNoteContext:(id)a3;
- (id)performWithTitle:(id)a3 contents:(id)a4 pinned:(BOOL)a5 container:(id)a6 error:(id *)a7;
@end

@implementation ICCreateNoteAction

- (ICCreateNoteAction)initWithNoteContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICCreateNoteAction;
  v6 = [(ICCreateNoteAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteContext, a3);
    v7->_allowsNoContent = 0;
  }

  return v7;
}

- (id)performWithTitle:(id)a3 contents:(id)a4 pinned:(BOOL)a5 container:(id)a6 error:(id *)a7
{
  v9 = a5;
  v60[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if ([v13 length] || objc_msgSend(v12, "length") || -[ICCreateNoteAction allowsNoContent](self, "allowsNoContent"))
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__22;
    v55 = __Block_byref_object_dispose__22;
    objc_opt_class();
    v56 = ICDynamicCast();
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__22;
    v49 = __Block_byref_object_dispose__22;
    objc_opt_class();
    v50 = ICClassAndProtocolCast();
    v15 = v52;
    if (!v46[5] && !v52[5])
    {
      v16 = MEMORY[0x1E69B7738];
      v17 = [(ICCreateNoteAction *)self noteContext];
      v18 = [v17 htmlNoteContext];
      v19 = [v16 defaultAccountWithHTMLNoteContext:v18];

      v20 = [v19 managedObjectContext];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke;
      v43[3] = &unk_1E8468BA0;
      v21 = v19;
      v44 = v21;
      [v20 performBlock:v43];

      objc_opt_class();
      v40 = ICDynamicCast();
      v39 = ICProtocolCast();
      if (v40)
      {
        v22 = [(ICCreateNoteAction *)self noteContext];
        v23 = [v22 modernManagedObjectContext];
        v24 = v42;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_162;
        v42[3] = &unk_1E8468FA8;
        v42[5] = &v51;
        v42[4] = v40;
        [v23 performBlockAndWait:v42];
      }

      else
      {
        if (!v39)
        {
          if (a7)
          {
            v34 = MEMORY[0x1E696ABC0];
            v35 = *MEMORY[0x1E69B7A00];
            v58[0] = @"Unknown default account type";
            v36 = *MEMORY[0x1E69B79F8];
            v57[0] = v35;
            v57[1] = v36;
            v37 = v21;
            if (!v21)
            {
              v37 = [MEMORY[0x1E695DFB0] null];
            }

            v58[1] = v37;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
            *a7 = [v34 errorWithDomain:*MEMORY[0x1E69B79F0] code:218 userInfo:v38];

            if (!v21)
            {
            }
          }

          a7 = 0;
          v32 = v44;
          goto LABEL_19;
        }

        v22 = [(ICCreateNoteAction *)self noteContext];
        v23 = [v22 htmlManagedObjectContext];
        v24 = v41;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_2;
        v41[3] = &unk_1E8468FA8;
        v41[5] = &v45;
        v41[4] = v39;
        [v23 performBlockAndWait:v41];
      }

      v15 = v52;
    }

    if (v15[5])
    {
      v27 = [ICCreateModernNoteAction alloc];
      v28 = [(ICCreateNoteAction *)self noteContext];
      v29 = [v28 modernManagedObjectContext];
      v30 = [(ICCreateModernNoteAction *)v27 initWithManagedObjectContext:v29 folder:v52[5]];
    }

    else
    {
      if (!v46[5])
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCreateNoteAction performWithTitle:contents:pinned:container:error:]" simulateCrash:1 showAlert:0 format:@"Expected a default folder to be set or an error returned"];
        a7 = 0;
        goto LABEL_21;
      }

      v31 = [ICCreateHTMLNoteAction alloc];
      v28 = [(ICCreateNoteAction *)self noteContext];
      v29 = [v28 htmlNoteContext];
      v30 = [(ICCreateHTMLNoteAction *)v31 initWithHTMLNoteContext:v29 folder:v46[5]];
    }

    v21 = v30;

    a7 = [v21 performWithTitle:v12 contents:v13 pinned:v9 error:a7];
    if (!a7)
    {
LABEL_20:

LABEL_21:
      _Block_object_dispose(&v45, 8);

      _Block_object_dispose(&v51, 8);
      goto LABEL_22;
    }

    v32 = [MEMORY[0x1E69B7AE0] sharedWidget];
    [v32 reloadTimelinesWithReason:@"Note was created via automation"];
LABEL_19:

    goto LABEL_20;
  }

  if (a7)
  {
    v25 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E69B7A00];
    v60[0] = @"Attempted to create a note with no content";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    *a7 = [v25 errorWithDomain:*MEMORY[0x1E69B79F0] code:218 userInfo:v26];

    a7 = 0;
  }

LABEL_22:

  return a7;
}

void __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_cold_1(a1, v2);
  }
}

uint64_t __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_162(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) defaultFolder];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) defaultFolder];

  return MEMORY[0x1EEE66BB8]();
}

void __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "default account for Siri %@", &v4, 0xCu);
}

@end