@interface ICNote(ItemProviderWriting)
- (id)writableTypeIdentifiersForItemProvider;
- (id)writableTypeIdentifiersForNoteContent;
- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting;
- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (void)prepareForCopyingData;
@end

@implementation ICNote(ItemProviderWriting)

- (id)writableTypeIdentifiersForNoteContent
{
  v0 = [MEMORY[0x277CBEB40] orderedSet];
  [v0 addObject:*MEMORY[0x277D35D08]];
  v1 = [MEMORY[0x277CCA898] writableTypeIdentifiersForItemProvider];
  [v0 addObjectsFromArray:v1];

  v2 = *MEMORY[0x277CE1D78];
  v3 = [*MEMORY[0x277CE1D78] identifier];
  v4 = [v0 containsObject:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [v2 identifier];
    [v0 insertObject:v5 atIndex:1];
  }

  v6 = [v0 array];

  return v6;
}

- (id)writableTypeIdentifiersForItemProvider
{
  if ([a1 isPasswordProtected] && !objc_msgSend(a1, "isAuthenticated"))
  {
    v3 = &unk_28277E5F8;
  }

  else
  {
    v2 = [a1 writableTypeIdentifiersForNoteContent];
    v3 = [v2 arrayByAddingObject:@"com.apple.notes.noteitemprovider"];
  }

  return v3;
}

- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting
{
  if ([a3 isEqual:*MEMORY[0x277D35D08]])
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
  if ([v6 isEqualToString:@"com.apple.notes.noteitemprovider"])
  {
    v8 = os_log_create("com.apple.notes", "DragAndDrop");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICNote(ItemProviderWriting) loadDataWithTypeIdentifier:v8 forItemProviderCompletionHandler:?];
    }

    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v9 = [a1 objectID];
    v10 = [MEMORY[0x277D35F30] sharedContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__ICNote_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v13[3] = &unk_2781ABD98;
    v14 = v9;
    v15 = v6;
    v16 = v7;
    v11 = v9;
    [v10 performBackgroundTask:v13];
  }

  return 0;
}

- (void)prepareForCopyingData
{
  v5 = [a1 textStorage];
  v2 = [v5 styler];

  if (v2)
  {
    [a1 filterAttachmentsInTextStorage:v5 range:{0, objc_msgSend(v5, "length")}];
  }

  else
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v3 = objc_alloc_init(MEMORY[0x277D36900]);
      [v3 setNote:a1 firstVisibleLocation:0];
    }

    else
    {
      v3 = objc_alloc_init(MEMORY[0x277D36968]);
      v4 = [[ICLayoutManager alloc] initForTemporaryProcessing:1];
      [v3 setNote:a1 stylingTextUsingSeparateTextStorageForRendering:0 withLayoutManager:v4];
    }

    [a1 filterAttachmentsInTextStorage:v5 range:{0, objc_msgSend(v5, "length")}];
    [v5 setStyler:0];
  }
}

- (uint64_t)_loadFileRepresentationOfTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 objectID];
  v9 = [MEMORY[0x277D35F30] sharedContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__ICNote_ItemProviderWriting___loadFileRepresentationOfTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v14[3] = &unk_2781ABD98;
  v15 = v8;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  [v9 performBackgroundTask:v14];

  return 0;
}

@end