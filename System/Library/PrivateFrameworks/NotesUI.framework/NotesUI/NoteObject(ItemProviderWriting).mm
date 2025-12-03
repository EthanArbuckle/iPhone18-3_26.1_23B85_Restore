@interface NoteObject(ItemProviderWriting)
+ (id)writableTypeIdentifiersForItemProvider;
- (id)fileWrapperForURL:()ItemProviderWriting;
- (id)writableTypeIdentifiersForItemProvider;
- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting;
- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
@end

@implementation NoteObject(ItemProviderWriting)

+ (id)writableTypeIdentifiersForItemProvider
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E69B7118];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

  return v0;
}

- (id)writableTypeIdentifiersForItemProvider
{
  v6[2] = *MEMORY[0x1E69E9840];
  if ([self isPlainText])
  {
    identifier = [*MEMORY[0x1E6983060] identifier];
    v2 = *MEMORY[0x1E69B7118];
    v6[0] = identifier;
    v6[1] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  }

  else
  {
    identifier = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
    v3 = [identifier arrayByAddingObject:*MEMORY[0x1E69B7118]];
  }

  v4 = v3;

  return v4;
}

- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting
{
  if ([a3 isEqual:*MEMORY[0x1E69B7118]])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:*MEMORY[0x1E69B7118]])
  {
    v8 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [NoteObject(ItemProviderWriting) loadDataWithTypeIdentifier:v8 forItemProviderCompletionHandler:?];
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__NoteObject_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    block[3] = &unk_1E846BA48;
    v12 = v6;
    selfCopy = self;
    v14 = v7;
    dispatch_async(v9, block);
  }

  return 0;
}

- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__79;
  v18 = __Block_byref_object_dispose__79;
  v19 = 0;
  managedObjectContext = [self managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__NoteObject_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v13[3] = &unk_1E8468FA8;
  v13[4] = self;
  v13[5] = &v14;
  [managedObjectContext performBlockAndWait:v13];

  v9 = [MEMORY[0x1E69B77F0] attributedStringFromHTMLString:v15[5] readerDelegate:self];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _loadFileRepresentationOfTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0);
  }

  _Block_object_dispose(&v14, 8);
  return 0;
}

- (id)fileWrapperForURL:()ItemProviderWriting
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B77B0] contentIDStringFromCIDURL:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__79;
  v18 = __Block_byref_object_dispose__79;
  v19 = 0;
  managedObjectContext = [self managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NoteObject_ItemProviderWriting__fileWrapperForURL___block_invoke;
  v10[3] = &unk_1E8469190;
  v11 = v5;
  selfCopy = self;
  v13 = &v14;
  [managedObjectContext performBlockAndWait:v10];

  v7 = v15[5];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AC38]);
    self = [v8 initWithURL:v15[5] options:0 error:0];
  }

  _Block_object_dispose(&v14, 8);
  if (!v7)
  {
LABEL_5:
    self = 0;
  }

  return self;
}

@end