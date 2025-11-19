@interface NoteObject
@end

@implementation NoteObject

void __59__NoteObject_ICLegacyNoteUI__appendAttributedString_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) htmlString];
  v3 = [v2 length];
  if (([*(a1 + 32) isPlainText] & 1) == 0)
  {
    v3 = [v2 ic_HTMLInsertionPoint];
    v4 = ICNoteHTMLFromPlainText();
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  if (v3)
  {
    if ([*(a1 + 32) isPlainText])
    {
      v7 = [v2 characterAtIndex:v3 - 1];
      v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      LOBYTE(v7) = [v8 characterIsMember:v7];

      if (v7)
      {
        goto LABEL_9;
      }

      v9 = @"\n%@";
    }

    else
    {
      v9 = @"<div>%@</div>";
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, *(*(*(a1 + 56) + 8) + 40)];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

LABEL_9:
  v13 = [v2 mutableCopy];
  [v13 insertString:*(*(*(a1 + 56) + 8) + 40) atIndex:v3];
  v14 = objc_opt_new();
  [*(a1 + 32) setModificationDate:v14];

  v15 = [v13 copy];
  [*(a1 + 32) setHtmlString:v15];

  v16 = [*(a1 + 32) title];
  v17 = [v16 length];

  if (!v17)
  {
    v18 = [*(a1 + 40) string];
    v19 = ICNoteTitleFromPlainText();
    [*(a1 + 32) setTitle:v19];
  }

  v20 = *(a1 + 48);
  v21 = *(*(a1 + 64) + 8);
  obj = *(v21 + 40);
  [v20 save:&obj];
  objc_storeStrong((v21 + 40), obj);
}

void __95__NoteObject_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*MEMORY[0x1E6983060] identifier];
  LODWORD(v2) = [v2 isEqualToString:v3];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__79;
  v14 = __Block_byref_object_dispose__79;
  v15 = 0;
  [*(a1 + 40) managedObjectContext];
  if (v2)
    v4 = {;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __95__NoteObject_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_10;
    v9[3] = &unk_1E8468FA8;
    v9[4] = *(a1 + 40);
    v9[5] = &v10;
    [v4 performBlockAndWait:v9];

    v5 = [v11[5] dataUsingEncoding:4];
    (*(*(a1 + 48) + 16))();
  }

  else
    v6 = {;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__NoteObject_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E8468FA8;
    v8[4] = *(a1 + 40);
    v8[5] = &v10;
    [v6 performBlockAndWait:v8];

    v5 = [MEMORY[0x1E69B77F0] attributedStringFromHTMLString:v11[5] readerDelegate:*(a1 + 40)];
    v7 = [v5 loadDataWithTypeIdentifier:*(a1 + 32) forItemProviderCompletionHandler:*(a1 + 48)];
  }

  _Block_object_dispose(&v10, 8);
}

void __95__NoteObject_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_10(uint64_t a1)
{
  v5 = [*(a1 + 32) body];
  v2 = [v5 contentAsPlainText];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __95__NoteObject_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) content];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t __108__NoteObject_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) content];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void __53__NoteObject_ItemProviderWriting__fileWrapperForURL___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B77B0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) managedObjectContext];
  v8 = [v2 attachmentWithContentID:v3 context:v4];

  v5 = [v8 fileURL];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end