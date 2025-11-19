@interface ICCreateHTMLNoteAction
- (ICCreateHTMLNoteAction)initWithHTMLNoteContext:(id)a3 folder:(id)a4;
- (id)performWithTitle:(id)a3 contents:(id)a4 pinned:(BOOL)a5 error:(id *)a6;
@end

@implementation ICCreateHTMLNoteAction

- (ICCreateHTMLNoteAction)initWithHTMLNoteContext:(id)a3 folder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCreateHTMLNoteAction;
  v9 = [(ICCreateHTMLNoteAction *)&v12 init];
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
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x1E695DF00] now];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__80;
  v35 = __Block_byref_object_dispose__80;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__80;
  v29 = __Block_byref_object_dispose__80;
  v30 = 0;
  if (v7)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B79F0] code:236 userInfo:0];
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if ([v10 length])
    {
      if ([v11 length])
      {
        v14 = objc_alloc_init(MEMORY[0x1E696AD40]);
        [v14 ic_appendString:v10];
        [v14 ic_appendString:@"\n"];
        [v14 appendAttributedString:v11];
        v15 = [v14 copy];

        v11 = v15;
      }

      else
      {
        v14 = v11;
        v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
      }
    }

    v16 = [(ICCreateHTMLNoteAction *)self context];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__ICCreateHTMLNoteAction_performWithTitle_contents_pinned_error___block_invoke;
    v19[3] = &unk_1E846E5B8;
    v11 = v11;
    v20 = v11;
    v21 = self;
    v22 = v12;
    v23 = &v31;
    v24 = &v25;
    [v16 performBlockAndWait:v19];

    if (a6)
    {
      v17 = v32[5];
      if (v17)
      {
        *a6 = v17;
      }
    }

    v13 = v26[5];
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v13;
}

void __65__ICCreateHTMLNoteAction_performWithTitle_contents_pinned_error___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = *MEMORY[0x1E69DB658];
    v3 = *MEMORY[0x1E69DB638];
    v18[0] = *MEMORY[0x1E69DB628];
    v18[1] = v3;
    v19[0] = v2;
    v19[1] = &unk_1F4FC3C00;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v5 = [*(a1 + 32) dataFromRange:0 documentAttributes:objc_msgSend(*(a1 + 32) error:{"length"), v4, 0}];
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = [*(a1 + 40) context];
  v8 = ICCheckedDynamicCast();
  v9 = [v8 newlyAddedNote];

  [v9 setCreationDate:*(a1 + 48)];
  [v9 setModificationDate:*(a1 + 48)];
  v10 = [*(a1 + 40) folder];
  [v9 setStore:v10];

  [v9 setContent:v6];
  v11 = [*(a1 + 32) string];
  v12 = ICNoteTitleFromPlainText();
  [v9 setTitle:v12];

  v13 = [*(a1 + 40) context];
  v14 = [v13 managedObjectContext];
  v15 = *(*(a1 + 56) + 8);
  obj = *(v15 + 40);
  v16 = [v14 save:&obj];
  objc_storeStrong((v15 + 40), obj);

  if (v16)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
  }
}

@end