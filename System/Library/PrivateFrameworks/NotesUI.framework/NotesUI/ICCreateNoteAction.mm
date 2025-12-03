@interface ICCreateNoteAction
- (ICCreateNoteAction)initWithNoteContext:(id)context;
- (id)performWithTitle:(id)title contents:(id)contents pinned:(BOOL)pinned container:(id)container error:(id *)error;
@end

@implementation ICCreateNoteAction

- (ICCreateNoteAction)initWithNoteContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICCreateNoteAction;
  v6 = [(ICCreateNoteAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteContext, context);
    v7->_allowsNoContent = 0;
  }

  return v7;
}

- (id)performWithTitle:(id)title contents:(id)contents pinned:(BOOL)pinned container:(id)container error:(id *)error
{
  pinnedCopy = pinned;
  v60[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  contentsCopy = contents;
  containerCopy = container;
  if ([contentsCopy length] || objc_msgSend(titleCopy, "length") || -[ICCreateNoteAction allowsNoContent](self, "allowsNoContent"))
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
      noteContext = [(ICCreateNoteAction *)self noteContext];
      htmlNoteContext = [noteContext htmlNoteContext];
      v19 = [v16 defaultAccountWithHTMLNoteContext:htmlNoteContext];

      managedObjectContext = [v19 managedObjectContext];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke;
      v43[3] = &unk_1E8468BA0;
      v21 = v19;
      v44 = v21;
      [managedObjectContext performBlock:v43];

      objc_opt_class();
      v40 = ICDynamicCast();
      v39 = ICProtocolCast();
      if (v40)
      {
        noteContext2 = [(ICCreateNoteAction *)self noteContext];
        modernManagedObjectContext = [noteContext2 modernManagedObjectContext];
        v24 = v42;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_162;
        v42[3] = &unk_1E8468FA8;
        v42[5] = &v51;
        v42[4] = v40;
        [modernManagedObjectContext performBlockAndWait:v42];
      }

      else
      {
        if (!v39)
        {
          if (error)
          {
            v34 = MEMORY[0x1E696ABC0];
            v35 = *MEMORY[0x1E69B7A00];
            v58[0] = @"Unknown default account type";
            v36 = *MEMORY[0x1E69B79F8];
            v57[0] = v35;
            v57[1] = v36;
            null = v21;
            if (!v21)
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            v58[1] = null;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
            *error = [v34 errorWithDomain:*MEMORY[0x1E69B79F0] code:218 userInfo:v38];

            if (!v21)
            {
            }
          }

          error = 0;
          mEMORY[0x1E69B7AE0] = v44;
          goto LABEL_19;
        }

        noteContext2 = [(ICCreateNoteAction *)self noteContext];
        modernManagedObjectContext = [noteContext2 htmlManagedObjectContext];
        v24 = v41;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __71__ICCreateNoteAction_performWithTitle_contents_pinned_container_error___block_invoke_2;
        v41[3] = &unk_1E8468FA8;
        v41[5] = &v45;
        v41[4] = v39;
        [modernManagedObjectContext performBlockAndWait:v41];
      }

      v15 = v52;
    }

    if (v15[5])
    {
      v27 = [ICCreateModernNoteAction alloc];
      noteContext3 = [(ICCreateNoteAction *)self noteContext];
      modernManagedObjectContext2 = [noteContext3 modernManagedObjectContext];
      v30 = [(ICCreateModernNoteAction *)v27 initWithManagedObjectContext:modernManagedObjectContext2 folder:v52[5]];
    }

    else
    {
      if (!v46[5])
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCreateNoteAction performWithTitle:contents:pinned:container:error:]" simulateCrash:1 showAlert:0 format:@"Expected a default folder to be set or an error returned"];
        error = 0;
        goto LABEL_21;
      }

      v31 = [ICCreateHTMLNoteAction alloc];
      noteContext3 = [(ICCreateNoteAction *)self noteContext];
      modernManagedObjectContext2 = [noteContext3 htmlNoteContext];
      v30 = [(ICCreateHTMLNoteAction *)v31 initWithHTMLNoteContext:modernManagedObjectContext2 folder:v46[5]];
    }

    v21 = v30;

    error = [v21 performWithTitle:titleCopy contents:contentsCopy pinned:pinnedCopy error:error];
    if (!error)
    {
LABEL_20:

LABEL_21:
      _Block_object_dispose(&v45, 8);

      _Block_object_dispose(&v51, 8);
      goto LABEL_22;
    }

    mEMORY[0x1E69B7AE0] = [MEMORY[0x1E69B7AE0] sharedWidget];
    [mEMORY[0x1E69B7AE0] reloadTimelinesWithReason:@"Note was created via automation"];
LABEL_19:

    goto LABEL_20;
  }

  if (error)
  {
    v25 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E69B7A00];
    v60[0] = @"Attempted to create a note with no content";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    *error = [v25 errorWithDomain:*MEMORY[0x1E69B79F0] code:218 userInfo:v26];

    error = 0;
  }

LABEL_22:

  return error;
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