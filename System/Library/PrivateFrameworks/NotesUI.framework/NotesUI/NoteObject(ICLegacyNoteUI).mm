@interface NoteObject(ICLegacyNoteUI)
- (BOOL)appendAttributedString:()ICLegacyNoteUI error:;
@end

@implementation NoteObject(ICLegacyNoteUI)

- (BOOL)appendAttributedString:()ICLegacyNoteUI error:
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 managedObjectContext];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__6;
  v31 = __Block_byref_object_dispose__6;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = &stru_1F4F94F00;
  if ([v4 length])
  {
    v6 = *MEMORY[0x1E69DB658];
    v7 = *MEMORY[0x1E69DB638];
    v33[0] = *MEMORY[0x1E69DB628];
    v33[1] = v7;
    v34[0] = v6;
    v34[1] = &unk_1F4FC3A80;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v9 = [v4 dataFromRange:0 documentAttributes:objc_msgSend(v4 error:{"length"), v8, 0}];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
    v11 = v22[5];
    v22[5] = v10;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__NoteObject_ICLegacyNoteUI__appendAttributedString_error___block_invoke;
  v16[3] = &unk_1E8469740;
  v16[4] = a1;
  v19 = &v21;
  v12 = v4;
  v17 = v12;
  v13 = v5;
  v18 = v13;
  v20 = &v27;
  [v13 performBlockAndWait:v16];
  v14 = v28[5] == 0;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

@end